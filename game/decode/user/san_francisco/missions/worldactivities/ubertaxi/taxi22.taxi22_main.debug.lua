export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CameraLockController.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/DPadHackableController.lua")
  cbox:RegisterBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  cbox:RegisterBox("domino/System/FelonySystemController_v2.lua")
  cbox:RegisterBox("domino/System/FelonyTargetController.lua")
  cbox:RegisterBox("domino/System/FelonyTargetMonitor.lua")
  cbox:RegisterBox("domino/System/GameplayInteractionController.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
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
  cbox:RegisterBox("domino/System/SetActionMap_v2.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  cbox:RegisterBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.debug.lua")
  cbox:RegisterBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_SearchArea.debug.lua")
  cbox:RegisterBox("domino/System/TaxiRatingController.lua")
  cbox:RegisterBox("domino/System/TaxiRidePickUpController.lua")
  cbox:RegisterBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  cbox:RegisterBox("domino/System/TaxiRideVehicleMonitor.lua")
  cbox:RegisterBox("domino/System/TaxiStrategiesController.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/VehicleController.lua")
  cbox:LoadResource("soundbinary/2663361170.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "Taxi22_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main"
  self.PlayerEntity = nil
  self.VehicleState = 4
  self.VIPDriver = nil
  self.Client = nil
  self.PlayerVehicle = nil
  self.Mission = "MissionList.9223372048565693556"
  self.VIPVehicle = nil
  self.PoliceCar2 = nil
  self.PoliceCar1 = nil
  self.PoliceDriver1 = nil
  self.PoliceDriver2 = nil
  self.PoliceDriver3 = nil
  self.TargetCar = nil
  self.GIC_Users = {}
  self.box_DriveAndTalk_15 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_15
  l0._graph = self
  l0._name = "box_DriveAndTalk_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|37018073"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_DriveAndTalk_15_Stopped
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_15_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_15_TalkFailed
  self.box_MissionCheckpointReach_38 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_38
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|169319327"
  l0.Out = self.f_box_MissionCheckpointReach_38_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_DriveAndTalk_9 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_9
  l0._graph = self
  l0._name = "box_DriveAndTalk_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|188615816"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_9_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_9_TalkFailed
  self.box_DriveAndTalk_5 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_5
  l0._graph = self
  l0._name = "box_DriveAndTalk_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|259935707"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_5_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_TaxiStrategiesController_60 = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self.box_TaxiStrategiesController_60
  l0._graph = self
  l0._name = "box_TaxiStrategiesController_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|401064319"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_TaxiStrategiesController_60_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self.box_DriveAndTalk_25 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_25
  l0._graph = self
  l0._name = "box_DriveAndTalk_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|426510730"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_25_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_25_TalkFailed
  self.box_Taxi_SearchArea_98 = cbox:CreateBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_SearchArea.debug.lua")
  l0 = self.box_Taxi_SearchArea_98
  l0._graph = self
  l0._name = "box_Taxi_SearchArea_98"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|453468266"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Taxi_SearchArea_98_Disabled
  l0.EnteredArea = self.f_box_Taxi_SearchArea_98_EnteredArea
  l0.ExitedArea = DummyFunction
  self.box_OnceOnly_v3_53 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_53
  l0._graph = self
  l0._name = "box_OnceOnly_v3_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|467688255"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_53_Out
  l0.ResetOut = DummyFunction
  self.box_GameplayInteractionController_24 = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self.box_GameplayInteractionController_24
  l0._graph = self
  l0._name = "box_GameplayInteractionController_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|490587475"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  self.box_TaxiRidePickUpController_30 = cbox:CreateBox("domino/System/TaxiRidePickUpController.lua")
  l0 = self.box_TaxiRidePickUpController_30
  l0._graph = self
  l0._name = "box_TaxiRidePickUpController_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|513187600"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TaxiRidePickUpController_30_Disabled
  l0.ClientSpawned = self.f_box_TaxiRidePickUpController_30_ClientSpawned
  l0.ClientPickedUp = self.f_box_TaxiRidePickUpController_30_ClientPickedUp
  l0.ClientConversationFinised = self.f_box_TaxiRidePickUpController_30_ClientConversationFinised
  self.box_MissionLayer_v2_47 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_47
  l0._graph = self
  l0._name = "box_MissionLayer_v2_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|546525630"
  l0.Loaded = self.f_box_MissionLayer_v2_47_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_TaxiRideReachDestinationMonitor_21 = cbox:CreateBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self.box_TaxiRideReachDestinationMonitor_21
  l0._graph = self
  l0._name = "box_TaxiRideReachDestinationMonitor_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|652506020"
  l0.Enabled = self.f_box_TaxiRideReachDestinationMonitor_21_Enabled
  l0.Disabled = self.f_box_TaxiRideReachDestinationMonitor_21_Disabled
  l0.ReachDestination = DummyFunction
  l0.ClientDropOff = DummyFunction
  self.box_Multiple_AND_10 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_10
  l0._graph = self
  l0._name = "box_Multiple_AND_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|697224162"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_10_Out
  self.box_MapPointController_v4_121 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_121
  l0._graph = self
  l0._name = "box_MapPointController_v4_121"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|768608966"
  l0.Shown = self.f_box_MapPointController_v4_121_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_DriveAndTalk_28 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_28
  l0._graph = self
  l0._name = "box_DriveAndTalk_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|782110655"
  l0.Started = self.f_box_DriveAndTalk_28_Started
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_28_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_28_TalkFailed
  self.box_DriveAndTalk_27 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_27
  l0._graph = self
  l0._name = "box_DriveAndTalk_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|797798067"
  l0.Started = self.f_box_DriveAndTalk_27_Started
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_Timer_v2_34 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_34
  l0._graph = self
  l0._name = "box_Timer_v2_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|902031271"
  l0.Out = DummyFunction
  l0.Started = self.f_box_Timer_v2_34_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_34_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Multiple_AND_44 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_44
  l0._graph = self
  l0._name = "box_Multiple_AND_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|902518228"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_44_Out
  self.box_TaxiRideReachDestinationMonitor_7 = cbox:CreateBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self.box_TaxiRideReachDestinationMonitor_7
  l0._graph = self
  l0._name = "box_TaxiRideReachDestinationMonitor_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|977397905"
  l0.Enabled = self.f_box_TaxiRideReachDestinationMonitor_7_Enabled
  l0.Disabled = self.f_box_TaxiRideReachDestinationMonitor_7_Disabled
  l0.ReachDestination = DummyFunction
  l0.ClientDropOff = DummyFunction
  self.box_TaxiStrategiesController_37 = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self.box_TaxiStrategiesController_37
  l0._graph = self
  l0._name = "box_TaxiStrategiesController_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|980067259"
  l0.Started = self.f_box_TaxiStrategiesController_37_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self.box_Taxi_SearchArea_118 = cbox:CreateBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_SearchArea.debug.lua")
  l0 = self.box_Taxi_SearchArea_118
  l0._graph = self
  l0._name = "box_Taxi_SearchArea_118"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|997930671"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Taxi_SearchArea_118_Disabled
  l0.EnteredArea = self.f_box_Taxi_SearchArea_118_EnteredArea
  l0.ExitedArea = DummyFunction
  self.box_OnceOnly_v3_54 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_54
  l0._graph = self
  l0._name = "box_OnceOnly_v3_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1008594714"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_54_Out
  l0.ResetOut = DummyFunction
  self.box_TaxiRideReachDestinationMonitor_4 = cbox:CreateBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self.box_TaxiRideReachDestinationMonitor_4
  l0._graph = self
  l0._name = "box_TaxiRideReachDestinationMonitor_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1048746012"
  l0.Enabled = self.f_box_TaxiRideReachDestinationMonitor_4_Enabled
  l0.Disabled = DummyFunction
  l0.ReachDestination = DummyFunction
  l0.ClientDropOff = self.f_box_TaxiRideReachDestinationMonitor_4_ClientDropOff
  self.box_MultipleOR_39 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_39
  l0._graph = self
  l0._name = "box_MultipleOR_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1184854944"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_39_Out
  self.box_TaxiRideReachDestinationMonitor_35 = cbox:CreateBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self.box_TaxiRideReachDestinationMonitor_35
  l0._graph = self
  l0._name = "box_TaxiRideReachDestinationMonitor_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1191638928"
  l0.Enabled = self.f_box_TaxiRideReachDestinationMonitor_35_Enabled
  l0.Disabled = self.f_box_TaxiRideReachDestinationMonitor_35_Disabled
  l0.ReachDestination = DummyFunction
  l0.ClientDropOff = DummyFunction
  self.box_OnceOnly_v3_45 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_45
  l0._graph = self
  l0._name = "box_OnceOnly_v3_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1223769353"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_45_Out
  l0.ResetOut = DummyFunction
  self.box_PlayDialog_v2_13 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_13
  l0._graph = self
  l0._name = "box_PlayDialog_v2_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1229747896"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_DriveAndTalk_3 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_3
  l0._graph = self
  l0._name = "box_DriveAndTalk_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1315253866"
  l0.Started = self.f_box_DriveAndTalk_3_Started
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_MissionMessageController_v3_31 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_31
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1335867268"
  l0.Out = self.f_box_MissionMessageController_v3_31_Out
  l0.MessageCompleted = DummyFunction
  self.box_MissionLayer_v2_66 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_66
  l0._graph = self
  l0._name = "box_MissionLayer_v2_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1338479947"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_66_Unloaded
  l0.Reseted = DummyFunction
  self.box_Timer_v2_14 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_14
  l0._graph = self
  l0._name = "box_Timer_v2_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1476985848"
  l0.Out = DummyFunction
  l0.Started = self.f_box_Timer_v2_14_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_14_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CinematicPrep_36 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_36
  l0._graph = self
  l0._name = "box_CinematicPrep_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1488513773"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_36_PostOut
  self.box_TaxiRatingController_77 = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self.box_TaxiRatingController_77
  l0._graph = self
  l0._name = "box_TaxiRatingController_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1507155677"
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = DummyFunction
  l0.RewardShown = self.f_box_TaxiRatingController_77_RewardShown
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self.box_ListWriter_56 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_56
  l0._graph = self
  l0._name = "box_ListWriter_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1556558993"
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_box_ListWriter_56_Added
  l0.Removed = self.f_box_ListWriter_56_Removed
  l0.Out = self.f_box_ListWriter_56_Out
  self.box_Taxi_AbortMission_29 = cbox:CreateBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.debug.lua")
  l0 = self.box_Taxi_AbortMission_29
  l0._graph = self
  l0._name = "box_Taxi_AbortMission_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1662825970"
  self.box_DriveAndTalk_8 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_8
  l0._graph = self
  l0._name = "box_DriveAndTalk_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1664706372"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_DriveAndTalk_8_Stopped
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_8_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_8_TalkFailed
  self.box_Camera_Lock_Controller_19 = cbox:CreateBox("domino/System/CameraLockController.lua")
  l0 = self.box_Camera_Lock_Controller_19
  l0._graph = self
  l0._name = "box_Camera_Lock_Controller_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1702009810"
  l0.Started = self.f_box_Camera_Lock_Controller_19_Started
  l0.Stopped = self.f_box_Camera_Lock_Controller_19_Stopped
  l0.Finished = self.f_box_Camera_Lock_Controller_19_Finished
  l0.Out = DummyFunction
  self.box_MissionController_v4_80 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_80
  l0._graph = self
  l0._name = "box_MissionController_v4_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1706238036"
  self.box_DriveAndTalk_33 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_33
  l0._graph = self
  l0._name = "box_DriveAndTalk_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1718255126"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_Taxi_SearchArea_101 = cbox:CreateBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_SearchArea.debug.lua")
  l0 = self.box_Taxi_SearchArea_101
  l0._graph = self
  l0._name = "box_Taxi_SearchArea_101"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1781647653"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Taxi_SearchArea_101_Disabled
  l0.EnteredArea = self.f_box_Taxi_SearchArea_101_EnteredArea
  l0.ExitedArea = DummyFunction
  self.box_TaxiRideReachDestinationMonitor_46 = cbox:CreateBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self.box_TaxiRideReachDestinationMonitor_46
  l0._graph = self
  l0._name = "box_TaxiRideReachDestinationMonitor_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1792064482"
  l0.Enabled = self.f_box_TaxiRideReachDestinationMonitor_46_Enabled
  l0.Disabled = self.f_box_TaxiRideReachDestinationMonitor_46_Disabled
  l0.ReachDestination = self.f_box_TaxiRideReachDestinationMonitor_46_ReachDestination
  l0.ClientDropOff = DummyFunction
  self.box_TaxiRatingController_52 = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self.box_TaxiRatingController_52
  l0._graph = self
  l0._name = "box_TaxiRatingController_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1809346856"
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = self.f_box_TaxiRatingController_52_RatingReset
  l0.RewardShown = DummyFunction
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self.box_Timer_v2_61 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_61
  l0._graph = self
  l0._name = "box_Timer_v2_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1832443120"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_61_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_OnceOnly_v3_23 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_23
  l0._graph = self
  l0._name = "box_OnceOnly_v3_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1834675679"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_23_Out
  l0.ResetOut = DummyFunction
  self.box_TaxiRideVehicleMonitor_32 = cbox:CreateBox("domino/System/TaxiRideVehicleMonitor.lua")
  l0 = self.box_TaxiRideVehicleMonitor_32
  l0._graph = self
  l0._name = "box_TaxiRideVehicleMonitor_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1868987821"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ClientDeath = self.f_box_TaxiRideVehicleMonitor_32_ClientDeath
  l0.VehicleUnusable = self.f_box_TaxiRideVehicleMonitor_32_VehicleUnusable
  l0.ClientBailedOut = self.f_box_TaxiRideVehicleMonitor_32_ClientBailedOut
  l0.PlayerAbandonedVehicle = self.f_box_TaxiRideVehicleMonitor_32_PlayerAbandonedVehicle
  self.box_MissionMessageController_v3_51 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_51
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1931435659"
  l0.Out = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_GameplayInteractionController_26 = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self.box_GameplayInteractionController_26
  l0._graph = self
  l0._name = "box_GameplayInteractionController_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1961815760"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  self.box_MultipleOR_57 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_57
  l0._graph = self
  l0._name = "box_MultipleOR_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1979407094"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_57_Out
  self.box_FelonyTargetMonitor_6 = cbox:CreateBox("domino/System/FelonyTargetMonitor.lua")
  l0 = self.box_FelonyTargetMonitor_6
  l0._graph = self
  l0._name = "box_FelonyTargetMonitor_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|2003077390"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_FelonyTargetMonitor_6_Stopped
  l0.None = DummyFunction
  l0.DenunciatorStarted = DummyFunction
  l0.DenunciatorInterrupted = DummyFunction
  l0.DenunciatorFinished = DummyFunction
  l0.ScanStarted = DummyFunction
  l0.ScanSuccess = DummyFunction
  l0.ScanFailure = DummyFunction
  l0.Chasing = DummyFunction
  l0.Searching = DummyFunction
  l0.Evaded = self.f_box_FelonyTargetMonitor_6_Evaded
  l0.TargetKilled = DummyFunction
  l0.LevelChanged = DummyFunction
  l0.TargetArrested = DummyFunction
  self.box_Multiple_AND_43 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_43
  l0._graph = self
  l0._name = "box_Multiple_AND_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|2005101275"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_43_Out
  self.box_DriveAndTalk_18 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_18
  l0._graph = self
  l0._name = "box_DriveAndTalk_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|2026195379"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_18_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_CLOController_124 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_124
  l0._graph = self
  l0._name = "box_CLOController_124"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|2054081977"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_124_OnUserInPlace
  self.box_OnceOnly_v3_68 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_68
  l0._graph = self
  l0._name = "box_OnceOnly_v3_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|2062406497"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_68_Out
  l0.ResetOut = DummyFunction
  self.box_SnapAndBind_117 = cbox:CreateBox("domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  l0 = self.box_SnapAndBind_117
  l0._graph = self
  l0._name = "box_SnapAndBind_117"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|2142176383"
  l0.Attached = self.f_box_SnapAndBind_117_Attached
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
  self:OnEnter_box_MultipleOR_39()
  l0 = self.box_MultipleOR_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1449867313", "1449867313", "Taxi22_Main", "CheckPoint_0", "box_MultipleOR_39.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_39()
  l0 = self.box_MultipleOR_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1604010981", "1604010981", "Taxi22_Main", "In", "box_MultipleOR_39.Input", self, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_67_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TaxiRideReachDestinationMonitor_46()
  l0 = self.box_TaxiRideReachDestinationMonitor_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|778566243", "778566243", "Taxi22_Main", "box_Ordered_Output_67.Out", "box_TaxiRideReachDestinationMonitor_46.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_67_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1275722543"
  l0.Out = self.f_box_Simple_Node_64_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1499087987", "1499087987", "Taxi22_Main", "box_Ordered_Output_67.Out", "box_Simple_Node_64.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_50_Out_0()
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|21298865"
  l0.Out = self.f_box_Simple_Node_2_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1300126283", "1300126283", "Taxi22_Main", "box_Ordered_Output_50.Out", "box_Simple_Node_2.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_50_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TaxiStrategiesController_60
  l0.Config = "TaxiRideStrategyConfig.9223372048565693557"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|3020070", "3020070", "Taxi22_Main", "box_Ordered_Output_50.Out", "box_TaxiStrategiesController_60.Stop", clone, l0)
  l0:Stop()
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
  l0._name = "box_Simple_Node_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|539727964"
  l0.Out = self.f_box_Simple_Node_12_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|967824177", "967824177", "Taxi22_Main", "box_Simple_Node_2.Out", "box_Simple_Node_12.In", clone, l0)
  l0:In()
end
function export:f_box_DriveAndTalk_15_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_DriveAndTalk_8()
  l0 = self.box_DriveAndTalk_15
  l1 = self.box_DriveAndTalk_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|162350176", "162350176", "Taxi22_Main", "box_DriveAndTalk_15.Stopped", "box_DriveAndTalk_8.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_DriveAndTalk_15_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_54()
  l0 = self.box_DriveAndTalk_15
  l1 = self.box_OnceOnly_v3_54
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1991169798", "1991169798", "Taxi22_Main", "box_DriveAndTalk_15.TalkFailed", "box_OnceOnly_v3_54.In", l0, l1)
  l1:In(1)
end
function export:f_box_DriveAndTalk_15_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_54()
  l0 = self.box_DriveAndTalk_15
  l1 = self.box_OnceOnly_v3_54
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|851122364", "851122364", "Taxi22_Main", "box_DriveAndTalk_15.TalkFinished", "box_OnceOnly_v3_54.In", l0, l1)
  l1:In(0)
end
function export:f_box_Vehicle_Controller_59_Indestructable()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TaxiRideReachDestinationMonitor_46()
  l0 = self.box_TaxiRideReachDestinationMonitor_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|227825895", "227825895", "Taxi22_Main", "box_Vehicle_Controller_59.Indestructable", "box_TaxiRideReachDestinationMonitor_46.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Simple_Node_40_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_GameplayInteractionController_26()
  l0 = self.box_GameplayInteractionController_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|335902327", "335902327", "Taxi22_Main", "box_Simple_Node_40.Out", "box_GameplayInteractionController_26.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_MissionCheckpointReach_38_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TaxiRidePickUpController_30()
  l0 = self.box_MissionCheckpointReach_38
  l1 = self.box_TaxiRidePickUpController_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1045033450", "1045033450", "Taxi22_Main", "box_MissionCheckpointReach_38.Out", "box_TaxiRidePickUpController_30.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_DriveAndTalk_9_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_53()
  l0 = self.box_DriveAndTalk_9
  l1 = self.box_OnceOnly_v3_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1201703265", "1201703265", "Taxi22_Main", "box_DriveAndTalk_9.TalkFailed", "box_OnceOnly_v3_53.In", l0, l1)
  l1:In(1)
end
function export:f_box_DriveAndTalk_9_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_53()
  l0 = self.box_DriveAndTalk_9
  l1 = self.box_OnceOnly_v3_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1963073329", "1963073329", "Taxi22_Main", "box_DriveAndTalk_9.TalkFinished", "box_OnceOnly_v3_53.In", l0, l1)
  l1:In(0)
end
function export:f_box_Simple_Node_42_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_GameplayInteractionController_24()
  l0 = self.box_GameplayInteractionController_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|878842212", "878842212", "Taxi22_Main", "box_Simple_Node_42.Out", "box_GameplayInteractionController_24.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_49_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Vehicle_Controller_1()
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|891188039", "891188039", "Taxi22_Main", "box_Ordered_Output_49.Out", "box_Vehicle_Controller_1.SetAsDestructable", clone, l0)
  l0:SetAsDestructable()
end
function export:f_box_Ordered_Output_49_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MapPointController_v4_121()
  l0 = self.box_MapPointController_v4_121
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1749030366", "1749030366", "Taxi22_Main", "box_Ordered_Output_49.Out", "box_MapPointController_v4_121.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_DriveAndTalk_5_TalkFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_56
  l0.Input = self.GIC_Users
  l0.Data[0] = self.PlayerEntity
  l0.Data[1] = self.Client
  l0 = self.box_DriveAndTalk_5
  l1 = self.box_ListWriter_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1665756223", "1665756223", "Taxi22_Main", "box_DriveAndTalk_5.TalkFinished", "box_ListWriter_56.Add", l0, l1)
  l1:Add()
end
function export:f_box_TaxiStrategiesController_60_Stopped()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic_nocameralock"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1524239083"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_box_SetActionMap_v2_22_Popped
  l0 = self.box_TaxiStrategiesController_60
  l1 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1782575619", "1782575619", "Taxi22_Main", "box_TaxiStrategiesController_60.Stopped", "box_SetActionMap_v2_22.Pop", l0, l1)
  l1:Pop()
end
function export:f_box_DriveAndTalk_25_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_23()
  l0 = self.box_DriveAndTalk_25
  l1 = self.box_OnceOnly_v3_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1405303525", "1405303525", "Taxi22_Main", "box_DriveAndTalk_25.TalkFailed", "box_OnceOnly_v3_23.In", l0, l1)
  l1:In(1)
end
function export:f_box_DriveAndTalk_25_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_23()
  l0 = self.box_DriveAndTalk_25
  l1 = self.box_OnceOnly_v3_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1774823031", "1774823031", "Taxi22_Main", "box_DriveAndTalk_25.TalkFinished", "box_OnceOnly_v3_23.In", l0, l1)
  l1:In(0)
end
function export:f_box_Taxi_SearchArea_98_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TaxiRideReachDestinationMonitor_7()
  l0 = self.box_Taxi_SearchArea_98
  l1 = self.box_TaxiRideReachDestinationMonitor_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|941509947", "941509947", "Taxi22_Main", "box_Taxi_SearchArea_98.Disabled", "box_TaxiRideReachDestinationMonitor_7.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Taxi_SearchArea_98_EnteredArea()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_43()
  l0 = self.box_Taxi_SearchArea_98
  l1 = self.box_Multiple_AND_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1217466637", "1217466637", "Taxi22_Main", "box_Taxi_SearchArea_98.EnteredArea", "box_Multiple_AND_43.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_OnceOnly_v3_53_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|544024092"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_62_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_62_Out_1
  l0 = self.box_OnceOnly_v3_53
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1044187484", "1044187484", "Taxi22_Main", "box_OnceOnly_v3_53.Out", "box_Ordered_Output_62.In", l0, l1)
  l1:In()
end
function export:f_box_TaxiRidePickUpController_30_ClientConversationFinised()
  local l0
  self = self._graph
  self:OnEnter_box_TaxiRidePickUpController_30()
  l0 = self.box_TaxiRidePickUpController_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|2039816033", "2039816033", "Taxi22_Main", "box_TaxiRidePickUpController_30.ClientConversationFinised", "box_TaxiRidePickUpController_30.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_TaxiRidePickUpController_30_ClientPickedUp()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRidePickUpController_30
  self.PlayerVehicle = l0.Vehicle
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|2021643138"
  l0.Out = self.f_box_Simple_Node_69_Out
  l0 = self.box_TaxiRidePickUpController_30
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|759991590", "759991590", "Taxi22_Main", "box_TaxiRidePickUpController_30.ClientPickedUp", "box_Simple_Node_69.In", l0, l1)
  l1:In()
end
function export:f_box_TaxiRidePickUpController_30_ClientSpawned()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRidePickUpController_30
  self.Client = l0.Client
  self:OnEnter_box_TaxiRideVehicleMonitor_32()
  l1 = self.box_TaxiRideVehicleMonitor_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|430793700", "430793700", "Taxi22_Main", "box_TaxiRidePickUpController_30.ClientSpawned", "box_TaxiRideVehicleMonitor_32.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TaxiRidePickUpController_30_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_5
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372052661645935"
  l0.StartDelay = 0.5
  l0 = self.box_TaxiRidePickUpController_30
  l1 = self.box_DriveAndTalk_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1019784103", "1019784103", "Taxi22_Main", "box_TaxiRidePickUpController_30.Disabled", "box_DriveAndTalk_5.Start", l0, l1)
  l1:Start()
end
function export:f_box_Simple_Node_12_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TaxiRideVehicleMonitor_32()
  l0 = self.box_TaxiRideVehicleMonitor_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|739065078", "739065078", "Taxi22_Main", "box_Simple_Node_12.Out", "box_TaxiRideVehicleMonitor_32.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_62_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_DriveAndTalk_3
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372052661645936"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|2085079948", "2085079948", "Taxi22_Main", "box_Ordered_Output_62.Out", "box_DriveAndTalk_3.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_62_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TaxiRideReachDestinationMonitor_35()
  l0 = self.box_TaxiRideReachDestinationMonitor_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1100359022", "1100359022", "Taxi22_Main", "box_Ordered_Output_62.Out", "box_TaxiRideReachDestinationMonitor_35.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_MissionLayer_v2_47_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1393190087"
  l0.Out = self.f_box_Get_Player_ID_63_Out
  l0 = self.box_MissionLayer_v2_47
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1727499063", "1727499063", "Taxi22_Main", "box_MissionLayer_v2_47.Loaded", "box_Get_Player_ID_63.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_65_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_DriveAndTalk_8()
  l0 = self.box_DriveAndTalk_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1381752065", "1381752065", "Taxi22_Main", "box_Ordered_Output_65.Out", "box_DriveAndTalk_8.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_65_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TaxiRideReachDestinationMonitor_21()
  l0 = self.box_TaxiRideReachDestinationMonitor_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1271269999", "1271269999", "Taxi22_Main", "box_Ordered_Output_65.Out", "box_TaxiRideReachDestinationMonitor_21.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_TaxiRideReachDestinationMonitor_21_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_SearchArea_98()
  l0 = self.box_TaxiRideReachDestinationMonitor_21
  l1 = self.box_Taxi_SearchArea_98
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|977058336", "977058336", "Taxi22_Main", "box_TaxiRideReachDestinationMonitor_21.Disabled", "box_Taxi_SearchArea_98.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_TaxiRideReachDestinationMonitor_21_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_SearchArea_98()
  l0 = self.box_TaxiRideReachDestinationMonitor_21
  l1 = self.box_Taxi_SearchArea_98
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1517528673", "1517528673", "Taxi22_Main", "box_TaxiRideReachDestinationMonitor_21.Enabled", "box_Taxi_SearchArea_98.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Multiple_AND_10_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic_nocameralock"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1270553999"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_box_SetActionMap_v2_20_Pushed
  l0.Popped = DummyFunction
  l0 = self.box_Multiple_AND_10
  l1 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1657931340", "1657931340", "Taxi22_Main", "box_Multiple_AND_10.Out", "box_SetActionMap_v2_20.Push", l0, l1)
  l1:Push()
end
function export:f_box_MapPointController_v4_121_Shown()
  local l0, l1
  self = self._graph
  l0 = self.box_SnapAndBind_117
  l0.Parent = self.TargetCar
  l0.Child = "9223372048628207013"
  l0.CarIcon = 1
  l0 = self.box_MapPointController_v4_121
  l1 = self.box_SnapAndBind_117
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1142602575", "1142602575", "Taxi22_Main", "box_MapPointController_v4_121.Shown", "box_SnapAndBind_117.Attach", l0, l1)
  l1:Attach()
end
function export:f_box_DriveAndTalk_28_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_51
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF220",
    item = "Objective_02",
    id = "543434"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_DriveAndTalk_28
  l1 = self.box_MissionMessageController_v3_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|2145388334", "2145388334", "Taxi22_Main", "box_DriveAndTalk_28.Started", "box_MissionMessageController_v3_51.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_DriveAndTalk_28_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_45()
  l0 = self.box_DriveAndTalk_28
  l1 = self.box_OnceOnly_v3_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|233422502", "233422502", "Taxi22_Main", "box_DriveAndTalk_28.TalkFailed", "box_OnceOnly_v3_45.In", l0, l1)
  l1:In(1)
end
function export:f_box_DriveAndTalk_28_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_45()
  l0 = self.box_DriveAndTalk_28
  l1 = self.box_OnceOnly_v3_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1779502360", "1779502360", "Taxi22_Main", "box_DriveAndTalk_28.TalkFinished", "box_OnceOnly_v3_45.In", l0, l1)
  l1:In(0)
end
function export:f_box_DriveAndTalk_27_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic_nocameralock"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|931805950"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_box_SetActionMap_v2_16_Popped
  l0 = self.box_DriveAndTalk_27
  l1 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|2009007809", "2009007809", "Taxi22_Main", "box_DriveAndTalk_27.Started", "box_SetActionMap_v2_16.Pop", l0, l1)
  l1:Pop()
end
function export:f_box_Timer_v2_34_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_GameplayInteractionController_26()
  l0 = self.box_Timer_v2_34
  l1 = self.box_GameplayInteractionController_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|579110555", "579110555", "Taxi22_Main", "box_Timer_v2_34.Started", "box_GameplayInteractionController_26.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_34_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  l0.AffectMediaSystem = nil
  l0.VehicleExclusionZone = nil
  l0._graph = self
  l0._name = "box_FelonySystemController_v2_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1641120673"
  l0.Out = DummyFunction
  l0.Enabled = self.f_box_FelonySystemController_v2_11_Enabled
  l0.Disabled = DummyFunction
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  l0 = self.box_Timer_v2_34
  l1 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|360879040", "360879040", "Taxi22_Main", "box_Timer_v2_34.TimeElapsed", "box_FelonySystemController_v2_11.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Multiple_AND_44_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|253658957"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_49_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_49_Out_1
  l0 = self.box_Multiple_AND_44
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1938831729", "1938831729", "Taxi22_Main", "box_Multiple_AND_44.Out", "box_Ordered_Output_49.In", l0, l1)
  l1:In()
end
function export:f_box_SetActionMap_v2_16_Popped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_34
  l0.Seconds = 5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1971960365", "1971960365", "Taxi22_Main", "box_SetActionMap_v2_16.Popped", "box_Timer_v2_34.Start", clone, l0)
  l0:Start()
end
function export:f_box_TaxiRideReachDestinationMonitor_7_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_SearchArea_118()
  l0 = self.box_TaxiRideReachDestinationMonitor_7
  l1 = self.box_Taxi_SearchArea_118
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1657989957", "1657989957", "Taxi22_Main", "box_TaxiRideReachDestinationMonitor_7.Disabled", "box_Taxi_SearchArea_118.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_TaxiRideReachDestinationMonitor_7_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_SearchArea_118()
  l0 = self.box_TaxiRideReachDestinationMonitor_7
  l1 = self.box_Taxi_SearchArea_118
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1784529185", "1784529185", "Taxi22_Main", "box_TaxiRideReachDestinationMonitor_7.Enabled", "box_Taxi_SearchArea_118.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TaxiStrategiesController_37_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TaxiRideReachDestinationMonitor_35()
  l0 = self.box_TaxiStrategiesController_37
  l1 = self.box_TaxiRideReachDestinationMonitor_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|262478827", "262478827", "Taxi22_Main", "box_TaxiStrategiesController_37.Started", "box_TaxiRideReachDestinationMonitor_35.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Taxi_SearchArea_118_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_124
  l0.CLO = "9223372048628207011"
  l0 = self.box_Taxi_SearchArea_118
  l1 = self.box_CLOController_124
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|953504134", "953504134", "Taxi22_Main", "box_Taxi_SearchArea_118.Disabled", "box_CLOController_124.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Taxi_SearchArea_118_EnteredArea()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TaxiRideReachDestinationMonitor_7()
  l0 = self.box_Taxi_SearchArea_118
  l1 = self.box_TaxiRideReachDestinationMonitor_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|758143568", "758143568", "Taxi22_Main", "box_Taxi_SearchArea_118.EnteredArea", "box_TaxiRideReachDestinationMonitor_7.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_OnceOnly_v3_54_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|611224137"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_65_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_65_Out_1
  l0 = self.box_OnceOnly_v3_54
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|2044544100", "2044544100", "Taxi22_Main", "box_OnceOnly_v3_54.Out", "box_Ordered_Output_65.In", l0, l1)
  l1:In()
end
function export:f_box_TaxiRideReachDestinationMonitor_4_ClientDropOff()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|18127913"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_50_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_50_Out_1
  l0 = self.box_TaxiRideReachDestinationMonitor_4
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1295151856", "1295151856", "Taxi22_Main", "box_TaxiRideReachDestinationMonitor_4.ClientDropOff", "box_Ordered_Output_50.In", l0, l1)
  l1:In()
end
function export:f_box_TaxiRideReachDestinationMonitor_4_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_61
  l0.Seconds = 3
  l0 = self.box_TaxiRideReachDestinationMonitor_4
  l1 = self.box_Timer_v2_61
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|533723094", "533723094", "Taxi22_Main", "box_TaxiRideReachDestinationMonitor_4.Enabled", "box_Timer_v2_61.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_39_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_47
  l0.LayerName = "Taxi22_Main"
  l0 = self.box_MultipleOR_39
  l1 = self.box_MissionLayer_v2_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1991645758", "1991645758", "Taxi22_Main", "box_MultipleOR_39.Out", "box_MissionLayer_v2_47.Load", l0, l1)
  l1:Load()
end
function export:f_box_TaxiRideReachDestinationMonitor_35_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_SearchArea_101()
  l0 = self.box_TaxiRideReachDestinationMonitor_35
  l1 = self.box_Taxi_SearchArea_101
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|71606591", "71606591", "Taxi22_Main", "box_TaxiRideReachDestinationMonitor_35.Disabled", "box_Taxi_SearchArea_101.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_TaxiRideReachDestinationMonitor_35_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_SearchArea_101()
  l0 = self.box_TaxiRideReachDestinationMonitor_35
  l1 = self.box_Taxi_SearchArea_101
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|955627270", "955627270", "Taxi22_Main", "box_TaxiRideReachDestinationMonitor_35.Enabled", "box_Taxi_SearchArea_101.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_OnceOnly_v3_45_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_33
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372055023975316"
  l0.StartDelay = 1
  l0 = self.box_OnceOnly_v3_45
  l1 = self.box_DriveAndTalk_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1792625973", "1792625973", "Taxi22_Main", "box_OnceOnly_v3_45.Out", "box_DriveAndTalk_33.Start", l0, l1)
  l1:Start()
end
function export:f_box_DPad_Hackable_Controller_58_Removed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.TargetCar
  l0._graph = self
  l0._name = "box_Vehicle_Controller_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|102572870"
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.Destructable = DummyFunction
  l0.Indestructable = self.f_box_Vehicle_Controller_59_Indestructable
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|640949252", "640949252", "Taxi22_Main", "box_DPad_Hackable_Controller_58.Removed", "box_Vehicle_Controller_59.SetAsIndestructable", clone, l0)
  l0:SetAsIndestructable()
end
function export:f_box_SetActionMap_v2_20_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Camera_Lock_Controller_19()
  l0 = self.box_Camera_Lock_Controller_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1777893567", "1777893567", "Taxi22_Main", "box_SetActionMap_v2_20.Pushed", "box_Camera_Lock_Controller_19.Start", clone, l0)
  l0:Start()
end
function export:f_box_Simple_Node_64_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_DriveAndTalk_15()
  l0 = self.box_DriveAndTalk_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|272993494", "272993494", "Taxi22_Main", "box_Simple_Node_64.Out", "box_DriveAndTalk_15.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_DriveAndTalk_3_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_43()
  l0 = self.box_DriveAndTalk_3
  l1 = self.box_Multiple_AND_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1095879871", "1095879871", "Taxi22_Main", "box_DriveAndTalk_3.Started", "box_Multiple_AND_43.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_MissionMessageController_v3_31_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_66
  l0.LayerName = "Taxi22_Main"
  l0 = self.box_MissionMessageController_v3_31
  l1 = self.box_MissionLayer_v2_66
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1024138992", "1024138992", "Taxi22_Main", "box_MissionMessageController_v3_31.Out", "box_MissionLayer_v2_66.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_MissionLayer_v2_66_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_66
  l1 = self.box_MissionController_v4_80
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1581142923", "1581142923", "Taxi22_Main", "box_MissionLayer_v2_66.Unloaded", "box_MissionController_v4_80.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_Get_Player_ID_63_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_36
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|858168544", "858168544", "Taxi22_Main", "box_Get_Player_ID_63.Out", "box_CinematicPrep_36.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_Simple_Node_41_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|191556237"
  l0.Out = self.f_box_Simple_Node_42_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1310330872", "1310330872", "Taxi22_Main", "box_Simple_Node_41.Out", "box_Simple_Node_42.In", clone, l0)
  l0:In()
end
function export:f_box_Timer_v2_14_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|112167230"
  l0.Out = self.f_box_Simple_Node_40_Out
  l0 = self.box_Timer_v2_14
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1350429473", "1350429473", "Taxi22_Main", "box_Timer_v2_14.Started", "box_Simple_Node_40.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_14_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRideReachDestinationMonitor_4
  l0.Client = self.Client
  l0.DropOffIcon = "9223372048565696106"
  l0.LastDestination = 1
  l0.ShowGps = 1
  l0.ManageObjective = 1
  l0.CustomObjective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "ReachSingleDestination",
    id = "20000191"
  }
  l0.Config = "TaxiRideGameplayBrick.9223372057728442535"
  l0 = self.box_Timer_v2_14
  l1 = self.box_TaxiRideReachDestinationMonitor_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|740954301", "740954301", "Taxi22_Main", "box_Timer_v2_14.TimeElapsed", "box_TaxiRideReachDestinationMonitor_4.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_CinematicPrep_36_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_38
  l0.Checkpoint = "CheckPoint_0"
  l0 = self.box_CinematicPrep_36
  l1 = self.box_MissionCheckpointReach_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|2055714187", "2055714187", "Taxi22_Main", "box_CinematicPrep_36.PostOut", "box_MissionCheckpointReach_38.In", l0, l1)
  l1:In()
end
function export:f_box_TaxiRatingController_77_RewardShown()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRatingController_77
  l1 = self.box_MissionMessageController_v3_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1539830744", "1539830744", "Taxi22_Main", "box_TaxiRatingController_77.RewardShown", "box_MissionMessageController_v3_31.ShowMissionComplete", l0, l1)
  l1:ShowMissionComplete()
end
function export:f_box_SetActionMap_v2_22_Popped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TaxiRatingController_77
  l0.MissionName = self.Mission
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1664342354", "1664342354", "Taxi22_Main", "box_SetActionMap_v2_22.Popped", "box_TaxiRatingController_77.ShowReward", clone, l0)
  l0:ShowReward()
end
function export:f_box_Ordered_Output_48_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_DriveAndTalk_28
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372055023975315"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|936095759", "936095759", "Taxi22_Main", "box_Ordered_Output_48.Out", "box_DriveAndTalk_28.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_48_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_FelonyTargetMonitor_6()
  l0 = self.box_FelonyTargetMonitor_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1863805968", "1863805968", "Taxi22_Main", "box_Ordered_Output_48.Out", "box_FelonyTargetMonitor_6.Start", clone, l0)
  l0:Start()
end
function export:f_box_ListWriter_56_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_56
  self.GIC_Users = l0.Target
  self:OnEnter_box_GameplayInteractionController_24()
  l1 = self.box_GameplayInteractionController_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|2138533206", "2138533206", "Taxi22_Main", "box_ListWriter_56.Added", "box_GameplayInteractionController_24.Start", l0, l1)
  l1:Start()
end
function export:f_box_ListWriter_56_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_56
  self.GIC_Users = l0.Target
end
function export:f_box_ListWriter_56_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_56
  self.GIC_Users = l0.Target
end
function export:f_box_FelonySystemController_v2_11_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/FelonyTargetController.lua")]
  l0.Target = nil
  l0.FelonyType = "Police"
  l0.HeatValue = nil
  l0.FelonyLevel = nil
  l0.ScanSkipDispatchBark = nil
  l0.CustomScanIndex = nil
  l0.CustomScanDetectionRate = nil
  l0.CustomScanTriggerChase = nil
  l0.CustomChaseLevel = nil
  l0.AgentList = nil
  l0.RemoveAgentRestrictions = nil
  l0._graph = self
  l0._name = "box_FelonyTargetController_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1868784213"
  l0.Out = DummyFunction
  l0.MinHeatSet = DummyFunction
  l0.ScanStarted = DummyFunction
  l0.ChaseStarted = DummyFunction
  l0.SearchStarted = self.f_box_FelonyTargetController_17_SearchStarted
  l0.ScriptedAgentsAdded = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|938114977", "938114977", "Taxi22_Main", "box_FelonySystemController_v2_11.Enabled", "box_FelonyTargetController_17.StartSearch", clone, l0)
  l0:StartSearch()
end
function export:f_box_DriveAndTalk_8_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_57()
  l0 = self.box_DriveAndTalk_8
  l1 = self.box_MultipleOR_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|2119109248", "2119109248", "Taxi22_Main", "box_DriveAndTalk_8.Stopped", "box_MultipleOR_57.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_DriveAndTalk_8_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_57()
  l0 = self.box_DriveAndTalk_8
  l1 = self.box_MultipleOR_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|611491400", "611491400", "Taxi22_Main", "box_DriveAndTalk_8.TalkFailed", "box_MultipleOR_57.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_DriveAndTalk_8_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_57()
  l0 = self.box_DriveAndTalk_8
  l1 = self.box_MultipleOR_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|2048299767", "2048299767", "Taxi22_Main", "box_DriveAndTalk_8.TalkFinished", "box_MultipleOR_57.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Camera_Lock_Controller_19_Finished()
  local l0
  self = self._graph
  self:OnEnter_box_Camera_Lock_Controller_19()
  l0 = self.box_Camera_Lock_Controller_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1805722773", "1805722773", "Taxi22_Main", "box_Camera_Lock_Controller_19.Finished", "box_Camera_Lock_Controller_19.Stop", l0, l0)
  l0:Stop()
end
function export:f_box_Camera_Lock_Controller_19_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_25
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372052661645943"
  l0.StartDelay = 1
  l0 = self.box_Camera_Lock_Controller_19
  l1 = self.box_DriveAndTalk_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|973427558", "973427558", "Taxi22_Main", "box_Camera_Lock_Controller_19.Started", "box_DriveAndTalk_25.Start", l0, l1)
  l1:Start()
end
function export:f_box_Camera_Lock_Controller_19_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_44()
  l0 = self.box_Camera_Lock_Controller_19
  l1 = self.box_Multiple_AND_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|187659511", "187659511", "Taxi22_Main", "box_Camera_Lock_Controller_19.Stopped", "box_Multiple_AND_44.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_Taxi_SearchArea_101_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TaxiRideReachDestinationMonitor_21()
  l0 = self.box_Taxi_SearchArea_101
  l1 = self.box_TaxiRideReachDestinationMonitor_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1670949340", "1670949340", "Taxi22_Main", "box_Taxi_SearchArea_101.Disabled", "box_TaxiRideReachDestinationMonitor_21.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Taxi_SearchArea_101_EnteredArea()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_9
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372052661645941"
  l0.StartDelay = 1
  l0 = self.box_Taxi_SearchArea_101
  l1 = self.box_DriveAndTalk_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|952254994", "952254994", "Taxi22_Main", "box_Taxi_SearchArea_101.EnteredArea", "box_DriveAndTalk_9.Start", l0, l1)
  l1:Start()
end
function export:f_box_TaxiRideReachDestinationMonitor_46_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v4_121()
  l0 = self.box_TaxiRideReachDestinationMonitor_46
  l1 = self.box_MapPointController_v4_121
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|2100402257", "2100402257", "Taxi22_Main", "box_TaxiRideReachDestinationMonitor_46.Disabled", "box_MapPointController_v4_121.Show", l0, l1)
  l1:Show()
end
function export:f_box_TaxiRideReachDestinationMonitor_46_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1447175105"
  l0.Out = self.f_box_Simple_Node_41_Out
  l0 = self.box_TaxiRideReachDestinationMonitor_46
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1782845543", "1782845543", "Taxi22_Main", "box_TaxiRideReachDestinationMonitor_46.Enabled", "box_Simple_Node_41.In", l0, l1)
  l1:In()
end
function export:f_box_TaxiRideReachDestinationMonitor_46_ReachDestination()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|8038315"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_67_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_67_Out_1
  l0 = self.box_TaxiRideReachDestinationMonitor_46
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1833776948", "1833776948", "Taxi22_Main", "box_TaxiRideReachDestinationMonitor_46.ReachDestination", "box_Ordered_Output_67.In", l0, l1)
  l1:In()
end
function export:f_box_TaxiRatingController_52_RatingReset()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiStrategiesController_37
  l0.Config = "TaxiRideStrategyConfig.9223372048565693557"
  l0 = self.box_TaxiRatingController_52
  l1 = self.box_TaxiStrategiesController_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|37994994", "37994994", "Taxi22_Main", "box_TaxiRatingController_52.RatingReset", "box_TaxiStrategiesController_37.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_61_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_13
  l0.Entity = self.Client
  l0.SoundId = "soundbinary/2663361170.bnk"
  l0.Queue = 1
  l0 = self.box_Timer_v2_61
  l1 = self.box_PlayDialog_v2_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1057126620", "1057126620", "Taxi22_Main", "box_Timer_v2_61.TimeElapsed", "box_PlayDialog_v2_13.Start", l0, l1)
  l1:Start()
end
function export:f_box_OnceOnly_v3_23_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_18
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372052661645944"
  l0.StartDelay = 1
  l0 = self.box_OnceOnly_v3_23
  l1 = self.box_DriveAndTalk_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|130528364", "130528364", "Taxi22_Main", "box_OnceOnly_v3_23.Out", "box_DriveAndTalk_18.Start", l0, l1)
  l1:Start()
end
function export:f_box_FelonyTargetController_17_SearchStarted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonyTargetController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1542523550"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_48_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_48_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|255160201", "255160201", "Taxi22_Main", "box_FelonyTargetController_17.SearchStarted", "box_Ordered_Output_48.In", clone, l0)
  l0:In()
end
function export:f_box_TaxiRideVehicleMonitor_32_ClientBailedOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_29()
  l0 = self.box_TaxiRideVehicleMonitor_32
  l1 = self.box_Taxi_AbortMission_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1235964914", "1235964914", "Taxi22_Main", "box_TaxiRideVehicleMonitor_32.ClientBailedOut", "box_Taxi_AbortMission_29.ClientBailedOut", l0, l1)
  l1:ClientBailedOut()
end
function export:f_box_TaxiRideVehicleMonitor_32_ClientDeath()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_29()
  l0 = self.box_TaxiRideVehicleMonitor_32
  l1 = self.box_Taxi_AbortMission_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1868639931", "1868639931", "Taxi22_Main", "box_TaxiRideVehicleMonitor_32.ClientDeath", "box_Taxi_AbortMission_29.ClientDead", l0, l1)
  l1:ClientDead()
end
function export:f_box_TaxiRideVehicleMonitor_32_PlayerAbandonedVehicle()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_29()
  l0 = self.box_TaxiRideVehicleMonitor_32
  l1 = self.box_Taxi_AbortMission_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|173917743", "173917743", "Taxi22_Main", "box_TaxiRideVehicleMonitor_32.PlayerAbandonedVehicle", "box_Taxi_AbortMission_29.PlayerAbandonedVehicle", l0, l1)
  l1:PlayerAbandonedVehicle()
end
function export:f_box_TaxiRideVehicleMonitor_32_VehicleUnusable()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_29()
  l0 = self.box_TaxiRideVehicleMonitor_32
  l1 = self.box_Taxi_AbortMission_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1173204770", "1173204770", "Taxi22_Main", "box_TaxiRideVehicleMonitor_32.VehicleUnusable", "box_Taxi_AbortMission_29.VehicleUnusable", l0, l1)
  l1:VehicleUnusable()
end
function export:f_box_MultipleOR_57_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MultipleOR_57
  l1 = self.box_OnceOnly_v3_68
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|438326376", "438326376", "Taxi22_Main", "box_MultipleOR_57.Out", "box_OnceOnly_v3_68.In", l0, l1)
  l1:In(0)
end
function export:f_box_FelonyTargetMonitor_6_Evaded()
  local l0
  self = self._graph
  self:OnEnter_box_FelonyTargetMonitor_6()
  l0 = self.box_FelonyTargetMonitor_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1754821415", "1754821415", "Taxi22_Main", "box_FelonyTargetMonitor_6.Evaded", "box_FelonyTargetMonitor_6.Stop", l0, l0)
  l0:Stop()
end
function export:f_box_FelonyTargetMonitor_6_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_14
  l0.Seconds = 1
  l0 = self.box_FelonyTargetMonitor_6
  l1 = self.box_Timer_v2_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|2091076136", "2091076136", "Taxi22_Main", "box_FelonyTargetMonitor_6.Stopped", "box_Timer_v2_14.Start", l0, l1)
  l1:Start()
end
function export:f_box_Multiple_AND_43_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_DriveAndTalk_15()
  l0 = self.box_Multiple_AND_43
  l1 = self.box_DriveAndTalk_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|2024257568", "2024257568", "Taxi22_Main", "box_Multiple_AND_43.Out", "box_DriveAndTalk_15.Start", l0, l1)
  l1:Start()
end
function export:f_box_Simple_Node_69_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TaxiRatingController_52
  l0.MissionName = self.Mission
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1969890101", "1969890101", "Taxi22_Main", "box_Simple_Node_69.Out", "box_TaxiRatingController_52.ResetRating", clone, l0)
  l0:ResetRating()
end
function export:f_box_DriveAndTalk_18_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_44()
  l0 = self.box_DriveAndTalk_18
  l1 = self.box_Multiple_AND_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|229937846", "229937846", "Taxi22_Main", "box_DriveAndTalk_18.TalkFinished", "box_Multiple_AND_44.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_CLOController_124_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_124
  self.TargetCar = l0.UserID
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  l0.HackableEntity = self.TargetCar
  l0.HackableEntityList = nil
  l0.HackCategoryType[0] = "LockLeftWheel"
  l0.HackCategoryType[1] = "LockRightWheel"
  l0.HackCategoryType[2] = "EngineOverheat"
  l0.HackCategoryType[3] = "LockBrakes"
  l0._graph = self
  l0._name = "box_DPad_Hackable_Controller_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1259726831"
  l0._DynamicAnchors = {HackCategoryType = 4}
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = DummyFunction
  l0.Removed = self.f_box_DPad_Hackable_Controller_58_Removed
  l0.RemovedAll = DummyFunction
  l0.HackingDisabled = DummyFunction
  l0 = self.box_CLOController_124
  l1 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|759438981", "759438981", "Taxi22_Main", "box_CLOController_124.OnUserInPlace", "box_DPad_Hackable_Controller_58.Remove", l0, l1)
  l1:Remove()
end
function export:f_box_OnceOnly_v3_68_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_10()
  l0 = self.box_OnceOnly_v3_68
  l1 = self.box_Multiple_AND_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|508177453", "508177453", "Taxi22_Main", "box_OnceOnly_v3_68.Out", "box_Multiple_AND_10.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_Vehicle_Controller_1_Destructable()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Vehicle_Controller_1()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1066344858", "1066344858", "Taxi22_Main", "box_Vehicle_Controller_1.Destructable", "box_Vehicle_Controller_1.ExplodeVehicle", clone, l0)
  l0:ExplodeVehicle()
end
function export:f_box_Vehicle_Controller_1_VehicleExploded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_DriveAndTalk_27
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372055023975314"
  l0.StartDelay = 0.1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|1255383597", "1255383597", "Taxi22_Main", "box_Vehicle_Controller_1.VehicleExploded", "box_DriveAndTalk_27.Start", clone, l0)
  l0:Start()
end
function export:f_box_SnapAndBind_117_Attached()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_10()
  l0 = self.box_SnapAndBind_117
  l1 = self.box_Multiple_AND_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|911801395", "911801395", "Taxi22_Main", "box_SnapAndBind_117.Attached", "box_Multiple_AND_10.Condition", l0, l1)
  l1:Condition(1)
end
function export:OnEnter_box_DriveAndTalk_15()
  local l0
  l0 = self.box_DriveAndTalk_15
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372052661645942"
  l0.StartDelay = 1
end
function export:OnEnter_box_Taxi_SearchArea_98()
  local l0
  l0 = self.box_Taxi_SearchArea_98
  l0.SearchArea = "9223372048565701989"
  l0.SearchRadius = 60
end
function export:OnEnter_box_OnceOnly_v3_53()
end
function export:OnEnter_box_GameplayInteractionController_24()
  local l0
  l0 = self.box_GameplayInteractionController_24
  l0.Users = self.GIC_Users
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
end
function export:OnEnter_box_TaxiRidePickUpController_30()
  local l0
  l0 = self.box_TaxiRidePickUpController_30
  l0.ClientClo = "9223372048565696104"
  l0.PickUpIcon = "9223372048565696106"
  l0.Config = "TaxiRideGameplayBrick.9223372057728442535"
end
function export:OnEnter_box_TaxiRideReachDestinationMonitor_21()
  local l0
  l0 = self.box_TaxiRideReachDestinationMonitor_21
  l0.Client = self.Client
  l0.DropOffIcon = "9223372048565701987"
  l0.ShowGps = 1
  l0.Config = "TaxiRideGameplayBrick.9223372057728442535"
end
function export:OnEnter_box_Multiple_AND_10()
end
function export:OnEnter_box_MapPointController_v4_121()
  local l0
  l0 = self.box_MapPointController_v4_121
  l0.MapPoint = "9223372048628207013"
end
function export:OnEnter_box_Multiple_AND_44()
end
function export:OnEnter_box_TaxiRideReachDestinationMonitor_7()
  local l0
  l0 = self.box_TaxiRideReachDestinationMonitor_7
  l0.Client = self.Client
  l0.DropOffIcon = "9223372048628207015"
  l0.ShowGps = 1
  l0.Config = "TaxiRideGameplayBrick.9223372057728442535"
end
function export:OnEnter_box_Taxi_SearchArea_118()
  local l0
  l0 = self.box_Taxi_SearchArea_118
  l0.SearchArea = "9223372048628207007"
  l0.SearchRadius = 100
end
function export:OnEnter_box_OnceOnly_v3_54()
end
function export:OnEnter_box_MultipleOR_39()
end
function export:OnEnter_box_TaxiRideReachDestinationMonitor_35()
  local l0
  l0 = self.box_TaxiRideReachDestinationMonitor_35
  l0.Client = self.Client
  l0.DropOffIcon = "9223372048628204474"
  l0.ShowGps = 1
  l0.Config = "TaxiRideGameplayBrick.9223372057728442535"
end
function export:OnEnter_box_OnceOnly_v3_45()
end
function export:OnEnter_box_Taxi_AbortMission_29()
  local l0
  l0 = self.box_Taxi_AbortMission_29
  l0.MissionName = self.Mission
  l0.LayerName = "Taxi22_Main"
  l0.StrategyConfig = "TaxiRideStrategyConfig.9223372048565693557"
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Vehicle = self.PlayerVehicle
  l0.Conversation = "ConversationSetting.9223372048760149956"
end
function export:OnEnter_box_DriveAndTalk_8()
  local l0
  l0 = self.box_DriveAndTalk_8
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372052661645937"
  l0.StartDelay = 1
end
function export:OnEnter_box_Camera_Lock_Controller_19()
  local l0
  l0 = self.box_Camera_Lock_Controller_19
  l0.Target = self.TargetCar
  l0.Duration = 5
end
function export:OnEnter_box_Taxi_SearchArea_101()
  local l0
  l0 = self.box_Taxi_SearchArea_101
  l0.SearchArea = "9223372048628204472"
  l0.SearchRadius = 60
end
function export:OnEnter_box_TaxiRideReachDestinationMonitor_46()
  local l0
  l0 = self.box_TaxiRideReachDestinationMonitor_46
  l0.Client = self.Client
  l0.DropOffIcon = "9223372048628207013"
  l0.ShowGps = 1
  l0.Config = "TaxiRideGameplayBrick.9223372057728442535"
end
function export:OnEnter_box_OnceOnly_v3_23()
end
function export:OnEnter_box_TaxiRideVehicleMonitor_32()
  local l0
  l0 = self.box_TaxiRideVehicleMonitor_32
  l0.Client = self.Client
  l0.Config = "TaxiRideGameplayBrick.9223372057728442535"
end
function export:OnEnter_box_GameplayInteractionController_26()
  local l0
  l0 = self.box_GameplayInteractionController_26
  l0.Users = self.GIC_Users
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
end
function export:OnEnter_box_MultipleOR_57()
end
function export:OnEnter_box_FelonyTargetMonitor_6()
  local l0
  l0 = self.box_FelonyTargetMonitor_6
  l0.FelonyType = "Police"
  l0.CheckNow = 1
end
function export:OnEnter_box_Multiple_AND_43()
end
function export:OnEnter_box_Vehicle_Controller_1()
  local l0
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.TargetCar
  l0._graph = self
  l0._name = "box_Vehicle_Controller_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi22.domino|@Taxi22_Main|2113551187"
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.Destructable = self.f_box_Vehicle_Controller_1_Destructable
  l0.Indestructable = DummyFunction
  l0.Deflatable = DummyFunction
  l0.Undeflatable = DummyFunction
  l0.Unmovable = DummyFunction
  l0.Movable = DummyFunction
  l0.EngineBroken = DummyFunction
  l0.EngineShutDown = DummyFunction
  l0.EngineStarted = DummyFunction
  l0.VehicleExploded = self.f_box_Vehicle_Controller_1_VehicleExploded
  l0.VehicleAlarmHackOn = DummyFunction
  l0.VehicleAlarmHackOff = DummyFunction
end
_compilerVersion = 4
