export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  cbox:RegisterBox("domino/System/GameplayInteractionController.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlayerProximityMonitor.lua")
  cbox:RegisterBox("domino/System/SetEntity.lua")
  cbox:RegisterBox("domino/System/SetActionMap_v2.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  cbox:RegisterBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.debug.lua")
  cbox:RegisterBox("domino/System/TaxiRatingController.lua")
  cbox:RegisterBox("domino/System/TaxiRidePickUpController.lua")
  cbox:RegisterBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  cbox:RegisterBox("domino/System/TaxiRideVehicleMonitor.lua")
  cbox:RegisterBox("domino/System/TaxiStrategiesController.lua")
end
function export:Init(cbox)
  local l0
  self._name = "Taxi14_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main"
  self.PlayerEntity = nil
  self.PlayerVehicle = nil
  self.Mission = "MissionList.9223372047964168914"
  self.CurrentDestination = 0
  self.MrLi = nil
  self.NudleTranslate = "9223372058339622023"
  self.Client = nil
  self.GIC_Users = {}
  self.box_GameplayInteractionController_77 = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self.box_GameplayInteractionController_77
  l0._graph = self
  l0._name = "box_GameplayInteractionController_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|4739581"
  l0.Out = DummyFunction
  l0.Started = self.f_box_GameplayInteractionController_77_Started
  l0.Stopped = DummyFunction
  self.box_DriveAndTalk_47 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_47
  l0._graph = self
  l0._name = "box_DriveAndTalk_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|26938461"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_DriveAndTalk_56 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_56
  l0._graph = self
  l0._name = "box_DriveAndTalk_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|56829233"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_56_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_56_TalkFailed
  self.box_DriveAndTalk_26 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_26
  l0._graph = self
  l0._name = "box_DriveAndTalk_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|143056104"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_26_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_26_TalkFailed
  self.box_OnceOnly_v3_5 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_5
  l0._graph = self
  l0._name = "box_OnceOnly_v3_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|313711165"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_5_Out
  l0.ResetOut = DummyFunction
  self.box_OnceOnly_v3_62 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_62
  l0._graph = self
  l0._name = "box_OnceOnly_v3_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|322101842"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_62_Out
  l0.ResetOut = DummyFunction
  self.box_MissionMessageController_v3_46 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_46
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|367227328"
  l0.Out = self.f_box_MissionMessageController_v3_46_Out
  l0.MessageCompleted = DummyFunction
  self.box_OnceOnly_v3_49 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_49
  l0._graph = self
  l0._name = "box_OnceOnly_v3_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|411417137"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_49_Out
  l0.ResetOut = DummyFunction
  self.box_OnceOnly_v3_41 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_41
  l0._graph = self
  l0._name = "box_OnceOnly_v3_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|420201106"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_41_Out
  l0.ResetOut = DummyFunction
  self.box_Taxi_AbortMission_6 = cbox:CreateBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.debug.lua")
  l0 = self.box_Taxi_AbortMission_6
  l0._graph = self
  l0._name = "box_Taxi_AbortMission_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|461441601"
  self.box_DriveAndTalk_40 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_40
  l0._graph = self
  l0._name = "box_DriveAndTalk_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|545230895"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_40_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_40_TalkFailed
  self.box_DriveAndTalk_54 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_54
  l0._graph = self
  l0._name = "box_DriveAndTalk_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|599941196"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_54_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_54_TalkFailed
  self.box_OnceOnly_v3_70 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_70
  l0._graph = self
  l0._name = "box_OnceOnly_v3_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|654078965"
  l0._DynamicAnchors = {In = 3}
  l0.Out = self.f_box_OnceOnly_v3_70_Out
  l0.ResetOut = DummyFunction
  self.box_DriveAndTalk_58 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_58
  l0._graph = self
  l0._name = "box_DriveAndTalk_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|687595717"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_OnceOnly_v3_43 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_43
  l0._graph = self
  l0._name = "box_OnceOnly_v3_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|785630952"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_43_Out
  l0.ResetOut = DummyFunction
  self.box_TaxiStrategiesController_84 = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self.box_TaxiStrategiesController_84
  l0._graph = self
  l0._name = "box_TaxiStrategiesController_84"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|819893697"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_TaxiStrategiesController_84_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self.box_MissionController_v4_30 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_30
  l0._graph = self
  l0._name = "box_MissionController_v4_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|881587008"
  self.box_DriveAndTalk_59 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_59
  l0._graph = self
  l0._name = "box_DriveAndTalk_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|886793909"
  l0.Started = self.f_box_DriveAndTalk_59_Started
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = self.f_box_DriveAndTalk_59_TalkPaused
  l0.TalkFinished = self.f_box_DriveAndTalk_59_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_59_TalkFailed
  self.box_TaxiRatingController_16 = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self.box_TaxiRatingController_16
  l0._graph = self
  l0._name = "box_TaxiRatingController_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|948396188"
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = DummyFunction
  l0.RewardShown = self.f_box_TaxiRatingController_16_RewardShown
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self.box_TaxiRideReachDestinationMonitor_13 = cbox:CreateBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self.box_TaxiRideReachDestinationMonitor_13
  l0._graph = self
  l0._name = "box_TaxiRideReachDestinationMonitor_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|971882844"
  l0.Enabled = self.f_box_TaxiRideReachDestinationMonitor_13_Enabled
  l0.Disabled = self.f_box_TaxiRideReachDestinationMonitor_13_Disabled
  l0.ReachDestination = self.f_box_TaxiRideReachDestinationMonitor_13_ReachDestination
  l0.ClientDropOff = DummyFunction
  self.box_DriveAndTalk_50 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_50
  l0._graph = self
  l0._name = "box_DriveAndTalk_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|988836817"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_50_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_50_TalkFailed
  self.box_OnceOnly_v3_35 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_35
  l0._graph = self
  l0._name = "box_OnceOnly_v3_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1008048985"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_35_Out
  l0.ResetOut = DummyFunction
  self.box_DriveAndTalk_31 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_31
  l0._graph = self
  l0._name = "box_DriveAndTalk_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1043325903"
  l0.Started = self.f_box_DriveAndTalk_31_Started
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_31_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_31_TalkFailed
  self.box_TaxiRideReachDestinationMonitor_18 = cbox:CreateBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self.box_TaxiRideReachDestinationMonitor_18
  l0._graph = self
  l0._name = "box_TaxiRideReachDestinationMonitor_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1052725184"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TaxiRideReachDestinationMonitor_18_Disabled
  l0.ReachDestination = self.f_box_TaxiRideReachDestinationMonitor_18_ReachDestination
  l0.ClientDropOff = DummyFunction
  self.box_DriveAndTalk_57 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_57
  l0._graph = self
  l0._name = "box_DriveAndTalk_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1072694314"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_57_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_57_TalkFailed
  self.box_TaxiStrategiesController_69 = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self.box_TaxiStrategiesController_69
  l0._graph = self
  l0._name = "box_TaxiStrategiesController_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1103236227"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self.box_Player_Proximity_Monitor_2 = cbox:CreateBox("domino/System/PlayerProximityMonitor.lua")
  l0 = self.box_Player_Proximity_Monitor_2
  l0._graph = self
  l0._name = "box_Player_Proximity_Monitor_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1118537482"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Player_Proximity_Monitor_2_Disabled
  l0.EnterRadius = self.f_box_Player_Proximity_Monitor_2_EnterRadius
  l0.ExitRadius = DummyFunction
  l0.RCEnterRadius = DummyFunction
  l0.RCExitRadius = DummyFunction
  self.box_MissionLayer_v2_25 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_25
  l0._graph = self
  l0._name = "box_MissionLayer_v2_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1130811230"
  l0.Loaded = self.f_box_MissionLayer_v2_25_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_OnceOnly_v3_64 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_64
  l0._graph = self
  l0._name = "box_OnceOnly_v3_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1141460059"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_64_Out
  l0.ResetOut = DummyFunction
  self.box_TaxiStrategiesController_81 = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self.box_TaxiStrategiesController_81
  l0._graph = self
  l0._name = "box_TaxiStrategiesController_81"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1252810606"
  l0.Started = self.f_box_TaxiStrategiesController_81_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self.box_MissionCheckpointReach_20 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_20
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1266692200"
  l0.Out = self.f_box_MissionCheckpointReach_20_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_SnapAndBind_33 = cbox:CreateBox("domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  l0 = self.box_SnapAndBind_33
  l0._graph = self
  l0._name = "box_SnapAndBind_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1293849265"
  l0.Attached = self.f_box_SnapAndBind_33_Attached
  self.box_DriveAndTalk_39 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_39
  l0._graph = self
  l0._name = "box_DriveAndTalk_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1294311540"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_39_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_39_TalkFailed
  self.box_DriveAndTalk_44 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_44
  l0._graph = self
  l0._name = "box_DriveAndTalk_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1331358626"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_44_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_44_TalkFailed
  self.box_TaxiRideReachDestinationMonitor_9 = cbox:CreateBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self.box_TaxiRideReachDestinationMonitor_9
  l0._graph = self
  l0._name = "box_TaxiRideReachDestinationMonitor_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1338122565"
  l0.Enabled = self.f_box_TaxiRideReachDestinationMonitor_9_Enabled
  l0.Disabled = self.f_box_TaxiRideReachDestinationMonitor_9_Disabled
  l0.ReachDestination = self.f_box_TaxiRideReachDestinationMonitor_9_ReachDestination
  l0.ClientDropOff = DummyFunction
  self.box_OnceOnly_v3_67 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_67
  l0._graph = self
  l0._name = "box_OnceOnly_v3_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1361166430"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_67_Out
  l0.ResetOut = DummyFunction
  self.box_TaxiRideVehicleMonitor_7 = cbox:CreateBox("domino/System/TaxiRideVehicleMonitor.lua")
  l0 = self.box_TaxiRideVehicleMonitor_7
  l0._graph = self
  l0._name = "box_TaxiRideVehicleMonitor_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1418174400"
  l0.Enabled = self.f_box_TaxiRideVehicleMonitor_7_Enabled
  l0.Disabled = DummyFunction
  l0.ClientDeath = self.f_box_TaxiRideVehicleMonitor_7_ClientDeath
  l0.VehicleUnusable = self.f_box_TaxiRideVehicleMonitor_7_VehicleUnusable
  l0.ClientBailedOut = self.f_box_TaxiRideVehicleMonitor_7_ClientBailedOut
  l0.PlayerAbandonedVehicle = self.f_box_TaxiRideVehicleMonitor_7_PlayerAbandonedVehicle
  self.box_DriveAndTalk_53 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_53
  l0._graph = self
  l0._name = "box_DriveAndTalk_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1428042934"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_53_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_53_TalkFailed
  self.box_TaxiRidePickUpController_8 = cbox:CreateBox("domino/System/TaxiRidePickUpController.lua")
  l0 = self.box_TaxiRidePickUpController_8
  l0._graph = self
  l0._name = "box_TaxiRidePickUpController_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1500995459"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TaxiRidePickUpController_8_Disabled
  l0.ClientSpawned = self.f_box_TaxiRidePickUpController_8_ClientSpawned
  l0.ClientPickedUp = self.f_box_TaxiRidePickUpController_8_ClientPickedUp
  l0.ClientConversationFinised = self.f_box_TaxiRidePickUpController_8_ClientConversationFinised
  self.box_DriveAndTalk_51 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_51
  l0._graph = self
  l0._name = "box_DriveAndTalk_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1512417677"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_51_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_51_TalkFailed
  self.box_CinematicPrep_10 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_10
  l0._graph = self
  l0._name = "box_CinematicPrep_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1567160605"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_10_PostOut
  self.box_OnceOnly_v3_11 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_11
  l0._graph = self
  l0._name = "box_OnceOnly_v3_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1586558762"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_11_Out
  l0.ResetOut = DummyFunction
  self.box_MissionLayer_v2_71 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_71
  l0._graph = self
  l0._name = "box_MissionLayer_v2_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1606430542"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_71_Unloaded
  l0.Reseted = DummyFunction
  self.box_DriveAndTalk_28 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_28
  l0._graph = self
  l0._name = "box_DriveAndTalk_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1663985359"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_28_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_28_TalkFailed
  self.box_OnceOnly_v3_68 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_68
  l0._graph = self
  l0._name = "box_OnceOnly_v3_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1675072380"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_68_Out
  l0.ResetOut = DummyFunction
  self.box_DriveAndTalk_42 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_42
  l0._graph = self
  l0._name = "box_DriveAndTalk_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1770671860"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_42_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_42_TalkFailed
  self.box_OnceOnly_v3_12 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_12
  l0._graph = self
  l0._name = "box_OnceOnly_v3_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1793369740"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_12_Out
  l0.ResetOut = DummyFunction
  self.box_MultipleOR_22 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_22
  l0._graph = self
  l0._name = "box_MultipleOR_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1818997823"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_22_Out
  self.box_OnceOnly_v3_61 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_61
  l0._graph = self
  l0._name = "box_OnceOnly_v3_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1906340373"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_61_Out
  l0.ResetOut = DummyFunction
  self.box_TaxiRatingController_21 = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self.box_TaxiRatingController_21
  l0._graph = self
  l0._name = "box_TaxiRatingController_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1923234458"
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = self.f_box_TaxiRatingController_21_RatingReset
  l0.RewardShown = DummyFunction
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self.box_Multiple_AND_19 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_19
  l0._graph = self
  l0._name = "box_Multiple_AND_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1927703321"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_19_Out
  self.box_DriveAndTalk_48 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_48
  l0._graph = self
  l0._name = "box_DriveAndTalk_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1948735340"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_48_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_48_TalkFailed
  self.box_ListWriter_78 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_78
  l0._graph = self
  l0._name = "box_ListWriter_78"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|2004823174"
  l0._DynamicAnchors = {Data = 3}
  l0.Added = self.f_box_ListWriter_78_Added
  l0.Removed = self.f_box_ListWriter_78_Removed
  l0.Out = self.f_box_ListWriter_78_Out
  self.box_OnceOnly_v3_60 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_60
  l0._graph = self
  l0._name = "box_OnceOnly_v3_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|2030103262"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_60_Out
  l0.ResetOut = DummyFunction
  self.box_OnceOnly_v3_36 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_36
  l0._graph = self
  l0._name = "box_OnceOnly_v3_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|2064191622"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_36_Out
  l0.ResetOut = DummyFunction
  self.box_TaxiRideReachDestinationMonitor_1 = cbox:CreateBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self.box_TaxiRideReachDestinationMonitor_1
  l0._graph = self
  l0._name = "box_TaxiRideReachDestinationMonitor_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|2078954579"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ReachDestination = DummyFunction
  l0.ClientDropOff = self.f_box_TaxiRideReachDestinationMonitor_1_ClientDropOff
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
  self:OnEnter_box_MultipleOR_22()
  l0 = self.box_MultipleOR_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1226098627", "1226098627", "Taxi14_Main", "CheckPoint_0", "box_MultipleOR_22.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_22()
  l0 = self.box_MultipleOR_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|90670213", "90670213", "Taxi14_Main", "In", "box_MultipleOR_22.Input", self, l0)
  l0:Input(0)
end
function export:f_box_GameplayInteractionController_77_Started()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: [Cantonese: It's my first time in the city.]", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'DriveAndTalk')-- Comment: [Cantonese: It's my first time in the city.]")
  l0 = self.box_DriveAndTalk_26
  l0.PawnList = self.GIC_Users
  l0.Conversation = "ConversationSetting.9223372049506588210"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372069460196083"
  l0 = self.box_GameplayInteractionController_77
  l1 = self.box_DriveAndTalk_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1391536789", "1391536789", "Taxi14_Main", "box_GameplayInteractionController_77.Started", "box_DriveAndTalk_26.Start", l0, l1)
  l1:Start()
end
function export:f_box_DriveAndTalk_56_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_62()
  l0 = self.box_DriveAndTalk_56
  l1 = self.box_OnceOnly_v3_62
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|2072049853", "2072049853", "Taxi14_Main", "box_DriveAndTalk_56.TalkFailed", "box_OnceOnly_v3_62.In", l0, l1)
  l1:In(1)
end
function export:f_box_DriveAndTalk_56_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_62()
  l0 = self.box_DriveAndTalk_56
  l1 = self.box_OnceOnly_v3_62
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|79508479", "79508479", "Taxi14_Main", "box_DriveAndTalk_56.TalkFinished", "box_OnceOnly_v3_62.In", l0, l1)
  l1:In(0)
end
function export:f_box_Simple_Node_3_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_GameplayInteractionController_77()
  l0 = self.box_GameplayInteractionController_77
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1539306157", "1539306157", "Taxi14_Main", "box_Simple_Node_3.Out", "box_GameplayInteractionController_77.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_DriveAndTalk_26_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_5()
  l0 = self.box_DriveAndTalk_26
  l1 = self.box_OnceOnly_v3_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1733761446", "1733761446", "Taxi14_Main", "box_DriveAndTalk_26.TalkFailed", "box_OnceOnly_v3_5.In", l0, l1)
  l1:In(1)
end
function export:f_box_DriveAndTalk_26_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_5()
  l0 = self.box_DriveAndTalk_26
  l1 = self.box_OnceOnly_v3_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1646275327", "1646275327", "Taxi14_Main", "box_DriveAndTalk_26.TalkFinished", "box_OnceOnly_v3_5.In", l0, l1)
  l1:In(0)
end
function export:f_box_OnceOnly_v3_5_Out()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: Sorry? Oh. Wait. Let me activate my translator.", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'DriveAndTalk')-- Comment: Sorry? Oh. Wait. Let me activate my translator.")
  l0 = self.box_DriveAndTalk_28
  l0.PawnList = self.GIC_Users
  l0.Conversation = "ConversationSetting.9223372049506588211"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372069460196083"
  l0 = self.box_OnceOnly_v3_5
  l1 = self.box_DriveAndTalk_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|78922670", "78922670", "Taxi14_Main", "box_OnceOnly_v3_5.Out", "box_DriveAndTalk_28.Start", l0, l1)
  l1:Start()
