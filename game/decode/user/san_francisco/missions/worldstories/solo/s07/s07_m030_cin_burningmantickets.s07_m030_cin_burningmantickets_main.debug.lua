export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/GetNPC.lua")
  cbox:RegisterBox("domino/System/LoadingScreenMonitor_v2.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/TeleportPlayerOutsideHma.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S07_M030_CIN_BurningManTickets_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_burningmantickets.domino|@S07_M030_CIN_BurningManTickets_Main"
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.Sitara = {}
  self.Wrench = {}
  self.Horatio = {}
  self.HQ_Talker = {}
  self.box_OnceOnly_v3_6 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_6
  l0._graph = self
  l0._name = "box_OnceOnly_v3_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_burningmantickets.domino|@S07_M030_CIN_BurningManTickets_Main|416154868"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_6_Out
  l0.ResetOut = DummyFunction
  self.box_GetNPC_5 = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self.box_GetNPC_5
  l0._graph = self
  l0._name = "box_GetNPC_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_burningmantickets.domino|@S07_M030_CIN_BurningManTickets_Main|475863145"
  l0.GotNPCList = self.f_box_GetNPC_5_GotNPCList
  self.box_CinematicPrep_8 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_8
  l0._graph = self
  l0._name = "box_CinematicPrep_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_burningmantickets.domino|@S07_M030_CIN_BurningManTickets_Main|532329608"
  l0.PreOut = self.f_box_CinematicPrep_8_PreOut
  l0.PostOut = DummyFunction
  self.box_GetNPC_4 = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self.box_GetNPC_4
  l0._graph = self
  l0._name = "box_GetNPC_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_burningmantickets.domino|@S07_M030_CIN_BurningManTickets_Main|797700360"
  l0.GotNPCList = self.f_box_GetNPC_4_GotNPCList
  self.box_Loading_Screen_Monitor_v2_7 = cbox:CreateBox("domino/System/LoadingScreenMonitor_v2.lua")
  l0 = self.box_Loading_Screen_Monitor_v2_7
  l0._graph = self
  l0._name = "box_Loading_Screen_Monitor_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_burningmantickets.domino|@S07_M030_CIN_BurningManTickets_Main|936131115"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Loading_Screen_Monitor_v2_7_Disabled
  l0.LoadingScreenEnded = self.f_box_Loading_Screen_Monitor_v2_7_LoadingScreenEnded
  l0.LoadingScreenStarted = DummyFunction
  self.box_TeleportPlayerOutsideHma_9 = cbox:CreateBox("domino/System/TeleportPlayerOutsideHma.lua")
  l0 = self.box_TeleportPlayerOutsideHma_9
  l0._graph = self
  l0._name = "box_TeleportPlayerOutsideHma_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_burningmantickets.domino|@S07_M030_CIN_BurningManTickets_Main|1021235571"
  l0.Out = self.f_box_TeleportPlayerOutsideHma_9_Out
  l0.Done = DummyFunction
  self.box_PlaySequence_v5_1 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_1
  l0._graph = self
  l0._name = "box_PlaySequence_v5_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_burningmantickets.domino|@S07_M030_CIN_BurningManTickets_Main|2113817014"
  l0.Started = DummyFunction
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
  l0 = self.box_CinematicPrep_8
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_burningmantickets.domino|@S07_M030_CIN_BurningManTickets_Main|866394449", "866394449", "S07_M030_CIN_BurningManTickets_Main", "In", "box_CinematicPrep_8.PreCinematic", self, l0)
  l0:PreCinematic()
end
function export:f_box_VisibilityController_v2_10_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_1
  l0.SceneEntity = "9223372047837000443"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S07/S07_BurningManTickets_CIN/s07_burningmantickets_cin.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_burningmantickets.domino|@S07_M030_CIN_BurningManTickets_Main|1636176993", "1636176993", "S07_M030_CIN_BurningManTickets_Main", "box_VisibilityController_v2_10.Hidden", "box_PlaySequence_v5_1.Start", clone, l0)
  l0:Start()
end
function export:f_box_OnceOnly_v3_6_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_4
  l0.Group = "HQ_Talker"
  l0 = self.box_OnceOnly_v3_6
  l1 = self.box_GetNPC_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_burningmantickets.domino|@S07_M030_CIN_BurningManTickets_Main|143382577", "143382577", "S07_M030_CIN_BurningManTickets_Main", "box_OnceOnly_v3_6.Out", "box_GetNPC_4.GetAll", l0, l1)
  l1:GetAll()
end
function export:f_box_GetNPC_5_GotNPCList()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_5
  self.HQ_Talker = l0.NPCList
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.HQ_Talker
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_burningmantickets.domino|@S07_M030_CIN_BurningManTickets_Main|183084190"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_10_Hidden
  l0.Out = DummyFunction
  l0 = self.box_GetNPC_5
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_burningmantickets.domino|@S07_M030_CIN_BurningManTickets_Main|1143182170", "1143182170", "S07_M030_CIN_BurningManTickets_Main", "box_GetNPC_5.GotNPCList", "box_VisibilityController_v2_10.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_CinematicPrep_8_PreOut()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_5
  l0.Group = "HQ_Talker"
  l0 = self.box_CinematicPrep_8
  l1 = self.box_GetNPC_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_burningmantickets.domino|@S07_M030_CIN_BurningManTickets_Main|1203897343", "1203897343", "S07_M030_CIN_BurningManTickets_Main", "box_CinematicPrep_8.PreOut", "box_GetNPC_5.GetAll", l0, l1)
  l1:GetAll()
end
function export:f_box_VisibilityController_v2_3_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TeleportPlayerOutsideHma_9
  l0.SpawnPoint = "9223372046684705912"
  l0.StandaloneLoader = "9223372047131482396"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_burningmantickets.domino|@S07_M030_CIN_BurningManTickets_Main|1638767651", "1638767651", "S07_M030_CIN_BurningManTickets_Main", "box_VisibilityController_v2_3.Shown", "box_TeleportPlayerOutsideHma_9.In", clone, l0)
  l0:In()
end
function export:f_box_GetNPC_4_GotNPCList()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_4
  self.HQ_Talker = l0.NPCList
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.HQ_Talker
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_burningmantickets.domino|@S07_M030_CIN_BurningManTickets_Main|684945829"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_3_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_GetNPC_4
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_burningmantickets.domino|@S07_M030_CIN_BurningManTickets_Main|49852676", "49852676", "S07_M030_CIN_BurningManTickets_Main", "box_GetNPC_4.GotNPCList", "box_VisibilityController_v2_3.Show", l0, l1)
  l1:Show()
end
function export:f_box_Loading_Screen_Monitor_v2_7_Disabled()
  local l0
  self = self._graph
  l0 = self.box_Loading_Screen_Monitor_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_burningmantickets.domino|@S07_M030_CIN_BurningManTickets_Main|215190143", "215190143", "S07_M030_CIN_BurningManTickets_Main", "box_Loading_Screen_Monitor_v2_7.Disabled", "Out", l0, self)
  self:Out()
end
function export:f_box_Loading_Screen_Monitor_v2_7_LoadingScreenEnded()
  local l0
  self = self._graph
  self:OnEnter_box_Loading_Screen_Monitor_v2_7()
  l0 = self.box_Loading_Screen_Monitor_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_burningmantickets.domino|@S07_M030_CIN_BurningManTickets_Main|1655964259", "1655964259", "S07_M030_CIN_BurningManTickets_Main", "box_Loading_Screen_Monitor_v2_7.LoadingScreenEnded", "box_Loading_Screen_Monitor_v2_7.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_TeleportPlayerOutsideHma_9_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Loading_Screen_Monitor_v2_7()
  l0 = self.box_TeleportPlayerOutsideHma_9
  l1 = self.box_Loading_Screen_Monitor_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_burningmantickets.domino|@S07_M030_CIN_BurningManTickets_Main|721023525", "721023525", "S07_M030_CIN_BurningManTickets_Main", "box_TeleportPlayerOutsideHma_9.Out", "box_Loading_Screen_Monitor_v2_7.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_PlaySequence_v5_1_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_6()
  l0 = self.box_PlaySequence_v5_1
  l1 = self.box_OnceOnly_v3_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_burningmantickets.domino|@S07_M030_CIN_BurningManTickets_Main|517277173", "517277173", "S07_M030_CIN_BurningManTickets_Main", "box_PlaySequence_v5_1.Finished", "box_OnceOnly_v3_6.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_1_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_6()
  l0 = self.box_PlaySequence_v5_1
  l1 = self.box_OnceOnly_v3_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_burningmantickets.domino|@S07_M030_CIN_BurningManTickets_Main|259425533", "259425533", "S07_M030_CIN_BurningManTickets_Main", "box_PlaySequence_v5_1.Skipped", "box_OnceOnly_v3_6.In", l0, l1)
  l1:In(0)
end
function export:OnEnter_box_OnceOnly_v3_6()
end
function export:OnEnter_box_Loading_Screen_Monitor_v2_7()
end
function export:Out()
end
_compilerVersion = 4
