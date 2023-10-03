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
  self._name = "PlayAudio"
  self._elementPathId = "DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio"
  self.Stopped = DummyFunction
  self.Out = DummyFunction
  self.Stopping = DummyFunction
  self.FadeOutTime = 0
  self.box_Timer_v2_21 = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_21
  l0._graph = self
  l0._name = "box_Timer_v2_21"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|1868229269"
  l0.Out = self.f_box_Timer_v2_21_Out
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_21_TimeElapsed
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
  l0._name = "box_PlayMusic_5"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|1607334618"
  l0.Out = self.f_box_PlayMusic_5_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|1703275138", "1703275138", "PlayAudio", "Chase_Deliver_1a", "box_PlayMusic_5.In", self, l0)
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
  l0._name = "box_PlayMusic_9"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|1472622752"
  l0.Out = self.f_box_PlayMusic_9_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|23440838", "23440838", "PlayAudio", "Chase_Deliver_1b", "box_PlayMusic_9.In", self, l0)
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
  l0._name = "box_PlayMusic_6"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|1074053336"
  l0.Out = self.f_box_PlayMusic_6_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|581312328", "581312328", "PlayAudio", "Chase_Deliver_1c_Full", "box_PlayMusic_6.In", self, l0)
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
  l0._name = "box_PlayMusic_3"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|675345240"
  l0.Out = self.f_box_PlayMusic_3_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|115622967", "115622967", "PlayAudio", "Chase_Deliver_2a", "box_PlayMusic_3.In", self, l0)
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
  l0._name = "box_PlayMusic_1"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|503878423"
  l0.Out = self.f_box_PlayMusic_1_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|1301456155", "1301456155", "PlayAudio", "Chase_Deliver_2b", "box_PlayMusic_1.In", self, l0)
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
  l0._name = "box_PlayMusic_8"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|594155691"
  l0.Out = self.f_box_PlayMusic_8_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|1494787668", "1494787668", "PlayAudio", "Intro_Search_Tension_1c_Full", "box_PlayMusic_8.In", self, l0)
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
  l0._name = "box_PlayMusic_10"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|706027862"
  l0.Out = self.f_box_PlayMusic_10_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|1288376101", "1288376101", "PlayAudio", "Intro_Tension_1a", "box_PlayMusic_10.In", self, l0)
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
  l0._name = "box_PlayMusic_2"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|1630256897"
  l0.Out = self.f_box_PlayMusic_2_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|2066748169", "2066748169", "PlayAudio", "Intro_Tension_1b", "box_PlayMusic_2.In", self, l0)
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
  l0._name = "box_PlayMusic_4"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|259082813"
  l0.Out = self.f_box_PlayMusic_4_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|1395493303", "1395493303", "PlayAudio", "Intro_Tension_2a", "box_PlayMusic_4.In", self, l0)
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
  l0._name = "box_PlayMusic_11"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|1529789901"
  l0.Out = self.f_box_PlayMusic_11_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|656689991", "656689991", "PlayAudio", "Intro_Tension_2b", "box_PlayMusic_11.In", self, l0)
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
  l0._name = "box_Test_if_Nil_12"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|1470646444"
  l0.Is_nil = self.f_box_Test_if_Nil_12_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_12_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|2103031847", "2103031847", "PlayAudio", "Stop", "box_Test_if_Nil_12.In", self, l0)
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
  l0._name = "box_PlayMusic_19"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|1524508835"
  l0.Out = self.f_box_PlayMusic_19_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|575241950", "575241950", "PlayAudio", "Theme_01_High", "box_PlayMusic_19.In", self, l0)
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
  l0._name = "box_PlayMusic_22"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|501943279"
  l0.Out = self.f_box_PlayMusic_22_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|942691360", "942691360", "PlayAudio", "Theme_01_Highest", "box_PlayMusic_22.In", self, l0)
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
  l0._name = "box_PlayMusic_16"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|1113203402"
  l0.Out = self.f_box_PlayMusic_16_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|1452401136", "1452401136", "PlayAudio", "Theme_01_Low", "box_PlayMusic_16.In", self, l0)
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
  l0._name = "box_PlayMusic_15"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|1938052999"
  l0.Out = self.f_box_PlayMusic_15_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|1768100674", "1768100674", "PlayAudio", "Theme_01_Medium", "box_PlayMusic_15.In", self, l0)
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
  l0._name = "box_PlayMusic_20"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|1632325493"
  l0.Out = self.f_box_PlayMusic_20_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|1110443573", "1110443573", "PlayAudio", "Theme_02_High", "box_PlayMusic_20.In", self, l0)
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
  l0._name = "box_PlayMusic_23"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|1953776484"
  l0.Out = self.f_box_PlayMusic_23_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|1626535313", "1626535313", "PlayAudio", "Theme_02_Highest", "box_PlayMusic_23.In", self, l0)
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
  l0._name = "box_PlayMusic_18"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|231027573"
  l0.Out = self.f_box_PlayMusic_18_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|2109997863", "2109997863", "PlayAudio", "Theme_02_Low", "box_PlayMusic_18.In", self, l0)
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
  l0._name = "box_PlayMusic_17"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|1728927889"
  l0.Out = self.f_box_PlayMusic_17_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|784527918", "784527918", "PlayAudio", "Theme_02_Medium", "box_PlayMusic_17.In", self, l0)
  l0:In()
