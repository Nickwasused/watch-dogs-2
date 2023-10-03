UnspawnAllPedestrians = {}
function UnspawnAllPedestrians:Create(cbox)
end
function UnspawnAllPedestrians:Init(cbox)
end
function UnspawnAllPedestrians:ShutDown()
end
function UnspawnAllPedestrians:In()
  local Out = self.Out
  self.target = self.target
  UnspawnAllPedestriansInRadius(self.x, self.y, self.z, self.radius)
  Out(self)
end
export = UnspawnAllPedestrians
UnspawnAllPedestrians = nil
