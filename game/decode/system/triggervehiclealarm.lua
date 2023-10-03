TriggerVehicleAlarm = {}
function TriggerVehicleAlarm:Create(cbox)
end
function TriggerVehicleAlarm:Init(cbox)
end
function TriggerVehicleAlarm:ShutDown()
end
function TriggerVehicleAlarm:In()
  local Out = self.Out
  if self.Length == nil then
    self.Length = 10
  end
  ForceVehicleAlaram(self.VehicleEntity, self.Length)
  Out(self)
end
export = TriggerVehicleAlarm
TriggerVehicleAlarm = nil
