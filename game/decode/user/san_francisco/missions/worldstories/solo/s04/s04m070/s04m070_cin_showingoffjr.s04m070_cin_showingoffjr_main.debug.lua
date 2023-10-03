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
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S04M070_CIN_ShowingOffJr_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04m070_cin_showingoffjr.domino|@S04M070_CIN_ShowingOffJr_Main"
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.box_OnceOnly_v3_4 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_4
  l0._graph = self
  l0._name = "box_OnceOnly_v3_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04m070_cin_showingoffjr.domino|@S04M070_CIN_ShowingOffJr_Main|131980978"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_4_Out
  l0.ResetOut = DummyFunction
  self.box_PlaySequence_v5_2 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_2
  l0._graph = self
  l0._name = "box_PlaySequence_v5_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04m070_cin_showingoffjr.domino|@S04M070_CIN_ShowingOffJr_Main|558491005"
  l0._DynamicAnchors = {
    SPOut = {"CloseDoor"}
  }
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_2_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_2_Finished
  l0.SPOut.CloseDoor = DummyFunction
  self.box_CinematicPrep_1 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_1
  l0._graph = self
  l0._name = "box_CinematicPrep_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04m070_cin_showingoffjr.domino|@S04M070_CIN_ShowingOffJr_Main|723441155"
  l0.PreOut = self.f_box_CinematicPrep_1_PreOut
  l0.PostOut = DummyFunction
  self.box_Timer_v2_7 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_7
  l0._graph = self
  l0._name = "box_Timer_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04m070_cin_showingoffjr.domino|@S04M070_CIN_ShowingOffJr_Main|1157835451"
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
  l0 = self.box_CinematicPrep_1
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04m070_cin_showingoffjr.domino|@S04M070_CIN_ShowingOffJr_Main|423768531", "423768531", "S04M070_CIN_ShowingOffJr_Main", "In", "box_CinematicPrep_1.PreCinematic", self, l0)
  l0:PreCinematic()
end
function export:f_box_OnceOnly_v3_4_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372065118502985"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04m070_cin_showingoffjr.domino|@S04M070_CIN_ShowingOffJr_Main|1962673602"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_14_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_OnceOnly_v3_4
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04m070_cin_showingoffjr.domino|@S04M070_CIN_ShowingOffJr_Main|1769870706", "1769870706", "S04M070_CIN_ShowingOffJr_Main", "box_OnceOnly_v3_4.Out", "box_VisibilityController_v2_14.Show", l0, l1)
  l1:Show()
end
function export:f_box_PlaySequence_v5_2_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_4()
  l0 = self.box_PlaySequence_v5_2
  l1 = self.box_OnceOnly_v3_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04m070_cin_showingoffjr.domino|@S04M070_CIN_ShowingOffJr_Main|912507335", "912507335", "S04M070_CIN_ShowingOffJr_Main", "box_PlaySequence_v5_2.Finished", "box_OnceOnly_v3_4.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_2_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_4()
  l0 = self.box_PlaySequence_v5_2
  l1 = self.box_OnceOnly_v3_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04m070_cin_showingoffjr.domino|@S04M070_CIN_ShowingOffJr_Main|440334166", "440334166", "S04M070_CIN_ShowingOffJr_Main", "box_PlaySequence_v5_2.Skipped", "box_OnceOnly_v3_4.In", l0, l1)
  l1:In(0)
end
function export:f_box_VisibilityController_v2_13_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  l0.TargetZone = "9223372063966591515"
  l0.SceneEntity = nil
  l0.RemoveBreakable = nil
  l0.RemoveCharacter = nil
  l0.RemoveVehicle = nil
  l0.RemoveWeapon = nil
  l0.RemoveDeadBody = nil
  l0.RemoveRigidPhysObject = nil
  l0.StopDialog = nil
  l0.NotRemovableEntity[0] = "9223372046622977133"
  l0.NotRemovableEntity[1] = nil
  l0._graph = self
  l0._name = "box_Cinema_Zone_Cleanup_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04m070_cin_showingoffjr.domino|@S04M070_CIN_ShowingOffJr_Main|986692588"
  l0._DynamicAnchors = {NotRemovableEntity = 2}
  l0.Out = self.f_box_Cinema_Zone_Cleanup_3_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04m070_cin_showingoffjr.domino|@S04M070_CIN_ShowingOffJr_Main|1759069759", "1759069759", "S04M070_CIN_ShowingOffJr_Main", "box_VisibilityController_v2_13.Hidden", "box_Cinema_Zone_Cleanup_3.CleanZone", clone, l0)
  l0:CleanZone()