end
function export:f_box_OnceOnly_v3_62_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TaxiRideReachDestinationMonitor_13()
  l0 = self.box_OnceOnly_v3_62
  l1 = self.box_TaxiRideReachDestinationMonitor_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1016145262", "1016145262", "Taxi14_Main", "box_OnceOnly_v3_62.Out", "box_TaxiRideReachDestinationMonitor_13.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MissionMessageController_v3_46_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_71
  l0.LayerName = "Taxi14_Main"
  l0 = self.box_MissionMessageController_v3_46
  l1 = self.box_MissionLayer_v2_71
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1662765145", "1662765145", "Taxi14_Main", "box_MissionMessageController_v3_46.Out", "box_MissionLayer_v2_71.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_OnceOnly_v3_49_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TaxiRideReachDestinationMonitor_9()
  l0 = self.box_OnceOnly_v3_49
  l1 = self.box_TaxiRideReachDestinationMonitor_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1816566423", "1816566423", "Taxi14_Main", "box_OnceOnly_v3_49.Out", "box_TaxiRideReachDestinationMonitor_9.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_OnceOnly_v3_41_Out()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: Let me guess... Not here?", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'DriveAndTalk')-- Comment: Let me guess... Not here?")
  l0 = self.box_DriveAndTalk_48
  l0.PawnList = self.GIC_Users
  l0.Conversation = "ConversationSetting.9223372049506588204"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372069460196083"
  l0 = self.box_OnceOnly_v3_41
  l1 = self.box_DriveAndTalk_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|388127883", "388127883", "Taxi14_Main", "box_OnceOnly_v3_41.Out", "box_DriveAndTalk_48.Start", l0, l1)
  l1:Start()
