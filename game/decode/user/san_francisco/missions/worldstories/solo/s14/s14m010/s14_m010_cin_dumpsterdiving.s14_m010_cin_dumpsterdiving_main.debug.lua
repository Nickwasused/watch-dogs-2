export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/GetNPC.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/ShowOrHideAllUI.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S14_M010_CIN_DumpsterDiving_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M010\\s14_m010_cin_dumpsterdiving.domino|@S14_M010_CIN_DumpsterDiving_Main"
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.TalkersHQ = {}
  self.Wrench_HQ = {}
  self.Sitara_HQ = {}
  self.Josh_HQ = {}
  self.box_GetNPC_16 = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self.box_GetNPC_16
  l0._graph = self
  l0._name = "box_GetNPC_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M010\\s14_m010_cin_dumpsterdiving.domino|@S14_M010_CIN_DumpsterDiving_Main|307714571"
  l0.GotNPCList = self.f_box_GetNPC_16_GotNPCList
  self.box_GetNPC_5 = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self.box_GetNPC_5
  l0._graph = self
  l0._name = "box_GetNPC_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M010\\s14_m010_cin_dumpsterdiving.domino|@S14_M010_CIN_DumpsterDiving_Main|340726725"
  l0.GotNPCList = self.f_box_GetNPC_5_GotNPCList
  self.box_CinematicPrep_3 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_3
  l0._graph = self
  l0._name = "box_CinematicPrep_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M010\\s14_m010_cin_dumpsterdiving.domino|@S14_M010_CIN_DumpsterDiving_Main|596663613"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_3_PostOut
  self.box_PlaySequence_v5_1 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_1
  l0._graph = self
  l0._name = "box_PlaySequence_v5_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M010\\s14_m010_cin_dumpsterdiving.domino|@S14_M010_CIN_DumpsterDiving_Main|644060771"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_1_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_1_Finished
  self.box_GetNPC_13 = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self.box_GetNPC_13
  l0._graph = self
  l0._name = "box_GetNPC_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M010\\s14_m010_cin_dumpsterdiving.domino|@S14_M010_CIN_DumpsterDiving_Main|726041470"
  l0.GotNPCList = self.f_box_GetNPC_13_GotNPCList
  self.box_CinematicPrep_4 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_4
  l0._graph = self
  l0._name = "box_CinematicPrep_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M010\\s14_m010_cin_dumpsterdiving.domino|@S14_M010_CIN_DumpsterDiving_Main|1136894111"
  l0.PreOut = self.f_box_CinematicPrep_4_PreOut
  l0.PostOut = DummyFunction
  self.box_PlaySequence_v5_9 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_9
  l0._graph = self
  l0._name = "box_PlaySequence_v5_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M010\\s14_m010_cin_dumpsterdiving.domino|@S14_M010_CIN_DumpsterDiving_Main|1272345215"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_9_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_9_Finished
  self.box_OnceOnly_v3_7 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_7
  l0._graph = self
  l0._name = "box_OnceOnly_v3_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M010\\s14_m010_cin_dumpsterdiving.domino|@S14_M010_CIN_DumpsterDiving_Main|1639506033"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_7_Out
  l0.ResetOut = DummyFunction
  self.box_MultipleOR_10 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_10
  l0._graph = self
  l0._name = "box_MultipleOR_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M010\\s14_m010_cin_dumpsterdiving.domino|@S14_M010_CIN_DumpsterDiving_Main|1682972619"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_10_Out
  self.box_Timer_v2_6 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_6
  l0._graph = self
  l0._name = "box_Timer_v2_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M010\\s14_m010_cin_dumpsterdiving.domino|@S14_M010_CIN_DumpsterDiving_Main|1809888283"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_6_TimeElapsed
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
  l0 = self.box_CinematicPrep_4
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M010\\s14_m010_cin_dumpsterdiving.domino|@S14_M010_CIN_DumpsterDiving_Main|1449686153", "1449686153", "S14_M010_CIN_DumpsterDiving_Main", "In", "box_CinematicPrep_4.PreCinematic", self, l0)
  l0:PreCinematic()
end
function export:f_box_GetNPC_16_GotNPCList()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_16
  self.Josh_HQ = l0.NPCList
  l0 = self.box_GetNPC_5
  l0.Group = "Talker_Wrench"
  l0 = self.box_GetNPC_16
  l1 = self.box_GetNPC_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M010\\s14_m010_cin_dumpsterdiving.domino|@S14_M010_CIN_DumpsterDiving_Main|1356103603", "1356103603", "S14_M010_CIN_DumpsterDiving_Main", "box_GetNPC_16.GotNPCList", "box_GetNPC_5.GetAll", l0, l1)
  l1:GetAll()
