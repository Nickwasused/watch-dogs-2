CinematicSceneEntityController = {}
function CinematicSceneEntityController:Create(cbox)
end
function CinematicSceneEntityController:Init(cbox)
end
function CinematicSceneEntityController:ShutDown()
end
function CinematicSceneEntityController:Remove()
  local Out = self.Out
  if self.Entity ~= nil then
    RemoveCinematicSceneEntity(self.Entity)
  end
  Out(self)
end
export = CinematicSceneEntityController
CinematicSceneEntityController = nil
