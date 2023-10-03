FelonySpawnRoadBlock = {}
function FelonySpawnRoadBlock:Create(cbox)
end
function FelonySpawnRoadBlock:Init(cbox)
end
function FelonySpawnRoadBlock:ShutDown()
end
function FelonySpawnRoadBlock:SpawnRoadBlock()
  local Out = self.Out
  Out(self)
end
function FelonySpawnRoadBlock:UnspawnRoadBlock()
  local Out = self.Out
  Out(self)
end
export = FelonySpawnRoadBlock
FelonySpawnRoadBlock = nil
