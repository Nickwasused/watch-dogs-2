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
  self._name = "S13_M040_CIN_DataDump_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13_m040_cin_datadump.domino|@S13_M040_CIN_DataDump_Main"
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.Josh = {}
  self.Sitara = {}
  self.Wrench = nil
  self.Horatio = nil
  self.HQ_Talker = {}
  self.box_OnceOnly_v3_3 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_3
  l0._graph = self
  l0._name = "box_OnceOnly_v3_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13_m040_cin_datadump.domino|@S13_M040_CIN_DataDump_Main|214855084"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_3_Out
  l0.ResetOut = DummyFunction
  self.box_Timer_v2_4 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_4
  l0._graph = self
  l0._name = "box_Timer_v2_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13_m040_cin_datadump.domino|@S13_M040_CIN_DataDump_Main|350553524"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_4_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_9 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_9
  l0._graph = self
  l0._name = "box_Timer_v2_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13_m040_cin_datadump.domino|@S13_M040_CIN_DataDump_Main|444390941"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_9_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_5 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_5
  l0._graph = self
  l0._name = "box_Timer_v2_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13_m040_cin_datadump.domino|@S13_M040_CIN_DataDump_Main|784771010"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_5_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_GetNPC_6 = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self.box_GetNPC_6
  l0._graph = self
  l0._name = "box_GetNPC_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13_m040_cin_datadump.domino|@S13_M040_CIN_DataDump_Main|1079911484"
  l0.GotNPCList = self.f_box_GetNPC_6_GotNPCList
  self.box_PlaySequence_v5_8 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_8
  l0._graph = self
  l0._name = "box_PlaySequence_v5_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13_m040_cin_datadump.domino|@S13_M040_CIN_DataDump_Main|1530017324"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_8_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_8_Finished
  self.box_GetNPC_1 = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self.box_GetNPC_1
  l0._graph = self
  l0._name = "box_GetNPC_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13_m040_cin_datadump.domino|@S13_M040_CIN_DataDump_Main|1995273442"
  l0.GotNPCList = self.f_box_GetNPC_1_GotNPCList
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
  l0 = self.box_Timer_v2_9
  l0.Seconds = 2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13_m040_cin_datadump.domino|@S13_M040_CIN_DataDump_Main|1764619196", "1764619196", "S13_M040_CIN_DataDump_Main", "In", "box_Timer_v2_9.Start", self, l0)
  l0:Start()
end
function export:f_box_OnceOnly_v3_3_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_6
  l0.Group = "HQ_Talker"
  l0 = self.box_OnceOnly_v3_3
  l1 = self.box_GetNPC_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13_m040_cin_datadump.domino|@S13_M040_CIN_DataDump_Main|1833295490", "1833295490", "S13_M040_CIN_DataDump_Main", "box_OnceOnly_v3_3.Out", "box_GetNPC_6.GetAll", l0, l1)
  l1:GetAll()
end
function export:f_box_Timer_v2_4_TimeElapsed()
  local l0
  self = self._graph
  l0 = self.box_Timer_v2_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13_m040_cin_datadump.domino|@S13_M040_CIN_DataDump_Main|663357135", "663357135", "S13_M040_CIN_DataDump_Main", "box_Timer_v2_4.TimeElapsed", "Out", l0, self)
  self:Out()
end
function export:f_box_Timer_v2_9_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_1
  l0.Group = "HQ_Talker"
  l0 = self.box_Timer_v2_9
  l1 = self.box_GetNPC_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13_m040_cin_datadump.domino|@S13_M040_CIN_DataDump_Main|1841561206", "1841561206", "S13_M040_CIN_DataDump_Main", "box_Timer_v2_9.TimeElapsed", "box_GetNPC_1.GetAll", l0, l1)
  l1:GetAll()
end
function export:f_box_Timer_v2_5_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_8
  l0.SceneEntity = "9223372047779474445"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S13/S13_DataDump_CIN/s13_datadump_cin.seq"
  l0 = self.box_Timer_v2_5
  l1 = self.box_PlaySequence_v5_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13_m040_cin_datadump.domino|@S13_M040_CIN_DataDump_Main|272374591", "272374591", "S13_M040_CIN_DataDump_Main", "box_Timer_v2_5.TimeElapsed", "box_PlaySequence_v5_8.Start", l0, l1)
  l1:Start()
end
function export:f_box_GetNPC_6_GotNPCList()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_6
  self.HQ_Talker = l0.NPCList
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.HQ_Talker
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13_m040_cin_datadump.domino|@S13_M040_CIN_DataDump_Main|2069356448"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_7_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_GetNPC_6
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13_m040_cin_datadump.domino|@S13_M040_CIN_DataDump_Main|804046978", "804046978", "S13_M040_CIN_DataDump_Main", "box_GetNPC_6.GotNPCList", "box_VisibilityController_v2_7.Show", l0, l1)
  l1:Show()
end
function export:f_box_PlaySequence_v5_8_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_3()
  l0 = self.box_PlaySequence_v5_8
  l1 = self.box_OnceOnly_v3_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13_m040_cin_datadump.domino|@S13_M040_CIN_DataDump_Main|924472111", "924472111", "S13_M040_CIN_DataDump_Main", "box_PlaySequence_v5_8.Finished", "box_OnceOnly_v3_3.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_8_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_3()
  l0 = self.box_PlaySequence_v5_8
  l1 = self.box_OnceOnly_v3_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13_m040_cin_datadump.domino|@S13_M040_CIN_DataDump_Main|1667423558", "1667423558", "S13_M040_CIN_DataDump_Main", "box_PlaySequence_v5_8.Skipped", "box_OnceOnly_v3_3.In", l0, l1)
  l1:In(0)
end
function export:f_box_GetNPC_1_GotNPCList()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_1
  self.HQ_Talker = l0.NPCList
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.HQ_Talker
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13_m040_cin_datadump.domino|@S13_M040_CIN_DataDump_Main|2135301867"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_2_Hidden
  l0.Out = DummyFunction
  l0 = self.box_GetNPC_1
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13_m040_cin_datadump.domino|@S13_M040_CIN_DataDump_Main|1720933875", "1720933875", "S13_M040_CIN_DataDump_Main", "box_GetNPC_1.GotNPCList", "box_VisibilityController_v2_2.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_VisibilityController_v2_7_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_4
  l0.Seconds = 2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13_m040_cin_datadump.domino|@S13_M040_CIN_DataDump_Main|287215632", "287215632", "S13_M040_CIN_DataDump_Main", "box_VisibilityController_v2_7.Shown", "box_Timer_v2_4.Start", clone, l0)
  l0:Start()
end
function export:f_box_VisibilityController_v2_2_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13_m040_cin_datadump.domino|@S13_M040_CIN_DataDump_Main|440358237", "440358237", "S13_M040_CIN_DataDump_Main", "box_VisibilityController_v2_2.Hidden", "box_Timer_v2_5.Start", clone, l0)
  l0:Start()
end
function export:OnEnter_box_OnceOnly_v3_3()
end
function export:Out()
end
_compilerVersion = 4
