CompareBoolean = {}
function CompareBoolean:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibStateless.lua")
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function CompareBoolean:In()
  self = LuaLibStateless:Clone(self)
  if self.A ~= nil then
    if self.A == 1 then
      self:A_is_True()
    end
    if self.A == 0 then
      self:A_is_False()
    end
    if self.B ~= nil then
      if self.A == 1 and self.B == 1 then
        self:A_and_B()
      end
      if self.A == 0 and self.B == 0 then
        self:notA_and_notB()
      end
      if self.A == 1 or self.B == 1 then
        self:A_or_B()
      end
      if self.A ~= self.B then
        self:A_xor_B()
      end
    end
  end
  self:Out()
end
export = CompareBoolean
CompareBoolean = nil
