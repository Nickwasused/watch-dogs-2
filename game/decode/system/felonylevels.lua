FelonyLevels = {}
function FelonyLevels:Create(cbox)
end
function FelonyLevels:Init(cbox)
end
function FelonyLevels:ShutDown()
end
function FelonyLevels:GetScanLevel()
  local Out = self.Out
  Out(self)
end
function FelonyLevels:GetChaseLevel()
  local Out = self.Out
  Out(self)
end
function FelonyLevels:GetHeat()
  local Out = self.Out
  Out(self)
end
export = FelonyLevels
FelonyLevels = nil
