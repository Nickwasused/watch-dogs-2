ListGetRandom = {}
function ListGetRandom:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function ListGetRandom:In()
  if LuaLibCore:AssertNotNil(self.Input, "Input") then
    nrOfData = #self.Input
    index = math.random(1, nrOfData)
    self.Data = self.Input[index]
  end
  self:Out()
end
export = ListGetRandom
ListGetRandom = nil
