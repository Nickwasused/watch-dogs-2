ChangePlayerGkModelFromHumanConfigBox = {}
function ChangePlayerGkModelFromHumanConfigBox:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function ChangePlayerGkModelFromHumanConfigBox:Init(cbox)
end
function ChangePlayerGkModelFromHumanConfigBox:ShutDown()
end
function ChangePlayerGkModelFromHumanConfigBox:Change()
  local Out = self.Out
  local Changed = self.Changed
  local Failed = self.Failed
  if self.VoiceActorName ~= nil then
    if ChangePlayerGkModelFromHumanConfigAndVoiceActor(self.Model, self.VoiceActorName) == 1 then
      Changed(self)
    else
      Failed(self)
    end
  elseif ChangePlayerGkModelFromHumanConfig(self.Model) == 1 then
    Changed(self)
  else
    Failed(self)
  end
end
function ChangePlayerGkModelFromHumanConfigBox:Reset()
  local Out = self.Out
  local ResetDone = self.ResetDone
  local Failed = self.Failed
  if self.VoiceActorName ~= nil then
    if ChangePlayerGkModelFromHumanConfigAndVoiceActor("", self.VoiceActorName) == 1 then
      ResetDone(self)
    else
      Failed(self)
    end
  elseif ChangePlayerGkModelFromHumanConfigAndVoiceActor("", "") == 1 then
    ResetDone(self)
  else
    Failed(self)
  end
end
export = ChangePlayerGkModelFromHumanConfigBox
ChangePlayerGkModelFromHumanConfigBox = nil
