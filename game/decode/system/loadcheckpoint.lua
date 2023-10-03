LoadCheckpoint = {}
function LoadCheckpoint:Create(cbox)
end
function LoadCheckpoint:Init(cbox)
end
function LoadCheckpoint:ShutDown()
end
function LoadCheckpoint:LoadCheckpoint()
  LoadLastCheckpoint()
  self:Out()
end
export = LoadCheckpoint
LoadCheckpoint = nil
