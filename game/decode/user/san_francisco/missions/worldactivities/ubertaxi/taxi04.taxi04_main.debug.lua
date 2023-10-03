export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  cbox:RegisterBox("domino/System/FollowPathComponentController.lua")
  cbox:RegisterBox("domino/System/FollowPathComponentMonitor.lua")
  cbox:RegisterBox("domino/System/GameplayInteractionController.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/MapPointController_v4.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/ParticleFxController_v2.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.debug.lua")
  cbox:RegisterBox("domino/System/TaxiRatingController.lua")
  cbox:RegisterBox("domino/System/TaxiRidePickUpController.lua")
  cbox:RegisterBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  cbox:RegisterBox("domino/System/TaxiRideVehicleMonitor.lua")
  cbox:RegisterBox("domino/System/TaxiStrategiesController.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TutorialController.lua")
end
function export:Init(cbox)
  local l0
  self._name = "Taxi04_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main"
  self.PlayerEntity = nil
  self.MissionLayer = "Taxi04_Main"
  self.Mission = "MissionList.9223372046134522670"
  self.PlayerVehicle = nil
  self.CLOClient = "9223372046134562448"
  self.IconVehicle = "9223372046134562450"
  self.Client = nil
  self.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF040",
    item = "Objective_01",
    id = "581661"
  }
  self.ChasingDrone = 0
  self.ActorList = {}
  self.InteractionID = 0
  self.box_MultipleOR_34 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_34
  l0._graph = self
  l0._name = "box_MultipleOR_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|45003600"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_34_Out
  self.box_FollowPathMonitor_29 = cbox:CreateBox("domino/System/FollowPathComponentMonitor.lua")
  l0 = self.box_FollowPathMonitor_29
  l0._graph = self
  l0._name = "box_FollowPathMonitor_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|61162038"
  l0.Enabled = self.f_box_FollowPathMonitor_29_Enabled
  l0.Disabled = self.f_box_FollowPathMonitor_29_Disabled
  l0.SpecificPointReached = DummyFunction
  l0.CurrentPointReached = DummyFunction
  l0.EndPointReached = self.f_box_FollowPathMonitor_29_EndPointReached
  l0.OutOfRange = self.f_box_FollowPathMonitor_29_OutOfRange
  l0.BackInRange = self.f_box_FollowPathMonitor_29_BackInRange
  self.box_MultipleOR_62 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_62
  l0._graph = self
  l0._name = "box_MultipleOR_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|64011172"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_62_Out
  self.box_DriveAndTalk_1 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_1
  l0._graph = self
  l0._name = "box_DriveAndTalk_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|137380062"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_1_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_1_TalkFailed
  self.box_Timer_v2_45 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_45
  l0._graph = self
  l0._name = "box_Timer_v2_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|159967855"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_45_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_SetBoolean_v2_57 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_57
  l0._graph = self
  l0._name = "box_SetBoolean_v2_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|188036823"
  l0.Out = self.f_box_SetBoolean_v2_57_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_57_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_57_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_57_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_57_SetFromBool
  self.box_DriveAndTalk_25 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_25
  l0._graph = self
  l0._name = "box_DriveAndTalk_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|229247814"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = self.f_box_DriveAndTalk_25_TalkStarted
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_25_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_25_TalkFailed
  self.box_MissionLayer_v2_21 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_21
  l0._graph = self
  l0._name = "box_MissionLayer_v2_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|238560237"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_21_Unloaded
  l0.Reseted = DummyFunction
  self.box_MissionMessageController_v3_48 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_48
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|262965866"
  l0.Out = self.f_box_MissionMessageController_v3_48_Out
  l0.MessageCompleted = DummyFunction
  self.box_Timer_v2_2 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_2
  l0._graph = self
  l0._name = "box_Timer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|314213124"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_2_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_TaxiRideReachDestinationMonitor_10 = cbox:CreateBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self.box_TaxiRideReachDestinationMonitor_10
  l0._graph = self
  l0._name = "box_TaxiRideReachDestinationMonitor_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|345121930"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TaxiRideReachDestinationMonitor_10_Disabled
  l0.ReachDestination = self.f_box_TaxiRideReachDestinationMonitor_10_ReachDestination
  l0.ClientDropOff = self.f_box_TaxiRideReachDestinationMonitor_10_ClientDropOff
  self.box_Timer_v2_44 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_44
  l0._graph = self
  l0._name = "box_Timer_v2_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|450723449"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_44_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_TaxiRatingController_46 = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self.box_TaxiRatingController_46
  l0._graph = self
  l0._name = "box_TaxiRatingController_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|470280073"
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = DummyFunction
  l0.RewardShown = DummyFunction
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self.box_TaxiRatingController_3 = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self.box_TaxiRatingController_3
  l0._graph = self
  l0._name = "box_TaxiRatingController_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|517158866"
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = self.f_box_TaxiRatingController_3_RatingReset
  l0.RewardShown = DummyFunction
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self.box_MultipleOR_32 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_32
  l0._graph = self
  l0._name = "box_MultipleOR_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|747005967"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_32_Out
  self.box_MultipleOR_31 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_31
  l0._graph = self
  l0._name = "box_MultipleOR_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|771988051"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_31_Out
  self.box_DriveAndTalk_43 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_43
  l0._graph = self
  l0._name = "box_DriveAndTalk_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|779716431"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_SetBoolean_v2_8 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_8
  l0._graph = self
  l0._name = "box_SetBoolean_v2_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|799519960"
  l0.Out = self.f_box_SetBoolean_v2_8_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_8_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_8_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_8_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_8_SetFromBool
  self.box_MapPointController_v4_39 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_39
  l0._graph = self
  l0._name = "box_MapPointController_v4_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|805026501"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v4_39_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_DriveAndTalk_26 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_26
  l0._graph = self
  l0._name = "box_DriveAndTalk_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|828524298"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_26_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_26_TalkFailed
  self.box_TaxiStrategiesController_6 = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self.box_TaxiStrategiesController_6
  l0._graph = self
  l0._name = "box_TaxiStrategiesController_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|851320080"
  l0.Started = self.f_box_TaxiStrategiesController_6_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self.box_MissionMessageController_v3_14 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_14
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|911191788"
  l0.Out = self.f_box_MissionMessageController_v3_14_Out
  l0.MessageCompleted = DummyFunction
  self.box_DriveAndTalk_40 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_40
  l0._graph = self
  l0._name = "box_DriveAndTalk_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|1016484224"
  l0.Started = self.f_box_DriveAndTalk_40_Started
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_40_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_40_TalkFailed
  self.box_MissionCheckpointReach_23 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_23
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|1107062920"
  l0.Out = self.f_box_MissionCheckpointReach_23_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_DriveAndTalk_42 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_42
  l0._graph = self
  l0._name = "box_DriveAndTalk_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|1171566989"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_CinematicPrep_19 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_19
  l0._graph = self
  l0._name = "box_CinematicPrep_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|1175569353"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_19_PostOut
  self.box_TaxiStrategiesController_17 = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self.box_TaxiStrategiesController_17
  l0._graph = self
  l0._name = "box_TaxiStrategiesController_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|1191947706"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_TaxiStrategiesController_17_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self.box_Timer_v2_12 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_12
  l0._graph = self
  l0._name = "box_Timer_v2_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|1219183597"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_12_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_DriveAndTalk_37 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_37
  l0._graph = self
  l0._name = "box_DriveAndTalk_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|1268723545"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_37_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_37_TalkFailed
  self.box_TutorialController_30 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_30
  l0._graph = self
  l0._name = "box_TutorialController_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|1351927370"
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_box_TutorialController_30_DisplayRequested
  l0.NotificationHidden = self.f_box_TutorialController_30_NotificationHidden
  l0.MessageCompleted = DummyFunction
  self.box_MultipleOR_24 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_24
  l0._graph = self
  l0._name = "box_MultipleOR_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|1361415082"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_24_Out
  self.box_MultipleOR_35 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_35
  l0._graph = self
  l0._name = "box_MultipleOR_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|1365973270"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_35_Out
  self.box_MissionMessageController_v3_33 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_33
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|1366854874"
  l0.Out = self.f_box_MissionMessageController_v3_33_Out
  l0.MessageCompleted = DummyFunction
  self.box_ListWriter_64 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_64
  l0._graph = self
  l0._name = "box_ListWriter_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|1380295442"
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_box_ListWriter_64_Added
  l0.Removed = self.f_box_ListWriter_64_Removed
  l0.Out = self.f_box_ListWriter_64_Out
  self.box_MultipleOR_22 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_22
  l0._graph = self
  l0._name = "box_MultipleOR_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|1439594006"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_22_Out
  self.box_TaxiStrategiesController_27 = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self.box_TaxiStrategiesController_27
  l0._graph = self
  l0._name = "box_TaxiStrategiesController_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|1477013447"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self.box_GameplayInteractionController_13 = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self.box_GameplayInteractionController_13
  l0._graph = self
  l0._name = "box_GameplayInteractionController_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|1505190341"
  l0.Out = self.f_box_GameplayInteractionController_13_Out
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  self.box_TaxiRidePickUpController_16 = cbox:CreateBox("domino/System/TaxiRidePickUpController.lua")
  l0 = self.box_TaxiRidePickUpController_16
  l0._graph = self
  l0._name = "box_TaxiRidePickUpController_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|1510130697"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TaxiRidePickUpController_16_Disabled
  l0.ClientSpawned = self.f_box_TaxiRidePickUpController_16_ClientSpawned
  l0.ClientPickedUp = self.f_box_TaxiRidePickUpController_16_ClientPickedUp
  l0.ClientConversationFinised = self.f_box_TaxiRidePickUpController_16_ClientConversationFinised
  self.box_MultipleOR_5 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_5
  l0._graph = self
  l0._name = "box_MultipleOR_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|1560870483"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_5_Out
  self.box_TaxiRideVehicleMonitor_18 = cbox:CreateBox("domino/System/TaxiRideVehicleMonitor.lua")
  l0 = self.box_TaxiRideVehicleMonitor_18
  l0._graph = self
  l0._name = "box_TaxiRideVehicleMonitor_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|1587279596"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TaxiRideVehicleMonitor_18_Disabled
  l0.ClientDeath = self.f_box_TaxiRideVehicleMonitor_18_ClientDeath
  l0.VehicleUnusable = self.f_box_TaxiRideVehicleMonitor_18_VehicleUnusable
  l0.ClientBailedOut = self.f_box_TaxiRideVehicleMonitor_18_ClientBailedOut
  l0.PlayerAbandonedVehicle = self.f_box_TaxiRideVehicleMonitor_18_PlayerAbandonedVehicle
  self.box_TaxiRatingController_7 = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self.box_TaxiRatingController_7
  l0._graph = self
  l0._name = "box_TaxiRatingController_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|1760934550"
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = DummyFunction
  l0.RewardShown = self.f_box_TaxiRatingController_7_RewardShown
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self.box_GameplayInteractionController_63 = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self.box_GameplayInteractionController_63
  l0._graph = self
  l0._name = "box_GameplayInteractionController_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|1795320312"
  l0.Out = DummyFunction
  l0.Started = self.f_box_GameplayInteractionController_63_Started
  l0.Stopped = DummyFunction
  self.box_Timer_v2_41 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_41
  l0._graph = self
  l0._name = "box_Timer_v2_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|1799593673"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_41_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionController_v4_9 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_9
  l0._graph = self
  l0._name = "box_MissionController_v4_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|1964228725"
  self.box_MissionLayer_v2_4 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_4
  l0._graph = self
  l0._name = "box_MissionLayer_v2_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|1972266232"
  l0.Loaded = self.f_box_MissionLayer_v2_4_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_SetBoolean_v2_56 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_56
  l0._graph = self
  l0._name = "box_SetBoolean_v2_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|1989798012"
  l0.Out = self.f_box_SetBoolean_v2_56_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_56_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_56_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_56_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_56_SetFromBool
  self.box_DriveAndTalk_20 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_20
  l0._graph = self
  l0._name = "box_DriveAndTalk_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|2089117593"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_20_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_20_TalkFailed
  self.box_Taxi_AbortMission_11 = cbox:CreateBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.debug.lua")
  l0 = self.box_Taxi_AbortMission_11
  l0._graph = self
  l0._name = "box_Taxi_AbortMission_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|2118644256"
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:CheckPoint_0()
  local l0
  self:OnEnter_box_MultipleOR_24()
  l0 = self.box_MultipleOR_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|2107678104", "2107678104", "Taxi04_Main", "CheckPoint_0", "box_MultipleOR_24.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_24()
  l0 = self.box_MultipleOR_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|1010043191", "1010043191", "Taxi04_Main", "In", "box_MultipleOR_24.Input", self, l0)
  l0:Input(0)