end
function export:f_box_Simple_Node_23_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TaxiRideVehicleMonitor_7()
  l0 = self.box_TaxiRideVehicleMonitor_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|714358532", "714358532", "Taxi14_Main", "box_Simple_Node_23.Out", "box_TaxiRideVehicleMonitor_7.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_SetActionMap_v2_55_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  DrawTextToScreen("Comment: [Cantonese: Finally!]/[Cantonese: See that park there? Hot piece of real estate!]/[English: Park! Hot piece!]", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'DriveAndTalk')-- Comment: [Cantonese: Finally!]/[Cantonese: See that park there? Hot piece of real estate!]/[English: Park! Hot piece!]")
  l0 = self.box_DriveAndTalk_59
  l0.PawnList = self.GIC_Users
  l0.Conversation = "ConversationSetting.9223372049506588212"
  l0.StartDelay = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|2096750922", "2096750922", "Taxi14_Main", "box_SetActionMap_v2_55.Pushed", "box_DriveAndTalk_59.Start", clone, l0)
  l0:Start()
end
function export:f_box_DriveAndTalk_40_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_12()
  l0 = self.box_DriveAndTalk_40
  l1 = self.box_OnceOnly_v3_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1253890243", "1253890243", "Taxi14_Main", "box_DriveAndTalk_40.TalkFailed", "box_OnceOnly_v3_12.In", l0, l1)
  l1:In(1)
end
function export:f_box_DriveAndTalk_40_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_12()
  l0 = self.box_DriveAndTalk_40
  l1 = self.box_OnceOnly_v3_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|989676479", "989676479", "Taxi14_Main", "box_DriveAndTalk_40.TalkFinished", "box_OnceOnly_v3_12.In", l0, l1)
  l1:In(0)
end
function export:f_box_DriveAndTalk_54_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_61()
  l0 = self.box_DriveAndTalk_54
  l1 = self.box_OnceOnly_v3_61
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1711737786", "1711737786", "Taxi14_Main", "box_DriveAndTalk_54.TalkFailed", "box_OnceOnly_v3_61.In", l0, l1)
  l1:In(1)
