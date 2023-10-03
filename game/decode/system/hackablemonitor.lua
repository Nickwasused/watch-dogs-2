HackableMonitor = {}
function HackableMonitor:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function HackableMonitor:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.callidHackStart = nil
  self.callidHackSuccess = nil
  self.callidHackFailed = nil
  self.callidHackedOn = nil
  self.callidHackedOff = nil
  self.callidHackContextual = nil
  self.callidOnIsHackable = nil
  self.callidOnIsNotHackable = nil
  self.callidDPadHackStart = nil
  self.callidHackStartList = {}
  self.callidHackSuccessList = {}
  self.callidHackFailedList = {}
  self.callidHackedOnList = {}
  self.callidHackedOffList = {}
  self.callidOnIsHackableList = {}
  self.callidOnIsNotHackableList = {}
  self.callidDPadHackStartList = {}
  self.HackedEntityCount = nil
end
function HackableMonitor:ShutDown()
  self._type.UnregisterCallback(self)
end
function HackableMonitor:Enable()
  self.HackableEntityCount = 0
  self.HackCategoryType = self.HackCategoryType or "Any"
  self.HackableEntityCount = 0
  if self.HackableEntity ~= nil then
    instance = CScriptCallbackSystem_GetInstance()
    if self.callidHackStart == nil and LuaLibCore:IsPlugged(self, "HackStart") then
      self.callidHackStart = instance:RegisterMissionEventCallback(self.HackableEntity, self, "Event_HackStart", "OnHackStart", self.missionId)
    end
    if self.callidHackSuccess == nil and LuaLibCore:IsPlugged(self, "HackSuccess") then
      self.callidHackSuccess = instance:RegisterMissionEventCallback(self.HackableEntity, self, "Event_HackSuccess", "OnHackSucceed", self.missionId)
    end
    if self.callidHackFailed == nil and LuaLibCore:IsPlugged(self, "HackFailed") then
      self.callidHackFailed = instance:RegisterMissionEventCallback(self.HackableEntity, self, "Event_HackFailed", "OnHackFailed", self.missionId)
    end
    if self.callidHackedOn == nil and LuaLibCore:IsPlugged(self, "HackedOn") then
      self.callidHackedOn = instance:RegisterMissionEventCallback(self.HackableEntity, self, "Event_HackedOn", "OnHackedOn", self.missionId)
    end
    if self.callidHackedOff == nil and LuaLibCore:IsPlugged(self, "HackedOff") then
      self.callidHackedOff = instance:RegisterMissionEventCallback(self.HackableEntity, self, "Event_HackedOff", "OnHackedOff", self.missionId)
    end
    if self.callidHackContextual == nil and LuaLibCore:IsPlugged(self, "HackContextual") then
      self.callidHackContextual = instance:RegisterMissionEventCallback(self.HackableEntity, self, "Event_HackContextual", "OnHackNPC_CategorySelected", self.missionId)
    end
    if self.callidOnIsHackable == nil and LuaLibCore:IsPlugged(self, "OnIsHackable") then
      self.callidOnIsHackable = instance:RegisterMissionEventCallback(self.HackableEntity, self, "Event_OnIsHackable", "OnIsHackable", self.missionId)
    end
    if self.callidOnIsNotHackable == nil and LuaLibCore:IsPlugged(self, "OnIsNotHackable") then
      self.callidOnIsNotHackable = instance:RegisterMissionEventCallback(self.HackableEntity, self, "Event_OnIsNotHackable", "OnIsNotHackable", self.missionId)
    end
    if self.callidDPadHackStart == nil and LuaLibCore:IsPlugged(self, "HackSuccess") or LuaLibCore:IsPlugged(self, "HackFailed") then
      self.callidDPadHackStart = instance:RegisterMissionEventCallback(self.HackableEntity, self, "Event_DPadHackAction", "OnHackNPC_CategorySelected", self.missionId)
    end
    if self.CheckHackableNow ~= nil then
      HackingRequestSendIsHackableEvent(self.HackableEntity)
    end
  end
  if self.HackableEntityList ~= nil then
    instance = CScriptCallbackSystem_GetInstance()
    for i, v in ipairs(self.HackableEntityList) do
      if v ~= nil then
        if self.callidHackStartList[i] == nil and LuaLibCore:IsPlugged(self, "HackStart") then
          self.callidHackStartList[i] = instance:RegisterMissionEventCallback(v, self, "Event_HackStart", "OnHackStart", self.missionId)
        end
        if self.callidHackSuccessList[i] == nil and LuaLibCore:IsPlugged(self, "HackSuccess") then
          self.callidHackSuccessList[i] = instance:RegisterMissionEventCallback(v, self, "Event_HackSuccess", "OnHackSucceed", self.missionId)
        end
        if self.callidHackFailedList[i] == nil and LuaLibCore:IsPlugged(self, "HackFailed") then
          self.callidHackFailedList[i] = instance:RegisterMissionEventCallback(v, self, "Event_HackFailed", "OnHackFailed", self.missionId)
        end
        if self.callidHackedOnList[i] == nil and LuaLibCore:IsPlugged(self, "HackedOn") then
          self.callidHackedOnList[i] = instance:RegisterMissionEventCallback(v, self, "Event_HackedOn", "OnHackedOn", self.missionId)
        end
        if self.callidHackedOffList[i] == nil and LuaLibCore:IsPlugged(self, "HackedOff") then
          self.callidHackedOffList[i] = instance:RegisterMissionEventCallback(v, self, "Event_HackedOff", "OnHackedOff", self.missionId)
        end
        if self.callidOnIsHackableList[i] == nil and LuaLibCore:IsPlugged(self, "OnIsHackable") then
          self.callidOnIsHackableList[i] = instance:RegisterMissionEventCallback(v, self, "Event_OnIsHackable", "OnIsHackable", self.missionId)
        end
        if self.callidOnIsNotHackableList[i] == nil and LuaLibCore:IsPlugged(self, "OnIsNotHackable") then
          self.callidOnIsNotHackableList[i] = instance:RegisterMissionEventCallback(v, self, "Event_OnIsNotHackable", "OnIsNotHackable", self.missionId)
        end
        if self.callidDPadHackStartList[i] == nil and LuaLibCore:IsPlugged(self, "HackSuccess") or LuaLibCore:IsPlugged(self, "HackFailed") then
          self.callidDPadHackStartList[i] = instance:RegisterMissionEventCallback(v, self, "Event_DPadHackAction", "OnHackNPC_CategorySelected", self.missionId)
        end
        if self.CheckHackableNow ~= nil then
          HackingRequestSendIsHackableEvent(v)
        end
      end
    end
  end
  self:Enabled()
