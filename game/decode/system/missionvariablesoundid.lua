SoundIdMissionVariable = {}
function SoundIdMissionVariable:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
  self.cbox = cbox
end
function SoundIdMissionVariable:In()
  local variable = GetDBVariableSoundID(self.Source)
  if LuaLibCore:AssertNotNil(variable, "Source") then
    local isValid = variable[1] ~= 0
    local value = variable[2]
    expectedType = "string"
    if type(value) ~= expectedType then
      System:Warning(string.format("SoundIdMissionVariable: Internal error: value's type is '%s', expecting '%s'.", type(value), expectedType))
    end
    if isValid == false then
      System:Warning(string.format("SoundIdMissionVariable: Mission Variable value is not of the proper type, expecting a %s.", expectedType))
    end
    self.Target = value
    resourceString = string.format("sndres%s", value)
    self.cbox:LoadResource(resourceString, "CSoundResource")
  end
  self:Out()
end
export = SoundIdMissionVariable
SoundIdMissionVariable = nil