end
function export:f_box_DriveAndTalk_54_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_61()
  l0 = self.box_DriveAndTalk_54
  l1 = self.box_OnceOnly_v3_61
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|564599419", "564599419", "Taxi14_Main", "box_DriveAndTalk_54.TalkFinished", "box_OnceOnly_v3_61.In", l0, l1)
  l1:In(0)
end
function export:f_box_OnceOnly_v3_70_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRideReachDestinationMonitor_1
  l0.Client = self.MrLi
  l0.DropOffIcon = self.PlayerEntity
  l0.LastDestination = 1
  l0.ManageObjective = 1
  l0.CustomObjective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF140",
    item = "Objective_Reach_3",
    id = "630501"
  }
  l0.Config = "TaxiRideGameplayBrick.9223372058239048238"
  l0 = self.box_OnceOnly_v3_70
  l1 = self.box_TaxiRideReachDestinationMonitor_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1665584453", "1665584453", "Taxi14_Main", "box_OnceOnly_v3_70.Out", "box_TaxiRideReachDestinationMonitor_1.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_OnceOnly_v3_43_Out()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: [English: Garden park.]/[English: Idiot.]", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'DriveAndTalk')-- Comment: [English: Garden park.]/[English: Idiot.]")
  l0 = self.box_DriveAndTalk_51
  l0.PawnList = self.GIC_Users
  l0.Conversation = "ConversationSetting.9223372049506588205"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372069460196083"
  l0 = self.box_OnceOnly_v3_43
  l1 = self.box_DriveAndTalk_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|874006860", "874006860", "Taxi14_Main", "box_OnceOnly_v3_43.Out", "box_DriveAndTalk_51.Start", l0, l1)
  l1:Start()
end
function export:f_box_TaxiStrategiesController_84_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiStrategiesController_84
  l1 = self.box_MissionMessageController_v3_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|2052965113", "2052965113", "Taxi14_Main", "box_TaxiStrategiesController_84.Stopped", "box_MissionMessageController_v3_46.ShowMissionComplete", l0, l1)
  l1:ShowMissionComplete()
end
function export:f_box_DriveAndTalk_59_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiStrategiesController_69
  l0.Config = "TaxiRideStrategyConfig.9223372047964168915"
  l0 = self.box_DriveAndTalk_59
  l1 = self.box_TaxiStrategiesController_69
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|968529507", "968529507", "Taxi14_Main", "box_DriveAndTalk_59.Started", "box_TaxiStrategiesController_69.Pause", l0, l1)
  l1:Pause()
end
function export:f_box_DriveAndTalk_59_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_70()
  l0 = self.box_DriveAndTalk_59
  l1 = self.box_OnceOnly_v3_70
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1599537201", "1599537201", "Taxi14_Main", "box_DriveAndTalk_59.TalkFailed", "box_OnceOnly_v3_70.In", l0, l1)
  l1:In(1)
end
function export:f_box_DriveAndTalk_59_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_70()
  l0 = self.box_DriveAndTalk_59
  l1 = self.box_OnceOnly_v3_70
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|923258333", "923258333", "Taxi14_Main", "box_DriveAndTalk_59.TalkFinished", "box_OnceOnly_v3_70.In", l0, l1)
  l1:In(0)
end
function export:f_box_DriveAndTalk_59_TalkPaused()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_70()
  l0 = self.box_DriveAndTalk_59
  l1 = self.box_OnceOnly_v3_70
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1546786902", "1546786902", "Taxi14_Main", "box_DriveAndTalk_59.TalkPaused", "box_OnceOnly_v3_70.In", l0, l1)
  l1:In(2)
end
function export:f_box_SetActionMap_v2_4_Popped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TaxiRatingController_16
  l0.MissionName = self.Mission
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1693704289", "1693704289", "Taxi14_Main", "box_SetActionMap_v2_4.Popped", "box_TaxiRatingController_16.ShowReward", clone, l0)
  l0:ShowReward()
end
function export:f_box_TaxiRatingController_16_RewardShown()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiStrategiesController_84
  l0.Config = "TaxiRideStrategyConfig.9223372047964168915"
  l0 = self.box_TaxiRatingController_16
  l1 = self.box_TaxiStrategiesController_84
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|576432988", "576432988", "Taxi14_Main", "box_TaxiRatingController_16.RewardShown", "box_TaxiStrategiesController_84.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_TaxiRideReachDestinationMonitor_13_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic_nocameralock"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|496497536"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_box_SetActionMap_v2_55_Pushed
  l0.Popped = DummyFunction
  l0 = self.box_TaxiRideReachDestinationMonitor_13
  l1 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|2050307626", "2050307626", "Taxi14_Main", "box_TaxiRideReachDestinationMonitor_13.Disabled", "box_SetActionMap_v2_55.Push", l0, l1)
  l1:Push()
end
function export:f_box_TaxiRideReachDestinationMonitor_13_Enabled()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: You're a sports fan?/[Cantonese: I plan to build giant condos next to the sports park.]", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'DriveAndTalk')-- Comment: You're a sports fan?/[Cantonese: I plan to build giant condos next to the sports park.]")
  l0 = self.box_DriveAndTalk_31
  l0.PawnList = self.GIC_Users
  l0.Conversation = "ConversationSetting.9223372049506588197"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372069460196083"
  l0 = self.box_TaxiRideReachDestinationMonitor_13
  l1 = self.box_DriveAndTalk_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1859431763", "1859431763", "Taxi14_Main", "box_TaxiRideReachDestinationMonitor_13.Enabled", "box_DriveAndTalk_31.Start", l0, l1)
  l1:Start()
end
function export:f_box_TaxiRideReachDestinationMonitor_13_ReachDestination()
  local l0
  self = self._graph
  self:OnEnter_box_TaxiRideReachDestinationMonitor_13()
  l0 = self.box_TaxiRideReachDestinationMonitor_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1513170015", "1513170015", "Taxi14_Main", "box_TaxiRideReachDestinationMonitor_13.ReachDestination", "box_TaxiRideReachDestinationMonitor_13.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_DriveAndTalk_50_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_41()
  l0 = self.box_DriveAndTalk_50
  l1 = self.box_OnceOnly_v3_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1156588880", "1156588880", "Taxi14_Main", "box_DriveAndTalk_50.TalkFailed", "box_OnceOnly_v3_41.In", l0, l1)
  l1:In(1)
end
function export:f_box_DriveAndTalk_50_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_41()
  l0 = self.box_DriveAndTalk_50
  l1 = self.box_OnceOnly_v3_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|121847188", "121847188", "Taxi14_Main", "box_DriveAndTalk_50.TalkFinished", "box_OnceOnly_v3_41.In", l0, l1)
  l1:In(0)
end
function export:f_box_Simple_Node_14_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|133240549"
  l0.Out = self.f_box_Simple_Node_3_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|695213125", "695213125", "Taxi14_Main", "box_Simple_Node_14.Out", "box_Simple_Node_3.In", clone, l0)
  l0:In()
end
function export:f_box_OnceOnly_v3_35_Out()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: Parking lot?... Uh. Okay.", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'DriveAndTalk')-- Comment: Parking lot?... Uh. Okay.")
  l0 = self.box_DriveAndTalk_40
  l0.PawnList = self.GIC_Users
  l0.Conversation = "ConversationSetting.9223372049506588194"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372069460196083"
  l0 = self.box_OnceOnly_v3_35
  l1 = self.box_DriveAndTalk_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1842606760", "1842606760", "Taxi14_Main", "box_OnceOnly_v3_35.Out", "box_DriveAndTalk_40.Start", l0, l1)
  l1:Start()