end
function export:f_box_GetNPC_5_GotNPCList()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_5
  self.Wrench_HQ = l0.NPCList
  l0 = self.box_GetNPC_13
  l0.Group = "Talker_Sitara"
  l0 = self.box_GetNPC_5
  l1 = self.box_GetNPC_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M010\\s14_m010_cin_dumpsterdiving.domino|@S14_M010_CIN_DumpsterDiving_Main|1230021440", "1230021440", "S14_M010_CIN_DumpsterDiving_Main", "box_GetNPC_5.GotNPCList", "box_GetNPC_13.GetAll", l0, l1)
  l1:GetAll()
end
function export:f_box_VisibilityController_v2_18_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_3
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M010\\s14_m010_cin_dumpsterdiving.domino|@S14_M010_CIN_DumpsterDiving_Main|1894686874", "1894686874", "S14_M010_CIN_DumpsterDiving_Main", "box_VisibilityController_v2_18.Shown", "box_CinematicPrep_3.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_CinematicPrep_3_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M010\\s14_m010_cin_dumpsterdiving.domino|@S14_M010_CIN_DumpsterDiving_Main|1677419342"
  l0.Out = DummyFunction
  l0.Shown = self.f_box_Show_Or_Hide_All_UI_8_Shown
  l0.Hidden = DummyFunction
  l0 = self.box_CinematicPrep_3
  l1 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M010\\s14_m010_cin_dumpsterdiving.domino|@S14_M010_CIN_DumpsterDiving_Main|812248123", "812248123", "S14_M010_CIN_DumpsterDiving_Main", "box_CinematicPrep_3.PostOut", "box_Show_Or_Hide_All_UI_8.Show", l0, l1)
  l1:Show()
end
function export:f_box_PlaySequence_v5_1_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_7()
  l0 = self.box_PlaySequence_v5_1
  l1 = self.box_OnceOnly_v3_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M010\\s14_m010_cin_dumpsterdiving.domino|@S14_M010_CIN_DumpsterDiving_Main|1254527603", "1254527603", "S14_M010_CIN_DumpsterDiving_Main", "box_PlaySequence_v5_1.Finished", "box_OnceOnly_v3_7.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_1_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_7()
  l0 = self.box_PlaySequence_v5_1
  l1 = self.box_OnceOnly_v3_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M010\\s14_m010_cin_dumpsterdiving.domino|@S14_M010_CIN_DumpsterDiving_Main|2067388314", "2067388314", "S14_M010_CIN_DumpsterDiving_Main", "box_PlaySequence_v5_1.Skipped", "box_OnceOnly_v3_7.In", l0, l1)
  l1:In(0)
end
function export:f_box_GetNPC_13_GotNPCList()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_13
  self.Sitara_HQ = l0.NPCList
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.Wrench_HQ
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M010\\s14_m010_cin_dumpsterdiving.domino|@S14_M010_CIN_DumpsterDiving_Main|1056376432"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_11_Hidden
  l0.Out = DummyFunction
  l0 = self.box_GetNPC_13
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M010\\s14_m010_cin_dumpsterdiving.domino|@S14_M010_CIN_DumpsterDiving_Main|1000204088", "1000204088", "S14_M010_CIN_DumpsterDiving_Main", "box_GetNPC_13.GotNPCList", "box_VisibilityController_v2_11.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_VisibilityController_v2_15_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.Josh_HQ
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M010\\s14_m010_cin_dumpsterdiving.domino|@S14_M010_CIN_DumpsterDiving_Main|486660188"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_18_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M010\\s14_m010_cin_dumpsterdiving.domino|@S14_M010_CIN_DumpsterDiving_Main|1585860581", "1585860581", "S14_M010_CIN_DumpsterDiving_Main", "box_VisibilityController_v2_15.Shown", "box_VisibilityController_v2_18.Show", clone, l0)
  l0:Show()
end
function export:f_box_VisibilityController_v2_11_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.Sitara_HQ
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M010\\s14_m010_cin_dumpsterdiving.domino|@S14_M010_CIN_DumpsterDiving_Main|1880192123"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_14_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M010\\s14_m010_cin_dumpsterdiving.domino|@S14_M010_CIN_DumpsterDiving_Main|675079423", "675079423", "S14_M010_CIN_DumpsterDiving_Main", "box_VisibilityController_v2_11.Hidden", "box_VisibilityController_v2_14.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_VisibilityController_v2_17_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M010\\s14_m010_cin_dumpsterdiving.domino|@S14_M010_CIN_DumpsterDiving_Main|1570887725", "1570887725", "S14_M010_CIN_DumpsterDiving_Main", "box_VisibilityController_v2_17.Hidden", "box_Timer_v2_6.Start", clone, l0)
  l0:Start()
