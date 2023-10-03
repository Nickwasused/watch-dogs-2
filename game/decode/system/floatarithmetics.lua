FloatArithmetic = {}
function FloatArithmetic:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function FloatArithmetic:Init(cbox)
end
function FloatArithmetic:ShutDown()
end
function FloatArithmetic:Add()
  if LuaLibCore:AssertNotNil(self.A, "A") and LuaLibCore:AssertNotNil(self.B, "B") then
    self.Target = self.A + self.B
    return self:Out()
  end
end
function FloatArithmetic:Sub()
  if LuaLibCore:AssertNotNil(self.A, "A") and LuaLibCore:AssertNotNil(self.B, "B") then
    self.Target = self.A - self.B
    return self:Out()
  end
end
function FloatArithmetic:Mul()
  if LuaLibCore:AssertNotNil(self.A, "A") and LuaLibCore:AssertNotNil(self.B, "B") then
    self.Target = self.A * self.B
    return self:Out()
  end
end
function FloatArithmetic:Div()
  if LuaLibCore:AssertNotNil(self.A, "A") and LuaLibCore:AssertNotNil(self.B, "B") then
    self.Target = self.A / self.B
    return self:Out()
  end
end
function FloatArithmetic:Mod()
  if LuaLibCore:AssertNotNil(self.A, "A") and LuaLibCore:AssertNotNil(self.B, "B") then
    self.Target = self.A % self.B
    return self:Out()
  end
end
function FloatArithmetic:Min()
  if LuaLibCore:AssertNotNil(self.A, "A") and LuaLibCore:AssertNotNil(self.B, "B") then
    self.Target = math.min(self.A, self.B)
    return self:Out()
  end
end
function FloatArithmetic:Max()
  if LuaLibCore:AssertNotNil(self.A, "A") and LuaLibCore:AssertNotNil(self.B, "B") then
    self.Target = math.max(self.A, self.B)
    return self:Out()
  end
end
function FloatArithmetic:Exp()
  if LuaLibCore:AssertNotNil(self.A, "A") and LuaLibCore:AssertNotNil(self.B, "B") then
    self.Target = self.A ^ self.B
    return self:Out()
  end
end
function FloatArithmetic:Abs()
  if LuaLibCore:AssertNotNil(self.A, "A") then
    self.Target = math.abs(self.A)
    return self:Out()
  end
end
export = FloatArithmetic
FloatArithmetic = nil
