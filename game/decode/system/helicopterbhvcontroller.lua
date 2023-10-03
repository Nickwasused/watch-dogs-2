HelicopterBhvController = {}
function HelicopterBhvController:Create(cbox)
end
function HelicopterBhvController:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.callidStarted = nil
  self.callidStopped = nil
  self.DebugSpawnedNewHeli = false
end
function HelicopterBhvController:ShutDown()
  self._type.UnregisterCallbacks(self)
end
function HelicopterBhvController:Start()
  if self.Helicopter ~= nil and self.Target ~= nil and self.callidStarted == nil then
    self.callidStarted = CScriptCallbackSystem_GetInstance():RegisterMissionEventCallback(self.Helicopter, self, "Event_StartCompleted", "DominoHelicopterBhvControllerStarted", self.missionId)
  end
  if self.PathOrPos == nil then
    self.PathOrPos = GetInvalidEntityId()
  end
  if self.Target == nil then
    self.Target = GetInvalidEntityId()
  end
  if self.Helicopter and self.Config then
    StartHelicopterBhv(self.Helicopter, self.PathOrPos, self.Target, self.Config)
  end
end
function HelicopterBhvController:Stop()
  if self.Helicopter ~= nil and self.callidStopped == nil then
    self.callidStopped = CScriptCallbackSystem_GetInstance():RegisterMissionEventCallback(self.Helicopter, self, "Event_StopCompleted", "DominoHelicopterBhvControllerStopped", self.missionId)
  end
  StopHelicopterBhv(self.Helicopter)
end
function HelicopterBhvController:Event_StartCompleted(event)
  self._type.UnregisterCallbacks(self)
  return self:StartCompleted()
end
function HelicopterBhvController:Event_StopCompleted(event)
  self._type.UnregisterCallbacks(self)
  return self:StopCompleted()
end
function HelicopterBhvController:UnregisterCallbacks()
  instance = CScriptCallbackSystem_GetInstance()
  if self.callidStarted ~= nil then
    instance:RemoveCallback(self.Helicopter, self.callidStarted)
    self.callidStarted = nil
  end
  if self.callidStopped ~= nil then
    instance:RemoveCallback(self.Helicopter, self.callidStopped)
    self.callidStopped = nil
  end
end
export = HelicopterBhvController
HelicopterBhvController = nil
