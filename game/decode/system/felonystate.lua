FelonyState = {}
function FelonyState:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibStateless.lua")
end
function FelonyState:Init(cbox)
end
function FelonyState:ShutDown()
end
function FelonyState:GetFelonyState()
  self = LuaLibStateless:Clone(self)
  return self:Free()
end
export = FelonyState
FelonyState = nil
