export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/LaneRestrictionsControl.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/TeleportToSpawnPoint.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S02M040_CIN_MirandaKnows_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_cin_mirandaknows.domino|@S02M040_CIN_MirandaKnows_Main"
  self.EndCine = DummyFunction
  self.PlayerEntity = nil
  self.box_OnceOnly_v3_7 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_7
  l0._graph = self
  l0._name = "box_OnceOnly_v3_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_cin_mirandaknows.domino|@S02M040_CIN_MirandaKnows_Main|584810077"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_7_Out
  l0.ResetOut = DummyFunction
  self.box_Timer_v2_10 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_10
  l0._graph = self
  l0._name = "box_Timer_v2_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_cin_mirandaknows.domino|@S02M040_CIN_MirandaKnows_Main|706497405"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_10_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CinematicPrep_6 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_6
  l0._graph = self
  l0._name = "box_CinematicPrep_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_cin_mirandaknows.domino|@S02M040_CIN_MirandaKnows_Main|927789892"
  l0.PreOut = self.f_box_CinematicPrep_6_PreOut
  l0.PostOut = DummyFunction
  self.box_PlaySequence_v5_1 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_1
  l0._graph = self
  l0._name = "box_PlaySequence_v5_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_cin_mirandaknows.domino|@S02M040_CIN_MirandaKnows_Main|1463560004"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_1_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_1_Finished
  self.box_Teleport_To_SpawnPoint_2 = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self.box_Teleport_To_SpawnPoint_2
  l0._graph = self
  l0._name = "box_Teleport_To_SpawnPoint_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_cin_mirandaknows.domino|@S02M040_CIN_MirandaKnows_Main|1550163378"
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_box_Teleport_To_SpawnPoint_2_TeleportDone
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
  l0 = self.box_CinematicPrep_6
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_cin_mirandaknows.domino|@S02M040_CIN_MirandaKnows_Main|1769686007", "1769686007", "S02M040_CIN_MirandaKnows_Main", "In", "box_CinematicPrep_6.PreCinematic", self, l0)
  l0:PreCinematic()
end
function export:f_box_OnceOnly_v3_7_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Teleport_To_SpawnPoint_2
  l0.SpawnPoint = "9223372047975975433"
  l0.UseFadeToBlack = 0
  l0.KeepBlackScreenOnExit = 1
  l0 = self.box_OnceOnly_v3_7
  l1 = self.box_Teleport_To_SpawnPoint_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_cin_mirandaknows.domino|@S02M040_CIN_MirandaKnows_Main|819173348", "819173348", "S02M040_CIN_MirandaKnows_Main", "box_OnceOnly_v3_7.Out", "box_Teleport_To_SpawnPoint_2.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_10_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372055311978282"
  l0.RestrictTraffic = nil
  l0.RestrictPedestrians = 0
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
  l0._name = "box_Lanes_Restrictions_Control_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_cin_mirandaknows.domino|@S02M040_CIN_MirandaKnows_Main|1313256383"
  l0.Out = self.f_box_Lanes_Restrictions_Control_9_Out
  l0 = self.box_Timer_v2_10
  l1 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_cin_mirandaknows.domino|@S02M040_CIN_MirandaKnows_Main|89191453", "89191453", "S02M040_CIN_MirandaKnows_Main", "box_Timer_v2_10.TimeElapsed", "box_Lanes_Restrictions_Control_9.In", l0, l1)
  l1:In()
end
function export:f_box_CinematicPrep_6_PreOut()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_1
  l0.SceneEntity = "9223372047235755312"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S02/S02_MirandaKnows_CIN/s02_mirandaknows_cin.seq"
  l0 = self.box_CinematicPrep_6
  l1 = self.box_PlaySequence_v5_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_cin_mirandaknows.domino|@S02M040_CIN_MirandaKnows_Main|1881024429", "1881024429", "S02M040_CIN_MirandaKnows_Main", "box_CinematicPrep_6.PreOut", "box_PlaySequence_v5_1.Start", l0, l1)
  l1:Start()
end
function export:f_box_Lanes_Restrictions_Control_9_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_cin_mirandaknows.domino|@S02M040_CIN_MirandaKnows_Main|1744312154", "1744312154", "S02M040_CIN_MirandaKnows_Main", "box_Lanes_Restrictions_Control_9.Out", "EndCine", clone, self)
  self:EndCine()
end
function export:f_box_PlaySequence_v5_1_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_7()
  l0 = self.box_PlaySequence_v5_1
  l1 = self.box_OnceOnly_v3_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_cin_mirandaknows.domino|@S02M040_CIN_MirandaKnows_Main|1824921563", "1824921563", "S02M040_CIN_MirandaKnows_Main", "box_PlaySequence_v5_1.Finished", "box_OnceOnly_v3_7.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_1_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_7()
  l0 = self.box_PlaySequence_v5_1
  l1 = self.box_OnceOnly_v3_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_cin_mirandaknows.domino|@S02M040_CIN_MirandaKnows_Main|217573469", "217573469", "S02M040_CIN_MirandaKnows_Main", "box_PlaySequence_v5_1.Skipped", "box_OnceOnly_v3_7.In", l0, l1)
  l1:In(0)
end
function export:f_box_Teleport_To_SpawnPoint_2_TeleportDone()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_10
  l0.Seconds = 1.5
  l0 = self.box_Teleport_To_SpawnPoint_2
  l1 = self.box_Timer_v2_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\s02m040_cin_mirandaknows.domino|@S02M040_CIN_MirandaKnows_Main|223463803", "223463803", "S02M040_CIN_MirandaKnows_Main", "box_Teleport_To_SpawnPoint_2.TeleportDone", "box_Timer_v2_10.Start", l0, l1)
  l1:Start()
end
function export:OnEnter_box_OnceOnly_v3_7()
end
function export:EndCine()
end
_compilerVersion = 4
