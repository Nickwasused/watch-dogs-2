SetString = {}
function SetString:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function SetString:Init(cbox)
end
function SetString:ShutDown()
end
function SetString:FromString()
  if LuaLibCore:AssertNotNil(self.String, "String") then
    self.Target = self.String
    return self:Out()
  end
end
function SetString:FromInteger()
  if LuaLibCore:AssertNotNil(self.Integer, "Integer") then
    self.Target = tostring(self.Integer)
    self.Target = string.gsub(self.Target, "%p0+", "")
    return self:Out()
  end
end
function SetString:FromFloat()
  if LuaLibCore:AssertNotNil(self.Float, "Float") then
    self.Target = tostring(self.Float)
    return self:Out()
  end
end
function SetString:FromBoolean()
  if LuaLibCore:AssertNotNil(self.Boolean, "Boolean") then
    if self.Boolean == 0 then
      self.Target = "false"
    else
      self.Target = "true"
    end
    return self:Out()
  end
end
function SetString:FromEntity()
  if LuaLibCore:VerifyDataInputEntity(self.Entity, "Entity") then
    self.Target = tostring(self.Entity)
    self.Target = string.gsub(self.Target, "%p0+", "")
    return self:Out()
  end
end
function SetString:FromPlayer()
  if LuaLibCore:AssertNotNil(self.Player, "Player") then
    self.Target = tostring(self.Player)
    self.Target = string.gsub(self.Target, "%p0+", "")
    return self:Out()
  end
end
export = SetString
SetString = nil
