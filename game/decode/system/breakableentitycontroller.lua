BreakableEntityController = {}
function BreakableEntityController:Create(cbox)
end
function BreakableEntityController:Init(cbox)
end
function BreakableEntityController:ShutDown()
end
function BreakableEntityController:Break()
  BreakableEntity_NextState(self.BreakableEntity)
  self:Broken()
end
export = BreakableEntityController
BreakableEntityController = nil
