FloatMissionVariable = {}
function FloatMissionVariable:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function FloatMissionVariable:In()
  local variable = GetDBVariableFloat(self.Source)
  if LuaLibCore:AssertNotNil(variable, "Source") then
    local isValid = variable[1] ~= 0
    local value = variable[2]
    expectedType = "number"
    if type(value) ~= expectedType then
      System:Warning(string.format("FloatMissionVariable.lua: Internal error: value's type is '%s', expecting '%s'.", type(value), expectedType))
    end
    if isValid == false then
      System:Warning(string.format("FloatMissionVariable.lua: Mission Variable value is not of the proper type, expecting a %s.", expectedType))
    end
    self.Target = value
  end
  self:Out()
end
export = FloatMissionVariable
FloatMissionVariable = nil
