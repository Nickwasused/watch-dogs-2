EnableCameraDoFContextBox = {}
function EnableCameraDoFContextBox:Create(cbox)
end
function EnableCameraDoFContextBox:Init(cbox)
  self.PlayerEntity = nil
  self.Enable = 1
end
function EnableCameraDoFContextBox:ShutDown()
end
function EnableCameraDoFContextBox:In()
  self.PlayerEntity = self.PlayerEntity or GetLocalPlayerEntityId()
  if self.PlayerEntity ~= nil then
    EnableCameraDoF(self.PlayerEntity, self.Enable)
  end
  return self:Out()
end
export = EnableCameraDoFContextBox
EnableCameraDoFContextBox = nil
