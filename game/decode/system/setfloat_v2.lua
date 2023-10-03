SetFloat = {}
function SetFloat:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function SetFloat:FromFloat()
  if LuaLibCore:AssertNotNil(self.Float, "Float") then
    self.Target = self.Float
  end
  self:Out()
end
function SetFloat:FromInteger()
  if LuaLibCore:AssertNotNil(self.Integer, "Integer") then
    self.Target = self.Integer
  end
  self:Out()
end
function SetFloat:FromString()
  if LuaLibCore:AssertNotNil(self.String, "String") then
    local number = tonumber(self.String)
    if not number then
      local boxName = LuaLibCore:GetCurrentBoxName()
      LuaLibCore:DataError("FromString", "Cast to Float failed. String: " .. self.String)
    else
      self.Target = tonumber(self.String)
      self:Out()
    end
  end
end
export = SetFloat
SetFloat = nil
