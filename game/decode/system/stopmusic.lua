StopMusic = {}
function StopMusic:Create(cbox)
end
function StopMusic:Init(cbox)
end
function StopMusic:ShutDown()
end
function StopMusic:In()
  local Out = self.Out
  if self.FadeOutTime == nil then
    self.FadeOutTime = 0
  end
  CMusicManager_GetInstance():StopMusicFromLua(self.FadeOutTime)
  Out(self)
end
export = StopMusic
StopMusic = nil
