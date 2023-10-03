export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/PlayMusic.lua")
  cbox:RegisterBox("Domino/System/SetFloat_v2.lua")
  cbox:RegisterBox("Domino/System/StopMusic.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
  cbox:RegisterBox("Domino/System/Timer_v2.lua")
  cbox:LoadResource("soundbinary/1410811521.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1410811521.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1410811521.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1410811521.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1410811521.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1410811521.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1410811521.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1410811521.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1410811521.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1410811521.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1410811521.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1410811521.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1410811521.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1410811521.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1410811521.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1410811521.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1410811521.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1410811521.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.Stopped = DummyFunction
  self.Out = DummyFunction
  self.Stopping = DummyFunction
  self.FadeOutTime = 0
  self[21] = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self[21]
  l0._graph = self
  l0.Out = self.f_21_Out
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_21_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:Chase_Deliver_1a()
  local l0
  l0 = Boxes[PathID("Domino/System/PlayMusic.lua")]
  l0.SoundId = "0x000f88d3"
  l0.FadeOutTime = nil
  l0.Object = nil
  l0.KeepLoaded = nil
  l0.MusicType = nil
  l0._graph = self
  l0.Out = self.f_5_Out
  l0:In()
end
function export:Chase_Deliver_1b()
  local l0
  l0 = Boxes[PathID("Domino/System/PlayMusic.lua")]
  l0.SoundId = "0x000f88d4"
  l0.FadeOutTime = nil
  l0.Object = nil
  l0.KeepLoaded = nil
  l0.MusicType = nil
  l0._graph = self
  l0.Out = self.f_9_Out
  l0:In()
end
function export:Chase_Deliver_1c_Full()
  local l0
  l0 = Boxes[PathID("Domino/System/PlayMusic.lua")]
  l0.SoundId = "0x000f88d7"
  l0.FadeOutTime = nil
  l0.Object = nil
  l0.KeepLoaded = nil
  l0.MusicType = nil
  l0._graph = self
  l0.Out = self.f_6_Out
  l0:In()
end
function export:Chase_Deliver_2a()
  local l0
  l0 = Boxes[PathID("Domino/System/PlayMusic.lua")]
  l0.SoundId = "0x000f88d5"
  l0.FadeOutTime = nil
  l0.Object = nil
  l0.KeepLoaded = nil
  l0.MusicType = nil
  l0._graph = self
  l0.Out = self.f_3_Out
  l0:In()
end
function export:Chase_Deliver_2b()
  local l0
  l0 = Boxes[PathID("Domino/System/PlayMusic.lua")]
  l0.SoundId = "0x000f88d6"
  l0.FadeOutTime = nil
  l0.Object = nil
  l0.KeepLoaded = nil
  l0.MusicType = nil
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:In()
end
function export:Intro_Search_Tension_1c_Full()
  local l0
  l0 = Boxes[PathID("Domino/System/PlayMusic.lua")]
  l0.SoundId = "0x000f88d2"
  l0.FadeOutTime = nil
  l0.Object = nil
  l0.KeepLoaded = nil
  l0.MusicType = nil
  l0._graph = self
  l0.Out = self.f_8_Out
  l0:In()
end
function export:Intro_Tension_1a()
  local l0
  l0 = Boxes[PathID("Domino/System/PlayMusic.lua")]
  l0.SoundId = "0x000f8891"
  l0.FadeOutTime = nil
  l0.Object = nil
  l0.KeepLoaded = nil
  l0.MusicType = nil
  l0._graph = self
  l0.Out = self.f_10_Out
  l0:In()
end
function export:Intro_Tension_1b()
  local l0
  l0 = Boxes[PathID("Domino/System/PlayMusic.lua")]
  l0.SoundId = "0x000f88d0"
  l0.FadeOutTime = nil
  l0.Object = nil
  l0.KeepLoaded = nil
  l0.MusicType = nil
  l0._graph = self
  l0.Out = self.f_2_Out
  l0:In()
end
function export:Intro_Tension_2a()
  local l0
  l0 = Boxes[PathID("Domino/System/PlayMusic.lua")]
  l0.SoundId = "0x000f88cf"
  l0.FadeOutTime = nil
  l0.Object = nil
  l0.KeepLoaded = nil
  l0.MusicType = nil
  l0._graph = self
  l0.Out = self.f_4_Out
  l0:In()
end
function export:Intro_Tension_2b()
  local l0
  l0 = Boxes[PathID("Domino/System/PlayMusic.lua")]
  l0.SoundId = "0x000f88d1"
  l0.FadeOutTime = nil
  l0.Object = nil
  l0.KeepLoaded = nil
  l0.MusicType = nil
  l0._graph = self
  l0.Out = self.f_11_Out
  l0:In()
end
function export:Stop()
  local l0
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = self.StopFadeOutTime
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_12_Is_nil
  l0.Is_not_nil = self.f_12_Is_not_nil
  l0:In()
end
function export:Theme_01_High()
  local l0
  l0 = Boxes[PathID("Domino/System/PlayMusic.lua")]
  l0.SoundId = "0x000f88f4"
  l0.FadeOutTime = nil
  l0.Object = nil
  l0.KeepLoaded = nil
  l0.MusicType = nil
  l0._graph = self
  l0.Out = self.f_19_Out
  l0:In()
end
function export:Theme_01_Highest()
  local l0
  l0 = Boxes[PathID("Domino/System/PlayMusic.lua")]
  l0.SoundId = "0x000f8a03"
  l0.FadeOutTime = nil
  l0.Object = nil
  l0.KeepLoaded = nil
  l0.MusicType = nil
  l0._graph = self
  l0.Out = self.f_22_Out
  l0:In()
end
function export:Theme_01_Low()
  local l0
  l0 = Boxes[PathID("Domino/System/PlayMusic.lua")]
  l0.SoundId = "0x000f88f2"
  l0.FadeOutTime = nil
  l0.Object = nil
  l0.KeepLoaded = nil
  l0.MusicType = nil
  l0._graph = self
  l0.Out = self.f_16_Out
  l0:In()
end
function export:Theme_01_Medium()
  local l0
  l0 = Boxes[PathID("Domino/System/PlayMusic.lua")]
  l0.SoundId = "0x000f88f3"
  l0.FadeOutTime = nil
  l0.Object = nil
  l0.KeepLoaded = nil
  l0.MusicType = nil
  l0._graph = self
  l0.Out = self.f_15_Out
  l0:In()
end
function export:Theme_02_High()
  local l0
  l0 = Boxes[PathID("Domino/System/PlayMusic.lua")]
  l0.SoundId = "0x000f88f7"
  l0.FadeOutTime = nil
  l0.Object = nil
  l0.KeepLoaded = nil
  l0.MusicType = nil
  l0._graph = self
  l0.Out = self.f_20_Out
  l0:In()
end
function export:Theme_02_Highest()
  local l0
  l0 = Boxes[PathID("Domino/System/PlayMusic.lua")]
  l0.SoundId = "0x000f8a05"
  l0.FadeOutTime = nil
  l0.Object = nil
  l0.KeepLoaded = nil
  l0.MusicType = nil
  l0._graph = self
  l0.Out = self.f_23_Out
  l0:In()
end
function export:Theme_02_Low()
  local l0
  l0 = Boxes[PathID("Domino/System/PlayMusic.lua")]
  l0.SoundId = "0x000f88f5"
  l0.FadeOutTime = nil
  l0.Object = nil
  l0.KeepLoaded = nil
  l0.MusicType = nil
  l0._graph = self
  l0.Out = self.f_18_Out
  l0:In()
end
function export:Theme_02_Medium()
  local l0
  l0 = Boxes[PathID("Domino/System/PlayMusic.lua")]
  l0.SoundId = "0x000f88f6"
  l0.FadeOutTime = nil
  l0.Object = nil
  l0.KeepLoaded = nil
  l0.MusicType = nil
  l0._graph = self
  l0.Out = self.f_17_Out
  l0:In()
end
function export:f_18_Out()
  self = self._graph
  self:Out()
end
function export:f_4_Out()
  self = self._graph
  self:Out()
end
function export:f_22_Out()
  self = self._graph
  self:Out()
end
function export:f_1_Out()
  self = self._graph
  self:Out()
end
function export:f_8_Out()
  self = self._graph
  self:Out()
end
function export:f_14_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  self.FadeOutTime = l0.Target
  self:en_7()
  l0 = Boxes[PathID("Domino/System/StopMusic.lua")]
  l0:In()
end
function export:f_3_Out()
  self = self._graph
  self:Out()
end
function export:f_10_Out()
  self = self._graph
  self:Out()
end
function export:f_7_Out()
  local l0
  self = self._graph
  l0 = self[21]
  l0.Seconds = self.FadeOutTime
  l0:Start()
end
function export:f_6_Out()
  self = self._graph
  self:Out()
end
function export:f_16_Out()
  self = self._graph
  self:Out()
end
function export:f_13_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  self.FadeOutTime = l0.Target
  self:en_7()
  l0 = Boxes[PathID("Domino/System/StopMusic.lua")]
  l0:In()
end
function export:f_12_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  l0.Float = 3
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0.Out = self.f_13_Out
  l0:FromFloat()
end
function export:f_12_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  l0.Float = self.StopFadeOutTime
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0.Out = self.f_14_Out
  l0:FromFloat()
end
function export:f_9_Out()
  self = self._graph
  self:Out()
end
function export:f_19_Out()
  self = self._graph
  self:Out()
end
function export:f_11_Out()
  self = self._graph
  self:Out()
end
function export:f_5_Out()
  self = self._graph
  self:Out()
end
function export:f_2_Out()
  self = self._graph
  self:Out()
end
function export:f_20_Out()
  self = self._graph
  self:Out()
end
function export:f_17_Out()
  self = self._graph
  self:Out()
end
function export:f_21_Out()
  self = self._graph
  self:Stopping()
end
function export:f_21_TimeElapsed()
  self = self._graph
  self:Stopped()
end
function export:f_15_Out()
  self = self._graph
  self:Out()
end
function export:f_23_Out()
  self = self._graph
  self:Out()
end
function export:en_7()
  local l0
  l0 = Boxes[PathID("Domino/System/StopMusic.lua")]
  l0.FadeOutTime = self.FadeOutTime
  l0._graph = self
  l0.Out = self.f_7_Out
end
function export:Stopped()
end
function export:Out()
end
function export:Stopping()
end
_compilerVersion = 4