end
function export:f_box_CinematicPrep_4_PreOut()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_16
  l0.Group = "Talker_Josh"
  l0 = self.box_CinematicPrep_4
  l1 = self.box_GetNPC_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M010\\s14_m010_cin_dumpsterdiving.domino|@S14_M010_CIN_DumpsterDiving_Main|344035131", "344035131", "S14_M010_CIN_DumpsterDiving_Main", "box_CinematicPrep_4.PreOut", "box_GetNPC_16.GetAll", l0, l1)
  l1:GetAll()
end
function export:f_box_PlaySequence_v5_9_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_10()
  l0 = self.box_PlaySequence_v5_9
  l1 = self.box_MultipleOR_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M010\\s14_m010_cin_dumpsterdiving.domino|@S14_M010_CIN_DumpsterDiving_Main|641719929", "641719929", "S14_M010_CIN_DumpsterDiving_Main", "box_PlaySequence_v5_9.Finished", "box_MultipleOR_10.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_PlaySequence_v5_9_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_10()
  l0 = self.box_PlaySequence_v5_9
  l1 = self.box_MultipleOR_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M010\\s14_m010_cin_dumpsterdiving.domino|@S14_M010_CIN_DumpsterDiving_Main|1774638340", "1774638340", "S14_M010_CIN_DumpsterDiving_Main", "box_PlaySequence_v5_9.Skipped", "box_MultipleOR_10.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_OnceOnly_v3_7_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_9
  l0.SceneEntity = "9223372058337352801"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S14/s14_soi-fs_vid.seq"
  l0 = self.box_OnceOnly_v3_7
  l1 = self.box_PlaySequence_v5_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M010\\s14_m010_cin_dumpsterdiving.domino|@S14_M010_CIN_DumpsterDiving_Main|560025616", "560025616", "S14_M010_CIN_DumpsterDiving_Main", "box_OnceOnly_v3_7.Out", "box_PlaySequence_v5_9.Start", l0, l1)
  l1:Start()
end
function export:f_box_Show_Or_Hide_All_UI_8_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M010\\s14_m010_cin_dumpsterdiving.domino|@S14_M010_CIN_DumpsterDiving_Main|2110937717", "2110937717", "S14_M010_CIN_DumpsterDiving_Main", "box_Show_Or_Hide_All_UI_8.Shown", "Out", clone, self)
  self:Out()
end
function export:f_box_MultipleOR_10_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.Wrench_HQ
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M010\\s14_m010_cin_dumpsterdiving.domino|@S14_M010_CIN_DumpsterDiving_Main|1905237344"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_12_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_MultipleOR_10
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M010\\s14_m010_cin_dumpsterdiving.domino|@S14_M010_CIN_DumpsterDiving_Main|1488403313", "1488403313", "S14_M010_CIN_DumpsterDiving_Main", "box_MultipleOR_10.Out", "box_VisibilityController_v2_12.Show", l0, l1)
  l1:Show()
end
function export:f_box_Timer_v2_6_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_1
  l0.SceneEntity = "9223372047779474439"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S14/S14_DumpsterDiving_CIN/s14_dumpsterdiving_cin.seq"
  l0 = self.box_Timer_v2_6
  l1 = self.box_PlaySequence_v5_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M010\\s14_m010_cin_dumpsterdiving.domino|@S14_M010_CIN_DumpsterDiving_Main|297778790", "297778790", "S14_M010_CIN_DumpsterDiving_Main", "box_Timer_v2_6.TimeElapsed", "box_PlaySequence_v5_1.Start", l0, l1)
  l1:Start()
end
function export:f_box_VisibilityController_v2_14_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.Josh_HQ
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M010\\s14_m010_cin_dumpsterdiving.domino|@S14_M010_CIN_DumpsterDiving_Main|1073952187"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_17_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M010\\s14_m010_cin_dumpsterdiving.domino|@S14_M010_CIN_DumpsterDiving_Main|1180095420", "1180095420", "S14_M010_CIN_DumpsterDiving_Main", "box_VisibilityController_v2_14.Hidden", "box_VisibilityController_v2_17.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_VisibilityController_v2_12_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.Sitara_HQ
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M010\\s14_m010_cin_dumpsterdiving.domino|@S14_M010_CIN_DumpsterDiving_Main|891978662"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_15_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M010\\s14_m010_cin_dumpsterdiving.domino|@S14_M010_CIN_DumpsterDiving_Main|1941170872", "1941170872", "S14_M010_CIN_DumpsterDiving_Main", "box_VisibilityController_v2_12.Shown", "box_VisibilityController_v2_15.Show", clone, l0)
  l0:Show()
end
function export:OnEnter_box_OnceOnly_v3_7()
end
function export:OnEnter_box_MultipleOR_10()
end
function export:Out()
end
_compilerVersion = 4
