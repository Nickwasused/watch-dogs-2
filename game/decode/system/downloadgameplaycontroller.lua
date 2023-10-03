DownloadGameplayController = {}
function DownloadGameplayController:Create(cbox)
end
function DownloadGameplayController:Init(cbox)
  self.Duration = self.Duration or 10
  self.Radius = self.Radius or 20
  self.CustomRatio = self.CustomRatio or 0.5
  self.TargetEntityId = self.TargetEntityId or "-1"
  self.missionId = cbox:GetParentMissionId()
  self.instanceId = -1
end
function DownloadGameplayController:ShutDown()
  self:DestroyGameplay()
end
function DownloadGameplayController:Start()
  self:DestroyGameplay()
  self.SignalBlockedDuration = self.SignalBlockedDuration or -1
  self.SignalBlockedStartRatio = self.SignalBlockedStartRatio or 0.5
  local downloadingText = "132264"
  if self.DownloadingText ~= nil then
    downloadingText = self.DownloadingText.id
  end
  local downloadPausedText = "5905"
  if self.DownloadPausedText ~= nil then
    downloadPausedText = self.DownloadPausedText.id
  end
  local radius = self.OverridedRadius or self:GetDownloadPreset(self.DownloadRadiusPreset)
  self.instanceId = CreateDownloadGameplay_v5(self.missionId, self:GetLinkedObjective(self.LinkedObjective), downloadingText, downloadPausedText, self.TargetEntityId, self.Duration, radius, self.CustomRatio, self.SignalBlockedDuration, self.SignalBlockedStartRatio, self, "OnRatio1Reached", "OnRatio2Reached", "OnRatioCustomReached", "OnRatioBlockedReached", "OnDownloadCompleted")
  self.DownloadRemainingTime = GetDownloadGameplayRemainingTime(self.instanceId)
  self:Started()
end
function DownloadGameplayController:Stop()
  self:DestroyGameplay()
  self:Stopped()
end
function DownloadGameplayController:OnRatio1Reached()
  self.DownloadRemainingTime = GetDownloadGameplayRemainingTime(self.instanceId)
  return self:Ratio1Reached()
end
function DownloadGameplayController:OnRatio2Reached()
  self.DownloadRemainingTime = GetDownloadGameplayRemainingTime(self.instanceId)
  return self:Ratio2Reached()
end
function DownloadGameplayController:OnRatioCustomReached()
  self.DownloadRemainingTime = GetDownloadGameplayRemainingTime(self.instanceId)
  return self:RatioCustomReached()
end
function DownloadGameplayController:OnRatioBlockedReached()
  self.DownloadRemainingTime = GetDownloadGameplayRemainingTime(self.instanceId)
  return self:RatioBlockedReached()
end
function DownloadGameplayController:OnDownloadCompleted()
  self:DestroyGameplay()
  return self:DownloadCompleted()
end
function DownloadGameplayController:DestroyGameplay()
  if self.instanceId ~= -1 then
    DestroyWrappedGameplay(self.instanceId)
    self.instanceId = -1
  end
end
function DownloadGameplayController:GetLinkedObjective(objective)
  if objective == "Objective" then
    return 0
  elseif objective == "ObjectiveSub1" then
    return 1
  elseif objective == "ObjectiveSub2" then
    return 2
  elseif objective == "ObjectiveSub3" then
    return 3
  end
  return 0
end
function DownloadGameplayController:GetDownloadPreset(preset)
  if preset == "Interior" then
    return 20
  elseif preset == "Exterior" then
    return 30
  elseif preset == "Vehicle" then
    return 60
  end
  return 30
end
export = DownloadGameplayController
DownloadGameplayController = nil
