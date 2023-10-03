FelonyMaxHeat = {}
function FelonyMaxHeat:Create(cbox)
end
function FelonyMaxHeat:Init(cbox)
end
function FelonyMaxHeat:ShutDown()
end
function FelonyMaxHeat:Set()
  local Out = self.Out
  local MaxSet = self.MaxSet
  Out(self)
  MaxSet(self)
end
function FelonyMaxHeat:Reset()
  local Out = self.Out
  local MaxReset = self.MaxReset
  Out(self)
  MaxReset(self)
end
export = FelonyMaxHeat
FelonyMaxHeat = nil
