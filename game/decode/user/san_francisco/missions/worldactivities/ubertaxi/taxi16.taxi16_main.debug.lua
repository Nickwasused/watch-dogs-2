export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/GPS3DController.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CompareFloats_v2.lua")
  cbox:RegisterBox("domino/System/DPadHackableController.lua")
  cbox:RegisterBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  cbox:RegisterBox("domino/System/FloatingVehicleBhvController.lua")
  cbox:RegisterBox("domino/System/GameplayInteractionController.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/GetDistance.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/MapPointController_v4.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/System/ProximityMonitor.lua")
  cbox:RegisterBox("domino/System/SetActionMap_v2.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  cbox:RegisterBox("domino/System/SwitchOutput_v3.lua")
  cbox:RegisterBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.debug.lua")
  cbox:RegisterBox("domino/System/TaxiRatingController.lua")
  cbox:RegisterBox("domino/System/TaxiRidePickUpController.lua")
  cbox:RegisterBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  cbox:RegisterBox("domino/System/TaxiRideVehicleMonitor.lua")
  cbox:RegisterBox("domino/System/TaxiStrategiesController.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TutorialController.lua")
  cbox:RegisterBox("domino/System/VehicleBhvMonitor.lua")
  cbox:RegisterBox("domino/System/VehicleController.lua")
  cbox:RegisterBox("domino/System/VehicleSeatingController.lua")
  cbox:LoadResource("soundbinary/448469820.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/4034559296.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2720551685.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3580231226.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "Taxi16_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main"
  self.PlayerEntity = nil
  self.Boat1 = nil
  self.Driver1 = nil
  self.Boat2 = nil
  self.Driver2 = nil
  self.Mission = "MissionList.9223372048242035699"
  self.Client = nil
  self.PlayerVehicle = nil
  self.ActorsList = {}
  self.PathPointNumber = 0
  self.PP2 = 0
  self.TempDistancePlayer = 0
  self.TempDistanceBoat = 0
  self.box_Timer_v2_68 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_68
  l0._graph = self
  l0._name = "box_Timer_v2_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|17805560"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_68_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_TaxiRatingController_63 = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self.box_TaxiRatingController_63
  l0._graph = self
  l0._name = "box_TaxiRatingController_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|24543495"
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = self.f_box_TaxiRatingController_63_RatingReset
  l0.RewardShown = DummyFunction
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self.box_TaxiRideReachDestinationMonitor_30 = cbox:CreateBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self.box_TaxiRideReachDestinationMonitor_30
  l0._graph = self
  l0._name = "box_TaxiRideReachDestinationMonitor_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|62453330"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ReachDestination = self.f_box_TaxiRideReachDestinationMonitor_30_ReachDestination
  l0.ClientDropOff = DummyFunction
  self.box_MultipleOR_64 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_64
  l0._graph = self
  l0._name = "box_MultipleOR_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|67310899"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_64_Out
  self.box_OnceOnly_v3_73 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_73
  l0._graph = self
  l0._name = "box_OnceOnly_v3_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|113789794"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_73_Out
  l0.ResetOut = DummyFunction
  self.box_FloatingVehicleBhvController_12 = cbox:CreateBox("domino/System/FloatingVehicleBhvController.lua")
  l0 = self.box_FloatingVehicleBhvController_12
  l0._graph = self
  l0._name = "box_FloatingVehicleBhvController_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|116888813"
  l0.StartCompleted = self.f_box_FloatingVehicleBhvController_12_StartCompleted
  l0.StopCompleted = DummyFunction
  self.box_DriveAndTalk_34 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_34
  l0._graph = self
  l0._name = "box_DriveAndTalk_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|120741775"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_34_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_34_TalkFailed
  self.box_VehicleSeatingController_6 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_6
  l0._graph = self
  l0._name = "box_VehicleSeatingController_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|128791255"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_box_VehicleSeatingController_6_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_MultipleOR_102 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_102
  l0._graph = self
  l0._name = "box_MultipleOR_102"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|141481178"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_102_Out
  self.box_DriveAndTalk_90 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_90
  l0._graph = self
  l0._name = "box_DriveAndTalk_90"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|142914682"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_90_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_90_TalkFailed
  self.box_TaxiRideReachDestinationMonitor_24 = cbox:CreateBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self.box_TaxiRideReachDestinationMonitor_24
  l0._graph = self
  l0._name = "box_TaxiRideReachDestinationMonitor_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|161276219"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TaxiRideReachDestinationMonitor_24_Disabled
  l0.ReachDestination = self.f_box_TaxiRideReachDestinationMonitor_24_ReachDestination
  l0.ClientDropOff = DummyFunction
  self.box_TaxiStrategiesController_96 = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self.box_TaxiStrategiesController_96
  l0._graph = self
  l0._name = "box_TaxiStrategiesController_96"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|206124428"
  l0.Started = self.f_box_TaxiStrategiesController_96_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self.box_DriveAndTalk_36 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_36
  l0._graph = self
  l0._name = "box_DriveAndTalk_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|229328463"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_36_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_36_TalkFailed
  self.box_TaxiStrategiesController_21 = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self.box_TaxiStrategiesController_21
  l0._graph = self
  l0._name = "box_TaxiStrategiesController_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|237104171"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_TaxiStrategiesController_21_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self.box_Vehicle_Bhv_Monitor_1 = cbox:CreateBox("domino/System/VehicleBhvMonitor.lua")
  l0 = self.box_Vehicle_Bhv_Monitor_1
  l0._graph = self
  l0._name = "box_Vehicle_Bhv_Monitor_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|239305573"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Vehicle_Bhv_Monitor_1_Disabled
  l0.Stuck = DummyFunction
  l0.Broken = DummyFunction
  l0.TargetDetected = DummyFunction
  l0.InLOS = DummyFunction
  l0.ReacquireLOSTimerExpired = DummyFunction
  l0.LostLOSTimerExpired = DummyFunction
  l0.SuspiciousTargetAction = DummyFunction
  l0.SpecificPathPointReached = self.f_box_Vehicle_Bhv_Monitor_1_SpecificPathPointReached
  l0.PathPointReached = DummyFunction
  l0.EndPathPointReached = self.f_box_Vehicle_Bhv_Monitor_1_EndPathPointReached
  l0.InRange = DummyFunction
  l0.WarningRange = DummyFunction
  l0.OutsideRange = DummyFunction
  l0.OutsideTimerExpired = DummyFunction
  self.box_DriveAndTalk_67 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_67
  l0._graph = self
  l0._name = "box_DriveAndTalk_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|247224287"
  l0.Started = self.f_box_DriveAndTalk_67_Started
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_67_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_67_TalkFailed
  self.box_Multiple_AND_59 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_59
  l0._graph = self
  l0._name = "box_Multiple_AND_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|251076088"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_59_Out
  self.box_DriveAndTalk_62 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_62
  l0._graph = self
  l0._name = "box_DriveAndTalk_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|267599102"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_62_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_62_TalkFailed
  self.box_CLOController_5 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_5
  l0._graph = self
  l0._name = "box_CLOController_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|294451752"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_5_OnUserInPlace
  self.box_Vehicle_Bhv_Monitor_48 = cbox:CreateBox("domino/System/VehicleBhvMonitor.lua")
  l0 = self.box_Vehicle_Bhv_Monitor_48
  l0._graph = self
  l0._name = "box_Vehicle_Bhv_Monitor_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|300607491"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Vehicle_Bhv_Monitor_48_Disabled
  l0.Stuck = DummyFunction
  l0.Broken = DummyFunction
  l0.TargetDetected = DummyFunction
  l0.InLOS = DummyFunction
  l0.ReacquireLOSTimerExpired = DummyFunction
  l0.LostLOSTimerExpired = DummyFunction
  l0.SuspiciousTargetAction = DummyFunction
  l0.SpecificPathPointReached = self.f_box_Vehicle_Bhv_Monitor_48_SpecificPathPointReached
  l0.PathPointReached = DummyFunction
  l0.EndPathPointReached = DummyFunction
  l0.InRange = DummyFunction
  l0.WarningRange = DummyFunction
  l0.OutsideRange = DummyFunction
  l0.OutsideTimerExpired = DummyFunction
  self.box_MissionMessageController_v3_17 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_17
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|331999580"
  l0.Out = self.f_box_MissionMessageController_v3_17_Out
  l0.MessageCompleted = DummyFunction
  self.box_PlayDialog_v2_40 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_40
  l0._graph = self
  l0._name = "box_PlayDialog_v2_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|380568051"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_Timer_v2_83 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_83
  l0._graph = self
  l0._name = "box_Timer_v2_83"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|395802647"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_83_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_51 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_51
  l0._graph = self
  l0._name = "box_Timer_v2_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|417138527"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_51_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Vehicle_Bhv_Monitor_41 = cbox:CreateBox("domino/System/VehicleBhvMonitor.lua")
  l0 = self.box_Vehicle_Bhv_Monitor_41
  l0._graph = self
  l0._name = "box_Vehicle_Bhv_Monitor_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|427251957"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Vehicle_Bhv_Monitor_41_Disabled
  l0.Stuck = DummyFunction
  l0.Broken = DummyFunction
  l0.TargetDetected = DummyFunction
  l0.InLOS = DummyFunction
  l0.ReacquireLOSTimerExpired = DummyFunction
  l0.LostLOSTimerExpired = DummyFunction
  l0.SuspiciousTargetAction = DummyFunction
  l0.SpecificPathPointReached = self.f_box_Vehicle_Bhv_Monitor_41_SpecificPathPointReached
  l0.PathPointReached = DummyFunction
  l0.EndPathPointReached = self.f_box_Vehicle_Bhv_Monitor_41_EndPathPointReached
  l0.InRange = DummyFunction
  l0.WarningRange = DummyFunction
  l0.OutsideRange = DummyFunction
  l0.OutsideTimerExpired = DummyFunction
  self.box_MapPointController_v4_78 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_78
  l0._graph = self
  l0._name = "box_MapPointController_v4_78"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|437725657"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v4_78_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MultipleOR_84 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_84
  l0._graph = self
  l0._name = "box_MultipleOR_84"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|451045770"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_84_Out
  self.box_DriveAndTalk_56 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_56
  l0._graph = self
  l0._name = "box_DriveAndTalk_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|457028753"
  l0.Started = self.f_box_DriveAndTalk_56_Started
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_56_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_56_TalkFailed
  self.box_GetDistance_103 = cbox:CreateBox("domino/System/GetDistance.lua")
  l0 = self.box_GetDistance_103
  l0._graph = self
  l0._name = "box_GetDistance_103"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|487145397"
  l0.Out = self.f_box_GetDistance_103_Out
  l0.OutViaRoad = self.f_box_GetDistance_103_OutViaRoad
  self.box_CinematicPrep_15 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_15
  l0._graph = self
  l0._name = "box_CinematicPrep_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|495294024"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_15_PostOut
  self.box_VehicleSeatingController_10 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_10
  l0._graph = self
  l0._name = "box_VehicleSeatingController_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|520371121"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_box_VehicleSeatingController_10_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_DriveAndTalk_26 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_26
  l0._graph = self
  l0._name = "box_DriveAndTalk_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|537092062"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_26_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_26_TalkFailed
  self.box_MissionController_v4_52 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_52
  l0._graph = self
  l0._name = "box_MissionController_v4_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|553123596"
  self.box_MultipleOR_101 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_101
  l0._graph = self
  l0._name = "box_MultipleOR_101"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|630231828"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_101_Out
  self.box_DriveAndTalk_66 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_66
  l0._graph = self
  l0._name = "box_DriveAndTalk_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|655591844"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_Multiple_AND_11 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_11
  l0._graph = self
  l0._name = "box_Multiple_AND_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|658707217"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_11_Out
  self.box_TaxiRatingController_61 = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self.box_TaxiRatingController_61
  l0._graph = self
  l0._name = "box_TaxiRatingController_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|724014247"
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = DummyFunction
  l0.RewardShown = self.f_box_TaxiRatingController_61_RewardShown
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self.box_PlayDialog_v2_70 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_70
  l0._graph = self
  l0._name = "box_PlayDialog_v2_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|731218209"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_70_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_Timer_v2_65 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_65
  l0._graph = self
  l0._name = "box_Timer_v2_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|760357767"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_65_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_ListWriter_20 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_20
  l0._graph = self
  l0._name = "box_ListWriter_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|772429935"
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_box_ListWriter_20_Added
  l0.Removed = self.f_box_ListWriter_20_Removed
  l0.Out = self.f_box_ListWriter_20_Out
  self.box_GameplayInteractionController_22 = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self.box_GameplayInteractionController_22
  l0._graph = self
  l0._name = "box_GameplayInteractionController_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|805201795"
  l0.Out = DummyFunction
  l0.Started = self.f_box_GameplayInteractionController_22_Started
  l0.Stopped = DummyFunction
  self.box_MultipleOR_80 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_80
  l0._graph = self
  l0._name = "box_MultipleOR_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|825006230"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_80_Out
  self.box_Timer_v2_76 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_76
  l0._graph = self
  l0._name = "box_Timer_v2_76"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|836543698"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_76_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Multiple_AND_97 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_97
  l0._graph = self
  l0._name = "box_Multiple_AND_97"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|844090297"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_97_Out
  self.box_MultipleOR_87 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_87
  l0._graph = self
  l0._name = "box_MultipleOR_87"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|875176234"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_87_Out
  self.box_MissionMessageController_v3_95 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_95
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_95"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|892791684"
  l0.Out = self.f_box_MissionMessageController_v3_95_Out
  l0.MessageCompleted = DummyFunction
  self.box_CLOController_8 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_8
  l0._graph = self
  l0._name = "box_CLOController_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|901502671"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_8_OnUserInPlace
  self.box_CLOController_9 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_9
  l0._graph = self
  l0._name = "box_CLOController_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1011163758"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_9_OnUserInPlace
  self.box_TaxiRidePickUpController_7 = cbox:CreateBox("domino/System/TaxiRidePickUpController.lua")
  l0 = self.box_TaxiRidePickUpController_7
  l0._graph = self
  l0._name = "box_TaxiRidePickUpController_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1064287556"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TaxiRidePickUpController_7_Disabled
  l0.ClientSpawned = self.f_box_TaxiRidePickUpController_7_ClientSpawned
  l0.ClientPickedUp = self.f_box_TaxiRidePickUpController_7_ClientPickedUp
  l0.ClientConversationFinised = self.f_box_TaxiRidePickUpController_7_ClientConversationFinised
  self.box_MultipleOR_100 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_100
  l0._graph = self
  l0._name = "box_MultipleOR_100"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1107440845"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_100_Out
  self.box_DriveAndTalk_50 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_50
  l0._graph = self
  l0._name = "box_DriveAndTalk_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1148953461"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_50_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_50_TalkFailed
  self.box_Proximity_Monitor_35 = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self.box_Proximity_Monitor_35
  l0._graph = self
  l0._name = "box_Proximity_Monitor_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1161594086"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Proximity_Monitor_35_Disabled
  l0.EnterRadius = self.f_box_Proximity_Monitor_35_EnterRadius
  l0.ExitRadius = self.f_box_Proximity_Monitor_35_ExitRadius
  self.box_MissionMessageController_v3_39 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_39
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1170288741"
  l0.Out = self.f_box_MissionMessageController_v3_39_Out
  l0.MessageCompleted = DummyFunction
  self.box_TaxiRatingController_75 = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self.box_TaxiRatingController_75
  l0._graph = self
  l0._name = "box_TaxiRatingController_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1235837475"
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = DummyFunction
  l0.RewardShown = DummyFunction
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = self.f_box_TaxiRatingController_75_RatingRemoved
  self.box_CLOController_19 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_19
  l0._graph = self
  l0._name = "box_CLOController_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1275843932"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_FloatingVehicleBhvController_3 = cbox:CreateBox("domino/System/FloatingVehicleBhvController.lua")
  l0 = self.box_FloatingVehicleBhvController_3
  l0._graph = self
  l0._name = "box_FloatingVehicleBhvController_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1277115231"
  l0.StartCompleted = self.f_box_FloatingVehicleBhvController_3_StartCompleted
  l0.StopCompleted = DummyFunction
  self.box_CLOController_4 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_4
  l0._graph = self
  l0._name = "box_CLOController_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1376185573"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_4_OnUserInPlace
  self.box_MultipleOR_27 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_27
  l0._graph = self
  l0._name = "box_MultipleOR_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1383532615"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_27_Out
  self.box_TaxiRideVehicleMonitor_23 = cbox:CreateBox("domino/System/TaxiRideVehicleMonitor.lua")
  l0 = self.box_TaxiRideVehicleMonitor_23
  l0._graph = self
  l0._name = "box_TaxiRideVehicleMonitor_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1412729884"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ClientDeath = self.f_box_TaxiRideVehicleMonitor_23_ClientDeath
  l0.VehicleUnusable = self.f_box_TaxiRideVehicleMonitor_23_VehicleUnusable
  l0.ClientBailedOut = self.f_box_TaxiRideVehicleMonitor_23_ClientBailedOut
  l0.PlayerAbandonedVehicle = self.f_box_TaxiRideVehicleMonitor_23_PlayerAbandonedVehicle
  self.box_SnapAndBind_92 = cbox:CreateBox("domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  l0 = self.box_SnapAndBind_92
  l0._graph = self
  l0._name = "box_SnapAndBind_92"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1417882268"
  l0.Attached = self.f_box_SnapAndBind_92_Attached
  self.box_TutorialController_46 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_46
  l0._graph = self
  l0._name = "box_TutorialController_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1481509328"
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_box_TutorialController_46_DisplayRequested
  l0.NotificationHidden = self.f_box_TutorialController_46_NotificationHidden
  l0.MessageCompleted = DummyFunction
  self.box_MapPointController_v4_45 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_45
  l0._graph = self
  l0._name = "box_MapPointController_v4_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1486959948"
  l0.Shown = self.f_box_MapPointController_v4_45_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_SnapAndBind_69 = cbox:CreateBox("domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  l0 = self.box_SnapAndBind_69
  l0._graph = self
  l0._name = "box_SnapAndBind_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1581610747"
  l0.Attached = self.f_box_SnapAndBind_69_Attached
  self.box_PlayDialog_v2_43 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_43
  l0._graph = self
  l0._name = "box_PlayDialog_v2_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1600528809"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_Timer_v2_53 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_53
  l0._graph = self
  l0._name = "box_Timer_v2_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1620009187"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_53_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_TaxiRideReachDestinationMonitor_74 = cbox:CreateBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self.box_TaxiRideReachDestinationMonitor_74
  l0._graph = self
  l0._name = "box_TaxiRideReachDestinationMonitor_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1624858101"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TaxiRideReachDestinationMonitor_74_Disabled
  l0.ReachDestination = self.f_box_TaxiRideReachDestinationMonitor_74_ReachDestination
  l0.ClientDropOff = self.f_box_TaxiRideReachDestinationMonitor_74_ClientDropOff
  self.box_MissionLayer_v2_81 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_81
  l0._graph = self
  l0._name = "box_MissionLayer_v2_81"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1671708611"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_81_Unloaded
  l0.Reseted = DummyFunction
  self.box_PlayDialog_v2_44 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_44
  l0._graph = self
  l0._name = "box_PlayDialog_v2_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1698973862"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_TaxiStrategiesController_18 = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self.box_TaxiStrategiesController_18
  l0._graph = self
  l0._name = "box_TaxiStrategiesController_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1706996447"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = self.f_box_TaxiStrategiesController_18_Paused
  l0.Resumed = DummyFunction
  self.box_Timer_v2_16 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_16
  l0._graph = self
  l0._name = "box_Timer_v2_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1718025800"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_16_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MultipleOR_88 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_88
  l0._graph = self
  l0._name = "box_MultipleOR_88"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1728461164"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_88_Out
  self.box_Timer_v2_72 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_72
  l0._graph = self
  l0._name = "box_Timer_v2_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1762475097"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_72_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Taxi_AbortMission_85 = cbox:CreateBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.debug.lua")
  l0 = self.box_Taxi_AbortMission_85
  l0._graph = self
  l0._name = "box_Taxi_AbortMission_85"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1807447099"
  self.box_MultipleOR_82 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_82
  l0._graph = self
  l0._name = "box_MultipleOR_82"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1820045181"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_82_Out
  self.box_MissionLayer_v2_60 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_60
  l0._graph = self
  l0._name = "box_MissionLayer_v2_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1821627891"
  l0.Loaded = self.f_box_MissionLayer_v2_60_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_CLOController_33 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_33
  l0._graph = self
  l0._name = "box_CLOController_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1855055337"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_33_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_MultipleOR_77 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_77
  l0._graph = self
  l0._name = "box_MultipleOR_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1886284540"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_77_Out
  self.box_MissionCheckpointReach_25 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_25
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1917855866"
  l0.Out = self.f_box_MissionCheckpointReach_25_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_GameplayInteractionController_57 = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self.box_GameplayInteractionController_57
  l0._graph = self
  l0._name = "box_GameplayInteractionController_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1951249316"
  l0.Out = DummyFunction
  l0.Started = self.f_box_GameplayInteractionController_57_Started
  l0.Stopped = DummyFunction
  self.box_MultipleOR_79 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_79
  l0._graph = self
  l0._name = "box_MultipleOR_79"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1985535473"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_79_Out
  self.box_GetDistance_104 = cbox:CreateBox("domino/System/GetDistance.lua")
  l0 = self.box_GetDistance_104
  l0._graph = self
  l0._name = "box_GetDistance_104"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|2003012005"
  l0.Out = self.f_box_GetDistance_104_Out
  l0.OutViaRoad = self.f_box_GetDistance_104_OutViaRoad
  self.box_MultipleOR_99 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_99
  l0._graph = self
  l0._name = "box_MultipleOR_99"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|2063451658"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_99_Out
  self.box_SwitchOutput_v3_42 = cbox:CreateBox("domino/System/SwitchOutput_v3.lua")
  l0 = self.box_SwitchOutput_v3_42
  l0._graph = self
  l0._name = "box_SwitchOutput_v3_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|2075903272"
  l0._DynamicAnchors = {Output = 4}
  l0.Out = DummyFunction
  l0.Output[0] = self.f_box_SwitchOutput_v3_42_Output_0
  l0.Output[1] = self.f_box_SwitchOutput_v3_42_Output_1
  l0.Output[2] = self.f_box_SwitchOutput_v3_42_Output_2
  l0.Output[3] = self.f_box_SwitchOutput_v3_42_Output_3
  l0.None = DummyFunction
  l0.WasReset = DummyFunction
  self.box_MultipleOR_89 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_89
  l0._graph = self
  l0._name = "box_MultipleOR_89"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|2124227896"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_89_Out
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
  self:OnEnter_box_MultipleOR_27()
  l0 = self.box_MultipleOR_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|418835873", "418835873", "Taxi16_Main", "CheckPoint_0", "box_MultipleOR_27.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_27()
  l0 = self.box_MultipleOR_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|425732933", "425732933", "Taxi16_Main", "In", "box_MultipleOR_27.Input", self, l0)
  l0:Input(0)
end
function export:f_box_Compare_Floats_v2_105_A_gt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareFloats_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SwitchOutput_v3_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1518778281", "1518778281", "Taxi16_Main", "box_Compare_Floats_v2_105.A_gt_B", "box_SwitchOutput_v3_42.In", clone, l0)
  l0:In()
end
function export:f_box_Timer_v2_68_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_70
  l0.Entity = self.Client
  l0.SoundId = "soundbinary/4034559296.bnk"
  l0 = self.box_Timer_v2_68
  l1 = self.box_PlayDialog_v2_70
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1435190371", "1435190371", "Taxi16_Main", "box_Timer_v2_68.TimeElapsed", "box_PlayDialog_v2_70.Start", l0, l1)
  l1:Start()
end
function export:f_box_TaxiRatingController_63_RatingReset()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiStrategiesController_96
  l0.Config = "TaxiRideStrategyConfig.9223372048288505671"
  l0 = self.box_TaxiRatingController_63
  l1 = self.box_TaxiStrategiesController_96
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1330113869", "1330113869", "Taxi16_Main", "box_TaxiRatingController_63.RatingReset", "box_TaxiStrategiesController_96.Start", l0, l1)
  l1:Start()
end
function export:f_box_SetActionMap_v2_93_Popped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TaxiRideReachDestinationMonitor_74()
  l0 = self.box_TaxiRideReachDestinationMonitor_74
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|405143991", "405143991", "Taxi16_Main", "box_SetActionMap_v2_93.Popped", "box_TaxiRideReachDestinationMonitor_74.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_TaxiRideReachDestinationMonitor_30_ReachDestination()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1444637880"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_49_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_49_Out_1
  l0 = self.box_TaxiRideReachDestinationMonitor_30
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|990061356", "990061356", "Taxi16_Main", "box_TaxiRideReachDestinationMonitor_30.ReachDestination", "box_Ordered_Output_49.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_64_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_40
  l0.Entity = self.Client
  l0.SoundId = "soundbinary/3580231226.bnk"
  l0 = self.box_MultipleOR_64
  l1 = self.box_PlayDialog_v2_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|79385670", "79385670", "Taxi16_Main", "box_MultipleOR_64.Out", "box_PlayDialog_v2_40.Start", l0, l1)
  l1:Start()
end
function export:f_box_DPad_Hackable_Controller_108_RemovedAll()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_11()
  l0 = self.box_Multiple_AND_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1320631839", "1320631839", "Taxi16_Main", "box_DPad_Hackable_Controller_108.RemovedAll", "box_Multiple_AND_11.Condition", clone, l0)
  l0:Condition(1)
end
function export:f_box_OnceOnly_v3_73_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|677021505"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_37_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_37_Out_1
  l0 = self.box_OnceOnly_v3_73
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|636494097", "636494097", "Taxi16_Main", "box_OnceOnly_v3_73.Out", "box_Ordered_Output_37.In", l0, l1)
  l1:In()
end
function export:f_box_FloatingVehicleBhvController_12_StartCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Vehicle_Bhv_Monitor_41()
  l0 = self.box_FloatingVehicleBhvController_12
  l1 = self.box_Vehicle_Bhv_Monitor_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|745424691", "745424691", "Taxi16_Main", "box_FloatingVehicleBhvController_12.StartCompleted", "box_Vehicle_Bhv_Monitor_41.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_DriveAndTalk_34_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_89()
  l0 = self.box_DriveAndTalk_34
  l1 = self.box_MultipleOR_89
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1902007241", "1902007241", "Taxi16_Main", "box_DriveAndTalk_34.TalkFailed", "box_MultipleOR_89.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_DriveAndTalk_34_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_89()
  l0 = self.box_DriveAndTalk_34
  l1 = self.box_MultipleOR_89
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1517800105", "1517800105", "Taxi16_Main", "box_DriveAndTalk_34.TalkFinished", "box_MultipleOR_89.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_VehicleSeatingController_6_AssignCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  l0.HackableEntity = self.Boat1
  l0.HackableEntityList = nil
  l0.HackCategoryType[0] = nil
  l0.HackCategoryType[1] = nil
  l0._graph = self
  l0._name = "box_DPad_Hackable_Controller_107"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|950648980"
  l0._DynamicAnchors = {HackCategoryType = 2}
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = DummyFunction
  l0.Removed = DummyFunction
  l0.RemovedAll = self.f_box_DPad_Hackable_Controller_107_RemovedAll
  l0.HackingDisabled = DummyFunction
  l0 = self.box_VehicleSeatingController_6
  l1 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1719851392", "1719851392", "Taxi16_Main", "box_VehicleSeatingController_6.AssignCompleted", "box_DPad_Hackable_Controller_107.RemoveAll", l0, l1)
  l1:RemoveAll()
end
function export:f_box_MultipleOR_102_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SnapAndBind_92
  l0.Parent = self.PlayerVehicle
  l0.Child = "9223372049053023459"
  l0.CarIcon = 1
  l0 = self.box_MultipleOR_102
  l1 = self.box_SnapAndBind_92
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1008107409", "1008107409", "Taxi16_Main", "box_MultipleOR_102.Out", "box_SnapAndBind_92.Attach", l0, l1)
  l1:Attach()
end
function export:f_box_DriveAndTalk_90_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_102()
  l0 = self.box_DriveAndTalk_90
  l1 = self.box_MultipleOR_102
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|582918692", "582918692", "Taxi16_Main", "box_DriveAndTalk_90.TalkFailed", "box_MultipleOR_102.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_DriveAndTalk_90_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_102()
  l0 = self.box_DriveAndTalk_90
  l1 = self.box_MultipleOR_102
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1784717592", "1784717592", "Taxi16_Main", "box_DriveAndTalk_90.TalkFinished", "box_MultipleOR_102.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Simple_Node_47_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Proximity_Monitor_35()
  l0 = self.box_Proximity_Monitor_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1442751642", "1442751642", "Taxi16_Main", "box_Simple_Node_47.Out", "box_Proximity_Monitor_35.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_TaxiRideReachDestinationMonitor_24_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic_nocameralock"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_86"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1604441466"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_box_SetActionMap_v2_86_Pushed
  l0.Popped = DummyFunction
  l0 = self.box_TaxiRideReachDestinationMonitor_24
  l1 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1146780995", "1146780995", "Taxi16_Main", "box_TaxiRideReachDestinationMonitor_24.Disabled", "box_SetActionMap_v2_86.Push", l0, l1)
  l1:Push()
end
function export:f_box_TaxiRideReachDestinationMonitor_24_ReachDestination()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1976427490"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_54_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_54_Out_1
  l0 = self.box_TaxiRideReachDestinationMonitor_24
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|510659183", "510659183", "Taxi16_Main", "box_TaxiRideReachDestinationMonitor_24.ReachDestination", "box_Ordered_Output_54.In", l0, l1)
  l1:In()
end
function export:f_box_Get_Player_ID_28_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_15
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1878407363", "1878407363", "Taxi16_Main", "box_Get_Player_ID_28.Out", "box_CinematicPrep_15.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_TaxiStrategiesController_96_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_65
  l0.Seconds = 7
  l0 = self.box_TaxiStrategiesController_96
  l1 = self.box_Timer_v2_65
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|625630040", "625630040", "Taxi16_Main", "box_TaxiStrategiesController_96.Started", "box_Timer_v2_65.Start", l0, l1)
  l1:Start()
end
function export:f_box_DriveAndTalk_36_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_88()
  l0 = self.box_DriveAndTalk_36
  l1 = self.box_MultipleOR_88
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1794766521", "1794766521", "Taxi16_Main", "box_DriveAndTalk_36.TalkFailed", "box_MultipleOR_88.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_DriveAndTalk_36_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_88()
  l0 = self.box_DriveAndTalk_36
  l1 = self.box_MultipleOR_88
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|351505445", "351505445", "Taxi16_Main", "box_DriveAndTalk_36.TalkFinished", "box_MultipleOR_88.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_TaxiStrategiesController_21_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiStrategiesController_21
  l1 = self.box_MissionMessageController_v3_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1190985672", "1190985672", "Taxi16_Main", "box_TaxiStrategiesController_21.Stopped", "box_MissionMessageController_v3_39.ShowMissionComplete", l0, l1)
  l1:ShowMissionComplete()
end
function export:f_box_Vehicle_Bhv_Monitor_1_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v4_78
  l0.MapPoint = "9223372048288505666"
  l0.LocText = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "Follow",
    id = "417039"
  }
  l0 = self.box_Vehicle_Bhv_Monitor_1
  l1 = self.box_MapPointController_v4_78
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|365257108", "365257108", "Taxi16_Main", "box_Vehicle_Bhv_Monitor_1.Disabled", "box_MapPointController_v4_78.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Vehicle_Bhv_Monitor_1_EndPathPointReached()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_80()
  l0 = self.box_Vehicle_Bhv_Monitor_1
  l1 = self.box_MultipleOR_80
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1595534158", "1595534158", "Taxi16_Main", "box_Vehicle_Bhv_Monitor_1.EndPathPointReached", "box_MultipleOR_80.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Vehicle_Bhv_Monitor_1_SpecificPathPointReached()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_80()
  l0 = self.box_Vehicle_Bhv_Monitor_1
  l1 = self.box_MultipleOR_80
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|626471609", "626471609", "Taxi16_Main", "box_Vehicle_Bhv_Monitor_1.SpecificPathPointReached", "box_MultipleOR_80.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_DriveAndTalk_67_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1965751485"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_14_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_14_Out_1
  l0 = self.box_DriveAndTalk_67
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|945275388", "945275388", "Taxi16_Main", "box_DriveAndTalk_67.Started", "box_Ordered_Output_14.In", l0, l1)
  l1:In()
end
function export:f_box_DriveAndTalk_67_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_100()
  l0 = self.box_DriveAndTalk_67
  l1 = self.box_MultipleOR_100
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1964909212", "1964909212", "Taxi16_Main", "box_DriveAndTalk_67.TalkFailed", "box_MultipleOR_100.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_DriveAndTalk_67_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_100()
  l0 = self.box_DriveAndTalk_67
  l1 = self.box_MultipleOR_100
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1581207840", "1581207840", "Taxi16_Main", "box_DriveAndTalk_67.TalkFinished", "box_MultipleOR_100.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Multiple_AND_59_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_67
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372052661645925"
  l0.StartDelay = 1
  l0 = self.box_Multiple_AND_59
  l1 = self.box_DriveAndTalk_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|879785356", "879785356", "Taxi16_Main", "box_Multiple_AND_59.Out", "box_DriveAndTalk_67.Start", l0, l1)
  l1:Start()
end
function export:f_box_DriveAndTalk_62_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_84()
  l0 = self.box_DriveAndTalk_62
  l1 = self.box_MultipleOR_84
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1994803564", "1994803564", "Taxi16_Main", "box_DriveAndTalk_62.TalkFailed", "box_MultipleOR_84.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_DriveAndTalk_62_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_84()
  l0 = self.box_DriveAndTalk_62
  l1 = self.box_MultipleOR_84
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|99673879", "99673879", "Taxi16_Main", "box_DriveAndTalk_62.TalkFinished", "box_MultipleOR_84.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Vehicle_Controller_31_Indestructable()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_9
  l0.CLO = "9223372049053023452"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|2115759460", "2115759460", "Taxi16_Main", "box_Vehicle_Controller_31.Indestructable", "box_CLOController_9.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_CLOController_5_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_5
  self.Driver1 = l0.UserID
  l0 = self.box_VehicleSeatingController_6
  l0.Vehicle = self.Boat1
  l0.Pawn = self.Driver1
  l0.CanAutoSwitchToDriver = 1
  l0 = self.box_CLOController_5
  l1 = self.box_VehicleSeatingController_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1597323382", "1597323382", "Taxi16_Main", "box_CLOController_5.OnUserInPlace", "box_VehicleSeatingController_6.Assign", l0, l1)
  l1:Assign()
end
function export:f_box_Vehicle_Bhv_Monitor_48_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_97()
  l0 = self.box_Vehicle_Bhv_Monitor_48
  l1 = self.box_Multiple_AND_97
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1940533880", "1940533880", "Taxi16_Main", "box_Vehicle_Bhv_Monitor_48.Disabled", "box_Multiple_AND_97.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_Vehicle_Bhv_Monitor_48_SpecificPathPointReached()
  local l0
  self = self._graph
  self:OnEnter_box_Vehicle_Bhv_Monitor_48()
  l0 = self.box_Vehicle_Bhv_Monitor_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|197306344", "197306344", "Taxi16_Main", "box_Vehicle_Bhv_Monitor_48.SpecificPathPointReached", "box_Vehicle_Bhv_Monitor_48.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_MissionMessageController_v3_17_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRatingController_63
  l0.MissionName = self.Mission
  l0 = self.box_MissionMessageController_v3_17
  l1 = self.box_TaxiRatingController_63
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|557251349", "557251349", "Taxi16_Main", "box_MissionMessageController_v3_17.Out", "box_TaxiRatingController_63.ResetRating", l0, l1)
  l1:ResetRating()
end
function export:f_box_Timer_v2_83_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_66
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372052661645921"
  l0.StartDelay = 0.01
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0 = self.box_Timer_v2_83
  l1 = self.box_DriveAndTalk_66
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1596813264", "1596813264", "Taxi16_Main", "box_Timer_v2_83.TimeElapsed", "box_DriveAndTalk_66.Start", l0, l1)
  l1:Start()
end
function export:f_box_Simple_Node_38_Out()
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|649472336"
  l0.Out = self.f_box_Simple_Node_32_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|765548529", "765548529", "Taxi16_Main", "box_Simple_Node_38.Out", "box_Simple_Node_32.In", clone, l0)
  l0:In()
end
function export:f_box_Timer_v2_51_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_62
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372052661645917"
  l0.StartDelay = 0.01
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0 = self.box_Timer_v2_51
  l1 = self.box_DriveAndTalk_62
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1577924234", "1577924234", "Taxi16_Main", "box_Timer_v2_51.TimeElapsed", "box_DriveAndTalk_62.Start", l0, l1)
  l1:Start()
end
function export:f_box_Vehicle_Bhv_Monitor_41_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_77()
  l0 = self.box_Vehicle_Bhv_Monitor_41
  l1 = self.box_MultipleOR_77
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1033626125", "1033626125", "Taxi16_Main", "box_Vehicle_Bhv_Monitor_41.Disabled", "box_MultipleOR_77.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Vehicle_Bhv_Monitor_41_EndPathPointReached()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_79()
  l0 = self.box_Vehicle_Bhv_Monitor_41
  l1 = self.box_MultipleOR_79
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|2053319619", "2053319619", "Taxi16_Main", "box_Vehicle_Bhv_Monitor_41.EndPathPointReached", "box_MultipleOR_79.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Vehicle_Bhv_Monitor_41_SpecificPathPointReached()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_79()
  l0 = self.box_Vehicle_Bhv_Monitor_41
  l1 = self.box_MultipleOR_79
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1931418445", "1931418445", "Taxi16_Main", "box_Vehicle_Bhv_Monitor_41.SpecificPathPointReached", "box_MultipleOR_79.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MapPointController_v4_78_Hidden()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_77()
  l0 = self.box_MapPointController_v4_78
  l1 = self.box_MultipleOR_77
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|186728569", "186728569", "Taxi16_Main", "box_MapPointController_v4_78.Hidden", "box_MultipleOR_77.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MultipleOR_84_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_16
  l0.Seconds = 1
  l0 = self.box_MultipleOR_84
  l1 = self.box_Timer_v2_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1423313880", "1423313880", "Taxi16_Main", "box_MultipleOR_84.Out", "box_Timer_v2_16.Start", l0, l1)
  l1:Start()
end
function export:f_box_DriveAndTalk_56_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic_nocameralock"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|819031963"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_box_SetActionMap_v2_55_Popped
  l0 = self.box_DriveAndTalk_56
  l1 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|156510190", "156510190", "Taxi16_Main", "box_DriveAndTalk_56.Started", "box_SetActionMap_v2_55.Pop", l0, l1)
  l1:Pop()
end
function export:f_box_DriveAndTalk_56_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_101()
  l0 = self.box_DriveAndTalk_56
  l1 = self.box_MultipleOR_101
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1956492763", "1956492763", "Taxi16_Main", "box_DriveAndTalk_56.TalkFailed", "box_MultipleOR_101.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_DriveAndTalk_56_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_101()
  l0 = self.box_DriveAndTalk_56
  l1 = self.box_MultipleOR_101
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1175699143", "1175699143", "Taxi16_Main", "box_DriveAndTalk_56.TalkFinished", "box_MultipleOR_101.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_GetDistance_103_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_GetDistance_103
  self.TempDistancePlayer = l0.Distance
  l0 = self.box_GetDistance_104
  l0.Entity1 = "9223372072024838062"
  l0.Entity2 = self.Boat1
  l0 = self.box_GetDistance_103
  l1 = self.box_GetDistance_104
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|389126678", "389126678", "Taxi16_Main", "box_GetDistance_103.Out", "box_GetDistance_104.Distance2D", l0, l1)
  l1:Distance2D()
end
function export:f_box_GetDistance_103_OutViaRoad()
  local l0
  self = self._graph
  l0 = self.box_GetDistance_103
  self.TempDistancePlayer = l0.Distance
end
function export:f_box_CinematicPrep_15_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_25
  l0.Checkpoint = "CheckPoint_0"
  l0 = self.box_CinematicPrep_15
  l1 = self.box_MissionCheckpointReach_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|2116756635", "2116756635", "Taxi16_Main", "box_CinematicPrep_15.PostOut", "box_MissionCheckpointReach_25.In", l0, l1)
  l1:In()
end
function export:f_box_VehicleSeatingController_10_AssignCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  l0.HackableEntity = self.Boat2
  l0.HackableEntityList = nil
  l0.HackCategoryType[0] = nil
  l0.HackCategoryType[1] = nil
  l0._graph = self
  l0._name = "box_DPad_Hackable_Controller_108"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|70498203"
  l0._DynamicAnchors = {HackCategoryType = 2}
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = DummyFunction
  l0.Removed = DummyFunction
  l0.RemovedAll = self.f_box_DPad_Hackable_Controller_108_RemovedAll
  l0.HackingDisabled = DummyFunction
  l0 = self.box_VehicleSeatingController_10
  l1 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|187675338", "187675338", "Taxi16_Main", "box_VehicleSeatingController_10.AssignCompleted", "box_DPad_Hackable_Controller_108.RemoveAll", l0, l1)
  l1:RemoveAll()
end
function export:f_box_DriveAndTalk_26_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_99()
  l0 = self.box_DriveAndTalk_26
  l1 = self.box_MultipleOR_99
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|206429001", "206429001", "Taxi16_Main", "box_DriveAndTalk_26.TalkFailed", "box_MultipleOR_99.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_DriveAndTalk_26_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_99()
  l0 = self.box_DriveAndTalk_26
  l1 = self.box_MultipleOR_99
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|13124567", "13124567", "Taxi16_Main", "box_DriveAndTalk_26.TalkFinished", "box_MultipleOR_99.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MultipleOR_101_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1848557343"
  l0.Out = self.f_box_Simple_Node_58_Out
  l0 = self.box_MultipleOR_101
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1857219701", "1857219701", "Taxi16_Main", "box_MultipleOR_101.Out", "box_Simple_Node_58.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_32_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TaxiRideVehicleMonitor_23()
  l0 = self.box_TaxiRideVehicleMonitor_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|959861641", "959861641", "Taxi16_Main", "box_Simple_Node_32.Out", "box_TaxiRideVehicleMonitor_23.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Multiple_AND_11_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1658785234"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_13_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_13_Out_1
  l0 = self.box_Multiple_AND_11
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1692285629", "1692285629", "Taxi16_Main", "box_Multiple_AND_11.Out", "box_Ordered_Output_13.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_37_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1817085753"
  l0.Out = self.f_box_Simple_Node_2_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|913048173", "913048173", "Taxi16_Main", "box_Ordered_Output_37.Out", "box_Simple_Node_2.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_37_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TaxiRideReachDestinationMonitor_30
  l0.Client = self.Client
  l0.DropOffIcon = "9223372049053023459"
  l0.ShowGps = 1
  l0.ManageObjective = 1
  l0.CustomObjective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF160",
    item = "Objective_Reach_Location",
    id = "630505"
  }
  l0.Config = "TaxiRideGameplayBrick.9223372058001194753"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|391165549", "391165549", "Taxi16_Main", "box_Ordered_Output_37.Out", "box_TaxiRideReachDestinationMonitor_30.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_TaxiRatingController_61_RewardShown()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiStrategiesController_21
  l0.Config = "TaxiRideStrategyConfig.9223372048288505671"
  l0 = self.box_TaxiRatingController_61
  l1 = self.box_TaxiStrategiesController_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1437831433", "1437831433", "Taxi16_Main", "box_TaxiRatingController_61.RewardShown", "box_TaxiStrategiesController_21.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_PlayDialog_v2_70_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_GameplayInteractionController_22()
  l0 = self.box_PlayDialog_v2_70
  l1 = self.box_GameplayInteractionController_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1250826113", "1250826113", "Taxi16_Main", "box_PlayDialog_v2_70.Finished", "box_GameplayInteractionController_22.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_65_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Proximity_Monitor_35()
  l0 = self.box_Timer_v2_65
  l1 = self.box_Proximity_Monitor_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|80686452", "80686452", "Taxi16_Main", "box_Timer_v2_65.TimeElapsed", "box_Proximity_Monitor_35.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_ListWriter_20_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_20
  self.ActorsList = l0.Target
  self:OnEnter_box_GameplayInteractionController_57()
  l1 = self.box_GameplayInteractionController_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1636864495", "1636864495", "Taxi16_Main", "box_ListWriter_20.Added", "box_GameplayInteractionController_57.Start", l0, l1)
  l1:Start()
end
function export:f_box_ListWriter_20_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_20
  self.ActorsList = l0.Target
end
function export:f_box_ListWriter_20_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_20
  self.ActorsList = l0.Target
end
function export:f_box_GameplayInteractionController_22_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_51
  l0.Seconds = 7
  l0 = self.box_GameplayInteractionController_22
  l1 = self.box_Timer_v2_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|503444641", "503444641", "Taxi16_Main", "box_GameplayInteractionController_22.Started", "box_Timer_v2_51.Start", l0, l1)
  l1:Start()
end
function export:f_box_SetActionMap_v2_55_Popped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_17
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF160",
    item = "Objective_Follow_Boat",
    id = "630504"
  }
  l0.HasObjectiveMarker = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|980111443", "980111443", "Taxi16_Main", "box_SetActionMap_v2_55.Popped", "box_MissionMessageController_v3_17.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_MultipleOR_80_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Vehicle_Bhv_Monitor_1()
  l0 = self.box_MultipleOR_80
  l1 = self.box_Vehicle_Bhv_Monitor_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|331515284", "331515284", "Taxi16_Main", "box_MultipleOR_80.Out", "box_Vehicle_Bhv_Monitor_1.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Timer_v2_76_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_34
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372052661645920"
  l0.StartDelay = 0.01
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0 = self.box_Timer_v2_76
  l1 = self.box_DriveAndTalk_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|109577376", "109577376", "Taxi16_Main", "box_Timer_v2_76.TimeElapsed", "box_DriveAndTalk_34.Start", l0, l1)
  l1:Start()
end
function export:f_box_Multiple_AND_97_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v4_45
  l0.MapPoint = "9223372048288505666"
  l0.LocText = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "Follow",
    id = "417039"
  }
  l0 = self.box_Multiple_AND_97
  l1 = self.box_MapPointController_v4_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|162569739", "162569739", "Taxi16_Main", "box_Multiple_AND_97.Out", "box_MapPointController_v4_45.Show", l0, l1)
  l1:Show()
