AccessCodeMonitor = {}
function AccessCodeMonitor:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function AccessCodeMonitor:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.callidAccessCodeAcquired = nil
  self.AccessCodeId = nil
end
function AccessCodeMonitor:ShutDown()
  self._type.UnregisterCallback(self)
end
function AccessCodeMonitor:Enable()
  if LuaLibCore:AssertNotNil(self.AccessCode, "AccessCode") then
    self._type.VerifyAccessCodeId(self)
    local isAcquired = IsAccessCodeAcquired(self.AccessCodeId)
    if isAcquired == 1 then
      self:AccessCodeAcquired()
    elseif self.callidAccessCodeAcquired == nil then
      instance = CScriptCallbackSystem_GetInstance()
      self.Player = GetLocalPlayerEntityId()
      self.callidAccessCodeAcquired = instance:RegisterMissionEventCallback(self.Player, self, "Event_AccessCodeAcquired", "dominoAccessCodeAcquired", self.missionId)
    end
  end
  self:Out()
  self:Enabled()
end
function AccessCodeMonitor:Disable()
  if LuaLibCore:AssertNotNil(self.AccessCode, "AccessCode") then
    self._type.UnregisterCallback(self)
  end
  self:Out()
  self:Disabled()
end
function AccessCodeMonitor:VerifyAccessCodeId()
  if self.AccessCodeId == nil then
    self.AccessCodeId = string.sub(self.AccessCode, string.find(self.AccessCode, "%.[^%.]*$") + 1)
  end
end
function AccessCodeMonitor:CheckHasAccessCode()
  if LuaLibCore:AssertNotNil(self.AccessCode, "AccessCode") then
    self._type.VerifyAccessCodeId(self)
    local isAcquired = IsAccessCodeAcquired(self.AccessCodeId)
    if isAcquired == 1 then
      self:Has()
    else
      self:HasNOT()
    end
  end
  self:Out()
end
function AccessCodeMonitor:UnregisterCallback()
  if self.AccessCode ~= nil and self.callidAccessCodeAcquired ~= nil then
    instance = CScriptCallbackSystem_GetInstance()
    instance:RemoveCallback(self.AccessCode, self.callidAccessCodeAcquired)
    self.callidAccessCodeAcquired = nil
  end
end
function AccessCodeMonitor:Event_AccessCodeAcquired(event)
  if event == self.AccessCodeId then
    self._type.UnregisterCallback(self)
    self:AccessCodeAcquired()
  end
end
export = AccessCodeMonitor
AccessCodeMonitor = nil
