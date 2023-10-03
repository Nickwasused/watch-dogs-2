VehicleDisableHackableIncredient = {}
function VehicleDisableHackableIncredient:Create(cbox)
end
function VehicleDisableHackableIncredient:Init(cbox)
end
function VehicleDisableHackableIncredient:ShutDown()
end
function VehicleDisableHackableIncredient:In()
  local Out = self.Out
  if self.Vehicle ~= nil then
    self.DisableSteamPipe = self.DisableSteamPipe or 0
    self.DisableBollard = self.DisableBollard or 0
    self.DisableTrafficLight = self.DisableTrafficLight or 0
    self.DisableBlackout = self.DisableBlackout or 0
    DisableHackableIncredient(self.Vehicle, self.DisableSteamPipe, self.DisableBollard, self.DisableTrafficLight, self.DisableBlackout)
  end
  Out(self)
end
function VehicleDisableHackableIncredient:Reset()
  local Out = self.Out
  DisableHackableIncredient(self.Vehicle, 0, 0, 0, 0)
  Out(self)
end
export = VehicleDisableHackableIncredient
VehicleDisableHackableIncredient = nil
