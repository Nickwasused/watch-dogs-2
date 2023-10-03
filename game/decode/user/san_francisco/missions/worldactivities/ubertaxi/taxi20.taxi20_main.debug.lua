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
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.debug.lua")
  cbox:RegisterBox("domino/System/TaxiRatingController.lua")
  cbox:RegisterBox("domino/System/TaxiRidePickUpController.lua")
  cbox:RegisterBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  cbox:RegisterBox("domino/System/TaxiRideVehicleMonitor.lua")
  cbox:RegisterBox("domino/System/TaxiStrategiesController.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "Taxi20_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main"
  self.PlayerEntity = nil
  self.CurrentDestination = 0
  self.Mission = "MissionList.9223372048443685983"
  self.PlayerVehicle = nil
  self.GICUsers = {}
  self.Ivy = nil
  self.InteractionID = 0
  self.box_MultipleOR_62 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_62
  l0._graph = self
  l0._name = "box_MultipleOR_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|24225547"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_62_Out
  self.box_Timer_v2_42 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_42
  l0._graph = self
  l0._name = "box_Timer_v2_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|109706387"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_42_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MultipleOR_55 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_55
  l0._graph = self
  l0._name = "box_MultipleOR_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|124028966"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_55_Out
  self.box_MultipleOR_31 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_31
  l0._graph = self
  l0._name = "box_MultipleOR_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|135374509"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_31_Out
  self.box_GameplayInteractionController_1 = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self.box_GameplayInteractionController_1
  l0._graph = self
  l0._name = "box_GameplayInteractionController_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|156436446"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  self.box_MissionMessageController_v3_38 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_38
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|183933551"
  l0.Out = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_DriveAndTalk_6 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_6
  l0._graph = self
  l0._name = "box_DriveAndTalk_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|209449432"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_6_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_6_TalkFailed
  self.box_DriveAndTalk_13 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_13
  l0._graph = self
  l0._name = "box_DriveAndTalk_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|251923857"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_13_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_13_TalkFailed
  self.box_GameplayInteractionController_19 = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self.box_GameplayInteractionController_19
  l0._graph = self
  l0._name = "box_GameplayInteractionController_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|257456644"
  l0.Out = self.f_box_GameplayInteractionController_19_Out
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  self.box_Multiple_AND_27 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_27
  l0._graph = self
  l0._name = "box_Multiple_AND_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|309203693"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_27_Out
  self.box_DriveAndTalk_7 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_7
  l0._graph = self
  l0._name = "box_DriveAndTalk_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|371512790"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_MissionLayer_v2_46 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_46
  l0._graph = self
  l0._name = "box_MissionLayer_v2_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|383934188"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_46_Unloaded
  l0.Reseted = DummyFunction
  self.box_TaxiRideReachDestinationMonitor_8 = cbox:CreateBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self.box_TaxiRideReachDestinationMonitor_8
  l0._graph = self
  l0._name = "box_TaxiRideReachDestinationMonitor_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|419048366"
  l0.Enabled = self.f_box_TaxiRideReachDestinationMonitor_8_Enabled
  l0.Disabled = DummyFunction
  l0.ReachDestination = self.f_box_TaxiRideReachDestinationMonitor_8_ReachDestination
  l0.ClientDropOff = self.f_box_TaxiRideReachDestinationMonitor_8_ClientDropOff
  self.box_MultipleOR_61 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_61
  l0._graph = self
  l0._name = "box_MultipleOR_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|432980176"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_61_Out
  self.box_TaxiRidePickUpController_22 = cbox:CreateBox("domino/System/TaxiRidePickUpController.lua")
  l0 = self.box_TaxiRidePickUpController_22
  l0._graph = self
  l0._name = "box_TaxiRidePickUpController_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|481260440"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TaxiRidePickUpController_22_Disabled
  l0.ClientSpawned = self.f_box_TaxiRidePickUpController_22_ClientSpawned
  l0.ClientPickedUp = self.f_box_TaxiRidePickUpController_22_ClientPickedUp
  l0.ClientConversationFinised = self.f_box_TaxiRidePickUpController_22_ClientConversationFinised
  self.box_MultipleOR_33 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_33
  l0._graph = self
  l0._name = "box_MultipleOR_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|550821261"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_33_Out
  self.box_TriggerMonitor_v2_20 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_20
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|633904785"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TriggerMonitor_v2_20_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_20_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_TaxiRideVehicleMonitor_26 = cbox:CreateBox("domino/System/TaxiRideVehicleMonitor.lua")
  l0 = self.box_TaxiRideVehicleMonitor_26
  l0._graph = self
  l0._name = "box_TaxiRideVehicleMonitor_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|642293306"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ClientDeath = self.f_box_TaxiRideVehicleMonitor_26_ClientDeath
  l0.VehicleUnusable = self.f_box_TaxiRideVehicleMonitor_26_VehicleUnusable
  l0.ClientBailedOut = self.f_box_TaxiRideVehicleMonitor_26_ClientBailedOut
  l0.PlayerAbandonedVehicle = self.f_box_TaxiRideVehicleMonitor_26_PlayerAbandonedVehicle
  self.box_CinematicPrep_28 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_28
  l0._graph = self
  l0._name = "box_CinematicPrep_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|662986652"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_28_PostOut
  self.box_TaxiRideReachDestinationMonitor_9 = cbox:CreateBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self.box_TaxiRideReachDestinationMonitor_9
  l0._graph = self
  l0._name = "box_TaxiRideReachDestinationMonitor_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|669449290"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TaxiRideReachDestinationMonitor_9_Disabled
  l0.ReachDestination = self.f_box_TaxiRideReachDestinationMonitor_9_ReachDestination
  l0.ClientDropOff = DummyFunction
  self.box_GameplayInteractionController_56 = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self.box_GameplayInteractionController_56
  l0._graph = self
  l0._name = "box_GameplayInteractionController_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|671516956"
  l0.Out = DummyFunction
  l0.Started = self.f_box_GameplayInteractionController_56_Started
  l0.Stopped = DummyFunction
  self.box_DriveAndTalk_57 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_57
  l0._graph = self
  l0._name = "box_DriveAndTalk_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|728475059"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_57_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_57_TalkFailed
  self.box_TaxiRatingController_48 = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self.box_TaxiRatingController_48
  l0._graph = self
  l0._name = "box_TaxiRatingController_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|775773922"
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = DummyFunction
  l0.RewardShown = self.f_box_TaxiRatingController_48_RewardShown
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self.box_Taxi_AbortMission_15 = cbox:CreateBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.debug.lua")
  l0 = self.box_Taxi_AbortMission_15
  l0._graph = self
  l0._name = "box_Taxi_AbortMission_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|847036869"
  self.box_MultipleOR_30 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_30
  l0._graph = self
  l0._name = "box_MultipleOR_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|961130646"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_30_Out
  self.box_DriveAndTalk_37 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_37
  l0._graph = self
  l0._name = "box_DriveAndTalk_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|983544299"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_37_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_37_TalkFailed
  self.box_MissionMessageController_v3_52 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_52
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|997285898"
  l0.Out = self.f_box_MissionMessageController_v3_52_Out
  l0.MessageCompleted = DummyFunction
  self.box_GameplayInteractionController_39 = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self.box_GameplayInteractionController_39
  l0._graph = self
  l0._name = "box_GameplayInteractionController_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1080110948"
  l0.Out = DummyFunction
  l0.Started = self.f_box_GameplayInteractionController_39_Started
  l0.Stopped = DummyFunction
  self.box_MultipleOR_69 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_69
  l0._graph = self
  l0._name = "box_MultipleOR_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1083087160"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_69_Out
  self.box_MissionLayer_v2_51 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_51
  l0._graph = self
  l0._name = "box_MissionLayer_v2_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1183978758"
  l0.Loaded = self.f_box_MissionLayer_v2_51_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_GameplayInteractionController_2 = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self.box_GameplayInteractionController_2
  l0._graph = self
  l0._name = "box_GameplayInteractionController_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1222767689"
  l0.Out = DummyFunction
  l0.Started = self.f_box_GameplayInteractionController_2_Started
  l0.Stopped = DummyFunction
  self.box_DriveAndTalk_23 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_23
  l0._graph = self
  l0._name = "box_DriveAndTalk_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1248372929"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_23_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_23_TalkFailed
  self.box_MissionController_v4_76 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_76
  l0._graph = self
  l0._name = "box_MissionController_v4_76"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1273284108"
  self.box_TaxiRideReachDestinationMonitor_10 = cbox:CreateBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self.box_TaxiRideReachDestinationMonitor_10
  l0._graph = self
  l0._name = "box_TaxiRideReachDestinationMonitor_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1286350181"
  l0.Enabled = self.f_box_TaxiRideReachDestinationMonitor_10_Enabled
  l0.Disabled = self.f_box_TaxiRideReachDestinationMonitor_10_Disabled
  l0.ReachDestination = self.f_box_TaxiRideReachDestinationMonitor_10_ReachDestination
  l0.ClientDropOff = DummyFunction
  self.box_DriveAndTalk_21 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_21
  l0._graph = self
  l0._name = "box_DriveAndTalk_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1301418504"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_21_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_21_TalkFailed
  self.box_DriveAndTalk_63 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_63
  l0._graph = self
  l0._name = "box_DriveAndTalk_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1301665110"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_63_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_63_TalkFailed
  self.box_MissionMessageController_v3_44 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_44
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1365573154"
  l0.Out = self.f_box_MissionMessageController_v3_44_Out
  l0.MessageCompleted = DummyFunction
  self.box_MissionMessageController_v3_45 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_45
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1382575489"
  l0.Out = self.f_box_MissionMessageController_v3_45_Out
  l0.MessageCompleted = DummyFunction
  self.box_TaxiRatingController_3 = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self.box_TaxiRatingController_3
  l0._graph = self
  l0._name = "box_TaxiRatingController_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1391780170"
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = self.f_box_TaxiRatingController_3_RatingReset
  l0.RewardShown = DummyFunction
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self.box_DriveAndTalk_43 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_43
  l0._graph = self
  l0._name = "box_DriveAndTalk_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1411956639"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_43_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_43_TalkFailed
  self.box_DriveAndTalk_25 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_25
  l0._graph = self
  l0._name = "box_DriveAndTalk_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1422718792"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_25_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_25_TalkFailed
  self.box_MissionMessageController_v3_40 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_40
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1473348009"
  l0.Out = self.f_box_MissionMessageController_v3_40_Out
  l0.MessageCompleted = DummyFunction
  self.box_TaxiStrategiesController_14 = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self.box_TaxiStrategiesController_14
  l0._graph = self
  l0._name = "box_TaxiStrategiesController_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1476628510"
  l0.Started = self.f_box_TaxiStrategiesController_14_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self.box_MultipleOR_4 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_4
  l0._graph = self
  l0._name = "box_MultipleOR_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1498273279"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_4_Out
  self.box_DriveAndTalk_35 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_35
  l0._graph = self
  l0._name = "box_DriveAndTalk_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1540473477"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_35_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_35_TalkFailed
  self.box_MultipleOR_60 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_60
  l0._graph = self
  l0._name = "box_MultipleOR_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1581978585"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_60_Out
  self.box_DriveAndTalk_64 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_64
  l0._graph = self
  l0._name = "box_DriveAndTalk_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1595761227"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_Multiple_AND_32 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_32
  l0._graph = self
  l0._name = "box_Multiple_AND_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1609502094"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_32_Out
  self.box_MultipleOR_66 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_66
  l0._graph = self
  l0._name = "box_MultipleOR_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1689407463"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_66_Out
  self.box_DriveAndTalk_16 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_16
  l0._graph = self
  l0._name = "box_DriveAndTalk_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1690859529"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_16_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_16_TalkFailed
  self.box_GameplayInteractionController_54 = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self.box_GameplayInteractionController_54
  l0._graph = self
  l0._name = "box_GameplayInteractionController_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1694629414"
  l0.Out = self.f_box_GameplayInteractionController_54_Out
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  self.box_Multiple_AND_41 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_41
  l0._graph = self
  l0._name = "box_Multiple_AND_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1738092463"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_41_Out
  self.box_TaxiRideReachDestinationMonitor_11 = cbox:CreateBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self.box_TaxiRideReachDestinationMonitor_11
  l0._graph = self
  l0._name = "box_TaxiRideReachDestinationMonitor_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1754496806"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TaxiRideReachDestinationMonitor_11_Disabled
  l0.ReachDestination = self.f_box_TaxiRideReachDestinationMonitor_11_ReachDestination
  l0.ClientDropOff = DummyFunction
  self.box_MultipleOR_67 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_67
  l0._graph = self
  l0._name = "box_MultipleOR_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1788078995"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_67_Out
  self.box_DriveAndTalk_47 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_47
  l0._graph = self
  l0._name = "box_DriveAndTalk_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1802366532"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_47_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_47_TalkFailed
  self.box_GameplayInteractionController_58 = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self.box_GameplayInteractionController_58
  l0._graph = self
  l0._name = "box_GameplayInteractionController_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1845102164"
  l0.Out = self.f_box_GameplayInteractionController_58_Out
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  self.box_TaxiStrategiesController_5 = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self.box_TaxiStrategiesController_5
  l0._graph = self
  l0._name = "box_TaxiStrategiesController_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1879264808"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = self.f_box_TaxiStrategiesController_5_Paused
  l0.Resumed = DummyFunction
  self.box_Timer_v2_53 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_53
  l0._graph = self
  l0._name = "box_Timer_v2_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1881197137"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_53_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MultipleOR_72 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_72
  l0._graph = self
  l0._name = "box_MultipleOR_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1888535227"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_72_Out
  self.box_Timer_v2_24 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_24
  l0._graph = self
  l0._name = "box_Timer_v2_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1907286005"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_24_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MultipleOR_68 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_68
  l0._graph = self
  l0._name = "box_MultipleOR_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1962630115"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_68_Out
  self.box_ListWriter_71 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_71
  l0._graph = self
  l0._name = "box_ListWriter_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1991619017"
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_box_ListWriter_71_Added
  l0.Removed = self.f_box_ListWriter_71_Removed
  l0.Out = self.f_box_ListWriter_71_Out
  self.box_MissionCheckpointReach_29 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_29
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|2030635013"
  l0.Out = self.f_box_MissionCheckpointReach_29_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_GameplayInteractionController_49 = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self.box_GameplayInteractionController_49
  l0._graph = self
  l0._name = "box_GameplayInteractionController_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|2082905664"
  l0.Out = DummyFunction
  l0.Started = self.f_box_GameplayInteractionController_49_Started
  l0.Stopped = DummyFunction
  self.box_TaxiStrategiesController_70 = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self.box_TaxiStrategiesController_70
  l0._graph = self
  l0._name = "box_TaxiStrategiesController_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|2126304385"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_TaxiStrategiesController_70_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
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
  self:OnEnter_box_MultipleOR_30()
  l0 = self.box_MultipleOR_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1124157396", "1124157396", "Taxi20_Main", "CheckPoint_0", "box_MultipleOR_30.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_30()
  l0 = self.box_MultipleOR_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1731658574", "1731658574", "Taxi20_Main", "In", "box_MultipleOR_30.Input", self, l0)
  l0:Input(0)
end
function export:f_box_MultipleOR_62_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_53
  l0.Seconds = 5
  l0 = self.box_MultipleOR_62
  l1 = self.box_Timer_v2_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|427083212", "427083212", "Taxi20_Main", "box_MultipleOR_62.Out", "box_Timer_v2_53.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_42_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_43
  l0.Pawn1 = self.PlayerEntity
  l0.Pawn2 = self.Ivy
  l0.Conversation = "ConversationSetting.9223372052166273564"
  l0.StartDelay = 0.1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0 = self.box_Timer_v2_42
  l1 = self.box_DriveAndTalk_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|110633093", "110633093", "Taxi20_Main", "box_Timer_v2_42.TimeElapsed", "box_DriveAndTalk_43.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_55_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|2012083062"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_17_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_17_Out_1
  l0 = self.box_MultipleOR_55
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1070504703", "1070504703", "Taxi20_Main", "box_MultipleOR_55.Out", "box_Ordered_Output_17.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_31_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_41()
  l0 = self.box_MultipleOR_31
  l1 = self.box_Multiple_AND_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1664888732", "1664888732", "Taxi20_Main", "box_MultipleOR_31.Out", "box_Multiple_AND_41.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_DriveAndTalk_6_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_66()
  l0 = self.box_DriveAndTalk_6
  l1 = self.box_MultipleOR_66
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|676729560", "676729560", "Taxi20_Main", "box_DriveAndTalk_6.TalkFailed", "box_MultipleOR_66.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_DriveAndTalk_6_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_66()
  l0 = self.box_DriveAndTalk_6
  l1 = self.box_MultipleOR_66
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1691256706", "1691256706", "Taxi20_Main", "box_DriveAndTalk_6.TalkFinished", "box_MultipleOR_66.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_DriveAndTalk_13_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_55()
  l0 = self.box_DriveAndTalk_13
  l1 = self.box_MultipleOR_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|107730594", "107730594", "Taxi20_Main", "box_DriveAndTalk_13.TalkFailed", "box_MultipleOR_55.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_DriveAndTalk_13_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_55()
  l0 = self.box_DriveAndTalk_13
  l1 = self.box_MultipleOR_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1186076137", "1186076137", "Taxi20_Main", "box_DriveAndTalk_13.TalkFinished", "box_MultipleOR_55.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_GameplayInteractionController_19_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_41()
  l0 = self.box_GameplayInteractionController_19
  l1 = self.box_Multiple_AND_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1189750515", "1189750515", "Taxi20_Main", "box_GameplayInteractionController_19.Out", "box_Multiple_AND_41.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_Multiple_AND_27_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_52
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF200",
    item = "Objective_Wait2",
    id = "688327"
  }
  l0 = self.box_Multiple_AND_27
  l1 = self.box_MissionMessageController_v3_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|443416043", "443416043", "Taxi20_Main", "box_Multiple_AND_27.Out", "box_MissionMessageController_v3_52.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_MissionLayer_v2_46_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_46
  l1 = self.box_MissionController_v4_76
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|860194066", "860194066", "Taxi20_Main", "box_MissionLayer_v2_46.Unloaded", "box_MissionController_v4_76.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_TaxiRideReachDestinationMonitor_8_ClientDropOff()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|887239500"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_65_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_65_Out_1
  l0 = self.box_TaxiRideReachDestinationMonitor_8
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|503036", "503036", "Taxi20_Main", "box_TaxiRideReachDestinationMonitor_8.ClientDropOff", "box_Ordered_Output_65.In", l0, l1)
  l1:In()
