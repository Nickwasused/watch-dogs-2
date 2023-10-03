export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AssignPatrol_v2.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  cbox:RegisterBox("domino/System/EnableSystemicMusic.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/MapPointController_v3.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PawnHealthMonitor_v3.lua")
  cbox:RegisterBox("domino/Library/singleplayer/taxi/Taxi_Missions.PickUp_CarAndClient.debug.lua")
  cbox:RegisterBox("domino/Library/singleplayer/taxi/Taxi_Missions.Player_VehicleMonitor.debug.lua")
  cbox:RegisterBox("domino/System/ProximityMonitor.lua")
  cbox:RegisterBox("domino/Library/singleplayer/taxi/Taxi_Missions.ReachDestination.debug.lua")
  cbox:RegisterBox("domino/System/SetActionMap_v2.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  cbox:RegisterBox("domino/System/StopMusic.lua")
  cbox:RegisterBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.debug.lua")
  cbox:RegisterBox("domino/System/TaxiController.lua")
  cbox:RegisterBox("domino/System/TaxiRatingController.lua")
  cbox:RegisterBox("domino/System/TaxiStrategiesController.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TutorialController.lua")
  cbox:RegisterBox("domino/System/VehicleBhvMonitor.lua")
  cbox:RegisterBox("domino/System/VehicleBhvController.lua")
  cbox:RegisterBox("domino/System/VehicleMonitor_v2.lua")
  cbox:RegisterBox("domino/System/VehicleSeatingController.lua")
end
function export:Init(cbox)
  local l0
  self._name = "Taxi13_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main"
  self.PlayerEntity = nil
  self.Client = nil
  self.PlayerVehicle = nil
  self.Mission = "MissionList.9223372047582728459"
  self.ClientCLO = "9223372046858693747"
  self.VIPVehicle = nil
  self.VIPDriver = nil
  self.box_MultipleOR_89 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_89
  l0._graph = self
  l0._name = "box_MultipleOR_89"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|31517687"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_89_Out
  self.box_Taxi_AbortMission_5 = cbox:CreateBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.debug.lua")
  l0 = self.box_Taxi_AbortMission_5
  l0._graph = self
  l0._name = "box_Taxi_AbortMission_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|33080586"
  self.box_PawnHealthMonitor_v3_12 = cbox:CreateBox("domino/System/PawnHealthMonitor_v3.lua")
  l0 = self.box_PawnHealthMonitor_v3_12
  l0._graph = self
  l0._name = "box_PawnHealthMonitor_v3_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|36361337"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_PawnHealthMonitor_v3_12_Disabled
  l0.Damaged = DummyFunction
  l0.Killed = self.f_box_PawnHealthMonitor_v3_12_Killed
  l0.DBNO = DummyFunction
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
  self.box_Timer_v2_61 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_61
  l0._graph = self
  l0._name = "box_Timer_v2_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|37075971"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_61_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Assign_Patrol_Controller_v2_60 = cbox:CreateBox("domino/System/AssignPatrol_v2.lua")
  l0 = self.box_Assign_Patrol_Controller_v2_60
  l0._graph = self
  l0._name = "box_Assign_Patrol_Controller_v2_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|54967122"
  l0.Out = DummyFunction
  l0.Assigned = self.f_box_Assign_Patrol_Controller_v2_60_Assigned
  l0.Unassigned = DummyFunction
  l0.SpeedSet = DummyFunction
  l0.Aborted = DummyFunction
  l0.Failed = DummyFunction
  self.box_ReachDestination_43 = cbox:CreateBox("domino/Library/singleplayer/taxi/Taxi_Missions.ReachDestination.debug.lua")
  l0 = self.box_ReachDestination_43
  l0._graph = self
  l0._name = "box_ReachDestination_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|74320558"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.DestinationReached = self.f_box_ReachDestination_43_DestinationReached
  self.box_TaxiStrategiesController_55 = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self.box_TaxiStrategiesController_55
  l0._graph = self
  l0._name = "box_TaxiStrategiesController_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|106727515"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_TaxiStrategiesController_55_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self.box_TaxiStrategiesController_85 = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self.box_TaxiStrategiesController_85
  l0._graph = self
  l0._name = "box_TaxiStrategiesController_85"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|146355042"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self.box_MultipleOR_87 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_87
  l0._graph = self
  l0._name = "box_MultipleOR_87"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|163720463"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_87_Out
  self.box_TaxiRatingController_75 = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self.box_TaxiRatingController_75
  l0._graph = self
  l0._name = "box_TaxiRatingController_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|184481163"
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = self.f_box_TaxiRatingController_75_RatingReset
  l0.RewardShown = DummyFunction
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self.box_TutorialController_32 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_32
  l0._graph = self
  l0._name = "box_TutorialController_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|192870811"
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_box_TutorialController_32_DisplayRequested
  l0.NotificationHidden = self.f_box_TutorialController_32_NotificationHidden
  l0.MessageCompleted = DummyFunction
  self.box_MultipleOR_40 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_40
  l0._graph = self
  l0._name = "box_MultipleOR_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|196646552"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_40_Out
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionCheckpointReach_11 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_11
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|263084297"
  l0.Out = DummyFunction
  l0.AllCheckpointsDisabled = self.f_box_MissionCheckpointReach_11_AllCheckpointsDisabled
  self.box_Timer_v2_82 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_82
  l0._graph = self
  l0._name = "box_Timer_v2_82"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|264759694"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_82_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_VehicleSeatingController_59 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_59
  l0._graph = self
  l0._name = "box_VehicleSeatingController_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|276001699"
  l0.Assigned = DummyFunction
  l0.Unassigned = self.f_box_VehicleSeatingController_59_Unassigned
  l0.AssignCompleted = DummyFunction
  l0.UnassignCompleted = self.f_box_VehicleSeatingController_59_UnassignCompleted
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_DriveAndTalk_50 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_50
  l0._graph = self
  l0._name = "box_DriveAndTalk_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|304295236"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_50_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_DriveAndTalk_53 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_53
  l0._graph = self
  l0._name = "box_DriveAndTalk_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|347631824"
  l0.Started = self.f_box_DriveAndTalk_53_Started
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_53_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_MissionCheckpointReach_27 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_27
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|467784729"
  l0.Out = self.f_box_MissionCheckpointReach_27_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_Timer_v2_3 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_3
  l0._graph = self
  l0._name = "box_Timer_v2_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|471613420"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_3_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_TutorialController_33 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_33
  l0._graph = self
  l0._name = "box_TutorialController_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|483004440"
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_box_TutorialController_33_DisplayRequested
  l0.NotificationHidden = self.f_box_TutorialController_33_NotificationHidden
  l0.MessageCompleted = DummyFunction
  self.box_Timer_v2_93 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_93
  l0._graph = self
  l0._name = "box_Timer_v2_93"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|529517296"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_93_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionMessageController_v3_47 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_47
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|548508002"
  l0.Out = self.f_box_MissionMessageController_v3_47_Out
  l0.MessageCompleted = DummyFunction
  self.box_Timer_v2_96 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_96
  l0._graph = self
  l0._name = "box_Timer_v2_96"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|554438430"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_96_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionController_v4_65 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_65
  l0._graph = self
  l0._name = "box_MissionController_v4_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|576932915"
  self.box_Timer_v2_46 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_46
  l0._graph = self
  l0._name = "box_Timer_v2_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|650949856"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_46_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_72 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_72
  l0._graph = self
  l0._name = "box_Timer_v2_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|702323941"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_72_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_83 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_83
  l0._graph = self
  l0._name = "box_Timer_v2_83"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|704818346"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_83_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Vehicle_Bhv_Monitor_80 = cbox:CreateBox("domino/System/VehicleBhvMonitor.lua")
  l0 = self.box_Vehicle_Bhv_Monitor_80
  l0._graph = self
  l0._name = "box_Vehicle_Bhv_Monitor_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|722729387"
  l0.Out = self.f_box_Vehicle_Bhv_Monitor_80_Out
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Vehicle_Bhv_Monitor_80_Disabled
  l0.Stuck = DummyFunction
  l0.Broken = DummyFunction
  l0.TargetDetected = DummyFunction
  l0.InLOS = DummyFunction
  l0.ReacquireLOSTimerExpired = DummyFunction
  l0.LostLOSTimerExpired = DummyFunction
  l0.SuspiciousTargetAction = DummyFunction
  l0.SpecificPathPointReached = DummyFunction
  l0.PathPointReached = DummyFunction
  l0.EndPathPointReached = self.f_box_Vehicle_Bhv_Monitor_80_EndPathPointReached
  l0.InRange = DummyFunction
  l0.WarningRange = DummyFunction
  l0.OutsideRange = DummyFunction
  l0.OutsideTimerExpired = DummyFunction
  self.box_DriveAndTalk_54 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_54
  l0._graph = self
  l0._name = "box_DriveAndTalk_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|732568876"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_54_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_CinematicPrep_14 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_14
  l0._graph = self
  l0._name = "box_CinematicPrep_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|745989000"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_14_PostOut
  self.box_CLOController_4 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_4
  l0._graph = self
  l0._name = "box_CLOController_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|789140764"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_4_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_MissionMessageController_v3_73 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_73
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|846178032"
  l0.Out = self.f_box_MissionMessageController_v3_73_Out
  l0.MessageCompleted = DummyFunction
  self.box_Timer_v2_84 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_84
  l0._graph = self
  l0._name = "box_Timer_v2_84"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|878688950"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_84_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_34 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_34
  l0._graph = self
  l0._name = "box_Timer_v2_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|927390360"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_34_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_DriveAndTalk_19 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_19
  l0._graph = self
  l0._name = "box_DriveAndTalk_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|934330020"
  l0.Started = self.f_box_DriveAndTalk_19_Started
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_TaxiStrategiesController_70 = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self.box_TaxiStrategiesController_70
  l0._graph = self
  l0._name = "box_TaxiStrategiesController_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|939733016"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = self.f_box_TaxiStrategiesController_70_Paused
  l0.Resumed = DummyFunction
  self.box_DriveAndTalk_90 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_90
  l0._graph = self
  l0._name = "box_DriveAndTalk_90"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|977290548"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_90_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_MissionLayer_v2_66 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_66
  l0._graph = self
  l0._name = "box_MissionLayer_v2_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|998249499"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_66_Unloaded
  l0.Reseted = DummyFunction
  self.box_MultipleOR_35 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_35
  l0._graph = self
  l0._name = "box_MultipleOR_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1024743868"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_35_Out
  self.box_MultipleOR_78 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_78
  l0._graph = self
  l0._name = "box_MultipleOR_78"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1074522731"
  l0._DynamicAnchors = {Input = 5}
  l0.Out = self.f_box_MultipleOR_78_Out
  self.box_CLOController_24 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_24
  l0._graph = self
  l0._name = "box_CLOController_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1088087758"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_24_OnUserInPlace
  self.box_Timer_v2_68 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_68
  l0._graph = self
  l0._name = "box_Timer_v2_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1123618465"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_68_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Proximity_Monitor_30 = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self.box_Proximity_Monitor_30
  l0._graph = self
  l0._name = "box_Proximity_Monitor_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1130136853"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Proximity_Monitor_30_Disabled
  l0.EnterRadius = self.f_box_Proximity_Monitor_30_EnterRadius
  l0.ExitRadius = self.f_box_Proximity_Monitor_30_ExitRadius
  self.box_TaxiRatingController_18 = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self.box_TaxiRatingController_18
  l0._graph = self
  l0._name = "box_TaxiRatingController_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1152710114"
  l0.RatingShown = DummyFunction
  l0.RatingHidden = self.f_box_TaxiRatingController_18_RatingHidden
  l0.RatingReset = DummyFunction
  l0.RewardShown = DummyFunction
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self.box_DriveAndTalk_20 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_20
  l0._graph = self
  l0._name = "box_DriveAndTalk_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1183303665"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_20_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_DriveAndTalk_92 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_92
  l0._graph = self
  l0._name = "box_DriveAndTalk_92"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1197197918"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_MissionMessageController_v3_44 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_44
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1247172329"
  l0.Out = self.f_box_MissionMessageController_v3_44_Out
  l0.MessageCompleted = DummyFunction
  self.box_TaxiStrategiesController_71 = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self.box_TaxiStrategiesController_71
  l0._graph = self
  l0._name = "box_TaxiStrategiesController_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1295995481"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_TaxiStrategiesController_71_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self.box_DriveAndTalk_51 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_51
  l0._graph = self
  l0._name = "box_DriveAndTalk_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1330887742"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_51_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_OnceOnly_v3_58 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_58
  l0._graph = self
  l0._name = "box_OnceOnly_v3_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1382340777"
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_box_OnceOnly_v3_58_Out
  l0.ResetOut = DummyFunction
  self.box_DriveAndTalk_48 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_48
  l0._graph = self
  l0._name = "box_DriveAndTalk_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1407038762"
  l0.Started = self.f_box_DriveAndTalk_48_Started
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_48_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_MultipleOR_86 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_86
  l0._graph = self
  l0._name = "box_MultipleOR_86"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1412989813"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_86_Out
  self.box_DriveAndTalk_49 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_49
  l0._graph = self
  l0._name = "box_DriveAndTalk_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1466673722"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_49_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_TaxiRatingController_63 = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self.box_TaxiRatingController_63
  l0._graph = self
  l0._name = "box_TaxiRatingController_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1506586867"
  l0.RatingShown = DummyFunction
  l0.RatingHidden = self.f_box_TaxiRatingController_63_RatingHidden
  l0.RatingReset = DummyFunction
  l0.RewardShown = self.f_box_TaxiRatingController_63_RewardShown
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self.box_Timer_v2_16 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_16
  l0._graph = self
  l0._name = "box_Timer_v2_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1514058804"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_16_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_TaxiRatingController_57 = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self.box_TaxiRatingController_57
  l0._graph = self
  l0._name = "box_TaxiRatingController_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1580378123"
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = DummyFunction
  l0.RewardShown = DummyFunction
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self.box_SnapAndBind_36 = cbox:CreateBox("domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  l0 = self.box_SnapAndBind_36
  l0._graph = self
  l0._name = "box_SnapAndBind_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1595284679"
  l0.Attached = self.f_box_SnapAndBind_36_Attached
  self.box_Timer_v2_91 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_91
  l0._graph = self
  l0._name = "box_Timer_v2_91"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1671758147"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_91_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CLOController_67 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_67
  l0._graph = self
  l0._name = "box_CLOController_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1684175976"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_67_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_MissionLayer_v2_8 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_8
  l0._graph = self
  l0._name = "box_MissionLayer_v2_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1715503894"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_8_Unloaded
  l0.Reseted = DummyFunction
  self.box_MultipleOR_38 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_38
  l0._graph = self
  l0._name = "box_MultipleOR_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1756772205"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_38_Out
  self.box_VehicleMonitor_v2_7 = cbox:CreateBox("domino/System/VehicleMonitor_v2.lua")
  l0 = self.box_VehicleMonitor_v2_7
  l0._graph = self
  l0._name = "box_VehicleMonitor_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1808762075"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_VehicleMonitor_v2_7_Disabled
  l0.Enter = DummyFunction
  l0.Entered = DummyFunction
  l0.Leave = DummyFunction
  l0.Exiting = DummyFunction
  l0.ChangeSeat = DummyFunction
  l0.BailedOut = self.f_box_VehicleMonitor_v2_7_BailedOut
  l0.IsPawnHiding = DummyFunction
  l0.PawnIsNotHiding = DummyFunction
  l0.StateChange = DummyFunction
  l0.TakenDamage = DummyFunction
  l0.IsUnusable = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.NoMoveTimer = DummyFunction
  l0.OnMoveTimer = DummyFunction
  l0.IsSlowEnoughToExit = DummyFunction
  l0.VehicleJump = DummyFunction
  l0.VehicleLanding = DummyFunction
  l0.BollardTakedown = DummyFunction
  l0.SteamPipeTakedown = DummyFunction
  l0.TrafficLightTakedown = DummyFunction
  l0.FullTakedown = DummyFunction
  l0.PartialTakedown = DummyFunction
  self.box_Player_VehicleMonitor_21 = cbox:CreateBox("domino/Library/singleplayer/taxi/Taxi_Missions.Player_VehicleMonitor.debug.lua")
  l0 = self.box_Player_VehicleMonitor_21
  l0._graph = self
  l0._name = "box_Player_VehicleMonitor_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1827975110"
  l0.Out = DummyFunction
  l0.Enabled = self.f_box_Player_VehicleMonitor_21_Enabled
  l0.Disabled = DummyFunction
  l0.Entered = DummyFunction
  l0.Exited = DummyFunction
  l0.VehicleWrecked = self.f_box_Player_VehicleMonitor_21_VehicleWrecked
  l0.PlayerAbandonedVehicle = self.f_box_Player_VehicleMonitor_21_PlayerAbandonedVehicle
  self.box_MultipleOR_42 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_42
  l0._graph = self
  l0._name = "box_MultipleOR_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1828645375"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_42_Out
  self.box_DriveAndTalk_79 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_79
  l0._graph = self
  l0._name = "box_DriveAndTalk_79"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1834742229"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_79_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_Timer_v2_81 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_81
  l0._graph = self
  l0._name = "box_Timer_v2_81"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1848267318"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_81_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_OnceOnly_v3_17 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_17
  l0._graph = self
  l0._name = "box_OnceOnly_v3_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1867713584"
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_box_OnceOnly_v3_17_Out
  l0.ResetOut = DummyFunction
  self.box_Timer_v2_52 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_52
  l0._graph = self
  l0._name = "box_Timer_v2_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1895241453"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_52_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PickUp_CarAndClient_6 = cbox:CreateBox("domino/Library/singleplayer/taxi/Taxi_Missions.PickUp_CarAndClient.debug.lua")
  l0 = self.box_PickUp_CarAndClient_6
  l0._graph = self
  l0._name = "box_PickUp_CarAndClient_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1915273170"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.PickedUp = self.f_box_PickUp_CarAndClient_6_PickedUp
  l0.Spawned = self.f_box_PickUp_CarAndClient_6_Spawned
  l0.FailedMoveAndAssign = DummyFunction
  self.box_VehicleMonitor_v2_23 = cbox:CreateBox("domino/System/VehicleMonitor_v2.lua")
  l0 = self.box_VehicleMonitor_v2_23
  l0._graph = self
  l0._name = "box_VehicleMonitor_v2_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1942239098"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Entered = DummyFunction
  l0.Leave = self.f_box_VehicleMonitor_v2_23_Leave
  l0.Exiting = DummyFunction
  l0.ChangeSeat = DummyFunction
  l0.BailedOut = self.f_box_VehicleMonitor_v2_23_BailedOut
  l0.IsPawnHiding = DummyFunction
  l0.PawnIsNotHiding = DummyFunction
  l0.StateChange = DummyFunction
  l0.TakenDamage = DummyFunction
  l0.IsUnusable = self.f_box_VehicleMonitor_v2_23_IsUnusable
  l0.IsUnderwater = DummyFunction
  l0.NoMoveTimer = self.f_box_VehicleMonitor_v2_23_NoMoveTimer
  l0.OnMoveTimer = DummyFunction
  l0.IsSlowEnoughToExit = DummyFunction
  l0.VehicleJump = DummyFunction
  l0.VehicleLanding = DummyFunction
  l0.BollardTakedown = DummyFunction
  l0.SteamPipeTakedown = DummyFunction
  l0.TrafficLightTakedown = DummyFunction
  l0.FullTakedown = self.f_box_VehicleMonitor_v2_23_FullTakedown
  l0.PartialTakedown = DummyFunction
  self.box_MissionController_v4_13 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_13
  l0._graph = self
  l0._name = "box_MissionController_v4_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1951835029"
  self.box_TaxiController_64 = cbox:CreateBox("domino/System/TaxiController.lua")
  l0 = self.box_TaxiController_64
  l0._graph = self
  l0._name = "box_TaxiController_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1985784067"
  l0.Out = DummyFunction
  l0.OnClientPickedUp = DummyFunction
  l0.OnClientDroppedOff = self.f_box_TaxiController_64_OnClientDroppedOff
  self.box_CLOController_25 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_25
  l0._graph = self
  l0._name = "box_CLOController_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1990218229"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_25_OnUserInPlace
  self.box_DriveAndTalk_69 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_69
  l0._graph = self
  l0._name = "box_DriveAndTalk_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|2012155140"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_69_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_VehicleBhvController_26 = cbox:CreateBox("domino/System/VehicleBhvController.lua")
  l0 = self.box_VehicleBhvController_26
  l0._graph = self
  l0._name = "box_VehicleBhvController_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|2034302862"
  l0.StartCompleted = self.f_box_VehicleBhvController_26_StartCompleted
  l0.StopCompleted = DummyFunction
  l0.ForcedFakeFollow = DummyFunction
  self.box_MapPointController_v3_37 = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_37
  l0._graph = self
  l0._name = "box_MapPointController_v3_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|2095036109"
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_VehicleSeatingController_22 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_22
  l0._graph = self
  l0._name = "box_VehicleSeatingController_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|2118852902"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_box_VehicleSeatingController_22_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_Proximity_Monitor_29 = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self.box_Proximity_Monitor_29
  l0._graph = self
  l0._name = "box_Proximity_Monitor_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|2140297956"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Proximity_Monitor_29_Disabled
  l0.EnterRadius = self.f_box_Proximity_Monitor_29_EnterRadius
  l0.ExitRadius = self.f_box_Proximity_Monitor_29_ExitRadius
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
  self:OnEnter_box_MultipleOR_38()
  l0 = self.box_MultipleOR_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1867216052", "1867216052", "Taxi13_Main", "CheckPoint_0", "box_MultipleOR_38.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_38()
  l0 = self.box_MultipleOR_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|28444595", "28444595", "Taxi13_Main", "In", "box_MultipleOR_38.Input", self, l0)
  l0:Input(0)
end
function export:f_box_MultipleOR_89_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Timer_v2_82()
  l0 = self.box_MultipleOR_89
  l1 = self.box_Timer_v2_82
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1597460382", "1597460382", "Taxi13_Main", "box_MultipleOR_89.Out", "box_Timer_v2_82.Start", l0, l1)
  l1:Start()
end
function export:f_box_PawnHealthMonitor_v3_12_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_5()
  l0 = self.box_PawnHealthMonitor_v3_12
  l1 = self.box_Taxi_AbortMission_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1466970658", "1466970658", "Taxi13_Main", "box_PawnHealthMonitor_v3_12.Disabled", "box_Taxi_AbortMission_5.ClientDead", l0, l1)
  l1:ClientDead()
end
function export:f_box_PawnHealthMonitor_v3_12_Killed()
  local l0
  self = self._graph
  self:OnEnter_box_PawnHealthMonitor_v3_12()
  l0 = self.box_PawnHealthMonitor_v3_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|611637274", "611637274", "Taxi13_Main", "box_PawnHealthMonitor_v3_12.Killed", "box_PawnHealthMonitor_v3_12.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Timer_v2_61_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiStrategiesController_70
  l0.Config = "TaxiRideStrategyConfig.9223372047582772995"
  l0 = self.box_Timer_v2_61
  l1 = self.box_TaxiStrategiesController_70
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|516341120", "516341120", "Taxi13_Main", "box_Timer_v2_61.TimeElapsed", "box_TaxiStrategiesController_70.Pause", l0, l1)
  l1:Pause()
end
function export:f_box_Assign_Patrol_Controller_v2_60_Assigned()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic_nocameralock"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1457203373"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_box_SetActionMap_v2_62_Pushed
  l0.Popped = DummyFunction
  l0 = self.box_Assign_Patrol_Controller_v2_60
  l1 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|782414926", "782414926", "Taxi13_Main", "box_Assign_Patrol_Controller_v2_60.Assigned", "box_SetActionMap_v2_62.Push", l0, l1)
  l1:Push()
end
function export:f_box_Ordered_Output_31_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Proximity_Monitor_30()
  l0 = self.box_Proximity_Monitor_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|331908805", "331908805", "Taxi13_Main", "box_Ordered_Output_31.Out", "box_Proximity_Monitor_30.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_31_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Proximity_Monitor_29()
  l0 = self.box_Proximity_Monitor_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1366650497", "1366650497", "Taxi13_Main", "box_Ordered_Output_31.Out", "box_Proximity_Monitor_29.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_31_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|318231445"
  l0.Out = self.f_box_Simple_Node_77_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1651015317", "1651015317", "Taxi13_Main", "box_Ordered_Output_31.Out", "box_Simple_Node_77.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_31_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Vehicle_Bhv_Monitor_80()
  l0 = self.box_Vehicle_Bhv_Monitor_80
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1074625005", "1074625005", "Taxi13_Main", "box_Ordered_Output_31.Out", "box_Vehicle_Bhv_Monitor_80.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_StopMusic_15_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/StopMusic.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/EnableSystemicMusic.lua")]
  l0.Enable = 1
  l0._graph = self
  l0._name = "box_EnableSystemicMusic_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1585062121"
  l0.Out = self.f_box_EnableSystemicMusic_10_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1415794411", "1415794411", "Taxi13_Main", "box_StopMusic_15.Out", "box_EnableSystemicMusic_10.In", clone, l0)
  l0:In()
end
function export:f_box_ReachDestination_43_DestinationReached()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic_nocameralock"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1047874478"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_box_SetActionMap_v2_45_Pushed
  l0.Popped = DummyFunction
  l0 = self.box_ReachDestination_43
  l1 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|2078867273", "2078867273", "Taxi13_Main", "box_ReachDestination_43.DestinationReached", "box_SetActionMap_v2_45.Push", l0, l1)
  l1:Push()
end
function export:f_box_TaxiStrategiesController_55_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_8
  l0.LayerName = "Taxi13_Main"
  l0 = self.box_TaxiStrategiesController_55
  l1 = self.box_MissionLayer_v2_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|225355350", "225355350", "Taxi13_Main", "box_TaxiStrategiesController_55.Stopped", "box_MissionLayer_v2_8.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_MultipleOR_87_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_32()
  l0 = self.box_MultipleOR_87
  l1 = self.box_TutorialController_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|186347846", "186347846", "Taxi13_Main", "box_MultipleOR_87.Out", "box_TutorialController_32.HideNotification", l0, l1)
  l1:HideNotification()
end
function export:f_box_TaxiRatingController_75_RatingReset()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiStrategiesController_85
  l0.Config = "TaxiRideStrategyConfig.9223372047582772995"
  l0 = self.box_TaxiRatingController_75
  l1 = self.box_TaxiStrategiesController_85
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1789850086", "1789850086", "Taxi13_Main", "box_TaxiRatingController_75.RatingReset", "box_TaxiStrategiesController_85.Start", l0, l1)
  l1:Start()
end
function export:f_box_TutorialController_32_DisplayRequested()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_89()
  l0 = self.box_TutorialController_32
  l1 = self.box_MultipleOR_89
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1547940505", "1547940505", "Taxi13_Main", "box_TutorialController_32.DisplayRequested", "box_MultipleOR_89.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_TutorialController_32_NotificationHidden()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Timer_v2_82()
  l0 = self.box_TutorialController_32
  l1 = self.box_Timer_v2_82
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|979351148", "979351148", "Taxi13_Main", "box_TutorialController_32.NotificationHidden", "box_Timer_v2_82.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_MultipleOR_40_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRatingController_57
  l0.MissionName = self.Mission
  l0.RatingAmount = 1
  l0 = self.box_MultipleOR_40
  l1 = self.box_TaxiRatingController_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|263777181", "263777181", "Taxi13_Main", "box_MultipleOR_40.Out", "box_TaxiRatingController_57.RemoveRating", l0, l1)
  l1:RemoveRating()
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MissionLayer_v2_2
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|794668992", "794668992", "Taxi13_Main", "box_MissionLayer_v2_2.Loaded", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_MissionCheckpointReach_11_AllCheckpointsDisabled()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRatingController_18
  l0.MissionName = self.Mission
  l0 = self.box_MissionCheckpointReach_11
  l1 = self.box_TaxiRatingController_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1985045817", "1985045817", "Taxi13_Main", "box_MissionCheckpointReach_11.AllCheckpointsDisabled", "box_TaxiRatingController_18.HideRating", l0, l1)
  l1:HideRating()
end
function export:f_box_Timer_v2_82_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_88"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|2086584150"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_88_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_88_Out_1
  l0 = self.box_Timer_v2_82
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1002996917", "1002996917", "Taxi13_Main", "box_Timer_v2_82.TimeElapsed", "box_Ordered_Output_88.In", l0, l1)
  l1:In()
end
function export:f_box_VehicleSeatingController_59_UnassignCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_Assign_Patrol_Controller_v2_60
  l0.NPC = self.VIPDriver
  l0.Patrol = "9223372047582768926"
  l0 = self.box_VehicleSeatingController_59
  l1 = self.box_Assign_Patrol_Controller_v2_60
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|631722041", "631722041", "Taxi13_Main", "box_VehicleSeatingController_59.UnassignCompleted", "box_Assign_Patrol_Controller_v2_60.Assign", l0, l1)
  l1:Assign()
end
function export:f_box_VehicleSeatingController_59_Unassigned()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|2059175046"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_74_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_74_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_74_Out_2
  l0 = self.box_VehicleSeatingController_59
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|2017835624", "2017835624", "Taxi13_Main", "box_VehicleSeatingController_59.Unassigned", "box_Ordered_Output_74.In", l0, l1)
  l1:In()
end
function export:f_box_DriveAndTalk_50_TalkFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_3
  l0.Seconds = 2
  l0 = self.box_DriveAndTalk_50
  l1 = self.box_Timer_v2_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1343078019", "1343078019", "Taxi13_Main", "box_DriveAndTalk_50.TalkFinished", "box_Timer_v2_3.Start", l0, l1)
  l1:Start()
end
function export:f_box_Simple_Node_77_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SnapAndBind_36
  l0.Parent = self.VIPVehicle
  l0.Child = "9223372047582732666"
  l0.CarIcon = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|418785754", "418785754", "Taxi13_Main", "box_Simple_Node_77.Out", "box_SnapAndBind_36.Attach", clone, l0)
  l0:Attach()
end
function export:f_box_DriveAndTalk_53_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Player_VehicleMonitor_21()
  l0 = self.box_DriveAndTalk_53
  l1 = self.box_Player_VehicleMonitor_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|749834215", "749834215", "Taxi13_Main", "box_DriveAndTalk_53.Started", "box_Player_VehicleMonitor_21.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_DriveAndTalk_53_TalkFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiController_64
  l0.Client = self.Client
  l0.Vehicle = self.PlayerVehicle
  l0 = self.box_DriveAndTalk_53
  l1 = self.box_TaxiController_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|237260935", "237260935", "Taxi13_Main", "box_DriveAndTalk_53.TalkFinished", "box_TaxiController_64.DropOffClient", l0, l1)
  l1:DropOffClient()
end
function export:f_box_MissionCheckpointReach_27_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PickUp_CarAndClient_6
  l0.ClientCLO = "9223372047582728451"
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "PickupSingleClient",
    id = "20000189"
  }
  l0.IconPickUp = "9223372047582728453"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0.Range = 5
  l0.ShowGPS = 0
  l0 = self.box_MissionCheckpointReach_27
  l1 = self.box_PickUp_CarAndClient_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|829452761", "829452761", "Taxi13_Main", "box_MissionCheckpointReach_27.Out", "box_PickUp_CarAndClient_6.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Timer_v2_3_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_51
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149945"
  l0.StartDelay = 1
  l0 = self.box_Timer_v2_3
  l1 = self.box_DriveAndTalk_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1292917761", "1292917761", "Taxi13_Main", "box_Timer_v2_3.TimeElapsed", "box_DriveAndTalk_51.Start", l0, l1)
  l1:Start()
end
function export:f_box_TutorialController_33_DisplayRequested()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_35()
  l0 = self.box_TutorialController_33
  l1 = self.box_MultipleOR_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1443899905", "1443899905", "Taxi13_Main", "box_TutorialController_33.DisplayRequested", "box_MultipleOR_35.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_TutorialController_33_NotificationHidden()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Timer_v2_34()
  l0 = self.box_TutorialController_33
  l1 = self.box_Timer_v2_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1444958158", "1444958158", "Taxi13_Main", "box_TutorialController_33.NotificationHidden", "box_Timer_v2_34.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_Timer_v2_93_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_54
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149946"
  l0.StartDelay = 1
  l0 = self.box_Timer_v2_93
  l1 = self.box_DriveAndTalk_54
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|59483069", "59483069", "Taxi13_Main", "box_Timer_v2_93.TimeElapsed", "box_DriveAndTalk_54.Start", l0, l1)
  l1:Start()
end
function export:f_box_MissionMessageController_v3_47_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|68880672"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_31_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_31_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_31_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_31_Out_3
  l0 = self.box_MissionMessageController_v3_47
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1748629300", "1748629300", "Taxi13_Main", "box_MissionMessageController_v3_47.Out", "box_Ordered_Output_31.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_96_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_96
  l1 = self.box_OnceOnly_v3_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1035820085", "1035820085", "Taxi13_Main", "box_Timer_v2_96.TimeElapsed", "box_OnceOnly_v3_17.In", l0, l1)
  l1:In(0)
end
function export:f_box_Ordered_Output_41_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_35()
  l0 = self.box_MultipleOR_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|2032565054", "2032565054", "Taxi13_Main", "box_Ordered_Output_41.Out", "box_MultipleOR_35.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_41_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_40()
  l0 = self.box_MultipleOR_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1451606326", "1451606326", "Taxi13_Main", "box_Ordered_Output_41.Out", "box_MultipleOR_40.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Simple_Node_76_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MultipleOR_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|877109910", "877109910", "Taxi13_Main", "box_Simple_Node_76.Out", "box_MultipleOR_42.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Timer_v2_46_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_25
  l0.CLO = "9223372047582729368"
  l0 = self.box_Timer_v2_46
  l1 = self.box_CLOController_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|382937152", "382937152", "Taxi13_Main", "box_Timer_v2_46.TimeElapsed", "box_CLOController_25.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Timer_v2_72_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_79
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372053284420807"
  l0.StartDelay = 1
  l0 = self.box_Timer_v2_72
  l1 = self.box_DriveAndTalk_79
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1110255870", "1110255870", "Taxi13_Main", "box_Timer_v2_72.TimeElapsed", "box_DriveAndTalk_79.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_83_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v3_37()
  l0 = self.box_Timer_v2_83
  l1 = self.box_MapPointController_v3_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|2051293827", "2051293827", "Taxi13_Main", "box_Timer_v2_83.TimeElapsed", "box_MapPointController_v3_37.Show", l0, l1)
  l1:Show()
end
function export:f_box_Vehicle_Bhv_Monitor_80_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_95"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1731353702"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_95_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_95_Out_1
  l0 = self.box_Vehicle_Bhv_Monitor_80
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1355845406", "1355845406", "Taxi13_Main", "box_Vehicle_Bhv_Monitor_80.Disabled", "box_Ordered_Output_95.In", l0, l1)
  l1:In()
end
function export:f_box_Vehicle_Bhv_Monitor_80_EndPathPointReached()
  local l0
  self = self._graph
  self:OnEnter_box_Vehicle_Bhv_Monitor_80()
  l0 = self.box_Vehicle_Bhv_Monitor_80
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|200591003", "200591003", "Taxi13_Main", "box_Vehicle_Bhv_Monitor_80.EndPathPointReached", "box_Vehicle_Bhv_Monitor_80.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Vehicle_Bhv_Monitor_80_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Vehicle_Bhv_Monitor_80
  l1 = self.box_OnceOnly_v3_58
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|815968012", "815968012", "Taxi13_Main", "box_Vehicle_Bhv_Monitor_80.Out", "box_OnceOnly_v3_58.In", l0, l1)
  l1:In(0)
end
function export:f_box_DriveAndTalk_54_TalkFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_68
  l0.Seconds = 2
  l0 = self.box_DriveAndTalk_54
  l1 = self.box_Timer_v2_68
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|2049608333", "2049608333", "Taxi13_Main", "box_DriveAndTalk_54.TalkFinished", "box_Timer_v2_68.Start", l0, l1)
  l1:Start()
end
function export:f_box_CinematicPrep_14_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_27
  l0.Checkpoint = "CheckPoint_0"
  l0 = self.box_CinematicPrep_14
  l1 = self.box_MissionCheckpointReach_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|745419818", "745419818", "Taxi13_Main", "box_CinematicPrep_14.PostOut", "box_MissionCheckpointReach_27.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_4_UnspawnedUser()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic_nocameralock"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1315833402"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_box_SetActionMap_v2_56_Popped
  l0 = self.box_CLOController_4
  l1 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1883088007", "1883088007", "Taxi13_Main", "box_CLOController_4.UnspawnedUser", "box_SetActionMap_v2_56.Pop", l0, l1)
  l1:Pop()
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
  l0 = self.box_CinematicPrep_14
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1156528886", "1156528886", "Taxi13_Main", "box_Get_Player_ID_1.Out", "box_CinematicPrep_14.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_MissionMessageController_v3_73_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_66
  l0.LayerName = "Taxi13_Main"
  l0 = self.box_MissionMessageController_v3_73
  l1 = self.box_MissionLayer_v2_66
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1291115497", "1291115497", "Taxi13_Main", "box_MissionMessageController_v3_73.Out", "box_MissionLayer_v2_66.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_Timer_v2_84_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_90
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372053284420808"
  l0.StartDelay = 1
  l0 = self.box_Timer_v2_84
  l1 = self.box_DriveAndTalk_90
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1647841262", "1647841262", "Taxi13_Main", "box_Timer_v2_84.TimeElapsed", "box_DriveAndTalk_90.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_34_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|558016872"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_41_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_41_Out_1
  l0 = self.box_Timer_v2_34
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|835405183", "835405183", "Taxi13_Main", "box_Timer_v2_34.TimeElapsed", "box_Ordered_Output_41.In", l0, l1)
  l1:In()
end
function export:f_box_DriveAndTalk_19_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Player_VehicleMonitor_21()
  l0 = self.box_DriveAndTalk_19
  l1 = self.box_Player_VehicleMonitor_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1093444931", "1093444931", "Taxi13_Main", "box_DriveAndTalk_19.Started", "box_Player_VehicleMonitor_21.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TaxiStrategiesController_70_Paused()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_53
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149950"
  l0.StartDelay = 1
  l0 = self.box_TaxiStrategiesController_70
  l1 = self.box_DriveAndTalk_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1740704793", "1740704793", "Taxi13_Main", "box_TaxiStrategiesController_70.Paused", "box_DriveAndTalk_53.Start", l0, l1)
  l1:Start()
end
function export:f_box_DriveAndTalk_90_TalkFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_91
  l0.Seconds = 1
  l0 = self.box_DriveAndTalk_90
  l1 = self.box_Timer_v2_91
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1023528498", "1023528498", "Taxi13_Main", "box_DriveAndTalk_90.TalkFinished", "box_Timer_v2_91.Start", l0, l1)
  l1:Start()
end
function export:f_box_MissionLayer_v2_66_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_66
  l1 = self.box_MissionController_v4_65
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|222085359", "222085359", "Taxi13_Main", "box_MissionLayer_v2_66.Unloaded", "box_MissionController_v4_65.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_MultipleOR_35_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Timer_v2_34()
  l0 = self.box_MultipleOR_35
  l1 = self.box_Timer_v2_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1678109314", "1678109314", "Taxi13_Main", "box_MultipleOR_35.Out", "box_Timer_v2_34.Start", l0, l1)
  l1:Start()
end
function export:f_box_SetActionMap_v2_45_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_44
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF130",
    item = "Objective_Wait",
    id = "630496"
  }
  l0.HasObjectiveMarker = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|2091070810", "2091070810", "Taxi13_Main", "box_SetActionMap_v2_45.Pushed", "box_MissionMessageController_v3_44.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_MultipleOR_78_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_96
  l0.Seconds = 3
  l0 = self.box_MultipleOR_78
  l1 = self.box_Timer_v2_96
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1674795045", "1674795045", "Taxi13_Main", "box_MultipleOR_78.Out", "box_Timer_v2_96.Start", l0, l1)
  l1:Start()
