SetVehicleLightAndSiren = {}
function SetVehicleLightAndSiren:Create(cbox)
end
function SetVehicleLightAndSiren:Init(cbox)
end
function SetVehicleLightAndSiren:ShutDown()
end
function SetVehicleLightAndSiren:Start()
  local Out = self.Out
  if self.Vehicle ~= nil then
    self.EmergencyLightOn = self.EmergencyLightOn or 0
    self.HighBeamLightOn = self.HighBeamLightOn or 0
    self.FlasherOn = self.FlasherOn or 0
    self.SpotlightOn = self.SpotlightOn or 0
    self.SirenOn = self.SirenOn or 0
    if self.SpotlightTarget == nil then
      self.SpotlightTarget = GetInvalidEntityId()
    end
    VehicleLightAndSiren(self.Vehicle, self.EmergencyLightOn, self.HighBeamLightOn, self.FlasherOn, self:GetLightPosID(self.FlasherSelection), self.SpotlightOn, self:GetLightPosID(self.SpotlightSelection), self.SpotlightTarget, self.SirenOn)
  end
  Out(self)
end
function SetVehicleLightAndSiren:Stop()
  local Out = self.Out
  if self.Vehicle ~= nil then
    self.EmergencyLightOn = self.EmergencyLightOn or 0
    self.HighBeamLightOn = self.HighBeamLightOn or 0
    self.FlasherOn = self.FlasherOn or 0
    self.SpotlightOn = self.SpotlightOn or 0
    self.SirenOn = self.SirenOn or 0
    if self.SpotlightTarget == nil then
      self.SpotlightTarget = GetInvalidEntityId()
    end
    VehicleLightAndSiren(self.Vehicle, self.EmergencyLightOn, self.HighBeamLightOn, self.FlasherOn, self:GetLightPosID(self.FlasherSelection), self.SpotlightOn, self:GetLightPosID(self.SpotlightSelection), self.SpotlightTarget, self.SirenOn)
  end
  Out(self)
end
function SetVehicleLightAndSiren:GetLightPosID(lightName)
  if lightName == "Right" then
    return 1
  elseif lightName == "Left" then
    return 2
  elseif lightName == "Both" then
    return 3
  end
  return 0
end
export = SetVehicleLightAndSiren
SetVehicleLightAndSiren = nil
