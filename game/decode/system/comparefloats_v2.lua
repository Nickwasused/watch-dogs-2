CompareFloats = {}
function CompareFloats:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibStateless.lua")
end
function CompareFloats:In()
  self = LuaLibStateless:Clone(self)
  self.Tolerance = math.abs(self.Tolerance or 0)
  if LuaLibCore:AssertNotNil(self.A, "A") and LuaLibCore:AssertNotNil(self.B, "B") then
    difference = math.abs(self.B - self.A)
    if difference <= self.Tolerance then
      self:A_eq_B()
      self:A_ge_B()
      self:A_le_B()
    else
      self:A_ne_B()
      if self.A < self.B then
        self:A_lt_B()
        self:A_le_B()
      end
      if self.A > self.B then
        self:A_gt_B()
        self:A_ge_B()
      end
    end
  end
  self:Out()
end
export = CompareFloats
CompareFloats = nil