end
function export:f_box_CLOController_24_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_24
  self.VIPDriver = l0.UserID
  l0 = self.box_VehicleSeatingController_22
  l0.Vehicle = self.VIPVehicle
  l0.Pawn = self.VIPDriver
  l0.Seat = "Driver"
  l0 = self.box_CLOController_24
  l1 = self.box_VehicleSeatingController_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|928110684", "928110684", "Taxi13_Main", "box_CLOController_24.OnUserInPlace", "box_VehicleSeatingController_22.Assign", l0, l1)
  l1:Assign()
end
function export:f_box_Timer_v2_68_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_69
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372053284420806"
  l0.StartDelay = 1
  l0 = self.box_Timer_v2_68
  l1 = self.box_DriveAndTalk_69
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1336107473", "1336107473", "Taxi13_Main", "box_Timer_v2_68.TimeElapsed", "box_DriveAndTalk_69.Start", l0, l1)
  l1:Start()
end
function export:f_box_Proximity_Monitor_30_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_87()
  l0 = self.box_Proximity_Monitor_30
  l1 = self.box_MultipleOR_87
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1911204366", "1911204366", "Taxi13_Main", "box_Proximity_Monitor_30.Disabled", "box_MultipleOR_87.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Proximity_Monitor_30_EnterRadius()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_32()
  l0 = self.box_Proximity_Monitor_30
  l1 = self.box_TutorialController_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1524043543", "1524043543", "Taxi13_Main", "box_Proximity_Monitor_30.EnterRadius", "box_TutorialController_32.Display", l0, l1)
  l1:Display()
