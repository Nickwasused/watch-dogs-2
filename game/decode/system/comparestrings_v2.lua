CompareStrings = {}
function CompareStrings:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibStateless.lua")
end
function CompareStrings:In()
  self = LuaLibStateless:Clone(self)
  if LuaLibCore:AssertNotNil(self.A, "A") and LuaLibCore:AssertNotNil(self.B, "B") then
    if self.A == self.B then
      self:A_eq_B()
    else
      self:A_neq_B()
    end
    found = string.find(self.A, self.B, 1, 1)
    if found ~= nil then
      self:A_contains_B()
    else
      self:A_ncontains_B()
    end
  end
  self:Out()
end
export = CompareStrings
CompareStrings = nil