end
function export:f_box_MultipleOR_34_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_45
  l0.Seconds = 20
  l0 = self.box_MultipleOR_34
  l1 = self.box_Timer_v2_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|254556831", "254556831", "Taxi04_Main", "box_MultipleOR_34.Out", "box_Timer_v2_45.Start", l0, l1)
  l1:Start()
end
function export:f_box_FollowPathMonitor_29_BackInRange()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_62()
  l0 = self.box_FollowPathMonitor_29
  l1 = self.box_MultipleOR_62
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|784862534", "784862534", "Taxi04_Main", "box_FollowPathMonitor_29.BackInRange", "box_MultipleOR_62.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_FollowPathMonitor_29_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_FollowPathMonitor_29
  l1 = self.box_SetBoolean_v2_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|1678248919", "1678248919", "Taxi04_Main", "box_FollowPathMonitor_29.Disabled", "box_SetBoolean_v2_56.False", l0, l1)
  l1:False()
end
function export:f_box_FollowPathMonitor_29_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v4_39()
  l0 = self.box_FollowPathMonitor_29
  l1 = self.box_MapPointController_v4_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|453512919", "453512919", "Taxi04_Main", "box_FollowPathMonitor_29.Enabled", "box_MapPointController_v4_39.Show", l0, l1)
  l1:Show()