end
function export:f_box_DriveAndTalk_31_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Player_Proximity_Monitor_2()
  l0 = self.box_DriveAndTalk_31
  l1 = self.box_Player_Proximity_Monitor_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|727477914", "727477914", "Taxi14_Main", "box_DriveAndTalk_31.Started", "box_Player_Proximity_Monitor_2.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_DriveAndTalk_31_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_64()
  l0 = self.box_DriveAndTalk_31
  l1 = self.box_OnceOnly_v3_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1991922285", "1991922285", "Taxi14_Main", "box_DriveAndTalk_31.TalkFailed", "box_OnceOnly_v3_64.In", l0, l1)
  l1:In(1)
end
function export:f_box_DriveAndTalk_31_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_64()
  l0 = self.box_DriveAndTalk_31
  l1 = self.box_OnceOnly_v3_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1636584645", "1636584645", "Taxi14_Main", "box_DriveAndTalk_31.TalkFinished", "box_OnceOnly_v3_64.In", l0, l1)
  l1:In(0)
end
function export:f_box_TaxiRideReachDestinationMonitor_18_Disabled()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: [Cantonese: What is this place?]/[Cantonese: I want a park! Like a play park. You idiot.]", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'DriveAndTalk')-- Comment: [Cantonese: What is this place?]/[Cantonese: I want a park! Like a play park. You idiot.]")
  l0 = self.box_DriveAndTalk_50
  l0.PawnList = self.GIC_Users
  l0.Conversation = "ConversationSetting.9223372049506588203"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372069460196083"
  l0 = self.box_TaxiRideReachDestinationMonitor_18
  l1 = self.box_DriveAndTalk_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1581031964", "1581031964", "Taxi14_Main", "box_TaxiRideReachDestinationMonitor_18.Disabled", "box_DriveAndTalk_50.Start", l0, l1)
  l1:Start()
end
function export:f_box_TaxiRideReachDestinationMonitor_18_ReachDestination()
  local l0
  self = self._graph
  self:OnEnter_box_TaxiRideReachDestinationMonitor_18()
  l0 = self.box_TaxiRideReachDestinationMonitor_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1118539339", "1118539339", "Taxi14_Main", "box_TaxiRideReachDestinationMonitor_18.ReachDestination", "box_TaxiRideReachDestinationMonitor_18.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_DriveAndTalk_57_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_68()
  l0 = self.box_DriveAndTalk_57
  l1 = self.box_OnceOnly_v3_68
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|848432829", "848432829", "Taxi14_Main", "box_DriveAndTalk_57.TalkFailed", "box_OnceOnly_v3_68.In", l0, l1)
  l1:In(1)
end
function export:f_box_DriveAndTalk_57_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_68()
  l0 = self.box_DriveAndTalk_57
  l1 = self.box_OnceOnly_v3_68
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|172153961", "172153961", "Taxi14_Main", "box_DriveAndTalk_57.TalkFinished", "box_OnceOnly_v3_68.In", l0, l1)
  l1:In(0)
end
function export:f_box_Player_Proximity_Monitor_2_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|994849951"
  l0.Out = self.f_box_Simple_Node_14_Out
  l0 = self.box_Player_Proximity_Monitor_2
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|756572262", "756572262", "Taxi14_Main", "box_Player_Proximity_Monitor_2.Disabled", "box_Simple_Node_14.In", l0, l1)
  l1:In()
end
function export:f_box_Player_Proximity_Monitor_2_EnterRadius()
  local l0
  self = self._graph
  self:OnEnter_box_Player_Proximity_Monitor_2()
  l0 = self.box_Player_Proximity_Monitor_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1863281537", "1863281537", "Taxi14_Main", "box_Player_Proximity_Monitor_2.EnterRadius", "box_Player_Proximity_Monitor_2.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_MissionLayer_v2_25_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1330210851"
  l0.Out = self.f_box_Get_Player_ID_52_Out
  l0 = self.box_MissionLayer_v2_25
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|129286607", "129286607", "Taxi14_Main", "box_MissionLayer_v2_25.Loaded", "box_Get_Player_ID_52.In", l0, l1)
  l1:In()
end
function export:f_box_Set_Entity_15_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.NudleTranslate = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TaxiRidePickUpController_8()
  l0 = self.box_TaxiRidePickUpController_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1786495270", "1786495270", "Taxi14_Main", "box_Set_Entity_15.Out", "box_TaxiRidePickUpController_8.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_OnceOnly_v3_64_Out()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: [English: Construct.]", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'DriveAndTalk')-- Comment: [English: Construct.]")
  l0 = self.box_DriveAndTalk_39
  l0.PawnList = self.GIC_Users
  l0.Conversation = "ConversationSetting.9223372049506588198"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372069460196083"
  l0 = self.box_OnceOnly_v3_64
  l1 = self.box_DriveAndTalk_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1864342912", "1864342912", "Taxi14_Main", "box_OnceOnly_v3_64.Out", "box_DriveAndTalk_39.Start", l0, l1)
  l1:Start()
end
function export:f_box_TaxiStrategiesController_81_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_SnapAndBind_33
  l0.Parent = self.PlayerVehicle
  l0.Child = self.NudleTranslate
  l0.yPosOffset = 2
  l0 = self.box_TaxiStrategiesController_81
  l1 = self.box_SnapAndBind_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1472936091", "1472936091", "Taxi14_Main", "box_TaxiStrategiesController_81.Started", "box_SnapAndBind_33.Attach", l0, l1)
  l1:Attach()
end
function export:f_box_MissionCheckpointReach_20_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = "9223372058339622024"
  l0._graph = self
  l0._name = "box_Set_Entity_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1132074673"
  l0.Out = self.f_box_Set_Entity_15_Out
  l0 = self.box_MissionCheckpointReach_20
  l1 = Boxes[PathID("domino/System/SetEntity.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1304579089", "1304579089", "Taxi14_Main", "box_MissionCheckpointReach_20.Out", "box_Set_Entity_15.FromEntity", l0, l1)
  l1:FromEntity()
end
function export:f_box_SnapAndBind_33_Attached()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: [Cantonese: There are parks I need to see.]/[English: Parking visits with vehicle.]", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'DriveAndTalk')-- Comment: [Cantonese: There are parks I need to see.]/[English: Parking visits with vehicle.]")
  l0 = self.box_DriveAndTalk_42
  l0.PawnList = self.GIC_Users
  l0.Conversation = "ConversationSetting.9223372049506588193"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372069460196083"
  l0 = self.box_SnapAndBind_33
  l1 = self.box_DriveAndTalk_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1004143523", "1004143523", "Taxi14_Main", "box_SnapAndBind_33.Attached", "box_DriveAndTalk_42.Start", l0, l1)
  l1:Start()
end
function export:f_box_DriveAndTalk_39_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_67()
  l0 = self.box_DriveAndTalk_39
  l1 = self.box_OnceOnly_v3_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|2068597032", "2068597032", "Taxi14_Main", "box_DriveAndTalk_39.TalkFailed", "box_OnceOnly_v3_67.In", l0, l1)
  l1:In(1)
