VehicleSpeedMonitor = {}
function VehicleSpeedMonitor:Create(cbox)
end
function VehicleSpeedMonitor:Init(cbox)
  self.callidEvent = nil
end
function VehicleSpeedMonitor:ShutDown()
  self._type.UnregisterCallback(self)
end
function VehicleSpeedMonitor:Disable()
  self._type.UnregisterCallback(self)
  self:Disabled()
end
function VehicleSpeedMonitor:Enable()
  if self.MinSpeed ~= nil and self.MaxSpeed ~= nil and self.Duration ~= nil and self.callidEvent == nil then
    self.Pawn = self.Pawn or GetLocalPlayerEntityId()
    self.callidEvent = StartSpeedCheckChallenge(self, "Event_Complete", self.Pawn, self.MinSpeed, self.MaxSpeed, self.Duration)
  end
  self:Enabled()
end
function VehicleSpeedMonitor:GetSpeed()
  self.Pawn = self.Pawn or GetLocalPlayerEntityId()
  self.Speed = GetVehicleSpeed(self.Pawn)
  self:GotSpeed()
end
function VehicleSpeedMonitor:UnregisterCallback()
  self.Pawn = self.Pawn or GetLocalPlayerEntityId()
  if self.callidEvent ~= nil then
    instance = CScriptCallbackSystem_GetInstance()
    instance:RemoveCallback(self.Pawn, self.callidEvent)
    self.callidEvent = nil
  end
end
function VehicleSpeedMonitor:Event_Complete(entity)
  if self.AutoDisable == nil or self.AutoDisable == true then
    self._type.UnregisterCallback(self)
  end
  return self:Succeeded()
end
export = VehicleSpeedMonitor
VehicleSpeedMonitor = nil
