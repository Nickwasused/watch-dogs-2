FloatingVehicleBhvController = {}
function FloatingVehicleBhvController:Create(cbox)
end
function FloatingVehicleBhvController:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.callidStarted = nil
  self.callidStopped = nil
  self.DebugSpawnedNewHeli = false
end
function FloatingVehicleBhvController:ShutDown()
  self._type.UnregisterCallbacks(self)
end
function FloatingVehicleBhvController:Start()
  if self.Target ~= nil and self.startCompleted == nil then
    self.callidStarted = CScriptCallbackSystem_GetInstance():RegisterMissionEventCallback(self.FloatingVehicle, self, "Event_StartCompleted", "DominoFloatingVehicleBhvControllerStarted", self.missionId)
  end
  if self.PathOrPos == nil then
    self.PathOrPos = GetInvalidEntityId()
  end
  if self.Target == nil then
    self.Target = GetInvalidEntityId()
  end
  if self.FloatingVehicle and self.Config then
    StartFloatingVehicleBhv(self.FloatingVehicle, self.PathOrPos, self.Target, self.Config)
  end
end
function FloatingVehicleBhvController:Stop()
  if self.FloatingVehicle ~= nil and self.callidStopped == nil then
    self.callidStopped = CScriptCallbackSystem_GetInstance():RegisterMissionEventCallback(self.FloatingVehicle, self, "Event_StopCompleted", "DominoFloatingVehicleBhvControllerStopped", self.missionId)
  end
  StopFloatingVehicleBhv(self.FloatingVehicle)
end
function FloatingVehicleBhvController:Event_StartCompleted(event)
  self._type.UnregisterCallbacks(self)
  return self:StartCompleted()
end
function FloatingVehicleBhvController:Event_StopCompleted(event)
  self._type.UnregisterCallbacks(self)
  return self:StopCompleted()
end
function FloatingVehicleBhvController:UnregisterCallbacks()
  instance = CScriptCallbackSystem_GetInstance()
  if self.callidStarted ~= nil then
    instance:RemoveCallback(self.FloatingVehicle, self.callidStarted)
    self.callidStarted = nil
  end
  if self.callidStopped ~= nil then
    instance:RemoveCallback(self.FloatingVehicle, self.callidStopped)
    self.callidStopped = nil
  end
end
export = FloatingVehicleBhvController
FloatingVehicleBhvController = nil
