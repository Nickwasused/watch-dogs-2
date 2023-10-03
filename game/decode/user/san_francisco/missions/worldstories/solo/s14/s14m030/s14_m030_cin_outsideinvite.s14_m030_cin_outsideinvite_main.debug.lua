export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CinemaZoneCleanup.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/LaneRestrictionsControl.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/ShowOrHideAllUI.lua")
  cbox:RegisterBox("domino/System/TeleportToSpawnPoint.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S14_M030_CIN_OutsideInvite_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\s14_m030_cin_outsideinvite.domino|@S14_M030_CIN_OutsideInvite_Main"
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.Sitara = nil
  self.box_Timer_v2_8 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_8
  l0._graph = self
  l0._name = "box_Timer_v2_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\s14_m030_cin_outsideinvite.domino|@S14_M030_CIN_OutsideInvite_Main|371797387"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_8_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Teleport_To_SpawnPoint_11 = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self.box_Teleport_To_SpawnPoint_11
  l0._graph = self
  l0._name = "box_Teleport_To_SpawnPoint_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\s14_m030_cin_outsideinvite.domino|@S14_M030_CIN_OutsideInvite_Main|513867167"
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_box_Teleport_To_SpawnPoint_11_TeleportDone
  self.box_OnceOnly_v3_7 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_7
  l0._graph = self
  l0._name = "box_OnceOnly_v3_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\s14_m030_cin_outsideinvite.domino|@S14_M030_CIN_OutsideInvite_Main|630110457"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_7_Out
  l0.ResetOut = DummyFunction
  self.box_CinematicPrep_9 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_9
  l0._graph = self
  l0._name = "box_CinematicPrep_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\s14_m030_cin_outsideinvite.domino|@S14_M030_CIN_OutsideInvite_Main|881799175"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_9_PostOut
  self.box_PlaySequence_v5_3 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_3
  l0._graph = self
  l0._name = "box_PlaySequence_v5_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\s14_m030_cin_outsideinvite.domino|@S14_M030_CIN_OutsideInvite_Main|1613489852"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_3_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_3_Finished
  self.box_CinematicPrep_12 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_12
  l0._graph = self
  l0._name = "box_CinematicPrep_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\s14_m030_cin_outsideinvite.domino|@S14_M030_CIN_OutsideInvite_Main|1816050790"
  l0.PreOut = self.f_box_CinematicPrep_12_PreOut
  l0.PostOut = DummyFunction
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
  l0 = self.box_CinematicPrep_12
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\s14_m030_cin_outsideinvite.domino|@S14_M030_CIN_OutsideInvite_Main|2044809889", "2044809889", "S14_M030_CIN_OutsideInvite_Main", "In", "box_CinematicPrep_12.PreCinematic", self, l0)
  l0:PreCinematic()
end
function export:f_box_Lanes_Restrictions_Control_13_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_3
  l0.SceneEntity = "9223372047235832776"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S14/S14_OutsideNvite_CIN/s14_outsidenvite_cin.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\s14_m030_cin_outsideinvite.domino|@S14_M030_CIN_OutsideInvite_Main|1326672439", "1326672439", "S14_M030_CIN_OutsideInvite_Main", "box_Lanes_Restrictions_Control_13.Out", "box_PlaySequence_v5_3.Start", clone, l0)
  l0:Start()
end
function export:f_box_Timer_v2_8_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_9
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_Timer_v2_8
  l1 = self.box_CinematicPrep_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\s14_m030_cin_outsideinvite.domino|@S14_M030_CIN_OutsideInvite_Main|994125614", "994125614", "S14_M030_CIN_OutsideInvite_Main", "box_Timer_v2_8.TimeElapsed", "box_CinematicPrep_9.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_Teleport_To_SpawnPoint_11_TeleportDone()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_8
  l0.Seconds = 0.5
  l0 = self.box_Teleport_To_SpawnPoint_11
  l1 = self.box_Timer_v2_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\s14_m030_cin_outsideinvite.domino|@S14_M030_CIN_OutsideInvite_Main|1246804096", "1246804096", "S14_M030_CIN_OutsideInvite_Main", "box_Teleport_To_SpawnPoint_11.TeleportDone", "box_Timer_v2_8.Start", l0, l1)
  l1:Start()
end
function export:f_box_OnceOnly_v3_7_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Teleport_To_SpawnPoint_11
  l0.SpawnPoint = "9223372047969942947"
  l0 = self.box_OnceOnly_v3_7
  l1 = self.box_Teleport_To_SpawnPoint_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\s14_m030_cin_outsideinvite.domino|@S14_M030_CIN_OutsideInvite_Main|1433060580", "1433060580", "S14_M030_CIN_OutsideInvite_Main", "box_OnceOnly_v3_7.Out", "box_Teleport_To_SpawnPoint_11.In", l0, l1)
  l1:In()
end
function export:f_box_CinematicPrep_9_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\s14_m030_cin_outsideinvite.domino|@S14_M030_CIN_OutsideInvite_Main|1002297227"
  l0.Out = DummyFunction
  l0.Shown = self.f_box_Show_Or_Hide_All_UI_1_Shown
  l0.Hidden = DummyFunction
  l0 = self.box_CinematicPrep_9
  l1 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\s14_m030_cin_outsideinvite.domino|@S14_M030_CIN_OutsideInvite_Main|1647738226", "1647738226", "S14_M030_CIN_OutsideInvite_Main", "box_CinematicPrep_9.PostOut", "box_Show_Or_Hide_All_UI_1.Show", l0, l1)
  l1:Show()
end
function export:f_box_Show_Or_Hide_All_UI_1_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\s14_m030_cin_outsideinvite.domino|@S14_M030_CIN_OutsideInvite_Main|703419788", "703419788", "S14_M030_CIN_OutsideInvite_Main", "box_Show_Or_Hide_All_UI_1.Shown", "Out", clone, self)
  self:Out()
end
function export:f_box_PlaySequence_v5_3_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_7()
  l0 = self.box_PlaySequence_v5_3
  l1 = self.box_OnceOnly_v3_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\s14_m030_cin_outsideinvite.domino|@S14_M030_CIN_OutsideInvite_Main|536412155", "536412155", "S14_M030_CIN_OutsideInvite_Main", "box_PlaySequence_v5_3.Finished", "box_OnceOnly_v3_7.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_3_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_7()
  l0 = self.box_PlaySequence_v5_3
  l1 = self.box_OnceOnly_v3_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\s14_m030_cin_outsideinvite.domino|@S14_M030_CIN_OutsideInvite_Main|535999730", "535999730", "S14_M030_CIN_OutsideInvite_Main", "box_PlaySequence_v5_3.Skipped", "box_OnceOnly_v3_7.In", l0, l1)
  l1:In(0)
end
function export:f_box_CinematicPrep_12_PreOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  l0.TargetZone = "9223372061714825492"
  l0.SceneEntity = "9223372047235832776"
  l0.RemoveBreakable = nil
  l0.RemoveCharacter = nil
  l0.RemoveVehicle = nil
  l0.RemoveWeapon = nil
  l0.RemoveDeadBody = nil
  l0.RemoveRigidPhysObject = nil
  l0.StopDialog = nil
  l0.NotRemovableEntity[0] = nil
  l0.NotRemovableEntity[1] = nil
  l0._graph = self
  l0._name = "box_Cinema_Zone_Cleanup_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\s14_m030_cin_outsideinvite.domino|@S14_M030_CIN_OutsideInvite_Main|1948070750"
  l0._DynamicAnchors = {NotRemovableEntity = 2}
  l0.Out = self.f_box_Cinema_Zone_Cleanup_20_Out
  l0 = self.box_CinematicPrep_12
  l1 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\s14_m030_cin_outsideinvite.domino|@S14_M030_CIN_OutsideInvite_Main|512911897", "512911897", "S14_M030_CIN_OutsideInvite_Main", "box_CinematicPrep_12.PreOut", "box_Cinema_Zone_Cleanup_20.CleanZone", l0, l1)
  l1:CleanZone()
end
function export:f_box_Cinema_Zone_Cleanup_20_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372055527644350"
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
  l0._name = "box_Lanes_Restrictions_Control_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\s14_m030_cin_outsideinvite.domino|@S14_M030_CIN_OutsideInvite_Main|78411767"
  l0.Out = self.f_box_Lanes_Restrictions_Control_13_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\s14_m030_cin_outsideinvite.domino|@S14_M030_CIN_OutsideInvite_Main|874699634", "874699634", "S14_M030_CIN_OutsideInvite_Main", "box_Cinema_Zone_Cleanup_20.Out", "box_Lanes_Restrictions_Control_13.In", clone, l0)
  l0:In()
end
function export:OnEnter_box_OnceOnly_v3_7()
end
function export:Out()
end
_compilerVersion = 4