end
function export:f_box_Proximity_Monitor_30_ExitRadius()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_87()
  l0 = self.box_Proximity_Monitor_30
  l1 = self.box_MultipleOR_87
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1643865418", "1643865418", "Taxi13_Main", "box_Proximity_Monitor_30.ExitRadius", "box_MultipleOR_87.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_TaxiRatingController_18_RatingHidden()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiStrategiesController_55
  l0.Config = "TaxiRideStrategyConfig.9223372047582772995"
  l0 = self.box_TaxiRatingController_18
  l1 = self.box_TaxiStrategiesController_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|860146873", "860146873", "Taxi13_Main", "box_TaxiRatingController_18.RatingHidden", "box_TaxiStrategiesController_55.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_Ordered_Output_9_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_PawnHealthMonitor_v3_12()
  l0 = self.box_PawnHealthMonitor_v3_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1945256061", "1945256061", "Taxi13_Main", "box_Ordered_Output_9.Out", "box_PawnHealthMonitor_v3_12.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_9_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VehicleMonitor_v2_7()
  l0 = self.box_VehicleMonitor_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1663106338", "1663106338", "Taxi13_Main", "box_Ordered_Output_9.Out", "box_VehicleMonitor_v2_7.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_DriveAndTalk_20_TalkFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_46
  l0.Seconds = 5
  l0 = self.box_DriveAndTalk_20
  l1 = self.box_Timer_v2_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1874495015", "1874495015", "Taxi13_Main", "box_DriveAndTalk_20.TalkFinished", "box_Timer_v2_46.Start", l0, l1)
  l1:Start()
