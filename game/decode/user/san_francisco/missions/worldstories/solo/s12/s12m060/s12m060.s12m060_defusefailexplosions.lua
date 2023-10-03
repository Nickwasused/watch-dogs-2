export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/ParticleFxController_v2.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:LoadResource("soundbinary/3532819719.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/556803423.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3898191582.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.BombsExploded = DummyFunction
  self.Bunker_Explosion_NW_3 = "9223372067225348231"
  self.Bunker_Explosion_NW_5 = "9223372067225348235"
  self.Bunker_Explosion_NW_4 = "9223372067225348233"
  self.Bunker_ExplosionSoundPoint_NW_1 = "9223372067225348227"
  self.Bunker_ExplosionSoundPoint_NW_2 = "9223372067225348229"
  self.Bunker_ExplosionSound_Large = "soundbinary/3532819719.bnk"
  self.Bunker_Explosion_Final = "soundbinary/3898191582.bnk"
  self[8] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[8]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_8_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[68] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[68]
  l0._graph = self
  l0.Out = self.f_68_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[50] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[50]
  l0._graph = self
  l0.Out = self.f_50_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[2] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_2_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[55] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[55]
  l0._graph = self
  l0.Out = self.f_55_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[19] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[19]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_19_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[52] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[52]
  l0._graph = self
  l0.Out = self.f_52_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[60] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[60]
  l0._graph = self
  l0.Out = self.f_60_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[15] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[15]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_15_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[38] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[38]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[73] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[73]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[10] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[10]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_10_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[40] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[40]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_40_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[25] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[25]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_25_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[53] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[53]
  l0._graph = self
  l0.Out = self.f_53_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[57] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[57]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[47] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[47]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_47_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[70] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[70]
  l0._graph = self
  l0.Out = self.f_70_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[58] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[58]
  l0._graph = self
  l0.Out = self.f_58_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[71] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[71]
  l0._graph = self
  l0.Out = self.f_71_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[62] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[62]
  l0._graph = self
  l0.Out = self.f_62_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[13] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[13]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_13_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[72] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[72]
  l0._graph = self
  l0.Out = self.f_72_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[67] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[67]
  l0._graph = self
  l0.Out = self.f_67_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[16] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[16]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_16_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[31] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[31]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_31_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[22] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[22]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_22_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[45] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[45]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_45_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[28] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[28]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_28_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[61] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[61]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_61_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[26] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[26]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_26_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[56] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[56]
  l0._graph = self
  l0.Out = self.f_56_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[37] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[37]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_37_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[59] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[59]
  l0._graph = self
  l0.Out = self.f_59_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[33] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[33]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_33_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[51] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[51]
  l0._graph = self
  l0.Out = self.f_51_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[44] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[44]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_44_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[24] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[24]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_24_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[66] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[66]
  l0._graph = self
  l0.Out = self.f_66_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[35] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[35]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_35_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[64] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[64]
  l0._graph = self
  l0.Out = self.f_64_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[69] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[69]
  l0._graph = self
  l0.Out = self.f_69_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[65] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[65]
  l0._graph = self
  l0.Out = self.f_65_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[54] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[54]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[1] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[1]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_1_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[63] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[63]
  l0._graph = self
  l0.Out = self.f_63_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:Enable()
  local l0
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_21_Out_0
  l0.Out[1] = self.f_21_Out_1
  l0.Out[2] = self.f_21_Out_2
  l0.Out[3] = self.f_21_Out_3
  l0.Out[4] = self.f_21_Out_4
  l0:In()
end
function export:f_8_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066765977967"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_6_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_68_Out()
  local l0
  self = self._graph
  l0 = self[19]
  l0.Seconds = 0.3
  l0:Start()
end
function export:f_34_Started()
  local l0
  self = self._graph
  l0 = self[60]
  l0.Entity = "9223372067225348893"
  l0.SoundId = self.Bunker_Explosion_Final
  l0:Play()
end
function export:f_27_Started()
  local l0
  self = self._graph
  l0 = self[53]
  l0.Entity = self.Bunker_Explosion_NW_5
  l0.SoundId = self.Bunker_Explosion_Final
  l0:Play()
end
function export:f_5_Started()
  local l0
  self = self._graph
  l0 = self[51]
  l0.Entity = self.Bunker_ExplosionSoundPoint_NW_2
  l0.SoundId = self.Bunker_Explosion_Final
  l0:Play()
end
function export:f_9_Started()
  local l0
  self = self._graph
  l0 = self[72]
  l0.Entity = "9223372067225348909"
  l0.SoundId = self.Bunker_ExplosionSound_Large
  l0:Play()
end
function export:f_14_Started()
  local l0
  self = self._graph
  l0 = self[62]
  l0.Entity = "9223372067225348911"
  l0.SoundId = self.Bunker_Explosion_Final
  l0:Play()
end
function export:f_50_Out()
  local l0
  self = self._graph
  l0 = self[2]
  l0.Seconds = 0.25
  l0:Start()
end
function export:f_2_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066765977983"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_5_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_29_Started()
  local l0
  self = self._graph
  l0 = self[54]
  l0.Entity = self.Bunker_Explosion_NW_4
  l0.SoundId = self.Bunker_Explosion_Final
  l0:Play()
end
function export:f_55_Out()
  local l0
  self = self._graph
  l0 = self[1]
  l0.Seconds = 0.25
  l0:Start()
end
function export:f_19_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066765978627"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_18_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_52_Out()
  local l0
  self = self._graph
  l0 = self[28]
  l0.Seconds = 0.3
  l0:Start()
end
function export:f_60_Out()
  local l0
  self = self._graph
  l0 = self[31]
  l0.Seconds = 0.25
  l0:Start()
end
function export:f_17_Started()
  local l0
  self = self._graph
  l0 = self[65]
  l0.Entity = "9223372067225348913"
  l0.SoundId = self.Bunker_Explosion_Final
  l0:Play()
end
function export:f_15_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066765977979"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_17_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_10_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066765977971"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_11_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_40_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066765978633"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_39_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_25_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066765977975"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_20_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_39_Started()
  local l0
  self = self._graph
  l0 = self[66]
  l0.Entity = "9223372067225348917"
  l0.SoundId = self.Bunker_Explosion_Final
  l0:Play()
end
function export:f_53_Out()
  local l0
  self = self._graph
  l0 = self[26]
  l0.Seconds = 0.25
  l0:Start()
end
function export:f_47_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066765978629"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_46_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_32_Started()
  local l0
  self = self._graph
  l0 = self[57]
  l0.Entity = "9223372067225348895"
  l0.SoundId = self.Bunker_Explosion_Final
  l0:Play()
end
function export:f_70_Out()
  local l0
  self = self._graph
  l0 = self[45]
  l0.Seconds = 0.23
  l0:Start()
end
function export:f_21_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066765977965"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_3_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_21_Out_1()
  local l0
  self = self._graph
  l0 = self[16]
  l0.Seconds = 0.25
  l0:Start()
end
function export:f_21_Out_2()
  local l0
  self = self._graph
  l0 = self[24]
  l0.Seconds = 0.6
  l0:Start()
end
function export:f_21_Out_3()
  local l0
  self = self._graph
  l0 = self[25]
  l0.Seconds = 0.75
  l0:Start()
end
function export:f_21_Out_4()
  local l0
  self = self._graph
  l0 = self[73]
  l0.SoundId = "soundbinary/556803423.bnk"
  l0:Play()
end
function export:f_43_Started()
  local l0
  self = self._graph
  l0 = self[71]
  l0.Entity = "9223372067225348903"
  l0.SoundId = self.Bunker_Explosion_Final
  l0:Play()
end
function export:f_58_Out()
  local l0
  self = self._graph
  l0 = self[10]
  l0.Seconds = 0.5
  l0:Start()
end
function export:f_71_Out()
  local l0
  self = self._graph
  l0 = self[47]
  l0.Seconds = 0.4
  l0:Start()
end
function export:f_62_Out()
  local l0
  self = self._graph
  l0 = self[15]
  l0.Seconds = 0.4
  l0:Start()
end
function export:f_13_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066765978637"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_12_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_7_Started()
  local l0
  self = self._graph
  l0 = self[56]
  l0.Entity = "9223372067225348891"
  l0.SoundId = self.Bunker_Explosion_Final
  l0:Play()
end
function export:f_3_Started()
  local l0
  self = self._graph
  l0 = self[50]
  l0.Entity = self.Bunker_ExplosionSoundPoint_NW_1
  l0.SoundId = self.Bunker_Explosion_Final
  l0:Play()
end
function export:f_20_Started()
  local l0
  self = self._graph
  l0 = self[67]
  l0.Entity = "9223372067225348901"
  l0.SoundId = self.Bunker_Explosion_Final
  l0:Play()
end
function export:f_72_Out()
  self = self._graph
  self:BombsExploded()
end
function export:f_4_Started()
  local l0
  self = self._graph
  l0 = self[58]
  l0.Entity = "9223372067225348889"
  l0.SoundId = self.Bunker_Explosion_Final
  l0:Play()
end
function export:f_67_Out()
  local l0
  self = self._graph
  l0 = self[22]
  l0.Seconds = 0.25
  l0:Start()
end
function export:f_16_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066765977969"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_4_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_31_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066765978623"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_30_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_30_Started()
  local l0
  self = self._graph
  l0 = self[59]
  l0.Entity = "9223372067225348897"
  l0.SoundId = self.Bunker_Explosion_Final
  l0:Play()
end
function export:f_22_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066765977973"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_23_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_45_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066765978639"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_42_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_12_Started()
  local l0
  self = self._graph
  l0 = self[63]
  l0.Entity = "9223372067225348921"
  l0.SoundId = self.Bunker_Explosion_Final
  l0:Play()
end
function export:f_28_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066765978615"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_27_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_61_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066765978635"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_36_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_36_Started()
  local l0
  self = self._graph
  l0 = self[38]
  l0.Entity = "9223372067225348919"
  l0.SoundId = self.Bunker_Explosion_Final
  l0:Play()
end
function export:f_6_Started()
  local l0
  self = self._graph
  l0 = self[52]
  l0.Entity = self.Bunker_Explosion_NW_3
  l0.SoundId = self.Bunker_Explosion_Final
  l0:Play()
end
function export:f_11_Started()
  local l0
  self = self._graph
  l0 = self[55]
  l0.Entity = "9223372067225348887"
  l0.SoundId = self.Bunker_Explosion_Final
  l0:Play()
end
function export:f_26_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066765978617"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_29_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_42_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_48_Out_0
  l0.Out[1] = self.f_48_Out_1
  l0:In()
end
function export:f_56_Out()
  local l0
  self = self._graph
  l0 = self[35]
  l0.Seconds = 0.3
  l0:Start()
end
function export:f_23_Started()
  local l0
  self = self._graph
  l0 = self[68]
  l0.Entity = "9223372067225348899"
  l0.SoundId = self.Bunker_Explosion_Final
  l0:Play()
end
function export:f_37_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066765978631"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_41_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_59_Out()
  local l0
  self = self._graph
  l0 = self[33]
  l0.Seconds = 0.3
  l0:Start()
end
function export:f_33_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066765978621"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_32_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_46_Started()
  local l0
  self = self._graph
  l0 = self[70]
  l0.Entity = "9223372067225348907"
  l0.SoundId = self.Bunker_Explosion_Final
  l0:Play()
end
function export:f_48_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066765976085"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_9_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_48_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066766156658"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_51_Out()
  local l0
  self = self._graph
  l0 = self[8]
  l0.Seconds = 0.4
  l0:Start()
end
function export:f_44_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066765978625"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_43_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_24_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066765977977"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_14_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_66_Out()
  local l0
  self = self._graph
  l0 = self[37]
  l0.Seconds = 0.25
  l0:Start()
end
function export:f_41_Started()
  local l0
  self = self._graph
  l0 = self[64]
  l0.Entity = "9223372067225348915"
  l0.SoundId = self.Bunker_Explosion_Final
  l0:Play()
end
function export:f_35_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066765978619"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_34_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_64_Out()
  local l0
  self = self._graph
  l0 = self[61]
  l0.Seconds = 0.4
  l0:Start()
end
function export:f_69_Out()
  local l0
  self = self._graph
  l0 = self[44]
  l0.Seconds = 0.2
  l0:Start()
end
function export:f_65_Out()
  local l0
  self = self._graph
  l0 = self[13]
  l0.Seconds = 0.5
  l0:Start()
end
function export:f_18_Started()
  local l0
  self = self._graph
  l0 = self[69]
  l0.Entity = "9223372067225348905"
  l0.SoundId = self.Bunker_Explosion_Final
  l0:Play()
end
function export:f_1_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066765977981"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_7_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_63_Out()
  local l0
  self = self._graph
  l0 = self[40]
  l0.Seconds = 0.32
  l0:Start()
end
function export:BombsExploded()
end
_compilerVersion = 4
