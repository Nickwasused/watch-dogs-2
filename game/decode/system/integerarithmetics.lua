IntegerArithmetic = {}
function IntegerArithmetic:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function IntegerArithmetic:Init(cbox)
end
function IntegerArithmetic:ShutDown()
end
function IntegerArithmetic:Add()
  if LuaLibCore:AssertNotNil(self.A, "A") and LuaLibCore:AssertNotNil(self.B, "B") then
    self.Target = self.A + self.B
    return self:Out()
  end
end
function IntegerArithmetic:Sub()
  if LuaLibCore:AssertNotNil(self.A, "A") and LuaLibCore:AssertNotNil(self.B, "B") then
    self.Target = self.A - self.B
    return self:Out()
  end
end
function IntegerArithmetic:Mul()
  if LuaLibCore:AssertNotNil(self.A, "A") and LuaLibCore:AssertNotNil(self.B, "B") then
    self.Target = self.A * self.B
    return self:Out()
  end
end
function IntegerArithmetic:Div()
  if LuaLibCore:AssertNotNil(self.A, "A") and LuaLibCore:AssertNotNil(self.B, "B") then
    self.Target = math.floor(self.A / self.B)
    return self:Out()
  end
end
function IntegerArithmetic:Mod()
  if LuaLibCore:AssertNotNil(self.A, "A") and LuaLibCore:AssertNotNil(self.B, "B") then
    self.Target = self.A % self.B
    return self:Out()
  end
end
function IntegerArithmetic:Min()
  if LuaLibCore:AssertNotNil(self.A, "A") and LuaLibCore:AssertNotNil(self.B, "B") then
    self.Target = math.min(self.A, self.B)
    return self:Out()
  end
end
function IntegerArithmetic:Max()
  if LuaLibCore:AssertNotNil(self.A, "A") and LuaLibCore:AssertNotNil(self.B, "B") then
    self.Target = math.max(self.A, self.B)
    return self:Out()
  end
end
function IntegerArithmetic:Exp()
  if LuaLibCore:AssertNotNil(self.A, "A") and LuaLibCore:AssertNotNil(self.B, "B") then
    self.Target = self.A ^ self.B
    return self:Out()
  end
end
function IntegerArithmetic:Abs()
  if LuaLibCore:AssertNotNil(self.A, "A") then
    self.Target = math.abs(self.A)
    return self:Out()
  end
end
export = IntegerArithmetic
IntegerArithmetic = nil