end
function export:f_box_FollowPathMonitor_29_EndPointReached()
  local l0
  self = self._graph
  self:OnEnter_box_FollowPathMonitor_29()
  l0 = self.box_FollowPathMonitor_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|421474105", "421474105", "Taxi04_Main", "box_FollowPathMonitor_29.EndPointReached", "box_FollowPathMonitor_29.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_FollowPathMonitor_29_OutOfRange()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_30()
  l0 = self.box_FollowPathMonitor_29
  l1 = self.box_TutorialController_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|584513577", "584513577", "Taxi04_Main", "box_FollowPathMonitor_29.OutOfRange", "box_TutorialController_30.Display", l0, l1)
  l1:Display()
end
function export:f_box_MultipleOR_62_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_30()
  l0 = self.box_MultipleOR_62
  l1 = self.box_TutorialController_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|576627573", "576627573", "Taxi04_Main", "box_MultipleOR_62.Out", "box_TutorialController_30.HideNotification", l0, l1)
  l1:HideNotification()
end
function export:f_box_DriveAndTalk_1_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_31()
  l0 = self.box_DriveAndTalk_1
  l1 = self.box_MultipleOR_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|1361800632", "1361800632", "Taxi04_Main", "box_DriveAndTalk_1.TalkFailed", "box_MultipleOR_31.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_DriveAndTalk_1_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_31()
  l0 = self.box_DriveAndTalk_1
  l1 = self.box_MultipleOR_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|514330694", "514330694", "Taxi04_Main", "box_DriveAndTalk_1.TalkFinished", "box_MultipleOR_31.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Timer_v2_45_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_43
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372052426403420"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0 = self.box_Timer_v2_45
  l1 = self.box_DriveAndTalk_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|813648786", "813648786", "Taxi04_Main", "box_Timer_v2_45.TimeElapsed", "box_DriveAndTalk_43.Start", l0, l1)
  l1:Start()
end
function export:f_box_SetBoolean_v2_57_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_57
  self.ChasingDrone = l0.Target
end
function export:f_box_SetBoolean_v2_57_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_57
  self.ChasingDrone = l0.Target
end
function export:f_box_SetBoolean_v2_57_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_57
  self.ChasingDrone = l0.Target
