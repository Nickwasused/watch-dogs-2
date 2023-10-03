DistanceBasedProgressBarController = {}
function DistanceBasedProgressBarController:Create(cbox)
end
function DistanceBasedProgressBarController:Init(cbox)
  self.callidStarted = nil
  self.callidCompleted = nil
  self.callidStopped = nil
  self.progressBarId = 4.2949673E9
end
function DistanceBasedProgressBarController:ShutDown()
  self._type.UnregisterCallback(self)
end
function DistanceBasedProgressBarController:Start()
  self.PlayerID = self.PlayerID or GetLocalPlayerId()
  self.EntityTwo = self.EntityTwo or GetLocalPlayerEntityId()
  self.StartTime = self.StartTime or 0
  self.SoundProfile = self.SoundProfile or ""
  if self.Text ~= nil and self.StartTime ~= nil and self.TotalTime ~= nil and self.PlayerID ~= nil then
    self.progressBarId = StartDistBasedProgressBarDb(self.Text.id, self.StartTime, self.TotalTime, self.PlayerID, self.EntityTwo, self.SoundProfile)
    instance = CScriptCallbackSystem_GetInstance()
    if self.callidStarted == nil then
      self.callidStarted = instance:RegisterPlayerEventCallback(self.PlayerID, self, "Event_Started", "ProgressBarStarted")
    end
    if self.callidCompleted == nil then
      self.callidCompleted = instance:RegisterPlayerEventCallback(self.PlayerID, self, "Event_Completed", "ProgressBarCompleted")
    end
    if self.callidStopped == nil then
      self.callidStopped = instance:RegisterPlayerEventCallback(self.PlayerID, self, "Event_Stopped", "ProgressBarStopped")
    end
  end
end
function DistanceBasedProgressBarController:Event_Started()
  self:Started()
end
function DistanceBasedProgressBarController:Event_Stopped()
  self:UnregisterCallback()
  self:Stopped()
end
function DistanceBasedProgressBarController:Pause()
  if self.PlayerID ~= nil then
    if self.PausedText ~= nil then
      SetProgressBarStateId(self.progressBarId, "PauseDownloadFeedback", self.PausedText.id, self.PlayerID)
      self.TimeElapsed = GetProgressBarElapsedTime(self.PlayerID)
    elseif self.Text ~= nil then
      SetProgressBarStateId(self.progressBarId, "PauseDownloadFeedback", self.Text.id, self.PlayerID)
      self.TimeElapsed = GetProgressBarElapsedTime(self.PlayerID)
    end
  end
  self:Paused()
end
function DistanceBasedProgressBarController:Resume()
  if self.Text ~= nil and self.PlayerID ~= nil then
    SetProgressBarStateId(self.progressBarId, "ResumeDownloadFeedback", self.Text.id, self.PlayerID)
  end
  self:Resumed()
end
function DistanceBasedProgressBarController:Reset()
  self.SoundProfile = self.SoundProfile or 0
  if self.Text ~= nil and self.StartTime ~= nil and self.TotalTime ~= nil and self.PlayerID ~= nil then
    StopProgressBar(self.progressBarId, self.PlayerID)
    self.progressBarId = StartDistBasedProgressBarDb(self.Text.id, self.StartTime, self.TotalTime, self.PlayerID, self.EntityTwo, self.SoundProfile)
  end
  self:WasReset()
end
function DistanceBasedProgressBarController:Stop()
  if self.PlayerID ~= nil then
    StopProgressBar(self.progressBarId, self.PlayerID)
    self.TimeElapsed = GetProgressBarElapsedTime(self.PlayerID)
  end
  if self.callidStopped == nil then
  end
  self:Stopped()
end
function DistanceBasedProgressBarController:Event_Completed()
  self:UnregisterCallback()
  self:Completed()
end
function DistanceBasedProgressBarController:UnregisterCallback()
  instance = CScriptCallbackSystem_GetInstance()
  if self.PlayerID ~= nil and self.callidCompleted ~= nil and self.callidStarted ~= nil then
    instance:RemovePlayerEventCallback(self.PlayerID, self.callidStarted)
    self.callidStarted = nil
    instance:RemovePlayerEventCallback(self.PlayerID, self.callidCompleted)
    self.callidCompleted = nil
    instance:RemovePlayerEventCallback(self.PlayerID, self.callidStopped)
    self.callidStopped = nil
  end
end
export = DistanceBasedProgressBarController
DistanceBasedProgressBarController = nil
