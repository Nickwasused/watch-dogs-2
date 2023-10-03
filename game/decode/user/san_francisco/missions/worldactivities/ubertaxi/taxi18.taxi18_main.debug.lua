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
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/System/RandomOutput_v2.lua")
  cbox:RegisterBox("domino/System/SetActionMap_v2.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.debug.lua")
  cbox:RegisterBox("domino/System/TaxiRatingController.lua")
  cbox:RegisterBox("domino/System/TaxiRidePickUpController.lua")
  cbox:RegisterBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  cbox:RegisterBox("domino/System/TaxiRideVehicleMonitor.lua")
  cbox:RegisterBox("domino/System/TaxiStrategiesController.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:LoadResource("soundbinary/1867911622.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/785468299.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1474812156.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2840773711.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3092395210.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/457473115.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2795069091.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1047637062.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "Taxi18_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main"
  self.PlayerEntity = nil
  self.MissionLayer = "Taxi18_Main"
  self.PlayerVehicle = nil
  self.Mission = "MissionList.9223372047771309739"
  self.Client = nil
  self.GIC_Users = {}
  self.box_PlayDialog_v2_34 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_34
  l0._graph = self
  l0._name = "box_PlayDialog_v2_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|40991921"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_TaxiRatingController_13 = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self.box_TaxiRatingController_13
  l0._graph = self
  l0._name = "box_TaxiRatingController_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|96507682"
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = DummyFunction
  l0.RewardShown = DummyFunction
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = self.f_box_TaxiRatingController_13_RatingRemoved
  self.box_Taxi_AbortMission_12 = cbox:CreateBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.debug.lua")
  l0 = self.box_Taxi_AbortMission_12
  l0._graph = self
  l0._name = "box_Taxi_AbortMission_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|124705838"
  self.box_MissionMessageController_v3_18 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_18
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|183630658"
  l0.Out = self.f_box_MissionMessageController_v3_18_Out
  l0.MessageCompleted = DummyFunction
  self.box_TaxiStrategiesController_15 = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self.box_TaxiStrategiesController_15
  l0._graph = self
  l0._name = "box_TaxiStrategiesController_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|216409327"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = self.f_box_TaxiStrategiesController_15_Paused
  l0.Resumed = DummyFunction
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MultipleOR_24 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_24
  l0._graph = self
  l0._name = "box_MultipleOR_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|251306730"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_24_Out
  self.box_PlayDialog_v2_41 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_41
  l0._graph = self
  l0._name = "box_PlayDialog_v2_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|312699597"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_TaxiStrategiesController_27 = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self.box_TaxiStrategiesController_27
  l0._graph = self
  l0._name = "box_TaxiStrategiesController_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|348937407"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_TaxiStrategiesController_27_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self.box_TaxiRideVehicleMonitor_7 = cbox:CreateBox("domino/System/TaxiRideVehicleMonitor.lua")
  l0 = self.box_TaxiRideVehicleMonitor_7
  l0._graph = self
  l0._name = "box_TaxiRideVehicleMonitor_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|362441081"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TaxiRideVehicleMonitor_7_Disabled
  l0.ClientDeath = self.f_box_TaxiRideVehicleMonitor_7_ClientDeath
  l0.VehicleUnusable = self.f_box_TaxiRideVehicleMonitor_7_VehicleUnusable
  l0.ClientBailedOut = self.f_box_TaxiRideVehicleMonitor_7_ClientBailedOut
  l0.PlayerAbandonedVehicle = self.f_box_TaxiRideVehicleMonitor_7_PlayerAbandonedVehicle
  self.box_RandomOutput_v2_25 = cbox:CreateBox("domino/System/RandomOutput_v2.lua")
  l0 = self.box_RandomOutput_v2_25
  l0._graph = self
  l0._name = "box_RandomOutput_v2_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|401403402"
  l0._DynamicAnchors = {Probability = 5, Output = 5}
  l0.Out = DummyFunction
  l0.ResetOut = DummyFunction
  l0.None = DummyFunction
  l0.Output[0] = self.f_box_RandomOutput_v2_25_Output_0
  l0.Output[1] = self.f_box_RandomOutput_v2_25_Output_1
  l0.Output[2] = self.f_box_RandomOutput_v2_25_Output_2
  l0.Output[3] = self.f_box_RandomOutput_v2_25_Output_3
  l0.Output[4] = self.f_box_RandomOutput_v2_25_Output_4
  self.box_TaxiStrategiesController_26 = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self.box_TaxiStrategiesController_26
  l0._graph = self
  l0._name = "box_TaxiStrategiesController_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|434000722"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self.box_CinematicPrep_21 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_21
  l0._graph = self
  l0._name = "box_CinematicPrep_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|448895010"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_21_PostOut
  self.box_PlayDialog_v2_29 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_29
  l0._graph = self
  l0._name = "box_PlayDialog_v2_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|470201233"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_Timer_v2_10 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_10
  l0._graph = self
  l0._name = "box_Timer_v2_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|481730660"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_10_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_TaxiRatingController_31 = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self.box_TaxiRatingController_31
  l0._graph = self
  l0._name = "box_TaxiRatingController_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|526086754"
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = DummyFunction
  l0.RewardShown = self.f_box_TaxiRatingController_31_RewardShown
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self.box_ListWriter_28 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_28
  l0._graph = self
  l0._name = "box_ListWriter_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|712119325"
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_box_ListWriter_28_Added
  l0.Removed = self.f_box_ListWriter_28_Removed
  l0.Out = self.f_box_ListWriter_28_Out
  self.box_PlayDialog_v2_38 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_38
  l0._graph = self
  l0._name = "box_PlayDialog_v2_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|834816812"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_PlayDialog_v2_32 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_32
  l0._graph = self
  l0._name = "box_PlayDialog_v2_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|848746677"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_DriveAndTalk_33 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_33
  l0._graph = self
  l0._name = "box_DriveAndTalk_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|906886364"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_33_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_Timer_v2_14 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_14
  l0._graph = self
  l0._name = "box_Timer_v2_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|912036604"
  l0.Out = DummyFunction
  l0.Started = self.f_box_Timer_v2_14_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_14_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_DriveAndTalk_22 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_22
  l0._graph = self
  l0._name = "box_DriveAndTalk_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|922126483"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_22_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_DriveAndTalk_17 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_17
  l0._graph = self
  l0._name = "box_DriveAndTalk_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|930275669"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_17_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_GameplayInteractionController_30 = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self.box_GameplayInteractionController_30
  l0._graph = self
  l0._name = "box_GameplayInteractionController_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|1041011915"
  l0.Out = DummyFunction
  l0.Started = self.f_box_GameplayInteractionController_30_Started
  l0.Stopped = DummyFunction
  self.box_TaxiRidePickUpController_8 = cbox:CreateBox("domino/System/TaxiRidePickUpController.lua")
  l0 = self.box_TaxiRidePickUpController_8
  l0._graph = self
  l0._name = "box_TaxiRidePickUpController_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|1191643003"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TaxiRidePickUpController_8_Disabled
  l0.ClientSpawned = self.f_box_TaxiRidePickUpController_8_ClientSpawned
  l0.ClientPickedUp = self.f_box_TaxiRidePickUpController_8_ClientPickedUp
  l0.ClientConversationFinised = self.f_box_TaxiRidePickUpController_8_ClientConversationFinised
  self.box_MissionController_v4_37 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_37
  l0._graph = self
  l0._name = "box_MissionController_v4_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|1195822312"
  self.box_MultipleOR_16 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_16
  l0._graph = self
  l0._name = "box_MultipleOR_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|1295060650"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_16_Out
  self.box_DriveAndTalk_9 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_9
  l0._graph = self
  l0._name = "box_DriveAndTalk_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|1406159170"
  l0.Started = self.f_box_DriveAndTalk_9_Started
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_9_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_MissionLayer_v2_20 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_20
  l0._graph = self
  l0._name = "box_MissionLayer_v2_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|1436914633"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_20_Unloaded
  l0.Reseted = DummyFunction
  self.box_MultipleOR_43 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_43
  l0._graph = self
  l0._name = "box_MultipleOR_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|1462019013"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_43_Out
  self.box_Timer_v2_5 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_5
  l0._graph = self
  l0._name = "box_Timer_v2_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|1492833518"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_5_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_TaxiRideReachDestinationMonitor_4 = cbox:CreateBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self.box_TaxiRideReachDestinationMonitor_4
  l0._graph = self
  l0._name = "box_TaxiRideReachDestinationMonitor_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|1595037655"
  l0.Enabled = self.f_box_TaxiRideReachDestinationMonitor_4_Enabled
  l0.Disabled = DummyFunction
  l0.ReachDestination = self.f_box_TaxiRideReachDestinationMonitor_4_ReachDestination
  l0.ClientDropOff = self.f_box_TaxiRideReachDestinationMonitor_4_ClientDropOff
  self.box_MissionCheckpointReach_23 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_23
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|1599656392"
  l0.Out = self.f_box_MissionCheckpointReach_23_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_PlayDialog_v2_40 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_40
  l0._graph = self
  l0._name = "box_PlayDialog_v2_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|1648167971"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_TaxiRatingController_11 = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self.box_TaxiRatingController_11
  l0._graph = self
  l0._name = "box_TaxiRatingController_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|1724425250"
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = self.f_box_TaxiRatingController_11_RatingReset
  l0.RewardShown = DummyFunction
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self.box_PlayDialog_v2_36 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_36
  l0._graph = self
  l0._name = "box_PlayDialog_v2_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|1749720289"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_RandomOutput_v2_42 = cbox:CreateBox("domino/System/RandomOutput_v2.lua")
  l0 = self.box_RandomOutput_v2_42
  l0._graph = self
  l0._name = "box_RandomOutput_v2_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|1834064634"
  l0._DynamicAnchors = {Probability = 3, Output = 3}
  l0.Out = self.f_box_RandomOutput_v2_42_Out
  l0.ResetOut = DummyFunction
  l0.None = DummyFunction
  l0.Output[0] = self.f_box_RandomOutput_v2_42_Output_0
  l0.Output[1] = self.f_box_RandomOutput_v2_42_Output_1
  l0.Output[2] = self.f_box_RandomOutput_v2_42_Output_2
  self.box_PlayDialog_v2_35 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_35
  l0._graph = self
  l0._name = "box_PlayDialog_v2_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|2019751779"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|1202439837", "1202439837", "Taxi18_Main", "CheckPoint_0", "box_MultipleOR_24.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_24()
  l0 = self.box_MultipleOR_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|1021834658", "1021834658", "Taxi18_Main", "In", "box_MultipleOR_24.Input", self, l0)
  l0:Input(0)
end
function export:f_box_TaxiRatingController_13_RatingRemoved()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Timer_v2_14()
  l0 = self.box_TaxiRatingController_13
  l1 = self.box_Timer_v2_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|1299244087", "1299244087", "Taxi18_Main", "box_TaxiRatingController_13.RatingRemoved", "box_Timer_v2_14.Start", l0, l1)
  l1:Start()
end
function export:f_box_MissionMessageController_v3_18_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_20
  l0.LayerName = self.MissionLayer
  l0 = self.box_MissionMessageController_v3_18
  l1 = self.box_MissionLayer_v2_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|1289300404", "1289300404", "Taxi18_Main", "box_MissionMessageController_v3_18.Out", "box_MissionLayer_v2_20.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_TaxiStrategiesController_15_Paused()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|1189921138"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_3_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_3_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_3_Out_2
  l0 = self.box_TaxiStrategiesController_15
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|1160708821", "1160708821", "Taxi18_Main", "box_TaxiStrategiesController_15.Paused", "box_Ordered_Output_3.In", l0, l1)
  l1:In()
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MissionLayer_v2_2
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|794668992", "794668992", "Taxi18_Main", "box_MissionLayer_v2_2.Loaded", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_SetActionMap_v2_6_Popped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TaxiRatingController_31
  l0.MissionName = self.Mission
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|1967356241", "1967356241", "Taxi18_Main", "box_SetActionMap_v2_6.Popped", "box_TaxiRatingController_31.ShowReward", clone, l0)
  l0:ShowReward()
end
function export:f_box_MultipleOR_24_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = self.MissionLayer
  l0 = self.box_MultipleOR_24
  l1 = self.box_MissionLayer_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|1916964235", "1916964235", "Taxi18_Main", "box_MultipleOR_24.Out", "box_MissionLayer_v2_2.Load", l0, l1)
  l1:Load()
end
function export:f_box_TaxiStrategiesController_27_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiStrategiesController_27
  l1 = self.box_MissionMessageController_v3_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|1182508849", "1182508849", "Taxi18_Main", "box_TaxiStrategiesController_27.Stopped", "box_MissionMessageController_v3_18.ShowMissionComplete", l0, l1)
  l1:ShowMissionComplete()
end
function export:f_box_TaxiRideVehicleMonitor_7_ClientBailedOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_12()
  l0 = self.box_TaxiRideVehicleMonitor_7
  l1 = self.box_Taxi_AbortMission_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|667914301", "667914301", "Taxi18_Main", "box_TaxiRideVehicleMonitor_7.ClientBailedOut", "box_Taxi_AbortMission_12.ClientBailedOut", l0, l1)
  l1:ClientBailedOut()
end
function export:f_box_TaxiRideVehicleMonitor_7_ClientDeath()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_12()
  l0 = self.box_TaxiRideVehicleMonitor_7
  l1 = self.box_Taxi_AbortMission_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|1870721879", "1870721879", "Taxi18_Main", "box_TaxiRideVehicleMonitor_7.ClientDeath", "box_Taxi_AbortMission_12.ClientDead", l0, l1)
  l1:ClientDead()
end
function export:f_box_TaxiRideVehicleMonitor_7_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|1245593128"
  l0.Out = self.f_box_Simple_Node_19_Out
  l0 = self.box_TaxiRideVehicleMonitor_7
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|160156652", "160156652", "Taxi18_Main", "box_TaxiRideVehicleMonitor_7.Disabled", "box_Simple_Node_19.In", l0, l1)
  l1:In()
end
function export:f_box_TaxiRideVehicleMonitor_7_PlayerAbandonedVehicle()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_12()
  l0 = self.box_TaxiRideVehicleMonitor_7
  l1 = self.box_Taxi_AbortMission_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|1333927477", "1333927477", "Taxi18_Main", "box_TaxiRideVehicleMonitor_7.PlayerAbandonedVehicle", "box_Taxi_AbortMission_12.PlayerAbandonedVehicle", l0, l1)
  l1:PlayerAbandonedVehicle()
end
function export:f_box_TaxiRideVehicleMonitor_7_VehicleUnusable()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_12()
  l0 = self.box_TaxiRideVehicleMonitor_7
  l1 = self.box_Taxi_AbortMission_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|1161895842", "1161895842", "Taxi18_Main", "box_TaxiRideVehicleMonitor_7.VehicleUnusable", "box_Taxi_AbortMission_12.VehicleUnusable", l0, l1)
  l1:VehicleUnusable()
end
function export:f_box_RandomOutput_v2_25_Output_0()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_32
  l0.Entity = self.Client
  l0.SoundId = "soundbinary/1867911622.bnk"
  l0.Queue = 1
  l0 = self.box_RandomOutput_v2_25
  l1 = self.box_PlayDialog_v2_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|2070878929", "2070878929", "Taxi18_Main", "box_RandomOutput_v2_25.Output", "box_PlayDialog_v2_32.Start", l0, l1)
  l1:Start()
end
function export:f_box_RandomOutput_v2_25_Output_1()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_35
  l0.Entity = self.Client
  l0.SoundId = "soundbinary/3092395210.bnk"
  l0.Queue = 1
  l0 = self.box_RandomOutput_v2_25
  l1 = self.box_PlayDialog_v2_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|269455187", "269455187", "Taxi18_Main", "box_RandomOutput_v2_25.Output", "box_PlayDialog_v2_35.Start", l0, l1)
  l1:Start()
end
function export:f_box_RandomOutput_v2_25_Output_2()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_29
  l0.Entity = self.Client
  l0.SoundId = "soundbinary/2795069091.bnk"
  l0.Queue = 1
  l0 = self.box_RandomOutput_v2_25
  l1 = self.box_PlayDialog_v2_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|1811905791", "1811905791", "Taxi18_Main", "box_RandomOutput_v2_25.Output", "box_PlayDialog_v2_29.Start", l0, l1)
  l1:Start()
end
function export:f_box_RandomOutput_v2_25_Output_3()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_36
  l0.Entity = self.Client
  l0.SoundId = "soundbinary/785468299.bnk"
  l0.Queue = 1
  l0 = self.box_RandomOutput_v2_25
  l1 = self.box_PlayDialog_v2_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|226788878", "226788878", "Taxi18_Main", "box_RandomOutput_v2_25.Output", "box_PlayDialog_v2_36.Start", l0, l1)
  l1:Start()
end
function export:f_box_RandomOutput_v2_25_Output_4()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_38
  l0.Entity = self.Client
  l0.SoundId = "soundbinary/1047637062.bnk"
  l0.Queue = 1
  l0 = self.box_RandomOutput_v2_25
  l1 = self.box_PlayDialog_v2_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|1638141009", "1638141009", "Taxi18_Main", "box_RandomOutput_v2_25.Output", "box_PlayDialog_v2_38.Start", l0, l1)
  l1:Start()
end
function export:f_box_CinematicPrep_21_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_23
  l0.Checkpoint = "CheckPoint_0"
  l0 = self.box_CinematicPrep_21
  l1 = self.box_MissionCheckpointReach_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|1559687313", "1559687313", "Taxi18_Main", "box_CinematicPrep_21.PostOut", "box_MissionCheckpointReach_23.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_10_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_16()
  l0 = self.box_Timer_v2_10
  l1 = self.box_MultipleOR_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|2065588578", "2065588578", "Taxi18_Main", "box_Timer_v2_10.TimeElapsed", "box_MultipleOR_16.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_TaxiRatingController_31_RewardShown()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiStrategiesController_27
  l0.Config = "TaxiRideStrategyConfig.9223372047771309751"
  l0 = self.box_TaxiRatingController_31
  l1 = self.box_TaxiStrategiesController_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|255650298", "255650298", "Taxi18_Main", "box_TaxiRatingController_31.RewardShown", "box_TaxiStrategiesController_27.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_ListWriter_28_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_28
  self.GIC_Users = l0.Target
  self:OnEnter_box_GameplayInteractionController_30()
  l1 = self.box_GameplayInteractionController_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|287705854", "287705854", "Taxi18_Main", "box_ListWriter_28.Added", "box_GameplayInteractionController_30.Start", l0, l1)
  l1:Start()
end
function export:f_box_ListWriter_28_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_28
  self.GIC_Users = l0.Target
end
function export:f_box_ListWriter_28_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_28
  self.GIC_Users = l0.Target
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
  l0 = self.box_CinematicPrep_21
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|108788498", "108788498", "Taxi18_Main", "box_Get_Player_ID_1.Out", "box_CinematicPrep_21.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_DriveAndTalk_33_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_43()
  l0 = self.box_DriveAndTalk_33
  l1 = self.box_MultipleOR_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|1443851956", "1443851956", "Taxi18_Main", "box_DriveAndTalk_33.TalkFinished", "box_MultipleOR_43.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Timer_v2_14_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_RandomOutput_v2_25
  l0.Probability[0] = 0.2
  l0.Probability[1] = 0.2
  l0.Probability[2] = 0.2
  l0.Probability[3] = 0.2
  l0.Probability[4] = 0.2
  l0 = self.box_Timer_v2_14
  l1 = self.box_RandomOutput_v2_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|1784274653", "1784274653", "Taxi18_Main", "box_Timer_v2_14.Started", "box_RandomOutput_v2_25.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_14_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_16()
  l0 = self.box_Timer_v2_14
  l1 = self.box_MultipleOR_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|1958535389", "1958535389", "Taxi18_Main", "box_Timer_v2_14.TimeElapsed", "box_MultipleOR_16.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_DriveAndTalk_22_TalkFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_33
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149932"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0 = self.box_DriveAndTalk_22
  l1 = self.box_DriveAndTalk_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|1531427680", "1531427680", "Taxi18_Main", "box_DriveAndTalk_22.TalkFinished", "box_DriveAndTalk_33.Start", l0, l1)
  l1:Start()
end
function export:f_box_DriveAndTalk_17_TalkFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_22
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149931"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0 = self.box_DriveAndTalk_17
  l1 = self.box_DriveAndTalk_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|1958732903", "1958732903", "Taxi18_Main", "box_DriveAndTalk_17.TalkFinished", "box_DriveAndTalk_22.Start", l0, l1)
  l1:Start()
end
function export:f_box_GameplayInteractionController_30_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_9
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149929"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0 = self.box_GameplayInteractionController_30
  l1 = self.box_DriveAndTalk_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|1131922077", "1131922077", "Taxi18_Main", "box_GameplayInteractionController_30.Started", "box_DriveAndTalk_9.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_3_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_GameplayInteractionController_30()
  l0 = self.box_GameplayInteractionController_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|326152828", "326152828", "Taxi18_Main", "box_Ordered_Output_3.Out", "box_GameplayInteractionController_30.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_3_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Timer_v2_5()
  l0 = self.box_Timer_v2_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|396003905", "396003905", "Taxi18_Main", "box_Ordered_Output_3.Out", "box_Timer_v2_5.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_3_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Timer_v2_14()
  l0 = self.box_Timer_v2_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|152170263", "152170263", "Taxi18_Main", "box_Ordered_Output_3.Out", "box_Timer_v2_14.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_TaxiRidePickUpController_8_ClientConversationFinised()
  local l0
  self = self._graph
  self:OnEnter_box_TaxiRidePickUpController_8()
  l0 = self.box_TaxiRidePickUpController_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|480970184", "480970184", "Taxi18_Main", "box_TaxiRidePickUpController_8.ClientConversationFinised", "box_TaxiRidePickUpController_8.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_TaxiRidePickUpController_8_ClientPickedUp()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRidePickUpController_8
  self.PlayerVehicle = l0.Vehicle
  l0 = self.box_TaxiRideReachDestinationMonitor_4
  l0.Client = self.Client
  l0.DropOffIcon = "9223372047771309741"
  l0.LastDestination = 1
  l0.ShowGps = 1
  l0.Config = "TaxiRideGameplayBrick.9223372057728442518"
  l0 = self.box_TaxiRidePickUpController_8
  l1 = self.box_TaxiRideReachDestinationMonitor_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|1657318220", "1657318220", "Taxi18_Main", "box_TaxiRidePickUpController_8.ClientPickedUp", "box_TaxiRideReachDestinationMonitor_4.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TaxiRidePickUpController_8_ClientSpawned()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRidePickUpController_8
  self.Client = l0.Client
  self:OnEnter_box_TaxiRideVehicleMonitor_7()
  l1 = self.box_TaxiRideVehicleMonitor_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|1449831920", "1449831920", "Taxi18_Main", "box_TaxiRidePickUpController_8.ClientSpawned", "box_TaxiRideVehicleMonitor_7.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TaxiRidePickUpController_8_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_28
  l0.Input = self.GIC_Users
  l0.Data[0] = self.PlayerEntity
  l0.Data[1] = self.Client
  l0 = self.box_TaxiRidePickUpController_8
  l1 = self.box_ListWriter_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|912637680", "912637680", "Taxi18_Main", "box_TaxiRidePickUpController_8.Disabled", "box_ListWriter_28.Add", l0, l1)
  l1:Add()
end
function export:f_box_Simple_Node_19_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic_nocameralock"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|243432938"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_box_SetActionMap_v2_6_Popped
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|1616110513", "1616110513", "Taxi18_Main", "box_Simple_Node_19.Out", "box_SetActionMap_v2_6.Pop", clone, l0)
  l0:Pop()
end
function export:f_box_MultipleOR_16_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRatingController_13
  l0.MissionName = self.Mission
  l0.RatingAmount = 1
  l0 = self.box_MultipleOR_16
  l1 = self.box_TaxiRatingController_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|814475115", "814475115", "Taxi18_Main", "box_MultipleOR_16.Out", "box_TaxiRatingController_13.RemoveRating", l0, l1)
  l1:RemoveRating()
end
function export:f_box_DriveAndTalk_9_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_10
  l0.Seconds = 120
  l0 = self.box_DriveAndTalk_9
  l1 = self.box_Timer_v2_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|413862224", "413862224", "Taxi18_Main", "box_DriveAndTalk_9.Started", "box_Timer_v2_10.Start", l0, l1)
  l1:Start()
end
function export:f_box_DriveAndTalk_9_TalkFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_17
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149930"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0 = self.box_DriveAndTalk_9
  l1 = self.box_DriveAndTalk_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|712065010", "712065010", "Taxi18_Main", "box_DriveAndTalk_9.TalkFinished", "box_DriveAndTalk_17.Start", l0, l1)
  l1:Start()
end
function export:f_box_MissionLayer_v2_20_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_20
  l1 = self.box_MissionController_v4_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|13060024", "13060024", "Taxi18_Main", "box_MissionLayer_v2_20.Unloaded", "box_MissionController_v4_37.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_MultipleOR_43_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Timer_v2_5()
  l0 = self.box_MultipleOR_43
  l1 = self.box_Timer_v2_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|241990484", "241990484", "Taxi18_Main", "box_MultipleOR_43.Out", "box_Timer_v2_5.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_5_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_RandomOutput_v2_42
  l0.Probability[0] = 0.3
  l0.Probability[1] = 0.3
  l0.Probability[2] = 0.3
  l0 = self.box_Timer_v2_5
  l1 = self.box_RandomOutput_v2_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|371608110", "371608110", "Taxi18_Main", "box_Timer_v2_5.TimeElapsed", "box_RandomOutput_v2_42.In", l0, l1)
  l1:In()
end
function export:f_box_TaxiRideReachDestinationMonitor_4_ClientDropOff()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TaxiRideVehicleMonitor_7()
  l0 = self.box_TaxiRideReachDestinationMonitor_4
  l1 = self.box_TaxiRideVehicleMonitor_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|729280535", "729280535", "Taxi18_Main", "box_TaxiRideReachDestinationMonitor_4.ClientDropOff", "box_TaxiRideVehicleMonitor_7.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_TaxiRideReachDestinationMonitor_4_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRatingController_11
  l0.MissionName = self.Mission
  l0 = self.box_TaxiRideReachDestinationMonitor_4
  l1 = self.box_TaxiRatingController_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|1291577969", "1291577969", "Taxi18_Main", "box_TaxiRideReachDestinationMonitor_4.Enabled", "box_TaxiRatingController_11.ResetRating", l0, l1)
  l1:ResetRating()
end
function export:f_box_TaxiRideReachDestinationMonitor_4_ReachDestination()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiStrategiesController_15
  l0.Config = "TaxiRideStrategyConfig.9223372047771309751"
  l0 = self.box_TaxiRideReachDestinationMonitor_4
  l1 = self.box_TaxiStrategiesController_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|203967392", "203967392", "Taxi18_Main", "box_TaxiRideReachDestinationMonitor_4.ReachDestination", "box_TaxiStrategiesController_15.Pause", l0, l1)
  l1:Pause()
end
function export:f_box_MissionCheckpointReach_23_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TaxiRidePickUpController_8()
  l0 = self.box_MissionCheckpointReach_23
  l1 = self.box_TaxiRidePickUpController_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|1600803072", "1600803072", "Taxi18_Main", "box_MissionCheckpointReach_23.Out", "box_TaxiRidePickUpController_8.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TaxiRatingController_11_RatingReset()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiStrategiesController_26
  l0.Config = "TaxiRideStrategyConfig.9223372047771309751"
  l0 = self.box_TaxiRatingController_11
  l1 = self.box_TaxiStrategiesController_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|1024300754", "1024300754", "Taxi18_Main", "box_TaxiRatingController_11.RatingReset", "box_TaxiStrategiesController_26.Start", l0, l1)
  l1:Start()
end
function export:f_box_RandomOutput_v2_42_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_43()
  l0 = self.box_RandomOutput_v2_42
  l1 = self.box_MultipleOR_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|1524800913", "1524800913", "Taxi18_Main", "box_RandomOutput_v2_42.Out", "box_MultipleOR_43.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_RandomOutput_v2_42_Output_0()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_34
  l0.Entity = self.Client
  l0.SoundId = "soundbinary/2840773711.bnk"
  l0.Queue = 1
  l0 = self.box_RandomOutput_v2_42
  l1 = self.box_PlayDialog_v2_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|757169524", "757169524", "Taxi18_Main", "box_RandomOutput_v2_42.Output", "box_PlayDialog_v2_34.Start", l0, l1)
  l1:Start()
end
function export:f_box_RandomOutput_v2_42_Output_1()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_40
  l0.Entity = self.Client
  l0.SoundId = "soundbinary/457473115.bnk"
  l0.Queue = 1
  l0 = self.box_RandomOutput_v2_42
  l1 = self.box_PlayDialog_v2_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|1362539062", "1362539062", "Taxi18_Main", "box_RandomOutput_v2_42.Output", "box_PlayDialog_v2_40.Start", l0, l1)
  l1:Start()
end
function export:f_box_RandomOutput_v2_42_Output_2()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_41
  l0.Entity = self.Client
  l0.SoundId = "soundbinary/1474812156.bnk"
  l0.Queue = 1
  l0 = self.box_RandomOutput_v2_42
  l1 = self.box_PlayDialog_v2_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi18.domino|@Taxi18_Main|410772060", "410772060", "Taxi18_Main", "box_RandomOutput_v2_42.Output", "box_PlayDialog_v2_41.Start", l0, l1)
  l1:Start()
end
function export:OnEnter_box_Taxi_AbortMission_12()
  local l0
  l0 = self.box_Taxi_AbortMission_12
  l0.MissionName = self.Mission
  l0.LayerName = self.MissionLayer
  l0.StrategyConfig = "TaxiRideStrategyConfig.9223372047771309751"
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Vehicle = self.PlayerVehicle
  l0.Conversation = "ConversationSetting.9223372048760149934"
end
function export:OnEnter_box_MultipleOR_24()
end
function export:OnEnter_box_TaxiRideVehicleMonitor_7()
  local l0
  l0 = self.box_TaxiRideVehicleMonitor_7
  l0.Client = self.Client
  l0.Config = "TaxiRideGameplayBrick.9223372057728442518"
end
function export:OnEnter_box_Timer_v2_14()
  local l0
  l0 = self.box_Timer_v2_14
  l0.Seconds = 15
end
function export:OnEnter_box_GameplayInteractionController_30()
  local l0
  l0 = self.box_GameplayInteractionController_30
  l0.Users = self.GIC_Users
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
end
function export:OnEnter_box_TaxiRidePickUpController_8()
  local l0
  l0 = self.box_TaxiRidePickUpController_8
  l0.ClientClo = "9223372047771309731"
  l0.PickUpIcon = "9223372047771309720"
  l0.Config = "TaxiRideGameplayBrick.9223372057728442518"
end
function export:OnEnter_box_MultipleOR_16()
end
function export:OnEnter_box_MultipleOR_43()
end
function export:OnEnter_box_Timer_v2_5()
  local l0
  l0 = self.box_Timer_v2_5
  l0.Seconds = 20
end
_compilerVersion = 4
