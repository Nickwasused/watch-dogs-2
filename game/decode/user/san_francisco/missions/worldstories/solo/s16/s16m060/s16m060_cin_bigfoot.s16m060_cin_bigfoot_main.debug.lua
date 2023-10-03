export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/LaneRestrictionsControl.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S16/S16M060/s16m060_scr.sc16m060_SCR_Main.debug.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S16M060_CIN_BigFoot_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_cin_bigfoot.domino|@S16M060_CIN_BigFoot_Main"
  self.cin_out = DummyFunction
  self.PlayerEntity = nil
  self.box_sc16m060_SCR_Main_8 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S16/S16M060/s16m060_scr.sc16m060_SCR_Main.debug.lua")
  l0 = self.box_sc16m060_SCR_Main_8
  l0._graph = self
  l0._name = "box_sc16m060_SCR_Main_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_cin_bigfoot.domino|@S16M060_CIN_BigFoot_Main|268890396"
  l0.out = DummyFunction
  l0.DroneUnspawned = self.f_box_sc16m060_SCR_Main_8_DroneUnspawned
  self.box_PlaySequence_v5_6 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_6
  l0._graph = self
  l0._name = "box_PlaySequence_v5_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_cin_bigfoot.domino|@S16M060_CIN_BigFoot_Main|601109525"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_6_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_6_Finished
  self.box_MultipleOR_2 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_2
  l0._graph = self
  l0._name = "box_MultipleOR_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_cin_bigfoot.domino|@S16M060_CIN_BigFoot_Main|772013456"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_2_Out
  self.box_Timer_v2_7 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_7
  l0._graph = self
  l0._name = "box_Timer_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_cin_bigfoot.domino|@S16M060_CIN_BigFoot_Main|1432325773"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_7_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CinematicPrep_1 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_1
  l0._graph = self
  l0._name = "box_CinematicPrep_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_cin_bigfoot.domino|@S16M060_CIN_BigFoot_Main|1948543796"
  l0.PreOut = self.f_box_CinematicPrep_1_PreOut
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
  l0 = self.box_CinematicPrep_1
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_cin_bigfoot.domino|@S16M060_CIN_BigFoot_Main|1477826808", "1477826808", "S16M060_CIN_BigFoot_Main", "In", "box_CinematicPrep_1.PreCinematic", self, l0)
  l0:PreCinematic()
end
function export:f_box_sc16m060_SCR_Main_8_DroneUnspawned()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372052004915798"
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_cin_bigfoot.domino|@S16M060_CIN_BigFoot_Main|1739411411"
  l0.Out = self.f_box_Lanes_Restrictions_Control_4_Out
  l0 = self.box_sc16m060_SCR_Main_8
  l1 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_cin_bigfoot.domino|@S16M060_CIN_BigFoot_Main|1053034327", "1053034327", "S16M060_CIN_BigFoot_Main", "box_sc16m060_SCR_Main_8.DroneUnspawned", "box_Lanes_Restrictions_Control_4.In", l0, l1)
  l1:In()
end
function export:f_box_PlaySequence_v5_6_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_2()
  l0 = self.box_PlaySequence_v5_6
  l1 = self.box_MultipleOR_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_cin_bigfoot.domino|@S16M060_CIN_BigFoot_Main|969603244", "969603244", "S16M060_CIN_BigFoot_Main", "box_PlaySequence_v5_6.Finished", "box_MultipleOR_2.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_PlaySequence_v5_6_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_2()
  l0 = self.box_PlaySequence_v5_6
  l1 = self.box_MultipleOR_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_cin_bigfoot.domino|@S16M060_CIN_BigFoot_Main|1478685930", "1478685930", "S16M060_CIN_BigFoot_Main", "box_PlaySequence_v5_6.Skipped", "box_MultipleOR_2.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MultipleOR_2_Out()
  local l0
  self = self._graph
  l0 = self.box_MultipleOR_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_cin_bigfoot.domino|@S16M060_CIN_BigFoot_Main|1352109252", "1352109252", "S16M060_CIN_BigFoot_Main", "box_MultipleOR_2.Out", "cin_out", l0, self)
  self:cin_out()
end
function export:f_box_Timer_v2_7_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_6
  l0.SceneEntity = "9223372047235835169"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S16/S16_BigFoot_CIN/s16_bigfoot_cin.seq"
  l0 = self.box_Timer_v2_7
  l1 = self.box_PlaySequence_v5_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_cin_bigfoot.domino|@S16M060_CIN_BigFoot_Main|1751180064", "1751180064", "S16M060_CIN_BigFoot_Main", "box_Timer_v2_7.TimeElapsed", "box_PlaySequence_v5_6.Start", l0, l1)
  l1:Start()
end
function export:f_box_Lanes_Restrictions_Control_4_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_cin_bigfoot.domino|@S16M060_CIN_BigFoot_Main|1303529111", "1303529111", "S16M060_CIN_BigFoot_Main", "box_Lanes_Restrictions_Control_4.Out", "box_Timer_v2_7.Start", clone, l0)
  l0:Start()
end
function export:f_box_CinematicPrep_1_PreOut()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_1
  l1 = self.box_sc16m060_SCR_Main_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_cin_bigfoot.domino|@S16M060_CIN_BigFoot_Main|818509811", "818509811", "S16M060_CIN_BigFoot_Main", "box_CinematicPrep_1.PreOut", "box_sc16m060_SCR_Main_8.UnspawnDrone", l0, l1)
  l1:UnspawnDrone()
end
function export:OnEnter_box_MultipleOR_2()
end
function export:cin_out()
end
_compilerVersion = 4