end
function export:f_box_SetBoolean_v2_57_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_57
  self.ChasingDrone = l0.Target
  self:OnEnter_box_TaxiRidePickUpController_16()
  l1 = self.box_TaxiRidePickUpController_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|265786199", "265786199", "Taxi04_Main", "box_SetBoolean_v2_57.SetTrue", "box_TaxiRidePickUpController_16.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_SetBoolean_v2_57_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_57
  self.ChasingDrone = l0.Target
end
function export:f_box_DriveAndTalk_25_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_22()
  l0 = self.box_DriveAndTalk_25
  l1 = self.box_MultipleOR_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|1353444557", "1353444557", "Taxi04_Main", "box_DriveAndTalk_25.TalkFailed", "box_MultipleOR_22.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_DriveAndTalk_25_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_22()
  l0 = self.box_DriveAndTalk_25
  l1 = self.box_MultipleOR_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|670074756", "670074756", "Taxi04_Main", "box_DriveAndTalk_25.TalkFinished", "box_MultipleOR_22.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_DriveAndTalk_25_TalkStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_25
  l1 = self.box_SetBoolean_v2_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|380216000", "380216000", "Taxi04_Main", "box_DriveAndTalk_25.TalkStarted", "box_SetBoolean_v2_8.True", l0, l1)
  l1:True()
end
function export:f_box_MissionLayer_v2_21_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_21
  l1 = self.box_MissionController_v4_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|124148886", "124148886", "Taxi04_Main", "box_MissionLayer_v2_21.Unloaded", "box_MissionController_v4_9.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_MissionMessageController_v3_48_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TaxiRideReachDestinationMonitor_10()
  l0 = self.box_MissionMessageController_v3_48
  l1 = self.box_TaxiRideReachDestinationMonitor_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|596730025", "596730025", "Taxi04_Main", "box_MissionMessageController_v3_48.Out", "box_TaxiRideReachDestinationMonitor_10.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Timer_v2_2_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_20
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149895"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0 = self.box_Timer_v2_2
  l1 = self.box_DriveAndTalk_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|1109105146", "1109105146", "Taxi04_Main", "box_Timer_v2_2.TimeElapsed", "box_DriveAndTalk_20.Start", l0, l1)
  l1:Start()
end
function export:f_box_TaxiRideReachDestinationMonitor_10_ClientDropOff()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TaxiRideVehicleMonitor_18()
  l0 = self.box_TaxiRideReachDestinationMonitor_10
  l1 = self.box_TaxiRideVehicleMonitor_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|1706419340", "1706419340", "Taxi04_Main", "box_TaxiRideReachDestinationMonitor_10.ClientDropOff", "box_TaxiRideVehicleMonitor_18.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_TaxiRideReachDestinationMonitor_10_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRatingController_7
  l0.MissionName = self.Mission
  l0 = self.box_TaxiRideReachDestinationMonitor_10
  l1 = self.box_TaxiRatingController_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|152848368", "152848368", "Taxi04_Main", "box_TaxiRideReachDestinationMonitor_10.Disabled", "box_TaxiRatingController_7.ShowReward", l0, l1)
  l1:ShowReward()
end
function export:f_box_TaxiRideReachDestinationMonitor_10_ReachDestination()
  local l0, l1
  self = self._graph
  l0 = self.box_GameplayInteractionController_13
  l0.InInteractionId = self.InteractionID
  l0 = self.box_TaxiRideReachDestinationMonitor_10
  l1 = self.box_GameplayInteractionController_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|640797229", "640797229", "Taxi04_Main", "box_TaxiRideReachDestinationMonitor_10.ReachDestination", "box_GameplayInteractionController_13.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_Timer_v2_44_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_37
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372052426403421"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0 = self.box_Timer_v2_44
  l1 = self.box_DriveAndTalk_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|689186751", "689186751", "Taxi04_Main", "box_Timer_v2_44.TimeElapsed", "box_DriveAndTalk_37.Start", l0, l1)
  l1:Start()
end
function export:f_box_TaxiRatingController_3_RatingReset()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiStrategiesController_6
  l0.Config = "TaxiRideStrategyConfig.9223372047360464805"
  l0 = self.box_TaxiRatingController_3
  l1 = self.box_TaxiStrategiesController_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|2049857358", "2049857358", "Taxi04_Main", "box_TaxiRatingController_3.RatingReset", "box_TaxiStrategiesController_6.Start", l0, l1)
  l1:Start()
end
function export:f_box_Simple_Node_15_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|1344125782"
  l0.Out = self.f_box_Simple_Node_38_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|854449127", "854449127", "Taxi04_Main", "box_Simple_Node_15.Out", "box_Simple_Node_38.In", clone, l0)
  l0:In()
end
function export:f_box_Get_Player_ID_36_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_19
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|1728112584", "1728112584", "Taxi04_Main", "box_Get_Player_ID_36.Out", "box_CinematicPrep_19.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_MultipleOR_32_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_2
  l0.Seconds = 2
  l0 = self.box_MultipleOR_32
  l1 = self.box_Timer_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|291337012", "291337012", "Taxi04_Main", "box_MultipleOR_32.Out", "box_Timer_v2_2.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_31_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_12
  l0.Seconds = 10
  l0 = self.box_MultipleOR_31
  l1 = self.box_Timer_v2_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|101207337", "101207337", "Taxi04_Main", "box_MultipleOR_31.Out", "box_Timer_v2_12.Start", l0, l1)
  l1:Start()