end
function export:f_box_DriveAndTalk_39_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_67()
  l0 = self.box_DriveAndTalk_39
  l1 = self.box_OnceOnly_v3_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|434518482", "434518482", "Taxi14_Main", "box_DriveAndTalk_39.TalkFinished", "box_OnceOnly_v3_67.In", l0, l1)
  l1:In(0)
end
function export:f_box_Ordered_Output_24_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|2133439281"
  l0.Out = self.f_box_Simple_Node_17_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1746941053", "1746941053", "Taxi14_Main", "box_Ordered_Output_24.Out", "box_Simple_Node_17.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_24_Out_1()
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
  l0._name = "box_SetActionMap_v2_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|931815945"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_box_SetActionMap_v2_4_Popped
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1259208229", "1259208229", "Taxi14_Main", "box_Ordered_Output_24.Out", "box_SetActionMap_v2_4.Pop", clone, l0)
  l0:Pop()
end
function export:f_box_Get_Player_ID_52_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_10
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|546441385", "546441385", "Taxi14_Main", "box_Get_Player_ID_52.Out", "box_CinematicPrep_10.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_DriveAndTalk_44_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_36()
  l0 = self.box_DriveAndTalk_44
  l1 = self.box_OnceOnly_v3_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|655344375", "655344375", "Taxi14_Main", "box_DriveAndTalk_44.TalkFailed", "box_OnceOnly_v3_36.In", l0, l1)
  l1:In(1)
end
function export:f_box_DriveAndTalk_44_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_36()
  l0 = self.box_DriveAndTalk_44
  l1 = self.box_OnceOnly_v3_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|697889973", "697889973", "Taxi14_Main", "box_DriveAndTalk_44.TalkFinished", "box_OnceOnly_v3_36.In", l0, l1)
  l1:In(0)
end
function export:f_box_TaxiRideReachDestinationMonitor_9_Disabled()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: [Cantonese: Nice. But no.]/[Cantonese: Park with sports.]", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'DriveAndTalk')-- Comment: [Cantonese: Nice. But no.]/[Cantonese: Park with sports.]")
  l0 = self.box_DriveAndTalk_53
  l0.PawnList = self.GIC_Users
  l0.Conversation = "ConversationSetting.9223372049506588206"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372069460196083"
  l0 = self.box_TaxiRideReachDestinationMonitor_9
  l1 = self.box_DriveAndTalk_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1867919385", "1867919385", "Taxi14_Main", "box_TaxiRideReachDestinationMonitor_9.Disabled", "box_DriveAndTalk_53.Start", l0, l1)
  l1:Start()
end
function export:f_box_TaxiRideReachDestinationMonitor_9_Enabled()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: [Cantonese: Real Estate boom for condos here.]/[English: Immovable properties.]", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'DriveAndTalk')-- Comment: [Cantonese: Real Estate boom for condos here.]/[English: Immovable properties.]")
  l0 = self.box_DriveAndTalk_44
  l0.PawnList = self.GIC_Users
  l0.Conversation = "ConversationSetting.9223372049506588195"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372069460196083"
  l0 = self.box_TaxiRideReachDestinationMonitor_9
  l1 = self.box_DriveAndTalk_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1893941938", "1893941938", "Taxi14_Main", "box_TaxiRideReachDestinationMonitor_9.Enabled", "box_DriveAndTalk_44.Start", l0, l1)
  l1:Start()
end
function export:f_box_TaxiRideReachDestinationMonitor_9_ReachDestination()
  local l0
  self = self._graph
  self:OnEnter_box_TaxiRideReachDestinationMonitor_9()
  l0 = self.box_TaxiRideReachDestinationMonitor_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|736021137", "736021137", "Taxi14_Main", "box_TaxiRideReachDestinationMonitor_9.ReachDestination", "box_TaxiRideReachDestinationMonitor_9.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_OnceOnly_v3_67_Out()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: [Cantonese: Make lots of money.]/[English: Wealth.]", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'DriveAndTalk')-- Comment: [Cantonese: Make lots of money.]/[English: Wealth.]")
  l0 = self.box_DriveAndTalk_57
  l0.PawnList = self.GIC_Users
  l0.Conversation = "ConversationSetting.9223372049506588200"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372069460196083"
  l0 = self.box_OnceOnly_v3_67
  l1 = self.box_DriveAndTalk_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1507947019", "1507947019", "Taxi14_Main", "box_OnceOnly_v3_67.Out", "box_DriveAndTalk_57.Start", l0, l1)
  l1:Start()
end
function export:f_box_TaxiRideVehicleMonitor_7_ClientBailedOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_6()
  l0 = self.box_TaxiRideVehicleMonitor_7
  l1 = self.box_Taxi_AbortMission_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1339757412", "1339757412", "Taxi14_Main", "box_TaxiRideVehicleMonitor_7.ClientBailedOut", "box_Taxi_AbortMission_6.ClientBailedOut", l0, l1)
  l1:ClientBailedOut()
end
function export:f_box_TaxiRideVehicleMonitor_7_ClientDeath()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_6()
  l0 = self.box_TaxiRideVehicleMonitor_7
  l1 = self.box_Taxi_AbortMission_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|2095045221", "2095045221", "Taxi14_Main", "box_TaxiRideVehicleMonitor_7.ClientDeath", "box_Taxi_AbortMission_6.ClientDead", l0, l1)
  l1:ClientDead()
end
function export:f_box_TaxiRideVehicleMonitor_7_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_19()
  l0 = self.box_TaxiRideVehicleMonitor_7
  l1 = self.box_Multiple_AND_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|479974729", "479974729", "Taxi14_Main", "box_TaxiRideVehicleMonitor_7.Enabled", "box_Multiple_AND_19.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_TaxiRideVehicleMonitor_7_PlayerAbandonedVehicle()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_6()
  l0 = self.box_TaxiRideVehicleMonitor_7
  l1 = self.box_Taxi_AbortMission_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|535841750", "535841750", "Taxi14_Main", "box_TaxiRideVehicleMonitor_7.PlayerAbandonedVehicle", "box_Taxi_AbortMission_6.PlayerAbandonedVehicle", l0, l1)
  l1:PlayerAbandonedVehicle()
end
function export:f_box_TaxiRideVehicleMonitor_7_VehicleUnusable()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_6()
  l0 = self.box_TaxiRideVehicleMonitor_7
  l1 = self.box_Taxi_AbortMission_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1396484876", "1396484876", "Taxi14_Main", "box_TaxiRideVehicleMonitor_7.VehicleUnusable", "box_Taxi_AbortMission_6.VehicleUnusable", l0, l1)
  l1:VehicleUnusable()
end
function export:f_box_DriveAndTalk_53_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_60()
  l0 = self.box_DriveAndTalk_53
  l1 = self.box_OnceOnly_v3_60
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1749308957", "1749308957", "Taxi14_Main", "box_DriveAndTalk_53.TalkFailed", "box_OnceOnly_v3_60.In", l0, l1)
  l1:In(1)
end
function export:f_box_DriveAndTalk_53_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_60()
  l0 = self.box_DriveAndTalk_53
  l1 = self.box_OnceOnly_v3_60
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|295411228", "295411228", "Taxi14_Main", "box_DriveAndTalk_53.TalkFinished", "box_OnceOnly_v3_60.In", l0, l1)
  l1:In(0)
