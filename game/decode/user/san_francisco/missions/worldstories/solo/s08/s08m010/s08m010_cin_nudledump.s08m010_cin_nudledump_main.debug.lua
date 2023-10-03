export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CinemaZoneCleanup.lua")
  cbox:RegisterBox("domino/System/LaneRestrictionsControl.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S08M010_CIN_NudleDump_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_nudledump.domino|@S08M010_CIN_NudleDump_Main"
  self.out = DummyFunction
  self.PlayerEntity = nil
  self.box_OnceOnly_v3_1 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_1
  l0._graph = self
  l0._name = "box_OnceOnly_v3_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_nudledump.domino|@S08M010_CIN_NudleDump_Main|1393552528"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_1_Out
  l0.ResetOut = DummyFunction
  self.box_PlaySequence_v5_2 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_2
  l0._graph = self
  l0._name = "box_PlaySequence_v5_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_nudledump.domino|@S08M010_CIN_NudleDump_Main|1396895185"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_2_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_2_Finished
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
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372058563870750"
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
  l0._name = "box_Lanes_Restrictions_Control_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_nudledump.domino|@S08M010_CIN_NudleDump_Main|1927280477"
  l0.Out = self.f_box_Lanes_Restrictions_Control_4_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_nudledump.domino|@S08M010_CIN_NudleDump_Main|1312485812", "1312485812", "S08M010_CIN_NudleDump_Main", "In", "box_Lanes_Restrictions_Control_4.In", self, l0)
  l0:In()
end
function export:f_box_Cinema_Zone_Cleanup_5_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_2
  l0.SceneEntity = "9223372047235791823"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S08/S08_NudleDump_CIN/s08_nudledump_cin.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_nudledump.domino|@S08M010_CIN_NudleDump_Main|1002659491", "1002659491", "S08M010_CIN_NudleDump_Main", "box_Cinema_Zone_Cleanup_5.Out", "box_PlaySequence_v5_2.Start", clone, l0)
  l0:Start()
end
function export:f_box_OnceOnly_v3_1_Out()
  local l0
  self = self._graph
  l0 = self.box_OnceOnly_v3_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_nudledump.domino|@S08M010_CIN_NudleDump_Main|279832960", "279832960", "S08M010_CIN_NudleDump_Main", "box_OnceOnly_v3_1.Out", "out", l0, self)
  self:out()
end
function export:f_box_PlaySequence_v5_2_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_1()
  l0 = self.box_PlaySequence_v5_2
  l1 = self.box_OnceOnly_v3_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_nudledump.domino|@S08M010_CIN_NudleDump_Main|1341261527", "1341261527", "S08M010_CIN_NudleDump_Main", "box_PlaySequence_v5_2.Finished", "box_OnceOnly_v3_1.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_2_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_1()
  l0 = self.box_PlaySequence_v5_2
  l1 = self.box_OnceOnly_v3_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_nudledump.domino|@S08M010_CIN_NudleDump_Main|1965843109", "1965843109", "S08M010_CIN_NudleDump_Main", "box_PlaySequence_v5_2.Skipped", "box_OnceOnly_v3_1.In", l0, l1)
  l1:In(0)
end
function export:f_box_Lanes_Restrictions_Control_4_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  l0.TargetZone = "9223372058563870751"
  l0.SceneEntity = "9223372047235791823"
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
  l0._name = "box_Cinema_Zone_Cleanup_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_nudledump.domino|@S08M010_CIN_NudleDump_Main|113702208"
  l0._DynamicAnchors = {NotRemovableEntity = 2}
  l0.Out = self.f_box_Cinema_Zone_Cleanup_5_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_nudledump.domino|@S08M010_CIN_NudleDump_Main|2108310513", "2108310513", "S08M010_CIN_NudleDump_Main", "box_Lanes_Restrictions_Control_4.Out", "box_Cinema_Zone_Cleanup_5.CleanZone", clone, l0)
  l0:CleanZone()
end
function export:OnEnter_box_OnceOnly_v3_1()
end
function export:out()
end
_compilerVersion = 4
