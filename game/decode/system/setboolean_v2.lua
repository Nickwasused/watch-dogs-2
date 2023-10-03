SetBoolean = {}
function SetBoolean:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function SetBoolean:FromBool()
  local Out = self.Out
  local SetFromBool = self.SetFromBool
  local targetValue = self.Bool
  local setIt = 0
  if LuaLibCore:AssertNotNil(targetValue, "Bool") then
    self.Target = targetValue
    setIt = 1
  end
  Out(self)
  if setIt == 1 then
    self.Target = targetValue
  end
  SetFromBool(self)
end
function SetBoolean:True()
  local SetTrue = self.SetTrue
  local Out = self.Out
  local targetValue = 1
  self.Target = targetValue
  Out(self)
  self.Target = targetValue
  SetTrue(self)
end
function SetBoolean:False()
  local SetFalse = self.SetFalse
  local Out = self.Out
  local targetValue = 0
  self.Target = targetValue
  Out(self)
  self.Target = targetValue
  SetFalse(self)
end
function SetBoolean:Toggle()
  local Toggled = self.Toggled
  local Out = self.Out
  local setIt = 0
  local targetValue = 0
  if LuaLibCore:AssertNotNil(self.Bool, "Bool") then
    setIt = 1
    if self.Bool == 1 then
      targetValue = 0
    else
      targetValue = 1
    end
  end
  if SetIt == 1 then
    self.Target = targetValue
  end
  Out(self)
  if setIt == 1 then
    self.Target = targetValue
  end
  Toggled(self)
end
export = SetBoolean
SetBoolean = nil
