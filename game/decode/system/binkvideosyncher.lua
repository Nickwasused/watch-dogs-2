BinkVideoSyncher = {}
function BinkVideoSyncher:Create(cbox)
end
function BinkVideoSyncher:Init(cbox)
  self.success = 0
end
function BinkVideoSyncher:ShutDown()
end
function BinkVideoSyncher:Start()
  if self.BinkMaterialId ~= nil then
    self.ExternalSoundId = self.ExternalSoundId or ""
    self.SoundEntity = self.SoundEntity or -1
    SynchSoundAndBink(self.ExternalSoundId, self.SoundEntity, self.BinkMaterialId)
    self:Started()
  end
end
export = BinkVideoSyncher
BinkVideoSyncher = nil