end
function export:f_box_TaxiRidePickUpController_8_ClientConversationFinised()
  local l0
  self = self._graph
  self:OnEnter_box_TaxiRidePickUpController_8()
  l0 = self.box_TaxiRidePickUpController_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|641339413", "641339413", "Taxi14_Main", "box_TaxiRidePickUpController_8.ClientConversationFinised", "box_TaxiRidePickUpController_8.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_TaxiRidePickUpController_8_ClientPickedUp()
  local l0
  self = self._graph
  l0 = self.box_TaxiRidePickUpController_8
  self.PlayerVehicle = l0.Vehicle
end
function export:f_box_TaxiRidePickUpController_8_ClientSpawned()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRidePickUpController_8
  self.MrLi = l0.Client
  self:OnEnter_box_TaxiRideVehicleMonitor_7()
  l1 = self.box_TaxiRideVehicleMonitor_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1691604028", "1691604028", "Taxi14_Main", "box_TaxiRidePickUpController_8.ClientSpawned", "box_TaxiRideVehicleMonitor_7.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TaxiRidePickUpController_8_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_78
  l0.Input = self.GIC_Users
  l0.Data[0] = self.PlayerEntity
  l0.Data[1] = self.MrLi
  l0.Data[2] = self.NudleTranslate
  l0 = self.box_TaxiRidePickUpController_8
  l1 = self.box_ListWriter_78
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|474215774", "474215774", "Taxi14_Main", "box_TaxiRidePickUpController_8.Disabled", "box_ListWriter_78.Add", l0, l1)
  l1:Add()
end
function export:f_box_DriveAndTalk_51_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_49()
  l0 = self.box_DriveAndTalk_51
  l1 = self.box_OnceOnly_v3_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|288587558", "288587558", "Taxi14_Main", "box_DriveAndTalk_51.TalkFailed", "box_OnceOnly_v3_49.In", l0, l1)
  l1:In(1)
end
function export:f_box_DriveAndTalk_51_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_49()
  l0 = self.box_DriveAndTalk_51
  l1 = self.box_OnceOnly_v3_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|211645548", "211645548", "Taxi14_Main", "box_DriveAndTalk_51.TalkFinished", "box_OnceOnly_v3_49.In", l0, l1)
  l1:In(0)
end
function export:f_box_CinematicPrep_10_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_20
  l0.Checkpoint = "CheckPoint_0"
  l0 = self.box_CinematicPrep_10
  l1 = self.box_MissionCheckpointReach_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1137744528", "1137744528", "Taxi14_Main", "box_CinematicPrep_10.PostOut", "box_MissionCheckpointReach_20.In", l0, l1)
  l1:In()
end
function export:f_box_OnceOnly_v3_11_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_19()
  l0 = self.box_OnceOnly_v3_11
  l1 = self.box_Multiple_AND_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1141935274", "1141935274", "Taxi14_Main", "box_OnceOnly_v3_11.Out", "box_Multiple_AND_19.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_MissionLayer_v2_71_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_71
  l1 = self.box_MissionController_v4_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1348886369", "1348886369", "Taxi14_Main", "box_MissionLayer_v2_71.Unloaded", "box_MissionController_v4_30.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_DriveAndTalk_28_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_11()
  l0 = self.box_DriveAndTalk_28
  l1 = self.box_OnceOnly_v3_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|305565263", "305565263", "Taxi14_Main", "box_DriveAndTalk_28.TalkFailed", "box_OnceOnly_v3_11.In", l0, l1)
  l1:In(1)
end
function export:f_box_DriveAndTalk_28_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_11()
  l0 = self.box_DriveAndTalk_28
  l1 = self.box_OnceOnly_v3_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|886754506", "886754506", "Taxi14_Main", "box_DriveAndTalk_28.TalkFinished", "box_OnceOnly_v3_11.In", l0, l1)
  l1:In(0)
end
function export:f_box_OnceOnly_v3_68_Out()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: Ah. Construct wealth. Huh? Yeah. You're in real estate.", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'DriveAndTalk')-- Comment: Ah. Construct wealth. Huh? Yeah. You're in real estate.")
  l0 = self.box_DriveAndTalk_58
  l0.PawnList = self.GIC_Users
  l0.Conversation = "ConversationSetting.9223372049506588199"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372069460196083"
  l0 = self.box_OnceOnly_v3_68
  l1 = self.box_DriveAndTalk_58
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1570707163", "1570707163", "Taxi14_Main", "box_OnceOnly_v3_68.Out", "box_DriveAndTalk_58.Start", l0, l1)
  l1:Start()
end
function export:f_box_DriveAndTalk_42_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_35()
  l0 = self.box_DriveAndTalk_42
  l1 = self.box_OnceOnly_v3_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|382240010", "382240010", "Taxi14_Main", "box_DriveAndTalk_42.TalkFailed", "box_OnceOnly_v3_35.In", l0, l1)
  l1:In(1)
end
function export:f_box_DriveAndTalk_42_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_35()
  l0 = self.box_DriveAndTalk_42
  l1 = self.box_OnceOnly_v3_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|2033625610", "2033625610", "Taxi14_Main", "box_DriveAndTalk_42.TalkFinished", "box_OnceOnly_v3_35.In", l0, l1)
  l1:In(0)
end
function export:f_box_OnceOnly_v3_12_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TaxiRideReachDestinationMonitor_18()
  l0 = self.box_OnceOnly_v3_12
  l1 = self.box_TaxiRideReachDestinationMonitor_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|597579956", "597579956", "Taxi14_Main", "box_OnceOnly_v3_12.Out", "box_TaxiRideReachDestinationMonitor_18.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MultipleOR_22_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_25
  l0.LayerName = "Taxi14_Main"
  l0 = self.box_MultipleOR_22
  l1 = self.box_MissionLayer_v2_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|2094465685", "2094465685", "Taxi14_Main", "box_MultipleOR_22.Out", "box_MissionLayer_v2_25.Load", l0, l1)
  l1:Load()
end
function export:f_box_OnceOnly_v3_61_Out()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: Competition./Park./Sports stadium!", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'DriveAndTalk')-- Comment: Competition./Park./Sports stadium!")
  l0 = self.box_DriveAndTalk_56
  l0.PawnList = self.GIC_Users
  l0.Conversation = "ConversationSetting.9223372049506588208"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372069460196083"
  l0 = self.box_OnceOnly_v3_61
  l1 = self.box_DriveAndTalk_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1646907758", "1646907758", "Taxi14_Main", "box_OnceOnly_v3_61.Out", "box_DriveAndTalk_56.Start", l0, l1)
  l1:Start()
end
function export:f_box_TaxiRatingController_21_RatingReset()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiStrategiesController_81
  l0.Config = "TaxiRideStrategyConfig.9223372047964168915"
  l0 = self.box_TaxiRatingController_21
  l1 = self.box_TaxiStrategiesController_81
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|992223568", "992223568", "Taxi14_Main", "box_TaxiRatingController_21.RatingReset", "box_TaxiStrategiesController_81.Start", l0, l1)
  l1:Start()
end
function export:f_box_Multiple_AND_19_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRatingController_21
  l0.MissionName = self.Mission
  l0 = self.box_Multiple_AND_19
  l1 = self.box_TaxiRatingController_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|148680927", "148680927", "Taxi14_Main", "box_Multiple_AND_19.Out", "box_TaxiRatingController_21.ResetRating", l0, l1)
  l1:ResetRating()