end
function export:f_box_TaxiRideReachDestinationMonitor_8_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_20()
  l0 = self.box_TaxiRideReachDestinationMonitor_8
  l1 = self.box_TriggerMonitor_v2_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1900822144", "1900822144", "Taxi20_Main", "box_TaxiRideReachDestinationMonitor_8.Enabled", "box_TriggerMonitor_v2_20.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TaxiRideReachDestinationMonitor_8_ReachDestination()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1348794253"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_12_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_12_Out_1
  l0 = self.box_TaxiRideReachDestinationMonitor_8
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|610599975", "610599975", "Taxi20_Main", "box_TaxiRideReachDestinationMonitor_8.ReachDestination", "box_Ordered_Output_12.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_61_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_23
  l0.Pawn1 = self.PlayerEntity
  l0.Pawn2 = self.Ivy
  l0.Conversation = "ConversationSetting.9223372052166273567"
  l0.StartDelay = 0.1
  l0 = self.box_MultipleOR_61
  l1 = self.box_DriveAndTalk_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1147304367", "1147304367", "Taxi20_Main", "box_MultipleOR_61.Out", "box_DriveAndTalk_23.Start", l0, l1)
  l1:Start()
end
function export:f_box_TaxiRidePickUpController_22_ClientConversationFinised()
  local l0
  self = self._graph
  self:OnEnter_box_TaxiRidePickUpController_22()
  l0 = self.box_TaxiRidePickUpController_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1341588485", "1341588485", "Taxi20_Main", "box_TaxiRidePickUpController_22.ClientConversationFinised", "box_TaxiRidePickUpController_22.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_TaxiRidePickUpController_22_ClientPickedUp()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRidePickUpController_22
  self.PlayerVehicle = l0.Vehicle
  l0 = self.box_MissionMessageController_v3_38
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF200",
    item = "Objective_Wait",
    id = "630515"
  }
  l0.ShowPreviousObjectiveComplete = 0
  l0.HasObjectiveMarker = 0
  l0 = self.box_TaxiRidePickUpController_22
  l1 = self.box_MissionMessageController_v3_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1384445008", "1384445008", "Taxi20_Main", "box_TaxiRidePickUpController_22.ClientPickedUp", "box_MissionMessageController_v3_38.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_TaxiRidePickUpController_22_ClientSpawned()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRidePickUpController_22
  self.Ivy = l0.Client
  self:OnEnter_box_TaxiRideVehicleMonitor_26()
  l1 = self.box_TaxiRideVehicleMonitor_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|792593724", "792593724", "Taxi20_Main", "box_TaxiRidePickUpController_22.ClientSpawned", "box_TaxiRideVehicleMonitor_26.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TaxiRidePickUpController_22_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_6
  l0.Pawn1 = self.PlayerEntity
  l0.Pawn2 = self.Ivy
  l0.Conversation = "ConversationSetting.9223372052166273566"
  l0.StartDelay = 0.1
  l0 = self.box_TaxiRidePickUpController_22
  l1 = self.box_DriveAndTalk_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|495438150", "495438150", "Taxi20_Main", "box_TaxiRidePickUpController_22.Disabled", "box_DriveAndTalk_6.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_33_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_13
  l0.Pawn1 = self.PlayerEntity
  l0.Pawn2 = self.Ivy
  l0.Conversation = "ConversationSetting.9223372052166273565"
  l0.StartDelay = 0.1
  l0 = self.box_MultipleOR_33
  l1 = self.box_DriveAndTalk_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|124307028", "124307028", "Taxi20_Main", "box_MultipleOR_33.Out", "box_DriveAndTalk_13.Start", l0, l1)
  l1:Start()
