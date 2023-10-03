HelicopterMonitor = {}
function HelicopterMonitor:Create(cbox)
end
function HelicopterMonitor:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.callidPathEndReached = nil
  self.callidDetecting = nil
  self.callidDetected = nil
  self.callidReadyToUnspawn = nil
  self.callidHackStarted = nil
  self.callidHackFinished = nil
end
function HelicopterMonitor:ShutDown()
  self._type.UnregisterCallback(self)
end
function HelicopterMonitor:Enable()
  if self.Helicopter ~= nil then
    instance = CScriptCallbackSystem_GetInstance()
    self.callidDetecting = instance:RegisterMissionEventCallback(self.Helicopter, self, "Event_Detecting", "DominoVehicleTargetInLOS", self.missionId)
    self.callidDetected = instance:RegisterMissionEventCallback(self.Helicopter, self, "Event_Detected", "DominoVehicleTargetDetected", self.missionId)
    self.callidReadyToUnspawn = instance:RegisterMissionEventCallback(self.Helicopter, self, "Event_ReadyToUnspawn", "DominoHelicopterReadyToUnspawn", self.missionId)
    self.callidHackStarted = instance:RegisterMissionEventCallback(self.Helicopter, self, "Event_HackStarted", "DominoHelicopterHackStarted", self.missionId)
    self.callidHackFinished = instance:RegisterMissionEventCallback(self.Helicopter, self, "Event_HackFinished", "DominoHelicopterHackFinished", self.missionId)
  end
  self:Enabled()
  self:Out()
end
function HelicopterMonitor:Disable()
  self._type.UnregisterCallback(self)
  self:Disabled()
  self:Out()
end
function HelicopterMonitor:UnregisterCallback()
  if self.Helicopter ~= nil then
    instance = CScriptCallbackSystem_GetInstance()
    instance:RemoveCallback(self.Helicopter, self.callidDetecting)
    instance:RemoveCallback(self.Helicopter, self.callidDetected)
    instance:RemoveCallback(self.Helicopter, self.callidReadyToUnspawn)
    instance:RemoveCallback(self.Helicopter, self.callidHackStarted)
    instance:RemoveCallback(self.Helicopter, self.callidHackFinished)
  end
end
function HelicopterMonitor:Event_Detecting(event)
  return self:Detecting()
end
function HelicopterMonitor:Event_Detected(event)
  return self:FullyDetected()
end
function HelicopterMonitor:Event_ReadyToUnspawn(event)
  return self:ReadyToUnspawn()
end
function HelicopterMonitor:Event_HackStarted(event)
  return self:HackStarted()
end
function HelicopterMonitor:Event_HackFinished(event)
  return self:HackFinished()
end
export = HelicopterMonitor
HelicopterMonitor = nil
