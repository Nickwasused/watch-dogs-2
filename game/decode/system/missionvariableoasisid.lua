OasisIdMissionVariable = {}
function OasisIdMissionVariable:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function OasisIdMissionVariable:In()
  local variable = GetDBVariableLocalizationID(self.Source)
  if LuaLibCore:AssertNotNil(variable, "Source") then
    local isValid = variable[1] ~= 0
    local value = variable[2]
    expectedType = "string"
    if type(value) ~= expectedType then
      System:Warning(string.format("OasisIdMissionVariable: Internal error: value's type is '%s', expecting '%s'.", type(value), expectedType))
    end
    if isValid == false then
      System:Warning(string.format("OasisIdMissionVariable: Mission Variable value is not of the proper type, expecting a %s.", expectedType))
    end
    self.Target = {
      section = "",
      item = "",
      id = value
    }
  end
  self:Out()
end
export = OasisIdMissionVariable
OasisIdMissionVariable = nil
