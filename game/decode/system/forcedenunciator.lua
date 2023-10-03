ForceDenunciator = {}
function ForceDenunciator:Create(cbox)
end
function ForceDenunciator:Init(cbox)
  self.player = nil
end
function ForceDenunciator:ShutDown()
end
function ForceDenunciator:CreateDenunciator()
  if self.player ~= nil then
    ForceDenunciatorFunc(self.player)
  end
  self:Out()
end
export = ForceDenunciator
ForceDenunciator = nil
