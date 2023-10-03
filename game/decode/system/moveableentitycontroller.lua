MoveableEntityController = {}
function MoveableEntityController:Create(cbox)
end
function MoveableEntityController:Init(cbox)
end
function MoveableEntityController:ShutDown()
end
function MoveableEntityController:Move()
  local Moved = self.Moved
  local Out = self.Out
  CDominoManager_GetInstance():SendRegisteredEventToEntity(self.MoveableEntity, "CBaseEntityMovementComponent", "MoveEntity")
  Out(self)
  Moved(self)
end
function MoveableEntityController:MoveForward()
  local MovedForward = self.MovedForward
  local Out = self.Out
  CDominoManager_GetInstance():SendRegisteredEventToEntity(self.MoveableEntity, "CBaseEntityMovementComponent", "FwdMoveEntity")
  Out(self)
  MovedForward(self)
end
function MoveableEntityController:MoveBackward()
  local MovedBackward = self.MovedBackward
  local Out = self.Out
  CDominoManager_GetInstance():SendRegisteredEventToEntity(self.MoveableEntity, "CBaseEntityMovementComponent", "BkwMoveEntity")
  Out(self)
  MovedBackward(self)
end
function MoveableEntityController:ToggleBlock()
  local ToggleBlocked = self.ToggleBlocked
  local Out = self.Out
  CDominoManager_GetInstance():SendRegisteredEventToEntity(self.MoveableEntity, "CBaseEntityMovementComponent", "ChangeBlockedMoveEntity")
  Out(self)
  ToggleBlocked(self)
end
function MoveableEntityController:Block()
  local Blocked = self.Blocked
  local Out = self.Out
  CDominoManager_GetInstance():SendRegisteredEventToEntity(self.MoveableEntity, "CBaseEntityMovementComponent", "BlockMoveEntity")
  Out(self)
  Blocked(self)
end
function MoveableEntityController:UnBlock()
  local UnBlocked = self.UnBlocked
  local Out = self.Out
  CDominoManager_GetInstance():SendRegisteredEventToEntity(self.MoveableEntity, "CBaseEntityMovementComponent", "UnBlockMoveEntity")
  Out(self)
  UnBlocked(self)
end
function MoveableEntityController:TogglePause()
  local TogglePaused = self.TogglePaused
  local Out = self.Out
  CDominoManager_GetInstance():SendRegisteredEventToEntity(self.MoveableEntity, "CBaseEntityMovementComponent", "ChangePausedMoveEntity")
  Out(self)
  TogglePaused(self)
end
function MoveableEntityController:Pause()
  local Paused = self.Paused
  local Out = self.Out
  CDominoManager_GetInstance():SendRegisteredEventToEntity(self.MoveableEntity, "CBaseEntityMovementComponent", "PauseMoveEntity")
  Out(self)
  Paused(self)
end
function MoveableEntityController:UnPause()
  local UnPaused = self.UnPaused
  local Out = self.Out
  CDominoManager_GetInstance():SendRegisteredEventToEntity(self.MoveableEntity, "CBaseEntityMovementComponent", "UnpauseMoveEntity")
  Out(self)
  UnPaused(self)
end
function MoveableEntityController:SetCanUpdateMovementWithoutPhysics()
  local CanUpdateMovmentWithoutPhysicsSet = self.CanUpdateMovementWithoutPhysicsSet
  local Out = self.Out
  SetCanUpdateMovementWithoutPhysics(self.MoveableEntity, self.CanMoveWithoutPhysics)
  Out(self)
  CanUpdateMovmentWithoutPhysicsSet(self)
end
export = MoveableEntityController
MoveableEntityController = nil
