CompareIntegers = {}
function CompareIntegers:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibStateless.lua")
end
function CompareIntegers:In()
  self = LuaLibStateless:Clone(self)
  if LuaLibCore:AssertNotNil(self.A, "A") and LuaLibCore:AssertNotNil(self.B, "B") then
    if self.A < self.B then
      self:A_lt_B()
    end
    if self.A <= self.B then
      self:A_le_B()
    end
    if self.A == self.B then
      self:A_eq_B()
    end
    if self.A >= self.B then
      self:A_ge_B()
    end
    if self.A > self.B then
      self:A_gt_B()
    end
    if self.A ~= self.B then
      self:A_ne_B()
    end
  end
  self:Out()
end
export = CompareIntegers
CompareIntegers = nil
