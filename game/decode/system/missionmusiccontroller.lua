MissionMusicController = {}
function MissionMusicController:Create(cbox)
end
function MissionMusicController:Init(cbox)
end
function MissionMusicController:ShutDown()
end
function MissionMusicController:Activate()
  local outValue = self.Activated
  if self.UseMusicScoreMode == nil then
    self.UseMusicScoreMode = 0
  end
  if self.KillOtherMissionMusicOnStart == nil then
    self.KillOtherMissionMusicOnStart = 1
  end
  StartMissionMusic(self.MissionMusicPlaylist, self.UseMusicScoreMode, self.KillOtherMissionMusicOnStart)
  outValue(self)
end
function MissionMusicController:Deactivate()
  local outValue = self.Deactivated
  self.EndMusicDelayTime = self.EndMusicDelayTime or -1
  EndMissionMusic(self.EndMusicDelayTime)
  outValue(self)
end
export = MissionMusicController
MissionMusicController = nil
