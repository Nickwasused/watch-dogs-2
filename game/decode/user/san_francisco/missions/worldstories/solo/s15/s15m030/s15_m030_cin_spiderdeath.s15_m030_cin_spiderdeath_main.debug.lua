export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/BinkVideoPlayer_v3.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:LoadResource("soundbinary/46276538.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2917667748.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/679040486.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "S15_M030_CIN_SpiderDeath_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\S15_M030_CIN_SpiderDeath.domino|@S15_M030_CIN_SpiderDeath_Main"
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.box_PlaySound_v2_8 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_8
  l0._graph = self
  l0._name = "box_PlaySound_v2_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\S15_M030_CIN_SpiderDeath.domino|@S15_M030_CIN_SpiderDeath_Main|2113231"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_5 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_5
  l0._graph = self
  l0._name = "box_PlaySound_v2_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\S15_M030_CIN_SpiderDeath.domino|@S15_M030_CIN_SpiderDeath_Main|875717311"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Timer_v2_7 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_7
  l0._graph = self
  l0._name = "box_Timer_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\S15_M030_CIN_SpiderDeath.domino|@S15_M030_CIN_SpiderDeath_Main|1073424891"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_7_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_OnceOnly_v3_9 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_9
  l0._graph = self
  l0._name = "box_OnceOnly_v3_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\S15_M030_CIN_SpiderDeath.domino|@S15_M030_CIN_SpiderDeath_Main|1403753588"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_9_Out
  l0.ResetOut = DummyFunction
  self.box_PlaySequence_v5_1 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_1
  l0._graph = self
  l0._name = "box_PlaySequence_v5_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\S15_M030_CIN_SpiderDeath.domino|@S15_M030_CIN_SpiderDeath_Main|1447952177"
  l0.Started = self.f_box_PlaySequence_v5_1_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_1_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_1_Finished
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:In()
  local l0
  l0 = Boxes[PathID("domino/System/BinkVideoPlayer_v3.lua")]
  l0.BinkFileName = nil
  l0.VideoDbObject = "Videos.9223372060637313406"
  l0.ExternalSoundId = "soundbinary/46276538.bnk"
  l0.OnSkipSoundId = nil
  l0.Seconds = nil
  l0.CanBeSkip = nil
  l0.NoActionMap = nil
  l0.EnableAlpha = nil
  l0.UseSubtitle = nil
  l0.PlayEmbeddedAudio = nil
  l0.PauseGame = nil
  l0.OverrideSubtitle = nil
  l0._graph = self
  l0._name = "box_BinkVideoPlayer_v3_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\S15_M030_CIN_SpiderDeath.domino|@S15_M030_CIN_SpiderDeath_Main|144671528"
  l0.Started = self.f_box_BinkVideoPlayer_v3_4_Started
  l0.TimeElapsed = DummyFunction
  l0.Stopped = DummyFunction
  l0.Finished = self.f_box_BinkVideoPlayer_v3_4_Finished
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\S15_M030_CIN_SpiderDeath.domino|@S15_M030_CIN_SpiderDeath_Main|1930460084", "1930460084", "S15_M030_CIN_SpiderDeath_Main", "In", "box_BinkVideoPlayer_v3_4.Start", self, l0)
  l0:Start()
end
function export:f_box_BinkVideoPlayer_v3_4_Finished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/BinkVideoPlayer_v3.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_1
  l0.SceneEntity = "9223372047683076294"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S15/S15_SpiderDeath_CIN/s15_spiderdeath_cin.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\S15_M030_CIN_SpiderDeath.domino|@S15_M030_CIN_SpiderDeath_Main|580809844", "580809844", "S15_M030_CIN_SpiderDeath_Main", "box_BinkVideoPlayer_v3_4.Finished", "box_PlaySequence_v5_1.Start", clone, l0)
  l0:Start()
end
function export:f_box_BinkVideoPlayer_v3_4_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/BinkVideoPlayer_v3.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_5
  l0.SoundId = "soundbinary/679040486.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\S15_M030_CIN_SpiderDeath.domino|@S15_M030_CIN_SpiderDeath_Main|774473308", "774473308", "S15_M030_CIN_SpiderDeath_Main", "box_BinkVideoPlayer_v3_4.Started", "box_PlaySound_v2_5.Play", clone, l0)
  l0:Play()
end
function export:f_box_Timer_v2_7_TimeElapsed()
  local l0
  self = self._graph
  l0 = self.box_Timer_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\S15_M030_CIN_SpiderDeath.domino|@S15_M030_CIN_SpiderDeath_Main|943434277", "943434277", "S15_M030_CIN_SpiderDeath_Main", "box_Timer_v2_7.TimeElapsed", "Out", l0, self)
  self:Out()
end
function export:f_box_OnceOnly_v3_9_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_OnceOnly_v3_9
  l1 = self.box_Timer_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\S15_M030_CIN_SpiderDeath.domino|@S15_M030_CIN_SpiderDeath_Main|664598889", "664598889", "S15_M030_CIN_SpiderDeath_Main", "box_OnceOnly_v3_9.Out", "box_Timer_v2_7.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlaySequence_v5_1_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_9()
  l0 = self.box_PlaySequence_v5_1
  l1 = self.box_OnceOnly_v3_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\S15_M030_CIN_SpiderDeath.domino|@S15_M030_CIN_SpiderDeath_Main|1402195421", "1402195421", "S15_M030_CIN_SpiderDeath_Main", "box_PlaySequence_v5_1.Finished", "box_OnceOnly_v3_9.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_1_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_9()
  l0 = self.box_PlaySequence_v5_1
  l1 = self.box_OnceOnly_v3_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\S15_M030_CIN_SpiderDeath.domino|@S15_M030_CIN_SpiderDeath_Main|399887608", "399887608", "S15_M030_CIN_SpiderDeath_Main", "box_PlaySequence_v5_1.Skipped", "box_OnceOnly_v3_9.In", l0, l1)
  l1:In(0)
end
function export:f_box_PlaySequence_v5_1_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_8
  l0.SoundId = "soundbinary/2917667748.bnk"
  l0 = self.box_PlaySequence_v5_1
  l1 = self.box_PlaySound_v2_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\S15_M030_CIN_SpiderDeath.domino|@S15_M030_CIN_SpiderDeath_Main|1997495432", "1997495432", "S15_M030_CIN_SpiderDeath_Main", "box_PlaySequence_v5_1.Started", "box_PlaySound_v2_8.Play", l0, l1)
  l1:Play()
end
function export:OnEnter_box_OnceOnly_v3_9()
end
function export:Out()
end
_compilerVersion = 4
