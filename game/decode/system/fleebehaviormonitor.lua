FleeBehaviorMonitor = {}
function FleeBehaviorMonitor:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function FleeBehaviorMonitor:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.registeredTarget = nil
end
function FleeBehaviorMonitor:ShutDown()
  self:UnregisterCallbacks()
end
function FleeBehaviorMonitor:Enable()
  local outValue = self.Enabled
  if LuaLibCore:VerifyDataInputEntity(self.Target, "Target") then
    self:RegisterCallbacks()
    local now = self.CheckStateNow or true
    if now then
      local state = GetAIState(self.Target)
      if state == "Flee" then
        self:FleeStarted()
      end
    end
  end
  outValue(self)
end
function FleeBehaviorMonitor:Disable()
  local outValue = self.Disabled
  self:UnregisterCallbacks()
  outValue(self)
end
function FleeBehaviorMonitor:RegisterCallbacks()
  self.registeredTarget = self.Target
  instance = CScriptCallbackSystem_GetInstance()
  if self.cbBlocked == nil then
  end
  if self.cbVehicleEntered == nil then
    self.cbVehicleEntered = instance:RegisterMissionEventCallback(self.registeredTarget, self, "Event_OnVehicleEntered", "AssignSeatCompleted", self.missionId)
  end
  if self.cbVehicleExited == nil then
    self.cbVehicleExited = instance:RegisterMissionEventCallback(self.registeredTarget, self, "Event_OnVehicleExited", "PawnDetachedFromVehicle", self.missionId)
  end
  if self.cbFleeStarted == nil then
    self.cbFleeStarted = instance:RegisterMissionEventCallback(self.registeredTarget, self, "Event_OnFleeStarted", "CAIAgentStateFlee", self.missionId)
  end
  if self.cbFleeSucceeded == nil then
    self.cbFleeSucceeded = instance:RegisterMissionEventCallback(self.registeredTarget, self, "Event_OnFleeSucceeded", "DominoFleeSucceeded", self.missionId)
  end
  if self.cbFleeFailed == nil then
    self.cbFleeFailed = instance:RegisterMissionEventCallback(self.registeredTarget, self, "Event_OnFleeFailed", "DominoFleeFailed", self.missionId)
  end
end
function FleeBehaviorMonitor:Event_OnBlocked()
  self:Blocked()
end
function FleeBehaviorMonitor:Event_OnVehicleEntered()
  self:EnteredVehicle()
end
function FleeBehaviorMonitor:Event_OnVehicleExited()
  self:ExitedVehicle()
end
function FleeBehaviorMonitor:Event_OnFleeStarted()
  self:FleeStarted()
end
function FleeBehaviorMonitor:Event_OnFleeSucceeded()
  self:FleeSuccess()
end
function FleeBehaviorMonitor:Event_OnFleeFailed()
  self:FleeFailed()
end
function FleeBehaviorMonitor:UnregisterCallbacks()
  if self.registeredTarget ~= nil then
    instance = CScriptCallbackSystem_GetInstance()
    if self.cbBlocked ~= nil then
      instance:RemoveCallback(self.registeredTarget, self.cbBlocked)
      self.cbBlocked = nil
    end
    if self.cbVehicleEntered ~= nil then
      instance:RemoveCallback(self.registeredTarget, self.cbVehicleEntered)
      self.cbVehicleEntered = nil
    end
    if self.cbVehicleExited ~= nil then
      instance:RemoveCallback(self.registeredTarget, self.cbVehicleExited)
      self.cbVehicleExited = nil
    end
    if self.cbFleeStarted ~= nil then
      instance:RemoveCallback(self.registeredTarget, self.cbFleeStarted)
      self.cbFleeStarted = nil
    end
    if self.cbFleeSucceeded ~= nil then
      instance:RemoveCallback(self.registeredTarget, self.cbFleeSucceeded)
      self.cbFleeSucceeded = nil
    end
    if self.cbFleeFailed ~= nil then
      instance:RemoveCallback(self.registeredTarget, self.cbFleeFailed)
      self.cbFleeFailed = nil
    end
    self.registeredTarget = nil
  end
end
export = FleeBehaviorMonitor
FleeBehaviorMonitor = nil
