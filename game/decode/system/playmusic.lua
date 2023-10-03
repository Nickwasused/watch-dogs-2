PlayMusic = {}
function PlayMusic:Create(cbox)
  self.musicObjectUniqueID = -1
end
function PlayMusic:Init(cbox)
end
function PlayMusic:ShutDown()
  self.musicObjectUniqueID = -1
end
function PlayMusic:In()
  local SoundId = self.SoundId
  local FadeOutTime = self.FadeOutTime
  local Object = self.Object
  local KeepLoaded = self.KeepLoaded
  if SoundId ~= nil then
    if FadeOutTime == nil then
      FadeOutTime = 0
    end
    if Object == nil then
      Object = GetInvalidEntityId()
    end
    if KeepLoaded == nil then
      KeepLoaded = 0
    end
    CMusicManager_GetInstance():PlayMusicFromLua(SoundId, FadeOutTime, Object, KeepLoaded)
  end
  self:Out(self)
end
function PlayMusic:PlayPrioritySong()
  local SoundId = self.SoundId
  if SoundId ~= nil and self.MusicType ~= nil then
    self.musicObjectUniqueID = PlayPrioritySong(SoundId, self:GetPriority())
  end
  self:Out(self)
end
function PlayMusic:StopPrioritySong()
  if self.musicObjectUniqueID ~= -1 then
    StopPrioritySong(self.musicObjectUniqueID)
  end
  self:Out(self)
end
function PlayMusic:GetPriority()
  if self.MusicType == "ScoredAmb" then
    return 0
  elseif self.MusicType == "Diagetic3d" then
    return 1
  elseif self.MusicType == "Diagetig3dCar" then
    return 2
  elseif self.MusicType == "DiageticAmb" then
    return 3
  elseif self.MusicType == "MusicPlayer" then
    return 4
  elseif self.MusicType == "MissionMusic" then
    return 5
  end
  return 0
end
export = PlayMusic
PlayMusic = nil
