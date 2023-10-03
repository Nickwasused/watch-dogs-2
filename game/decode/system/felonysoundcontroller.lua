FelonySoundController = {}
function FelonySoundController:Create(cbox)
end
function FelonySoundController:Init(cbox)
end
function FelonySoundController:ShutDown()
end
function FelonySoundController:Enable()
  local Out = self.Out
  local Enabled = self.Enabled
  local MuteAll = self.MuteAllSounds or 0
  local MuteAllPilots = self.MuteAllPilotEntities or 0
  local MuteAllPatrols = self.MuteAllPatrolEntities or 0
  local MuteAllDispatchers = self.MuteAllDispatchEntities or 0
  local MuteAllOperators = self.MuteAllOperatorEntities or 0
  local MuteAllBoats = self.MuteAllBoatEntities or 0
  local MuteSpecificEntities = MuteAllPilots or MuteAllPatrols or MuteAllDispatchers or MuteAllOperators or MuteAllBoats
  if MuteAll then
    FelonyMuteAllSounds(1)
  elseif MuteSpecificEntities then
    FelonyMuteEntities(MuteAllPilots, MuteAllPatrols, MuteAllDispatchers, MuteAllOperators, MuteAllBoats)
  end
  Out(self)
  Enabled(self)
end
function FelonySoundController:Disable()
  local Out = self.Out
  local Disabled = self.Disabled
  FelonyMuteAllSounds(0)
  FelonyMuteEntities(0, 0, 0, 0, 0)
  Out(self)
  Disabled(self)
end
export = FelonySoundController
FelonySoundController = nil
