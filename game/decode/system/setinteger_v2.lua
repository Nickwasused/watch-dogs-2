SetInteger = {}
function SetInteger:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function SetInteger:FromInteger()
  if LuaLibCore:AssertNotNil(self.Integer, "Integer") then
    self.Target = self.Integer
  end
  self:Out()
end
function SetInteger:FromString()
  if LuaLibCore:AssertNotNil(self.String, "String") then
    local number = tonumber(self.String)
    if not number then
      LuaLibCore:DataError("FromString", "Cast to Int failed. String: " .. self.String)
    else
      if self.UseFloor == 1 then
        self.Target = math.floor(tonumber(self.String))
      else
        self.Target = self:Round(tonumber(self.String), 0)
      end
      self:Out()
    end
  end
end
function SetInteger:FromFloat()
  if LuaLibCore:AssertNotNil(self.Float, "Float") then
    if self.UseFloor == 1 then
      self.Target = math.floor(self.Float)
    else
      self.Target = self:Round(self.Float, 0)
    end
  end
  self:Out()
end
function SetInteger:FromPlayer()
  if LuaLibCore:AssertNotNil(self.Player, "Player") then
    self.Target = self.Player
  end
  self:Out()
end
function SetInteger:Round(num, idp)
  local mult = 10 ^ (idp or 0)
  return math.floor(num * mult + 0.5) / mult
end
export = SetInteger
SetInteger = nil
