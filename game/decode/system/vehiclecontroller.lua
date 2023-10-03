VehicleController = {}
function VehicleController:Create(cbox)
end
function VehicleController:Init(cbox)
end
function VehicleController:ShutDown()
end
function VehicleController:SetAsUsable()
  local Out = self.Out
  local Usable = self.Usable
  if self.Vehicle ~= nil then
    CDominoManager_GetInstance():SendRegisteredEventToEntity(self.Vehicle, "CVehicle", "SetAsUsable")
    Usable(self)
  end
  Out(self)
end
function VehicleController:SetAsUnusable()
  local Out = self.Out
  local Unusable = self.Unusable
  if self.Vehicle ~= nil then
    CDominoManager_GetInstance():SendRegisteredEventToEntity(self.Vehicle, "CVehicle", "SetAsUnusable")
    Unusable(self)
  end
  Out(self)
end
function VehicleController:SetAsDestructable()
  local Out = self.Out
  local Destructable = self.Destructable
  if self.Vehicle ~= nil then
    CDominoManager_GetInstance():SendRegisteredEventToEntity(self.Vehicle, "CVehicle", "SetAsDestructable")
    Destructable(self)
  end
  Out(self)
end
function VehicleController:SetAsIndestructable()
  local Out = self.Out
  local Indestructable = self.Indestructable
  if self.Vehicle ~= nil then
    CDominoManager_GetInstance():SendRegisteredEventToEntity(self.Vehicle, "CVehicle", "SetAsIndestructable")
    Indestructable(self)
  end
  Out(self)
end
function VehicleController:SetTyresDeflatable()
  local Out = self.Out
  local Deflatable = self.Deflatable
  if self.Vehicle ~= nil then
    CDominoManager_GetInstance():SendRegisteredEventToEntity(self.Vehicle, "CVehicle", "SetTyresDeflatable")
    Deflatable(self)
  end
  Out(self)
end
function VehicleController:SetTyresUndeflatable()
  local Out = self.Out
  local Undeflatable = self.Undeflatable
  if self.Vehicle ~= nil then
    CDominoManager_GetInstance():SendRegisteredEventToEntity(self.Vehicle, "CVehicle", "SetTyresUndeflatable")
    Undeflatable(self)
  end
  Out(self)
end
function VehicleController:SetAsUnmovable()
  local Out = self.Out
  local Unmovable = self.Unmovable
  if self.Vehicle ~= nil then
    CDominoManager_GetInstance():SendRegisteredEventToEntity(self.Vehicle, "CVehicle", "SetAsUnmovable")
    Unmovable(self)
  end
  Out(self)
end
function VehicleController:SetAsMovable()
  local Out = self.Out
  local Movable = self.Movable
  if self.Vehicle ~= nil then
    CDominoManager_GetInstance():SendRegisteredEventToEntity(self.Vehicle, "CVehicle", "SetAsMovable")
    Movable(self)
  end
  Out(self)
end
function VehicleController:SetEngineBroken()
  local Out = self.Out
  local EngineBroken = self.EngineBroken
  if self.Vehicle ~= nil then
    CDominoManager_GetInstance():SendRegisteredEventToEntity(self.Vehicle, "CVehicle", "SetEngineBroken")
    EngineBroken(self)
  end
  Out(self)
end
function VehicleController:ShutDownEngine()
  local Out = self.Out
  local EngineShutDown = self.EngineShutDown
  if self.Vehicle ~= nil then
    ShutdownVehicleEngine(self.Vehicle, 1)
    EngineShutDown(self)
  end
  Out(self)
end
function VehicleController:StartEngine()
  local Out = self.Out
  local EngineStarted = self.EngineStarted
  if self.Vehicle ~= nil then
    ShutdownVehicleEngine(self.Vehicle, 0)
    EngineStarted(self)
  end
  Out(self)
end
function VehicleController:DisableForPlayer()
  local Out = self.Out
  if self.Vehicle ~= nil then
    DisableVehicleForPlayers(self.Vehicle, 1)
  end
  Out(self)
end
function VehicleController:EnableForPlayer()
  local Out = self.Out
  if self.Vehicle ~= nil then
    DisableVehicleForPlayers(self.Vehicle, 0)
  end
  Out(self)
end
function VehicleController:ExplodeVehicle()
  if self.Vehicle ~= nil then
    ExplodeVehicle(self.Vehicle)
    self:VehicleExploded()
  end
  self:Out()
end
export = VehicleController
VehicleController = nil