end
function export:f_box_PlayMusic_18_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/PlayMusic.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|557035733", "557035733", "PlayAudio", "box_PlayMusic_18.Out", "Out", clone, self)
  self:Out()
end
function export:f_box_PlayMusic_4_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/PlayMusic.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|1381373102", "1381373102", "PlayAudio", "box_PlayMusic_4.Out", "Out", clone, self)
  self:Out()
end
function export:f_box_PlayMusic_22_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/PlayMusic.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|667223616", "667223616", "PlayAudio", "box_PlayMusic_22.Out", "Out", clone, self)
  self:Out()
end
function export:f_box_PlayMusic_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/PlayMusic.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|1225018739", "1225018739", "PlayAudio", "box_PlayMusic_1.Out", "Out", clone, self)
  self:Out()
end
function export:f_box_PlayMusic_8_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/PlayMusic.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|1135223985", "1135223985", "PlayAudio", "box_PlayMusic_8.Out", "Out", clone, self)
  self:Out()
end
function export:f_box_SetFloat_v2_14_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  self.FadeOutTime = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_StopMusic_7()
  l0 = Boxes[PathID("Domino/System/StopMusic.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|1212721824", "1212721824", "PlayAudio", "box_SetFloat_v2_14.Out", "box_StopMusic_7.In", clone, l0)
  l0:In()
end
function export:f_box_PlayMusic_3_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/PlayMusic.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|214068266", "214068266", "PlayAudio", "box_PlayMusic_3.Out", "Out", clone, self)
  self:Out()
end
function export:f_box_PlayMusic_10_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/PlayMusic.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|1979650568", "1979650568", "PlayAudio", "box_PlayMusic_10.Out", "Out", clone, self)
  self:Out()
end
function export:f_box_StopMusic_7_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/StopMusic.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_21
  l0.Seconds = self.FadeOutTime
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|210155715", "210155715", "PlayAudio", "box_StopMusic_7.Out", "box_Timer_v2_21.Start", clone, l0)
  l0:Start()
end
function export:f_box_PlayMusic_6_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/PlayMusic.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|1471774144", "1471774144", "PlayAudio", "box_PlayMusic_6.Out", "Out", clone, self)
  self:Out()
end
function export:f_box_PlayMusic_16_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/PlayMusic.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|1012668892", "1012668892", "PlayAudio", "box_PlayMusic_16.Out", "Out", clone, self)
  self:Out()
end
function export:f_box_SetFloat_v2_13_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  self.FadeOutTime = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_StopMusic_7()
  l0 = Boxes[PathID("Domino/System/StopMusic.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|1303845700", "1303845700", "PlayAudio", "box_SetFloat_v2_13.Out", "box_StopMusic_7.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_12_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  l0.Float = 3
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0._name = "box_SetFloat_v2_13"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|1391587928"
  l0.Out = self.f_box_SetFloat_v2_13_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|674612705", "674612705", "PlayAudio", "box_Test_if_Nil_12.Is_nil", "box_SetFloat_v2_13.FromFloat", clone, l0)
  l0:FromFloat()
end
function export:f_box_Test_if_Nil_12_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  l0.Float = self.StopFadeOutTime
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0._name = "box_SetFloat_v2_14"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|620072076"
  l0.Out = self.f_box_SetFloat_v2_14_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|767318561", "767318561", "PlayAudio", "box_Test_if_Nil_12.Is_not_nil", "box_SetFloat_v2_14.FromFloat", clone, l0)
  l0:FromFloat()
end
function export:f_box_PlayMusic_9_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/PlayMusic.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|1547069332", "1547069332", "PlayAudio", "box_PlayMusic_9.Out", "Out", clone, self)
  self:Out()
end
function export:f_box_PlayMusic_19_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/PlayMusic.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|1005736098", "1005736098", "PlayAudio", "box_PlayMusic_19.Out", "Out", clone, self)
  self:Out()
end
function export:f_box_PlayMusic_11_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/PlayMusic.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|756583601", "756583601", "PlayAudio", "box_PlayMusic_11.Out", "Out", clone, self)
  self:Out()
end
function export:f_box_PlayMusic_5_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/PlayMusic.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|446070740", "446070740", "PlayAudio", "box_PlayMusic_5.Out", "Out", clone, self)
  self:Out()
end
function export:f_box_PlayMusic_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/PlayMusic.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|1624352802", "1624352802", "PlayAudio", "box_PlayMusic_2.Out", "Out", clone, self)
  self:Out()
end
function export:f_box_PlayMusic_20_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/PlayMusic.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|1045071408", "1045071408", "PlayAudio", "box_PlayMusic_20.Out", "Out", clone, self)
  self:Out()
end
function export:f_box_PlayMusic_17_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/PlayMusic.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|320905619", "320905619", "PlayAudio", "box_PlayMusic_17.Out", "Out", clone, self)
  self:Out()
end
function export:f_box_Timer_v2_21_Out()
  local l0
  self = self._graph
  l0 = self.box_Timer_v2_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|732953187", "732953187", "PlayAudio", "box_Timer_v2_21.Out", "Stopping", l0, self)
  self:Stopping()
end
function export:f_box_Timer_v2_21_TimeElapsed()
  local l0
  self = self._graph
  l0 = self.box_Timer_v2_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|1573987821", "1573987821", "PlayAudio", "box_Timer_v2_21.TimeElapsed", "Stopped", l0, self)
  self:Stopped()
end
function export:f_box_PlayMusic_15_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/PlayMusic.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|1019833825", "1019833825", "PlayAudio", "box_PlayMusic_15.Out", "Out", clone, self)
  self:Out()
end
function export:f_box_PlayMusic_23_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/PlayMusic.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|1137805869", "1137805869", "PlayAudio", "box_PlayMusic_23.Out", "Out", clone, self)
  self:Out()
end
function export:OnEnter_box_StopMusic_7()
  local l0
  l0 = Boxes[PathID("Domino/System/StopMusic.lua")]
  l0.FadeOutTime = self.FadeOutTime
  l0._graph = self
  l0._name = "box_StopMusic_7"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\SideMissionsMissionAudio.domino|@PlayAudio|815496751"
  l0.Out = self.f_box_StopMusic_7_Out
end
function export:Stopped()
end
function export:Out()
end
function export:Stopping()
end
_compilerVersion = 4
