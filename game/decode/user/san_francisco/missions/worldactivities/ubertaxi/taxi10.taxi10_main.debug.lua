export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/GPS3DController.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  cbox:RegisterBox("domino/System/GameplayInteractionController.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/IntegerSelect.lua")
  cbox:RegisterBox("domino/System/LaneRestrictionsControl.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.debug.lua")
  cbox:RegisterBox("domino/System/TaxiCheckpointController.lua")
  cbox:RegisterBox("domino/System/TaxiCheckpointMonitor.lua")
  cbox:RegisterBox("domino/System/TaxiRatingController.lua")
  cbox:RegisterBox("domino/System/TaxiRidePickUpController.lua")
  cbox:RegisterBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  cbox:RegisterBox("domino/System/TaxiRideVehicleMonitor.lua")
  cbox:RegisterBox("domino/System/TaxiStrategiesController.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:RegisterBox("domino/System/VehicleController.lua")
end
function export:Init(cbox)
  local l0
  self._name = "Taxi10_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main"
  self.PlayerEntity = nil
  self.Client = nil
  self.CurrentDestination = 0
  self.Mission = "MissionList.9223372046987693857"
  self.PlayerVehicle = nil
  self.CPIndex = 0
  self.RacePartStarted = 0
  self.FlatBed = nil
  self.CLO_9223372051980679173 = "9223372051980679173"
  self.FlatBed2 = nil
  self.GIC_Users = {}
  self.Jump_Height = 5
  self.tmpClient = nil
  self.playerVehicle = nil
  self.isCorrectVehicle = 0
  self.PlaySpecificBark = 0
  self.Vehicle_Icon = nil
  self.Player_Vehicle = nil
  self.ClientCarson = nil
  self.Liv = nil
  self.box_TriggerMonitor_v2_82 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_82
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_82"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|64531454"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_82_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_CLOController_12 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_12
  l0._graph = self
  l0._name = "box_CLOController_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|98321482"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_MissionCheckpointReach_55 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_55
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|113564650"
  l0.Out = self.f_box_MissionCheckpointReach_55_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_Timer_v2_74 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_74
  l0._graph = self
  l0._name = "box_Timer_v2_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|198928771"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_74_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_SetBoolean_v2_60 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_60
  l0._graph = self
  l0._name = "box_SetBoolean_v2_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|269757195"
  l0.Out = self.f_box_SetBoolean_v2_60_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_60_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_60_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_60_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_60_SetFromBool
  self.box_DriveAndTalk_114 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_114
  l0._graph = self
  l0._name = "box_DriveAndTalk_114"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|270098213"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_TaxiRideReachDestinationMonitor_4 = cbox:CreateBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self.box_TaxiRideReachDestinationMonitor_4
  l0._graph = self
  l0._name = "box_TaxiRideReachDestinationMonitor_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|280905238"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ReachDestination = DummyFunction
  l0.ClientDropOff = self.f_box_TaxiRideReachDestinationMonitor_4_ClientDropOff
  self.box_MultipleOR_57 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_57
  l0._graph = self
  l0._name = "box_MultipleOR_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|425855389"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_57_Out
  self.box_MissionController_v4_37 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_37
  l0._graph = self
  l0._name = "box_MissionController_v4_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|428065476"
  self.box_TriggerMonitor_v2_87 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_87
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_87"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|435680958"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_87_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_Timer_v2_41 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_41
  l0._graph = self
  l0._name = "box_Timer_v2_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|455766169"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_41_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_DriveAndTalk_112 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_112
  l0._graph = self
  l0._name = "box_DriveAndTalk_112"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|508248060"
  l0.Started = self.f_box_DriveAndTalk_112_Started
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_DriveAndTalk_53 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_53
  l0._graph = self
  l0._name = "box_DriveAndTalk_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|553197706"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_MissionLayer_v2_62 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_62
  l0._graph = self
  l0._name = "box_MissionLayer_v2_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|582530402"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_62_Unloaded
  l0.Reseted = DummyFunction
  self.box_Timer_v2_70 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_70
  l0._graph = self
  l0._name = "box_Timer_v2_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|631424168"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_70_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Taxi_AbortMission_20 = cbox:CreateBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.debug.lua")
  l0 = self.box_Taxi_AbortMission_20
  l0._graph = self
  l0._name = "box_Taxi_AbortMission_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|679224282"
  self.box_CinematicPrep_31 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_31
  l0._graph = self
  l0._name = "box_CinematicPrep_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|712998221"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_31_PostOut
  self.box_TaxiStrategiesController_108 = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self.box_TaxiStrategiesController_108
  l0._graph = self
  l0._name = "box_TaxiStrategiesController_108"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|720742947"
  l0.Started = self.f_box_TaxiStrategiesController_108_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self.box_Timer_v2_69 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_69
  l0._graph = self
  l0._name = "box_Timer_v2_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|761961357"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_69_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_TaxiRatingController_30 = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self.box_TaxiRatingController_30
  l0._graph = self
  l0._name = "box_TaxiRatingController_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|873688424"
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = DummyFunction
  l0.RewardShown = self.f_box_TaxiRatingController_30_RewardShown
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self.box_TriggerMonitor_v2_81 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_81
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_81"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|939126502"
  l0.Enabled = self.f_box_TriggerMonitor_v2_81_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_81_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_Integer_Select_89 = cbox:CreateBox("domino/System/IntegerSelect.lua")
  l0 = self.box_Integer_Select_89
  l0._graph = self
  l0._name = "box_Integer_Select_89"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|991210317"
  l0._DynamicAnchors = {Case = 12, Match = 12}
  l0.Out = DummyFunction
  l0.Match[0] = self.f_box_Integer_Select_89_Match_0
  l0.Match[1] = self.f_box_Integer_Select_89_Match_1
  l0.Match[2] = self.f_box_Integer_Select_89_Match_2
  l0.Match[3] = self.f_box_Integer_Select_89_Match_3
  l0.Match[4] = self.f_box_Integer_Select_89_Match_4
  l0.Match[5] = self.f_box_Integer_Select_89_Match_5
  l0.Match[6] = self.f_box_Integer_Select_89_Match_6
  l0.Match[7] = self.f_box_Integer_Select_89_Match_7
  l0.Match[8] = self.f_box_Integer_Select_89_Match_8
  l0.Match[9] = self.f_box_Integer_Select_89_Match_9
  l0.Match[10] = self.f_box_Integer_Select_89_Match_10
  l0.Match[11] = DummyFunction
  l0.None = DummyFunction
  self.box_MissionMessageController_v3_109 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_109
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_109"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1032463904"
  l0.Out = self.f_box_MissionMessageController_v3_109_Out
  l0.MessageCompleted = DummyFunction
  self.box_DriveAndTalk_54 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_54
  l0._graph = self
  l0._name = "box_DriveAndTalk_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1141633654"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_54_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_Timer_v2_76 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_76
  l0._graph = self
  l0._name = "box_Timer_v2_76"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1150870124"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_76_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_TaxiStrategiesController_39 = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self.box_TaxiStrategiesController_39
  l0._graph = self
  l0._name = "box_TaxiStrategiesController_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1268699696"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_TaxiStrategiesController_39_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self.box_Timer_v2_71 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_71
  l0._graph = self
  l0._name = "box_Timer_v2_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1297132254"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_71_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_TaxiStrategiesController_56 = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self.box_TaxiStrategiesController_56
  l0._graph = self
  l0._name = "box_TaxiStrategiesController_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1307406289"
  l0.Started = self.f_box_TaxiStrategiesController_56_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self.box_Timer_v2_49 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_49
  l0._graph = self
  l0._name = "box_Timer_v2_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1314700678"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_49_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_DriveAndTalk_115 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_115
  l0._graph = self
  l0._name = "box_DriveAndTalk_115"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1326138519"
  l0.Started = self.f_box_DriveAndTalk_115_Started
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_115_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_ListWriter_21 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_21
  l0._graph = self
  l0._name = "box_ListWriter_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1331655365"
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_box_ListWriter_21_Added
  l0.Removed = self.f_box_ListWriter_21_Removed
  l0.Out = self.f_box_ListWriter_21_Out
  self.box_DriveAndTalk_75 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_75
  l0._graph = self
  l0._name = "box_DriveAndTalk_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1376946070"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_TriggerMonitor_v2_90 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_90
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_90"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1386623920"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_90_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MissionMessageController_v3_3 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_3
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1442821119"
  l0.Out = self.f_box_MissionMessageController_v3_3_Out
  l0.MessageCompleted = DummyFunction
  self.box_Timer_v2_46 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_46
  l0._graph = self
  l0._name = "box_Timer_v2_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1550311008"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_46_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_DriveAndTalk_111 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_111
  l0._graph = self
  l0._name = "box_DriveAndTalk_111"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1558946160"
  l0.Started = self.f_box_DriveAndTalk_111_Started
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_DriveAndTalk_68 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_68
  l0._graph = self
  l0._name = "box_DriveAndTalk_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1571940818"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_68_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_TaxiRidePickUpController_117 = cbox:CreateBox("domino/System/TaxiRidePickUpController.lua")
  l0 = self.box_TaxiRidePickUpController_117
  l0._graph = self
  l0._name = "box_TaxiRidePickUpController_117"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1682308735"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ClientSpawned = self.f_box_TaxiRidePickUpController_117_ClientSpawned
  l0.ClientPickedUp = self.f_box_TaxiRidePickUpController_117_ClientPickedUp
  l0.ClientConversationFinised = DummyFunction
  self.box_GameplayInteractionController_16 = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self.box_GameplayInteractionController_16
  l0._graph = self
  l0._name = "box_GameplayInteractionController_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1813838809"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  self.box_DriveAndTalk_78 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_78
  l0._graph = self
  l0._name = "box_DriveAndTalk_78"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1825445524"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_CLOController_14 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_14
  l0._graph = self
  l0._name = "box_CLOController_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1832179000"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_DriveAndTalk_72 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_72
  l0._graph = self
  l0._name = "box_DriveAndTalk_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1833289705"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_72_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_TaxiCheckpointController_13 = cbox:CreateBox("domino/System/TaxiCheckpointController.lua")
  l0 = self.box_TaxiCheckpointController_13
  l0._graph = self
  l0._name = "box_TaxiCheckpointController_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1952752758"
  l0.Enabled = self.f_box_TaxiCheckpointController_13_Enabled
  l0.Disabled = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  self.box_TriggerMonitor_v2_96 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_96
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_96"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1960573254"
  l0.Enabled = self.f_box_TriggerMonitor_v2_96_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_96_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MissionMessageController_v3_17 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_17
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1972059382"
  l0.Out = self.f_box_MissionMessageController_v3_17_Out
  l0.MessageCompleted = DummyFunction
  self.box_TaxiRideVehicleMonitor_118 = cbox:CreateBox("domino/System/TaxiRideVehicleMonitor.lua")
  l0 = self.box_TaxiRideVehicleMonitor_118
  l0._graph = self
  l0._name = "box_TaxiRideVehicleMonitor_118"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|2024639200"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TaxiRideVehicleMonitor_118_Disabled
  l0.ClientDeath = self.f_box_TaxiRideVehicleMonitor_118_ClientDeath
  l0.VehicleUnusable = self.f_box_TaxiRideVehicleMonitor_118_VehicleUnusable
  l0.ClientBailedOut = self.f_box_TaxiRideVehicleMonitor_118_ClientBailedOut
  l0.PlayerAbandonedVehicle = self.f_box_TaxiRideVehicleMonitor_118_PlayerAbandonedVehicle
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
  self:OnEnter_box_MultipleOR_57()
  l0 = self.box_MultipleOR_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|2132762105", "2132762105", "Taxi10_Main", "CheckPoint_0", "box_MultipleOR_57.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_57()
  l0 = self.box_MultipleOR_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1615539354", "1615539354", "Taxi10_Main", "In", "box_MultipleOR_57.Input", self, l0)
  l0:Input(0)
end
function export:f_box_3DGPSController_94_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_3DGPSController_94()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|461049072", "461049072", "Taxi10_Main", "box_3DGPSController_94.Disabled", "box_3DGPSController_94.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_3DGPSController_64_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_81()
  l0 = self.box_TriggerMonitor_v2_81
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|199040079", "199040079", "Taxi10_Main", "box_3DGPSController_64.Enabled", "box_TriggerMonitor_v2_81.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_TriggerMonitor_v2_82_Enter()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_103"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|437635615"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_103_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_103_Out_1
  l0 = self.box_TriggerMonitor_v2_82
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|281452352", "281452352", "Taxi10_Main", "box_TriggerMonitor_v2_82.Enter", "box_Ordered_Output_103.In", l0, l1)
  l1:In()
end
function export:f_box_MissionCheckpointReach_55_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_55
  l1 = self.box_SetBoolean_v2_60
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|774884269", "774884269", "Taxi10_Main", "box_MissionCheckpointReach_55.Out", "box_SetBoolean_v2_60.False", l0, l1)
  l1:False()
end
function export:f_box_Simple_Node_47_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TaxiRideVehicleMonitor_118()
  l0 = self.box_TaxiRideVehicleMonitor_118
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|151248579", "151248579", "Taxi10_Main", "box_Simple_Node_47.Out", "box_TaxiRideVehicleMonitor_118.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_10_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TaxiCheckpointController_13()
  l0 = self.box_TaxiCheckpointController_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1020211508", "1020211508", "Taxi10_Main", "box_Ordered_Output_10.Out", "box_TaxiCheckpointController_13.Show", clone, l0)
  l0:Show()
end
function export:f_box_Ordered_Output_10_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TaxiCheckpointMonitor_18()
  l0 = Boxes[PathID("domino/System/TaxiCheckpointMonitor.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|606753205", "606753205", "Taxi10_Main", "box_Ordered_Output_10.Out", "box_TaxiCheckpointMonitor_18.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Timer_v2_74_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_115
  l0.Pawn1 = self.Liv
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149901"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372052209434196"
  l0 = self.box_Timer_v2_74
  l1 = self.box_DriveAndTalk_115
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|483357081", "483357081", "Taxi10_Main", "box_Timer_v2_74.TimeElapsed", "box_DriveAndTalk_115.Start", l0, l1)
  l1:Start()
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MissionLayer_v2_2
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|794668992", "794668992", "Taxi10_Main", "box_MissionLayer_v2_2.Loaded", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_23_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_55
  l0.Checkpoint = "CheckPoint_0"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|653234879", "653234879", "Taxi10_Main", "box_Ordered_Output_23.Out", "box_MissionCheckpointReach_55.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_23_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_14
  l0.CLO = "9223372052672201328"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|2037080714", "2037080714", "Taxi10_Main", "box_Ordered_Output_23.Out", "box_CLOController_14.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_SetBoolean_v2_60_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_60
  self.RacePartStarted = l0.Target
end
function export:f_box_SetBoolean_v2_60_SetFalse()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_60
  self.RacePartStarted = l0.Target
  l0 = self.box_TaxiRidePickUpController_117
  l0.ClientClo = "9223372046987668217"
  l0.PickUpIcon = "9223372048152208900"
  l0.Config = "TaxiRideGameplayBrick.9223372057399402695"
  l0 = self.box_SetBoolean_v2_60
  l1 = self.box_TaxiRidePickUpController_117
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|635594229", "635594229", "Taxi10_Main", "box_SetBoolean_v2_60.SetFalse", "box_TaxiRidePickUpController_117.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_SetBoolean_v2_60_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_60
  self.RacePartStarted = l0.Target
end
function export:f_box_SetBoolean_v2_60_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_60
  self.RacePartStarted = l0.Target
end
function export:f_box_SetBoolean_v2_60_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_60
  self.RacePartStarted = l0.Target
end
function export:f_box_TaxiRideReachDestinationMonitor_4_ClientDropOff()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1934322202"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_43_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_43_Out_1
  l0 = self.box_TaxiRideReachDestinationMonitor_4
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|642063400", "642063400", "Taxi10_Main", "box_TaxiRideReachDestinationMonitor_4.ClientDropOff", "box_Ordered_Output_43.In", l0, l1)
  l1:In()
end
function export:f_box_3DGPSController_79_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_3DGPSController_79()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|69258888", "69258888", "Taxi10_Main", "box_3DGPSController_79.Disabled", "box_3DGPSController_79.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_6_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|2111788109"
  l0.Out = self.f_box_Simple_Node_28_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1829473819", "1829473819", "Taxi10_Main", "box_Ordered_Output_6.Out", "box_Simple_Node_28.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_6_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|420900123"
  l0.Out = self.f_box_Simple_Node_67_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|181438072", "181438072", "Taxi10_Main", "box_Ordered_Output_6.Out", "box_Simple_Node_67.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_105_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_3DGPSController_91()
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1416999511", "1416999511", "Taxi10_Main", "box_Ordered_Output_105.Out", "box_3DGPSController_91.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_105_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_90()
  l0 = self.box_TriggerMonitor_v2_90
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1121338267", "1121338267", "Taxi10_Main", "box_Ordered_Output_105.Out", "box_TriggerMonitor_v2_90.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_3DGPSController_98_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionLayer_v2_62
  l0.LayerName = "Taxi10_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1700586576", "1700586576", "Taxi10_Main", "box_3DGPSController_98.Disabled", "box_MissionLayer_v2_62.Unload", clone, l0)
  l0:Unload()
end
function export:f_box_Simple_Node_67_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_113"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|2084344453"
  l0.Out = self.f_box_Simple_Node_113_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1115270401", "1115270401", "Taxi10_Main", "box_Simple_Node_67.Out", "box_Simple_Node_113.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_107_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_3DGPSController_97()
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|2142647647", "2142647647", "Taxi10_Main", "box_Ordered_Output_107.Out", "box_3DGPSController_97.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_107_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_96()
  l0 = self.box_TriggerMonitor_v2_96
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|2057831186", "2057831186", "Taxi10_Main", "box_Ordered_Output_107.Out", "box_TriggerMonitor_v2_96.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_MultipleOR_57_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "Taxi10_Main"
  l0 = self.box_MultipleOR_57
  l1 = self.box_MissionLayer_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1756043787", "1756043787", "Taxi10_Main", "box_MultipleOR_57.Out", "box_MissionLayer_v2_2.Load", l0, l1)
  l1:Load()
end
function export:f_box_TriggerMonitor_v2_87_Enter()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_104"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|675334890"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_104_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_104_Out_1
  l0 = self.box_TriggerMonitor_v2_87
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1608196497", "1608196497", "Taxi10_Main", "box_TriggerMonitor_v2_87.Enter", "box_Ordered_Output_104.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_103_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_82()
  l0 = self.box_TriggerMonitor_v2_82
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|954692788", "954692788", "Taxi10_Main", "box_Ordered_Output_103.Out", "box_TriggerMonitor_v2_82.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_103_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_3DGPSController_85()
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|413005320", "413005320", "Taxi10_Main", "box_Ordered_Output_103.Out", "box_3DGPSController_85.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Timer_v2_41_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_75
  l0.Pawn1 = self.Liv
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372051430779522"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372052209434196"
  l0 = self.box_Timer_v2_41
  l1 = self.box_DriveAndTalk_75
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|997273206", "997273206", "Taxi10_Main", "box_Timer_v2_41.TimeElapsed", "box_DriveAndTalk_75.Start", l0, l1)
  l1:Start()
end
function export:f_box_TaxiCheckpointMonitor_18_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TaxiCheckpointMonitor.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TaxiStrategiesController_108
  l0.Config = "TaxiRideStrategyConfig.9223372053468216841"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1342123391", "1342123391", "Taxi10_Main", "box_TaxiCheckpointMonitor_18.Enabled", "box_TaxiStrategiesController_108.Start", clone, l0)
  l0:Start()
end
function export:f_box_TaxiCheckpointMonitor_18_OnCheckpointReached()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TaxiCheckpointMonitor.lua")]
  self.CPIndex = l0.CheckpointIndex
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_120"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1753258281"
  l0.Out = self.f_box_Simple_Node_120_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1363256966", "1363256966", "Taxi10_Main", "box_TaxiCheckpointMonitor_18.OnCheckpointReached", "box_Simple_Node_120.In", clone, l0)
  l0:In()
end
function export:f_box_TaxiCheckpointMonitor_18_OnDestinationReached()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TaxiCheckpointMonitor.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TaxiCheckpointMonitor_18()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1484702689", "1484702689", "Taxi10_Main", "box_TaxiCheckpointMonitor_18.OnDestinationReached", "box_TaxiCheckpointMonitor_18.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_DriveAndTalk_112_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_3DGPSController_15()
  l0 = self.box_DriveAndTalk_112
  l1 = Boxes[PathID("domino/System/GPS3DController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|510725620", "510725620", "Taxi10_Main", "box_DriveAndTalk_112.Started", "box_3DGPSController_15.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MissionLayer_v2_62_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_62
  l1 = self.box_MissionController_v4_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|288233781", "288233781", "Taxi10_Main", "box_MissionLayer_v2_62.Unloaded", "box_MissionController_v4_37.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_Ordered_Output_8_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ListWriter_21()
  l0 = self.box_ListWriter_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1034022661", "1034022661", "Taxi10_Main", "box_Ordered_Output_8.Out", "box_ListWriter_21.Add", clone, l0)
  l0:Add()
end
function export:f_box_Ordered_Output_8_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.PlayerVehicle
  l0._graph = self
  l0._name = "box_Vehicle_Controller_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|2103014016"
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.Destructable = DummyFunction
  l0.Indestructable = self.f_box_Vehicle_Controller_26_Indestructable
  l0.Deflatable = DummyFunction
  l0.Undeflatable = DummyFunction
  l0.Unmovable = DummyFunction
  l0.Movable = DummyFunction
  l0.EngineBroken = DummyFunction
  l0.EngineShutDown = DummyFunction
  l0.EngineStarted = DummyFunction
  l0.VehicleExploded = DummyFunction
  l0.VehicleAlarmHackOn = DummyFunction
  l0.VehicleAlarmHackOff = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|452833418", "452833418", "Taxi10_Main", "box_Ordered_Output_8.Out", "box_Vehicle_Controller_26.SetAsIndestructable", clone, l0)
  l0:SetAsIndestructable()
end
function export:f_box_Timer_v2_70_TimeElapsed()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: I'll record the whole ride. So don't be camera shy.Uhm. Okay", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'DriveAndTalk')-- Comment: I'll record the whole ride. So don't be camera shy.Uhm. Okay")
  l0 = self.box_DriveAndTalk_68
  l0.Pawn1 = self.Liv
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372050763438575"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372052209434196"
  l0 = self.box_Timer_v2_70
  l1 = self.box_DriveAndTalk_68
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|23391574", "23391574", "Taxi10_Main", "box_Timer_v2_70.TimeElapsed", "box_DriveAndTalk_68.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_104_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_3DGPSController_88()
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1915214064", "1915214064", "Taxi10_Main", "box_Ordered_Output_104.Out", "box_3DGPSController_88.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_104_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_87()
  l0 = self.box_TriggerMonitor_v2_87
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1883508666", "1883508666", "Taxi10_Main", "box_Ordered_Output_104.Out", "box_TriggerMonitor_v2_87.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_CinematicPrep_31_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|234078842"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_23_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_23_Out_1
  l0 = self.box_CinematicPrep_31
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1724859354", "1724859354", "Taxi10_Main", "box_CinematicPrep_31.PostOut", "box_Ordered_Output_23.In", l0, l1)
  l1:In()
end
function export:f_box_TaxiStrategiesController_108_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0.Player = nil
  l0.Target = nil
  l0.Path = "9223372052167992994"
  l0.Index = nil
  l0.PathType = "Custom"
  l0._graph = self
  l0._name = "box_3DGPSController_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|48600499"
  l0.Enabled = self.f_box_3DGPSController_64_Enabled
  l0.Disabled = DummyFunction
  l0.TargetAdded = DummyFunction
  l0.TargetRemoved = DummyFunction
  l0 = self.box_TaxiStrategiesController_108
  l1 = Boxes[PathID("domino/System/GPS3DController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|959034217", "959034217", "Taxi10_Main", "box_TaxiStrategiesController_108.Started", "box_3DGPSController_64.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_3DGPSController_88_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_3DGPSController_88()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1139662134", "1139662134", "Taxi10_Main", "box_3DGPSController_88.Disabled", "box_3DGPSController_88.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Timer_v2_69_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_72
  l0.Pawn1 = self.Liv
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372051430779523"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372052209434196"
  l0 = self.box_Timer_v2_69
  l1 = self.box_DriveAndTalk_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1312670362", "1312670362", "Taxi10_Main", "box_Timer_v2_69.TimeElapsed", "box_DriveAndTalk_72.Start", l0, l1)
  l1:Start()
end
function export:f_box_Get_Player_ID_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_31
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|736467086", "736467086", "Taxi10_Main", "box_Get_Player_ID_1.Out", "box_CinematicPrep_31.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_TaxiRatingController_30_RewardShown()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.PlayerVehicle
  l0._graph = self
  l0._name = "box_Vehicle_Controller_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1777792614"
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.Destructable = self.f_box_Vehicle_Controller_34_Destructable
  l0.Indestructable = DummyFunction
  l0.Deflatable = DummyFunction
  l0.Undeflatable = DummyFunction
  l0.Unmovable = DummyFunction
  l0.Movable = DummyFunction
  l0.EngineBroken = DummyFunction
  l0.EngineShutDown = DummyFunction
  l0.EngineStarted = DummyFunction
  l0.VehicleExploded = DummyFunction
  l0.VehicleAlarmHackOn = DummyFunction
  l0.VehicleAlarmHackOff = DummyFunction
  l0 = self.box_TaxiRatingController_30
  l1 = Boxes[PathID("domino/System/VehicleController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1822201489", "1822201489", "Taxi10_Main", "box_TaxiRatingController_30.RewardShown", "box_Vehicle_Controller_34.SetAsDestructable", l0, l1)
  l1:SetAsDestructable()
end
function export:f_box_TriggerMonitor_v2_81_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_46
  l0.Seconds = 4
  l0 = self.box_TriggerMonitor_v2_81
  l1 = self.box_Timer_v2_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1058565488", "1058565488", "Taxi10_Main", "box_TriggerMonitor_v2_81.Enabled", "box_Timer_v2_46.Start", l0, l1)
  l1:Start()
end
function export:f_box_TriggerMonitor_v2_81_Enter()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|2088191915"
  l0.Out = self.f_box_Simple_Node_45_Out
  l0 = self.box_TriggerMonitor_v2_81
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|276840040", "276840040", "Taxi10_Main", "box_TriggerMonitor_v2_81.Enter", "box_Simple_Node_45.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_25_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|288417963"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_6_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_6_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1122798848", "1122798848", "Taxi10_Main", "box_Simple_Node_25.Out", "box_Ordered_Output_6.In", clone, l0)
  l0:In()
end
function export:f_box_3DGPSController_19_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_3DGPSController_19()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1825397393", "1825397393", "Taxi10_Main", "box_3DGPSController_19.Disabled", "box_3DGPSController_19.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Integer_Select_89_Match_0()
  local l0, l1
  self = self._graph
  l0 = self.box_Integer_Select_89
  l1 = self.box_Timer_v2_69
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1793836305", "1793836305", "Taxi10_Main", "box_Integer_Select_89.Match", "box_Timer_v2_69.Start", l0, l1)
  l1:Start()
end
function export:f_box_Integer_Select_89_Match_1()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_82()
  l0 = self.box_Integer_Select_89
  l1 = self.box_TriggerMonitor_v2_82
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1521997082", "1521997082", "Taxi10_Main", "box_Integer_Select_89.Match", "box_TriggerMonitor_v2_82.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Integer_Select_89_Match_2()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_111
  l0.Pawn1 = self.Liv
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372050763438572"
  l0.StartDelay = 1
  l0 = self.box_Integer_Select_89
  l1 = self.box_DriveAndTalk_111
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|401105941", "401105941", "Taxi10_Main", "box_Integer_Select_89.Match", "box_DriveAndTalk_111.Start", l0, l1)
  l1:Start()
end
function export:f_box_Integer_Select_89_Match_3()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_87()
  l0 = self.box_Integer_Select_89
  l1 = self.box_TriggerMonitor_v2_87
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|499053487", "499053487", "Taxi10_Main", "box_Integer_Select_89.Match", "box_TriggerMonitor_v2_87.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Integer_Select_89_Match_4()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_112
  l0.Pawn1 = self.Liv
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372050763438573"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372052209434196"
  l0 = self.box_Integer_Select_89
  l1 = self.box_DriveAndTalk_112
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1106222693", "1106222693", "Taxi10_Main", "box_Integer_Select_89.Match", "box_DriveAndTalk_112.Start", l0, l1)
  l1:Start()
end
function export:f_box_Integer_Select_89_Match_5()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_90()
  l0 = self.box_Integer_Select_89
  l1 = self.box_TriggerMonitor_v2_90
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|472222160", "472222160", "Taxi10_Main", "box_Integer_Select_89.Match", "box_TriggerMonitor_v2_90.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Integer_Select_89_Match_6()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1887021971"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_40_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_40_Out_1
  l0 = self.box_Integer_Select_89
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|698864753", "698864753", "Taxi10_Main", "box_Integer_Select_89.Match", "box_Ordered_Output_40.In", l0, l1)
  l1:In()
end
function export:f_box_Integer_Select_89_Match_7()
  local l0, l1
  self = self._graph
  self:OnEnter_box_3DGPSController_94()
  l0 = self.box_Integer_Select_89
  l1 = Boxes[PathID("domino/System/GPS3DController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|136722632", "136722632", "Taxi10_Main", "box_Integer_Select_89.Match", "box_3DGPSController_94.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Integer_Select_89_Match_8()
  local l0, l1
  self = self._graph
  self:OnEnter_box_3DGPSController_35()
  l0 = self.box_Integer_Select_89
  l1 = Boxes[PathID("domino/System/GPS3DController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1631728848", "1631728848", "Taxi10_Main", "box_Integer_Select_89.Match", "box_3DGPSController_35.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Integer_Select_89_Match_9()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_96()
  l0 = self.box_Integer_Select_89
  l1 = self.box_TriggerMonitor_v2_96
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|531796746", "531796746", "Taxi10_Main", "box_Integer_Select_89.Match", "box_TriggerMonitor_v2_96.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Integer_Select_89_Match_10()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|964649742"
  l0.Out = self.f_box_Simple_Node_25_Out
  l0 = self.box_Integer_Select_89
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|983542897", "983542897", "Taxi10_Main", "box_Integer_Select_89.Match", "box_Simple_Node_25.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_v3_109_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiStrategiesController_56
  l0.Config = "TaxiRideStrategyConfig.9223372047360464802"
  l0 = self.box_MissionMessageController_v3_109
  l1 = self.box_TaxiStrategiesController_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1281377175", "1281377175", "Taxi10_Main", "box_MissionMessageController_v3_109.Out", "box_TaxiStrategiesController_56.Start", l0, l1)
  l1:Start()
end
function export:f_box_Simple_Node_29_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_81()
  l0 = self.box_TriggerMonitor_v2_81
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|622702978", "622702978", "Taxi10_Main", "box_Simple_Node_29.Out", "box_TriggerMonitor_v2_81.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_DriveAndTalk_54_TalkFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_70
  l0.Seconds = 0.5
  l0 = self.box_DriveAndTalk_54
  l1 = self.box_Timer_v2_70
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1579843859", "1579843859", "Taxi10_Main", "box_DriveAndTalk_54.TalkFinished", "box_Timer_v2_70.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_76_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_114
  l0.Pawn1 = self.Liv
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372050763438570"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372052209434196"
  l0 = self.box_Timer_v2_76
  l1 = self.box_DriveAndTalk_114
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1146182799", "1146182799", "Taxi10_Main", "box_Timer_v2_76.TimeElapsed", "box_DriveAndTalk_114.Start", l0, l1)
  l1:Start()
end
function export:f_box_Simple_Node_5_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_110"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1959091428"
  l0.Out = self.f_box_Simple_Node_110_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1929669443", "1929669443", "Taxi10_Main", "box_Simple_Node_5.Out", "box_Simple_Node_110.In", clone, l0)
  l0:In()
end
function export:f_box_TaxiStrategiesController_39_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRatingController_30
  l0.MissionName = self.Mission
  l0 = self.box_TaxiStrategiesController_39
  l1 = self.box_TaxiRatingController_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|192144532", "192144532", "Taxi10_Main", "box_TaxiStrategiesController_39.Stopped", "box_TaxiRatingController_30.ShowReward", l0, l1)
  l1:ShowReward()
end
function export:f_box_Timer_v2_71_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_78
  l0.Pawn1 = self.Liv
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372050763438571"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372052209434196"
  l0 = self.box_Timer_v2_71
  l1 = self.box_DriveAndTalk_78
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|196455659", "196455659", "Taxi10_Main", "box_Timer_v2_71.TimeElapsed", "box_DriveAndTalk_78.Start", l0, l1)
  l1:Start()
end
function export:f_box_TaxiStrategiesController_56_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1535859692"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_38_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_38_Out_1
  l0 = self.box_TaxiStrategiesController_56
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1278165421", "1278165421", "Taxi10_Main", "box_TaxiStrategiesController_56.Started", "box_Ordered_Output_38.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_49_TimeElapsed()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: Hey-hey, thrillseekers!Daredevil Liv geared up and ready to fly.What's your name?Will Smith. Let's touch the sky, Will!", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'DriveAndTalk')-- Comment: Hey-hey, thrillseekers!Daredevil Liv geared up and ready to fly.What's your name?Will Smith. Let's touch the sky, Will!")
  l0 = self.box_DriveAndTalk_53
  l0.Pawn1 = self.Liv
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149900"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372052209434196"
  l0 = self.box_Timer_v2_49
  l1 = self.box_DriveAndTalk_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1099620611", "1099620611", "Taxi10_Main", "box_Timer_v2_49.TimeElapsed", "box_DriveAndTalk_53.Start", l0, l1)
  l1:Start()
end
function export:f_box_DriveAndTalk_115_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_3DGPSController_19()
  l0 = self.box_DriveAndTalk_115
  l1 = Boxes[PathID("domino/System/GPS3DController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1746800184", "1746800184", "Taxi10_Main", "box_DriveAndTalk_115.Started", "box_3DGPSController_19.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_DriveAndTalk_115_TalkFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_76
  l0.Seconds = 10
  l0 = self.box_DriveAndTalk_115
  l1 = self.box_Timer_v2_76
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1258176601", "1258176601", "Taxi10_Main", "box_DriveAndTalk_115.TalkFinished", "box_Timer_v2_76.Start", l0, l1)
  l1:Start()
end
function export:f_box_Simple_Node_32_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TaxiCheckpointController_13()
  l0 = self.box_TaxiCheckpointController_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|425607287", "425607287", "Taxi10_Main", "box_Simple_Node_32.Out", "box_TaxiCheckpointController_13.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_ListWriter_21_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_21
  self.GIC_Users = l0.Target
  self:OnEnter_box_GameplayInteractionController_16()
  l1 = self.box_GameplayInteractionController_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1589519611", "1589519611", "Taxi10_Main", "box_ListWriter_21.Added", "box_GameplayInteractionController_16.Start", l0, l1)
  l1:Start()
end
function export:f_box_ListWriter_21_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_21
  self.GIC_Users = l0.Target
end
function export:f_box_ListWriter_21_Removed()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_21
  self.GIC_Users = l0.Target
  self:OnEnter_box_GameplayInteractionController_16()
  l1 = self.box_GameplayInteractionController_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|2060613210", "2060613210", "Taxi10_Main", "box_ListWriter_21.Removed", "box_GameplayInteractionController_16.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_TriggerMonitor_v2_90_Enter()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_105"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|296607945"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_105_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_105_Out_1
  l0 = self.box_TriggerMonitor_v2_90
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1169884434", "1169884434", "Taxi10_Main", "box_TriggerMonitor_v2_90.Enter", "box_Ordered_Output_105.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_v3_3_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|630106743"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_8_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_8_Out_1
  l0 = self.box_MissionMessageController_v3_3
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|567038037", "567038037", "Taxi10_Main", "box_MissionMessageController_v3_3.Out", "box_Ordered_Output_8.In", l0, l1)
  l1:In()
end
function export:f_box_3DGPSController_91_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_3DGPSController_91()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1240784439", "1240784439", "Taxi10_Main", "box_3DGPSController_91.Disabled", "box_3DGPSController_91.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Simple_Node_27_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1085462866"
  l0.Out = self.f_box_Simple_Node_29_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1412436774", "1412436774", "Taxi10_Main", "box_Simple_Node_27.Out", "box_Simple_Node_29.In", clone, l0)
  l0:In()
end
function export:f_box_3DGPSController_97_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_3DGPSController_97()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|2130532712", "2130532712", "Taxi10_Main", "box_3DGPSController_97.Disabled", "box_3DGPSController_97.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_38_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_3DGPSController_79()
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1030183754", "1030183754", "Taxi10_Main", "box_Ordered_Output_38.Out", "box_3DGPSController_79.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_38_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1495678727"
  l0.Out = self.f_box_Simple_Node_27_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|17383015", "17383015", "Taxi10_Main", "box_Ordered_Output_38.Out", "box_Simple_Node_27.In", clone, l0)
  l0:In()
end
function export:f_box_Timer_v2_46_TimeElapsed()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: I'm Liv. Daredevil Liv. Uhm...It's my online show. I take part in daring feats of action and thrills. I was hoping you'd help me out with my next one. Sure. Sounds like fun. ", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'DriveAndTalk')-- Comment: I'm Liv. Daredevil Liv. Uhm...It's my online show. I take part in daring feats of action and thrills. I was hoping you'd help me out with my next one. Sure. Sounds like fun. ")
  l0 = self.box_DriveAndTalk_54
  l0.Pawn1 = self.Liv
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149903"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372052209434196"
  l0 = self.box_Timer_v2_46
  l1 = self.box_DriveAndTalk_54
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1101737117", "1101737117", "Taxi10_Main", "box_Timer_v2_46.TimeElapsed", "box_DriveAndTalk_54.Start", l0, l1)
  l1:Start()
end
function export:f_box_DriveAndTalk_111_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_3DGPSController_33()
  l0 = self.box_DriveAndTalk_111
  l1 = Boxes[PathID("domino/System/GPS3DController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|474997062", "474997062", "Taxi10_Main", "box_DriveAndTalk_111.Started", "box_3DGPSController_33.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_DriveAndTalk_68_TalkFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_49
  l0.Seconds = 0.5
  l0 = self.box_DriveAndTalk_68
  l1 = self.box_Timer_v2_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1980478283", "1980478283", "Taxi10_Main", "box_DriveAndTalk_68.TalkFinished", "box_Timer_v2_49.Start", l0, l1)
  l1:Start()
end
function export:f_box_3DGPSController_15_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_3DGPSController_15()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1476580185", "1476580185", "Taxi10_Main", "box_3DGPSController_15.Disabled", "box_3DGPSController_15.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_TaxiRidePickUpController_117_ClientPickedUp()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRidePickUpController_117
  self.PlayerVehicle = l0.Vehicle
  l0 = self.box_MissionMessageController_v3_3
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF100",
    item = "Instr01",
    id = "627433"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_TaxiRidePickUpController_117
  l1 = self.box_MissionMessageController_v3_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1564782426", "1564782426", "Taxi10_Main", "box_TaxiRidePickUpController_117.ClientPickedUp", "box_MissionMessageController_v3_3.UpdateObjective", l0, l1)
  l1:UpdateObjective()
end
function export:f_box_TaxiRidePickUpController_117_ClientSpawned()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRidePickUpController_117
  self.Liv = l0.Client
  self:OnEnter_box_TaxiRideVehicleMonitor_118()
  l1 = self.box_TaxiRideVehicleMonitor_118
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|623218530", "623218530", "Taxi10_Main", "box_TaxiRidePickUpController_117.ClientSpawned", "box_TaxiRideVehicleMonitor_118.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_3DGPSController_35_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_3DGPSController_35()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|237948796", "237948796", "Taxi10_Main", "box_3DGPSController_35.Disabled", "box_3DGPSController_35.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_3DGPSController_35_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_41
  l0.Seconds = 5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1559761265", "1559761265", "Taxi10_Main", "box_3DGPSController_35.Enabled", "box_Timer_v2_41.Start", clone, l0)
  l0:Start()
end
function export:f_box_Simple_Node_120_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_121"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|2034779095"
  l0.Out = self.f_box_Simple_Node_121_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|552250371", "552250371", "Taxi10_Main", "box_Simple_Node_120.Out", "box_Simple_Node_121.In", clone, l0)
  l0:In()
end
function export:f_box_Vehicle_Controller_34_Destructable()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1304595452", "1304595452", "Taxi10_Main", "box_Vehicle_Controller_34.Destructable", "box_MissionMessageController_v3_17.ShowMissionComplete", clone, l0)
  l0:ShowMissionComplete()
end
function export:f_box_3DGPSController_85_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_3DGPSController_85()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1194589930", "1194589930", "Taxi10_Main", "box_3DGPSController_85.Disabled", "box_3DGPSController_85.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_DriveAndTalk_72_TalkFinished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372054161862346"
  l0.RestrictTraffic = nil
  l0.RestrictPedestrians = nil
  l0.RestrictParking = nil
  l0.ResetLivingCity = nil
  l0.ResetMissionWithLivingCity = nil
  l0.CivilianDensityDbObject = nil
  l0.ParkedCarsDensityDbObject = nil
  l0.TrafficDensityScale = -2
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
  l0._name = "box_Lanes_Restrictions_Control_86"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1553597717"
  l0.Out = DummyFunction
  l0 = self.box_DriveAndTalk_72
  l1 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|110707095", "110707095", "Taxi10_Main", "box_DriveAndTalk_72.TalkFinished", "box_Lanes_Restrictions_Control_86.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_40_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_74
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|2127651748", "2127651748", "Taxi10_Main", "box_Ordered_Output_40.Out", "box_Timer_v2_74.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_40_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_12
  l0.CLO = "9223372051980679173"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|289238651", "289238651", "Taxi10_Main", "box_Ordered_Output_40.Out", "box_CLOController_12.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_43_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1180224854"
  l0.Out = self.f_box_Simple_Node_5_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|715875695", "715875695", "Taxi10_Main", "box_Ordered_Output_43.Out", "box_Simple_Node_5.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_43_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TaxiStrategiesController_39
  l0.Config = "TaxiRideStrategyConfig.9223372047360464802"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1073280266", "1073280266", "Taxi10_Main", "box_Ordered_Output_43.Out", "box_TaxiStrategiesController_39.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_TaxiCheckpointController_13_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|175335026"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_10_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_10_Out_1
  l0 = self.box_TaxiCheckpointController_13
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1414422058", "1414422058", "Taxi10_Main", "box_TaxiCheckpointController_13.Enabled", "box_Ordered_Output_10.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_110_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|116061177"
  l0.Out = self.f_box_Simple_Node_47_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|812744051", "812744051", "Taxi10_Main", "box_Simple_Node_110.Out", "box_Simple_Node_47.In", clone, l0)
  l0:In()
end
function export:f_box_TriggerMonitor_v2_96_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_71
  l0.Seconds = 6
  l0 = self.box_TriggerMonitor_v2_96
  l1 = self.box_Timer_v2_71
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|123697391", "123697391", "Taxi10_Main", "box_TriggerMonitor_v2_96.Enabled", "box_Timer_v2_71.Start", l0, l1)
  l1:Start()
end
function export:f_box_TriggerMonitor_v2_96_Enter()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_107"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|421860970"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_107_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_107_Out_1
  l0 = self.box_TriggerMonitor_v2_96
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|849551787", "849551787", "Taxi10_Main", "box_TriggerMonitor_v2_96.Enter", "box_Ordered_Output_107.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_v3_17_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0.Player = nil
  l0.Target = nil
  l0.Path = "9223372052167992994"
  l0.Index = nil
  l0.PathType = "Custom"
  l0._graph = self
  l0._name = "box_3DGPSController_98"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|333341105"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_3DGPSController_98_Disabled
  l0.TargetAdded = DummyFunction
  l0.TargetRemoved = DummyFunction
  l0 = self.box_MissionMessageController_v3_17
  l1 = Boxes[PathID("domino/System/GPS3DController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|471482197", "471482197", "Taxi10_Main", "box_MissionMessageController_v3_17.Out", "box_3DGPSController_98.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_TaxiRideVehicleMonitor_118_ClientBailedOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_20()
  l0 = self.box_TaxiRideVehicleMonitor_118
  l1 = self.box_Taxi_AbortMission_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1266336972", "1266336972", "Taxi10_Main", "box_TaxiRideVehicleMonitor_118.ClientBailedOut", "box_Taxi_AbortMission_20.ClientBailedOut", l0, l1)
  l1:ClientBailedOut()
end
function export:f_box_TaxiRideVehicleMonitor_118_ClientDeath()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_20()
  l0 = self.box_TaxiRideVehicleMonitor_118
  l1 = self.box_Taxi_AbortMission_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1378745505", "1378745505", "Taxi10_Main", "box_TaxiRideVehicleMonitor_118.ClientDeath", "box_Taxi_AbortMission_20.ClientDead", l0, l1)
  l1:ClientDead()
end
function export:f_box_TaxiRideVehicleMonitor_118_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_ListWriter_21()
  l0 = self.box_TaxiRideVehicleMonitor_118
  l1 = self.box_ListWriter_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|2090035195", "2090035195", "Taxi10_Main", "box_TaxiRideVehicleMonitor_118.Disabled", "box_ListWriter_21.Remove", l0, l1)
  l1:Remove()
end
function export:f_box_TaxiRideVehicleMonitor_118_PlayerAbandonedVehicle()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_20()
  l0 = self.box_TaxiRideVehicleMonitor_118
  l1 = self.box_Taxi_AbortMission_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1691537547", "1691537547", "Taxi10_Main", "box_TaxiRideVehicleMonitor_118.PlayerAbandonedVehicle", "box_Taxi_AbortMission_20.PlayerAbandonedVehicle", l0, l1)
  l1:PlayerAbandonedVehicle()
end
function export:f_box_TaxiRideVehicleMonitor_118_VehicleUnusable()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_20()
  l0 = self.box_TaxiRideVehicleMonitor_118
  l1 = self.box_Taxi_AbortMission_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|152548622", "152548622", "Taxi10_Main", "box_TaxiRideVehicleMonitor_118.VehicleUnusable", "box_Taxi_AbortMission_20.VehicleUnusable", l0, l1)
  l1:VehicleUnusable()
end
function export:f_box_Simple_Node_121_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Integer_Select_89
  l0.Integer = self.CPIndex
  l0.Case[0] = 2
  l0.Case[1] = 4
  l0.Case[2] = 5
  l0.Case[3] = 8
  l0.Case[4] = 10
  l0.Case[5] = 14
  l0.Case[6] = 15
  l0.Case[7] = 17
  l0.Case[8] = 18
  l0.Case[9] = 21
  l0.Case[10] = 28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|512612269", "512612269", "Taxi10_Main", "box_Simple_Node_121.Out", "box_Integer_Select_89.In", clone, l0)
  l0:In()
end
function export:f_box_Simple_Node_113_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1329063274"
  l0.Out = self.f_box_Simple_Node_32_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|258593024", "258593024", "Taxi10_Main", "box_Simple_Node_113.Out", "box_Simple_Node_32.In", clone, l0)
  l0:In()
end
function export:f_box_Simple_Node_45_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_109
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "RatingTip_AirTime",
    id = "551693"
  }
  l0.HasObjectiveMarker = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1365184012", "1365184012", "Taxi10_Main", "box_Simple_Node_45.Out", "box_MissionMessageController_v3_109.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_3DGPSController_33_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_3DGPSController_33()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|344207046", "344207046", "Taxi10_Main", "box_3DGPSController_33.Disabled", "box_3DGPSController_33.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Vehicle_Controller_26_Indestructable()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TaxiCheckpointController_13()
  l0 = self.box_TaxiCheckpointController_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|317685414", "317685414", "Taxi10_Main", "box_Vehicle_Controller_26.Indestructable", "box_TaxiCheckpointController_13.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Simple_Node_28_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TaxiRideReachDestinationMonitor_4
  l0.Client = self.Liv
  l0.DropOffIcon = "9223372046987693874"
  l0.LastDestination = 1
  l0.ShowGps = 1
  l0.Config = "TaxiRideGameplayBrick.9223372057399402695"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|323339498", "323339498", "Taxi10_Main", "box_Simple_Node_28.Out", "box_TaxiRideReachDestinationMonitor_4.Enable", clone, l0)
  l0:Enable()
end
function export:OnEnter_box_3DGPSController_94()
  local l0
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0.Player = nil
  l0.Target = nil
  l0.Path = "9223372066181113388"
  l0.Index = nil
  l0.PathType = "Custom"
  l0._graph = self
  l0._name = "box_3DGPSController_94"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|25490837"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_3DGPSController_94_Disabled
  l0.TargetAdded = DummyFunction
  l0.TargetRemoved = DummyFunction
end
function export:OnEnter_box_TriggerMonitor_v2_82()
  local l0
  l0 = self.box_TriggerMonitor_v2_82
  l0.Trigger = "9223372052168063913"
end
function export:OnEnter_box_3DGPSController_79()
  local l0
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0.Player = nil
  l0.Target = nil
  l0.Path = "9223372052168063572"
  l0.Index = nil
  l0.PathType = "Custom"
  l0._graph = self
  l0._name = "box_3DGPSController_79"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|287143755"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_3DGPSController_79_Disabled
  l0.TargetAdded = DummyFunction
  l0.TargetRemoved = DummyFunction
end
function export:OnEnter_box_MultipleOR_57()
end
function export:OnEnter_box_TriggerMonitor_v2_87()
  local l0
  l0 = self.box_TriggerMonitor_v2_87
  l0.Trigger = "9223372052168063917"
end
function export:OnEnter_box_TaxiCheckpointMonitor_18()
  local l0
  l0 = Boxes[PathID("domino/System/TaxiCheckpointMonitor.lua")]
  l0._graph = self
  l0._name = "box_TaxiCheckpointMonitor_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|506565625"
  l0.Enabled = self.f_box_TaxiCheckpointMonitor_18_Enabled
  l0.Disabled = DummyFunction
  l0.OnCheckpointReached = self.f_box_TaxiCheckpointMonitor_18_OnCheckpointReached
  l0.OnDestinationReached = self.f_box_TaxiCheckpointMonitor_18_OnDestinationReached
end
function export:OnEnter_box_Taxi_AbortMission_20()
  local l0
  l0 = self.box_Taxi_AbortMission_20
  l0.MissionName = self.Mission
  l0.LayerName = "Taxi10_Main"
  l0.StrategyConfig = "TaxiRideStrategyConfig.9223372047360464802"
  l0.Pawn1 = self.Liv
  l0.Pawn2 = self.PlayerEntity
  l0.Vehicle = self.PlayerVehicle
  l0.Conversation = "ConversationSetting.9223372048760149902"
end
function export:OnEnter_box_3DGPSController_88()
  local l0
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0.Player = nil
  l0.Target = nil
  l0.Path = "9223372066181113373"
  l0.Index = nil
  l0.PathType = "Custom"
  l0._graph = self
  l0._name = "box_3DGPSController_88"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|747820966"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_3DGPSController_88_Disabled
  l0.TargetAdded = DummyFunction
  l0.TargetRemoved = DummyFunction
end
function export:OnEnter_box_TriggerMonitor_v2_81()
  local l0
  l0 = self.box_TriggerMonitor_v2_81
  l0.Trigger = "9223372052167994011"
end
function export:OnEnter_box_3DGPSController_19()
  local l0
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0.Player = nil
  l0.Target = nil
  l0.Path = "9223372052168064397"
  l0.Index = nil
  l0.PathType = "Custom"
  l0._graph = self
  l0._name = "box_3DGPSController_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|975972083"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_3DGPSController_19_Disabled
  l0.TargetAdded = DummyFunction
  l0.TargetRemoved = DummyFunction
end
function export:OnEnter_box_ListWriter_21()
  local l0
  l0 = self.box_ListWriter_21
  l0.Input = self.GIC_Users
  l0.Data[0] = self.PlayerEntity
  l0.Data[1] = self.Liv
end
function export:OnEnter_box_TriggerMonitor_v2_90()
  local l0
  l0 = self.box_TriggerMonitor_v2_90
  l0.Trigger = "9223372052168064395"
end
function export:OnEnter_box_3DGPSController_91()
  local l0
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0.Player = nil
  l0.Target = nil
  l0.Path = "9223372066181113381"
  l0.Index = nil
  l0.PathType = "Custom"
  l0._graph = self
  l0._name = "box_3DGPSController_91"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1454341062"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_3DGPSController_91_Disabled
  l0.TargetAdded = DummyFunction
  l0.TargetRemoved = DummyFunction
end
function export:OnEnter_box_3DGPSController_97()
  local l0
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0.Player = nil
  l0.Target = nil
  l0.Path = "9223372052168064409"
  l0.Index = nil
  l0.PathType = "Custom"
  l0._graph = self
  l0._name = "box_3DGPSController_97"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1531931716"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_3DGPSController_97_Disabled
  l0.TargetAdded = DummyFunction
  l0.TargetRemoved = DummyFunction
end
function export:OnEnter_box_3DGPSController_15()
  local l0
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0.Player = nil
  l0.Target = nil
  l0.Path = "9223372052168063919"
  l0.Index = nil
  l0.PathType = "Custom"
  l0._graph = self
  l0._name = "box_3DGPSController_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1644828982"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_3DGPSController_15_Disabled
  l0.TargetAdded = DummyFunction
  l0.TargetRemoved = DummyFunction
end
function export:OnEnter_box_3DGPSController_35()
  local l0
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0.Player = nil
  l0.Target = nil
  l0.Path = "9223372052168064404"
  l0.Index = nil
  l0.PathType = "Custom"
  l0._graph = self
  l0._name = "box_3DGPSController_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1748464434"
  l0.Enabled = self.f_box_3DGPSController_35_Enabled
  l0.Disabled = self.f_box_3DGPSController_35_Disabled
  l0.TargetAdded = DummyFunction
  l0.TargetRemoved = DummyFunction
end
function export:OnEnter_box_GameplayInteractionController_16()
  local l0
  l0 = self.box_GameplayInteractionController_16
  l0.Users = self.GIC_Users
  l0.RuleConfig = "GameplayConversationSettings.9223372052209434196"
end
function export:OnEnter_box_3DGPSController_85()
  local l0
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0.Player = nil
  l0.Target = nil
  l0.Path = "9223372066181113371"
  l0.Index = nil
  l0.PathType = "Custom"
  l0._graph = self
  l0._name = "box_3DGPSController_85"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|1817769975"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_3DGPSController_85_Disabled
  l0.TargetAdded = DummyFunction
  l0.TargetRemoved = DummyFunction
end
function export:OnEnter_box_TaxiCheckpointController_13()
  local l0
  l0 = self.box_TaxiCheckpointController_13
  l0.PathOrStart = "9223372050129417781"
  l0.Destination = "9223372046987693874"
end
function export:OnEnter_box_TriggerMonitor_v2_96()
  local l0
  l0 = self.box_TriggerMonitor_v2_96
  l0.Trigger = "9223372052168064406"
end
function export:OnEnter_box_TaxiRideVehicleMonitor_118()
  local l0
  l0 = self.box_TaxiRideVehicleMonitor_118
  l0.Client = self.Liv
  l0.Config = "TaxiRideGameplayBrick.9223372057399402695"
end
function export:OnEnter_box_3DGPSController_33()
  local l0
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0.Player = nil
  l0.Target = nil
  l0.Path = "9223372052168063915"
  l0.Index = nil
  l0.PathType = "Custom"
  l0._graph = self
  l0._name = "box_3DGPSController_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi10.domino|@Taxi10_Main|2090984865"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_3DGPSController_33_Disabled
  l0.TargetAdded = DummyFunction
  l0.TargetRemoved = DummyFunction
end
_compilerVersion = 4
