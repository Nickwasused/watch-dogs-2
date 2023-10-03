SetVehicleDrivingMode = {}
function SetVehicleDrivingMode:Create(cbox)
end
function SetVehicleDrivingMode:Init(cbox)
end
function SetVehicleDrivingMode:ShutDown()
end
function SetVehicleDrivingMode:Safe()
  local Out = self.Out
  if self.Vehicle ~= nil then
    VehicleDrivingMode(self.Vehicle, 0)
  end
  Out(self)
end
function SetVehicleDrivingMode:Stressed()
  local Out = self.Out
  if self.Vehicle ~= nil then
    VehicleDrivingMode(self.Vehicle, 1)
  end
  Out(self)
end
function SetVehicleDrivingMode:NoRules()
  local Out = self.Out
  if self.Vehicle ~= nil then
    VehicleDrivingMode(self.Vehicle, 2)
  end
  Out(self)
end
export = SetVehicleDrivingMode
SetVehicleDrivingMode = nil
