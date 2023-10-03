SetDominoCameraReferenceBox = {}
function SetDominoCameraReferenceBox:Create(cbox)
end
function SetDominoCameraReferenceBox:Init(cbox)
  self.PlayerEntity = nil
end
function SetDominoCameraReferenceBox:ShutDown()
end
function SetDominoCameraReferenceBox:In()
  self.PlayerEntity = self.PlayerEntity or GetLocalPlayerEntityId()
  if self.PlayerEntity ~= nil and self.ReferenceEntity ~= nil then
    SetDominoCameraReference(self.PlayerEntity, self.Slot, self.ReferenceEntity)
  end
  return self:Out()
end
export = SetDominoCameraReferenceBox
SetDominoCameraReferenceBox = nil