end
function export:f_box_DriveAndTalk_48_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_43()
  l0 = self.box_DriveAndTalk_48
  l1 = self.box_OnceOnly_v3_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|76126831", "76126831", "Taxi14_Main", "box_DriveAndTalk_48.TalkFailed", "box_OnceOnly_v3_43.In", l0, l1)
  l1:In(1)
end
function export:f_box_DriveAndTalk_48_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_43()
  l0 = self.box_DriveAndTalk_48
  l1 = self.box_OnceOnly_v3_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1957329783", "1957329783", "Taxi14_Main", "box_DriveAndTalk_48.TalkFinished", "box_OnceOnly_v3_43.In", l0, l1)
  l1:In(0)
end
function export:f_box_ListWriter_78_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_78
  self.GIC_Users = l0.Target
  self:OnEnter_box_GameplayInteractionController_77()
  l1 = self.box_GameplayInteractionController_77
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1971557919", "1971557919", "Taxi14_Main", "box_ListWriter_78.Added", "box_GameplayInteractionController_77.Start", l0, l1)
  l1:Start()
end
function export:f_box_ListWriter_78_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_78
  self.GIC_Users = l0.Target
end
function export:f_box_ListWriter_78_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_78
  self.GIC_Users = l0.Target
end
function export:f_box_OnceOnly_v3_60_Out()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: [English: Competition]/[English: Park]", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'DriveAndTalk')-- Comment: [English: Competition]/[English: Park]")
  l0 = self.box_DriveAndTalk_54
  l0.PawnList = self.GIC_Users
  l0.Conversation = "ConversationSetting.9223372049506588207"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372069460196083"
  l0 = self.box_OnceOnly_v3_60
  l1 = self.box_DriveAndTalk_54
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|193010029", "193010029", "Taxi14_Main", "box_OnceOnly_v3_60.Out", "box_DriveAndTalk_54.Start", l0, l1)
  l1:Start()
end
function export:f_box_OnceOnly_v3_36_Out()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: That's right. Garden parks are -- uhm --immovable.", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'DriveAndTalk')-- Comment: That's right. Garden parks are -- uhm --immovable.")
  l0 = self.box_DriveAndTalk_47
  l0.PawnList = self.GIC_Users
  l0.Conversation = "ConversationSetting.9223372049506588196"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372069460196083"
  l0 = self.box_OnceOnly_v3_36
  l1 = self.box_DriveAndTalk_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|20771505", "20771505", "Taxi14_Main", "box_OnceOnly_v3_36.Out", "box_DriveAndTalk_47.Start", l0, l1)
  l1:Start()
end
function export:f_box_TaxiRideReachDestinationMonitor_1_ClientDropOff()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|1327785016"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_24_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_24_Out_1
  l0 = self.box_TaxiRideReachDestinationMonitor_1
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|577667662", "577667662", "Taxi14_Main", "box_TaxiRideReachDestinationMonitor_1.ClientDropOff", "box_Ordered_Output_24.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_17_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|466710403"
  l0.Out = self.f_box_Simple_Node_23_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi14.domino|@Taxi14_Main|402892006", "402892006", "Taxi14_Main", "box_Simple_Node_17.Out", "box_Simple_Node_23.In", clone, l0)
  l0:In()
end
function export:OnEnter_box_GameplayInteractionController_77()
  local l0
  l0 = self.box_GameplayInteractionController_77
  l0.Users = self.GIC_Users
  l0.RuleConfig = "GameplayConversationSettings.9223372069460196083"
end
function export:OnEnter_box_OnceOnly_v3_5()
end
function export:OnEnter_box_OnceOnly_v3_62()
end
function export:OnEnter_box_OnceOnly_v3_49()
end
function export:OnEnter_box_OnceOnly_v3_41()
end
function export:OnEnter_box_Taxi_AbortMission_6()
  local l0
  l0 = self.box_Taxi_AbortMission_6
  l0.MissionName = self.Mission
  l0.LayerName = "Taxi14_Main"
  l0.StrategyConfig = "TaxiRideStrategyConfig.9223372047964168915"
  l0.Pawn1 = self.MrLi
  l0.Pawn2 = self.PlayerEntity
  l0.Vehicle = self.PlayerVehicle
  l0.Conversation = "ConversationSetting.9223372049506588201"
end
function export:OnEnter_box_OnceOnly_v3_70()
end
function export:OnEnter_box_OnceOnly_v3_43()
end
function export:OnEnter_box_TaxiRideReachDestinationMonitor_13()
  local l0
  l0 = self.box_TaxiRideReachDestinationMonitor_13
  l0.Client = self.MrLi
  l0.DropOffIcon = "9223372047964207183"
  l0.ShowGps = 1
  l0.ManageObjective = 1
  l0.CustomObjective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF140",
    item = "Objective_Reach_3",
    id = "630501"
  }
  l0.Config = "TaxiRideGameplayBrick.9223372058239048238"
end
function export:OnEnter_box_OnceOnly_v3_35()
end
function export:OnEnter_box_TaxiRideReachDestinationMonitor_18()
  local l0
  l0 = self.box_TaxiRideReachDestinationMonitor_18
  l0.Client = self.MrLi
  l0.DropOffIcon = "9223372047964207177"
  l0.ShowGps = 1
  l0.ManageObjective = 1
  l0.CustomObjective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF140",
    item = "Objective_Reach_2",
    id = "630500"
  }
  l0.Config = "TaxiRideGameplayBrick.9223372058239048238"
end
function export:OnEnter_box_Player_Proximity_Monitor_2()
  local l0
  l0 = self.box_Player_Proximity_Monitor_2
  l0.TargetEntity = "9223372047964207183"
  l0.Radius = 4
  l0.CheckNow = 1
end
function export:OnEnter_box_OnceOnly_v3_64()
end
function export:OnEnter_box_TaxiRideReachDestinationMonitor_9()
  local l0
  l0 = self.box_TaxiRideReachDestinationMonitor_9
  l0.Client = self.MrLi
  l0.DropOffIcon = "9223372047964207179"
  l0.ShowGps = 1
  l0.ManageObjective = 1
  l0.CustomObjective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF140",
    item = "Objective_Reach_1",
    id = "630499"
  }
  l0.Config = "TaxiRideGameplayBrick.9223372058239048238"
end
function export:OnEnter_box_OnceOnly_v3_67()
end
function export:OnEnter_box_TaxiRideVehicleMonitor_7()
  local l0
  l0 = self.box_TaxiRideVehicleMonitor_7
  l0.Client = self.MrLi
  l0.Config = "TaxiRideGameplayBrick.9223372058239048238"
end
function export:OnEnter_box_TaxiRidePickUpController_8()
  local l0
  l0 = self.box_TaxiRidePickUpController_8
  l0.ClientClo = "9223372047964168911"
  l0.PickUpIcon = "9223372047964168908"
  l0.Config = "TaxiRideGameplayBrick.9223372058239048238"
end
function export:OnEnter_box_OnceOnly_v3_11()
end
function export:OnEnter_box_OnceOnly_v3_68()
end
function export:OnEnter_box_OnceOnly_v3_12()
end
function export:OnEnter_box_MultipleOR_22()
end
function export:OnEnter_box_OnceOnly_v3_61()
end
function export:OnEnter_box_Multiple_AND_19()
end
function export:OnEnter_box_OnceOnly_v3_60()
end
function export:OnEnter_box_OnceOnly_v3_36()
end
_compilerVersion = 4