end
function export:f_box_TriggerMonitor_v2_20_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_DriveAndTalk_7()
  l0 = self.box_TriggerMonitor_v2_20
  l1 = self.box_DriveAndTalk_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|85810559", "85810559", "Taxi20_Main", "box_TriggerMonitor_v2_20.Disabled", "box_DriveAndTalk_7.Start", l0, l1)
  l1:Start()
end
function export:f_box_TriggerMonitor_v2_20_Enter()
  local l0
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_20()
  l0 = self.box_TriggerMonitor_v2_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1325131055", "1325131055", "Taxi20_Main", "box_TriggerMonitor_v2_20.Enter", "box_TriggerMonitor_v2_20.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_TaxiRideVehicleMonitor_26_ClientBailedOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_15()
  l0 = self.box_TaxiRideVehicleMonitor_26
  l1 = self.box_Taxi_AbortMission_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1376547351", "1376547351", "Taxi20_Main", "box_TaxiRideVehicleMonitor_26.ClientBailedOut", "box_Taxi_AbortMission_15.ClientBailedOut", l0, l1)
  l1:ClientBailedOut()
end
function export:f_box_TaxiRideVehicleMonitor_26_ClientDeath()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_15()
  l0 = self.box_TaxiRideVehicleMonitor_26
  l1 = self.box_Taxi_AbortMission_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|687144870", "687144870", "Taxi20_Main", "box_TaxiRideVehicleMonitor_26.ClientDeath", "box_Taxi_AbortMission_15.ClientDead", l0, l1)
  l1:ClientDead()
