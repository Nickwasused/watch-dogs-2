CameraContextController = {}
function CameraContextController:Create(cbox)
end
function CameraContextController:Init(cbox)
  self.Player = nil
  self.Config = ""
  self.BlendIn = ""
  self.BlendOut = ""
end
function CameraContextController:ShutDown()
end
function CameraContextController:StartContext()
  self.Player = self.Player or GetLocalPlayerEntityId()
  if self.Player ~= nil then
    ActivateDominoCameraContext(self.Player, self.Config, self.BlendIn)
  end
  self:Out()
  self:ContextStarted()
end
function CameraContextController:StopContext()
  self.Player = self.Player or GetLocalPlayerEntityId()
  if self.Player ~= nil then
    ReleaseDominoCameraContext(self.Player, self.BlendOut)
  end
  self:Out()
  self:ContextStopped()
end
export = CameraContextController
CameraContextController = nil
