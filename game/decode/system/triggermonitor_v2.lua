ProximityTrigger = {}
function ProximityTrigger:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function ProximityTrigger:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.callidListEnter = {}
  self.callidListLeave = {}
  self.callidListUse = {}
  self.combinedTriggersList = {}
  self.insideTrigger = nil
end
function ProximityTrigger:ShutDown()
  self:UnregisterAllCallbacks()
end
function ProximityTrigger:UnregisterAllCallbacks()
  self:UnregisterCallbacks("callidListEnter")
  self:UnregisterCallbacks("callidListLeave")
  self:UnregisterCallbacks("callidListUse")
  self.combinedTriggersList = {}
end
function ProximityTrigger:Enable()
  self.insideTrigger = nil
  self:UnregisterAllCallbacks()
  if self.Trigger ~= nil and LuaLibCore:VerifyDataInputEntity(self.Trigger, "Trigger") then
    table.insert(self.combinedTriggersList, self.Trigger)
  end
  if self.TriggerList ~= nil and LuaLibCore:VerifyDataInputEntityList(self.TriggerList, "TriggerList") then
    for i, v in ipairs(self.TriggerList) do
      if self.TriggerList[i] ~= nil then
        table.insert(self.combinedTriggersList, self.TriggerList[i])
      end
    end
  end
  if self.combinedTriggersList ~= nil then
    instance = CScriptCallbackSystem_GetInstance()
    for i, v in ipairs(self.combinedTriggersList) do
      if v ~= nil then
        if self.callidListEnter[i] == nil and LuaLibCore:IsPlugged(self, "Enter") then
          self.callidListEnter[i] = instance:RegisterMissionEventCallback(v, self, "Event_Enter", "Enter", self.missionId)
        end
        if self.callidListLeave[i] == nil and LuaLibCore:IsPlugged(self, "Leave") then
          self.callidListLeave[i] = instance:RegisterMissionEventCallback(v, self, "Event_Leave", "Leave", self.missionId)
        end
        if self.callidListUse[i] == nil and LuaLibCore:IsPlugged(self, "Use") then
          self.callidListUse[i] = instance:RegisterMissionEventCallback(v, self, "Event_Use", "Use", self.missionId)
        end
        CDominoManager_GetInstance():SendRegisteredEventToEntity(v, "CBaseTriggerComponent", "SetEnabled")
      end
    end
    self.canBeIn = 1
    if self.CheckNow == 1 then
      for i, v in ipairs(self.combinedTriggersList) do
        if v ~= nil then
          self.canBeIn = TriggerComponentContactsCheckNow(v, self)
        end
      end
    end
    if self.canBeIn == 0 then
      self:Leave()
    end
  end
  self:Enabled()
end
function ProximityTrigger:Disable()
  self:UnregisterAllCallbacks()
  self:Disabled()
end
function ProximityTrigger:UnregisterCallbacks(callidlist)
  if self.combinedTriggersList ~= nil then
    instance = CScriptCallbackSystem_GetInstance()
    for i, v in ipairs(self.combinedTriggersList) do
      if v ~= nil and self[callidlist][i] ~= nil then
        instance:RemoveCallback(v, self[callidlist][i])
        self[callidlist][i] = nil
      end
    end
    self[callidlist] = {}
  end
end
function ProximityTrigger:Event_Enter(entity)
  self.Collider = entity
  if self.insideTrigger ~= 1 or self.TriggerList == nil then
    self.insideTrigger = 1
    if self.AutoDisable == 1 then
      self:UnregisterCallbacks("callidListEnter")
    end
    self:Enter()
  end
end
function ProximityTrigger:Event_Leave(entity)
  self.Collider = entity
  if self.insideTrigger ~= 0 or self.TriggerList == nil then
    self.insideTrigger = 0
    if self.AutoDisable == 1 then
      self:UnregisterCallbacks("callidListLeave")
    end
    self:Leave()
  end
end
function ProximityTrigger:Event_Use(entity)
  self.Collider = entity
  if self.AutoDisable == 1 then
    self:UnregisterCallbacks("callidListUse")
  end
  self:Use()
end
export = ProximityTrigger
ProximityTrigger = nil
