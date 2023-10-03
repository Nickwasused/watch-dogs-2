export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CinemaZoneCleanup.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/DebugExecuteConsole_v2.lua")
  cbox:RegisterBox("domino/System/LaneRestrictionsControl.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S13_M010_CIN_RocketBromance_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\s13_m010_cin_rocketbromance.domino|@S13_M010_CIN_RocketBromance_Main"
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.box_OnceOnly_v3_7 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_7
  l0._graph = self
  l0._name = "box_OnceOnly_v3_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\s13_m010_cin_rocketbromance.domino|@S13_M010_CIN_RocketBromance_Main|1010947558"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_7_Out
  l0.ResetOut = DummyFunction
  self.box_PlaySequence_v5_4 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_4
  l0._graph = self
  l0._name = "box_PlaySequence_v5_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\s13_m010_cin_rocketbromance.domino|@S13_M010_CIN_RocketBromance_Main|1490524527"
  l0.Started = self.f_box_PlaySequence_v5_4_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_4_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_4_Finished
  self.box_Timer_v2_13 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_13
  l0._graph = self
  l0._name = "box_Timer_v2_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\s13_m010_cin_rocketbromance.domino|@S13_M010_CIN_RocketBromance_Main|1586236360"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_13_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CinematicPrep_3 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_3
  l0._graph = self
  l0._name = "box_CinematicPrep_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\s13_m010_cin_rocketbromance.domino|@S13_M010_CIN_RocketBromance_Main|1599767069"
  l0.PreOut = self.f_box_CinematicPrep_3_PreOut
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
  l0 = self.box_CinematicPrep_3
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\s13_m010_cin_rocketbromance.domino|@S13_M010_CIN_RocketBromance_Main|822556834", "822556834", "S13_M010_CIN_RocketBromance_Main", "In", "box_CinematicPrep_3.PreCinematic", self, l0)
  l0:PreCinematic()
end
function export:f_box_DebugExecuteConsole_v2_9_Executed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "gfx_lightProbesForceUpdateAll 1"
  l0._graph = self
  l0._name = "box_DebugExecuteConsole_v2_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\s13_m010_cin_rocketbromance.domino|@S13_M010_CIN_RocketBromance_Main|893845017"
  l0.Executed = self.f_box_DebugExecuteConsole_v2_10_Executed
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\s13_m010_cin_rocketbromance.domino|@S13_M010_CIN_RocketBromance_Main|725595695", "725595695", "S13_M010_CIN_RocketBromance_Main", "box_DebugExecuteConsole_v2_9.Executed", "box_DebugExecuteConsole_v2_10.Execute", clone, l0)
  l0:Execute()
end
function export:f_box_Lanes_Restrictions_Control_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_4
  l0.SceneEntity = "9223372047235832454"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S13/S13_RocketBromance_CIN/s13_rocketbromance_cin.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\s13_m010_cin_rocketbromance.domino|@S13_M010_CIN_RocketBromance_Main|1503165697", "1503165697", "S13_M010_CIN_RocketBromance_Main", "box_Lanes_Restrictions_Control_2.Out", "box_PlaySequence_v5_4.Start", clone, l0)
  l0:Start()
end
function export:f_box_Lanes_Restrictions_Control_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\s13_m010_cin_rocketbromance.domino|@S13_M010_CIN_RocketBromance_Main|227695519", "227695519", "S13_M010_CIN_RocketBromance_Main", "box_Lanes_Restrictions_Control_1.Out", "Out", clone, self)
  self:Out()
end
function export:f_box_DebugExecuteConsole_v2_11_Executed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "fx_lightProbesForceUpdateAll 0"
  l0._graph = self
  l0._name = "box_DebugExecuteConsole_v2_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\s13_m010_cin_rocketbromance.domino|@S13_M010_CIN_RocketBromance_Main|1756104375"
  l0.Executed = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\s13_m010_cin_rocketbromance.domino|@S13_M010_CIN_RocketBromance_Main|1019972859", "1019972859", "S13_M010_CIN_RocketBromance_Main", "box_DebugExecuteConsole_v2_11.Executed", "box_DebugExecuteConsole_v2_12.Execute", clone, l0)
  l0:Execute()
end
function export:f_box_DebugExecuteConsole_v2_10_Executed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  l0.TargetZone = "9223372061675005032"
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
  l0._name = "box_Cinema_Zone_Cleanup_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\s13_m010_cin_rocketbromance.domino|@S13_M010_CIN_RocketBromance_Main|1578019453"
  l0._DynamicAnchors = {NotRemovableEntity = 2}
  l0.Out = self.f_box_Cinema_Zone_Cleanup_8_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\s13_m010_cin_rocketbromance.domino|@S13_M010_CIN_RocketBromance_Main|1805959310", "1805959310", "S13_M010_CIN_RocketBromance_Main", "box_DebugExecuteConsole_v2_10.Executed", "box_Cinema_Zone_Cleanup_8.CleanZone", clone, l0)
  l0:CleanZone()
end
function export:f_box_OnceOnly_v3_7_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372061675005031"
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
  l0._name = "box_Lanes_Restrictions_Control_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\s13_m010_cin_rocketbromance.domino|@S13_M010_CIN_RocketBromance_Main|625789603"
  l0.Out = self.f_box_Lanes_Restrictions_Control_1_Out
  l0 = self.box_OnceOnly_v3_7
  l1 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\s13_m010_cin_rocketbromance.domino|@S13_M010_CIN_RocketBromance_Main|2054762", "2054762", "S13_M010_CIN_RocketBromance_Main", "box_OnceOnly_v3_7.Out", "box_Lanes_Restrictions_Control_1.In", l0, l1)
  l1:In()
end
function export:f_box_PlaySequence_v5_4_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_7()
  l0 = self.box_PlaySequence_v5_4
  l1 = self.box_OnceOnly_v3_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\s13_m010_cin_rocketbromance.domino|@S13_M010_CIN_RocketBromance_Main|1766235367", "1766235367", "S13_M010_CIN_RocketBromance_Main", "box_PlaySequence_v5_4.Finished", "box_OnceOnly_v3_7.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_4_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_7()
  l0 = self.box_PlaySequence_v5_4
  l1 = self.box_OnceOnly_v3_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\s13_m010_cin_rocketbromance.domino|@S13_M010_CIN_RocketBromance_Main|1525873918", "1525873918", "S13_M010_CIN_RocketBromance_Main", "box_PlaySequence_v5_4.Skipped", "box_OnceOnly_v3_7.In", l0, l1)
  l1:In(0)
end
function export:f_box_PlaySequence_v5_4_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_4
  l1 = self.box_Timer_v2_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\s13_m010_cin_rocketbromance.domino|@S13_M010_CIN_RocketBromance_Main|156518926", "156518926", "S13_M010_CIN_RocketBromance_Main", "box_PlaySequence_v5_4.Started", "box_Timer_v2_13.Start", l0, l1)
  l1:Start()
end
function export:f_box_Cinema_Zone_Cleanup_8_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372061675005031"
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\s13_m010_cin_rocketbromance.domino|@S13_M010_CIN_RocketBromance_Main|115306789"
  l0.Out = self.f_box_Lanes_Restrictions_Control_2_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\s13_m010_cin_rocketbromance.domino|@S13_M010_CIN_RocketBromance_Main|1238951933", "1238951933", "S13_M010_CIN_RocketBromance_Main", "box_Cinema_Zone_Cleanup_8.Out", "box_Lanes_Restrictions_Control_2.In", clone, l0)
  l0:In()
end
function export:f_box_Timer_v2_13_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "gfx_reflectionUpdateCountPerFrame 1"
  l0._graph = self
  l0._name = "box_DebugExecuteConsole_v2_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\s13_m010_cin_rocketbromance.domino|@S13_M010_CIN_RocketBromance_Main|778090147"
  l0.Executed = self.f_box_DebugExecuteConsole_v2_11_Executed
  l0 = self.box_Timer_v2_13
  l1 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\s13_m010_cin_rocketbromance.domino|@S13_M010_CIN_RocketBromance_Main|669924023", "669924023", "S13_M010_CIN_RocketBromance_Main", "box_Timer_v2_13.TimeElapsed", "box_DebugExecuteConsole_v2_11.Execute", l0, l1)
  l1:Execute()
end
function export:f_box_CinematicPrep_3_PreOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "gfx_reflectionUpdateCountPerFrame 15 "
  l0._graph = self
  l0._name = "box_DebugExecuteConsole_v2_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\s13_m010_cin_rocketbromance.domino|@S13_M010_CIN_RocketBromance_Main|54875355"
  l0.Executed = self.f_box_DebugExecuteConsole_v2_9_Executed
  l0 = self.box_CinematicPrep_3
  l1 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\s13_m010_cin_rocketbromance.domino|@S13_M010_CIN_RocketBromance_Main|193519256", "193519256", "S13_M010_CIN_RocketBromance_Main", "box_CinematicPrep_3.PreOut", "box_DebugExecuteConsole_v2_9.Execute", l0, l1)
  l1:Execute()
end
function export:OnEnter_box_OnceOnly_v3_7()
end
function export:Out()
end
_compilerVersion = 4
