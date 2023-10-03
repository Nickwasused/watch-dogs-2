ForcePawnsVehicleStop = {}
function ForcePawnsVehicleStop:Create(cbox)
end
function ForcePawnsVehicleStop:Init(cbox)
end
function ForcePawnsVehicleStop:ShutDown()
end
function ForcePawnsVehicleStop:Stop()
  local Stopped = self.Stopped
  self.PlayerEntity = self.PlayerEntity or GetLocalPlayerEntityId()
  ForceVehicleStop(self.PlayerEntity, self:GetBrake(self.Brake))
  Stopped(self)
end
function ForcePawnsVehicleStop:Reset()
  local ResetOut = self.ResetOut
  self.PlayerEntity = self.PlayerEntity or GetLocalPlayerEntityId()
  ForceVehicleStop(self.PlayerEntity, 0)
  ResetOut(self)
end
function ForcePawnsVehicleStop:GetBrake(brake)
  if brake == "Hard" then
    return 3
  elseif brake == "Medium" then
    return 2
  elseif brake == "Soft" then
    return 1
  end
  return 3
end
export = ForcePawnsVehicleStop
ForcePawnsVehicleStop = nil