end
function HackableMonitor:Disable()
  self._type.UnregisterCallback(self)
  self:Disabled()
end
function HackableMonitor:UnregisterCallback()
  if self.HackableEntity ~= nil then
    instance = CScriptCallbackSystem_GetInstance()
    if self.callidHackStart ~= nil then
      instance:RemoveCallback(self.HackableEntity, self.callidHackStart)
      self.callidHackStart = nil
    end
    if self.callidHackSuccess ~= nil then
      instance:RemoveCallback(self.HackableEntity, self.callidHackSuccess)
      self.callidHackSuccess = nil
    end
    if self.callidHackFailed ~= nil then
      instance:RemoveCallback(self.HackableEntity, self.callidHackFailed)
      self.callidHackFailed = nil
    end
    if self.callidHackedOn ~= nil then
      instance:RemoveCallback(self.HackableEntity, self.callidHackedOn)
      self.callidHackedOn = nil
    end
    if self.callidHackedOff ~= nil then
      instance:RemoveCallback(self.HackableEntity, self.callidHackedOff)
      self.callidHackedOff = nil
    end
    if self.callidHackContextual ~= nil then
      instance:RemoveCallback(self.HackableEntity, self.callidHackContextual)
      self.callidHackContextual = nil
    end
    if self.callidOnIsHackable ~= nil then
      instance:RemoveCallback(self.HackableEntity, self.callidOnIsHackable)
      self.callidOnIsHackable = nil
    end
    if self.callidOnIsNotHackable ~= nil then
      instance:RemoveCallback(self.HackableEntity, self.callidOnIsNotHackable)
      self.callidOnIsNotHackable = nil
    end
    if self.callidDPadHackStart ~= nil then
      instance:RemoveCallback(self.HackableEntity, self.callidDPadHackStart)
      self.callidDPadHackStart = nil
    end
  end
  if self.HackableEntityList ~= nil then
    instance = CScriptCallbackSystem_GetInstance()
    for i, v in ipairs(self.HackableEntityList) do
      if v ~= nil then
        if self.callidHackStartList[i] ~= nil then
          instance:RemoveCallback(v, self.callidHackStartList[i])
          self.callidHackStartList[i] = nil
        end
        if self.callidHackSuccessList[i] ~= nil then
          instance:RemoveCallback(v, self.callidHackSuccessList[i])
          self.callidHackSuccessList[i] = nil
        end
        if self.callidHackFailedList[i] ~= nil then
          instance:RemoveCallback(v, self.callidHackFailedList[i])
          self.callidHackFailedList[i] = nil
        end
        if self.callidHackedOnList[i] ~= nil then
          instance:RemoveCallback(v, self.callidHackedOnList[i])
          self.callidHackedOnList[i] = nil
        end
        if self.callidHackedOffList[i] ~= nil then
          instance:RemoveCallback(v, self.callidHackedOffList[i])
          self.callidHackedOffList[i] = nil
        end
        if self.callidOnIsHackableList[i] ~= nil then
          instance:RemoveCallback(v, self.callidOnIsHackableList[i])
          self.callidOnIsHackableList[i] = nil
        end
        if self.callidOnIsNotHackableList[i] ~= nil then
          instance:RemoveCallback(v, self.callidOnIsNotHackableList[i])
          self.callidOnIsNotHackableList[i] = nil
        end
        if self.callidDPadHackStartList[i] ~= nil then
          instance:RemoveCallback(v, self.callidDPadHackStartList[i])
          self.callidDPadHackStartList[i] = nil
        end
      end
    end
  end
