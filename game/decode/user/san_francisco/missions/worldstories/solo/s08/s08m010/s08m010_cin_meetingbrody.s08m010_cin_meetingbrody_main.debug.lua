export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/LaneRestrictionsControl.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/SecurityCamController.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S08M010_CIN_MeetingBrody_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_meetingbrody.domino|@S08M010_CIN_MeetingBrody_Main"
  self.out = DummyFunction
  self.PlayerEntity = nil
  self.box_Timer_v2_7 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_7
  l0._graph = self
  l0._name = "box_Timer_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_meetingbrody.domino|@S08M010_CIN_MeetingBrody_Main|1073740173"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_7_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySequence_v5_6 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_6
  l0._graph = self
  l0._name = "box_PlaySequence_v5_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_meetingbrody.domino|@S08M010_CIN_MeetingBrody_Main|1330541748"
  l0._DynamicAnchors = {
    EntityIn = {"Horatio"}
  }
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_6_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_6_Finished
  self.box_Timer_v2_8 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_8
  l0._graph = self
  l0._name = "box_Timer_v2_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_meetingbrody.domino|@S08M010_CIN_MeetingBrody_Main|1411316433"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_8_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_OnceOnly_v3_4 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_4
  l0._graph = self
  l0._name = "box_OnceOnly_v3_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_meetingbrody.domino|@S08M010_CIN_MeetingBrody_Main|1614674925"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_4_Out
  l0.ResetOut = DummyFunction
  self.box_CinematicPrep_3 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_3
  l0._graph = self
  l0._name = "box_CinematicPrep_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_meetingbrody.domino|@S08M010_CIN_MeetingBrody_Main|2100941127"
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_meetingbrody.domino|@S08M010_CIN_MeetingBrody_Main|1742217476", "1742217476", "S08M010_CIN_MeetingBrody_Main", "In", "box_CinematicPrep_3.PreCinematic", self, l0)
  l0:PreCinematic()
end
function export:f_box_Lanes_Restrictions_Control_10_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_meetingbrody.domino|@S08M010_CIN_MeetingBrody_Main|1723570641", "1723570641", "S08M010_CIN_MeetingBrody_Main", "box_Lanes_Restrictions_Control_10.Out", "box_Timer_v2_7.Start", clone, l0)
  l0:Start()
end
function export:f_box_Timer_v2_7_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_6
  l0.SceneEntity = "9223372047502964432"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S08/S08_MeetingBrody_CIN/s08_meetingbrody_cin.seq"
  l0.EntityIn.Horatio = self.Horatio
  l0 = self.box_Timer_v2_7
  l1 = self.box_PlaySequence_v5_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_meetingbrody.domino|@S08M010_CIN_MeetingBrody_Main|1246673365", "1246673365", "S08M010_CIN_MeetingBrody_Main", "box_Timer_v2_7.TimeElapsed", "box_PlaySequence_v5_6.Start", l0, l1)
  l1:Start()
end
function export:f_box_SecurityCamController_1_UserForcedOutOfCamera()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372055531560417"
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
  l0._name = "box_Lanes_Restrictions_Control_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_meetingbrody.domino|@S08M010_CIN_MeetingBrody_Main|585639713"
  l0.Out = self.f_box_Lanes_Restrictions_Control_10_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_meetingbrody.domino|@S08M010_CIN_MeetingBrody_Main|541002172", "541002172", "S08M010_CIN_MeetingBrody_Main", "box_SecurityCamController_1.UserForcedOutOfCamera", "box_Lanes_Restrictions_Control_10.In", clone, l0)
  l0:In()
end
function export:f_box_PlaySequence_v5_6_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_4()
  l0 = self.box_PlaySequence_v5_6
  l1 = self.box_OnceOnly_v3_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_meetingbrody.domino|@S08M010_CIN_MeetingBrody_Main|1688154123", "1688154123", "S08M010_CIN_MeetingBrody_Main", "box_PlaySequence_v5_6.Finished", "box_OnceOnly_v3_4.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_6_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_4()
  l0 = self.box_PlaySequence_v5_6
  l1 = self.box_OnceOnly_v3_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_meetingbrody.domino|@S08M010_CIN_MeetingBrody_Main|1594801997", "1594801997", "S08M010_CIN_MeetingBrody_Main", "box_PlaySequence_v5_6.Skipped", "box_OnceOnly_v3_4.In", l0, l1)
  l1:In(0)
end
function export:f_box_Timer_v2_8_TimeElapsed()
  local l0
  self = self._graph
  l0 = self.box_Timer_v2_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_meetingbrody.domino|@S08M010_CIN_MeetingBrody_Main|1978440608", "1978440608", "S08M010_CIN_MeetingBrody_Main", "box_Timer_v2_8.TimeElapsed", "out", l0, self)
  self:out()
end
function export:f_box_OnceOnly_v3_4_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_OnceOnly_v3_4
  l1 = self.box_Timer_v2_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_meetingbrody.domino|@S08M010_CIN_MeetingBrody_Main|776640110", "776640110", "S08M010_CIN_MeetingBrody_Main", "box_OnceOnly_v3_4.Out", "box_Timer_v2_8.Start", l0, l1)
  l1:Start()
end
function export:f_box_CinematicPrep_3_PreOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = nil
  l0.CameraEntityList = nil
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = nil
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0._name = "box_SecurityCamController_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_meetingbrody.domino|@S08M010_CIN_MeetingBrody_Main|1133465785"
  l0.EnterSet = DummyFunction
  l0.CanExitSet = DummyFunction
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = self.f_box_SecurityCamController_1_UserForcedOutOfCamera
  l0.EnterForced = DummyFunction
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
  l0 = self.box_CinematicPrep_3
  l1 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_meetingbrody.domino|@S08M010_CIN_MeetingBrody_Main|199846398", "199846398", "S08M010_CIN_MeetingBrody_Main", "box_CinematicPrep_3.PreOut", "box_SecurityCamController_1.ForceUserOutOfCamera", l0, l1)
  l1:ForceUserOutOfCamera()
end
function export:OnEnter_box_OnceOnly_v3_4()
end
function export:out()
end
_compilerVersion = 4
