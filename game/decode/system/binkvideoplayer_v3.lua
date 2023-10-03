BinkVideoPlayer = {}
function BinkVideoPlayer:Create(cbox)
end
function BinkVideoPlayer:Init(cbox)
  self.success = 0
end
function BinkVideoPlayer:ShutDown()
end
function BinkVideoPlayer:Start()
  StopBinkVideo()
  if self.BinkFileName ~= nil or self.VideoDbObject ~= nil then
    if self.CanBeSkip == nil then
      self.CanBeSkip = 0
    end
    if self.NoActionMap == nil then
      self.NoActionMap = 0
    end
    if self.EnableAlpha == nil then
      self.EnableAlpha = 0
    end
    if self.UseSubtitle == nil then
      self.UseSubtitle = 0
    end
    if self.PlayEmbeddedAudio == nil then
      self.PlayEmbeddedAudio = 0
    end
    if self.PauseGame == nil then
      self.PauseGame = 0
    end
    self.ExternalSoundId = self.ExternalSoundId or ""
    self.OverrideSubtitle = self.OverrideSubtitle or ""
    self.OnSkipSoundId = self.OnSkipSoundId or ""
    self.Seconds = self.Seconds or 0
    self.HideBlackBars = self.HideBlackBars or false
    if self.HideBlackBars then
      BinkVideoUseBlackBoxes(self.HideBlackBars)
    end
    if self.VideoDbObject ~= nil then
      self.success = PlayBinkVideoFileWithSubtitleV4(self.VideoDbObject, self.ExternalSoundId, self.OnSkipSoundId, self.CanBeSkip, self.NoActionMap, self.EnableAlpha, self.Seconds, self.UseSubtitle, self, "OnStarted", "OnTimerReached", "OnFinished", self.PlayEmbeddedAudio, self.PauseGame, self.OverrideSubtitle)
    else
      self.success = PlayBinkVideoFileWithSubtitleV3(self.BinkFileName, self.ExternalSoundId, self.OnSkipSoundId, self.CanBeSkip, self.NoActionMap, self.EnableAlpha, self.Seconds, self.UseSubtitle, self, "OnStarted", "OnTimerReached", "OnFinished", self.PlayEmbeddedAudio, self.PauseGame, self.OverrideSubtitle)
    end
    if self.success ~= 1 then
      self:OnFinished()
    end
  end
end
function BinkVideoPlayer:Stop()
  if self.BinkFileName ~= nil then
    StopBinkVideo()
    self:Stopped()
  end
end
function BinkVideoPlayer:OnStarted()
  return self:Started()
end
function BinkVideoPlayer:OnTimerReached()
  if self.TimeElapsed ~= nil then
    self:TimeElapsed()
  end
end
function BinkVideoPlayer:OnFinished()
  return self:Finished()
end
export = BinkVideoPlayer
BinkVideoPlayer = nil