end
function export:f_box_TaxiRideVehicleMonitor_26_PlayerAbandonedVehicle()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_15()
  l0 = self.box_TaxiRideVehicleMonitor_26
  l1 = self.box_Taxi_AbortMission_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|31871538", "31871538", "Taxi20_Main", "box_TaxiRideVehicleMonitor_26.PlayerAbandonedVehicle", "box_Taxi_AbortMission_15.PlayerAbandonedVehicle", l0, l1)
  l1:PlayerAbandonedVehicle()
end
function export:f_box_TaxiRideVehicleMonitor_26_VehicleUnusable()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_15()
  l0 = self.box_TaxiRideVehicleMonitor_26
  l1 = self.box_Taxi_AbortMission_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1088944282", "1088944282", "Taxi20_Main", "box_TaxiRideVehicleMonitor_26.VehicleUnusable", "box_Taxi_AbortMission_15.VehicleUnusable", l0, l1)
  l1:VehicleUnusable()
end
function export:f_box_CinematicPrep_28_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_29
  l0.Checkpoint = "CheckPoint_0"
  l0 = self.box_CinematicPrep_28
  l1 = self.box_MissionCheckpointReach_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|593727646", "593727646", "Taxi20_Main", "box_CinematicPrep_28.PostOut", "box_MissionCheckpointReach_29.In", l0, l1)
  l1:In()
end
function export:f_box_TaxiRideReachDestinationMonitor_9_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_GameplayInteractionController_58
  l0.InInteractionId = self.InteractionID
  l0 = self.box_TaxiRideReachDestinationMonitor_9
  l1 = self.box_GameplayInteractionController_58
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|2120708071", "2120708071", "Taxi20_Main", "box_TaxiRideReachDestinationMonitor_9.Disabled", "box_GameplayInteractionController_58.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_TaxiRideReachDestinationMonitor_9_ReachDestination()
  local l0
  self = self._graph
  self:OnEnter_box_TaxiRideReachDestinationMonitor_9()
  l0 = self.box_TaxiRideReachDestinationMonitor_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|117908638", "117908638", "Taxi20_Main", "box_TaxiRideReachDestinationMonitor_9.ReachDestination", "box_TaxiRideReachDestinationMonitor_9.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_GameplayInteractionController_56_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_GameplayInteractionController_56
  self.InteractionID = l0.interactionId
  l0 = self.box_DriveAndTalk_64
  l0.Pawn1 = self.PlayerEntity
  l0.Pawn2 = self.Ivy
  l0.Conversation = "ConversationSetting.9223372052166273563"
  l0.StartDelay = 2
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0 = self.box_GameplayInteractionController_56
  l1 = self.box_DriveAndTalk_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1027044606", "1027044606", "Taxi20_Main", "box_GameplayInteractionController_56.Started", "box_DriveAndTalk_64.Start", l0, l1)
  l1:Start()
