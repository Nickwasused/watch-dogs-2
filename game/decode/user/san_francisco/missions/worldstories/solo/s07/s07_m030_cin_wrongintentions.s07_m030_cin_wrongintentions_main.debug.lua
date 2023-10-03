export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:LoadResource("soundbinary/1284439816.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "S07_M030_CIN_WrongIntentions_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_wrongintentions.domino|@S07_M030_CIN_WrongIntentions_Main"
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.box_OnceOnly_v3_8 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_8
  l0._graph = self
  l0._name = "box_OnceOnly_v3_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_wrongintentions.domino|@S07_M030_CIN_WrongIntentions_Main|66586918"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_8_Out
  l0.ResetOut = DummyFunction
  self.box_Timer_v2_5 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_5
  l0._graph = self
  l0._name = "box_Timer_v2_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_wrongintentions.domino|@S07_M030_CIN_WrongIntentions_Main|165388682"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_5_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_10 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_10
  l0._graph = self
  l0._name = "box_PlaySound_v2_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_wrongintentions.domino|@S07_M030_CIN_WrongIntentions_Main|210451324"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySequence_v5_1 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_1
  l0._graph = self
  l0._name = "box_PlaySequence_v5_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_wrongintentions.domino|@S07_M030_CIN_WrongIntentions_Main|310655620"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_1_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_1_Finished
  self.box_Timer_v2_7 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_7
  l0._graph = self
  l0._name = "box_Timer_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_wrongintentions.domino|@S07_M030_CIN_WrongIntentions_Main|803825278"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_7_TimeElapsed
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
function export:In()
  local l0
  l0 = self.box_Timer_v2_5
  l0.Seconds = 3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_wrongintentions.domino|@S07_M030_CIN_WrongIntentions_Main|874045537", "874045537", "S07_M030_CIN_WrongIntentions_Main", "In", "box_Timer_v2_5.Start", self, l0)
  l0:Start()
end
function export:f_box_OnceOnly_v3_8_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_OnceOnly_v3_8
  l1 = self.box_Timer_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_wrongintentions.domino|@S07_M030_CIN_WrongIntentions_Main|231115638", "231115638", "S07_M030_CIN_WrongIntentions_Main", "box_OnceOnly_v3_8.Out", "box_Timer_v2_7.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_5_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_wrongintentions.domino|@S07_M030_CIN_WrongIntentions_Main|944466334"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_12_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_12_Out_1
  l0 = self.box_Timer_v2_5
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_wrongintentions.domino|@S07_M030_CIN_WrongIntentions_Main|600547286", "600547286", "S07_M030_CIN_WrongIntentions_Main", "box_Timer_v2_5.TimeElapsed", "box_Ordered_Output_12.In", l0, l1)
  l1:In()
end
function export:f_box_PlaySequence_v5_1_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_8()
  l0 = self.box_PlaySequence_v5_1
  l1 = self.box_OnceOnly_v3_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_wrongintentions.domino|@S07_M030_CIN_WrongIntentions_Main|1956268957", "1956268957", "S07_M030_CIN_WrongIntentions_Main", "box_PlaySequence_v5_1.Finished", "box_OnceOnly_v3_8.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_1_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_8()
  l0 = self.box_PlaySequence_v5_1
  l1 = self.box_OnceOnly_v3_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_wrongintentions.domino|@S07_M030_CIN_WrongIntentions_Main|1493623324", "1493623324", "S07_M030_CIN_WrongIntentions_Main", "box_PlaySequence_v5_1.Skipped", "box_OnceOnly_v3_8.In", l0, l1)
  l1:In(0)
end
function export:f_box_Timer_v2_7_TimeElapsed()
  local l0
  self = self._graph
  l0 = self.box_Timer_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_wrongintentions.domino|@S07_M030_CIN_WrongIntentions_Main|1423696289", "1423696289", "S07_M030_CIN_WrongIntentions_Main", "box_Timer_v2_7.TimeElapsed", "Out", l0, self)
  self:Out()
end
function export:f_box_Ordered_Output_12_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_1
  l0.SceneEntity = "9223372047502963555"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S07/S07_WrongIntentions_CIN/s07_wrongintentions_cin.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_wrongintentions.domino|@S07_M030_CIN_WrongIntentions_Main|593094443", "593094443", "S07_M030_CIN_WrongIntentions_Main", "box_Ordered_Output_12.Out", "box_PlaySequence_v5_1.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_12_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_10
  l0.SoundId = "soundbinary/1284439816.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_wrongintentions.domino|@S07_M030_CIN_WrongIntentions_Main|1204030847", "1204030847", "S07_M030_CIN_WrongIntentions_Main", "box_Ordered_Output_12.Out", "box_PlaySound_v2_10.Play", clone, l0)
  l0:Play()
end
function export:OnEnter_box_OnceOnly_v3_8()
end
function export:Out()
end
_compilerVersion = 4
