export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/GetNPC.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/TeleportPlayerInsideHma.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S16M060_CIN_DedsecMomentum_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_cin_dedsecmomentum.domino|@S16M060_CIN_DedsecMomentum_Main"
  self.out = DummyFunction
  self.PlayerEntity = nil
  self.HQ_Talkers = {}
  self.box_TeleportPlayerInsideHma_6 = cbox:CreateBox("domino/System/TeleportPlayerInsideHma.lua")
  l0 = self.box_TeleportPlayerInsideHma_6
  l0._graph = self
  l0._name = "box_TeleportPlayerInsideHma_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_cin_dedsecmomentum.domino|@S16M060_CIN_DedsecMomentum_Main|334312588"
  l0.Out = DummyFunction
  l0.Done = self.f_box_TeleportPlayerInsideHma_6_Done
  self.box_PlaySequence_v5_4 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_4
  l0._graph = self
  l0._name = "box_PlaySequence_v5_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_cin_dedsecmomentum.domino|@S16M060_CIN_DedsecMomentum_Main|335190638"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_4_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_4_Finished
  self.box_OnceOnly_v3_2 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_2
  l0._graph = self
  l0._name = "box_OnceOnly_v3_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_cin_dedsecmomentum.domino|@S16M060_CIN_DedsecMomentum_Main|337606501"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_2_Out
  l0.ResetOut = DummyFunction
  self.box_Timer_v2_1 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_1
  l0._graph = self
  l0._name = "box_Timer_v2_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_cin_dedsecmomentum.domino|@S16M060_CIN_DedsecMomentum_Main|582480931"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_1_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CinematicPrep_9 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_9
  l0._graph = self
  l0._name = "box_CinematicPrep_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_cin_dedsecmomentum.domino|@S16M060_CIN_DedsecMomentum_Main|1050858537"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_9_PostOut
  self.box_GetNPC_5 = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self.box_GetNPC_5
  l0._graph = self
  l0._name = "box_GetNPC_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_cin_dedsecmomentum.domino|@S16M060_CIN_DedsecMomentum_Main|1777007808"
  l0.GotNPCList = self.f_box_GetNPC_5_GotNPCList
  self.box_GetNPC_10 = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self.box_GetNPC_10
  l0._graph = self
  l0._name = "box_GetNPC_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_cin_dedsecmomentum.domino|@S16M060_CIN_DedsecMomentum_Main|1969961361"
  l0.GotNPCList = self.f_box_GetNPC_10_GotNPCList
  self.box_Timer_v2_8 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_8
  l0._graph = self
  l0._name = "box_Timer_v2_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_cin_dedsecmomentum.domino|@S16M060_CIN_DedsecMomentum_Main|2086512969"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_8_TimeElapsed
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
  l0 = self.box_TeleportPlayerInsideHma_6
  l0.SpawnPoint = "9223372048320953452"
  l0.StandaloneLoader = "9223372047131482396"
  l0.LayerName = "SF_08_Mission_Central_HMA_Hackerspace"
  l0.KeepBlackScreenOnExit = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_cin_dedsecmomentum.domino|@S16M060_CIN_DedsecMomentum_Main|1212384728", "1212384728", "S16M060_CIN_DedsecMomentum_Main", "In", "box_TeleportPlayerInsideHma_6.In", self, l0)
  l0:In()
end
function export:f_box_TeleportPlayerInsideHma_6_Done()
  local l0, l1
  self = self._graph
  l0 = self.box_TeleportPlayerInsideHma_6
  l1 = self.box_Timer_v2_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_cin_dedsecmomentum.domino|@S16M060_CIN_DedsecMomentum_Main|628304352", "628304352", "S16M060_CIN_DedsecMomentum_Main", "box_TeleportPlayerInsideHma_6.Done", "box_Timer_v2_1.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlaySequence_v5_4_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_2()
  l0 = self.box_PlaySequence_v5_4
  l1 = self.box_OnceOnly_v3_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_cin_dedsecmomentum.domino|@S16M060_CIN_DedsecMomentum_Main|275505800", "275505800", "S16M060_CIN_DedsecMomentum_Main", "box_PlaySequence_v5_4.Finished", "box_OnceOnly_v3_2.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_4_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_2()
  l0 = self.box_PlaySequence_v5_4
  l1 = self.box_OnceOnly_v3_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_cin_dedsecmomentum.domino|@S16M060_CIN_DedsecMomentum_Main|1101808228", "1101808228", "S16M060_CIN_DedsecMomentum_Main", "box_PlaySequence_v5_4.Skipped", "box_OnceOnly_v3_2.In", l0, l1)
  l1:In(0)