end
function export:f_box_DriveAndTalk_57_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_69()
  l0 = self.box_DriveAndTalk_57
  l1 = self.box_MultipleOR_69
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1075728964", "1075728964", "Taxi20_Main", "box_DriveAndTalk_57.TalkFailed", "box_MultipleOR_69.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_DriveAndTalk_57_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_69()
  l0 = self.box_DriveAndTalk_57
  l1 = self.box_MultipleOR_69
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|593812783", "593812783", "Taxi20_Main", "box_DriveAndTalk_57.TalkFinished", "box_MultipleOR_69.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_TaxiRatingController_48_RewardShown()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiStrategiesController_70
  l0.Config = "TaxiRideStrategyConfig.9223372048443685984"
  l0 = self.box_TaxiRatingController_48
  l1 = self.box_TaxiStrategiesController_70
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1219958356", "1219958356", "Taxi20_Main", "box_TaxiRatingController_48.RewardShown", "box_TaxiStrategiesController_70.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_Ordered_Output_65_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TaxiRatingController_48
  l0.MissionName = self.Mission
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1657767428", "1657767428", "Taxi20_Main", "box_Ordered_Output_65.Out", "box_TaxiRatingController_48.ShowReward", clone, l0)
  l0:ShowReward()
end
function export:f_box_Ordered_Output_65_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1081288358"
  l0.Out = self.f_box_Simple_Node_36_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|91523685", "91523685", "Taxi20_Main", "box_Ordered_Output_65.Out", "box_Simple_Node_36.In", clone, l0)
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
  l0 = self.box_GameplayInteractionController_39
  l0.Users = self.GICUsers
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|251887317", "251887317", "Taxi20_Main", "box_Ordered_Output_50.Out", "box_GameplayInteractionController_39.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_50_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TaxiRideReachDestinationMonitor_9()
  l0 = self.box_TaxiRideReachDestinationMonitor_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|892924977", "892924977", "Taxi20_Main", "box_Ordered_Output_50.Out", "box_TaxiRideReachDestinationMonitor_9.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MultipleOR_30_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_51
  l0.LayerName = "Taxi20_Main"
  l0 = self.box_MultipleOR_30
  l1 = self.box_MissionLayer_v2_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|268050086", "268050086", "Taxi20_Main", "box_MultipleOR_30.Out", "box_MissionLayer_v2_51.Load", l0, l1)
  l1:Load()
end
function export:f_box_DriveAndTalk_37_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_4()
  l0 = self.box_DriveAndTalk_37
  l1 = self.box_MultipleOR_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1133728200", "1133728200", "Taxi20_Main", "box_DriveAndTalk_37.TalkFailed", "box_MultipleOR_4.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_DriveAndTalk_37_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_4()
  l0 = self.box_DriveAndTalk_37
  l1 = self.box_MultipleOR_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|412836803", "412836803", "Taxi20_Main", "box_DriveAndTalk_37.TalkFinished", "box_MultipleOR_4.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MissionMessageController_v3_52_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_57
  l0.Pawn1 = self.PlayerEntity
  l0.Pawn2 = self.Ivy
  l0.Conversation = "ConversationSetting.9223372052166273577"
  l0.StartDelay = 0.1
  l0 = self.box_MissionMessageController_v3_52
  l1 = self.box_DriveAndTalk_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1763644298", "1763644298", "Taxi20_Main", "box_MissionMessageController_v3_52.Out", "box_DriveAndTalk_57.Start", l0, l1)
  l1:Start()
end
function export:f_box_GameplayInteractionController_39_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_GameplayInteractionController_39
  self.InteractionID = l0.interactionId
  l0 = self.box_DriveAndTalk_47
  l0.Pawn1 = self.PlayerEntity
  l0.Pawn2 = self.Ivy
  l0.Conversation = "ConversationSetting.9223372052166273572"
  l0.StartDelay = 0.6
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0 = self.box_GameplayInteractionController_39
  l1 = self.box_DriveAndTalk_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|221268902", "221268902", "Taxi20_Main", "box_GameplayInteractionController_39.Started", "box_DriveAndTalk_47.Start", l0, l1)
  l1:Start()
end
function export:f_box_Simple_Node_36_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1819113936"
  l0.Out = self.f_box_Simple_Node_34_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1149364618", "1149364618", "Taxi20_Main", "box_Simple_Node_36.Out", "box_Simple_Node_34.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_69_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_63
  l0.Pawn1 = self.PlayerEntity
  l0.Pawn2 = self.Ivy
  l0.Conversation = "ConversationSetting.9223372052166273568"
  l0.StartDelay = 0.1
  l0 = self.box_MultipleOR_69
  l1 = self.box_DriveAndTalk_63
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1330735289", "1330735289", "Taxi20_Main", "box_MultipleOR_69.Out", "box_DriveAndTalk_63.Start", l0, l1)
  l1:Start()
end
function export:f_box_MissionLayer_v2_51_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1689582691"
  l0.Out = self.f_box_Get_Player_ID_18_Out
  l0 = self.box_MissionLayer_v2_51
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|2105447415", "2105447415", "Taxi20_Main", "box_MissionLayer_v2_51.Loaded", "box_Get_Player_ID_18.In", l0, l1)
  l1:In()
end
function export:f_box_GameplayInteractionController_2_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_GameplayInteractionController_2
  self.InteractionID = l0.interactionId
  l0 = self.box_TaxiRatingController_3
  l0.MissionName = self.Mission
  l0 = self.box_GameplayInteractionController_2
  l1 = self.box_TaxiRatingController_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|2045757650", "2045757650", "Taxi20_Main", "box_GameplayInteractionController_2.Started", "box_TaxiRatingController_3.ResetRating", l0, l1)
  l1:ResetRating()
end
function export:f_box_DriveAndTalk_23_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_67()
  l0 = self.box_DriveAndTalk_23
  l1 = self.box_MultipleOR_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1564076635", "1564076635", "Taxi20_Main", "box_DriveAndTalk_23.TalkFailed", "box_MultipleOR_67.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_DriveAndTalk_23_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_67()
  l0 = self.box_DriveAndTalk_23
  l1 = self.box_MultipleOR_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|655913484", "655913484", "Taxi20_Main", "box_DriveAndTalk_23.TalkFinished", "box_MultipleOR_67.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_TaxiRideReachDestinationMonitor_10_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_GameplayInteractionController_19
  l0.InInteractionId = self.InteractionID
  l0 = self.box_TaxiRideReachDestinationMonitor_10
  l1 = self.box_GameplayInteractionController_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1254627165", "1254627165", "Taxi20_Main", "box_TaxiRideReachDestinationMonitor_10.Disabled", "box_GameplayInteractionController_19.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_TaxiRideReachDestinationMonitor_10_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_24
  l0.Seconds = 11
  l0 = self.box_TaxiRideReachDestinationMonitor_10
  l1 = self.box_Timer_v2_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1537390757", "1537390757", "Taxi20_Main", "box_TaxiRideReachDestinationMonitor_10.Enabled", "box_Timer_v2_24.Start", l0, l1)
  l1:Start()