end
function export:f_box_SetBoolean_v2_8_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_8
  self.ChasingDrone = l0.Target
end
function export:f_box_SetBoolean_v2_8_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_8
  self.ChasingDrone = l0.Target
end
function export:f_box_SetBoolean_v2_8_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_8
  self.ChasingDrone = l0.Target
end
function export:f_box_SetBoolean_v2_8_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_8
  self.ChasingDrone = l0.Target
  l1 = self.box_TaxiRatingController_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|858096667", "858096667", "Taxi04_Main", "box_SetBoolean_v2_8.SetTrue", "box_TaxiRatingController_3.ResetRating", l0, l1)
  l1:ResetRating()
end
function export:f_box_SetBoolean_v2_8_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_8
  self.ChasingDrone = l0.Target
end
function export:f_box_MapPointController_v4_39_Hidden()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372052661644418"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|1462589374"
  l0.Started = self.f_box_ParticleFXController_v2_53_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0 = self.box_MapPointController_v4_39
  l1 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|375043676", "375043676", "Taxi04_Main", "box_MapPointController_v4_39.Hidden", "box_ParticleFXController_v2_53.Start", l0, l1)
  l1:Start()
end
function export:f_box_DriveAndTalk_26_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_32()
  l0 = self.box_DriveAndTalk_26
  l1 = self.box_MultipleOR_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|1291682292", "1291682292", "Taxi04_Main", "box_DriveAndTalk_26.TalkFailed", "box_MultipleOR_32.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_DriveAndTalk_26_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_32()
  l0 = self.box_DriveAndTalk_26
  l1 = self.box_MultipleOR_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|25056317", "25056317", "Taxi04_Main", "box_DriveAndTalk_26.TalkFinished", "box_MultipleOR_32.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_TaxiStrategiesController_6_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FollowPathController_28()
  l0 = self.box_TaxiStrategiesController_6
  l1 = Boxes[PathID("domino/System/FollowPathComponentController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|437306314", "437306314", "Taxi04_Main", "box_TaxiStrategiesController_6.Started", "box_FollowPathController_28.Start", l0, l1)
  l1:Start()
end
function export:f_box_MissionMessageController_v3_14_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FollowPathMonitor_29()
  l0 = self.box_MissionMessageController_v3_14
  l1 = self.box_FollowPathMonitor_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|1753344147", "1753344147", "Taxi04_Main", "box_MissionMessageController_v3_14.Out", "box_FollowPathMonitor_29.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_DriveAndTalk_40_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_48
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF040",
    item = "Objective_01",
    id = "581661"
  }
  l0 = self.box_DriveAndTalk_40
  l1 = self.box_MissionMessageController_v3_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|954855821", "954855821", "Taxi04_Main", "box_DriveAndTalk_40.Started", "box_MissionMessageController_v3_48.ShowLastObjectiveComplete", l0, l1)
  l1:ShowLastObjectiveComplete()
end
function export:f_box_DriveAndTalk_40_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_35()
  l0 = self.box_DriveAndTalk_40
  l1 = self.box_MultipleOR_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|664238166", "664238166", "Taxi04_Main", "box_DriveAndTalk_40.TalkFailed", "box_MultipleOR_35.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_DriveAndTalk_40_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_35()
  l0 = self.box_DriveAndTalk_40
  l1 = self.box_MultipleOR_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|1231245543", "1231245543", "Taxi04_Main", "box_DriveAndTalk_40.TalkFinished", "box_MultipleOR_35.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Compare_Boolean_v2_60_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Timer_v2_41()
  l0 = self.box_Timer_v2_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|310571812", "310571812", "Taxi04_Main", "box_Compare_Boolean_v2_60.A_is_True", "box_Timer_v2_41.Start", clone, l0)
  l0:Start()
end
function export:f_box_MissionCheckpointReach_23_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_23
  l1 = self.box_SetBoolean_v2_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|1534451930", "1534451930", "Taxi04_Main", "box_MissionCheckpointReach_23.Out", "box_SetBoolean_v2_57.True", l0, l1)
  l1:True()
end
function export:f_box_Ordered_Output_61_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MapPointController_v4_39()
  l0 = self.box_MapPointController_v4_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|1999431569", "1999431569", "Taxi04_Main", "box_Ordered_Output_61.Out", "box_MapPointController_v4_39.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Ordered_Output_61_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_62()
  l0 = self.box_MultipleOR_62
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|1446496270", "1446496270", "Taxi04_Main", "box_Ordered_Output_61.Out", "box_MultipleOR_62.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_CinematicPrep_19_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_23
  l0.Checkpoint = "CheckPoint_0"
  l0 = self.box_CinematicPrep_19
  l1 = self.box_MissionCheckpointReach_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|1547361320", "1547361320", "Taxi04_Main", "box_CinematicPrep_19.PostOut", "box_MissionCheckpointReach_23.In", l0, l1)
  l1:In()
end
function export:f_box_TaxiStrategiesController_17_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiStrategiesController_17
  l1 = self.box_MissionMessageController_v3_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|1503997863", "1503997863", "Taxi04_Main", "box_TaxiStrategiesController_17.Stopped", "box_MissionMessageController_v3_33.ShowMissionComplete", l0, l1)
  l1:ShowMissionComplete()
end
function export:f_box_Timer_v2_12_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_26
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149894"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0 = self.box_Timer_v2_12
  l1 = self.box_DriveAndTalk_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|2091757826", "2091757826", "Taxi04_Main", "box_Timer_v2_12.TimeElapsed", "box_DriveAndTalk_26.Start", l0, l1)
  l1:Start()
