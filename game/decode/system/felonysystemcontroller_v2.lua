FelonySystemController = {}
function FelonySystemController:Create(cbox)
end
function FelonySystemController:Init(cbox)
end
function FelonySystemController:ShutDown()
end
function FelonySystemController:Enable()
  local Out = self.Out
  local Enabled = self.Enabled
  FelonySystemEnable(1)
  if self.AffectMediaSystem == true then
    MediaSystemSetPaused(0)
  end
  Out(self)
  Enabled(self)
end
function FelonySystemController:Disable()
  local Out = self.Out
  local Disabled = self.Disabled
  FelonySystemEnable(0)
  if self.AffectMediaSystem == true then
    MediaSystemSetPaused(1)
  end
  Out(self)
  Disabled(self)
end
function FelonySystemController:AddVehicleExclusionZone()
  local Out = self.Out
  local VehicleExclusionZoneAdded = self.VehicleExclusionZoneAdded
  if self.VehicleExclusionZone ~= nil then
    FelonyAddVehicleExclusionZone(self:GetFelonyTypeID(self.FelonyType), self.VehicleExclusionZone)
  end
  Out(self)
  VehicleExclusionZoneAdded(self)
end
function FelonySystemController:RemoveVehicleExclusionZone()
  local Out = self.Out
  local VehicleExclusionZoneRemoved = self.VehicleExclusionZoneRemoved
  if self.VehicleExclusionZone ~= nil then
    FelonyRemoveVehicleExclusionZone(self:GetFelonyTypeID(self.FelonyType), self.VehicleExclusionZone)
  end
  Out(self)
  VehicleExclusionZoneRemoved(self)
end
export = FelonySystemController
FelonySystemController = nil