end
function export:f_box_OnceOnly_v3_2_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_5
  l0.Group = "HQ_Talker"
  l0 = self.box_OnceOnly_v3_2
  l1 = self.box_GetNPC_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_cin_dedsecmomentum.domino|@S16M060_CIN_DedsecMomentum_Main|1158816626", "1158816626", "S16M060_CIN_DedsecMomentum_Main", "box_OnceOnly_v3_2.Out", "box_GetNPC_5.GetAll", l0, l1)
  l1:GetAll()
end
function export:f_box_Timer_v2_1_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_10
  l0.Group = "HQ_Talker"
  l0 = self.box_Timer_v2_1
  l1 = self.box_GetNPC_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_cin_dedsecmomentum.domino|@S16M060_CIN_DedsecMomentum_Main|1071796639", "1071796639", "S16M060_CIN_DedsecMomentum_Main", "box_Timer_v2_1.TimeElapsed", "box_GetNPC_10.GetAll", l0, l1)
  l1:GetAll()
end
function export:f_box_VisibilityController_v2_11_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_4
  l0.SceneEntity = "9223372048027847975"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S16/S16_DedsecMomentum_CIN/s16_dedsecmomentum_cin.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_cin_dedsecmomentum.domino|@S16M060_CIN_DedsecMomentum_Main|393782646", "393782646", "S16M060_CIN_DedsecMomentum_Main", "box_VisibilityController_v2_11.Hidden", "box_PlaySequence_v5_4.Start", clone, l0)
  l0:Start()
end
function export:f_box_VisibilityController_v2_12_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_9
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_cin_dedsecmomentum.domino|@S16M060_CIN_DedsecMomentum_Main|1856303713", "1856303713", "S16M060_CIN_DedsecMomentum_Main", "box_VisibilityController_v2_12.Shown", "box_CinematicPrep_9.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_CinematicPrep_9_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_9
  l1 = self.box_Timer_v2_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_cin_dedsecmomentum.domino|@S16M060_CIN_DedsecMomentum_Main|916130810", "916130810", "S16M060_CIN_DedsecMomentum_Main", "box_CinematicPrep_9.PostOut", "box_Timer_v2_8.Start", l0, l1)
  l1:Start()
end
function export:f_box_GetNPC_5_GotNPCList()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_5
  self.HQ_Talkers = l0.NPCList
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.HQ_Talkers
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_cin_dedsecmomentum.domino|@S16M060_CIN_DedsecMomentum_Main|1036574899"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_12_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_GetNPC_5
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_cin_dedsecmomentum.domino|@S16M060_CIN_DedsecMomentum_Main|1968764968", "1968764968", "S16M060_CIN_DedsecMomentum_Main", "box_GetNPC_5.GotNPCList", "box_VisibilityController_v2_12.Show", l0, l1)
  l1:Show()
end
function export:f_box_GetNPC_10_GotNPCList()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_10
  self.HQ_Talkers = l0.NPCList
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.HQ_Talkers
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_cin_dedsecmomentum.domino|@S16M060_CIN_DedsecMomentum_Main|924811631"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_11_Hidden
  l0.Out = DummyFunction
  l0 = self.box_GetNPC_10
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_cin_dedsecmomentum.domino|@S16M060_CIN_DedsecMomentum_Main|1351704784", "1351704784", "S16M060_CIN_DedsecMomentum_Main", "box_GetNPC_10.GotNPCList", "box_VisibilityController_v2_11.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Timer_v2_8_TimeElapsed()
  local l0
  self = self._graph
  l0 = self.box_Timer_v2_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_cin_dedsecmomentum.domino|@S16M060_CIN_DedsecMomentum_Main|1812483508", "1812483508", "S16M060_CIN_DedsecMomentum_Main", "box_Timer_v2_8.TimeElapsed", "out", l0, self)
  self:out()
end
function export:OnEnter_box_OnceOnly_v3_2()
end
function export:out()
end
_compilerVersion = 4