end
function export:f_box_DriveAndTalk_37_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_34()
  l0 = self.box_DriveAndTalk_37
  l1 = self.box_MultipleOR_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|1015926895", "1015926895", "Taxi04_Main", "box_DriveAndTalk_37.TalkFailed", "box_MultipleOR_34.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_DriveAndTalk_37_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_34()
  l0 = self.box_DriveAndTalk_37
  l1 = self.box_MultipleOR_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|1402753451", "1402753451", "Taxi04_Main", "box_DriveAndTalk_37.TalkFinished", "box_MultipleOR_34.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Simple_Node_38_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TaxiRideReachDestinationMonitor_10()
  l0 = self.box_TaxiRideReachDestinationMonitor_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|123024775", "123024775", "Taxi04_Main", "box_Simple_Node_38.Out", "box_TaxiRideReachDestinationMonitor_10.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_TutorialController_30_DisplayRequested()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.ChasingDrone
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|1055910767"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_60_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_TutorialController_30
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|1745519", "1745519", "Taxi04_Main", "box_TutorialController_30.DisplayRequested", "box_Compare_Boolean_v2_60.In", l0, l1)
  l1:In()
end
function export:f_box_TutorialController_30_NotificationHidden()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Timer_v2_41()
  l0 = self.box_TutorialController_30
  l1 = self.box_Timer_v2_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|1239024442", "1239024442", "Taxi04_Main", "box_TutorialController_30.NotificationHidden", "box_Timer_v2_41.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_MultipleOR_24_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_4
  l0.LayerName = self.MissionLayer
  l0 = self.box_MultipleOR_24
  l1 = self.box_MissionLayer_v2_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|1387543433", "1387543433", "Taxi04_Main", "box_MultipleOR_24.Out", "box_MissionLayer_v2_4.Load", l0, l1)
  l1:Load()
end
function export:f_box_MultipleOR_35_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_42
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372052426403425"
  l0.StartDelay = 0.01
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0 = self.box_MultipleOR_35
  l1 = self.box_DriveAndTalk_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|796849387", "796849387", "Taxi04_Main", "box_MultipleOR_35.Out", "box_DriveAndTalk_42.Start", l0, l1)
  l1:Start()
end
function export:f_box_MissionMessageController_v3_33_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_21
  l0.LayerName = self.MissionLayer
  l0 = self.box_MissionMessageController_v3_33
  l1 = self.box_MissionLayer_v2_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|2007178420", "2007178420", "Taxi04_Main", "box_MissionMessageController_v3_33.Out", "box_MissionLayer_v2_21.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_ListWriter_64_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_64
  self.ActorList = l0.Target
  l0 = self.box_GameplayInteractionController_63
  l0.Users = self.ActorList
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0 = self.box_ListWriter_64
  l1 = self.box_GameplayInteractionController_63
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|1943160853", "1943160853", "Taxi04_Main", "box_ListWriter_64.Added", "box_GameplayInteractionController_63.Start", l0, l1)
  l1:Start()
end
function export:f_box_ListWriter_64_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_64
  self.ActorList = l0.Target
end
function export:f_box_ListWriter_64_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_64
  self.ActorList = l0.Target
end
function export:f_box_MultipleOR_22_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_64
  l0.Input = self.ActorList
  l0.Data[0] = self.PlayerEntity
  l0.Data[1] = self.Client
  l0 = self.box_MultipleOR_22
  l1 = self.box_ListWriter_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|64487530", "64487530", "Taxi04_Main", "box_MultipleOR_22.Out", "box_ListWriter_64.Add", l0, l1)
  l1:Add()
end
function export:f_box_ParticleFXController_v2_53_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372052661643958"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|1513290788"
  l0.Started = self.f_box_ParticleFXController_v2_52_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|1319712461", "1319712461", "Taxi04_Main", "box_ParticleFXController_v2_53.Started", "box_ParticleFXController_v2_52.Start", clone, l0)
  l0:Start()
end
function export:f_box_GameplayInteractionController_13_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiStrategiesController_27
  l0.Config = "TaxiRideStrategyConfig.9223372047360464805"
  l0 = self.box_GameplayInteractionController_13
  l1 = self.box_TaxiStrategiesController_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|1087231521", "1087231521", "Taxi04_Main", "box_GameplayInteractionController_13.Out", "box_TaxiStrategiesController_27.Pause", l0, l1)
  l1:Pause()
end
function export:f_box_TaxiRidePickUpController_16_ClientConversationFinised()
  local l0
  self = self._graph
  self:OnEnter_box_TaxiRidePickUpController_16()
  l0 = self.box_TaxiRidePickUpController_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|1041789275", "1041789275", "Taxi04_Main", "box_TaxiRidePickUpController_16.ClientConversationFinised", "box_TaxiRidePickUpController_16.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_TaxiRidePickUpController_16_ClientPickedUp()
  local l0
  self = self._graph
  l0 = self.box_TaxiRidePickUpController_16
  self.PlayerVehicle = l0.Vehicle
