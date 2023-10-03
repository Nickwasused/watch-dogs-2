StartMetaSequence = {}
function StartMetaSequence:Create(cbox)
end
function StartMetaSequence:ShutDown()
end
function StartMetaSequence:In()
  self.ID = GetSequenceManager():StartMetaSequence()
  self:Out()
end
export = StartMetaSequence
StartMetaSequence = nil
