export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/GetNPC.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S17M010_CIN_Farewell_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_cin_farewell.domino|@S17M010_CIN_Farewell_Main"
  self.EndCine = DummyFunction
  self.PlayerEntity = nil
  self.HQ_talkers_to_hide = {}
  self.box_GetNPC_9 = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self.box_GetNPC_9
  l0._graph = self
  l0._name = "box_GetNPC_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_cin_farewell.domino|@S17M010_CIN_Farewell_Main|370471781"
  l0.GotNPCList = self.f_box_GetNPC_9_GotNPCList
  self.box_GetNPC_5 = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self.box_GetNPC_5
  l0._graph = self
  l0._name = "box_GetNPC_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_cin_farewell.domino|@S17M010_CIN_Farewell_Main|420499877"
  l0.GotNPCList = self.f_box_GetNPC_5_GotNPCList
  self.box_Timer_v2_11 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_11
  l0._graph = self
  l0._name = "box_Timer_v2_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_cin_farewell.domino|@S17M010_CIN_Farewell_Main|739015939"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_11_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySequence_v5_1 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_1
  l0._graph = self
  l0._name = "box_PlaySequence_v5_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_cin_farewell.domino|@S17M010_CIN_Farewell_Main|1229986589"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_1_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_1_Finished
  self.box_OnceOnly_v3_4 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_4
  l0._graph = self
  l0._name = "box_OnceOnly_v3_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_cin_farewell.domino|@S17M010_CIN_Farewell_Main|1456195066"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_4_Out
  l0.ResetOut = DummyFunction
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
  l0 = self.box_Timer_v2_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_cin_farewell.domino|@S17M010_CIN_Farewell_Main|578040986", "578040986", "S17M010_CIN_Farewell_Main", "In", "box_Timer_v2_11.Start", self, l0)
  l0:Start()
end
function export:f_box_GetNPC_9_GotNPCList()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_9
  self.HQ_talkers_to_hide = l0.NPCList
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.HQ_talkers_to_hide
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_cin_farewell.domino|@S17M010_CIN_Farewell_Main|1738456048"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_8_Hidden
  l0.Out = DummyFunction
  l0 = self.box_GetNPC_9
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_cin_farewell.domino|@S17M010_CIN_Farewell_Main|2127131847", "2127131847", "S17M010_CIN_Farewell_Main", "box_GetNPC_9.GotNPCList", "box_VisibilityController_v2_8.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_GetNPC_5_GotNPCList()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_5
  self.HQ_talkers_to_hide = l0.NPCList
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.HQ_talkers_to_hide
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_cin_farewell.domino|@S17M010_CIN_Farewell_Main|463413624"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_10_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_GetNPC_5
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_cin_farewell.domino|@S17M010_CIN_Farewell_Main|1000214893", "1000214893", "S17M010_CIN_Farewell_Main", "box_GetNPC_5.GotNPCList", "box_VisibilityController_v2_10.Show", l0, l1)
  l1:Show()
end
function export:f_box_VisibilityController_v2_10_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_cin_farewell.domino|@S17M010_CIN_Farewell_Main|1443692580", "1443692580", "S17M010_CIN_Farewell_Main", "box_VisibilityController_v2_10.Shown", "EndCine", clone, self)
  self:EndCine()
end
function export:f_box_Timer_v2_11_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_9
  l0.Group = "HQ_Talker"
  l0 = self.box_Timer_v2_11
  l1 = self.box_GetNPC_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_cin_farewell.domino|@S17M010_CIN_Farewell_Main|74852006", "74852006", "S17M010_CIN_Farewell_Main", "box_Timer_v2_11.TimeElapsed", "box_GetNPC_9.GetAll", l0, l1)
  l1:GetAll()
end
function export:f_box_PlaySequence_v5_1_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_4()
  l0 = self.box_PlaySequence_v5_1
  l1 = self.box_OnceOnly_v3_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_cin_farewell.domino|@S17M010_CIN_Farewell_Main|1010702404", "1010702404", "S17M010_CIN_Farewell_Main", "box_PlaySequence_v5_1.Finished", "box_OnceOnly_v3_4.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_1_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_4()
  l0 = self.box_PlaySequence_v5_1
  l1 = self.box_OnceOnly_v3_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_cin_farewell.domino|@S17M010_CIN_Farewell_Main|1842807548", "1842807548", "S17M010_CIN_Farewell_Main", "box_PlaySequence_v5_1.Skipped", "box_OnceOnly_v3_4.In", l0, l1)
  l1:In(0)
end
function export:f_box_OnceOnly_v3_4_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_5
  l0.Group = "HQ_Talker"
  l0 = self.box_OnceOnly_v3_4
  l1 = self.box_GetNPC_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_cin_farewell.domino|@S17M010_CIN_Farewell_Main|1873981632", "1873981632", "S17M010_CIN_Farewell_Main", "box_OnceOnly_v3_4.Out", "box_GetNPC_5.GetAll", l0, l1)
  l1:GetAll()
end
function export:f_box_VisibilityController_v2_8_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_1
  l0.SceneEntity = "9223372047779474453"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S17/S17_Farewell_CIN/s17_farewell_cin.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_cin_farewell.domino|@S17M010_CIN_Farewell_Main|797009174", "797009174", "S17M010_CIN_Farewell_Main", "box_VisibilityController_v2_8.Hidden", "box_PlaySequence_v5_1.Start", clone, l0)
  l0:Start()
end
function export:OnEnter_box_OnceOnly_v3_4()
end
function export:EndCine()
end
_compilerVersion = 4