end
function export:f_box_CinematicPrep_1_PreOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372053471671992"
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
  l0._name = "box_Lanes_Restrictions_Control_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04m070_cin_showingoffjr.domino|@S04M070_CIN_ShowingOffJr_Main|741860316"
  l0.Out = self.f_box_Lanes_Restrictions_Control_8_Out
  l0 = self.box_CinematicPrep_1
  l1 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04m070_cin_showingoffjr.domino|@S04M070_CIN_ShowingOffJr_Main|1092956466", "1092956466", "S04M070_CIN_ShowingOffJr_Main", "box_CinematicPrep_1.PreOut", "box_Lanes_Restrictions_Control_8.In", l0, l1)
  l1:In()
end
function export:f_box_Lanes_Restrictions_Control_8_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372065118502985"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04m070_cin_showingoffjr.domino|@S04M070_CIN_ShowingOffJr_Main|718831004"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_13_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04m070_cin_showingoffjr.domino|@S04M070_CIN_ShowingOffJr_Main|178070853", "178070853", "S04M070_CIN_ShowingOffJr_Main", "box_Lanes_Restrictions_Control_8.Out", "box_VisibilityController_v2_13.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Cinema_Zone_Cleanup_3_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04m070_cin_showingoffjr.domino|@S04M070_CIN_ShowingOffJr_Main|1297368124", "1297368124", "S04M070_CIN_ShowingOffJr_Main", "box_Cinema_Zone_Cleanup_3.Out", "box_Timer_v2_7.Start", clone, l0)
  l0:Start()
end
function export:f_box_Lanes_Restrictions_Control_9_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04m070_cin_showingoffjr.domino|@S04M070_CIN_ShowingOffJr_Main|664479588", "664479588", "S04M070_CIN_ShowingOffJr_Main", "box_Lanes_Restrictions_Control_9.Out", "Out", clone, self)
  self:Out()
end
function export:f_box_Timer_v2_7_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_2
  l0.SceneEntity = "9223372047235785394"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S04/S04_ShowingOffJr_CIN/s04_showingoffjr_cin.seq"
  l0 = self.box_Timer_v2_7
  l1 = self.box_PlaySequence_v5_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04m070_cin_showingoffjr.domino|@S04M070_CIN_ShowingOffJr_Main|235670549", "235670549", "S04M070_CIN_ShowingOffJr_Main", "box_Timer_v2_7.TimeElapsed", "box_PlaySequence_v5_2.Start", l0, l1)
  l1:Start()
end
function export:f_box_VisibilityController_v2_14_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372053471671992"
  l0.RestrictTraffic = 0
  l0.RestrictPedestrians = 0
  l0.RestrictParking = 0
  l0.ResetLivingCity = 1
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
  l0._name = "box_Lanes_Restrictions_Control_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04m070_cin_showingoffjr.domino|@S04M070_CIN_ShowingOffJr_Main|1146588568"
  l0.Out = self.f_box_Lanes_Restrictions_Control_9_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04m070_cin_showingoffjr.domino|@S04M070_CIN_ShowingOffJr_Main|2078696999", "2078696999", "S04M070_CIN_ShowingOffJr_Main", "box_VisibilityController_v2_14.Shown", "box_Lanes_Restrictions_Control_9.In", clone, l0)
  l0:In()
end
function export:OnEnter_box_OnceOnly_v3_4()
end
function export:Out()
end
_compilerVersion = 4