end
function HackableMonitor:Event_DPadHackAction(categorySelected, hackedEntity, instigatorEntity, HackStarted)
  self.HackedEntity = hackedEntity
  self.InstigatorEntity = instigatorEntity
  if CompareHackingCategories(self.HackCategoryType, categorySelected) ~= 0 then
    self.HackCategoryTypeUsed = categorySelected
    self.HackCategoryTypeUsedString = tostring(categorySelected)
    if HackStarted ~= 0 then
      if self.HackableEntityList ~= nil then
        self.HackableEntityCount = self.HackableEntityCount + 1
        if #self.HackableEntityList == self.HackableEntityCount then
          self:AllHacked()
          if self.AutoDisable == 1 then
            self._type.UnregisterCallback(self)
          end
        end
      elseif self.AutoDisable == 1 then
        self._type.UnregisterCallback(self)
      end
      if self.callidHackSuccess ~= nil then
        instance = CScriptCallbackSystem_GetInstance()
        instance:RemoveCallback(self.HackedEntity, self.callidHackSuccess)
        self.callidHackSuccess = nil
      end
      return self:HackSuccess()
    else
      return self:HackFailed()
    end
  end
end
function HackableMonitor:Event_OnIsHackable(myHackableEntity, instigatorEntity)
  self.IsHackableEntity = myHackableEntity
  if self.OnIsHackable ~= nil then
    return self:OnIsHackable()
  end
end
function HackableMonitor:Event_OnIsNotHackable(myHackableEntity, instigatorEntity)
  self.IsHackableEntity = myHackableEntity
  if self.OnIsNotHackable ~= nil then
    return self:OnIsNotHackable()
  end
end
function HackableMonitor:Event_HackStart(hackedEntity, instigatorEntity)
  self.HackedEntity = hackedEntity
  self.InstigatorEntity = instigatorEntity
  return self:HackStart()
end
function HackableMonitor:Event_HackSuccess(hackedEntity, instigatorEntity)
  self.HackedEntity = hackedEntity
  self.InstigatorEntity = instigatorEntity
  if self.HackableEntityList ~= nil then
    self.HackableEntityCount = self.HackableEntityCount + 1
    if #self.HackableEntityList == self.HackableEntityCount then
      self:AllHacked()
      if self.AutoDisable == 1 then
        self._type.UnregisterCallback(self)
      end
    end
  elseif self.AutoDisable == 1 then
    self._type.UnregisterCallback(self)
  end
  return self:HackSuccess()
end
function HackableMonitor:Event_HackFailed(hackedEntity, instigatorEntity)
  self.HackedEntity = hackedEntity
  self.InstigatorEntity = instigatorEntity
  return self:HackFailed()
end
function HackableMonitor:Event_HackedOn(hackedEntity, instigatorEntity)
  self.HackedEntity = hackedEntity
  self.InstigatorEntity = instigatorEntity
  return self:HackedOn()
end
function HackableMonitor:Event_HackedOff(hackedEntity, instigatorEntity)
  self.HackedEntity = hackedEntity
  self.InstigatorEntity = instigatorEntity
  return self:HackedOff()
end
function HackableMonitor:Event_HackContextual()
  self.HackedEntity = self.HackableEntity
  return self:HackContextual()
end
export = HackableMonitor
HackableMonitor = nil
