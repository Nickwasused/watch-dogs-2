VehicleSeatingMonitorBox = {}
function VehicleSeatingMonitorBox:Create(cbox)
end
function VehicleSeatingMonitorBox:Init(cbox)
end
function VehicleSeatingMonitorBox:ShutDown()
end
function VehicleSeatingMonitorBox:IsInVehicle()
  if IsEntityInVehicle(self.Pawn or GetInvalidEntityId(), self.Vehicle or GetInvalidEntityId()) == 0 then
    self:EntityIsNotInVehicle()
  else
    local currnetSeat = GetCurrentSeat(self.Pawn or GetInvalidEntityId())
    self.CurrentSeat = currnetSeat
    self:EntityIsInVehicle()
  end
end
function VehicleSeatingMonitorBox:IsVehicleEmpty()
  if IsVehicleEmpty(self.Vehicle or GetInvalidEntityId()) == 1 then
    self:VehicleIsEmpty()
  else
    self:VehicleIsNotEmpty()
  end
end
export = VehicleSeatingMonitorBox
VehicleSeatingMonitorBox = nil
