SoundMixing = {}
function SoundMixing:Create(cbox)
end
function SoundMixing:Init(cbox)
end
function SoundMixing:ShutDown()
end
function SoundMixing:Start()
  local Out = self.Out
  StartSoundMixingFromLua(self.SoundMixing)
  Out(self)
end
function SoundMixing:Stop()
  local Out = self.Out
  StopSoundMixingFromLua(self.SoundMixing)
  Out(self)
end
export = SoundMixing
SoundMixing = nil