end
function export:f_box_TaxiRideReachDestinationMonitor_10_ReachDestination()
  local l0
  self = self._graph
  self:OnEnter_box_TaxiRideReachDestinationMonitor_10()
  l0 = self.box_TaxiRideReachDestinationMonitor_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|274680956", "274680956", "Taxi20_Main", "box_TaxiRideReachDestinationMonitor_10.ReachDestination", "box_TaxiRideReachDestinationMonitor_10.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_DriveAndTalk_21_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_61()
  l0 = self.box_DriveAndTalk_21
  l1 = self.box_MultipleOR_61
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|233375799", "233375799", "Taxi20_Main", "box_DriveAndTalk_21.TalkFailed", "box_MultipleOR_61.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_DriveAndTalk_21_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_61()
  l0 = self.box_DriveAndTalk_21
  l1 = self.box_MultipleOR_61
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|184797521", "184797521", "Taxi20_Main", "box_DriveAndTalk_21.TalkFinished", "box_MultipleOR_61.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_DriveAndTalk_63_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_72()
  l0 = self.box_DriveAndTalk_63
  l1 = self.box_MultipleOR_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1309195227", "1309195227", "Taxi20_Main", "box_DriveAndTalk_63.TalkFailed", "box_MultipleOR_72.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_DriveAndTalk_63_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_72()
  l0 = self.box_DriveAndTalk_63
  l1 = self.box_MultipleOR_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|527610617", "527610617", "Taxi20_Main", "box_DriveAndTalk_63.TalkFinished", "box_MultipleOR_72.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Ordered_Output_12_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_DriveAndTalk_7()
  l0 = self.box_DriveAndTalk_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1587555950", "1587555950", "Taxi20_Main", "box_Ordered_Output_12.Out", "box_DriveAndTalk_7.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_12_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TaxiStrategiesController_5
  l0.Config = "TaxiRideStrategyConfig.9223372048443685984"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|652087320", "652087320", "Taxi20_Main", "box_Ordered_Output_12.Out", "box_TaxiStrategiesController_5.Pause", clone, l0)
  l0:Pause()
end
function export:f_box_MissionMessageController_v3_44_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_21
  l0.Pawn1 = self.PlayerEntity
  l0.Pawn2 = self.Ivy
  l0.Conversation = "ConversationSetting.9223372052166273575"
  l0.StartDelay = 0.1
  l0 = self.box_MissionMessageController_v3_44
  l1 = self.box_DriveAndTalk_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|686891534", "686891534", "Taxi20_Main", "box_MissionMessageController_v3_44.Out", "box_DriveAndTalk_21.Start", l0, l1)
  l1:Start()
end
function export:f_box_MissionMessageController_v3_45_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_46
  l0.LayerName = "Taxi20_Main"
  l0 = self.box_MissionMessageController_v3_45
  l1 = self.box_MissionLayer_v2_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1071239634", "1071239634", "Taxi20_Main", "box_MissionMessageController_v3_45.Out", "box_MissionLayer_v2_46.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_TaxiRatingController_3_RatingReset()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiStrategiesController_14
  l0.Config = "TaxiRideStrategyConfig.9223372048443685984"
  l0 = self.box_TaxiRatingController_3
  l1 = self.box_TaxiStrategiesController_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1655322618", "1655322618", "Taxi20_Main", "box_TaxiRatingController_3.RatingReset", "box_TaxiStrategiesController_14.Start", l0, l1)
  l1:Start()
end
function export:f_box_DriveAndTalk_43_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_60()
  l0 = self.box_DriveAndTalk_43
  l1 = self.box_MultipleOR_60
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1949381585", "1949381585", "Taxi20_Main", "box_DriveAndTalk_43.TalkFailed", "box_MultipleOR_60.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_DriveAndTalk_43_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_60()
  l0 = self.box_DriveAndTalk_43
  l1 = self.box_MultipleOR_60
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1116093513", "1116093513", "Taxi20_Main", "box_DriveAndTalk_43.TalkFinished", "box_MultipleOR_60.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_DriveAndTalk_25_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_33()
  l0 = self.box_DriveAndTalk_25
  l1 = self.box_MultipleOR_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|760156804", "760156804", "Taxi20_Main", "box_DriveAndTalk_25.TalkFailed", "box_MultipleOR_33.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_DriveAndTalk_25_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_33()
  l0 = self.box_DriveAndTalk_25
  l1 = self.box_MultipleOR_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|936371876", "936371876", "Taxi20_Main", "box_DriveAndTalk_25.TalkFinished", "box_MultipleOR_33.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MissionMessageController_v3_40_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_25
  l0.Pawn1 = self.PlayerEntity
  l0.Pawn2 = self.Ivy
  l0.Conversation = "ConversationSetting.9223372052166273576"
  l0.StartDelay = 0.1
  l0 = self.box_MissionMessageController_v3_40
  l1 = self.box_DriveAndTalk_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|2094427982", "2094427982", "Taxi20_Main", "box_MissionMessageController_v3_40.Out", "box_DriveAndTalk_25.Start", l0, l1)
  l1:Start()
end
function export:f_box_TaxiStrategiesController_14_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TaxiRideReachDestinationMonitor_10()
  l0 = self.box_TaxiStrategiesController_14
  l1 = self.box_TaxiRideReachDestinationMonitor_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1401421660", "1401421660", "Taxi20_Main", "box_TaxiStrategiesController_14.Started", "box_TaxiRideReachDestinationMonitor_10.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MultipleOR_4_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_42
  l0.Seconds = 4
  l0 = self.box_MultipleOR_4
  l1 = self.box_Timer_v2_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1594371582", "1594371582", "Taxi20_Main", "box_MultipleOR_4.Out", "box_Timer_v2_42.Start", l0, l1)
  l1:Start()