end
function export:f_box_TaxiRidePickUpController_16_ClientSpawned()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRidePickUpController_16
  self.Client = l0.Client
  self:OnEnter_box_TaxiRideVehicleMonitor_18()
  l1 = self.box_TaxiRideVehicleMonitor_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|1748341443", "1748341443", "Taxi04_Main", "box_TaxiRidePickUpController_16.ClientSpawned", "box_TaxiRideVehicleMonitor_18.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TaxiRidePickUpController_16_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_25
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372052426403423"
  l0.StartDelay = 1
  l0 = self.box_TaxiRidePickUpController_16
  l1 = self.box_DriveAndTalk_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|1769771605", "1769771605", "Taxi04_Main", "box_TaxiRidePickUpController_16.Disabled", "box_DriveAndTalk_25.Start", l0, l1)
  l1:Start()
end
function export:f_box_ParticleFXController_v2_52_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_DriveAndTalk_40
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372052426403424"
  l0.StartDelay = 0.01
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|340646610", "340646610", "Taxi04_Main", "box_ParticleFXController_v2_52.Started", "box_DriveAndTalk_40.Start", clone, l0)
  l0:Start()
end
function export:f_box_MultipleOR_5_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_44
  l0.Seconds = 10
  l0 = self.box_MultipleOR_5
  l1 = self.box_Timer_v2_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|42096104", "42096104", "Taxi04_Main", "box_MultipleOR_5.Out", "box_Timer_v2_44.Start", l0, l1)
  l1:Start()
end
function export:f_box_TaxiRideVehicleMonitor_18_ClientBailedOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_11()
  l0 = self.box_TaxiRideVehicleMonitor_18
  l1 = self.box_Taxi_AbortMission_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|922848400", "922848400", "Taxi04_Main", "box_TaxiRideVehicleMonitor_18.ClientBailedOut", "box_Taxi_AbortMission_11.ClientBailedOut", l0, l1)
  l1:ClientBailedOut()
end
function export:f_box_TaxiRideVehicleMonitor_18_ClientDeath()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_11()
  l0 = self.box_TaxiRideVehicleMonitor_18
  l1 = self.box_Taxi_AbortMission_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|1057576127", "1057576127", "Taxi04_Main", "box_TaxiRideVehicleMonitor_18.ClientDeath", "box_Taxi_AbortMission_11.ClientDead", l0, l1)
  l1:ClientDead()
end
function export:f_box_TaxiRideVehicleMonitor_18_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|648288343"
  l0.Out = self.f_box_Simple_Node_15_Out
  l0 = self.box_TaxiRideVehicleMonitor_18
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|277710584", "277710584", "Taxi04_Main", "box_TaxiRideVehicleMonitor_18.Disabled", "box_Simple_Node_15.In", l0, l1)
  l1:In()
end
function export:f_box_TaxiRideVehicleMonitor_18_PlayerAbandonedVehicle()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_11()
  l0 = self.box_TaxiRideVehicleMonitor_18
  l1 = self.box_Taxi_AbortMission_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|880302802", "880302802", "Taxi04_Main", "box_TaxiRideVehicleMonitor_18.PlayerAbandonedVehicle", "box_Taxi_AbortMission_11.PlayerAbandonedVehicle", l0, l1)
  l1:PlayerAbandonedVehicle()
end
function export:f_box_TaxiRideVehicleMonitor_18_VehicleUnusable()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_11()
  l0 = self.box_TaxiRideVehicleMonitor_18
  l1 = self.box_Taxi_AbortMission_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|1930284613", "1930284613", "Taxi04_Main", "box_TaxiRideVehicleMonitor_18.VehicleUnusable", "box_Taxi_AbortMission_11.VehicleUnusable", l0, l1)
  l1:VehicleUnusable()
end
function export:f_box_TaxiRatingController_7_RewardShown()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiStrategiesController_17
  l0.Config = "TaxiRideStrategyConfig.9223372047360464805"
  l0 = self.box_TaxiRatingController_7
  l1 = self.box_TaxiStrategiesController_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|1690826869", "1690826869", "Taxi04_Main", "box_TaxiRatingController_7.RewardShown", "box_TaxiStrategiesController_17.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_GameplayInteractionController_63_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_GameplayInteractionController_63
  self.InteractionID = l0.interactionId
  l0 = self.box_DriveAndTalk_1
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149893"
  l0.StartDelay = 6
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0 = self.box_GameplayInteractionController_63
  l1 = self.box_DriveAndTalk_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|231306407", "231306407", "Taxi04_Main", "box_GameplayInteractionController_63.Started", "box_DriveAndTalk_1.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_41_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRatingController_46
  l0.MissionName = self.Mission
  l0.RatingAmount = 1
  l0 = self.box_Timer_v2_41
  l1 = self.box_TaxiRatingController_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|1397890681", "1397890681", "Taxi04_Main", "box_Timer_v2_41.TimeElapsed", "box_TaxiRatingController_46.RemoveRating", l0, l1)
  l1:RemoveRating()
end
function export:f_box_FollowPathController_28_RangeCheckStarted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FollowPathComponentController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_14
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF040",
    item = "Objective_01",
    id = "581661"
  }
  l0.ShowPreviousObjectiveComplete = 0
  l0.HasObjectiveMarker = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|1192433993", "1192433993", "Taxi04_Main", "box_FollowPathController_28.RangeCheckStarted", "box_MissionMessageController_v3_14.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_FollowPathController_28_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FollowPathComponentController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_FollowPathController_28()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|1909676479", "1909676479", "Taxi04_Main", "box_FollowPathController_28.Started", "box_FollowPathController_28.SetText", clone, l0)
  l0:SetText()
