FixCamera = {}
function FixCamera:Create(cbox)
end
function FixCamera:Init(cbox)
  self.CameraReference = nil
end
function FixCamera:ShutDown()
end
function FixCamera:In()
  if self.CameraReference == nil then
    FreePlayerCamera()
  else
    FixPlayerCamera(self.CameraReference, self.FOV)
  end
  return self:Out()
end
export = FixCamera
FixCamera = nil
