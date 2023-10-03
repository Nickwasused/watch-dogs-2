LookAtTriggerMonitor = {}
function LookAtTriggerMonitor:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function LookAtTriggerMonitor:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.callidEnterFOV = nil
  self.callidLeaveFOV = nil
end
function LookAtTriggerMonitor:ShutDown()
  self:UnregisterCallback("callidEnterFOV")
  self:UnregisterCallback("callidLeaveFOV")
end
function LookAtTriggerMonitor:Enable()
  if LuaLibCore:VerifyDataInputEntity(self.Trigger, "Trigger") then
    instance = CScriptCallbackSystem_GetInstance()
    if LuaLibCore:IsPlugged(self, "EnterFOV") and self.callidEnterFOV == nil then
      self.callidEnterFOV = instance:RegisterMissionEventCallback(self.Trigger, self, "Event_EnterFOV", "EnterFOV", self.missionId)
    end
    if LuaLibCore:IsPlugged(self, "LeaveFOV") and self.callidLeaveFOV == nil then
      self.callidLeaveFOV = instance:RegisterMissionEventCallback(self.Trigger, self, "Event_LeaveFOV", "LeaveFOV", self.missionId)
    end
  end
  self:Enabled()
end
function LookAtTriggerMonitor:Disable()
  if LuaLibCore:VerifyDataInputEntity(self.Trigger, "Trigger") then
    self:UnregisterCallback("callidEnterFOV")
    self:UnregisterCallback("callidLeaveFOV")
  end
  self:Disabled()
end
function LookAtTriggerMonitor:CheckNow()
  if LuaLibCore:VerifyDataInputEntity(self.Trigger, "Trigger") then
    if IsLookAtTriggerInsideFOV(self.Trigger) == 1 and self.InsideFOV ~= nil then
      self:InsideFOV()
    elseif self.OutsideFOV ~= nil then
      self:OutsideFOV()
    end
  end
end
function LookAtTriggerMonitor:UnregisterCallback(callid)
  if self.Trigger ~= nil and self[callid] ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveCallback(self.Trigger, self[callid])
    self[callid] = nil
  end
end
function LookAtTriggerMonitor:Event_EnterFOV(entity)
  self.PlayerID = entity
  if self.AutoDisable == 1 then
    self:UnregisterCallback("callidEnterFOV")
  end
  return self:EnterFOV()
end
function LookAtTriggerMonitor:Event_LeaveFOV(entity)
  self.PlayerID = entity
  if self.AutoDisable == 1 then
    self:UnregisterCallback("callidLeaveFOV")
  end
  return self:LeaveFOV()
end
export = LookAtTriggerMonitor
LookAtTriggerMonitor = nil
