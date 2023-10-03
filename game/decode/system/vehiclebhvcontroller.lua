VehicleBhvController = {}
function VehicleBhvController:Create(cbox)
end
function VehicleBhvController:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.startCompleted = nil
  self.stopCompleted = nil
end
function VehicleBhvController:ShutDown()
  self._type.UnregisterCallbacks(self)
end
function VehicleBhvController:Start()
  if self.VehicleTarget ~= nil and self.startCompleted == nil then
    self.startCompleted = CScriptCallbackSystem_GetInstance():RegisterMissionEventCallback(self.VehicleMaster, self, "Event_StartCompleted", "DominoVehicleBhvControllerStarted", self.missionId)
  end
  if self.PathOrPos == nil then
    self.PathOrPos = GetInvalidEntityId()
  end
  if self.VehicleTarget == nil then
    self.VehicleTarget = GetInvalidEntityId()
  end
  self.StopAtEndPoint = self.StopAtEndPoint or 0
  if self.VehicleMaster and self.Config then
    StartVehicleBhv(self.VehicleMaster, self.PathOrPos, self.VehicleTarget, self.Config, self.StopAtEndPoint)
  end
end
function VehicleBhvController:Stop()
  if self.VehicleMaster ~= nil and self.stopCompleted == nil then
    self.stopCompleted = CScriptCallbackSystem_GetInstance():RegisterMissionEventCallback(self.VehicleMaster, self, "Event_StopCompleted", "DominoVehicleBhvControllerStopped", self.missionId)
  end
  StopVehicleBhv(self.VehicleMaster)
end
function VehicleBhvController:ForceFakeFollow()
  if self.VehicleMaster ~= nil then
    VehicleForceFakeFollow(self.VehicleMaster, self.Force or 0)
  end
end
function VehicleBhvController:Event_StartCompleted(event)
  self._type.UnregisterCallbacks(self)
  return self:StartCompleted()
end
function VehicleBhvController:Event_StopCompleted(event)
  self._type.UnregisterCallbacks(self)
  return self:StopCompleted()
end
function VehicleBhvController:UnregisterCallbacks()
  instance = CScriptCallbackSystem_GetInstance()
  if self.startCompleted ~= nil then
    instance:RemoveCallback(self.VehicleMaster, self.startCompleted)
    self.startCompleted = nil
  end
  if self.stopCompleted ~= nil then
    instance:RemoveCallback(self.VehicleMaster, self.stopCompleted)
    self.stopCompleted = nil
  end
end
export = VehicleBhvController
VehicleBhvController = nil
