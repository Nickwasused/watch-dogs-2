export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/LaneRestrictionsControl.lua")
  cbox:RegisterBox("domino/System/LoadingScreenMonitor_v2.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/TeleportToSpawnPoint.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/WaitQualitiesLoaded.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S15_M030_CIN_BigAssPhone_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_bigassphone.domino|@S15_M030_CIN_BigAssPhone_Main"
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.box_PlaySequence_v5_10 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_10
  l0._graph = self
  l0._name = "box_PlaySequence_v5_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_bigassphone.domino|@S15_M030_CIN_BigAssPhone_Main|267681067"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_10_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_10_Finished
  self.box_Teleport_To_SpawnPoint_4 = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self.box_Teleport_To_SpawnPoint_4
  l0._graph = self
  l0._name = "box_Teleport_To_SpawnPoint_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_bigassphone.domino|@S15_M030_CIN_BigAssPhone_Main|281366773"
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_box_Teleport_To_SpawnPoint_4_TeleportDone
  self.box_Timer_v2_8 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_8
  l0._graph = self
  l0._name = "box_Timer_v2_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_bigassphone.domino|@S15_M030_CIN_BigAssPhone_Main|341644747"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_8_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CinematicPrep_7 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_7
  l0._graph = self
  l0._name = "box_CinematicPrep_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_bigassphone.domino|@S15_M030_CIN_BigAssPhone_Main|870563106"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_7_PostOut
  self.box_OnceOnly_v3_6 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_6
  l0._graph = self
  l0._name = "box_OnceOnly_v3_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_bigassphone.domino|@S15_M030_CIN_BigAssPhone_Main|1102997987"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_6_Out
  l0.ResetOut = DummyFunction
  self.box_Timer_v2_1 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_1
  l0._graph = self
  l0._name = "box_Timer_v2_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_bigassphone.domino|@S15_M030_CIN_BigAssPhone_Main|1548265320"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_1_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_OnceOnly_v3_13 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_13
  l0._graph = self
  l0._name = "box_OnceOnly_v3_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_bigassphone.domino|@S15_M030_CIN_BigAssPhone_Main|1679737344"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_13_Out
  l0.ResetOut = DummyFunction
  self.box_Loading_Screen_Monitor_v2_3 = cbox:CreateBox("domino/System/LoadingScreenMonitor_v2.lua")
  l0 = self.box_Loading_Screen_Monitor_v2_3
  l0._graph = self
  l0._name = "box_Loading_Screen_Monitor_v2_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_bigassphone.domino|@S15_M030_CIN_BigAssPhone_Main|1778848988"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Loading_Screen_Monitor_v2_3_Disabled
  l0.LoadingScreenEnded = self.f_box_Loading_Screen_Monitor_v2_3_LoadingScreenEnded
  l0.LoadingScreenStarted = DummyFunction
  self.box_Wait_Qualities_Loaded_5 = cbox:CreateBox("domino/System/WaitQualitiesLoaded.lua")
  l0 = self.box_Wait_Qualities_Loaded_5
  l0._graph = self
  l0._name = "box_Wait_Qualities_Loaded_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_bigassphone.domino|@S15_M030_CIN_BigAssPhone_Main|1801022065"
  l0.Out = DummyFunction
  l0.Loaded = self.f_box_Wait_Qualities_Loaded_5_Loaded
  self.box_OnceOnly_v3_11 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_11
  l0._graph = self
  l0._name = "box_OnceOnly_v3_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_bigassphone.domino|@S15_M030_CIN_BigAssPhone_Main|2007369202"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_11_Out
  l0.ResetOut = DummyFunction
  self.box_PlaySequence_v5_2 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_2
  l0._graph = self
  l0._name = "box_PlaySequence_v5_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_bigassphone.domino|@S15_M030_CIN_BigAssPhone_Main|2021229589"
  l0._DynamicAnchors = {
    SPOut = {
      "StartPropVid"
    }
  }
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_2_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_2_Finished
  l0.SPOut.StartPropVid = self.f_box_PlaySequence_v5_2_SPOut__StartPropVid_
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
  l0 = self.box_Teleport_To_SpawnPoint_4
  l0.SpawnPoint = "9223372047998015763"
  l0.KeepBlackScreenOnExit = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_bigassphone.domino|@S15_M030_CIN_BigAssPhone_Main|67580530", "67580530", "S15_M030_CIN_BigAssPhone_Main", "In", "box_Teleport_To_SpawnPoint_4.In", self, l0)
  l0:In()
end
function export:f_box_Ordered_Output_9_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_10
  l0.SceneEntity = "9223372049410244829"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S15/s15_pgv-fs_vid.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_bigassphone.domino|@S15_M030_CIN_BigAssPhone_Main|1620327642", "1620327642", "S15_M030_CIN_BigAssPhone_Main", "box_Ordered_Output_9.Out", "box_PlaySequence_v5_10.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_9_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_PlaySequence_v5_2()
  l0 = self.box_PlaySequence_v5_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_bigassphone.domino|@S15_M030_CIN_BigAssPhone_Main|1148957019", "1148957019", "S15_M030_CIN_BigAssPhone_Main", "box_Ordered_Output_9.Out", "box_PlaySequence_v5_2.Pause", clone, l0)
  l0:Pause()
end
function export:f_box_PlaySequence_v5_10_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_13()
  l0 = self.box_PlaySequence_v5_10
  l1 = self.box_OnceOnly_v3_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_bigassphone.domino|@S15_M030_CIN_BigAssPhone_Main|439358595", "439358595", "S15_M030_CIN_BigAssPhone_Main", "box_PlaySequence_v5_10.Finished", "box_OnceOnly_v3_13.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_10_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_13()
  l0 = self.box_PlaySequence_v5_10
  l1 = self.box_OnceOnly_v3_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_bigassphone.domino|@S15_M030_CIN_BigAssPhone_Main|2103867808", "2103867808", "S15_M030_CIN_BigAssPhone_Main", "box_PlaySequence_v5_10.Skipped", "box_OnceOnly_v3_13.In", l0, l1)
  l1:In(0)
end
function export:f_box_Teleport_To_SpawnPoint_4_TeleportDone()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Loading_Screen_Monitor_v2_3()
  l0 = self.box_Teleport_To_SpawnPoint_4
  l1 = self.box_Loading_Screen_Monitor_v2_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_bigassphone.domino|@S15_M030_CIN_BigAssPhone_Main|290306949", "290306949", "S15_M030_CIN_BigAssPhone_Main", "box_Teleport_To_SpawnPoint_4.TeleportDone", "box_Loading_Screen_Monitor_v2_3.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Timer_v2_8_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_7
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_Timer_v2_8
  l1 = self.box_CinematicPrep_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_bigassphone.domino|@S15_M030_CIN_BigAssPhone_Main|1645986741", "1645986741", "S15_M030_CIN_BigAssPhone_Main", "box_Timer_v2_8.TimeElapsed", "box_CinematicPrep_7.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_CinematicPrep_7_PostOut()
  local l0
  self = self._graph
  l0 = self.box_CinematicPrep_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_bigassphone.domino|@S15_M030_CIN_BigAssPhone_Main|1039860447", "1039860447", "S15_M030_CIN_BigAssPhone_Main", "box_CinematicPrep_7.PostOut", "Out", l0, self)
  self:Out()
end
function export:f_box_Lanes_Restrictions_Control_12_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_1
  l0.Seconds = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_bigassphone.domino|@S15_M030_CIN_BigAssPhone_Main|1048725251", "1048725251", "S15_M030_CIN_BigAssPhone_Main", "box_Lanes_Restrictions_Control_12.Out", "box_Timer_v2_1.Start", clone, l0)
  l0:Start()
end
function export:f_box_OnceOnly_v3_6_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_8
  l0.Seconds = 2
  l0 = self.box_OnceOnly_v3_6
  l1 = self.box_Timer_v2_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_bigassphone.domino|@S15_M030_CIN_BigAssPhone_Main|261653493", "261653493", "S15_M030_CIN_BigAssPhone_Main", "box_OnceOnly_v3_6.Out", "box_Timer_v2_8.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_1_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PlaySequence_v5_2()
  l0 = self.box_Timer_v2_1
  l1 = self.box_PlaySequence_v5_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_bigassphone.domino|@S15_M030_CIN_BigAssPhone_Main|1152972740", "1152972740", "S15_M030_CIN_BigAssPhone_Main", "box_Timer_v2_1.TimeElapsed", "box_PlaySequence_v5_2.Start", l0, l1)
  l1:Start()
end
function export:f_box_OnceOnly_v3_13_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PlaySequence_v5_2()
  l0 = self.box_OnceOnly_v3_13
  l1 = self.box_PlaySequence_v5_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_bigassphone.domino|@S15_M030_CIN_BigAssPhone_Main|332994600", "332994600", "S15_M030_CIN_BigAssPhone_Main", "box_OnceOnly_v3_13.Out", "box_PlaySequence_v5_2.Resume", l0, l1)
  l1:Resume()
end
function export:f_box_Loading_Screen_Monitor_v2_3_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Loading_Screen_Monitor_v2_3
  l1 = self.box_Wait_Qualities_Loaded_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_bigassphone.domino|@S15_M030_CIN_BigAssPhone_Main|1588294075", "1588294075", "S15_M030_CIN_BigAssPhone_Main", "box_Loading_Screen_Monitor_v2_3.Disabled", "box_Wait_Qualities_Loaded_5.In", l0, l1)
  l1:In()
end
function export:f_box_Loading_Screen_Monitor_v2_3_LoadingScreenEnded()
  local l0, l1
  self = self._graph
  l0 = self.box_Loading_Screen_Monitor_v2_3
  l1 = self.box_OnceOnly_v3_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_bigassphone.domino|@S15_M030_CIN_BigAssPhone_Main|1447321283", "1447321283", "S15_M030_CIN_BigAssPhone_Main", "box_Loading_Screen_Monitor_v2_3.LoadingScreenEnded", "box_OnceOnly_v3_11.In", l0, l1)
  l1:In(0)
end
function export:f_box_Wait_Qualities_Loaded_5_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372050008542423"
  l0.RestrictTraffic = nil
  l0.RestrictPedestrians = nil
  l0.RestrictParking = nil
  l0.ResetLivingCity = nil
  l0.ResetMissionWithLivingCity = nil
  l0.CivilianDensityDbObject = nil
  l0.ParkedCarsDensityDbObject = nil
  l0.TrafficDensityScale = nil
  l0.ApplyToEnticers = nil
  l0.ApplyToRoadNetwork = nil
  l0.RestrictHumanOnFoot = nil
  l0.RestrictHumanPassenger = nil
  l0.RestrictAnimal = nil
  l0.RestrictRobot = nil
  l0.RestrictRoadVehicle = nil
  l0.RestrictRail = nil
  l0.RestrictBoat = nil
  l0.RestrictParkedCar = nil
  l0.RestrictParkedBoat = nil
  l0.RestrictWorldAI = nil
  l0.RestrictReinforcementAI = nil
  l0.RestrictMissionAI = nil
  l0.RestrictCityObject = nil
  l0.RestrictMissionObject = nil
  l0._graph = self
  l0._name = "box_Lanes_Restrictions_Control_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_bigassphone.domino|@S15_M030_CIN_BigAssPhone_Main|971002694"
  l0.Out = self.f_box_Lanes_Restrictions_Control_12_Out
  l0 = self.box_Wait_Qualities_Loaded_5
  l1 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_bigassphone.domino|@S15_M030_CIN_BigAssPhone_Main|1105319641", "1105319641", "S15_M030_CIN_BigAssPhone_Main", "box_Wait_Qualities_Loaded_5.Loaded", "box_Lanes_Restrictions_Control_12.In", l0, l1)
  l1:In()
end
function export:f_box_OnceOnly_v3_11_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Loading_Screen_Monitor_v2_3()
  l0 = self.box_OnceOnly_v3_11
  l1 = self.box_Loading_Screen_Monitor_v2_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_bigassphone.domino|@S15_M030_CIN_BigAssPhone_Main|2062906938", "2062906938", "S15_M030_CIN_BigAssPhone_Main", "box_OnceOnly_v3_11.Out", "box_Loading_Screen_Monitor_v2_3.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_PlaySequence_v5_2_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_6()
  l0 = self.box_PlaySequence_v5_2
  l1 = self.box_OnceOnly_v3_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_bigassphone.domino|@S15_M030_CIN_BigAssPhone_Main|1577828853", "1577828853", "S15_M030_CIN_BigAssPhone_Main", "box_PlaySequence_v5_2.Finished", "box_OnceOnly_v3_6.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_2_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_6()
  l0 = self.box_PlaySequence_v5_2
  l1 = self.box_OnceOnly_v3_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_bigassphone.domino|@S15_M030_CIN_BigAssPhone_Main|812975049", "812975049", "S15_M030_CIN_BigAssPhone_Main", "box_PlaySequence_v5_2.Skipped", "box_OnceOnly_v3_6.In", l0, l1)
  l1:In(0)
end
function export:f_box_PlaySequence_v5_2_SPOut__StartPropVid_()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_bigassphone.domino|@S15_M030_CIN_BigAssPhone_Main|243371923"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_9_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_9_Out_1
  l0 = self.box_PlaySequence_v5_2
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_bigassphone.domino|@S15_M030_CIN_BigAssPhone_Main|473293813", "473293813", "S15_M030_CIN_BigAssPhone_Main", "box_PlaySequence_v5_2.SPOut", "box_Ordered_Output_9.In", l0, l1)
  l1:In()
end
function export:OnEnter_box_OnceOnly_v3_6()
end
function export:OnEnter_box_OnceOnly_v3_13()
end
function export:OnEnter_box_Loading_Screen_Monitor_v2_3()
end
function export:OnEnter_box_PlaySequence_v5_2()
  local l0
  l0 = self.box_PlaySequence_v5_2
  l0.SceneEntity = "9223372047779435989"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S15/S15_BigAssPhone_CIN/s15_bigassphone_cin.seq"
end
function export:Out()
end
_compilerVersion = 4
