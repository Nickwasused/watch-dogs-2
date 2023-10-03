BooleanMissionVariable = {}
function BooleanMissionVariable:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function BooleanMissionVariable:In()
  local variable = GetDBVariableBool(self.Source)
  if LuaLibCore:AssertNotNil(variable, "Source") then
    local isValid = variable[1] ~= 0
    local value = variable[2] ~= 0
    expectedType = "boolean"
    if type(value) ~= expectedType then
      System:Warning(string.format("BooleanMissionVariable.lua: Internal error: value's type is '%s', expecting '%s'.", type(value), expectedType))
    end
    if isValid == false then
      System:Warning(string.format("BooleanMissionVariable.lua: Mission Variable value is not of the proper type, expecting a %s.", expectedType))
    end
    self.Target = value
  end
  self:Out()
end
export = BooleanMissionVariable
BooleanMissionVariable = nil
