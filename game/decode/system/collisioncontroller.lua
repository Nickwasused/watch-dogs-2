CollisionController = {}
function CollisionController:Create(cbox)
end
function CollisionController:Init(cbox)
end
function CollisionController:ShutDown()
end
function CollisionController:Set()
  local IsSet = self.IsSet
  local Out = self.Out
  self.Collisionable = self.Collisionable or 1
  if self.Entity ~= nil then
    SetPhysicsEnabled(self.Entity, self.Collisionable)
    IsSet(self)
    Out(self)
  end
end
function CollisionController:EnableCollisions()
  local CollisionsEnabled = self.CollisionsEnabled
  local Out = self.Out
  if self.Entity ~= nil then
    SetPhysicsEnabled(self.Entity, 1)
    CollisionsEnabled(self)
    Out(self)
  end
end
function CollisionController:DisableCollisions()
  local CollisionsDisabled = self.CollisionsDisabled
  local Out = self.Out
  if self.Entity ~= nil then
    SetPhysicsEnabled(self.Entity, 0)
    CollisionsDisabled(self)
    Out(self)
  end
end
export = CollisionController
CollisionController = nil