end
function export:f_box_FollowPathController_28_TextSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FollowPathComponentController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_FollowPathController_28()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|1855589248", "1855589248", "Taxi04_Main", "box_FollowPathController_28.TextSet", "box_FollowPathController_28.StartRangeCheck", clone, l0)
  l0:StartRangeCheck()
end
function export:f_box_MissionLayer_v2_4_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|664169091"
  l0.Out = self.f_box_Get_Player_ID_36_Out
  l0 = self.box_MissionLayer_v2_4
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|312843924", "312843924", "Taxi04_Main", "box_MissionLayer_v2_4.Loaded", "box_Get_Player_ID_36.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_56_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_56
  self.ChasingDrone = l0.Target
end
function export:f_box_SetBoolean_v2_56_SetFalse()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_56
  self.ChasingDrone = l0.Target
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|1138547021"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_61_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_61_Out_1
  l0 = self.box_SetBoolean_v2_56
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|263063977", "263063977", "Taxi04_Main", "box_SetBoolean_v2_56.SetFalse", "box_Ordered_Output_61.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_56_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_56
  self.ChasingDrone = l0.Target
end
function export:f_box_SetBoolean_v2_56_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_56
  self.ChasingDrone = l0.Target
end
function export:f_box_SetBoolean_v2_56_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_56
  self.ChasingDrone = l0.Target
end
function export:f_box_DriveAndTalk_20_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_5()
  l0 = self.box_DriveAndTalk_20
  l1 = self.box_MultipleOR_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|742772955", "742772955", "Taxi04_Main", "box_DriveAndTalk_20.TalkFailed", "box_MultipleOR_5.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_DriveAndTalk_20_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_5()
  l0 = self.box_DriveAndTalk_20
  l1 = self.box_MultipleOR_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|127187300", "127187300", "Taxi04_Main", "box_DriveAndTalk_20.TalkFinished", "box_MultipleOR_5.Input", l0, l1)
  l1:Input(0)
end
function export:OnEnter_box_MultipleOR_34()
end
function export:OnEnter_box_FollowPathMonitor_29()
  local l0
  l0 = self.box_FollowPathMonitor_29
  l0.Entity = "9223372049633593501"
end
function export:OnEnter_box_MultipleOR_62()
end
function export:OnEnter_box_TaxiRideReachDestinationMonitor_10()
  local l0
  l0 = self.box_TaxiRideReachDestinationMonitor_10
  l0.Client = self.Client
  l0.DropOffIcon = "9223372046134562454"
  l0.LastDestination = 1
  l0.ShowGps = 1
  l0.ManageObjective = 1
  l0.CustomObjective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF040",
    item = "Objective_02",
    id = "581662"
  }
  l0.Config = "TaxiRideGameplayBrick.9223372057631920033"
end
function export:OnEnter_box_MultipleOR_32()
end
function export:OnEnter_box_MultipleOR_31()
end
function export:OnEnter_box_MapPointController_v4_39()
  local l0
  l0 = self.box_MapPointController_v4_39
  l0.MapPoint = "9223372049633593501"
end
function export:OnEnter_box_TutorialController_30()
  local l0
  l0 = self.box_TutorialController_30
  l0.Notification = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "DistanceTooFar",
    id = "417038"
  }
  l0.Duration = -1
end
function export:OnEnter_box_MultipleOR_24()
end
function export:OnEnter_box_MultipleOR_35()
end
function export:OnEnter_box_MultipleOR_22()
end
function export:OnEnter_box_TaxiRidePickUpController_16()
  local l0
  l0 = self.box_TaxiRidePickUpController_16
  l0.ClientClo = self.CLOClient
  l0.PickUpIcon = "9223372046134562452"
  l0.Config = "TaxiRideGameplayBrick.9223372057631920033"
end
function export:OnEnter_box_MultipleOR_5()
end
function export:OnEnter_box_TaxiRideVehicleMonitor_18()
  local l0
  l0 = self.box_TaxiRideVehicleMonitor_18
  l0.Client = self.Client
  l0.Config = "TaxiRideGameplayBrick.9223372057631920033"
end
function export:OnEnter_box_Timer_v2_41()
  local l0
  l0 = self.box_Timer_v2_41
  l0.Seconds = 10
  l0.Loop = 1
  l0.nbLoop = 4
end
function export:OnEnter_box_FollowPathController_28()
  local l0
  l0 = Boxes[PathID("domino/System/FollowPathComponentController.lua")]
  l0.Entity = "9223372049633593501"
  l0.Path = "9223372049633593505"
  l0.Speed = 21
  l0.Range = 250
  l0.LocText = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "FollowDrone",
    id = "635932"
  }
  l0._graph = self
  l0._name = "box_FollowPathController_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi04.domino|@Taxi04_Main|1864649419"
  l0.Started = self.f_box_FollowPathController_28_Started
  l0.Stopped = DummyFunction
  l0.SpeedSet = DummyFunction
  l0.TextSet = self.f_box_FollowPathController_28_TextSet
  l0.MarkerHidden = DummyFunction
  l0.MarkerShown = DummyFunction
  l0.RangeCheckStarted = self.f_box_FollowPathController_28_RangeCheckStarted
end
function export:OnEnter_box_Taxi_AbortMission_11()
  local l0
  l0 = self.box_Taxi_AbortMission_11
  l0.MissionName = self.Mission
  l0.LayerName = self.MissionLayer
  l0.StrategyConfig = "TaxiRideStrategyConfig.9223372047360464805"
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Vehicle = self.PlayerVehicle
  l0.Conversation = "ConversationSetting.9223372048760149896"
end
_compilerVersion = 4