end
function export:f_box_SetActionMap_v2_94_Popped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_DriveAndTalk_48
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372053284420810"
  l0.StartDelay = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1672745543", "1672745543", "Taxi13_Main", "box_SetActionMap_v2_94.Popped", "box_DriveAndTalk_48.Start", clone, l0)
  l0:Start()
end
function export:f_box_MissionMessageController_v3_44_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_20
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372053284420811"
  l0.StartDelay = 1
  l0.StartLimit_Radius = 0.01
  l0 = self.box_MissionMessageController_v3_44
  l1 = self.box_DriveAndTalk_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|674812621", "674812621", "Taxi13_Main", "box_MissionMessageController_v3_44.Out", "box_DriveAndTalk_20.Start", l0, l1)
  l1:Start()
end
function export:f_box_TaxiStrategiesController_71_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiStrategiesController_71
  l1 = self.box_MissionMessageController_v3_73
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1194973019", "1194973019", "Taxi13_Main", "box_TaxiStrategiesController_71.Stopped", "box_MissionMessageController_v3_73.ShowMissionComplete", l0, l1)
  l1:ShowMissionComplete()
end
function export:f_box_SetActionMap_v2_56_Popped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TaxiRatingController_63()
  l0 = self.box_TaxiRatingController_63
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|308644417", "308644417", "Taxi13_Main", "box_SetActionMap_v2_56.Popped", "box_TaxiRatingController_63.HideRating", clone, l0)
  l0:HideRating()
