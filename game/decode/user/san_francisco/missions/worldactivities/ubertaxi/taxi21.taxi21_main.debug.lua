export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CinemaZoneCleanup.lua")
  cbox:RegisterBox("Domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("Domino/System/CLOController.lua")
  cbox:RegisterBox("Domino/System/DPadHackableController.lua")
  cbox:RegisterBox("Domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  cbox:RegisterBox("Domino/System/ForcePawnsVehicleStop_v2.lua")
  cbox:RegisterBox("Domino/System/GameplayInteractionController.lua")
  cbox:RegisterBox("Domino/System/GetPlayerID.lua")
  cbox:RegisterBox("Domino/System/HackableController_v2.lua")
  cbox:RegisterBox("Domino/System/IntegerArithmetics.lua")
  cbox:RegisterBox("Domino/System/IntegerSelect.lua")
  cbox:RegisterBox("Domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("Domino/System/MapPointController_v4.lua")
  cbox:RegisterBox("Domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("Domino/System/MissionController_v4.lua")
  cbox:RegisterBox("Domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("Domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("Domino/System/MultipleAND.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/RaceController.lua")
  cbox:RegisterBox("Domino/System/RaceMonitor.lua")
  cbox:RegisterBox("Domino/System/SetActionMap_v2.lua")
  cbox:RegisterBox("Domino/System/SetInteger_v2.lua")
  cbox:RegisterBox("Domino/System/SimpleNode.lua")
  cbox:RegisterBox("Domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  cbox:RegisterBox("Domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.debug.lua")
  cbox:RegisterBox("Domino/System/TaxiRatingController.lua")
  cbox:RegisterBox("Domino/System/TaxiRidePickUpController.lua")
  cbox:RegisterBox("Domino/System/TaxiRideReachDestinationMonitor.lua")
  cbox:RegisterBox("Domino/System/TaxiRideVehicleMonitor.lua")
  cbox:RegisterBox("Domino/System/TaxiStrategiesController.lua")
  cbox:RegisterBox("Domino/System/Timer_v2.lua")
  cbox:RegisterBox("Domino/System/TriggerMonitor_v2.lua")
  cbox:RegisterBox("Domino/System/VehicleBhvMonitor.lua")
  cbox:RegisterBox("Domino/System/VehicleController.lua")
  cbox:RegisterBox("Domino/System/VehicleBhvController.lua")
  cbox:RegisterBox("Domino/System/VehicleSeatingController.lua")
  cbox:RegisterBox("Domino/System/VisibilityController_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "Taxi21_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main"
  self.PlayerEntity = nil
  self.PlayerVehicle = nil
  self.Client = nil
  self.Mission = "MissionList.9223372048443828908"
  self.Car1 = nil
  self.Driver1 = nil
  self.Car2 = nil
  self.Car3 = nil
  self.Driver2 = nil
  self.Driver3 = nil
  self.NoCarsFinishedRace = 2
  self.ActorList = {}
  self.VehicleList = {}
  self.DriverList = {}
  self.InteractionID = 0
  self.box_Integer_Select_139 = cbox:CreateBox("Domino/System/IntegerSelect.lua")
  l0 = self.box_Integer_Select_139
  l0._graph = self
  l0._name = "box_Integer_Select_139"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|18176644"
  l0._DynamicAnchors = {Case = 4, Match = 4}
  l0.Out = DummyFunction
  l0.Match[0] = self.f_box_Integer_Select_139_Match_0
  l0.Match[1] = self.f_box_Integer_Select_139_Match_1
  l0.Match[2] = self.f_box_Integer_Select_139_Match_2
  l0.Match[3] = self.f_box_Integer_Select_139_Match_3
  l0.None = DummyFunction
  self.box_ListWriter_46 = cbox:CreateBox("Domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_46
  l0._graph = self
  l0._name = "box_ListWriter_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|25554267"
  l0._DynamicAnchors = {Data = 3}
  l0.Added = self.f_box_ListWriter_46_Added
  l0.Removed = self.f_box_ListWriter_46_Removed
  l0.Out = self.f_box_ListWriter_46_Out
  self.box_DriveAndTalk_49 = cbox:CreateBox("Domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_49
  l0._graph = self
  l0._name = "box_DriveAndTalk_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|29891346"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_49_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_49_TalkFailed
  self.box_MapPointController_v4_113 = cbox:CreateBox("Domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_113
  l0._graph = self
  l0._name = "box_MapPointController_v4_113"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|47893973"
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_DriveAndTalk_8 = cbox:CreateBox("Domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_8
  l0._graph = self
  l0._name = "box_DriveAndTalk_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|63823177"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_8_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_8_TalkFailed
  self.box_Vehicle_Bhv_Monitor_97 = cbox:CreateBox("Domino/System/VehicleBhvMonitor.lua")
  l0 = self.box_Vehicle_Bhv_Monitor_97
  l0._graph = self
  l0._name = "box_Vehicle_Bhv_Monitor_97"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|108746961"
  l0.Out = DummyFunction
  l0.Enabled = self.f_box_Vehicle_Bhv_Monitor_97_Enabled
  l0.Disabled = self.f_box_Vehicle_Bhv_Monitor_97_Disabled
  l0.Stuck = DummyFunction
  l0.Broken = DummyFunction
  l0.TargetDetected = DummyFunction
  l0.InLOS = DummyFunction
  l0.ReacquireLOSTimerExpired = DummyFunction
  l0.LostLOSTimerExpired = DummyFunction
  l0.SuspiciousTargetAction = DummyFunction
  l0.SpecificPathPointReached = DummyFunction
  l0.PathPointReached = DummyFunction
  l0.EndPathPointReached = self.f_box_Vehicle_Bhv_Monitor_97_EndPathPointReached
  l0.InRange = DummyFunction
  l0.WarningRange = DummyFunction
  l0.OutsideRange = DummyFunction
  l0.OutsideTimerExpired = DummyFunction
  self.box_DriveAndTalk_59 = cbox:CreateBox("Domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_59
  l0._graph = self
  l0._name = "box_DriveAndTalk_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|143032204"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_59_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_59_TalkFailed
  self.box_TaxiStrategiesController_78 = cbox:CreateBox("Domino/System/TaxiStrategiesController.lua")
  l0 = self.box_TaxiStrategiesController_78
  l0._graph = self
  l0._name = "box_TaxiStrategiesController_78"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|144971189"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_TaxiStrategiesController_78_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self.box_MissionController_v4_4 = cbox:CreateBox("Domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_4
  l0._graph = self
  l0._name = "box_MissionController_v4_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|165708809"
  self.box_MapPointController_v4_16 = cbox:CreateBox("Domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_16
  l0._graph = self
  l0._name = "box_MapPointController_v4_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|184312676"
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_SnapAndBind_108 = cbox:CreateBox("Domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  l0 = self.box_SnapAndBind_108
  l0._graph = self
  l0._name = "box_SnapAndBind_108"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|187667300"
  l0.Attached = self.f_box_SnapAndBind_108_Attached
  self.box_CLOController_64 = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self.box_CLOController_64
  l0._graph = self
  l0._name = "box_CLOController_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|219779393"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_64_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_DriveAndTalk_129 = cbox:CreateBox("Domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_129
  l0._graph = self
  l0._name = "box_DriveAndTalk_129"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|242135519"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_DriveAndTalk_129_Stopped
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_MultipleOR_84 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_84
  l0._graph = self
  l0._name = "box_MultipleOR_84"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|250177304"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_84_Out
  self.box_Multiple_AND_103 = cbox:CreateBox("Domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_103
  l0._graph = self
  l0._name = "box_Multiple_AND_103"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|252514663"
  l0._DynamicAnchors = {Condition = 3}
  l0.Out = self.f_box_Multiple_AND_103_Out
  self.box_Timer_v2_100 = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_100
  l0._graph = self
  l0._name = "box_Timer_v2_100"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|263622341"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_100_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Multiple_AND_15 = cbox:CreateBox("Domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_15
  l0._graph = self
  l0._name = "box_Multiple_AND_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|272793403"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_15_Out
  self.box_DriveAndTalk_58 = cbox:CreateBox("Domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_58
  l0._graph = self
  l0._name = "box_DriveAndTalk_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|306656555"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_DriveAndTalk_58_Stopped
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_CLOController_91 = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self.box_CLOController_91
  l0._graph = self
  l0._name = "box_CLOController_91"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|308787020"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_91_OnUserInPlace
  self.box_MissionCheckpointReach_23 = cbox:CreateBox("Domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_23
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|325198861"
  l0.Out = self.f_box_MissionCheckpointReach_23_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_TriggerMonitor_v2_72 = cbox:CreateBox("Domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_72
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|337381228"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_72_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_TaxiRideReachDestinationMonitor_3 = cbox:CreateBox("Domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self.box_TaxiRideReachDestinationMonitor_3
  l0._graph = self
  l0._name = "box_TaxiRideReachDestinationMonitor_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|384505872"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TaxiRideReachDestinationMonitor_3_Disabled
  l0.ReachDestination = self.f_box_TaxiRideReachDestinationMonitor_3_ReachDestination
  l0.ClientDropOff = DummyFunction
  self.box_SnapAndBind_109 = cbox:CreateBox("Domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  l0 = self.box_SnapAndBind_109
  l0._graph = self
  l0._name = "box_SnapAndBind_109"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|399860764"
  l0.Attached = self.f_box_SnapAndBind_109_Attached
  self.box_MapPointController_v4_111 = cbox:CreateBox("Domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_111
  l0._graph = self
  l0._name = "box_MapPointController_v4_111"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|407415050"
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MultipleOR_119 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_119
  l0._graph = self
  l0._name = "box_MultipleOR_119"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|426358882"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_119_Out
  self.box_DriveAndTalk_135 = cbox:CreateBox("Domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_135
  l0._graph = self
  l0._name = "box_DriveAndTalk_135"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|470129494"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_135_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_135_TalkFailed
  self.box_TriggerMonitor_v2_34 = cbox:CreateBox("Domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_34
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|476648972"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_34_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MissionMessageController_v3_18 = cbox:CreateBox("Domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_18
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|544422332"
  l0.Out = self.f_box_MissionMessageController_v3_18_Out
  l0.MessageCompleted = DummyFunction
  self.box_DriveAndTalk_133 = cbox:CreateBox("Domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_133
  l0._graph = self
  l0._name = "box_DriveAndTalk_133"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|550704382"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_DriveAndTalk_133_Stopped
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_TaxiRatingController_132 = cbox:CreateBox("Domino/System/TaxiRatingController.lua")
  l0 = self.box_TaxiRatingController_132
  l0._graph = self
  l0._name = "box_TaxiRatingController_132"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|557941175"
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = DummyFunction
  l0.RewardShown = DummyFunction
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = self.f_box_TaxiRatingController_132_RatingRemoved
  self.box_Timer_v2_159 = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_159
  l0._graph = self
  l0._name = "box_Timer_v2_159"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|577193141"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_159_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MultipleOR_143 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_143
  l0._graph = self
  l0._name = "box_MultipleOR_143"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|589433315"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_143_Out
  self.box_CLOController_66 = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self.box_CLOController_66
  l0._graph = self
  l0._name = "box_CLOController_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|603213502"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_66_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_DriveAndTalk_131 = cbox:CreateBox("Domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_131
  l0._graph = self
  l0._name = "box_DriveAndTalk_131"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|614522779"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_DriveAndTalk_131_Stopped
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_MissionMessageController_v3_82 = cbox:CreateBox("Domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_82
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_82"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|633421775"
  l0.Out = self.f_box_MissionMessageController_v3_82_Out
  l0.MessageCompleted = DummyFunction
  self.box_DriveAndTalk_57 = cbox:CreateBox("Domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_57
  l0._graph = self
  l0._name = "box_DriveAndTalk_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|641629436"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_DriveAndTalk_57_Stopped
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_SnapAndBind_26 = cbox:CreateBox("Domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  l0 = self.box_SnapAndBind_26
  l0._graph = self
  l0._name = "box_SnapAndBind_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|647503316"
  l0.Attached = self.f_box_SnapAndBind_26_Attached
  self.box_DriveAndTalk_63 = cbox:CreateBox("Domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_63
  l0._graph = self
  l0._name = "box_DriveAndTalk_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|697039350"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_DriveAndTalk_63_Stopped
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_RaceController_145 = cbox:CreateBox("Domino/System/RaceController.lua")
  l0 = self.box_RaceController_145
  l0._graph = self
  l0._name = "box_RaceController_145"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|699685852"
  l0._DynamicAnchors = {RacerVehicle = 3}
  l0.OnPlayerTeleportedToStart = DummyFunction
  l0.OnRaceSetupFinished = self.f_box_RaceController_145_OnRaceSetupFinished
  l0.OnRaceStarted = self.f_box_RaceController_145_OnRaceStarted
  l0.OnRaceFinished = self.f_box_RaceController_145_OnRaceFinished
  l0.OnRaceResultsShown = DummyFunction
  l0.OnRaceResultsClosed = DummyFunction
  l0.OnRaceStopped = self.f_box_RaceController_145_OnRaceStopped
  self.box_MapPointController_v4_125 = cbox:CreateBox("Domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_125
  l0._graph = self
  l0._name = "box_MapPointController_v4_125"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|717201377"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v4_125_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_Vehicle_Bhv_Monitor_107 = cbox:CreateBox("Domino/System/VehicleBhvMonitor.lua")
  l0 = self.box_Vehicle_Bhv_Monitor_107
  l0._graph = self
  l0._name = "box_Vehicle_Bhv_Monitor_107"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|749571164"
  l0.Out = DummyFunction
  l0.Enabled = self.f_box_Vehicle_Bhv_Monitor_107_Enabled
  l0.Disabled = self.f_box_Vehicle_Bhv_Monitor_107_Disabled
  l0.Stuck = DummyFunction
  l0.Broken = DummyFunction
  l0.TargetDetected = DummyFunction
  l0.InLOS = DummyFunction
  l0.ReacquireLOSTimerExpired = DummyFunction
  l0.LostLOSTimerExpired = DummyFunction
  l0.SuspiciousTargetAction = DummyFunction
  l0.SpecificPathPointReached = DummyFunction
  l0.PathPointReached = DummyFunction
  l0.EndPathPointReached = self.f_box_Vehicle_Bhv_Monitor_107_EndPathPointReached
  l0.InRange = DummyFunction
  l0.WarningRange = DummyFunction
  l0.OutsideRange = DummyFunction
  l0.OutsideTimerExpired = DummyFunction
  self.box_CLOController_86 = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self.box_CLOController_86
  l0._graph = self
  l0._name = "box_CLOController_86"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|754025536"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_86_OnUserInPlace
  self.box_CLOController_96 = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self.box_CLOController_96
  l0._graph = self
  l0._name = "box_CLOController_96"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|794546328"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_96_OnUserInPlace
  self.box_TaxiRideReachDestinationMonitor_10 = cbox:CreateBox("Domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self.box_TaxiRideReachDestinationMonitor_10
  l0._graph = self
  l0._name = "box_TaxiRideReachDestinationMonitor_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|814845004"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TaxiRideReachDestinationMonitor_10_Disabled
  l0.ReachDestination = self.f_box_TaxiRideReachDestinationMonitor_10_ReachDestination
  l0.ClientDropOff = self.f_box_TaxiRideReachDestinationMonitor_10_ClientDropOff
  self.box_TriggerMonitor_v2_30 = cbox:CreateBox("Domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_30
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|850972933"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_30_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MultipleOR_65 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_65
  l0._graph = self
  l0._name = "box_MultipleOR_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|889686790"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_65_Out
  self.box_ListWriter_48 = cbox:CreateBox("Domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_48
  l0._graph = self
  l0._name = "box_ListWriter_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|893832908"
  l0._DynamicAnchors = {Data = 3}
  l0.Added = self.f_box_ListWriter_48_Added
  l0.Removed = self.f_box_ListWriter_48_Removed
  l0.Out = self.f_box_ListWriter_48_Out
  self.box_MapPointController_v4_127 = cbox:CreateBox("Domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_127
  l0._graph = self
  l0._name = "box_MapPointController_v4_127"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|925126986"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v4_127_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_DriveAndTalk_141 = cbox:CreateBox("Domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_141
  l0._graph = self
  l0._name = "box_DriveAndTalk_141"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|927714807"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_DriveAndTalk_141_Stopped
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_Vehicle_Bhv_Monitor_98 = cbox:CreateBox("Domino/System/VehicleBhvMonitor.lua")
  l0 = self.box_Vehicle_Bhv_Monitor_98
  l0._graph = self
  l0._name = "box_Vehicle_Bhv_Monitor_98"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|931818916"
  l0.Out = DummyFunction
  l0.Enabled = self.f_box_Vehicle_Bhv_Monitor_98_Enabled
  l0.Disabled = self.f_box_Vehicle_Bhv_Monitor_98_Disabled
  l0.Stuck = DummyFunction
  l0.Broken = DummyFunction
  l0.TargetDetected = DummyFunction
  l0.InLOS = DummyFunction
  l0.ReacquireLOSTimerExpired = DummyFunction
  l0.LostLOSTimerExpired = DummyFunction
  l0.SuspiciousTargetAction = DummyFunction
  l0.SpecificPathPointReached = DummyFunction
  l0.PathPointReached = DummyFunction
  l0.EndPathPointReached = self.f_box_Vehicle_Bhv_Monitor_98_EndPathPointReached
  l0.InRange = DummyFunction
  l0.WarningRange = DummyFunction
  l0.OutsideRange = DummyFunction
  l0.OutsideTimerExpired = DummyFunction
  self.box_DriveAndTalk_136 = cbox:CreateBox("Domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_136
  l0._graph = self
  l0._name = "box_DriveAndTalk_136"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|959136608"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_136_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_136_TalkFailed
  self.box_TaxiRidePickUpController_11 = cbox:CreateBox("Domino/System/TaxiRidePickUpController.lua")
  l0 = self.box_TaxiRidePickUpController_11
  l0._graph = self
  l0._name = "box_TaxiRidePickUpController_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|966568077"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TaxiRidePickUpController_11_Disabled
  l0.ClientSpawned = self.f_box_TaxiRidePickUpController_11_ClientSpawned
  l0.ClientPickedUp = self.f_box_TaxiRidePickUpController_11_ClientPickedUp
  l0.ClientConversationFinised = self.f_box_TaxiRidePickUpController_11_ClientConversationFinised
  self.box_VehicleBhvController_105 = cbox:CreateBox("Domino/System/VehicleBhvController.lua")
  l0 = self.box_VehicleBhvController_105
  l0._graph = self
  l0._name = "box_VehicleBhvController_105"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|985814181"
  l0.StartCompleted = self.f_box_VehicleBhvController_105_StartCompleted
  l0.StopCompleted = DummyFunction
  l0.ForcedFakeFollow = DummyFunction
  self.box_MissionMessageController_v3_33 = cbox:CreateBox("Domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_33
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|995132544"
  l0.Out = self.f_box_MissionMessageController_v3_33_Out
  l0.MessageCompleted = DummyFunction
  self.box_HackableController_v2_81 = cbox:CreateBox("Domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_81
  l0._graph = self
  l0._name = "box_HackableController_v2_81"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1006692936"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_MultipleOR_122 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_122
  l0._graph = self
  l0._name = "box_MultipleOR_122"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1007284677"
  l0._DynamicAnchors = {Input = 8}
  l0.Out = self.f_box_MultipleOR_122_Out
  self.box_CLOController_85 = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self.box_CLOController_85
  l0._graph = self
  l0._name = "box_CLOController_85"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1053295044"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_85_OnUserInPlace
  self.box_VehicleSeatingController_87 = cbox:CreateBox("Domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_87
  l0._graph = self
  l0._name = "box_VehicleSeatingController_87"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1062104917"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_box_VehicleSeatingController_87_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_TriggerMonitor_v2_75 = cbox:CreateBox("Domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_75
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1066432243"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_75_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_TaxiRideVehicleMonitor_2 = cbox:CreateBox("Domino/System/TaxiRideVehicleMonitor.lua")
  l0 = self.box_TaxiRideVehicleMonitor_2
  l0._graph = self
  l0._name = "box_TaxiRideVehicleMonitor_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1082335601"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ClientDeath = self.f_box_TaxiRideVehicleMonitor_2_ClientDeath
  l0.VehicleUnusable = self.f_box_TaxiRideVehicleMonitor_2_VehicleUnusable
  l0.ClientBailedOut = self.f_box_TaxiRideVehicleMonitor_2_ClientBailedOut
  l0.PlayerAbandonedVehicle = self.f_box_TaxiRideVehicleMonitor_2_PlayerAbandonedVehicle
  self.box_TriggerMonitor_v2_60 = cbox:CreateBox("Domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_60
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1107845461"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_60_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_DriveAndTalk_80 = cbox:CreateBox("Domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_80
  l0._graph = self
  l0._name = "box_DriveAndTalk_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1113219168"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_DriveAndTalk_80_Stopped
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_MissionLayer_v2_55 = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_55
  l0._graph = self
  l0._name = "box_MissionLayer_v2_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1120581440"
  l0.Loaded = self.f_box_MissionLayer_v2_55_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_Timer_v2_160 = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_160
  l0._graph = self
  l0._name = "box_Timer_v2_160"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1124191052"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_160_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Multiple_AND_134 = cbox:CreateBox("Domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_134
  l0._graph = self
  l0._name = "box_Multiple_AND_134"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1199884660"
  l0._DynamicAnchors = {Condition = 4}
  l0.Out = self.f_box_Multiple_AND_134_Out
  self.box_VehicleBhvController_102 = cbox:CreateBox("Domino/System/VehicleBhvController.lua")
  l0 = self.box_VehicleBhvController_102
  l0._graph = self
  l0._name = "box_VehicleBhvController_102"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1239081116"
  l0.StartCompleted = self.f_box_VehicleBhvController_102_StartCompleted
  l0.StopCompleted = DummyFunction
  l0.ForcedFakeFollow = DummyFunction
  self.box_OnceOnly_v3_157 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_157
  l0._graph = self
  l0._name = "box_OnceOnly_v3_157"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1246968880"
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_box_OnceOnly_v3_157_Out
  l0.ResetOut = DummyFunction
  self.box_Multiple_AND_118 = cbox:CreateBox("Domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_118
  l0._graph = self
  l0._name = "box_Multiple_AND_118"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1277174197"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_118_Out
  self.box_MultipleOR_144 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_144
  l0._graph = self
  l0._name = "box_MultipleOR_144"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1295624253"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_144_Out
  self.box_Integer_Select_121 = cbox:CreateBox("Domino/System/IntegerSelect.lua")
  l0 = self.box_Integer_Select_121
  l0._graph = self
  l0._name = "box_Integer_Select_121"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1320878508"
  l0._DynamicAnchors = {Case = 4, Match = 4}
  l0.Out = DummyFunction
  l0.Match[0] = self.f_box_Integer_Select_121_Match_0
  l0.Match[1] = self.f_box_Integer_Select_121_Match_1
  l0.Match[2] = self.f_box_Integer_Select_121_Match_2
  l0.Match[3] = self.f_box_Integer_Select_121_Match_3
  l0.None = DummyFunction
  self.box_RaceMonitor_47 = cbox:CreateBox("Domino/System/RaceMonitor.lua")
  l0 = self.box_RaceMonitor_47
  l0._graph = self
  l0._name = "box_RaceMonitor_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1320979011"
  l0.OnPlayerRankUpdated = self.f_box_RaceMonitor_47_OnPlayerRankUpdated
  self.box_Timer_v2_99 = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_99
  l0._graph = self
  l0._name = "box_Timer_v2_99"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1347877997"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_99_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_TaxiStrategiesController_6 = cbox:CreateBox("Domino/System/TaxiStrategiesController.lua")
  l0 = self.box_TaxiStrategiesController_6
  l0._graph = self
  l0._name = "box_TaxiStrategiesController_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1360624636"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = self.f_box_TaxiStrategiesController_6_Paused
  l0.Resumed = DummyFunction
  self.box_ListWriter_14 = cbox:CreateBox("Domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_14
  l0._graph = self
  l0._name = "box_ListWriter_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1364810345"
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_box_ListWriter_14_Added
  l0.Removed = self.f_box_ListWriter_14_Removed
  l0.Out = self.f_box_ListWriter_14_Out
  self.box_OnceOnly_v3_83 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_83
  l0._graph = self
  l0._name = "box_OnceOnly_v3_83"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1380845424"
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_box_OnceOnly_v3_83_Out
  l0.ResetOut = DummyFunction
  self.box_TriggerMonitor_v2_31 = cbox:CreateBox("Domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_31
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1413746922"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_31_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_Vehicle_Bhv_Monitor_61 = cbox:CreateBox("Domino/System/VehicleBhvMonitor.lua")
  l0 = self.box_Vehicle_Bhv_Monitor_61
  l0._graph = self
  l0._name = "box_Vehicle_Bhv_Monitor_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1415041427"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Stuck = DummyFunction
  l0.Broken = DummyFunction
  l0.TargetDetected = DummyFunction
  l0.InLOS = DummyFunction
  l0.ReacquireLOSTimerExpired = DummyFunction
  l0.LostLOSTimerExpired = DummyFunction
  l0.SuspiciousTargetAction = DummyFunction
  l0.SpecificPathPointReached = DummyFunction
  l0.PathPointReached = DummyFunction
  l0.EndPathPointReached = self.f_box_Vehicle_Bhv_Monitor_61_EndPathPointReached
  l0.InRange = DummyFunction
  l0.WarningRange = DummyFunction
  l0.OutsideRange = DummyFunction
  l0.OutsideTimerExpired = DummyFunction
  self.box_MultipleOR_117 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_117
  l0._graph = self
  l0._name = "box_MultipleOR_117"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1427742869"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_117_Out
  self.box_Multiple_AND_101 = cbox:CreateBox("Domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_101
  l0._graph = self
  l0._name = "box_Multiple_AND_101"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1437841948"
  l0._DynamicAnchors = {Condition = 4}
  l0.Out = self.f_box_Multiple_AND_101_Out
  self.box_CLOController_92 = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self.box_CLOController_92
  l0._graph = self
  l0._name = "box_CLOController_92"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1438713582"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_92_OnUserInPlace
  self.box_DriveAndTalk_130 = cbox:CreateBox("Domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_130
  l0._graph = self
  l0._name = "box_DriveAndTalk_130"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1463050970"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_DriveAndTalk_130_Stopped
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_MissionLayer_v2_52 = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_52
  l0._graph = self
  l0._name = "box_MissionLayer_v2_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1467326499"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_52_Unloaded
  l0.Reseted = DummyFunction
  self.box_MapPointController_v4_112 = cbox:CreateBox("Domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_112
  l0._graph = self
  l0._name = "box_MapPointController_v4_112"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1526189685"
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_VehicleBhvController_89 = cbox:CreateBox("Domino/System/VehicleBhvController.lua")
  l0 = self.box_VehicleBhvController_89
  l0._graph = self
  l0._name = "box_VehicleBhvController_89"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1572272817"
  l0.StartCompleted = self.f_box_VehicleBhvController_89_StartCompleted
  l0.StopCompleted = DummyFunction
  l0.ForcedFakeFollow = DummyFunction
  self.box_DriveAndTalk_12 = cbox:CreateBox("Domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_12
  l0._graph = self
  l0._name = "box_DriveAndTalk_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1589171392"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_DriveAndTalk_12_Stopped
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_DriveAndTalk_128 = cbox:CreateBox("Domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_128
  l0._graph = self
  l0._name = "box_DriveAndTalk_128"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1589962382"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_128_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_128_TalkFailed
  self.box_DriveAndTalk_79 = cbox:CreateBox("Domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_79
  l0._graph = self
  l0._name = "box_DriveAndTalk_79"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1595415001"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_DriveAndTalk_79_Stopped
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_RaceMonitor_39 = cbox:CreateBox("Domino/System/RaceMonitor.lua")
  l0 = self.box_RaceMonitor_39
  l0._graph = self
  l0._name = "box_RaceMonitor_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1600598235"
  l0.OnPlayerRankUpdated = self.f_box_RaceMonitor_39_OnPlayerRankUpdated
  self.box_DriveAndTalk_44 = cbox:CreateBox("Domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_44
  l0._graph = self
  l0._name = "box_DriveAndTalk_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1603912360"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_44_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_44_TalkFailed
  self.box_Multiple_AND_51 = cbox:CreateBox("Domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_51
  l0._graph = self
  l0._name = "box_Multiple_AND_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1604260528"
  l0._DynamicAnchors = {Condition = 4}
  l0.Out = self.f_box_Multiple_AND_51_Out
  self.box_VehicleBhvController_106 = cbox:CreateBox("Domino/System/VehicleBhvController.lua")
  l0 = self.box_VehicleBhvController_106
  l0._graph = self
  l0._name = "box_VehicleBhvController_106"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1608871284"
  l0.StartCompleted = self.f_box_VehicleBhvController_106_StartCompleted
  l0.StopCompleted = DummyFunction
  l0.ForcedFakeFollow = DummyFunction
  self.box_Integer_Select_37 = cbox:CreateBox("Domino/System/IntegerSelect.lua")
  l0 = self.box_Integer_Select_37
  l0._graph = self
  l0._name = "box_Integer_Select_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1653191067"
  l0._DynamicAnchors = {Case = 4, Match = 4}
  l0.Out = DummyFunction
  l0.Match[0] = self.f_box_Integer_Select_37_Match_0
  l0.Match[1] = self.f_box_Integer_Select_37_Match_1
  l0.Match[2] = self.f_box_Integer_Select_37_Match_2
  l0.Match[3] = self.f_box_Integer_Select_37_Match_3
  l0.None = DummyFunction
  self.box_Taxi_AbortMission_24 = cbox:CreateBox("Domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.debug.lua")
  l0 = self.box_Taxi_AbortMission_24
  l0._graph = self
  l0._name = "box_Taxi_AbortMission_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1674221088"
  self.box_MapPointController_v4_126 = cbox:CreateBox("Domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_126
  l0._graph = self
  l0._name = "box_MapPointController_v4_126"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1696989895"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v4_126_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_SnapAndBind_110 = cbox:CreateBox("Domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  l0 = self.box_SnapAndBind_110
  l0._graph = self
  l0._name = "box_SnapAndBind_110"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1720089019"
  l0.Attached = self.f_box_SnapAndBind_110_Attached
  self.box_GameplayInteractionController_152 = cbox:CreateBox("Domino/System/GameplayInteractionController.lua")
  l0 = self.box_GameplayInteractionController_152
  l0._graph = self
  l0._name = "box_GameplayInteractionController_152"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1732539241"
  l0.Out = self.f_box_GameplayInteractionController_152_Out
  l0.Started = self.f_box_GameplayInteractionController_152_Started
  l0.Stopped = DummyFunction
  self.box_VehicleSeatingController_90 = cbox:CreateBox("Domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_90
  l0._graph = self
  l0._name = "box_VehicleSeatingController_90"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1734185454"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_box_VehicleSeatingController_90_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_Timer_v2_9 = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_9
  l0._graph = self
  l0._name = "box_Timer_v2_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1780258854"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_9_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_TaxiStrategiesController_17 = cbox:CreateBox("Domino/System/TaxiStrategiesController.lua")
  l0 = self.box_TaxiStrategiesController_17
  l0._graph = self
  l0._name = "box_TaxiStrategiesController_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1806528035"
  l0.Started = self.f_box_TaxiStrategiesController_17_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self.box_VehicleSeatingController_94 = cbox:CreateBox("Domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_94
  l0._graph = self
  l0._name = "box_VehicleSeatingController_94"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1813099935"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_box_VehicleSeatingController_94_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_DriveAndTalk_45 = cbox:CreateBox("Domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_45
  l0._graph = self
  l0._name = "box_DriveAndTalk_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1834168697"
  l0.Started = self.f_box_DriveAndTalk_45_Started
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_45_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_45_TalkFailed
  self.box_MultipleOR_73 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_73
  l0._graph = self
  l0._name = "box_MultipleOR_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1873341518"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_73_Out
  self.box_DriveAndTalk_62 = cbox:CreateBox("Domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_62
  l0._graph = self
  l0._name = "box_DriveAndTalk_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1927727943"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_DriveAndTalk_13 = cbox:CreateBox("Domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_13
  l0._graph = self
  l0._name = "box_DriveAndTalk_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1937418099"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_DriveAndTalk_13_Stopped
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_MultipleOR_71 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_71
  l0._graph = self
  l0._name = "box_MultipleOR_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1966481048"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_71_Out
  self.box_Vehicle_Bhv_Monitor_74 = cbox:CreateBox("Domino/System/VehicleBhvMonitor.lua")
  l0 = self.box_Vehicle_Bhv_Monitor_74
  l0._graph = self
  l0._name = "box_Vehicle_Bhv_Monitor_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1966808685"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Stuck = DummyFunction
  l0.Broken = DummyFunction
  l0.TargetDetected = DummyFunction
  l0.InLOS = DummyFunction
  l0.ReacquireLOSTimerExpired = DummyFunction
  l0.LostLOSTimerExpired = DummyFunction
  l0.SuspiciousTargetAction = DummyFunction
  l0.SpecificPathPointReached = DummyFunction
  l0.PathPointReached = DummyFunction
  l0.EndPathPointReached = self.f_box_Vehicle_Bhv_Monitor_74_EndPathPointReached
  l0.InRange = DummyFunction
  l0.WarningRange = DummyFunction
  l0.OutsideRange = DummyFunction
  l0.OutsideTimerExpired = DummyFunction
  self.box_CinematicPrep_5 = cbox:CreateBox("Domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_5
  l0._graph = self
  l0._name = "box_CinematicPrep_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1970017459"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_5_PostOut
  self.box_MapPointController_v4_29 = cbox:CreateBox("Domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_29
  l0._graph = self
  l0._name = "box_MapPointController_v4_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1980810863"
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_CLOController_68 = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self.box_CLOController_68
  l0._graph = self
  l0._name = "box_CLOController_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1984085395"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_DriveAndTalk_137 = cbox:CreateBox("Domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_137
  l0._graph = self
  l0._name = "box_DriveAndTalk_137"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1986787367"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_137_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_137_TalkFailed
  self.box_ListWriter_153 = cbox:CreateBox("Domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_153
  l0._graph = self
  l0._name = "box_ListWriter_153"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1997421610"
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_box_ListWriter_153_Added
  l0.Removed = self.f_box_ListWriter_153_Removed
  l0.Out = self.f_box_ListWriter_153_Out
  self.box_TaxiRatingController_38 = cbox:CreateBox("Domino/System/TaxiRatingController.lua")
  l0 = self.box_TaxiRatingController_38
  l0._graph = self
  l0._name = "box_TaxiRatingController_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|2007011708"
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = self.f_box_TaxiRatingController_38_RatingReset
  l0.RewardShown = DummyFunction
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self.box_DriveAndTalk_140 = cbox:CreateBox("Domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_140
  l0._graph = self
  l0._name = "box_DriveAndTalk_140"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|2009859834"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_140_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_140_TalkFailed
  self.box_GameplayInteractionController_53 = cbox:CreateBox("Domino/System/GameplayInteractionController.lua")
  l0 = self.box_GameplayInteractionController_53
  l0._graph = self
  l0._name = "box_GameplayInteractionController_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|2019377120"
  l0.Out = DummyFunction
  l0.Started = self.f_box_GameplayInteractionController_53_Started
  l0.Stopped = DummyFunction
  self.box_TaxiRatingController_25 = cbox:CreateBox("Domino/System/TaxiRatingController.lua")
  l0 = self.box_TaxiRatingController_25
  l0._graph = self
  l0._name = "box_TaxiRatingController_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|2030077166"
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = DummyFunction
  l0.RewardShown = self.f_box_TaxiRatingController_25_RewardShown
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self.box_Vehicle_Bhv_Monitor_120 = cbox:CreateBox("Domino/System/VehicleBhvMonitor.lua")
  l0 = self.box_Vehicle_Bhv_Monitor_120
  l0._graph = self
  l0._name = "box_Vehicle_Bhv_Monitor_120"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|2057932561"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Stuck = DummyFunction
  l0.Broken = DummyFunction
  l0.TargetDetected = DummyFunction
  l0.InLOS = DummyFunction
  l0.ReacquireLOSTimerExpired = DummyFunction
  l0.LostLOSTimerExpired = DummyFunction
  l0.SuspiciousTargetAction = DummyFunction
  l0.SpecificPathPointReached = DummyFunction
  l0.PathPointReached = DummyFunction
  l0.EndPathPointReached = self.f_box_Vehicle_Bhv_Monitor_120_EndPathPointReached
  l0.InRange = DummyFunction
  l0.WarningRange = DummyFunction
  l0.OutsideRange = DummyFunction
  l0.OutsideTimerExpired = DummyFunction
  self.box_CLOController_95 = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self.box_CLOController_95
  l0._graph = self
  l0._name = "box_CLOController_95"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|2077498689"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_95_OnUserInPlace
  self.box_VehicleBhvController_93 = cbox:CreateBox("Domino/System/VehicleBhvController.lua")
  l0 = self.box_VehicleBhvController_93
  l0._graph = self
  l0._name = "box_VehicleBhvController_93"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|2081163542"
  l0.StartCompleted = self.f_box_VehicleBhvController_93_StartCompleted
  l0.StopCompleted = DummyFunction
  l0.ForcedFakeFollow = DummyFunction
  self.box_Timer_v2_158 = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_158
  l0._graph = self
  l0._name = "box_Timer_v2_158"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|2084019657"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_158_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MapPointController_v4_21 = cbox:CreateBox("Domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_21
  l0._graph = self
  l0._name = "box_MapPointController_v4_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|2089426381"
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_TriggerMonitor_v2_42 = cbox:CreateBox("Domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_42
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|2093885980"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_42_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_VehicleBhvController_88 = cbox:CreateBox("Domino/System/VehicleBhvController.lua")
  l0 = self.box_VehicleBhvController_88
  l0._graph = self
  l0._name = "box_VehicleBhvController_88"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|2112014368"
  l0.StartCompleted = self.f_box_VehicleBhvController_88_StartCompleted
  l0.StopCompleted = DummyFunction
  l0.ForcedFakeFollow = DummyFunction
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
  self:OnEnter_box_MultipleOR_65()
  l0 = self.box_MultipleOR_65
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|852028855", "852028855", "Taxi21_Main", "CheckPoint_0", "box_MultipleOR_65.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_65()
  l0 = self.box_MultipleOR_65
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|2079370755", "2079370755", "Taxi21_Main", "In", "box_MultipleOR_65.Input", self, l0)
  l0:Input(0)
end
function export:f_box_Integer_Select_139_Match_0()
  local l0, l1
  self = self._graph
  self:OnEnter_box_DriveAndTalk_79()
  l0 = self.box_Integer_Select_139
  l1 = self.box_DriveAndTalk_79
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|2036996810", "2036996810", "Taxi21_Main", "box_Integer_Select_139.Match", "box_DriveAndTalk_79.Start", l0, l1)
  l1:Start()
end
function export:f_box_Integer_Select_139_Match_1()
  local l0, l1
  self = self._graph
  self:OnEnter_box_DriveAndTalk_80()
  l0 = self.box_Integer_Select_139
  l1 = self.box_DriveAndTalk_80
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|333339298", "333339298", "Taxi21_Main", "box_Integer_Select_139.Match", "box_DriveAndTalk_80.Start", l0, l1)
  l1:Start()
end
function export:f_box_Integer_Select_139_Match_2()
  local l0, l1
  self = self._graph
  self:OnEnter_box_DriveAndTalk_141()
  l0 = self.box_Integer_Select_139
  l1 = self.box_DriveAndTalk_141
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1028701006", "1028701006", "Taxi21_Main", "box_Integer_Select_139.Match", "box_DriveAndTalk_141.Start", l0, l1)
  l1:Start()
end
function export:f_box_Integer_Select_139_Match_3()
  local l0, l1
  self = self._graph
  self:OnEnter_box_DriveAndTalk_57()
  l0 = self.box_Integer_Select_139
  l1 = self.box_DriveAndTalk_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|582643898", "582643898", "Taxi21_Main", "box_Integer_Select_139.Match", "box_DriveAndTalk_57.Start", l0, l1)
  l1:Start()
end
function export:f_box_ListWriter_46_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_46
  self.DriverList = l0.Target
  l0 = Boxes[PathID("Domino/System/DPadHackableController.lua")]
  l0.HackableEntity = nil
  l0.HackableEntityList = self.VehicleList
  l0.HackCategoryType[0] = "EngineOverheat"
  l0.HackCategoryType[1] = "LockLeftWheel"
  l0.HackCategoryType[2] = "LockRightWheel"
  l0.HackCategoryType[3] = "LockBrakes"
  l0._graph = self
  l0._name = "box_DPad_Hackable_Controller_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1056329467"
  l0._DynamicAnchors = {HackCategoryType = 4}
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = DummyFunction
  l0.Removed = self.f_box_DPad_Hackable_Controller_54_Removed
  l0.RemovedAll = DummyFunction
  l0.HackingDisabled = DummyFunction
  l0 = self.box_ListWriter_46
  l1 = Boxes[PathID("Domino/System/DPadHackableController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1940301524", "1940301524", "Taxi21_Main", "box_ListWriter_46.Added", "box_DPad_Hackable_Controller_54.Remove", l0, l1)
  l1:Remove()
end
function export:f_box_ListWriter_46_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_46
  self.DriverList = l0.Target
end
function export:f_box_ListWriter_46_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_46
  self.DriverList = l0.Target
end
function export:f_box_DriveAndTalk_49_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_144()
  l0 = self.box_DriveAndTalk_49
  l1 = self.box_MultipleOR_144
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|2054923197", "2054923197", "Taxi21_Main", "box_DriveAndTalk_49.TalkFailed", "box_MultipleOR_144.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_DriveAndTalk_49_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_144()
  l0 = self.box_DriveAndTalk_49
  l1 = self.box_MultipleOR_144
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1460610341", "1460610341", "Taxi21_Main", "box_DriveAndTalk_49.TalkFinished", "box_MultipleOR_144.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_VisibilityController_v2_41_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_100
  l0.Seconds = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1793735154", "1793735154", "Taxi21_Main", "box_VisibilityController_v2_41.Hidden", "box_Timer_v2_100.Start", clone, l0)
  l0:Start()
end
function export:f_box_DriveAndTalk_8_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_84()
  l0 = self.box_DriveAndTalk_8
  l1 = self.box_MultipleOR_84
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|793795376", "793795376", "Taxi21_Main", "box_DriveAndTalk_8.TalkFailed", "box_MultipleOR_84.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_DriveAndTalk_8_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_84()
  l0 = self.box_DriveAndTalk_8
  l1 = self.box_MultipleOR_84
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|297697329", "297697329", "Taxi21_Main", "box_DriveAndTalk_8.TalkFinished", "box_MultipleOR_84.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Simple_Node_154_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_156"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1903923593"
  l0.Out = self.f_box_Simple_Node_156_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|928816861", "928816861", "Taxi21_Main", "box_Simple_Node_154.Out", "box_Simple_Node_156.In", clone, l0)
  l0:In()
end
function export:f_box_VisibilityController_v2_40_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_VehicleBhvController_93
  l0.VehicleMaster = self.Car3
  l0.VehicleTarget = self.PlayerVehicle
  l0.PathOrPos = "9223372048443832631"
  l0.Config = "VehicleBhvSetup.9223372072344162524"
  l0.StopAtEndPoint = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1235935216", "1235935216", "Taxi21_Main", "box_VisibilityController_v2_40.Hidden", "box_VehicleBhvController_93.Start", clone, l0)
  l0:Start()
end
function export:f_box_Vehicle_Bhv_Monitor_97_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/VehicleController.lua")]
  l0.Vehicle = self.Car3
  l0._graph = self
  l0._name = "box_Vehicle_Controller_149"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1512081123"
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.Destructable = self.f_box_Vehicle_Controller_149_Destructable
  l0.Indestructable = DummyFunction
  l0.Deflatable = DummyFunction
  l0.Undeflatable = DummyFunction
  l0.Unmovable = DummyFunction
  l0.Movable = DummyFunction
  l0.EngineBroken = DummyFunction
  l0.EngineShutDown = DummyFunction
  l0.EngineStarted = DummyFunction
  l0.VehicleExploded = DummyFunction
  l0 = self.box_Vehicle_Bhv_Monitor_97
  l1 = Boxes[PathID("Domino/System/VehicleController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|2128202687", "2128202687", "Taxi21_Main", "box_Vehicle_Bhv_Monitor_97.Disabled", "box_Vehicle_Controller_149.SetAsDestructable", l0, l1)
  l1:SetAsDestructable()
end
function export:f_box_Vehicle_Bhv_Monitor_97_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_SnapAndBind_108
  l0.Parent = self.Car3
  l0.Child = "9223372048443829523"
  l0.CarIcon = 1
  l0 = self.box_Vehicle_Bhv_Monitor_97
  l1 = self.box_SnapAndBind_108
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1749758726", "1749758726", "Taxi21_Main", "box_Vehicle_Bhv_Monitor_97.Enabled", "box_SnapAndBind_108.Attach", l0, l1)
  l1:Attach()
end
function export:f_box_Vehicle_Bhv_Monitor_97_EndPathPointReached()
  local l0
  self = self._graph
  self:OnEnter_box_Vehicle_Bhv_Monitor_97()
  l0 = self.box_Vehicle_Bhv_Monitor_97
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|808354760", "808354760", "Taxi21_Main", "box_Vehicle_Bhv_Monitor_97.EndPathPointReached", "box_Vehicle_Bhv_Monitor_97.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_DriveAndTalk_59_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_73()
  l0 = self.box_DriveAndTalk_59
  l1 = self.box_MultipleOR_73
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1511703935", "1511703935", "Taxi21_Main", "box_DriveAndTalk_59.TalkFailed", "box_MultipleOR_73.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_DriveAndTalk_59_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_73()
  l0 = self.box_DriveAndTalk_59
  l1 = self.box_MultipleOR_73
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1247490171", "1247490171", "Taxi21_Main", "box_DriveAndTalk_59.TalkFinished", "box_MultipleOR_73.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_TaxiStrategiesController_78_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiStrategiesController_78
  l1 = self.box_MissionMessageController_v3_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|2028314835", "2028314835", "Taxi21_Main", "box_TaxiStrategiesController_78.Stopped", "box_MissionMessageController_v3_33.ShowMissionComplete", l0, l1)
  l1:ShowMissionComplete()
end
function export:f_box_SetActionMap_v2_76_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1873215673", "1873215673", "Taxi21_Main", "box_SetActionMap_v2_76.Pushed", "box_Timer_v2_9.Start", clone, l0)
  l0:Start()
end
function export:f_box_SnapAndBind_108_Attached()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_159
  l0.Seconds = 0.5
  l0 = self.box_SnapAndBind_108
  l1 = self.box_Timer_v2_159
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1966064454", "1966064454", "Taxi21_Main", "box_SnapAndBind_108.Attached", "box_Timer_v2_159.Start", l0, l1)
  l1:Start()
end
function export:f_box_CLOController_64_UnspawnedUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_66
  l0.User = self.Driver2
  l0 = self.box_CLOController_64
  l1 = self.box_CLOController_66
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|729524780", "729524780", "Taxi21_Main", "box_CLOController_64.UnspawnedUser", "box_CLOController_66.UnspawnUser", l0, l1)
  l1:UnspawnUser()
end
function export:f_box_Simple_Node_7_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TaxiRideVehicleMonitor_2()
  l0 = self.box_TaxiRideVehicleMonitor_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|780461360", "780461360", "Taxi21_Main", "box_Simple_Node_7.Out", "box_TaxiRideVehicleMonitor_2.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_DriveAndTalk_129_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_134()
  l0 = self.box_DriveAndTalk_129
  l1 = self.box_Multiple_AND_134
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1321221511", "1321221511", "Taxi21_Main", "box_DriveAndTalk_129.Stopped", "box_Multiple_AND_134.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_MultipleOR_84_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_104"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1095220064"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_104_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_104_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_104_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_104_Out_3
  l0 = self.box_MultipleOR_84
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1450868376", "1450868376", "Taxi21_Main", "box_MultipleOR_84.Out", "box_Ordered_Output_104.In", l0, l1)
  l1:In()
end
function export:f_box_Multiple_AND_103_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_48
  l0.Input = self.VehicleList
  l0.Data[0] = self.Car1
  l0.Data[1] = self.Car2
  l0.Data[2] = self.Car3
  l0 = self.box_Multiple_AND_103
  l1 = self.box_ListWriter_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|301092941", "301092941", "Taxi21_Main", "box_Multiple_AND_103.Out", "box_ListWriter_48.Add", l0, l1)
  l1:Add()
end
function export:f_box_Timer_v2_100_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleBhvController_88
  l0.VehicleMaster = self.Car1
  l0.VehicleTarget = self.PlayerVehicle
  l0.PathOrPos = "9223372048443829538"
  l0.Config = "VehicleBhvSetup.9223372072344162524"
  l0.StopAtEndPoint = 1
  l0 = self.box_Timer_v2_100
  l1 = self.box_VehicleBhvController_88
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|400867734", "400867734", "Taxi21_Main", "box_Timer_v2_100.TimeElapsed", "box_VehicleBhvController_88.Start", l0, l1)
  l1:Start()
end
function export:f_box_Multiple_AND_15_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_155"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|2028702466"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_155_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_155_Out_1
  l0 = self.box_Multiple_AND_15
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|387907098", "387907098", "Taxi21_Main", "box_Multiple_AND_15.Out", "box_Ordered_Output_155.In", l0, l1)
  l1:In()
end
function export:f_box_DriveAndTalk_58_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_62
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372060254403113"
  l0.StartDelay = 1
  l0 = self.box_DriveAndTalk_58
  l1 = self.box_DriveAndTalk_62
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|2019052997", "2019052997", "Taxi21_Main", "box_DriveAndTalk_58.Stopped", "box_DriveAndTalk_62.Start", l0, l1)
  l1:Start()
end
function export:f_box_CLOController_91_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_91
  self.Car2 = l0.UserID
  l0 = Boxes[PathID("Domino/System/VehicleController.lua")]
  l0.Vehicle = self.Car2
  l0._graph = self
  l0._name = "box_Vehicle_Controller_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|461245162"
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.Destructable = DummyFunction
  l0.Indestructable = self.f_box_Vehicle_Controller_70_Indestructable
  l0.Deflatable = DummyFunction
  l0.Undeflatable = DummyFunction
  l0.Unmovable = DummyFunction
  l0.Movable = DummyFunction
  l0.EngineBroken = DummyFunction
  l0.EngineShutDown = DummyFunction
  l0.EngineStarted = DummyFunction
  l0.VehicleExploded = DummyFunction
  l0 = self.box_CLOController_91
  l1 = Boxes[PathID("Domino/System/VehicleController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1082001334", "1082001334", "Taxi21_Main", "box_CLOController_91.OnUserInPlace", "box_Vehicle_Controller_70.SetAsIndestructable", l0, l1)
  l1:SetAsIndestructable()
end
function export:f_box_MissionCheckpointReach_23_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetInteger_v2.lua")]
  l0.Integer = 0
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0._name = "box_SetInteger_v2_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1131671370"
  l0.Out = self.f_box_SetInteger_v2_56_Out
  l0 = self.box_MissionCheckpointReach_23
  l1 = Boxes[PathID("Domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1975315842", "1975315842", "Taxi21_Main", "box_MissionCheckpointReach_23.Out", "box_SetInteger_v2_56.FromInteger", l0, l1)
  l1:FromInteger()
end
function export:f_box_TriggerMonitor_v2_72_Enter()
  local l0, l1
  self = self._graph
  self:OnEnter_box_DriveAndTalk_58()
  l0 = self.box_TriggerMonitor_v2_72
  l1 = self.box_DriveAndTalk_58
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1938145238", "1938145238", "Taxi21_Main", "box_TriggerMonitor_v2_72.Enter", "box_DriveAndTalk_58.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_Ordered_Output_124_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_DriveAndTalk_129()
  l0 = self.box_DriveAndTalk_129
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1504794779", "1504794779", "Taxi21_Main", "box_Ordered_Output_124.Out", "box_DriveAndTalk_129.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_124_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_DriveAndTalk_130()
  l0 = self.box_DriveAndTalk_130
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1972529094", "1972529094", "Taxi21_Main", "box_Ordered_Output_124.Out", "box_DriveAndTalk_130.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_124_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_DriveAndTalk_131()
  l0 = self.box_DriveAndTalk_131
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|2126413114", "2126413114", "Taxi21_Main", "box_Ordered_Output_124.Out", "box_DriveAndTalk_131.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_124_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_DriveAndTalk_133()
  l0 = self.box_DriveAndTalk_133
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1598826151", "1598826151", "Taxi21_Main", "box_Ordered_Output_124.Out", "box_DriveAndTalk_133.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Vehicle_Controller_147_Indestructable()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/VehicleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_86
  l0.CLO = "9223372048443829521"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1168407247", "1168407247", "Taxi21_Main", "box_Vehicle_Controller_147.Indestructable", "box_CLOController_86.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_TaxiRideReachDestinationMonitor_3_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CinemaZoneCleanup.lua")]
  l0.TargetZone = "9223372070356287990"
  l0.SceneEntity = nil
  l0.RemoveBreakable = 0
  l0.RemoveCharacter = 0
  l0.RemoveVehicle = 1
  l0.RemoveWeapon = nil
  l0.RemoveDeadBody = nil
  l0.RemoveRigidPhysObject = nil
  l0.StopDialog = 0
  l0.NotRemovableEntity[0] = self.PlayerVehicle
  l0._graph = self
  l0._name = "box_Cinema_Zone_Cleanup_151"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1034747176"
  l0._DynamicAnchors = {NotRemovableEntity = 1}
  l0.Out = self.f_box_Cinema_Zone_Cleanup_151_Out
  l0 = self.box_TaxiRideReachDestinationMonitor_3
  l1 = Boxes[PathID("Domino/System/CinemaZoneCleanup.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|147589561", "147589561", "Taxi21_Main", "box_TaxiRideReachDestinationMonitor_3.Disabled", "box_Cinema_Zone_Cleanup_151.CleanZone", l0, l1)
  l1:CleanZone()
end
function export:f_box_TaxiRideReachDestinationMonitor_3_ReachDestination()
  local l0
  self = self._graph
  self:OnEnter_box_TaxiRideReachDestinationMonitor_3()
  l0 = self.box_TaxiRideReachDestinationMonitor_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|161512190", "161512190", "Taxi21_Main", "box_TaxiRideReachDestinationMonitor_3.ReachDestination", "box_TaxiRideReachDestinationMonitor_3.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Vehicle_Controller_150_Destructable()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/VehicleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_101()
  l0 = self.box_Multiple_AND_101
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1163044809", "1163044809", "Taxi21_Main", "box_Vehicle_Controller_150.Destructable", "box_Multiple_AND_101.Condition", clone, l0)
  l0:Condition(3)
end
function export:f_box_SnapAndBind_109_Attached()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_158
  l0.Seconds = 0.5
  l0 = self.box_SnapAndBind_109
  l1 = self.box_Timer_v2_158
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1966331717", "1966331717", "Taxi21_Main", "box_SnapAndBind_109.Attached", "box_Timer_v2_158.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_119_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_101()
  l0 = self.box_MultipleOR_119
  l1 = self.box_Multiple_AND_101
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1111038118", "1111038118", "Taxi21_Main", "box_MultipleOR_119.Out", "box_Multiple_AND_101.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_Ordered_Output_116_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_VehicleSeatingController_87
  l0.Vehicle = self.Car1
  l0.Pawn = self.Driver1
  l0.Seat = "Driver"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1649368090", "1649368090", "Taxi21_Main", "box_Ordered_Output_116.Out", "box_VehicleSeatingController_87.Assign", clone, l0)
  l0:Assign()
end
function export:f_box_Ordered_Output_116_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_103()
  l0 = self.box_Multiple_AND_103
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1855911868", "1855911868", "Taxi21_Main", "box_Ordered_Output_116.Out", "box_Multiple_AND_103.Condition", clone, l0)
  l0:Condition(2)
end
function export:f_box_Vehicle_Controller_70_Indestructable()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/VehicleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_92
  l0.CLO = "9223372048443832626"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|2109652093", "2109652093", "Taxi21_Main", "box_Vehicle_Controller_70.Indestructable", "box_CLOController_92.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_DriveAndTalk_135_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_122()
  l0 = self.box_DriveAndTalk_135
  l1 = self.box_MultipleOR_122
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1695270573", "1695270573", "Taxi21_Main", "box_DriveAndTalk_135.TalkFailed", "box_MultipleOR_122.Input", l0, l1)
  l1:Input(3)
end
function export:f_box_DriveAndTalk_135_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_122()
  l0 = self.box_DriveAndTalk_135
  l1 = self.box_MultipleOR_122
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|114794303", "114794303", "Taxi21_Main", "box_DriveAndTalk_135.TalkFinished", "box_MultipleOR_122.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_TriggerMonitor_v2_34_Enter()
  local l0, l1
  self = self._graph
  self:OnEnter_box_DriveAndTalk_13()
  l0 = self.box_TriggerMonitor_v2_34
  l1 = self.box_DriveAndTalk_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|796576198", "796576198", "Taxi21_Main", "box_TriggerMonitor_v2_34.Enter", "box_DriveAndTalk_13.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_Ordered_Output_32_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TriggerMonitor_v2_30
  l0.Trigger = "9223372056449869466"
  l0.AutoDisable = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1908097664", "1908097664", "Taxi21_Main", "box_Ordered_Output_32.Out", "box_TriggerMonitor_v2_30.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_32_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TriggerMonitor_v2_31
  l0.Trigger = "9223372056675091874"
  l0.AutoDisable = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1216079147", "1216079147", "Taxi21_Main", "box_Ordered_Output_32.Out", "box_TriggerMonitor_v2_31.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_32_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TriggerMonitor_v2_34
  l0.Trigger = "9223372056675092513"
  l0.AutoDisable = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|281301264", "281301264", "Taxi21_Main", "box_Ordered_Output_32.Out", "box_TriggerMonitor_v2_34.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_32_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TriggerMonitor_v2_75
  l0.Trigger = "9223372056675092524"
  l0.AutoDisable = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|2086570884", "2086570884", "Taxi21_Main", "box_Ordered_Output_32.Out", "box_TriggerMonitor_v2_75.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_32_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TriggerMonitor_v2_42
  l0.Trigger = "9223372056675092534"
  l0.AutoDisable = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1420290445", "1420290445", "Taxi21_Main", "box_Ordered_Output_32.Out", "box_TriggerMonitor_v2_42.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_32_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TriggerMonitor_v2_60
  l0.Trigger = "9223372056675092542"
  l0.AutoDisable = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1238042344", "1238042344", "Taxi21_Main", "box_Ordered_Output_32.Out", "box_TriggerMonitor_v2_60.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_32_Out_6()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TriggerMonitor_v2_72
  l0.Trigger = "9223372056675092544"
  l0.AutoDisable = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1675296421", "1675296421", "Taxi21_Main", "box_Ordered_Output_32.Out", "box_TriggerMonitor_v2_72.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MissionMessageController_v3_18_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_15()
  l0 = self.box_MissionMessageController_v3_18
  l1 = self.box_Multiple_AND_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1853231999", "1853231999", "Taxi21_Main", "box_MissionMessageController_v3_18.Out", "box_Multiple_AND_15.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_DriveAndTalk_133_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_134()
  l0 = self.box_DriveAndTalk_133
  l1 = self.box_Multiple_AND_134
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1199617397", "1199617397", "Taxi21_Main", "box_DriveAndTalk_133.Stopped", "box_Multiple_AND_134.Condition", l0, l1)
  l1:Condition(3)
end
function export:f_box_TaxiRatingController_132_RatingRemoved()
  local l0, l1
  self = self._graph
  l0 = self.box_Integer_Select_121
  l0.Integer = self.NoCarsFinishedRace
  l0.Case[0] = 0
  l0.Case[1] = 2
  l0.Case[2] = 4
  l0.Case[3] = 6
  l0 = self.box_TaxiRatingController_132
  l1 = self.box_Integer_Select_121
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1216471238", "1216471238", "Taxi21_Main", "box_TaxiRatingController_132.RatingRemoved", "box_Integer_Select_121.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_159_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v4_111
  l0.MapPoint = "9223372048443829523"
  l0 = self.box_Timer_v2_159
  l1 = self.box_MapPointController_v4_111
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1916427923", "1916427923", "Taxi21_Main", "box_Timer_v2_159.TimeElapsed", "box_MapPointController_v4_111.Show", l0, l1)
  l1:Show()
end
function export:f_box_MultipleOR_143_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_118()
  l0 = self.box_MultipleOR_143
  l1 = self.box_Multiple_AND_118
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|80796701", "80796701", "Taxi21_Main", "box_MultipleOR_143.Out", "box_Multiple_AND_118.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_CLOController_66_UnspawnedUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_68
  l0.User = self.Driver3
  l0 = self.box_CLOController_66
  l1 = self.box_CLOController_68
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1358234048", "1358234048", "Taxi21_Main", "box_CLOController_66.UnspawnedUser", "box_CLOController_68.UnspawnUser", l0, l1)
  l1:UnspawnUser()
end
function export:f_box_DriveAndTalk_131_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_134()
  l0 = self.box_DriveAndTalk_131
  l1 = self.box_Multiple_AND_134
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|221603169", "221603169", "Taxi21_Main", "box_DriveAndTalk_131.Stopped", "box_Multiple_AND_134.Condition", l0, l1)
  l1:Condition(2)
end
function export:f_box_MissionMessageController_v3_82_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_82
  l1 = self.box_OnceOnly_v3_83
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1137685562", "1137685562", "Taxi21_Main", "box_MissionMessageController_v3_82.Out", "box_OnceOnly_v3_83.In", l0, l1)
  l1:In(0)
end
function export:f_box_DriveAndTalk_57_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_51()
  l0 = self.box_DriveAndTalk_57
  l1 = self.box_Multiple_AND_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|151503463", "151503463", "Taxi21_Main", "box_DriveAndTalk_57.Stopped", "box_Multiple_AND_51.Condition", l0, l1)
  l1:Condition(3)
end
function export:f_box_SnapAndBind_26_Attached()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TaxiRideReachDestinationMonitor_10()
  l0 = self.box_SnapAndBind_26
  l1 = self.box_TaxiRideReachDestinationMonitor_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1827979842", "1827979842", "Taxi21_Main", "box_SnapAndBind_26.Attached", "box_TaxiRideReachDestinationMonitor_10.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_DriveAndTalk_63_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_RaceMonitor_39
  l0.Race = "RaceDbConfig.9223372056449869464"
  l0 = self.box_DriveAndTalk_63
  l1 = self.box_RaceMonitor_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|111554652", "111554652", "Taxi21_Main", "box_DriveAndTalk_63.Stopped", "box_RaceMonitor_39.GetPlayerRank", l0, l1)
  l1:GetPlayerRank()
end
function export:f_box_RaceController_145_OnRaceFinished()
  local l0
  self = self._graph
  self:OnEnter_box_RaceController_145()
  l0 = self.box_RaceController_145
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1482802867", "1482802867", "Taxi21_Main", "box_RaceController_145.OnRaceFinished", "box_RaceController_145.StopRace", l0, l0)
  l0:StopRace()
end
function export:f_box_RaceController_145_OnRaceSetupFinished()
  local l0
  self = self._graph
  self:OnEnter_box_RaceController_145()
  l0 = self.box_RaceController_145
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|656872991", "656872991", "Taxi21_Main", "box_RaceController_145.OnRaceSetupFinished", "box_RaceController_145.StartRace", l0, l0)
  l0:StartRace()
end
function export:f_box_RaceController_145_OnRaceStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_82
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF210",
    item = "Objective_Race",
    id = "630518"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_RaceController_145
  l1 = self.box_MissionMessageController_v3_82
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1151912785", "1151912785", "Taxi21_Main", "box_RaceController_145.OnRaceStarted", "box_MissionMessageController_v3_82.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_RaceController_145_OnRaceStopped()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1078352074"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_20_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_20_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_20_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_20_Out_3
  l0 = self.box_RaceController_145
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|131085696", "131085696", "Taxi21_Main", "box_RaceController_145.OnRaceStopped", "box_Ordered_Output_20.In", l0, l1)
  l1:In()
end
function export:f_box_MapPointController_v4_125_Hidden()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_71()
  l0 = self.box_MapPointController_v4_125
  l1 = self.box_MultipleOR_71
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|252795969", "252795969", "Taxi21_Main", "box_MapPointController_v4_125.Hidden", "box_MultipleOR_71.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_Vehicle_Bhv_Monitor_107_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/VehicleController.lua")]
  l0.Vehicle = self.Car2
  l0._graph = self
  l0._name = "box_Vehicle_Controller_148"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|824225742"
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.Destructable = self.f_box_Vehicle_Controller_148_Destructable
  l0.Indestructable = DummyFunction
  l0.Deflatable = DummyFunction
  l0.Undeflatable = DummyFunction
  l0.Unmovable = DummyFunction
  l0.Movable = DummyFunction
  l0.EngineBroken = DummyFunction
  l0.EngineShutDown = DummyFunction
  l0.EngineStarted = DummyFunction
  l0.VehicleExploded = DummyFunction
  l0 = self.box_Vehicle_Bhv_Monitor_107
  l1 = Boxes[PathID("Domino/System/VehicleController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1875312868", "1875312868", "Taxi21_Main", "box_Vehicle_Bhv_Monitor_107.Disabled", "box_Vehicle_Controller_148.SetAsDestructable", l0, l1)
  l1:SetAsDestructable()
end
function export:f_box_Vehicle_Bhv_Monitor_107_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|950735519"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_50_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_50_Out_1
  l0 = self.box_Vehicle_Bhv_Monitor_107
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|344021087", "344021087", "Taxi21_Main", "box_Vehicle_Bhv_Monitor_107.Enabled", "box_Ordered_Output_50.In", l0, l1)
  l1:In()
end
function export:f_box_Vehicle_Bhv_Monitor_107_EndPathPointReached()
  local l0
  self = self._graph
  self:OnEnter_box_Vehicle_Bhv_Monitor_107()
  l0 = self.box_Vehicle_Bhv_Monitor_107
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|280718222", "280718222", "Taxi21_Main", "box_Vehicle_Bhv_Monitor_107.EndPathPointReached", "box_Vehicle_Bhv_Monitor_107.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_CLOController_86_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_86
  self.Driver1 = l0.UserID
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_116"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|459684125"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_116_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_116_Out_1
  l0 = self.box_CLOController_86
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1377922137", "1377922137", "Taxi21_Main", "box_CLOController_86.OnUserInPlace", "box_Ordered_Output_116.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_96_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_96
  self.Driver3 = l0.UserID
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_115"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1122839380"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_115_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_115_Out_1
  l0 = self.box_CLOController_96
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1288501074", "1288501074", "Taxi21_Main", "box_CLOController_96.OnUserInPlace", "box_Ordered_Output_115.In", l0, l1)
  l1:In()
end
function export:f_box_TaxiRideReachDestinationMonitor_10_ClientDropOff()
  local l0
  self = self._graph
  self:OnEnter_box_TaxiRideReachDestinationMonitor_10()
  l0 = self.box_TaxiRideReachDestinationMonitor_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1125055642", "1125055642", "Taxi21_Main", "box_TaxiRideReachDestinationMonitor_10.ClientDropOff", "box_TaxiRideReachDestinationMonitor_10.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_TaxiRideReachDestinationMonitor_10_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRatingController_25
  l0.MissionName = self.Mission
  l0 = self.box_TaxiRideReachDestinationMonitor_10
  l1 = self.box_TaxiRatingController_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|666261503", "666261503", "Taxi21_Main", "box_TaxiRideReachDestinationMonitor_10.Disabled", "box_TaxiRatingController_25.ShowReward", l0, l1)
  l1:ShowReward()
end
function export:f_box_TaxiRideReachDestinationMonitor_10_ReachDestination()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_64
  l0.User = self.Driver1
  l0 = self.box_TaxiRideReachDestinationMonitor_10
  l1 = self.box_CLOController_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1142145004", "1142145004", "Taxi21_Main", "box_TaxiRideReachDestinationMonitor_10.ReachDestination", "box_CLOController_64.UnspawnUser", l0, l1)
  l1:UnspawnUser()
end
function export:f_box_Vehicle_Controller_148_Destructable()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/VehicleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_101()
  l0 = self.box_Multiple_AND_101
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|853694789", "853694789", "Taxi21_Main", "box_Vehicle_Controller_148.Destructable", "box_Multiple_AND_101.Condition", clone, l0)
  l0:Condition(1)
end
function export:f_box_TriggerMonitor_v2_30_Enter()
  local l0, l1
  self = self._graph
  self:OnEnter_box_DriveAndTalk_12()
  l0 = self.box_TriggerMonitor_v2_30
  l1 = self.box_DriveAndTalk_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1389127409", "1389127409", "Taxi21_Main", "box_TriggerMonitor_v2_30.Enter", "box_DriveAndTalk_12.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_65_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_55
  l0.LayerName = "Taxi21_Main"
  l0 = self.box_MultipleOR_65
  l1 = self.box_MissionLayer_v2_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|859664413", "859664413", "Taxi21_Main", "box_MultipleOR_65.Out", "box_MissionLayer_v2_55.Load", l0, l1)
  l1:Load()
end
function export:f_box_ListWriter_48_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_48
  self.VehicleList = l0.Target
  l0 = self.box_ListWriter_46
  l0.Input = self.DriverList
  l0.Data[0] = self.Driver1
  l0.Data[1] = self.Driver2
  l0.Data[2] = self.Driver3
  l0 = self.box_ListWriter_48
  l1 = self.box_ListWriter_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1907497891", "1907497891", "Taxi21_Main", "box_ListWriter_48.Added", "box_ListWriter_46.Add", l0, l1)
  l1:Add()
end
function export:f_box_ListWriter_48_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_48
  self.VehicleList = l0.Target
end
function export:f_box_ListWriter_48_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_48
  self.VehicleList = l0.Target
end
function export:f_box_Ordered_Output_142_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_DriveAndTalk_79()
  l0 = self.box_DriveAndTalk_79
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1760852727", "1760852727", "Taxi21_Main", "box_Ordered_Output_142.Out", "box_DriveAndTalk_79.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_142_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_DriveAndTalk_80()
  l0 = self.box_DriveAndTalk_80
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|422035649", "422035649", "Taxi21_Main", "box_Ordered_Output_142.Out", "box_DriveAndTalk_80.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_142_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_DriveAndTalk_141()
  l0 = self.box_DriveAndTalk_141
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1930949959", "1930949959", "Taxi21_Main", "box_Ordered_Output_142.Out", "box_DriveAndTalk_141.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_142_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_DriveAndTalk_57()
  l0 = self.box_DriveAndTalk_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|877293108", "877293108", "Taxi21_Main", "box_Ordered_Output_142.Out", "box_DriveAndTalk_57.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_MapPointController_v4_127_Hidden()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_71()
  l0 = self.box_MapPointController_v4_127
  l1 = self.box_MultipleOR_71
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|941234646", "941234646", "Taxi21_Main", "box_MapPointController_v4_127.Hidden", "box_MultipleOR_71.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_DriveAndTalk_141_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_51()
  l0 = self.box_DriveAndTalk_141
  l1 = self.box_Multiple_AND_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1706869825", "1706869825", "Taxi21_Main", "box_DriveAndTalk_141.Stopped", "box_Multiple_AND_51.Condition", l0, l1)
  l1:Condition(2)
end
function export:f_box_Vehicle_Bhv_Monitor_98_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/VehicleController.lua")]
  l0.Vehicle = self.Car1
  l0._graph = self
  l0._name = "box_Vehicle_Controller_150"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|389217667"
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.Destructable = self.f_box_Vehicle_Controller_150_Destructable
  l0.Indestructable = DummyFunction
  l0.Deflatable = DummyFunction
  l0.Undeflatable = DummyFunction
  l0.Unmovable = DummyFunction
  l0.Movable = DummyFunction
  l0.EngineBroken = DummyFunction
  l0.EngineShutDown = DummyFunction
  l0.EngineStarted = DummyFunction
  l0.VehicleExploded = DummyFunction
  l0 = self.box_Vehicle_Bhv_Monitor_98
  l1 = Boxes[PathID("Domino/System/VehicleController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|449244345", "449244345", "Taxi21_Main", "box_Vehicle_Bhv_Monitor_98.Disabled", "box_Vehicle_Controller_150.SetAsDestructable", l0, l1)
  l1:SetAsDestructable()
end
function export:f_box_Vehicle_Bhv_Monitor_98_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_SnapAndBind_110
  l0.Parent = self.Car1
  l0.Child = "9223372048443840070"
  l0.CarIcon = 1
  l0 = self.box_Vehicle_Bhv_Monitor_98
  l1 = self.box_SnapAndBind_110
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1705887612", "1705887612", "Taxi21_Main", "box_Vehicle_Bhv_Monitor_98.Enabled", "box_SnapAndBind_110.Attach", l0, l1)
  l1:Attach()
end
function export:f_box_Vehicle_Bhv_Monitor_98_EndPathPointReached()
  local l0
  self = self._graph
  self:OnEnter_box_Vehicle_Bhv_Monitor_98()
  l0 = self.box_Vehicle_Bhv_Monitor_98
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|877938574", "877938574", "Taxi21_Main", "box_Vehicle_Bhv_Monitor_98.EndPathPointReached", "box_Vehicle_Bhv_Monitor_98.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_50_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_118()
  l0 = self.box_Multiple_AND_118
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|2140419484", "2140419484", "Taxi21_Main", "box_Ordered_Output_50.Out", "box_Multiple_AND_118.Condition", clone, l0)
  l0:Condition(1)
end
function export:f_box_Ordered_Output_50_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SnapAndBind_109
  l0.Parent = self.Car2
  l0.Child = "9223372048443840068"
  l0.CarIcon = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1800952223", "1800952223", "Taxi21_Main", "box_Ordered_Output_50.Out", "box_SnapAndBind_109.Attach", clone, l0)
  l0:Attach()
end
function export:f_box_DriveAndTalk_136_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_122()
  l0 = self.box_DriveAndTalk_136
  l1 = self.box_MultipleOR_122
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|103519933", "103519933", "Taxi21_Main", "box_DriveAndTalk_136.TalkFailed", "box_MultipleOR_122.Input", l0, l1)
  l1:Input(5)
end
function export:f_box_DriveAndTalk_136_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_122()
  l0 = self.box_DriveAndTalk_136
  l1 = self.box_MultipleOR_122
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1574724712", "1574724712", "Taxi21_Main", "box_DriveAndTalk_136.TalkFinished", "box_MultipleOR_122.Input", l0, l1)
  l1:Input(4)
end
function export:f_box_TaxiRidePickUpController_11_ClientConversationFinised()
  local l0
  self = self._graph
  self:OnEnter_box_TaxiRidePickUpController_11()
  l0 = self.box_TaxiRidePickUpController_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1801961856", "1801961856", "Taxi21_Main", "box_TaxiRidePickUpController_11.ClientConversationFinised", "box_TaxiRidePickUpController_11.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_TaxiRidePickUpController_11_ClientPickedUp()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRidePickUpController_11
  self.PlayerVehicle = l0.Vehicle
  self:OnEnter_box_TaxiRideReachDestinationMonitor_3()
  l1 = self.box_TaxiRideReachDestinationMonitor_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1286968498", "1286968498", "Taxi21_Main", "box_TaxiRidePickUpController_11.ClientPickedUp", "box_TaxiRideReachDestinationMonitor_3.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TaxiRidePickUpController_11_ClientSpawned()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRidePickUpController_11
  self.Client = l0.Client
  self:OnEnter_box_TaxiRideVehicleMonitor_2()
  l1 = self.box_TaxiRideVehicleMonitor_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1363910508", "1363910508", "Taxi21_Main", "box_TaxiRidePickUpController_11.ClientSpawned", "box_TaxiRideVehicleMonitor_2.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TaxiRidePickUpController_11_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_153
  l0.Input = self.ActorList
  l0.Data[0] = self.Client
  l0.Data[1] = self.PlayerEntity
  l0 = self.box_TaxiRidePickUpController_11
  l1 = self.box_ListWriter_153
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1121936004", "1121936004", "Taxi21_Main", "box_TaxiRidePickUpController_11.Disabled", "box_ListWriter_153.Add", l0, l1)
  l1:Add()
end
function export:f_box_Simple_Node_123_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_DriveAndTalk_63()
  l0 = self.box_DriveAndTalk_63
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1558336685", "1558336685", "Taxi21_Main", "box_Simple_Node_123.Out", "box_DriveAndTalk_63.Start", clone, l0)
  l0:Start()
end
function export:f_box_VehicleBhvController_105_StartCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_Vehicle_Bhv_Monitor_74
  l0.Vehicle = self.Car2
  l0 = self.box_VehicleBhvController_105
  l1 = self.box_Vehicle_Bhv_Monitor_74
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|467981589", "467981589", "Taxi21_Main", "box_VehicleBhvController_105.StartCompleted", "box_Vehicle_Bhv_Monitor_74.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MissionMessageController_v3_33_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_52
  l0.LayerName = "Taxi21_Main"
  l0 = self.box_MissionMessageController_v3_33
  l1 = self.box_MissionLayer_v2_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1727162437", "1727162437", "Taxi21_Main", "box_MissionMessageController_v3_33.Out", "box_MissionLayer_v2_52.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_MultipleOR_122_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic_nocameralock"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1229588207"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_box_SetActionMap_v2_67_Popped
  l0 = self.box_MultipleOR_122
  l1 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|648030508", "648030508", "Taxi21_Main", "box_MultipleOR_122.Out", "box_SetActionMap_v2_67.Pop", l0, l1)
  l1:Pop()
end
function export:f_box_Cinema_Zone_Cleanup_151_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CinemaZoneCleanup.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic_nocameralock"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1293121490"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_box_SetActionMap_v2_1_Pushed
  l0.Popped = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|504994132", "504994132", "Taxi21_Main", "box_Cinema_Zone_Cleanup_151.Out", "box_SetActionMap_v2_1.Push", clone, l0)
  l0:Push()
end
function export:f_box_CLOController_85_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_85
  self.Car1 = l0.UserID
  l0 = Boxes[PathID("Domino/System/VehicleController.lua")]
  l0.Vehicle = self.Car1
  l0._graph = self
  l0._name = "box_Vehicle_Controller_147"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|372117044"
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.Destructable = DummyFunction
  l0.Indestructable = self.f_box_Vehicle_Controller_147_Indestructable
  l0.Deflatable = DummyFunction
  l0.Undeflatable = DummyFunction
  l0.Unmovable = DummyFunction
  l0.Movable = DummyFunction
  l0.EngineBroken = DummyFunction
  l0.EngineShutDown = DummyFunction
  l0.EngineStarted = DummyFunction
  l0.VehicleExploded = DummyFunction
  l0 = self.box_CLOController_85
  l1 = Boxes[PathID("Domino/System/VehicleController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|267335029", "267335029", "Taxi21_Main", "box_CLOController_85.OnUserInPlace", "box_Vehicle_Controller_147.SetAsIndestructable", l0, l1)
  l1:SetAsIndestructable()
end
function export:f_box_DPad_Hackable_Controller_54_Removed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/DPadHackableController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_81
  l0.HackableEntityList = self.DriverList
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|387130733", "387130733", "Taxi21_Main", "box_DPad_Hackable_Controller_54.Removed", "box_HackableController_v2_81.DisableProfiling", clone, l0)
  l0:DisableProfiling()
end
function export:f_box_VehicleSeatingController_87_AssignCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.Driver1
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|56881267"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_41_Hidden
  l0.Out = DummyFunction
  l0 = self.box_VehicleSeatingController_87
  l1 = Boxes[PathID("Domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|598871643", "598871643", "Taxi21_Main", "box_VehicleSeatingController_87.AssignCompleted", "box_VisibilityController_v2_41.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_TriggerMonitor_v2_75_Enter()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_124"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|348716236"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_124_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_124_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_124_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_124_Out_3
  l0 = self.box_TriggerMonitor_v2_75
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|2059736796", "2059736796", "Taxi21_Main", "box_TriggerMonitor_v2_75.Enter", "box_Ordered_Output_124.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_20_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1348737149"
  l0.Out = self.f_box_Simple_Node_28_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1693911558", "1693911558", "Taxi21_Main", "box_Ordered_Output_20.Out", "box_Simple_Node_28.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_20_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic_nocameralock"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_76"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|163120790"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_box_SetActionMap_v2_76_Pushed
  l0.Popped = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|627862497", "627862497", "Taxi21_Main", "box_Ordered_Output_20.Out", "box_SetActionMap_v2_76.Push", clone, l0)
  l0:Push()
end
function export:f_box_Ordered_Output_20_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|233935792"
  l0.Out = self.f_box_Simple_Node_7_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|784945914", "784945914", "Taxi21_Main", "box_Ordered_Output_20.Out", "box_Simple_Node_7.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_20_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1287096672"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_22_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_22_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_22_Out_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|110053640", "110053640", "Taxi21_Main", "box_Ordered_Output_20.Out", "box_Ordered_Output_22.In", clone, l0)
  l0:In()
end
function export:f_box_TaxiRideVehicleMonitor_2_ClientBailedOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_24()
  l0 = self.box_TaxiRideVehicleMonitor_2
  l1 = self.box_Taxi_AbortMission_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|375832959", "375832959", "Taxi21_Main", "box_TaxiRideVehicleMonitor_2.ClientBailedOut", "box_Taxi_AbortMission_24.ClientBailedOut", l0, l1)
  l1:ClientBailedOut()
end
function export:f_box_TaxiRideVehicleMonitor_2_ClientDeath()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_24()
  l0 = self.box_TaxiRideVehicleMonitor_2
  l1 = self.box_Taxi_AbortMission_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|2076855090", "2076855090", "Taxi21_Main", "box_TaxiRideVehicleMonitor_2.ClientDeath", "box_Taxi_AbortMission_24.ClientDead", l0, l1)
  l1:ClientDead()
end
function export:f_box_TaxiRideVehicleMonitor_2_PlayerAbandonedVehicle()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_24()
  l0 = self.box_TaxiRideVehicleMonitor_2
  l1 = self.box_Taxi_AbortMission_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|121884887", "121884887", "Taxi21_Main", "box_TaxiRideVehicleMonitor_2.PlayerAbandonedVehicle", "box_Taxi_AbortMission_24.PlayerAbandonedVehicle", l0, l1)
  l1:PlayerAbandonedVehicle()
end
function export:f_box_TaxiRideVehicleMonitor_2_VehicleUnusable()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_24()
  l0 = self.box_TaxiRideVehicleMonitor_2
  l1 = self.box_Taxi_AbortMission_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|377949465", "377949465", "Taxi21_Main", "box_TaxiRideVehicleMonitor_2.VehicleUnusable", "box_Taxi_AbortMission_24.VehicleUnusable", l0, l1)
  l1:VehicleUnusable()
end
function export:f_box_Ordered_Output_104_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_VehicleBhvController_102
  l0.VehicleMaster = self.Car3
  l0.VehicleTarget = self.PlayerEntity
  l0.PathOrPos = "9223372048443836966"
  l0.Config = "VehicleBhvSetup.9223372045908643591"
  l0.StopAtEndPoint = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|494165325", "494165325", "Taxi21_Main", "box_Ordered_Output_104.Out", "box_VehicleBhvController_102.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_104_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_VehicleBhvController_105
  l0.VehicleMaster = self.Car2
  l0.VehicleTarget = self.PlayerEntity
  l0.PathOrPos = "9223372048443836966"
  l0.Config = "VehicleBhvSetup.9223372045908643591"
  l0.StopAtEndPoint = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1472179553", "1472179553", "Taxi21_Main", "box_Ordered_Output_104.Out", "box_VehicleBhvController_105.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_104_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_VehicleBhvController_106
  l0.VehicleMaster = self.Car1
  l0.VehicleTarget = self.PlayerEntity
  l0.PathOrPos = "9223372048443836966"
  l0.Config = "VehicleBhvSetup.9223372045908643591"
  l0.StopAtEndPoint = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|869717511", "869717511", "Taxi21_Main", "box_Ordered_Output_104.Out", "box_VehicleBhvController_106.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_104_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic_nocameralock"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|2142491585"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_box_SetActionMap_v2_19_Popped
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|864574567", "864574567", "Taxi21_Main", "box_Ordered_Output_104.Out", "box_SetActionMap_v2_19.Pop", clone, l0)
  l0:Pop()
end
function export:f_box_TriggerMonitor_v2_60_Enter()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_142"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|909485871"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_142_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_142_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_142_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_142_Out_3
  l0 = self.box_TriggerMonitor_v2_60
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|2057018760", "2057018760", "Taxi21_Main", "box_TriggerMonitor_v2_60.Enter", "box_Ordered_Output_142.In", l0, l1)
  l1:In()
end
function export:f_box_DriveAndTalk_80_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_51()
  l0 = self.box_DriveAndTalk_80
  l1 = self.box_Multiple_AND_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1256174420", "1256174420", "Taxi21_Main", "box_DriveAndTalk_80.Stopped", "box_Multiple_AND_51.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_MissionLayer_v2_55_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1675727262"
  l0.Out = self.f_box_Get_Player_ID_69_Out
  l0 = self.box_MissionLayer_v2_55
  l1 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|772598978", "772598978", "Taxi21_Main", "box_MissionLayer_v2_55.Loaded", "box_Get_Player_ID_69.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_115_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_VehicleSeatingController_94
  l0.Vehicle = self.Car3
  l0.Pawn = self.Driver3
  l0.Seat = "Driver"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|165039698", "165039698", "Taxi21_Main", "box_Ordered_Output_115.Out", "box_VehicleSeatingController_94.Assign", clone, l0)
  l0:Assign()
end
function export:f_box_Ordered_Output_115_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_103()
  l0 = self.box_Multiple_AND_103
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|218959671", "218959671", "Taxi21_Main", "box_Ordered_Output_115.Out", "box_Multiple_AND_103.Condition", clone, l0)
  l0:Condition(1)
end
function export:f_box_Timer_v2_160_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v4_113
  l0.MapPoint = "9223372048443840070"
  l0 = self.box_Timer_v2_160
  l1 = self.box_MapPointController_v4_113
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|234294822", "234294822", "Taxi21_Main", "box_Timer_v2_160.TimeElapsed", "box_MapPointController_v4_113.Show", l0, l1)
  l1:Show()
end
function export:f_box_ForcePawnsVehicleStop_v2_43_ResetOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ForcePawnsVehicleStop_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TaxiStrategiesController_6
  l0.Config = "TaxiRideStrategyConfig.9223372048443828909"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1952274189", "1952274189", "Taxi21_Main", "box_ForcePawnsVehicleStop_v2_43.ResetOut", "box_TaxiStrategiesController_6.Pause", clone, l0)
  l0:Pause()
end
function export:f_box_ForcePawnsVehicleStop_v2_43_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ForcePawnsVehicleStop_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ForcePawnsVehicleStop_v2_43()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|700476842", "700476842", "Taxi21_Main", "box_ForcePawnsVehicleStop_v2_43.Stopped", "box_ForcePawnsVehicleStop_v2_43.Reset", clone, l0)
  l0:Reset()
end
function export:f_box_SetInteger_v2_56_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetInteger_v2.lua")]
  self.NoCarsFinishedRace = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TaxiRidePickUpController_11()
  l0 = self.box_TaxiRidePickUpController_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|84955026", "84955026", "Taxi21_Main", "box_SetInteger_v2_56.Out", "box_TaxiRidePickUpController_11.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Multiple_AND_134_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_123"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|981330879"
  l0.Out = self.f_box_Simple_Node_123_Out
  l0 = self.box_Multiple_AND_134
  l1 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|20406013", "20406013", "Taxi21_Main", "box_Multiple_AND_134.Out", "box_Simple_Node_123.In", l0, l1)
  l1:In()
end
function export:f_box_SetActionMap_v2_67_Popped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SnapAndBind_26
  l0.Parent = self.PlayerVehicle
  l0.Child = "9223372048443841316"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|142197830", "142197830", "Taxi21_Main", "box_SetActionMap_v2_67.Popped", "box_SnapAndBind_26.Attach", clone, l0)
  l0:Attach()
end
function export:f_box_VehicleBhvController_102_StartCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_Vehicle_Bhv_Monitor_61
  l0.Vehicle = self.Car3
  l0 = self.box_VehicleBhvController_102
  l1 = self.box_Vehicle_Bhv_Monitor_61
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|698066204", "698066204", "Taxi21_Main", "box_VehicleBhvController_102.StartCompleted", "box_Vehicle_Bhv_Monitor_61.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_OnceOnly_v3_157_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_59
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372056449869150"
  l0.StartDelay = 0.1
  l0 = self.box_OnceOnly_v3_157
  l1 = self.box_DriveAndTalk_59
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|747696074", "747696074", "Taxi21_Main", "box_OnceOnly_v3_157.Out", "box_DriveAndTalk_59.Start", l0, l1)
  l1:Start()
end
function export:f_box_Multiple_AND_118_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_49
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372056449869151"
  l0.StartDelay = 1
  l0 = self.box_Multiple_AND_118
  l1 = self.box_DriveAndTalk_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|445418530", "445418530", "Taxi21_Main", "box_Multiple_AND_118.Out", "box_DriveAndTalk_49.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_22_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MapPointController_v4_16
  l0.MapPoint = "9223372048443840070"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1822092318", "1822092318", "Taxi21_Main", "box_Ordered_Output_22.Out", "box_MapPointController_v4_16.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Ordered_Output_22_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MapPointController_v4_29
  l0.MapPoint = "9223372048443840068"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|716441296", "716441296", "Taxi21_Main", "box_Ordered_Output_22.Out", "box_MapPointController_v4_29.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Ordered_Output_22_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MapPointController_v4_21
  l0.MapPoint = "9223372048443829523"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1458605492", "1458605492", "Taxi21_Main", "box_Ordered_Output_22.Out", "box_MapPointController_v4_21.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_SetActionMap_v2_1_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_18
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF210",
    item = "Objective_Wait",
    id = "630517"
  }
  l0.HasObjectiveMarker = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1674109431", "1674109431", "Taxi21_Main", "box_SetActionMap_v2_1.Pushed", "box_MissionMessageController_v3_18.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_MultipleOR_144_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_44
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372056449869152"
  l0.StartDelay = 2
  l0 = self.box_MultipleOR_144
  l1 = self.box_DriveAndTalk_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|353901066", "353901066", "Taxi21_Main", "box_MultipleOR_144.Out", "box_DriveAndTalk_44.Start", l0, l1)
  l1:Start()
end
function export:f_box_Integer_Select_121_Match_0()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_128
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149922"
  l0.StartDelay = 1
  l0 = self.box_Integer_Select_121
  l1 = self.box_DriveAndTalk_128
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|236193248", "236193248", "Taxi21_Main", "box_Integer_Select_121.Match", "box_DriveAndTalk_128.Start", l0, l1)
  l1:Start()
end
function export:f_box_Integer_Select_121_Match_1()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_135
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149920"
  l0.StartDelay = 1
  l0 = self.box_Integer_Select_121
  l1 = self.box_DriveAndTalk_135
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1008303156", "1008303156", "Taxi21_Main", "box_Integer_Select_121.Match", "box_DriveAndTalk_135.Start", l0, l1)
  l1:Start()
end
function export:f_box_Integer_Select_121_Match_2()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_136
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372060806248342"
  l0.StartDelay = 1
  l0 = self.box_Integer_Select_121
  l1 = self.box_DriveAndTalk_136
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|666612856", "666612856", "Taxi21_Main", "box_Integer_Select_121.Match", "box_DriveAndTalk_136.Start", l0, l1)
  l1:Start()
end
function export:f_box_Integer_Select_121_Match_3()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_137
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149918"
  l0.StartDelay = 1
  l0 = self.box_Integer_Select_121
  l1 = self.box_DriveAndTalk_137
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|55116802", "55116802", "Taxi21_Main", "box_Integer_Select_121.Match", "box_DriveAndTalk_137.Start", l0, l1)
  l1:Start()
end
function export:f_box_RaceMonitor_47_OnPlayerRankUpdated()
  local l0, l1
  self = self._graph
  l0 = self.box_RaceMonitor_47
  l1 = self.box_Integer_Select_37
  l1.Integer = l0.PlayerRank
  l1.Case[0] = 1
  l1.Case[1] = 2
  l1.Case[2] = 3
  l1.Case[3] = 4
  l0 = self.box_RaceMonitor_47
  l1 = self.box_Integer_Select_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1194133207", "1194133207", "Taxi21_Main", "box_RaceMonitor_47.OnPlayerRankUpdated", "box_Integer_Select_37.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_99_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleBhvController_89
  l0.VehicleMaster = self.Car2
  l0.VehicleTarget = self.PlayerVehicle
  l0.PathOrPos = "9223372048443832629"
  l0.Config = "VehicleBhvSetup.9223372072344162524"
  l0.StopAtEndPoint = 1
  l0 = self.box_Timer_v2_99
  l1 = self.box_VehicleBhvController_89
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1400422024", "1400422024", "Taxi21_Main", "box_Timer_v2_99.TimeElapsed", "box_VehicleBhvController_89.Start", l0, l1)
  l1:Start()
end
function export:f_box_Simple_Node_28_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1562358590"
  l0.Out = self.f_box_Simple_Node_27_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|37284268", "37284268", "Taxi21_Main", "box_Simple_Node_28.Out", "box_Simple_Node_27.In", clone, l0)
  l0:In()
end
function export:f_box_TaxiStrategiesController_6_Paused()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_140
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149921"
  l0.StartDelay = 0.1
  l0 = self.box_TaxiStrategiesController_6
  l1 = self.box_DriveAndTalk_140
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|308766530", "308766530", "Taxi21_Main", "box_TaxiStrategiesController_6.Paused", "box_DriveAndTalk_140.Start", l0, l1)
  l1:Start()
end
function export:f_box_ListWriter_14_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_14
  self.ActorList = l0.Target
  self:OnEnter_box_GameplayInteractionController_53()
  l1 = self.box_GameplayInteractionController_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|477385467", "477385467", "Taxi21_Main", "box_ListWriter_14.Added", "box_GameplayInteractionController_53.Start", l0, l1)
  l1:Start()
end
function export:f_box_ListWriter_14_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_14
  self.ActorList = l0.Target
end
function export:f_box_ListWriter_14_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_14
  self.ActorList = l0.Target
end
function export:f_box_OnceOnly_v3_83_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRatingController_38
  l0.MissionName = self.Mission
  l0 = self.box_OnceOnly_v3_83
  l1 = self.box_TaxiRatingController_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1608891535", "1608891535", "Taxi21_Main", "box_OnceOnly_v3_83.Out", "box_TaxiRatingController_38.ResetRating", l0, l1)
  l1:ResetRating()
end
function export:f_box_TriggerMonitor_v2_31_Enter()
  local l0, l1
  self = self._graph
  self:OnEnter_box_DriveAndTalk_12()
  l0 = self.box_TriggerMonitor_v2_31
  l1 = self.box_DriveAndTalk_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|2039071453", "2039071453", "Taxi21_Main", "box_TriggerMonitor_v2_31.Enter", "box_DriveAndTalk_12.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_Vehicle_Bhv_Monitor_61_EndPathPointReached()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v4_126
  l0.MapPoint = "9223372048443829523"
  l0 = self.box_Vehicle_Bhv_Monitor_61
  l1 = self.box_MapPointController_v4_126
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1246144765", "1246144765", "Taxi21_Main", "box_Vehicle_Bhv_Monitor_61.EndPathPointReached", "box_MapPointController_v4_126.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_MultipleOR_117_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRatingController_132
  l0.MissionName = self.Mission
  l0.RatingAmount = self.NoCarsFinishedRace
  l0 = self.box_MultipleOR_117
  l1 = self.box_TaxiRatingController_132
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|766678304", "766678304", "Taxi21_Main", "box_MultipleOR_117.Out", "box_TaxiRatingController_132.RemoveRating", l0, l1)
  l1:RemoveRating()
end
function export:f_box_Multiple_AND_101_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_8
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372049052868102"
  l0.StartDelay = 1
  l0 = self.box_Multiple_AND_101
  l1 = self.box_DriveAndTalk_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1309330943", "1309330943", "Taxi21_Main", "box_Multiple_AND_101.Out", "box_DriveAndTalk_8.Start", l0, l1)
  l1:Start()
end
function export:f_box_CLOController_92_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_92
  self.Driver2 = l0.UserID
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_114"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1728426606"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_114_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_114_Out_1
  l0 = self.box_CLOController_92
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1343677744", "1343677744", "Taxi21_Main", "box_CLOController_92.OnUserInPlace", "box_Ordered_Output_114.In", l0, l1)
  l1:In()
end
function export:f_box_DriveAndTalk_130_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_134()
  l0 = self.box_DriveAndTalk_130
  l1 = self.box_Multiple_AND_134
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|173024891", "173024891", "Taxi21_Main", "box_DriveAndTalk_130.Stopped", "box_Multiple_AND_134.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_MissionLayer_v2_52_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_52
  l1 = self.box_MissionController_v4_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|2146125568", "2146125568", "Taxi21_Main", "box_MissionLayer_v2_52.Unloaded", "box_MissionController_v4_4.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_Vehicle_Controller_149_Destructable()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/VehicleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_101()
  l0 = self.box_Multiple_AND_101
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|118354263", "118354263", "Taxi21_Main", "box_Vehicle_Controller_149.Destructable", "box_Multiple_AND_101.Condition", clone, l0)
  l0:Condition(2)
end
function export:f_box_Simple_Node_138_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_DriveAndTalk_58()
  l0 = self.box_DriveAndTalk_58
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|2081199055", "2081199055", "Taxi21_Main", "box_Simple_Node_138.Out", "box_DriveAndTalk_58.Start", clone, l0)
  l0:Start()
end
function export:f_box_Vehicle_Controller_146_Indestructable()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/VehicleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_96
  l0.CLO = "9223372048443832627"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|627123369", "627123369", "Taxi21_Main", "box_Vehicle_Controller_146.Indestructable", "box_CLOController_96.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Simple_Node_27_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_GameplayInteractionController_53()
  l0 = self.box_GameplayInteractionController_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1147118727", "1147118727", "Taxi21_Main", "box_Simple_Node_27.Out", "box_GameplayInteractionController_53.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_VehicleBhvController_89_StartCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Vehicle_Bhv_Monitor_107()
  l0 = self.box_VehicleBhvController_89
  l1 = self.box_Vehicle_Bhv_Monitor_107
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|628736038", "628736038", "Taxi21_Main", "box_VehicleBhvController_89.StartCompleted", "box_Vehicle_Bhv_Monitor_107.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Integer_Arithmetics_77_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/IntegerArithmetics.lua")]
  self.NoCarsFinishedRace = l0.Target
end
function export:f_box_DriveAndTalk_12_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_DriveAndTalk_13()
  l0 = self.box_DriveAndTalk_12
  l1 = self.box_DriveAndTalk_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1164246461", "1164246461", "Taxi21_Main", "box_DriveAndTalk_12.Stopped", "box_DriveAndTalk_13.Start", l0, l1)
  l1:Start()
end
function export:f_box_DriveAndTalk_128_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_122()
  l0 = self.box_DriveAndTalk_128
  l1 = self.box_MultipleOR_122
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1256958243", "1256958243", "Taxi21_Main", "box_DriveAndTalk_128.TalkFailed", "box_MultipleOR_122.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_DriveAndTalk_128_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_122()
  l0 = self.box_DriveAndTalk_128
  l1 = self.box_MultipleOR_122
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1417728027", "1417728027", "Taxi21_Main", "box_DriveAndTalk_128.TalkFinished", "box_MultipleOR_122.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_DriveAndTalk_79_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_51()
  l0 = self.box_DriveAndTalk_79
  l1 = self.box_Multiple_AND_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|253387443", "253387443", "Taxi21_Main", "box_DriveAndTalk_79.Stopped", "box_Multiple_AND_51.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_RaceMonitor_39_OnPlayerRankUpdated()
  local l0, l1
  self = self._graph
  l0 = self.box_RaceMonitor_39
  l1 = self.box_Integer_Select_139
  l1.Integer = l0.PlayerRank
  l1.Case[0] = 1
  l1.Case[1] = 2
  l1.Case[2] = 3
  l1.Case[3] = 4
  l0 = self.box_RaceMonitor_39
  l1 = self.box_Integer_Select_139
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1850938944", "1850938944", "Taxi21_Main", "box_RaceMonitor_39.OnPlayerRankUpdated", "box_Integer_Select_139.In", l0, l1)
  l1:In()
end
function export:f_box_DriveAndTalk_44_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_119()
  l0 = self.box_DriveAndTalk_44
  l1 = self.box_MultipleOR_119
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|753633547", "753633547", "Taxi21_Main", "box_DriveAndTalk_44.TalkFailed", "box_MultipleOR_119.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_DriveAndTalk_44_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_119()
  l0 = self.box_DriveAndTalk_44
  l1 = self.box_MultipleOR_119
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|901484887", "901484887", "Taxi21_Main", "box_DriveAndTalk_44.TalkFinished", "box_MultipleOR_119.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Multiple_AND_51_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_138"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1520864376"
  l0.Out = self.f_box_Simple_Node_138_Out
  l0 = self.box_Multiple_AND_51
  l1 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|802728157", "802728157", "Taxi21_Main", "box_Multiple_AND_51.Out", "box_Simple_Node_138.In", l0, l1)
  l1:In()
end
function export:f_box_VehicleBhvController_106_StartCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_Vehicle_Bhv_Monitor_120
  l0.Vehicle = self.Car1
  l0 = self.box_VehicleBhvController_106
  l1 = self.box_Vehicle_Bhv_Monitor_120
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1886424653", "1886424653", "Taxi21_Main", "box_VehicleBhvController_106.StartCompleted", "box_Vehicle_Bhv_Monitor_120.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Integer_Select_37_Match_0()
  local l0, l1
  self = self._graph
  self:OnEnter_box_DriveAndTalk_129()
  l0 = self.box_Integer_Select_37
  l1 = self.box_DriveAndTalk_129
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1572589724", "1572589724", "Taxi21_Main", "box_Integer_Select_37.Match", "box_DriveAndTalk_129.Start", l0, l1)
  l1:Start()
end
function export:f_box_Integer_Select_37_Match_1()
  local l0, l1
  self = self._graph
  self:OnEnter_box_DriveAndTalk_130()
  l0 = self.box_Integer_Select_37
  l1 = self.box_DriveAndTalk_130
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1369543325", "1369543325", "Taxi21_Main", "box_Integer_Select_37.Match", "box_DriveAndTalk_130.Start", l0, l1)
  l1:Start()
end
function export:f_box_Integer_Select_37_Match_2()
  local l0, l1
  self = self._graph
  self:OnEnter_box_DriveAndTalk_131()
  l0 = self.box_Integer_Select_37
  l1 = self.box_DriveAndTalk_131
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|2038731260", "2038731260", "Taxi21_Main", "box_Integer_Select_37.Match", "box_DriveAndTalk_131.Start", l0, l1)
  l1:Start()
end
function export:f_box_Integer_Select_37_Match_3()
  local l0, l1
  self = self._graph
  self:OnEnter_box_DriveAndTalk_133()
  l0 = self.box_Integer_Select_37
  l1 = self.box_DriveAndTalk_133
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|883443707", "883443707", "Taxi21_Main", "box_Integer_Select_37.Match", "box_DriveAndTalk_133.Start", l0, l1)
  l1:Start()
end
function export:f_box_Get_Player_ID_69_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_5
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|805684891", "805684891", "Taxi21_Main", "box_Get_Player_ID_69.Out", "box_CinematicPrep_5.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_MapPointController_v4_126_Hidden()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_71()
  l0 = self.box_MapPointController_v4_126
  l1 = self.box_MultipleOR_71
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|612230985", "612230985", "Taxi21_Main", "box_MapPointController_v4_126.Hidden", "box_MultipleOR_71.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_SnapAndBind_110_Attached()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_160
  l0.Seconds = 0.5
  l0 = self.box_SnapAndBind_110
  l1 = self.box_Timer_v2_160
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1667978005", "1667978005", "Taxi21_Main", "box_SnapAndBind_110.Attached", "box_Timer_v2_160.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_114_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_VehicleSeatingController_90
  l0.Vehicle = self.Car2
  l0.Pawn = self.Driver2
  l0.Seat = "Driver"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1796210752", "1796210752", "Taxi21_Main", "box_Ordered_Output_114.Out", "box_VehicleSeatingController_90.Assign", clone, l0)
  l0:Assign()
end
function export:f_box_Ordered_Output_114_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_103()
  l0 = self.box_Multiple_AND_103
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|83899544", "83899544", "Taxi21_Main", "box_Ordered_Output_114.Out", "box_Multiple_AND_103.Condition", clone, l0)
  l0:Condition(0)
end
function export:f_box_GameplayInteractionController_152_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_GameplayInteractionController_152
  l1 = self.box_OnceOnly_v3_157
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|544175523", "544175523", "Taxi21_Main", "box_GameplayInteractionController_152.Out", "box_OnceOnly_v3_157.In", l0, l1)
  l1:In(0)
end
function export:f_box_GameplayInteractionController_152_Started()
  local l0
  self = self._graph
  l0 = self.box_GameplayInteractionController_152
  self.InteractionID = l0.interactionId
end
function export:f_box_VehicleSeatingController_90_AssignCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.Driver2
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|2062676600"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_36_Hidden
  l0.Out = DummyFunction
  l0 = self.box_VehicleSeatingController_90
  l1 = Boxes[PathID("Domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|564475231", "564475231", "Taxi21_Main", "box_VehicleSeatingController_90.AssignCompleted", "box_VisibilityController_v2_36.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Timer_v2_9_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_ForcePawnsVehicleStop_v2_43()
  l0 = self.box_Timer_v2_9
  l1 = Boxes[PathID("Domino/System/ForcePawnsVehicleStop_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|442028844", "442028844", "Taxi21_Main", "box_Timer_v2_9.TimeElapsed", "box_ForcePawnsVehicleStop_v2_43.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_TaxiStrategiesController_17_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_14
  l0.Input = self.ActorList
  l0.Data[0] = self.Client
  l0.Data[1] = self.PlayerEntity
  l0 = self.box_TaxiStrategiesController_17
  l1 = self.box_ListWriter_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1511603432", "1511603432", "Taxi21_Main", "box_TaxiStrategiesController_17.Started", "box_ListWriter_14.Add", l0, l1)
  l1:Add()
end
function export:f_box_VehicleSeatingController_94_AssignCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.Driver3
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|92371136"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_40_Hidden
  l0.Out = DummyFunction
  l0 = self.box_VehicleSeatingController_94
  l1 = Boxes[PathID("Domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1898885352", "1898885352", "Taxi21_Main", "box_VehicleSeatingController_94.AssignCompleted", "box_VisibilityController_v2_40.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_DriveAndTalk_45_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1973722444"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_35_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_35_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_35_Out_2
  l0 = self.box_DriveAndTalk_45
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1823840703", "1823840703", "Taxi21_Main", "box_DriveAndTalk_45.Started", "box_Ordered_Output_35.In", l0, l1)
  l1:In()
end
function export:f_box_DriveAndTalk_45_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_143()
  l0 = self.box_DriveAndTalk_45
  l1 = self.box_MultipleOR_143
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1327475393", "1327475393", "Taxi21_Main", "box_DriveAndTalk_45.TalkFailed", "box_MultipleOR_143.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_DriveAndTalk_45_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_143()
  l0 = self.box_DriveAndTalk_45
  l1 = self.box_MultipleOR_143
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1264715249", "1264715249", "Taxi21_Main", "box_DriveAndTalk_45.TalkFinished", "box_MultipleOR_143.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MultipleOR_73_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_15()
  l0 = self.box_MultipleOR_73
  l1 = self.box_Multiple_AND_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1972347317", "1972347317", "Taxi21_Main", "box_MultipleOR_73.Out", "box_Multiple_AND_15.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_Simple_Node_156_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_GameplayInteractionController_152()
  l0 = self.box_GameplayInteractionController_152
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1338765459", "1338765459", "Taxi21_Main", "box_Simple_Node_156.Out", "box_GameplayInteractionController_152.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_DriveAndTalk_13_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_RaceMonitor_47
  l0.Race = "RaceDbConfig.9223372056449869464"
  l0 = self.box_DriveAndTalk_13
  l1 = self.box_RaceMonitor_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|864251803", "864251803", "Taxi21_Main", "box_DriveAndTalk_13.Stopped", "box_RaceMonitor_47.GetPlayerRank", l0, l1)
  l1:GetPlayerRank()
end
function export:f_box_MultipleOR_71_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/IntegerArithmetics.lua")]
  l0.A = self.NoCarsFinishedRace
  l0.B = 2
  l0._graph = self
  l0._name = "box_Integer_Arithmetics_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1586282072"
  l0.Out = self.f_box_Integer_Arithmetics_77_Out
  l0 = self.box_MultipleOR_71
  l1 = Boxes[PathID("Domino/System/IntegerArithmetics.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|560359808", "560359808", "Taxi21_Main", "box_MultipleOR_71.Out", "box_Integer_Arithmetics_77.Add", l0, l1)
  l1:Add()
end
function export:f_box_Vehicle_Bhv_Monitor_74_EndPathPointReached()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v4_127
  l0.MapPoint = "9223372048443840068"
  l0 = self.box_Vehicle_Bhv_Monitor_74
  l1 = self.box_MapPointController_v4_127
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|447253105", "447253105", "Taxi21_Main", "box_Vehicle_Bhv_Monitor_74.EndPathPointReached", "box_MapPointController_v4_127.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_CinematicPrep_5_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_23
  l0.Checkpoint = "CheckPoint_0"
  l0 = self.box_CinematicPrep_5
  l1 = self.box_MissionCheckpointReach_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1797058951", "1797058951", "Taxi21_Main", "box_CinematicPrep_5.PostOut", "box_MissionCheckpointReach_23.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_35_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_91
  l0.CLO = "9223372048443832624"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1377360356", "1377360356", "Taxi21_Main", "box_Ordered_Output_35.Out", "box_CLOController_91.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_35_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_95
  l0.CLO = "9223372048443832625"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|369004067", "369004067", "Taxi21_Main", "box_Ordered_Output_35.Out", "box_CLOController_95.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_35_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_85
  l0.CLO = "9223372048443829520"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1964582279", "1964582279", "Taxi21_Main", "box_Ordered_Output_35.Out", "box_CLOController_85.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_DriveAndTalk_137_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_122()
  l0 = self.box_DriveAndTalk_137
  l1 = self.box_MultipleOR_122
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|2027218908", "2027218908", "Taxi21_Main", "box_DriveAndTalk_137.TalkFailed", "box_MultipleOR_122.Input", l0, l1)
  l1:Input(7)
end
function export:f_box_DriveAndTalk_137_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_122()
  l0 = self.box_DriveAndTalk_137
  l1 = self.box_MultipleOR_122
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1299236578", "1299236578", "Taxi21_Main", "box_DriveAndTalk_137.TalkFinished", "box_MultipleOR_122.Input", l0, l1)
  l1:Input(6)
end
function export:f_box_ListWriter_153_Added()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_153
  self.ActorList = l0.Target
end
function export:f_box_ListWriter_153_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_153
  self.ActorList = l0.Target
  self:OnEnter_box_GameplayInteractionController_152()
  l1 = self.box_GameplayInteractionController_152
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1267998475", "1267998475", "Taxi21_Main", "box_ListWriter_153.Out", "box_GameplayInteractionController_152.Start", l0, l1)
  l1:Start()
end
function export:f_box_ListWriter_153_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_153
  self.ActorList = l0.Target
end
function export:f_box_TaxiRatingController_38_RatingReset()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiStrategiesController_17
  l0.Config = "TaxiRideStrategyConfig.9223372048443828909"
  l0 = self.box_TaxiRatingController_38
  l1 = self.box_TaxiStrategiesController_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1525825782", "1525825782", "Taxi21_Main", "box_TaxiRatingController_38.RatingReset", "box_TaxiStrategiesController_17.Start", l0, l1)
  l1:Start()
end
function export:f_box_DriveAndTalk_140_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_117()
  l0 = self.box_DriveAndTalk_140
  l1 = self.box_MultipleOR_117
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|2135512562", "2135512562", "Taxi21_Main", "box_DriveAndTalk_140.TalkFailed", "box_MultipleOR_117.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_DriveAndTalk_140_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_117()
  l0 = self.box_DriveAndTalk_140
  l1 = self.box_MultipleOR_117
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|469943187", "469943187", "Taxi21_Main", "box_DriveAndTalk_140.TalkFinished", "box_MultipleOR_117.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_GameplayInteractionController_53_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|539963130"
  l0._DynamicAnchors = {Out = 7}
  l0.Out[0] = self.f_box_Ordered_Output_32_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_32_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_32_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_32_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_32_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_32_Out_5
  l0.Out[6] = self.f_box_Ordered_Output_32_Out_6
  l0 = self.box_GameplayInteractionController_53
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1674542569", "1674542569", "Taxi21_Main", "box_GameplayInteractionController_53.Started", "box_Ordered_Output_32.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_155_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_154"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|85797623"
  l0.Out = self.f_box_Simple_Node_154_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|758901732", "758901732", "Taxi21_Main", "box_Ordered_Output_155.Out", "box_Simple_Node_154.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_155_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_DriveAndTalk_45
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372060806248341"
  l0.StartDelay = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1040422546", "1040422546", "Taxi21_Main", "box_Ordered_Output_155.Out", "box_DriveAndTalk_45.Start", clone, l0)
  l0:Start()
end
function export:f_box_TaxiRatingController_25_RewardShown()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiStrategiesController_78
  l0.Config = "TaxiRideStrategyConfig.9223372048443828909"
  l0 = self.box_TaxiRatingController_25
  l1 = self.box_TaxiStrategiesController_78
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|823373884", "823373884", "Taxi21_Main", "box_TaxiRatingController_25.RewardShown", "box_TaxiStrategiesController_78.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_Vehicle_Bhv_Monitor_120_EndPathPointReached()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v4_125
  l0.MapPoint = "9223372048443840070"
  l0 = self.box_Vehicle_Bhv_Monitor_120
  l1 = self.box_MapPointController_v4_125
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|2062125787", "2062125787", "Taxi21_Main", "box_Vehicle_Bhv_Monitor_120.EndPathPointReached", "box_MapPointController_v4_125.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_VisibilityController_v2_36_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_99
  l0.Seconds = 0.5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|826253881", "826253881", "Taxi21_Main", "box_VisibilityController_v2_36.Hidden", "box_Timer_v2_99.Start", clone, l0)
  l0:Start()
end
function export:f_box_CLOController_95_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_95
  self.Car3 = l0.UserID
  l0 = Boxes[PathID("Domino/System/VehicleController.lua")]
  l0.Vehicle = self.Car3
  l0._graph = self
  l0._name = "box_Vehicle_Controller_146"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1531370346"
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.Destructable = DummyFunction
  l0.Indestructable = self.f_box_Vehicle_Controller_146_Indestructable
  l0.Deflatable = DummyFunction
  l0.Undeflatable = DummyFunction
  l0.Unmovable = DummyFunction
  l0.Movable = DummyFunction
  l0.EngineBroken = DummyFunction
  l0.EngineShutDown = DummyFunction
  l0.EngineStarted = DummyFunction
  l0.VehicleExploded = DummyFunction
  l0 = self.box_CLOController_95
  l1 = Boxes[PathID("Domino/System/VehicleController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|772907778", "772907778", "Taxi21_Main", "box_CLOController_95.OnUserInPlace", "box_Vehicle_Controller_146.SetAsIndestructable", l0, l1)
  l1:SetAsIndestructable()
end
function export:f_box_VehicleBhvController_93_StartCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Vehicle_Bhv_Monitor_97()
  l0 = self.box_VehicleBhvController_93
  l1 = self.box_Vehicle_Bhv_Monitor_97
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|398041555", "398041555", "Taxi21_Main", "box_VehicleBhvController_93.StartCompleted", "box_Vehicle_Bhv_Monitor_97.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Timer_v2_158_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v4_112
  l0.MapPoint = "9223372048443840068"
  l0 = self.box_Timer_v2_158
  l1 = self.box_MapPointController_v4_112
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1923786119", "1923786119", "Taxi21_Main", "box_Timer_v2_158.TimeElapsed", "box_MapPointController_v4_112.Show", l0, l1)
  l1:Show()
end
function export:f_box_TriggerMonitor_v2_42_Enter()
  local l0, l1
  self = self._graph
  self:OnEnter_box_DriveAndTalk_63()
  l0 = self.box_TriggerMonitor_v2_42
  l1 = self.box_DriveAndTalk_63
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1254301285", "1254301285", "Taxi21_Main", "box_TriggerMonitor_v2_42.Enter", "box_DriveAndTalk_63.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_VehicleBhvController_88_StartCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Vehicle_Bhv_Monitor_98()
  l0 = self.box_VehicleBhvController_88
  l1 = self.box_Vehicle_Bhv_Monitor_98
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|2054134319", "2054134319", "Taxi21_Main", "box_VehicleBhvController_88.StartCompleted", "box_Vehicle_Bhv_Monitor_98.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_SetActionMap_v2_19_Popped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_RaceController_145()
  l0 = self.box_RaceController_145
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1284256743", "1284256743", "Taxi21_Main", "box_SetActionMap_v2_19.Popped", "box_RaceController_145.SetupRace", clone, l0)
  l0:SetupRace()
end
function export:OnEnter_box_Vehicle_Bhv_Monitor_97()
  local l0
  l0 = self.box_Vehicle_Bhv_Monitor_97
  l0.Vehicle = self.Car3
end
function export:OnEnter_box_DriveAndTalk_129()
  local l0
  l0 = self.box_DriveAndTalk_129
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372065512861487"
  l0.StartDelay = 0.3
end
function export:OnEnter_box_MultipleOR_84()
end
function export:OnEnter_box_Multiple_AND_103()
end
function export:OnEnter_box_Multiple_AND_15()
end
function export:OnEnter_box_DriveAndTalk_58()
  local l0
  l0 = self.box_DriveAndTalk_58
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372060254403112"
  l0.StartDelay = 1
end
function export:OnEnter_box_TaxiRideReachDestinationMonitor_3()
  local l0
  l0 = self.box_TaxiRideReachDestinationMonitor_3
  l0.Client = self.Client
  l0.DropOffIcon = "9223372048443829536"
  l0.ShowGps = 1
  l0.ManageObjective = 1
  l0.CustomObjective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF210",
    item = "Objective_Reach",
    id = "630516"
  }
  l0.Config = "TaxiRideGameplayBrick.9223372057631918002"
end
function export:OnEnter_box_MultipleOR_119()
end
function export:OnEnter_box_DriveAndTalk_133()
  local l0
  l0 = self.box_DriveAndTalk_133
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372060254403111"
  l0.StartDelay = 0.3
end
function export:OnEnter_box_MultipleOR_143()
end
function export:OnEnter_box_DriveAndTalk_131()
  local l0
  l0 = self.box_DriveAndTalk_131
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372060254403110"
  l0.StartDelay = 0.3
end
function export:OnEnter_box_DriveAndTalk_57()
  local l0
  l0 = self.box_DriveAndTalk_57
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372060254403111"
  l0.StartDelay = 0.3
end
function export:OnEnter_box_DriveAndTalk_63()
  local l0
  l0 = self.box_DriveAndTalk_63
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149916"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
end
function export:OnEnter_box_RaceController_145()
  local l0
  l0 = self.box_RaceController_145
  l0.Race = "RaceDbConfig.9223372056449869464"
  l0.RacerVehicle[0] = self.Car1
  l0.RacerVehicle[1] = self.Car2
  l0.RacerVehicle[2] = self.Car3
end
function export:OnEnter_box_Vehicle_Bhv_Monitor_107()
  local l0
  l0 = self.box_Vehicle_Bhv_Monitor_107
  l0.Vehicle = self.Car2
end
function export:OnEnter_box_TaxiRideReachDestinationMonitor_10()
  local l0
  l0 = self.box_TaxiRideReachDestinationMonitor_10
  l0.Client = self.Client
  l0.DropOffIcon = "9223372048443841316"
  l0.LastDestination = 1
  l0.Config = "TaxiRideGameplayBrick.9223372057631918002"
end
function export:OnEnter_box_MultipleOR_65()
end
function export:OnEnter_box_DriveAndTalk_141()
  local l0
  l0 = self.box_DriveAndTalk_141
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372060254403110"
  l0.StartDelay = 0.3
end
function export:OnEnter_box_Vehicle_Bhv_Monitor_98()
  local l0
  l0 = self.box_Vehicle_Bhv_Monitor_98
  l0.Vehicle = self.Car1
end
function export:OnEnter_box_TaxiRidePickUpController_11()
  local l0
  l0 = self.box_TaxiRidePickUpController_11
  l0.ClientClo = "9223372048443829524"
  l0.PickUpIcon = "9223372048443829530"
  l0.Config = "TaxiRideGameplayBrick.9223372057631918002"
end
function export:OnEnter_box_MultipleOR_122()
end
function export:OnEnter_box_TaxiRideVehicleMonitor_2()
  local l0
  l0 = self.box_TaxiRideVehicleMonitor_2
  l0.Client = self.Client
  l0.Config = "TaxiRideGameplayBrick.9223372057631918002"
end
function export:OnEnter_box_DriveAndTalk_80()
  local l0
  l0 = self.box_DriveAndTalk_80
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372060254403109"
  l0.StartDelay = 0.3
end
function export:OnEnter_box_ForcePawnsVehicleStop_v2_43()
  local l0
  l0 = Boxes[PathID("Domino/System/ForcePawnsVehicleStop_v2.lua")]
  l0.PlayerEntity = nil
  l0.Brake = nil
  l0._graph = self
  l0._name = "box_ForcePawnsVehicleStop_v2_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\ubertaxi\\taxi21.domino|@Taxi21_Main|1130633007"
  l0.Stopped = self.f_box_ForcePawnsVehicleStop_v2_43_Stopped
  l0.ResetOut = self.f_box_ForcePawnsVehicleStop_v2_43_ResetOut
end
function export:OnEnter_box_Multiple_AND_134()
end
function export:OnEnter_box_Multiple_AND_118()
end
function export:OnEnter_box_MultipleOR_144()
end
function export:OnEnter_box_MultipleOR_117()
end
function export:OnEnter_box_Multiple_AND_101()
end
function export:OnEnter_box_DriveAndTalk_130()
  local l0
  l0 = self.box_DriveAndTalk_130
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372060254403109"
  l0.StartDelay = 0.3
end
function export:OnEnter_box_DriveAndTalk_12()
  local l0
  l0 = self.box_DriveAndTalk_12
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149914"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
end
function export:OnEnter_box_DriveAndTalk_79()
  local l0
  l0 = self.box_DriveAndTalk_79
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372060254403108"
  l0.StartDelay = 0.3
end
function export:OnEnter_box_Multiple_AND_51()
end
function export:OnEnter_box_Taxi_AbortMission_24()
  local l0
  l0 = self.box_Taxi_AbortMission_24
  l0.MissionName = self.Mission
  l0.LayerName = "Taxi21_Main"
  l0.StrategyConfig = "TaxiRideStrategyConfig.9223372048443828909"
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Vehicle = self.PlayerVehicle
  l0.Conversation = "ConversationSetting.9223372048760149918"
end
function export:OnEnter_box_GameplayInteractionController_152()
  local l0
  l0 = self.box_GameplayInteractionController_152
  l0.Users = self.ActorList
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
end
function export:OnEnter_box_MultipleOR_73()
end
function export:OnEnter_box_DriveAndTalk_13()
  local l0
  l0 = self.box_DriveAndTalk_13
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149915"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
end
function export:OnEnter_box_MultipleOR_71()
end
function export:OnEnter_box_GameplayInteractionController_53()
  local l0
  l0 = self.box_GameplayInteractionController_53
  l0.Users = self.ActorList
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
end
_compilerVersion = 4
