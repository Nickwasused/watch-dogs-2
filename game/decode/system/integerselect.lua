IntegerSelect = {}
function IntegerSelect:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibStateless.lua")
end
function IntegerSelect:Init(cbox)
  self.Case = {}
  self.Match = {}
end
function IntegerSelect:ShutDown()
end
function IntegerSelect:In()
  local isMatch = false
  for i = 0, self._DynamicAnchors.Case - 1 do
    if self.Integer == self.Case[i] then
      isMatch = true
      self.Match[i](self)
    end
  end
  if not isMatch then
    self:None()
  end
  self:Out()
end
export = IntegerSelect
IntegerSelect = nil
