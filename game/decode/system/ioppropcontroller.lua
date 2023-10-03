IOPPropController = {}
function IOPPropController:Create(cbox)
end
function IOPPropController:Init(cbox)
end
function IOPPropController:ShutDown()
end
function IOPPropController:SetStateIndex()
  self:Out()
  if self.PropEntity ~= nil then
    SetIOPPropStateIndex(self.PropEntity, self.StateIndex)
  end
end
export = IOPPropController
IOPPropController = nil