end
function export:f_box_DriveAndTalk_51_TalkFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_93
  l0.Seconds = 1
  l0 = self.box_DriveAndTalk_51
  l1 = self.box_Timer_v2_93
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|17995724", "17995724", "Taxi13_Main", "box_DriveAndTalk_51.TalkFinished", "box_Timer_v2_93.Start", l0, l1)
  l1:Start()
end
function export:f_box_OnceOnly_v3_58_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRatingController_75
  l0.MissionName = self.Mission
  l0 = self.box_OnceOnly_v3_58
  l1 = self.box_TaxiRatingController_75
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1322342550", "1322342550", "Taxi13_Main", "box_OnceOnly_v3_58.Out", "box_TaxiRatingController_75.ResetRating", l0, l1)
  l1:ResetRating()
end
function export:f_box_DriveAndTalk_48_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_47
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF130",
    item = "Objective_Follow",
    id = "630497"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_DriveAndTalk_48
  l1 = self.box_MissionMessageController_v3_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|301822504", "301822504", "Taxi13_Main", "box_DriveAndTalk_48.Started", "box_MissionMessageController_v3_47.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_DriveAndTalk_48_TalkFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_52
  l0.Seconds = 3
  l0 = self.box_DriveAndTalk_48
  l1 = self.box_Timer_v2_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1138570388", "1138570388", "Taxi13_Main", "box_DriveAndTalk_48.TalkFinished", "box_Timer_v2_52.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_86_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_33()
  l0 = self.box_MultipleOR_86
  l1 = self.box_TutorialController_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|576770203", "576770203", "Taxi13_Main", "box_MultipleOR_86.Out", "box_TutorialController_33.HideNotification", l0, l1)
  l1:HideNotification()