end
function export:f_box_MultipleOR_87_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_72
  l0.Seconds = 5
  l0 = self.box_MultipleOR_87
  l1 = self.box_Timer_v2_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1967493936", "1967493936", "Taxi16_Main", "box_MultipleOR_87.Out", "box_Timer_v2_72.Start", l0, l1)
  l1:Start()
end
function export:f_box_MissionMessageController_v3_95_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_59()
  l0 = self.box_MissionMessageController_v3_95
  l1 = self.box_Multiple_AND_59
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|25224485", "25224485", "Taxi16_Main", "box_MissionMessageController_v3_95.Out", "box_Multiple_AND_59.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_CLOController_8_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_8
  self.Boat2 = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.Boat2
  l0._graph = self
  l0._name = "box_Vehicle_Controller_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|293913274"
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.Destructable = DummyFunction
  l0.Indestructable = self.f_box_Vehicle_Controller_31_Indestructable
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
  l0 = self.box_CLOController_8
  l1 = Boxes[PathID("domino/System/VehicleController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1567209857", "1567209857", "Taxi16_Main", "box_CLOController_8.OnUserInPlace", "box_Vehicle_Controller_31.SetAsIndestructable", l0, l1)
  l1:SetAsIndestructable()
end
function export:f_box_DPad_Hackable_Controller_107_RemovedAll()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_11()
  l0 = self.box_Multiple_AND_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|86613407", "86613407", "Taxi16_Main", "box_DPad_Hackable_Controller_107.RemovedAll", "box_Multiple_AND_11.Condition", clone, l0)
  l0:Condition(0)
end
function export:f_box_CLOController_9_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_9
  self.Driver2 = l0.UserID
  l0 = self.box_VehicleSeatingController_10
  l0.Vehicle = self.Boat2
  l0.Pawn = self.Driver2
  l0.CanAutoSwitchToDriver = 1
  l0 = self.box_CLOController_9
  l1 = self.box_VehicleSeatingController_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1000130254", "1000130254", "Taxi16_Main", "box_CLOController_9.OnUserInPlace", "box_VehicleSeatingController_10.Assign", l0, l1)
  l1:Assign()
end
function export:f_box_3DGPSController_98_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TaxiRideReachDestinationMonitor_24()
  l0 = self.box_TaxiRideReachDestinationMonitor_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|943114933", "943114933", "Taxi16_Main", "box_3DGPSController_98.Disabled", "box_TaxiRideReachDestinationMonitor_24.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_3DGPSController_98_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TaxiRideReachDestinationMonitor_24()
  l0 = self.box_TaxiRideReachDestinationMonitor_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1934520037", "1934520037", "Taxi16_Main", "box_3DGPSController_98.Enabled", "box_TaxiRideReachDestinationMonitor_24.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_TaxiRidePickUpController_7_ClientConversationFinised()
  local l0
  self = self._graph
  self:OnEnter_box_TaxiRidePickUpController_7()
  l0 = self.box_TaxiRidePickUpController_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|589586756", "589586756", "Taxi16_Main", "box_TaxiRidePickUpController_7.ClientConversationFinised", "box_TaxiRidePickUpController_7.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_TaxiRidePickUpController_7_ClientPickedUp()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRidePickUpController_7
  self.PlayerVehicle = l0.Vehicle
  self:OnEnter_box_3DGPSController_98()
  l1 = Boxes[PathID("domino/System/GPS3DController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|157614149", "157614149", "Taxi16_Main", "box_TaxiRidePickUpController_7.ClientPickedUp", "box_3DGPSController_98.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TaxiRidePickUpController_7_ClientSpawned()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRidePickUpController_7
  self.Client = l0.Client
  self:OnEnter_box_TaxiRideVehicleMonitor_23()
  l1 = self.box_TaxiRideVehicleMonitor_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1840171172", "1840171172", "Taxi16_Main", "box_TaxiRidePickUpController_7.ClientSpawned", "box_TaxiRideVehicleMonitor_23.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TaxiRidePickUpController_7_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_20
  l0.Input = self.ActorsList
  l0.Data[0] = self.Client
  l0.Data[1] = self.PlayerEntity
  l0 = self.box_TaxiRidePickUpController_7
  l1 = self.box_ListWriter_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1154948314", "1154948314", "Taxi16_Main", "box_TaxiRidePickUpController_7.Disabled", "box_ListWriter_20.Add", l0, l1)
  l1:Add()
end
function export:f_box_MultipleOR_100_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_94"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1950008582"
  l0.Out = self.f_box_Simple_Node_94_Out
  l0 = self.box_MultipleOR_100
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1411025448", "1411025448", "Taxi16_Main", "box_MultipleOR_100.Out", "box_Simple_Node_94.In", l0, l1)
  l1:In()
end
function export:f_box_DriveAndTalk_50_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_87()
  l0 = self.box_DriveAndTalk_50
  l1 = self.box_MultipleOR_87
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1701678702", "1701678702", "Taxi16_Main", "box_DriveAndTalk_50.TalkFailed", "box_MultipleOR_87.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_DriveAndTalk_50_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_87()
  l0 = self.box_DriveAndTalk_50
  l1 = self.box_MultipleOR_87
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1294332271", "1294332271", "Taxi16_Main", "box_DriveAndTalk_50.TalkFinished", "box_MultipleOR_87.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Proximity_Monitor_35_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_82()
  l0 = self.box_Proximity_Monitor_35
  l1 = self.box_MultipleOR_82
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1272594276", "1272594276", "Taxi16_Main", "box_Proximity_Monitor_35.Disabled", "box_MultipleOR_82.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Proximity_Monitor_35_EnterRadius()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_82()
  l0 = self.box_Proximity_Monitor_35
  l1 = self.box_MultipleOR_82
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1311152785", "1311152785", "Taxi16_Main", "box_Proximity_Monitor_35.EnterRadius", "box_MultipleOR_82.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Proximity_Monitor_35_ExitRadius()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_46()
  l0 = self.box_Proximity_Monitor_35
  l1 = self.box_TutorialController_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|218245063", "218245063", "Taxi16_Main", "box_Proximity_Monitor_35.ExitRadius", "box_TutorialController_46.Display", l0, l1)
  l1:Display()
end
function export:f_box_MissionMessageController_v3_39_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_81
  l0.LayerName = "Taxi16_Main"
  l0 = self.box_MissionMessageController_v3_39
  l1 = self.box_MissionLayer_v2_81
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1739281644", "1739281644", "Taxi16_Main", "box_MissionMessageController_v3_39.Out", "box_MissionLayer_v2_81.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_TaxiRatingController_75_RatingRemoved()
  local l0, l1
  self = self._graph
  l0 = self.box_GetDistance_103
  l0.Entity1 = "9223372072024838062"
  l0.Entity2 = self.PlayerVehicle
  l0 = self.box_TaxiRatingController_75
  l1 = self.box_GetDistance_103
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1566776676", "1566776676", "Taxi16_Main", "box_TaxiRatingController_75.RatingRemoved", "box_GetDistance_103.Distance2D", l0, l1)
  l1:Distance2D()
end
function export:f_box_FloatingVehicleBhvController_3_StartCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|2006109049"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_71_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_71_Out_1
  l0 = self.box_FloatingVehicleBhvController_3
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|560027467", "560027467", "Taxi16_Main", "box_FloatingVehicleBhvController_3.StartCompleted", "box_Ordered_Output_71.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_4_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_4
  self.Boat1 = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.Boat1
  l0._graph = self
  l0._name = "box_Vehicle_Controller_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1786731626"
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.Destructable = DummyFunction
  l0.Indestructable = self.f_box_Vehicle_Controller_29_Indestructable
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
  l0 = self.box_CLOController_4
  l1 = Boxes[PathID("domino/System/VehicleController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1022800795", "1022800795", "Taxi16_Main", "box_CLOController_4.OnUserInPlace", "box_Vehicle_Controller_29.SetAsIndestructable", l0, l1)
  l1:SetAsIndestructable()
end
function export:f_box_MultipleOR_27_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_60
  l0.LayerName = "Taxi16_Main"
  l0 = self.box_MultipleOR_27
  l1 = self.box_MissionLayer_v2_60
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|924010906", "924010906", "Taxi16_Main", "box_MultipleOR_27.Out", "box_MissionLayer_v2_60.Load", l0, l1)
  l1:Load()
end
function export:f_box_TaxiRideVehicleMonitor_23_ClientBailedOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_85()
  l0 = self.box_TaxiRideVehicleMonitor_23
  l1 = self.box_Taxi_AbortMission_85
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1761636034", "1761636034", "Taxi16_Main", "box_TaxiRideVehicleMonitor_23.ClientBailedOut", "box_Taxi_AbortMission_85.ClientBailedOut", l0, l1)
  l1:ClientBailedOut()
end
function export:f_box_TaxiRideVehicleMonitor_23_ClientDeath()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_85()
  l0 = self.box_TaxiRideVehicleMonitor_23
  l1 = self.box_Taxi_AbortMission_85
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|945655012", "945655012", "Taxi16_Main", "box_TaxiRideVehicleMonitor_23.ClientDeath", "box_Taxi_AbortMission_85.ClientDead", l0, l1)
  l1:ClientDead()
end
function export:f_box_TaxiRideVehicleMonitor_23_PlayerAbandonedVehicle()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_85()
  l0 = self.box_TaxiRideVehicleMonitor_23
  l1 = self.box_Taxi_AbortMission_85
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|620530347", "620530347", "Taxi16_Main", "box_TaxiRideVehicleMonitor_23.PlayerAbandonedVehicle", "box_Taxi_AbortMission_85.PlayerAbandonedVehicle", l0, l1)
  l1:PlayerAbandonedVehicle()
end
function export:f_box_TaxiRideVehicleMonitor_23_VehicleUnusable()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_85()
  l0 = self.box_TaxiRideVehicleMonitor_23
  l1 = self.box_Taxi_AbortMission_85
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|455589645", "455589645", "Taxi16_Main", "box_TaxiRideVehicleMonitor_23.VehicleUnusable", "box_Taxi_AbortMission_85.VehicleUnusable", l0, l1)
  l1:VehicleUnusable()
end
function export:f_box_SnapAndBind_92_Attached()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic_nocameralock"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_93"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|59013790"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_box_SetActionMap_v2_93_Popped
  l0 = self.box_SnapAndBind_92
  l1 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|560086264", "560086264", "Taxi16_Main", "box_SnapAndBind_92.Attached", "box_SetActionMap_v2_93.Pop", l0, l1)
  l1:Pop()
end
function export:f_box_SetActionMap_v2_91_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_DriveAndTalk_90
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372052661645923"
  l0.StartDelay = 0.01
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|33568353", "33568353", "Taxi16_Main", "box_SetActionMap_v2_91.Pushed", "box_DriveAndTalk_90.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_49_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_GameplayInteractionController_22()
  l0 = self.box_GameplayInteractionController_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1540770361", "1540770361", "Taxi16_Main", "box_Ordered_Output_49.Out", "box_GameplayInteractionController_22.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_49_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic_nocameralock"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_91"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1433142969"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_box_SetActionMap_v2_91_Pushed
  l0.Popped = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|737372849", "737372849", "Taxi16_Main", "box_Ordered_Output_49.Out", "box_SetActionMap_v2_91.Push", clone, l0)
  l0:Push()
end
function export:f_box_TutorialController_46_DisplayRequested()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Timer_v2_53()
  l0 = self.box_TutorialController_46
  l1 = self.box_Timer_v2_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1022787884", "1022787884", "Taxi16_Main", "box_TutorialController_46.DisplayRequested", "box_Timer_v2_53.Start", l0, l1)
  l1:Start()
end
function export:f_box_TutorialController_46_NotificationHidden()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Timer_v2_53()
  l0 = self.box_TutorialController_46
  l1 = self.box_Timer_v2_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|134839279", "134839279", "Taxi16_Main", "box_TutorialController_46.NotificationHidden", "box_Timer_v2_53.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_MapPointController_v4_45_Shown()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_56
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372052661645916"
  l0.StartDelay = 0.01
  l0 = self.box_MapPointController_v4_45
  l1 = self.box_DriveAndTalk_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|79914809", "79914809", "Taxi16_Main", "box_MapPointController_v4_45.Shown", "box_DriveAndTalk_56.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_106_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TaxiRideReachDestinationMonitor_74()
  l0 = self.box_TaxiRideReachDestinationMonitor_74
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|248068450", "248068450", "Taxi16_Main", "box_Ordered_Output_106.Out", "box_TaxiRideReachDestinationMonitor_74.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_106_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|416510832"
  l0.Out = self.f_box_Simple_Node_38_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|560882757", "560882757", "Taxi16_Main", "box_Ordered_Output_106.Out", "box_Simple_Node_38.In", clone, l0)
  l0:In()
end
function export:f_box_SnapAndBind_69_Attached()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_5
  l0.CLO = "9223372049053023453"
  l0 = self.box_SnapAndBind_69
  l1 = self.box_CLOController_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1556901269", "1556901269", "Taxi16_Main", "box_SnapAndBind_69.Attached", "box_CLOController_5.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_SetActionMap_v2_86_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_95
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "WaitForInstructions",
    id = "333924"
  }
  l0.HasObjectiveMarker = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1082772434", "1082772434", "Taxi16_Main", "box_SetActionMap_v2_86.Pushed", "box_MissionMessageController_v3_95.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_Timer_v2_53_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRatingController_75
  l0.MissionName = self.Mission
  l0.RatingAmount = 1
  l0 = self.box_Timer_v2_53
  l1 = self.box_TaxiRatingController_75
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1269272035", "1269272035", "Taxi16_Main", "box_Timer_v2_53.TimeElapsed", "box_TaxiRatingController_75.RemoveRating", l0, l1)
  l1:RemoveRating()
end
function export:f_box_TaxiRideReachDestinationMonitor_74_ClientDropOff()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_106"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1557240023"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_106_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_106_Out_1
  l0 = self.box_TaxiRideReachDestinationMonitor_74
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|725508628", "725508628", "Taxi16_Main", "box_TaxiRideReachDestinationMonitor_74.ClientDropOff", "box_Ordered_Output_106.In", l0, l1)
  l1:In()
end
function export:f_box_TaxiRideReachDestinationMonitor_74_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRatingController_61
  l0.MissionName = self.Mission
  l0 = self.box_TaxiRideReachDestinationMonitor_74
  l1 = self.box_TaxiRatingController_61
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1372175171", "1372175171", "Taxi16_Main", "box_TaxiRideReachDestinationMonitor_74.Disabled", "box_TaxiRatingController_61.ShowReward", l0, l1)
  l1:ShowReward()
end
function export:f_box_TaxiRideReachDestinationMonitor_74_ReachDestination()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiStrategiesController_18
  l0.Config = "TaxiRideStrategyConfig.9223372048288505671"
  l0 = self.box_TaxiRideReachDestinationMonitor_74
  l1 = self.box_TaxiStrategiesController_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|415690206", "415690206", "Taxi16_Main", "box_TaxiRideReachDestinationMonitor_74.ReachDestination", "box_TaxiStrategiesController_18.Pause", l0, l1)
  l1:Pause()
end
function export:f_box_Ordered_Output_13_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_FloatingVehicleBhvController_3
  l0.FloatingVehicle = self.Boat1
  l0.Target = self.PlayerVehicle
  l0.PathOrPos = "9223372049053023444"
  l0.Config = "FloatingVehicleBhvSetup.9223372048779321882"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1052357443", "1052357443", "Taxi16_Main", "box_Ordered_Output_13.Out", "box_FloatingVehicleBhvController_3.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_13_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_FloatingVehicleBhvController_12
  l0.FloatingVehicle = self.Boat2
  l0.Target = self.PlayerVehicle
  l0.PathOrPos = "9223372049053023448"
  l0.Config = "FloatingVehicleBhvSetup.9223372048779321882"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1879824098", "1879824098", "Taxi16_Main", "box_Ordered_Output_13.Out", "box_FloatingVehicleBhvController_12.Start", clone, l0)
  l0:Start()
end
function export:f_box_MissionLayer_v2_81_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_81
  l1 = self.box_MissionController_v4_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|971098354", "971098354", "Taxi16_Main", "box_MissionLayer_v2_81.Unloaded", "box_MissionController_v4_52.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_TaxiStrategiesController_18_Paused()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_33
  l0.User = self.Driver1
  l0 = self.box_TaxiStrategiesController_18
  l1 = self.box_CLOController_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1039227200", "1039227200", "Taxi16_Main", "box_TaxiStrategiesController_18.Paused", "box_CLOController_33.UnspawnUser", l0, l1)
  l1:UnspawnUser()
end
function export:f_box_Timer_v2_16_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_50
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372052661645918"
  l0.StartDelay = 0.01
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0 = self.box_Timer_v2_16
  l1 = self.box_DriveAndTalk_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1414832775", "1414832775", "Taxi16_Main", "box_Timer_v2_16.TimeElapsed", "box_DriveAndTalk_50.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_88_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_76
  l0.Seconds = 1
  l0 = self.box_MultipleOR_88
  l1 = self.box_Timer_v2_76
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|514690992", "514690992", "Taxi16_Main", "box_MultipleOR_88.Out", "box_Timer_v2_76.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_72_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_36
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372052661645919"
  l0.StartDelay = 0.01
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0 = self.box_Timer_v2_72
  l1 = self.box_DriveAndTalk_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1811657760", "1811657760", "Taxi16_Main", "box_Timer_v2_72.TimeElapsed", "box_DriveAndTalk_36.Start", l0, l1)
  l1:Start()
end
function export:f_box_Vehicle_Controller_29_Indestructable()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SnapAndBind_69
  l0.Parent = self.Boat1
  l0.Child = "9223372048288505666"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1943727825", "1943727825", "Taxi16_Main", "box_Vehicle_Controller_29.Indestructable", "box_SnapAndBind_69.Attach", clone, l0)
  l0:Attach()
end
function export:f_box_Simple_Node_2_Out()
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|159036305"
  l0.Out = self.f_box_Simple_Node_47_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|416950126", "416950126", "Taxi16_Main", "box_Simple_Node_2.Out", "box_Simple_Node_47.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_82_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_46()
  l0 = self.box_MultipleOR_82
  l1 = self.box_TutorialController_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|2071825698", "2071825698", "Taxi16_Main", "box_MultipleOR_82.Out", "box_TutorialController_46.HideNotification", l0, l1)
  l1:HideNotification()
end
function export:f_box_MissionLayer_v2_60_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|196625543"
  l0.Out = self.f_box_Get_Player_ID_28_Out
  l0 = self.box_MissionLayer_v2_60
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1930836496", "1930836496", "Taxi16_Main", "box_MissionLayer_v2_60.Loaded", "box_Get_Player_ID_28.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_58_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_68
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|756844572", "756844572", "Taxi16_Main", "box_Simple_Node_58.Out", "box_Timer_v2_68.Start", clone, l0)
  l0:Start()
end
function export:f_box_CLOController_33_UnspawnedUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_19
  l0.User = self.Driver2
  l0 = self.box_CLOController_33
  l1 = self.box_CLOController_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|335408740", "335408740", "Taxi16_Main", "box_CLOController_33.UnspawnedUser", "box_CLOController_19.UnspawnUser", l0, l1)
  l1:UnspawnUser()
end
function export:f_box_MultipleOR_77_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MultipleOR_77
  l1 = self.box_OnceOnly_v3_73
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1255018292", "1255018292", "Taxi16_Main", "box_MultipleOR_77.Out", "box_OnceOnly_v3_73.In", l0, l1)
  l1:In(0)
end
function export:f_box_MissionCheckpointReach_25_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TaxiRidePickUpController_7()
  l0 = self.box_MissionCheckpointReach_25
  l1 = self.box_TaxiRidePickUpController_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|309435756", "309435756", "Taxi16_Main", "box_MissionCheckpointReach_25.Out", "box_TaxiRidePickUpController_7.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Simple_Node_94_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_97()
  l0 = self.box_Multiple_AND_97
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|2040597932", "2040597932", "Taxi16_Main", "box_Simple_Node_94.Out", "box_Multiple_AND_97.Condition", clone, l0)
  l0:Condition(0)
end
function export:f_box_GameplayInteractionController_57_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_26
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372052661645924"
  l0.StartDelay = 0.01
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0 = self.box_GameplayInteractionController_57
  l1 = self.box_DriveAndTalk_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|127030292", "127030292", "Taxi16_Main", "box_GameplayInteractionController_57.Started", "box_DriveAndTalk_26.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_14_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_4
  l0.CLO = "9223372049053023450"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|138150813", "138150813", "Taxi16_Main", "box_Ordered_Output_14.Out", "box_CLOController_4.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_14_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_8
  l0.CLO = "9223372049053023451"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|2062908041", "2062908041", "Taxi16_Main", "box_Ordered_Output_14.Out", "box_CLOController_8.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_54_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_GameplayInteractionController_57()
  l0 = self.box_GameplayInteractionController_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|780394007", "780394007", "Taxi16_Main", "box_Ordered_Output_54.Out", "box_GameplayInteractionController_57.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_54_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_3DGPSController_98()
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|334620211", "334620211", "Taxi16_Main", "box_Ordered_Output_54.Out", "box_3DGPSController_98.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_MultipleOR_79_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Vehicle_Bhv_Monitor_41()
  l0 = self.box_MultipleOR_79
  l1 = self.box_Vehicle_Bhv_Monitor_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1447199539", "1447199539", "Taxi16_Main", "box_MultipleOR_79.Out", "box_Vehicle_Bhv_Monitor_41.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_GetDistance_104_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_GetDistance_104
  self.TempDistanceBoat = l0.Distance
  l0 = Boxes[PathID("domino/System/CompareFloats_v2.lua")]
  l0.A = self.TempDistancePlayer
  l0.B = self.TempDistanceBoat
  l0.Tolerance = nil
  l0._graph = self
  l0._name = "box_Compare_Floats_v2_105"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|6849219"
  l0.Out = DummyFunction
  l0.A_lt_B = DummyFunction
  l0.A_le_B = DummyFunction
  l0.A_eq_B = DummyFunction
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Floats_v2_105_A_gt_B
  l0.A_ne_B = DummyFunction
  l0 = self.box_GetDistance_104
  l1 = Boxes[PathID("domino/System/CompareFloats_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1065454368", "1065454368", "Taxi16_Main", "box_GetDistance_104.Out", "box_Compare_Floats_v2_105.In", l0, l1)
  l1:In()
end
function export:f_box_GetDistance_104_OutViaRoad()
  local l0
  self = self._graph
  l0 = self.box_GetDistance_104
  self.TempDistanceBoat = l0.Distance
end
function export:f_box_Ordered_Output_71_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Vehicle_Bhv_Monitor_48()
  l0 = self.box_Vehicle_Bhv_Monitor_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1871381322", "1871381322", "Taxi16_Main", "box_Ordered_Output_71.Out", "box_Vehicle_Bhv_Monitor_48.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_71_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Vehicle_Bhv_Monitor_1()
  l0 = self.box_Vehicle_Bhv_Monitor_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|559004301", "559004301", "Taxi16_Main", "box_Ordered_Output_71.Out", "box_Vehicle_Bhv_Monitor_1.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MultipleOR_99_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_59()
  l0 = self.box_MultipleOR_99
  l1 = self.box_Multiple_AND_59
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|219552614", "219552614", "Taxi16_Main", "box_MultipleOR_99.Out", "box_Multiple_AND_59.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_SwitchOutput_v3_42_Output_0()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_64()
  l0 = self.box_SwitchOutput_v3_42
  l1 = self.box_MultipleOR_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|486466936", "486466936", "Taxi16_Main", "box_SwitchOutput_v3_42.Output", "box_MultipleOR_64.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_SwitchOutput_v3_42_Output_1()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_44
  l0.Entity = self.Client
  l0.SoundId = "soundbinary/448469820.bnk"
  l0 = self.box_SwitchOutput_v3_42
  l1 = self.box_PlayDialog_v2_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1625999734", "1625999734", "Taxi16_Main", "box_SwitchOutput_v3_42.Output", "box_PlayDialog_v2_44.Start", l0, l1)
  l1:Start()
end
function export:f_box_SwitchOutput_v3_42_Output_2()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_43
  l0.Entity = self.Client
  l0.SoundId = "soundbinary/2720551685.bnk"
  l0 = self.box_SwitchOutput_v3_42
  l1 = self.box_PlayDialog_v2_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1099154186", "1099154186", "Taxi16_Main", "box_SwitchOutput_v3_42.Output", "box_PlayDialog_v2_43.Start", l0, l1)
  l1:Start()
end
function export:f_box_SwitchOutput_v3_42_Output_3()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_64()
  l0 = self.box_SwitchOutput_v3_42
  l1 = self.box_MultipleOR_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|283430555", "283430555", "Taxi16_Main", "box_SwitchOutput_v3_42.Output", "box_MultipleOR_64.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MultipleOR_89_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_83
  l0.Seconds = 7
  l0 = self.box_MultipleOR_89
  l1 = self.box_Timer_v2_83
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1782599056", "1782599056", "Taxi16_Main", "box_MultipleOR_89.Out", "box_Timer_v2_83.Start", l0, l1)
  l1:Start()
end
function export:OnEnter_box_MultipleOR_64()
end
function export:OnEnter_box_MultipleOR_102()
end
function export:OnEnter_box_TaxiRideReachDestinationMonitor_24()
  local l0
  l0 = self.box_TaxiRideReachDestinationMonitor_24
  l0.Client = self.Client
  l0.DropOffIcon = "9223372049053023455"
  l0.ManageObjective = 1
  l0.CustomObjective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "ReachSingleDestination",
    id = "20000191"
  }
  l0.Config = "TaxiRideGameplayBrick.9223372058001194753"
end
function export:OnEnter_box_Vehicle_Bhv_Monitor_1()
  local l0
  l0 = self.box_Vehicle_Bhv_Monitor_1
  l0.Vehicle = self.Boat1
  l0.SpecificPathPoint = 14
end
function export:OnEnter_box_Multiple_AND_59()
end
function export:OnEnter_box_Vehicle_Bhv_Monitor_48()
  local l0
  l0 = self.box_Vehicle_Bhv_Monitor_48
  l0.Vehicle = self.Boat1
  l0.SpecificPathPoint = 2
end
function export:OnEnter_box_Vehicle_Bhv_Monitor_41()
  local l0
  l0 = self.box_Vehicle_Bhv_Monitor_41
  l0.Vehicle = self.Boat2
  l0.SpecificPathPoint = 14
end
function export:OnEnter_box_MultipleOR_84()
end
function export:OnEnter_box_MultipleOR_101()
end
function export:OnEnter_box_Multiple_AND_11()
end
function export:OnEnter_box_GameplayInteractionController_22()
  local l0
  l0 = self.box_GameplayInteractionController_22
  l0.Users = self.ActorsList
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
end
function export:OnEnter_box_MultipleOR_80()
end
function export:OnEnter_box_Multiple_AND_97()
end
function export:OnEnter_box_MultipleOR_87()
end
function export:OnEnter_box_3DGPSController_98()
  local l0
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0.Player = nil
  l0.Target = nil
  l0.Path = "9223372069070783633"
  l0.Index = nil
  l0.PathType = "Custom"
  l0._graph = self
  l0._name = "box_3DGPSController_98"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\taxi16.domino|@Taxi16_Main|1026991203"
  l0.Enabled = self.f_box_3DGPSController_98_Enabled
  l0.Disabled = self.f_box_3DGPSController_98_Disabled
  l0.TargetAdded = DummyFunction
  l0.TargetRemoved = DummyFunction
end
function export:OnEnter_box_TaxiRidePickUpController_7()
  local l0
  l0 = self.box_TaxiRidePickUpController_7
  l0.ClientClo = "9223372049053023460"
  l0.PickUpIcon = "9223372049053023457"
  l0.ShowPickUpIcon = 1
  l0.Config = "TaxiRideGameplayBrick.9223372058001194753"
end
function export:OnEnter_box_MultipleOR_100()
end
function export:OnEnter_box_Proximity_Monitor_35()
  local l0
  l0 = self.box_Proximity_Monitor_35
  l0.Entity1 = self.Boat1
  l0.Entity2 = self.PlayerVehicle
  l0.Radius = 200
  l0.CheckNow = 1
end
function export:OnEnter_box_MultipleOR_27()
end
function export:OnEnter_box_TaxiRideVehicleMonitor_23()
  local l0
  l0 = self.box_TaxiRideVehicleMonitor_23
  l0.Client = self.Client
  l0.Config = "TaxiRideGameplayBrick.9223372058001194753"
end
function export:OnEnter_box_TutorialController_46()
  local l0
  l0 = self.box_TutorialController_46
  l0.Notification = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "BoatsDistanceTooFar",
    id = "685188"
  }
  l0.Duration = -1
end
function export:OnEnter_box_Timer_v2_53()
  local l0
  l0 = self.box_Timer_v2_53
  l0.Seconds = 10
  l0.Loop = 1
  l0.nbLoop = 5
end
function export:OnEnter_box_TaxiRideReachDestinationMonitor_74()
  local l0
  l0 = self.box_TaxiRideReachDestinationMonitor_74
  l0.Client = self.Client
  l0.DropOffIcon = "9223372049053023459"
  l0.LastDestination = 1
  l0.ManageObjective = 1
  l0.Config = "TaxiRideGameplayBrick.9223372058001194753"
end
function export:OnEnter_box_MultipleOR_88()
end
function export:OnEnter_box_Taxi_AbortMission_85()
  local l0
  l0 = self.box_Taxi_AbortMission_85
  l0.MissionName = self.Mission
  l0.LayerName = "Taxi13_Main"
  l0.StrategyConfig = "TaxiRideStrategyConfig.9223372048288505671"
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Vehicle = self.PlayerVehicle
  l0.Conversation = "ConversationSetting.9223372058001194754"
end
function export:OnEnter_box_MultipleOR_82()
end
function export:OnEnter_box_MultipleOR_77()
end
function export:OnEnter_box_GameplayInteractionController_57()
  local l0
  l0 = self.box_GameplayInteractionController_57
  l0.Users = self.ActorsList
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
end
function export:OnEnter_box_MultipleOR_79()
end
function export:OnEnter_box_MultipleOR_99()
end
function export:OnEnter_box_MultipleOR_89()
end
_compilerVersion = 4