end
function export:f_box_DriveAndTalk_35_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_68()
  l0 = self.box_DriveAndTalk_35
  l1 = self.box_MultipleOR_68
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1249620641", "1249620641", "Taxi20_Main", "box_DriveAndTalk_35.TalkFailed", "box_MultipleOR_68.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_DriveAndTalk_35_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_68()
  l0 = self.box_DriveAndTalk_35
  l1 = self.box_MultipleOR_68
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|41789061", "41789061", "Taxi20_Main", "box_DriveAndTalk_35.TalkFinished", "box_MultipleOR_68.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MultipleOR_60_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_32()
  l0 = self.box_MultipleOR_60
  l1 = self.box_Multiple_AND_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1980652813", "1980652813", "Taxi20_Main", "box_MultipleOR_60.Out", "box_Multiple_AND_32.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_Multiple_AND_32_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_44
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF200",
    item = "Objective_Wait2",
    id = "688327"
  }
  l0 = self.box_Multiple_AND_32
  l1 = self.box_MissionMessageController_v3_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1574840139", "1574840139", "Taxi20_Main", "box_Multiple_AND_32.Out", "box_MissionMessageController_v3_44.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_MultipleOR_66_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_71
  l0.Input = self.GICUsers
  l0.Data[0] = self.PlayerEntity
  l0.Data[1] = self.Ivy
  l0 = self.box_MultipleOR_66
  l1 = self.box_ListWriter_71
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1676016587", "1676016587", "Taxi20_Main", "box_MultipleOR_66.Out", "box_ListWriter_71.Add", l0, l1)
  l1:Add()
end
function export:f_box_Get_Player_ID_18_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_28
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|979843831", "979843831", "Taxi20_Main", "box_Get_Player_ID_18.Out", "box_CinematicPrep_28.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_DriveAndTalk_16_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_31()
  l0 = self.box_DriveAndTalk_16
  l1 = self.box_MultipleOR_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|2023401131", "2023401131", "Taxi20_Main", "box_DriveAndTalk_16.TalkFailed", "box_MultipleOR_31.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_DriveAndTalk_16_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_31()
  l0 = self.box_DriveAndTalk_16
  l1 = self.box_MultipleOR_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|698198449", "698198449", "Taxi20_Main", "box_DriveAndTalk_16.TalkFinished", "box_MultipleOR_31.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_GameplayInteractionController_54_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_32()
  l0 = self.box_GameplayInteractionController_54
  l1 = self.box_Multiple_AND_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|669461374", "669461374", "Taxi20_Main", "box_GameplayInteractionController_54.Out", "box_Multiple_AND_32.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_Multiple_AND_41_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_40
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF200",
    item = "Objective_Wait2",
    id = "688327"
  }
  l0 = self.box_Multiple_AND_41
  l1 = self.box_MissionMessageController_v3_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1605420868", "1605420868", "Taxi20_Main", "box_Multiple_AND_41.Out", "box_MissionMessageController_v3_40.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_TaxiRideReachDestinationMonitor_11_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_GameplayInteractionController_54
  l0.Users = self.GICUsers
  l0.InInteractionId = self.InteractionID
  l0 = self.box_TaxiRideReachDestinationMonitor_11
  l1 = self.box_GameplayInteractionController_54
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1024008024", "1024008024", "Taxi20_Main", "box_TaxiRideReachDestinationMonitor_11.Disabled", "box_GameplayInteractionController_54.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_TaxiRideReachDestinationMonitor_11_ReachDestination()
  local l0
  self = self._graph
  self:OnEnter_box_TaxiRideReachDestinationMonitor_11()
  l0 = self.box_TaxiRideReachDestinationMonitor_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|559767313", "559767313", "Taxi20_Main", "box_TaxiRideReachDestinationMonitor_11.ReachDestination", "box_TaxiRideReachDestinationMonitor_11.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_MultipleOR_67_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|911905298"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_50_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_50_Out_1
  l0 = self.box_MultipleOR_67
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|343912432", "343912432", "Taxi20_Main", "box_MultipleOR_67.Out", "box_Ordered_Output_50.In", l0, l1)
  l1:In()
end
function export:f_box_DriveAndTalk_47_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_62()
  l0 = self.box_DriveAndTalk_47
  l1 = self.box_MultipleOR_62
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1575279832", "1575279832", "Taxi20_Main", "box_DriveAndTalk_47.TalkFailed", "box_MultipleOR_62.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_DriveAndTalk_47_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_62()
  l0 = self.box_DriveAndTalk_47
  l1 = self.box_MultipleOR_62
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|16076361", "16076361", "Taxi20_Main", "box_DriveAndTalk_47.TalkFinished", "box_MultipleOR_62.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Simple_Node_34_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TaxiRideVehicleMonitor_26()
  l0 = self.box_TaxiRideVehicleMonitor_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1998658332", "1998658332", "Taxi20_Main", "box_Simple_Node_34.Out", "box_TaxiRideVehicleMonitor_26.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_GameplayInteractionController_58_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_27()
  l0 = self.box_GameplayInteractionController_58
  l1 = self.box_Multiple_AND_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1309701476", "1309701476", "Taxi20_Main", "box_GameplayInteractionController_58.Out", "box_Multiple_AND_27.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_TaxiStrategiesController_5_Paused()
  local l0, l1
  self = self._graph
  l0 = self.box_GameplayInteractionController_1
  l0.InInteractionId = self.InteractionID
  l0 = self.box_TaxiStrategiesController_5
  l1 = self.box_GameplayInteractionController_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|890010913", "890010913", "Taxi20_Main", "box_TaxiStrategiesController_5.Paused", "box_GameplayInteractionController_1.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_Timer_v2_53_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_35
  l0.Pawn1 = self.PlayerEntity
  l0.Pawn2 = self.Ivy
  l0.Conversation = "ConversationSetting.9223372052166273562"
  l0.StartDelay = 0.1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0 = self.box_Timer_v2_53
  l1 = self.box_DriveAndTalk_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|2010944509", "2010944509", "Taxi20_Main", "box_Timer_v2_53.TimeElapsed", "box_DriveAndTalk_35.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_72_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|2100612970"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_59_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_59_Out_1
  l0 = self.box_MultipleOR_72
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|201427699", "201427699", "Taxi20_Main", "box_MultipleOR_72.Out", "box_Ordered_Output_59.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_24_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_16
  l0.Pawn1 = self.PlayerEntity
  l0.Pawn2 = self.Ivy
  l0.Conversation = "ConversationSetting.9223372052166273561"
  l0.StartDelay = 0.1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0 = self.box_Timer_v2_24
  l1 = self.box_DriveAndTalk_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1523317370", "1523317370", "Taxi20_Main", "box_Timer_v2_24.TimeElapsed", "box_DriveAndTalk_16.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_68_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_27()
  l0 = self.box_MultipleOR_68
  l1 = self.box_Multiple_AND_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1544265068", "1544265068", "Taxi20_Main", "box_MultipleOR_68.Out", "box_Multiple_AND_27.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_ListWriter_71_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_71
  self.GICUsers = l0.Target
  l0 = self.box_GameplayInteractionController_2
  l0.Users = self.GICUsers
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0 = self.box_ListWriter_71
  l1 = self.box_GameplayInteractionController_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1787843829", "1787843829", "Taxi20_Main", "box_ListWriter_71.Added", "box_GameplayInteractionController_2.Start", l0, l1)
  l1:Start()
end
function export:f_box_ListWriter_71_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_71
  self.GICUsers = l0.Target
