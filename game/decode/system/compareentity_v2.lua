CompareEntity = {}
function CompareEntity:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function CompareEntity:In()
  local Entity1 = self.Entity1
  local Entity2 = self.Entity2
  local Equal = self.Equal
  local NotEqual = self.NotEqual
  local Out = self.Out
  if Entity1 == Entity2 then
    self.Result = 1
    Equal(self)
  else
    self.Result = 0
    NotEqual(self)
  end
  Out(self)
end
export = CompareEntity
CompareEntity = nil