end
function export:f_box_SetActionMap_v2_62_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_61
  l0.Seconds = 8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1630675854", "1630675854", "Taxi13_Main", "box_SetActionMap_v2_62.Pushed", "box_Timer_v2_61.Start", clone, l0)
  l0:Start()
end
function export:f_box_DriveAndTalk_49_TalkFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_16
  l0.Seconds = 1
  l0 = self.box_DriveAndTalk_49
  l1 = self.box_Timer_v2_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1475689240", "1475689240", "Taxi13_Main", "box_DriveAndTalk_49.TalkFinished", "box_Timer_v2_16.Start", l0, l1)
  l1:Start()
end
function export:f_box_TaxiRatingController_63_RatingHidden()
  local l0
  self = self._graph
  self:OnEnter_box_TaxiRatingController_63()
  l0 = self.box_TaxiRatingController_63
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|758373383", "758373383", "Taxi13_Main", "box_TaxiRatingController_63.RatingHidden", "box_TaxiRatingController_63.ShowReward", l0, l0)
  l0:ShowReward()
end
function export:f_box_TaxiRatingController_63_RewardShown()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiStrategiesController_71
  l0.Config = "TaxiRideStrategyConfig.9223372047582772995"
  l0 = self.box_TaxiRatingController_63
  l1 = self.box_TaxiStrategiesController_71
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1761576956", "1761576956", "Taxi13_Main", "box_TaxiRatingController_63.RewardShown", "box_TaxiStrategiesController_71.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_Simple_Node_39_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VehicleMonitor_v2_23()
  l0 = self.box_VehicleMonitor_v2_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1203108945", "1203108945", "Taxi13_Main", "box_Simple_Node_39.Out", "box_VehicleMonitor_v2_23.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Timer_v2_16_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_50
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149944"
  l0.StartDelay = 1
  l0 = self.box_Timer_v2_16
  l1 = self.box_DriveAndTalk_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1997025835", "1997025835", "Taxi13_Main", "box_Timer_v2_16.TimeElapsed", "box_DriveAndTalk_50.Start", l0, l1)
  l1:Start()
end
function export:f_box_EnableSystemicMusic_10_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/EnableSystemicMusic.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1037678166", "1037678166", "Taxi13_Main", "box_EnableSystemicMusic_10.Out", "box_MissionCheckpointReach_11.DisableAllCheckpoints", clone, l0)
  l0:DisableAllCheckpoints()
end
function export:f_box_SnapAndBind_36_Attached()
  local l0, l1
  self = self._graph
  l0 = self.box_SnapAndBind_36
  l1 = self.box_Timer_v2_83
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1052006800", "1052006800", "Taxi13_Main", "box_SnapAndBind_36.Attached", "box_Timer_v2_83.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_91_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_92
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372053284420809"
  l0.StartDelay = 1
  l0 = self.box_Timer_v2_91
  l1 = self.box_DriveAndTalk_92
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|2114517324", "2114517324", "Taxi13_Main", "box_Timer_v2_91.TimeElapsed", "box_DriveAndTalk_92.Start", l0, l1)
  l1:Start()
