BlackoutController = {}
function BlackoutController:Create(cbox)
end
function BlackoutController:Init(cbox)
end
function BlackoutController:ShutDown()
end
function BlackoutController:StartBlackout()
  local BlackoutStarted = self.BlackoutStarted
  local Out = self.Out
  self.Instigator = self.Instigator or GetLocalPlayerEntityId()
  self.Origin = self.Origin or GetLocalPlayerEntityId()
  if self.PropagationSpeed == nil then
    self.PropagationSpeed = 100
  end
  if self.RecoverySpeed == nil then
    self.RecoverySpeed = 100
  end
  if self.Radius == nil then
    self.Radius = 50
  end
  if self.Special == nil then
    self.Special = 0
  end
  if self.Duration == nil then
    self.Duration = 10
  end
  if self.OnlyAffectsLighting == nil then
    self.OnlyAffectsLighting = 0
  end
  StartBlackoutV2(self.Instigator, self.Origin, self.PropagationSpeed, self.RecoverySpeed, self.Radius, self.Duration, self.Special, self.OnlyAffectsLighting)
  BlackoutStarted(self)
  Out(self)
end
function BlackoutController:StopBlackout()
  local BlackoutStopped = self.BlackoutStopped
  local Out = self.Out
  EndAllBlackoutsAfterFinished()
  BlackoutStopped(self)
  Out(self)
end
function BlackoutController:StartBackup()
  local BackupStarted = self.BackupStarted
  local Out = self.Out
  StartBlackBackupAfterFinished()
  BackupStarted(self)
  Out(self)
end
function BlackoutController:StartGlobalPowerGlitch()
  local GlobalPowerGlitchStarted = self.GlobalPowerGlitchStarted
  local Out = self.Out
  if self.PowerGlitchLowFrequency == nil then
    self.PowerGlitchLowFrequency = 6
  end
  if self.PowerGlitchHighFrequency == nil then
    self.PowerGlitchHighFrequency = 15
  end
  if self.PowerGlitchIntensity == nil then
    self.PowerGlitchIntensity = 0.5
  end
  if self.PowerGlitchBlockSize == nil then
    self.PowerGlitchBlockSize = 100
  end
  if self.PowerGlitchFadeTime == nil then
    self.PowerGlitchFadeTime = 2
  end
  StartGlobalPowerGlitch(self.PowerGlitchLowFrequency, self.PowerGlitchHighFrequency, self.PowerGlitchIntensity, self.PowerGlitchBlockSize, self.PowerGlitchFadeTime)
  GlobalPowerGlitchStarted(self)
  Out(self)
end
function BlackoutController:StopGlobalPowerGlitch()
  local GlobalPowerGlitchStopped = self.GlobalPowerGlitchStopped
  local Out = self.Out
  StopGlobalPowerGlitch()
  GlobalPowerGlitchStopped(self)
  Out(self)
end
export = BlackoutController
BlackoutController = nil
