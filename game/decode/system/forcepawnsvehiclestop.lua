ForcePawnsVehicleStop = {}
function ForcePawnsVehicleStop:Create(cbox)
end
function ForcePawnsVehicleStop:Init(cbox)
end
function ForcePawnsVehicleStop:ShutDown()
end
function ForcePawnsVehicleStop:In()
  local Out = self.Out
  self.PlayerEntity = self.PlayerEntity or GetLocalPlayerEntityId()
  ForcePawnsVehicleStopFunction(self.PlayerEntity)
  Out(self)
end
export = ForcePawnsVehicleStop
ForcePawnsVehicleStop = nil