end
function export:f_box_CLOController_67_UnspawnedUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_4
  l0.User = self.VIPDriver
  l0 = self.box_CLOController_67
  l1 = self.box_CLOController_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|771404305", "771404305", "Taxi13_Main", "box_CLOController_67.UnspawnedUser", "box_CLOController_4.UnspawnUser", l0, l1)
  l1:UnspawnUser()
end
function export:f_box_MissionLayer_v2_8_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionController_v4_13
  l0.EndReason = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "FailTrackingDisrupted",
    id = "641467"
  }
  l0 = self.box_MissionLayer_v2_8
  l1 = self.box_MissionController_v4_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|508576076", "508576076", "Taxi13_Main", "box_MissionLayer_v2_8.Unloaded", "box_MissionController_v4_13.Fail", l0, l1)
  l1:Fail()
end
function export:f_box_Ordered_Output_95_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_81
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|369681992", "369681992", "Taxi13_Main", "box_Ordered_Output_95.Out", "box_Timer_v2_81.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_95_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VehicleMonitor_v2_23()
  l0 = self.box_VehicleMonitor_v2_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|2086735232", "2086735232", "Taxi13_Main", "box_Ordered_Output_95.Out", "box_VehicleMonitor_v2_23.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_MultipleOR_38_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "Taxi13_Main"
  l0 = self.box_MultipleOR_38
  l1 = self.box_MissionLayer_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1560457016", "1560457016", "Taxi13_Main", "box_MultipleOR_38.Out", "box_MissionLayer_v2_2.Load", l0, l1)
  l1:Load()
end
function export:f_box_VehicleMonitor_v2_7_BailedOut()
  local l0
  self = self._graph
  self:OnEnter_box_VehicleMonitor_v2_7()
  l0 = self.box_VehicleMonitor_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1369041245", "1369041245", "Taxi13_Main", "box_VehicleMonitor_v2_7.BailedOut", "box_VehicleMonitor_v2_7.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_VehicleMonitor_v2_7_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_5()
  l0 = self.box_VehicleMonitor_v2_7
  l1 = self.box_Taxi_AbortMission_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|227935558", "227935558", "Taxi13_Main", "box_VehicleMonitor_v2_7.Disabled", "box_Taxi_AbortMission_5.ClientBailedOut", l0, l1)
  l1:ClientBailedOut()
end
function export:f_box_Player_VehicleMonitor_21_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_ReachDestination_43
  l0.Destination = "9223372047582766628"
  l0.ManageObjectives = 1
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF130",
    item = "Objective_Reach_Stakeout",
    id = "630495"
  }
  l0.LocText = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "MarkerDestination",
    id = "335055"
  }
  l0.VehiclePlayer = self.PlayerVehicle
  l0.ReachDistance = 3
  l0.ShowGPS = 0
  l0.AutoStop = 1
  l0.StationaryAtDestination = 1
  l0 = self.box_Player_VehicleMonitor_21
  l1 = self.box_ReachDestination_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1798671620", "1798671620", "Taxi13_Main", "box_Player_VehicleMonitor_21.Enabled", "box_ReachDestination_43.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Player_VehicleMonitor_21_PlayerAbandonedVehicle()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_5()
  l0 = self.box_Player_VehicleMonitor_21
  l1 = self.box_Taxi_AbortMission_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1700704184", "1700704184", "Taxi13_Main", "box_Player_VehicleMonitor_21.PlayerAbandonedVehicle", "box_Taxi_AbortMission_5.PlayerAbandonedVehicle", l0, l1)
  l1:PlayerAbandonedVehicle()
end
function export:f_box_Player_VehicleMonitor_21_VehicleWrecked()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_5()
  l0 = self.box_Player_VehicleMonitor_21
  l1 = self.box_Taxi_AbortMission_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1799977246", "1799977246", "Taxi13_Main", "box_Player_VehicleMonitor_21.VehicleWrecked", "box_Taxi_AbortMission_5.VehicleUnusable", l0, l1)
  l1:VehicleUnusable()
end
function export:f_box_MultipleOR_42_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v3_37()
  l0 = self.box_MultipleOR_42
  l1 = self.box_MapPointController_v3_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1716151538", "1716151538", "Taxi13_Main", "box_MultipleOR_42.Out", "box_MapPointController_v3_37.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_DriveAndTalk_79_TalkFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_84
  l0.Seconds = 3
  l0 = self.box_DriveAndTalk_79
  l1 = self.box_Timer_v2_84
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|513592835", "513592835", "Taxi13_Main", "box_DriveAndTalk_79.TalkFinished", "box_Timer_v2_84.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_81_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleSeatingController_59
  l0.Pawn = self.VIPDriver
  l0.UseAnimation = 1
  l0 = self.box_Timer_v2_81
  l1 = self.box_VehicleSeatingController_59
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|171425482", "171425482", "Taxi13_Main", "box_Timer_v2_81.TimeElapsed", "box_VehicleSeatingController_59.Unassign", l0, l1)
  l1:Unassign()