end
function export:f_box_ListWriter_71_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_71
  self.GICUsers = l0.Target
end
function export:f_box_Ordered_Output_17_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_GameplayInteractionController_49
  l0.Users = self.GICUsers
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1218637974", "1218637974", "Taxi20_Main", "box_Ordered_Output_17.Out", "box_GameplayInteractionController_49.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_17_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TaxiRideReachDestinationMonitor_11()
  l0 = self.box_TaxiRideReachDestinationMonitor_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|412122862", "412122862", "Taxi20_Main", "box_Ordered_Output_17.Out", "box_TaxiRideReachDestinationMonitor_11.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MissionCheckpointReach_29_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TaxiRidePickUpController_22()
  l0 = self.box_MissionCheckpointReach_29
  l1 = self.box_TaxiRidePickUpController_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|851450188", "851450188", "Taxi20_Main", "box_MissionCheckpointReach_29.Out", "box_TaxiRidePickUpController_22.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_GameplayInteractionController_49_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_GameplayInteractionController_49
  self.InteractionID = l0.interactionId
  l0 = self.box_DriveAndTalk_37
  l0.Pawn1 = self.PlayerEntity
  l0.Pawn2 = self.Ivy
  l0.Conversation = "ConversationSetting.9223372052166273573"
  l0.StartDelay = 0.6
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0 = self.box_GameplayInteractionController_49
  l1 = self.box_DriveAndTalk_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|568713820", "568713820", "Taxi20_Main", "box_GameplayInteractionController_49.Started", "box_DriveAndTalk_37.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_59_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_GameplayInteractionController_56
  l0.Users = self.GICUsers
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1373252610", "1373252610", "Taxi20_Main", "box_Ordered_Output_59.Out", "box_GameplayInteractionController_56.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_59_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TaxiRideReachDestinationMonitor_8
  l0.Client = self.Ivy
  l0.DropOffIcon = "9223372051441424212"
  l0.LastDestination = 1
  l0.ShowGps = 1
  l0.ManageObjective = 1
  l0.CustomObjective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF200",
    item = "Objective_Reach_4",
    id = "683864"
  }
  l0.Config = "TaxiRideGameplayBrick.9223372057535679965"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|1967321196", "1967321196", "Taxi20_Main", "box_Ordered_Output_59.Out", "box_TaxiRideReachDestinationMonitor_8.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_TaxiStrategiesController_70_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiStrategiesController_70
  l1 = self.box_MissionMessageController_v3_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi20.domino|@Taxi20_Main|176059716", "176059716", "Taxi20_Main", "box_TaxiStrategiesController_70.Stopped", "box_MissionMessageController_v3_45.ShowMissionComplete", l0, l1)
  l1:ShowMissionComplete()
end
function export:OnEnter_box_MultipleOR_62()
end
function export:OnEnter_box_MultipleOR_55()
end
function export:OnEnter_box_MultipleOR_31()
end
function export:OnEnter_box_Multiple_AND_27()
end
function export:OnEnter_box_DriveAndTalk_7()
  local l0
  l0 = self.box_DriveAndTalk_7
  l0.Pawn1 = self.PlayerEntity
  l0.Pawn2 = self.Ivy
  l0.Conversation = "ConversationSetting.9223372052166273578"
  l0.StartDelay = 0.1
end
function export:OnEnter_box_MultipleOR_61()
end
function export:OnEnter_box_TaxiRidePickUpController_22()
  local l0
  l0 = self.box_TaxiRidePickUpController_22
  l0.ClientClo = "9223372048443729269"
  l0.PickUpIcon = "9223372048443729264"
  l0.Config = "TaxiRideGameplayBrick.9223372057535679965"
end
function export:OnEnter_box_MultipleOR_33()
end
function export:OnEnter_box_TriggerMonitor_v2_20()
  local l0
  l0 = self.box_TriggerMonitor_v2_20
  l0.Trigger = "9223372057535679978"
end
function export:OnEnter_box_TaxiRideVehicleMonitor_26()
  local l0
  l0 = self.box_TaxiRideVehicleMonitor_26
  l0.Client = self.Ivy
  l0.Config = "TaxiRideGameplayBrick.9223372057535679965"
end
function export:OnEnter_box_TaxiRideReachDestinationMonitor_9()
  local l0
  l0 = self.box_TaxiRideReachDestinationMonitor_9
  l0.Client = self.Ivy
  l0.DropOffIcon = "9223372048443729277"
  l0.ShowGps = 1
  l0.ManageObjective = 1
  l0.CustomObjective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF200",
    item = "Objective_Reach_3",
    id = "630514"
  }
  l0.Config = "TaxiRideGameplayBrick.9223372057535679965"
end
function export:OnEnter_box_Taxi_AbortMission_15()
  local l0
  l0 = self.box_Taxi_AbortMission_15
  l0.MissionName = self.Mission
  l0.LayerName = "Taxi20_Main"
  l0.StrategyConfig = "TaxiRideStrategyConfig.9223372048443685984"
  l0.Pawn1 = self.Ivy
  l0.Pawn2 = self.PlayerEntity
  l0.Vehicle = self.PlayerVehicle
  l0.Conversation = "ConversationSetting.9223372052166273569"
end
function export:OnEnter_box_MultipleOR_30()
end
function export:OnEnter_box_MultipleOR_69()
end
function export:OnEnter_box_TaxiRideReachDestinationMonitor_10()
  local l0
  l0 = self.box_TaxiRideReachDestinationMonitor_10
  l0.Client = self.Ivy
  l0.DropOffIcon = "9223372048443729273"
  l0.ShowGps = 1
  l0.ManageObjective = 1
  l0.CustomObjective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF200",
    item = "Objective_Reach_1",
    id = "630512"
  }
  l0.Config = "TaxiRideGameplayBrick.9223372057535679965"
end
function export:OnEnter_box_MultipleOR_4()
end
function export:OnEnter_box_MultipleOR_60()
end
function export:OnEnter_box_Multiple_AND_32()
end
function export:OnEnter_box_MultipleOR_66()
end
function export:OnEnter_box_Multiple_AND_41()
end
function export:OnEnter_box_TaxiRideReachDestinationMonitor_11()
  local l0
  l0 = self.box_TaxiRideReachDestinationMonitor_11
  l0.Client = self.Ivy
  l0.DropOffIcon = "9223372048443729275"
  l0.ShowGps = 1
  l0.ManageObjective = 1
  l0.CustomObjective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF200",
    item = "Objective_Reach_2",
    id = "630513"
  }
  l0.Config = "TaxiRideGameplayBrick.9223372057535679965"
end
function export:OnEnter_box_MultipleOR_67()
end
function export:OnEnter_box_MultipleOR_72()
end
function export:OnEnter_box_MultipleOR_68()
end
_compilerVersion = 4
