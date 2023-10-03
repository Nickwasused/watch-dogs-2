SetActionMap = {}
function SetActionMap:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function SetActionMap:Set()
  local Out = self.Out
  local IsSet = self.IsSet
  local ActionMap
  if self.ActionMapName ~= nil then
    ActionMap = self.ActionMapName
  end
  if self.ActionMap ~= nil then
    ActionMap = self.ActionMap
  end
  if LuaLibCore:AssertNotNil(ActionMap, "ActionMap") then
    SetPlayerActionMap(ActionMap)
  end
  Out(self)
  IsSet(self)
end
function SetActionMap:Push()
  local Out = self.Out
  local Pushed = self.Pushed
  local ActionMap
  local ActionMapPriority = "DominoNormal"
  if self.ActionMapName ~= nil then
    ActionMap = self.ActionMapName
  end
  if self.ActionMap ~= nil then
    ActionMap = self.ActionMap
  end
  if self.ActionMapPriority ~= nil then
    ActionMapPriority = self.ActionMapPriority
  end
  if LuaLibCore:AssertNotNil(ActionMap, "ActionMap") then
    PushPlayerActionMap(ActionMap, ActionMapPriority)
  end
  Out(self)
  Pushed(self)
end
function SetActionMap:Pop()
  local Out = self.Out
  local Popped = self.Popped
  local ActionMap
  if self.ActionMapName ~= nil then
    ActionMap = self.ActionMapName
  end
  if self.ActionMap ~= nil then
    ActionMap = self.ActionMap
  end
  if LuaLibCore:AssertNotNil(ActionMap, "ActionMap") then
    PopPlayerActionMap(ActionMap)
  end
  Out(self)
  Popped(self)
end
export = SetActionMap
SetActionMap = nil
