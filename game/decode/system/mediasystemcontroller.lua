MediaSystemController = {}
function MediaSystemController:Create(cbox)
end
function MediaSystemController:Init(cbox)
end
function MediaSystemController:ShutDown()
end
function MediaSystemController:StartBroadcast()
  self.BroadcastType = self.BroadcastType or "Default"
  self.BroadcastInfo = self.BroadcastInfo or ""
  MediaSystemStartBroadcast(self.BroadcastType, self.BroadcastInfo)
  self:BroadcastStarted(self)
end
function MediaSystemController:StopBroadcast()
  self.BroadcastType = self.BroadcastType or "Default"
  MediaSystemStopBroadcast(self.BroadcastType)
  self:BroadcastStopped(self)
end
function MediaSystemController:StopCurrentBroadcast()
  MediaSystemStopCurrentBroadcast()
  self:BroadcastStopped(self)
end
function MediaSystemController:PauseNormalSystem()
  MediaSystemSetPaused(1)
  self:SystemPaused()
end
function MediaSystemController:UnpauseNormalSystem()
  MediaSystemSetPaused(0)
  self:SystemUnpaused()
end
function MediaSystemController:UnloadAll()
  UnloadMediaSystemService()
  self:Unloaded()
end
function MediaSystemController:ReloadAll()
  ReloadMediaSystemService()
  self:Reloaded()
end
function MediaSystemController:DisableSpecialBroadcastSubtitles()
  DisableSpecialBroadcastSubtitles(1)
  self:OnDisabledSpecialBroadcastSubtitles()
end
function MediaSystemController:EnableSpecialBroadcastSubtitles()
  DisableSpecialBroadcastSubtitles(0)
  self:OnReenabledSpecialBroadcastSubtitles()
end
export = MediaSystemController
MediaSystemController = nil