end
function export:f_box_OnceOnly_v3_17_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/StopMusic.lua")]
  l0.FadeOutTime = 5
  l0._graph = self
  l0._name = "box_StopMusic_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|73192241"
  l0.Out = self.f_box_StopMusic_15_Out
  l0 = self.box_OnceOnly_v3_17
  l1 = Boxes[PathID("domino/System/StopMusic.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|39881556", "39881556", "Taxi13_Main", "box_OnceOnly_v3_17.Out", "box_StopMusic_15.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_52_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_49
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372053284420805"
  l0.StartDelay = 1
  l0 = self.box_Timer_v2_52
  l1 = self.box_DriveAndTalk_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|9191625", "9191625", "Taxi13_Main", "box_Timer_v2_52.TimeElapsed", "box_DriveAndTalk_49.Start", l0, l1)
  l1:Start()
end
function export:f_box_PickUp_CarAndClient_6_PickedUp()
  local l0, l1
  self = self._graph
  l0 = self.box_PickUp_CarAndClient_6
  self.Client = l0.Client
  self.PlayerVehicle = l0.Vehicle
  l0 = self.box_DriveAndTalk_19
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149948"
  l0.StartDelay = 0.01
  l0 = self.box_PickUp_CarAndClient_6
  l1 = self.box_DriveAndTalk_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1080321318", "1080321318", "Taxi13_Main", "box_PickUp_CarAndClient_6.PickedUp", "box_DriveAndTalk_19.Start", l0, l1)
  l1:Start()
end
function export:f_box_PickUp_CarAndClient_6_Spawned()
  local l0, l1
  self = self._graph
  l0 = self.box_PickUp_CarAndClient_6
  self.Client = l0.Client
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1174728133"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_9_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_9_Out_1
  l0 = self.box_PickUp_CarAndClient_6
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|635864340", "635864340", "Taxi13_Main", "box_PickUp_CarAndClient_6.Spawned", "box_Ordered_Output_9.In", l0, l1)
  l1:In()
end
function export:f_box_VehicleMonitor_v2_23_BailedOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_78()
  l0 = self.box_VehicleMonitor_v2_23
  l1 = self.box_MultipleOR_78
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1624870657", "1624870657", "Taxi13_Main", "box_VehicleMonitor_v2_23.BailedOut", "box_MultipleOR_78.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_VehicleMonitor_v2_23_FullTakedown()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_78()
  l0 = self.box_VehicleMonitor_v2_23
  l1 = self.box_MultipleOR_78
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|651830856", "651830856", "Taxi13_Main", "box_VehicleMonitor_v2_23.FullTakedown", "box_MultipleOR_78.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_VehicleMonitor_v2_23_IsUnusable()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_78()
  l0 = self.box_VehicleMonitor_v2_23
  l1 = self.box_MultipleOR_78
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1860720689", "1860720689", "Taxi13_Main", "box_VehicleMonitor_v2_23.IsUnusable", "box_MultipleOR_78.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_VehicleMonitor_v2_23_Leave()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_78()
  l0 = self.box_VehicleMonitor_v2_23
  l1 = self.box_MultipleOR_78
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|148330664", "148330664", "Taxi13_Main", "box_VehicleMonitor_v2_23.Leave", "box_MultipleOR_78.Input", l0, l1)
  l1:Input(3)
end
function export:f_box_VehicleMonitor_v2_23_NoMoveTimer()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_78()
  l0 = self.box_VehicleMonitor_v2_23
  l1 = self.box_MultipleOR_78
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1467707555", "1467707555", "Taxi13_Main", "box_VehicleMonitor_v2_23.NoMoveTimer", "box_MultipleOR_78.Input", l0, l1)
  l1:Input(4)
end
function export:f_box_TaxiController_64_OnClientDroppedOff()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_67
  l0.User = self.Client
  l0 = self.box_TaxiController_64
  l1 = self.box_CLOController_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1794347900", "1794347900", "Taxi13_Main", "box_TaxiController_64.OnClientDroppedOff", "box_CLOController_67.UnspawnUser", l0, l1)
  l1:UnspawnUser()
end
function export:f_box_CLOController_25_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_25
  self.VIPVehicle = l0.UserID
  l0 = self.box_CLOController_24
  l0.CLO = "9223372047582729369"
  l0 = self.box_CLOController_25
  l1 = self.box_CLOController_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|84033193", "84033193", "Taxi13_Main", "box_CLOController_25.OnUserInPlace", "box_CLOController_24.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_DriveAndTalk_69_TalkFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_72
  l0.Seconds = 2
  l0 = self.box_DriveAndTalk_69
  l1 = self.box_Timer_v2_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1271226124", "1271226124", "Taxi13_Main", "box_DriveAndTalk_69.TalkFinished", "box_Timer_v2_72.Start", l0, l1)
  l1:Start()
end
function export:f_box_VehicleBhvController_26_StartCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic_nocameralock"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_94"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1226780773"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_box_SetActionMap_v2_94_Popped
  l0 = self.box_VehicleBhvController_26
  l1 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|2047506739", "2047506739", "Taxi13_Main", "box_VehicleBhvController_26.StartCompleted", "box_SetActionMap_v2_94.Pop", l0, l1)
  l1:Pop()
end
function export:f_box_Ordered_Output_74_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Proximity_Monitor_30()
  l0 = self.box_Proximity_Monitor_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|922122657", "922122657", "Taxi13_Main", "box_Ordered_Output_74.Out", "box_Proximity_Monitor_30.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_74_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Proximity_Monitor_29()
  l0 = self.box_Proximity_Monitor_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|822849595", "822849595", "Taxi13_Main", "box_Ordered_Output_74.Out", "box_Proximity_Monitor_29.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_74_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_76"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|565055114"
  l0.Out = self.f_box_Simple_Node_76_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|37081548", "37081548", "Taxi13_Main", "box_Ordered_Output_74.Out", "box_Simple_Node_76.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_88_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_89()
  l0 = self.box_MultipleOR_89
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|461178513", "461178513", "Taxi13_Main", "box_Ordered_Output_88.Out", "box_MultipleOR_89.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_88_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_40()
  l0 = self.box_MultipleOR_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|2124629473", "2124629473", "Taxi13_Main", "box_Ordered_Output_88.Out", "box_MultipleOR_40.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_VehicleSeatingController_22_AssignCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|2144669221"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_28_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_28_Out_1
  l0 = self.box_VehicleSeatingController_22
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1207413130", "1207413130", "Taxi13_Main", "box_VehicleSeatingController_22.AssignCompleted", "box_Ordered_Output_28.In", l0, l1)
  l1:In()
end
function export:f_box_Proximity_Monitor_29_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_86()
  l0 = self.box_Proximity_Monitor_29
  l1 = self.box_MultipleOR_86
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|2088210428", "2088210428", "Taxi13_Main", "box_Proximity_Monitor_29.Disabled", "box_MultipleOR_86.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Proximity_Monitor_29_EnterRadius()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_86()
  l0 = self.box_Proximity_Monitor_29
  l1 = self.box_MultipleOR_86
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1214443689", "1214443689", "Taxi13_Main", "box_Proximity_Monitor_29.EnterRadius", "box_MultipleOR_86.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Proximity_Monitor_29_ExitRadius()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_33()
  l0 = self.box_Proximity_Monitor_29
  l1 = self.box_TutorialController_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|366104958", "366104958", "Taxi13_Main", "box_Proximity_Monitor_29.ExitRadius", "box_TutorialController_33.Display", l0, l1)
  l1:Display()
end
function export:f_box_Ordered_Output_28_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_VehicleBhvController_26
  l0.VehicleMaster = self.VIPVehicle
  l0.VehicleTarget = self.PlayerEntity
  l0.PathOrPos = "9223372047582729366"
  l0.Config = "VehicleBhvSetup.9223372048779328386"
  l0.StopAtEndPoint = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1793297330", "1793297330", "Taxi13_Main", "box_Ordered_Output_28.Out", "box_VehicleBhvController_26.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_28_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|1511984813"
  l0.Out = self.f_box_Simple_Node_39_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi13.domino|@Taxi13_Main|524763146", "524763146", "Taxi13_Main", "box_Ordered_Output_28.Out", "box_Simple_Node_39.In", clone, l0)
  l0:In()
end
function export:OnEnter_box_MultipleOR_89()
end
function export:OnEnter_box_Taxi_AbortMission_5()
  local l0
  l0 = self.box_Taxi_AbortMission_5
  l0.MissionName = self.Mission
  l0.LayerName = "Taxi13_Main"
  l0.StrategyConfig = "TaxiRideStrategyConfig.9223372047582772995"
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Vehicle = self.PlayerVehicle
  l0.Conversation = "ConversationSetting.9223372048760149956"
end
function export:OnEnter_box_PawnHealthMonitor_v3_12()
  local l0
  l0 = self.box_PawnHealthMonitor_v3_12
  l0.Pawn = self.Client
  l0.CheckNow = 1
end
function export:OnEnter_box_MultipleOR_87()
end
function export:OnEnter_box_TutorialController_32()
  local l0
  l0 = self.box_TutorialController_32
  l0.Notification = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "DistanceTooClose",
    id = "417037"
  }
  l0.Duration = -1
end
function export:OnEnter_box_MultipleOR_40()
end
function export:OnEnter_box_Timer_v2_82()
  local l0
  l0 = self.box_Timer_v2_82
  l0.Seconds = 10
end
function export:OnEnter_box_TutorialController_33()
  local l0
  l0 = self.box_TutorialController_33
  l0.Notification = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "DistanceTooFar",
    id = "417038"
  }
  l0.Duration = -1
end
function export:OnEnter_box_Vehicle_Bhv_Monitor_80()
  local l0
  l0 = self.box_Vehicle_Bhv_Monitor_80
  l0.Vehicle = self.VIPVehicle
end
function export:OnEnter_box_Timer_v2_34()
  local l0
  l0 = self.box_Timer_v2_34
  l0.Seconds = 10
end
function export:OnEnter_box_MultipleOR_35()
end
function export:OnEnter_box_MultipleOR_78()
end
function export:OnEnter_box_Proximity_Monitor_30()
  local l0
  l0 = self.box_Proximity_Monitor_30
  l0.Entity1 = self.VIPVehicle
  l0.Entity2 = self.PlayerEntity
  l0.Radius = 15
  l0.CheckNow = 1
end
function export:OnEnter_box_MultipleOR_86()
end
function export:OnEnter_box_TaxiRatingController_63()
  local l0
  l0 = self.box_TaxiRatingController_63
  l0.MissionName = self.Mission
end
function export:OnEnter_box_MultipleOR_38()
end
function export:OnEnter_box_VehicleMonitor_v2_7()
  local l0
  l0 = self.box_VehicleMonitor_v2_7
  l0.Pawn = self.Client
end
function export:OnEnter_box_Player_VehicleMonitor_21()
  local l0
  l0 = self.box_Player_VehicleMonitor_21
  l0.VehiclePlayer = self.PlayerVehicle
  l0.IconVehicle = "9223372047582728448"
  l0.TimeToReturnToVehicle = 20
  l0.CheckNow = 0
end
function export:OnEnter_box_VehicleMonitor_v2_23()
  local l0
  l0 = self.box_VehicleMonitor_v2_23
  l0.Vehicle = self.VIPVehicle
  l0.Pawn = self.VIPDriver
  l0.CheckNow = 1
  l0.NoMoveTime = 5
end
function export:OnEnter_box_MapPointController_v3_37()
  local l0
  l0 = self.box_MapPointController_v3_37
  l0.MapPoint = "9223372047582732666"
  l0.LocText = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "Follow",
    id = "417039"
  }
end
function export:OnEnter_box_Proximity_Monitor_29()
  local l0
  l0 = self.box_Proximity_Monitor_29
  l0.Entity1 = self.VIPVehicle
  l0.Entity2 = self.PlayerEntity
  l0.Radius = 45
  l0.CheckNow = 1
end
_compilerVersion = 4
