ProfilerMonitor = {}
function ProfilerMonitor:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function ProfilerMonitor:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.callidInfoDisplayed = nil
  self.callidInfoDisplayedList = nil
  self.ProfiledEntityCount = nil
  self.ProfiledEntityHiddenCount = nil
  self.callidProfilerIsOn = nil
  self.callidProfilerIsOff = nil
end
function ProfilerMonitor:ShutDown()
  self._type.UnregisterCallback(self)
end
function ProfilerMonitor:Enable()
  self.Player = self.Player or GetLocalPlayerEntityId()
  self.ProfiledEntityCount = 0
  self.ProfiledEntityHiddenCount = 0
  if self.ProfilableEntityList == nil and LuaLibCore:VerifyDataInputEntity(self.ProfilableEntity, "ProfilableEntity") or LuaLibCore:VerifyDataInputEntityList(self.ProfilableEntityList, "ProfilableEntityList") then
    if self.callidInfoDisplayed == nil then
      instance = CScriptCallbackSystem_GetInstance()
      self.callidInfoDisplayed = instance:RegisterMissionEventCallback(self.Player, self, "Event_OnProfilerInfo", "ProfilerInfoEventDomino", self.missionId)
    end
    if self.callidInfoDisplayedList == nil and self.ProfilableEntityList ~= nil then
      instance = CScriptCallbackSystem_GetInstance()
      self.callidInfoDisplayedList = instance:RegisterMissionEventCallback(self.Player, self, "Event_OnProfilerInfoList", "ProfilerInfoEventDomino", self.missionId)
    end
    if self.callidProfilerIsOn == nil then
      instance = CScriptCallbackSystem_GetInstance()
      self.callidProfilerIsOn = instance:RegisterMissionEventCallback(self.Player, self, "Event_IsOn", "ProfilerIsOn", self.missionId)
    end
    if self.callidProfilerIsOff == nil then
      instance = CScriptCallbackSystem_GetInstance()
      self.callidProfilerIsOff = instance:RegisterMissionEventCallback(self.Player, self, "Event_IsOff", "ProfilerIsOff", self.missionId)
    end
    if self.CheckNow == 1 then
      Profiler_SendStatus(self.Player)
      if self.ProfilerInfoType ~= nil then
        if self.ProfilableEntity ~= nil and IsEntityBeingProfiled(self.ProfilableEntity, self.ProfilerInfoType) == 1 then
          self.EntityProfiled = self.ProfilableEntity
          self:InfoDisplayed()
        end
        if self.ProfilableEntityList ~= nil then
          for i, v in ipairs(self.ProfilableEntityList) do
            if v ~= nil and IsEntityBeingProfiled(v, self.ProfilerInfoType) == 1 then
              self.EntityProfiled = v
              self.ProfiledEntityCount = self.ProfiledEntityCount + 1
              if #self.ProfilableEntityList == self.ProfiledEntityCount then
                self:ListInfoDisplayed()
              end
              self:InfoDisplayed()
            end
          end
        end
      end
    end
  end
  self:Enabled()
end
function ProfilerMonitor:Disable()
  self._type.UnregisterCallback(self)
  self:Disabled()
end
function ProfilerMonitor:UnregisterCallback()
  self.Player = self.Player or GetLocalPlayerEntityId()
  if self.callidInfoDisplayed ~= nil then
    instance = CScriptCallbackSystem_GetInstance()
    instance:RemoveCallback(self.Player, self.callidInfoDisplayed)
    self.callidInfoDisplayed = nil
  end
  if self.callidInfoDisplayedList ~= nil then
    instance = CScriptCallbackSystem_GetInstance()
    instance:RemoveCallback(self.Player, self.callidInfoDisplayedList)
    self.callidInfoDisplayedList = nil
  end
  if self.callidProfilerIsOn ~= nil then
    instance = CScriptCallbackSystem_GetInstance()
    instance:RemoveCallback(self.Player, self.callidProfilerIsOn)
  end
  if self.callidProfilerIsOff ~= nil then
    instance = CScriptCallbackSystem_GetInstance()
    instance:RemoveCallback(self.Player, self.callidProfilerIsOff)
  end
end
function ProfilerMonitor:Event_IsOn()
  if self.IsOn ~= nil then
    self:IsOn()
  end
end
function ProfilerMonitor:Event_IsOff()
  if self.IsOff ~= nil then
    self:IsOff()
  end
end
function ProfilerMonitor:Event_OnProfilerInfo(InProfileInfoType, InEntityJustProfiled, InIsOpeningProfiler)
  self.EntityProfiled = InEntityJustProfiled
  if InProfileInfoType == self.ProfilerInfoType and self.ProfilableEntity ~= nil and self.ProfilableEntity == InEntityJustProfiled then
    if InIsOpeningProfiler == 1 then
      self:InfoDisplayed()
    else
      self:InfoHidden()
    end
  end
end
function ProfilerMonitor:Event_OnProfilerInfoList(InProfileInfoType, InEntityJustProfiled, InIsOpeningProfiler)
  self.EntityProfiled = InEntityJustProfiled
  if self.ProfilableEntityList ~= nil then
    for i, v in ipairs(self.ProfilableEntityList) do
      if InProfileInfoType == self.ProfilerInfoType and v ~= nil and v == InEntityJustProfiled then
        if InIsOpeningProfiler == 1 then
          self.ProfiledEntityCount = self.ProfiledEntityCount + 1
          if #self.ProfilableEntityList == self.ProfiledEntityCount then
            self:ListInfoDisplayed()
          end
          self:InfoDisplayed()
        else
          self.ProfiledEntityHiddenCount = self.ProfiledEntityHiddenCount + 1
          if #self.ProfilableEntityList == self.ProfiledEntityHiddenCount then
            self:ListInfoHidden()
          end
          self:InfoHidden()
        end
      end
    end
  end
end
function ProfilerMonitor:SetDelayBeforeSendingEvent()
  self.Player = self.Player or GetLocalPlayerEntityId()
  if LuaLibCore:VerifyDataInputEntity(self.Player, "Player") then
    SetProfilerDelayBeforeSendingDominoEvent(self.Player, self.DelayBeforeSendingEvent)
  end
  if self.DelayBeforeSendingEventSet ~= nil then
    self:DelayBeforeSendingEventSet()
  end
end
function ProfilerMonitor:ResetDelayBeforeSendingEvent()
  self.Player = self.Player or GetLocalPlayerEntityId()
  if LuaLibCore:VerifyDataInputEntity(self.Player, "Player") then
    ResetProfilerDelayBeforeSendingDominoEvent(self.Player)
  end
  if self.DelayBeforeSendingEventReset ~= nil then
    self:DelayBeforeSendingEventReset()
  end
end
export = ProfilerMonitor
ProfilerMonitor = nil
