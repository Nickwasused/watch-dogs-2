CameraRealign = {}
function CameraRealign:Create(cbox)
end
function CameraRealign:Init(cbox)
end
function CameraRealign:ShutDown()
end
function CameraRealign:Activate()
  self.Player = self.Player or GetLocalPlayerEntityId()
  RealignCameraBehind(self.Player)
  self:Out()
end
export = CameraRealign
CameraRealign = nil
