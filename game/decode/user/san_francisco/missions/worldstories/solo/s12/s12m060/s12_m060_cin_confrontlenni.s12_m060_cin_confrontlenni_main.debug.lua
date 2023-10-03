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
end
function export:Init(cbox)
  local l0
  self._name = "S12_M060_CIN_ConfrontLenni_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12_M060_CIN_ConfrontLenni.domino|@S12_M060_CIN_ConfrontLenni_Main"
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.box_CinematicPrep_1 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_1
  l0._graph = self
  l0._name = "box_CinematicPrep_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12_M060_CIN_ConfrontLenni.domino|@S12_M060_CIN_ConfrontLenni_Main|782449769"
  l0.PreOut = self.f_box_CinematicPrep_1_PreOut
  l0.PostOut = DummyFunction
  self.box_Timer_v2_8 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_8
  l0._graph = self
  l0._name = "box_Timer_v2_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12_M060_CIN_ConfrontLenni.domino|@S12_M060_CIN_ConfrontLenni_Main|874573792"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_8_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_OnceOnly_v3_5 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_5
  l0._graph = self
  l0._name = "box_OnceOnly_v3_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12_M060_CIN_ConfrontLenni.domino|@S12_M060_CIN_ConfrontLenni_Main|931713533"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_5_Out
  l0.ResetOut = DummyFunction
  self.box_PlaySequence_v5_9 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_9
  l0._graph = self
  l0._name = "box_PlaySequence_v5_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12_M060_CIN_ConfrontLenni.domino|@S12_M060_CIN_ConfrontLenni_Main|2067996497"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_9_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_9_Finished
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
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12_M060_CIN_ConfrontLenni.domino|@S12_M060_CIN_ConfrontLenni_Main|1919915620", "1919915620", "S12_M060_CIN_ConfrontLenni_Main", "In", "box_CinematicPrep_1.PreCinematic", self, l0)
  l0:PreCinematic()
end
function export:f_box_Lanes_Restrictions_Control_3_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12_M060_CIN_ConfrontLenni.domino|@S12_M060_CIN_ConfrontLenni_Main|1521843720", "1521843720", "S12_M060_CIN_ConfrontLenni_Main", "box_Lanes_Restrictions_Control_3.Out", "box_Timer_v2_8.Start", clone, l0)
  l0:Start()
end
function export:f_box_CinematicPrep_1_PreOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  l0.TargetZone = "9223372069614155730"
  l0.SceneEntity = nil
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
  l0._name = "box_Cinema_Zone_Cleanup_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12_M060_CIN_ConfrontLenni.domino|@S12_M060_CIN_ConfrontLenni_Main|1362782777"
  l0._DynamicAnchors = {NotRemovableEntity = 2}
  l0.Out = self.f_box_Cinema_Zone_Cleanup_4_Out
  l0 = self.box_CinematicPrep_1
  l1 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12_M060_CIN_ConfrontLenni.domino|@S12_M060_CIN_ConfrontLenni_Main|375561110", "375561110", "S12_M060_CIN_ConfrontLenni_Main", "box_CinematicPrep_1.PreOut", "box_Cinema_Zone_Cleanup_4.CleanZone", l0, l1)
  l1:CleanZone()
end
function export:f_box_Timer_v2_8_TimeElapsed()
  local l0
  self = self._graph
  l0 = self.box_Timer_v2_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12_M060_CIN_ConfrontLenni.domino|@S12_M060_CIN_ConfrontLenni_Main|1287074192", "1287074192", "S12_M060_CIN_ConfrontLenni_Main", "box_Timer_v2_8.TimeElapsed", "Out", l0, self)
  self:Out()
end
function export:f_box_OnceOnly_v3_5_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372056634011434"
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
  l0._name = "box_Lanes_Restrictions_Control_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12_M060_CIN_ConfrontLenni.domino|@S12_M060_CIN_ConfrontLenni_Main|338063349"
  l0.Out = self.f_box_Lanes_Restrictions_Control_3_Out
  l0 = self.box_OnceOnly_v3_5
  l1 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12_M060_CIN_ConfrontLenni.domino|@S12_M060_CIN_ConfrontLenni_Main|2088851097", "2088851097", "S12_M060_CIN_ConfrontLenni_Main", "box_OnceOnly_v3_5.Out", "box_Lanes_Restrictions_Control_3.In", l0, l1)
  l1:In()
end
function export:f_box_Cinema_Zone_Cleanup_4_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372056634011434"
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
  l0._name = "box_Lanes_Restrictions_Control_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12_M060_CIN_ConfrontLenni.domino|@S12_M060_CIN_ConfrontLenni_Main|2109203820"
  l0.Out = self.f_box_Lanes_Restrictions_Control_2_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12_M060_CIN_ConfrontLenni.domino|@S12_M060_CIN_ConfrontLenni_Main|2016730593", "2016730593", "S12_M060_CIN_ConfrontLenni_Main", "box_Cinema_Zone_Cleanup_4.Out", "box_Lanes_Restrictions_Control_2.In", clone, l0)
  l0:In()
end
function export:f_box_PlaySequence_v5_9_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_5()
  l0 = self.box_PlaySequence_v5_9
  l1 = self.box_OnceOnly_v3_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12_M060_CIN_ConfrontLenni.domino|@S12_M060_CIN_ConfrontLenni_Main|536820171", "536820171", "S12_M060_CIN_ConfrontLenni_Main", "box_PlaySequence_v5_9.Finished", "box_OnceOnly_v3_5.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_9_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_5()
  l0 = self.box_PlaySequence_v5_9
  l1 = self.box_OnceOnly_v3_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12_M060_CIN_ConfrontLenni.domino|@S12_M060_CIN_ConfrontLenni_Main|1650460166", "1650460166", "S12_M060_CIN_ConfrontLenni_Main", "box_PlaySequence_v5_9.Skipped", "box_OnceOnly_v3_5.In", l0, l1)
  l1:In(0)
end
function export:f_box_Lanes_Restrictions_Control_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_9
  l0.SceneEntity = "9223372047235832453"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S12/S12_ConfrontLenni_CIN/s12_confrontlenni_cin.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12_M060_CIN_ConfrontLenni.domino|@S12_M060_CIN_ConfrontLenni_Main|2084667660", "2084667660", "S12_M060_CIN_ConfrontLenni_Main", "box_Lanes_Restrictions_Control_2.Out", "box_PlaySequence_v5_9.Start", clone, l0)
  l0:Start()
end
function export:OnEnter_box_OnceOnly_v3_5()
end
function export:Out()
end
_compilerVersion = 4
