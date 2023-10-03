VehicleListBhvMonitor = {}
function VehicleListBhvMonitor:Create(cbox)
end
function VehicleListBhvMonitor:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.VehicleList = {}
  self.callidStuck = {}
  self.callidBroken = {}
  self.callidTargetDetected = {}
  self.callidSuspiciousTargetAction = {}
end
function VehicleListBhvMonitor:ShutDown()
  self._type.UnregisterCallback(self)
end
function VehicleListBhvMonitor:Enable()
  if self.VehicleList ~= nil then
    instance = CScriptCallbackSystem_GetInstance()
    for index, value in ipairs(self.VehicleList) do
      if value ~= nil then
        if self.callidStuck[index] == nil then
          self.callidStuck[index] = instance:RegisterMissionEventCallback(value, self, "Event_VehicleStuck", "DominoVehicleStuck", self.missionId)
        end
        if self.callidBroken[index] == nil then
          self.callidBroken[index] = instance:RegisterMissionEventCallback(value, self, "Event_VehicleBroken", "DominoVehicleBroken", self.missionId)
        end
        if self.callidTargetDetected[index] == nil then
          self.callidTargetDetected[index] = instance:RegisterMissionEventCallback(value, self, "Event_TargetDetected", "DominoVehicleTargetDetected", self.missionId)
        end
        if self.callidSuspiciousTargetAction[index] == nil then
          self.callidSuspiciousTargetAction[index] = instance:RegisterMissionEventCallback(value, self, "Event_SuspiciousTargetAction", "DominoSuspiciousTargetAction", self.missionId)
        end
      end
    end
  end
  self:Enabled()
  self:Out()
end
function VehicleListBhvMonitor:Disable()
  self._type.UnregisterCallback(self)
  self:Disabled()
  self:Out()
end
function VehicleListBhvMonitor:UnregisterCallback()
  if self.VehicleList ~= nil then
    instance = CScriptCallbackSystem_GetInstance()
    for index, value in ipairs(self.VehicleList) do
      if value ~= nil then
        if self.callidStuck[index] ~= nil then
          instance:RemoveCallback(value, self.callidStuck[index])
          self.callidStuck[index] = nil
        end
        if self.callidBroken[index] ~= nil then
          instance:RemoveCallback(value, self.callidBroken[index])
          self.callidBroken[index] = nil
        end
        if self.callidTargetDetected[index] ~= nil then
          instance:RemoveCallback(value, self.callidTargetDetected[index])
          self.callidTargetDetected[index] = nil
        end
        if self.callidSuspiciousTargetAction[index] ~= nil then
          instance:RemoveCallback(value, self.callidSuspiciousTargetAction[index])
          self.callidSuspiciousTargetAction[index] = nil
        end
      end
    end
  end
end
function VehicleListBhvMonitor:Event_VehicleStuck(event)
  return self:Stuck()
end
function VehicleListBhvMonitor:Event_VehicleBroken(event)
  return self:Broken()
end
function VehicleListBhvMonitor:Event_TargetDetected(event)
  return self:TargetDetected()
end
function VehicleListBhvMonitor:Event_SuspiciousTargetAction(event)
  return self:SuspiciousTargetAction()
end
export = VehicleListBhvMonitor
VehicleListBhvMonitor = nil
