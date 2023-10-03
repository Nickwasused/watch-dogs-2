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
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.debug.lua")
  cbox:RegisterBox("domino/System/TaxiRatingController.lua")
  cbox:RegisterBox("domino/System/TaxiRidePickUpController.lua")
  cbox:RegisterBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  cbox:RegisterBox("domino/System/TaxiRideVehicleMonitor.lua")
  cbox:RegisterBox("domino/System/TaxiStrategiesController.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "Taxi06_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main"
  self.PlayerEntity = nil
  self.Mission = "MissionList.9223372046811578497"
  self.PlayerVehicle = nil
  self.MissionLayer = "Taxi02_Main"
  self.SimonHewl = nil
  self.GICUsers = {}
  self.box_TaxiRatingController_25 = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self.box_TaxiRatingController_25
  l0._graph = self
  l0._name = "box_TaxiRatingController_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|49120974"
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = DummyFunction
  l0.RewardShown = self.f_box_TaxiRatingController_25_RewardShown
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self.box_MissionMessageController_v3_20 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_20
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|114118279"
  l0.Out = self.f_box_MissionMessageController_v3_20_Out
  l0.MessageCompleted = DummyFunction
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionMessageController_v3_31 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_31
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|249665849"
  l0.Out = self.f_box_MissionMessageController_v3_31_Out
  l0.MessageCompleted = DummyFunction
  self.box_CinematicPrep_14 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_14
  l0._graph = self
  l0._name = "box_CinematicPrep_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|290467870"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_14_PostOut
  self.box_Taxi_AbortMission_11 = cbox:CreateBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.debug.lua")
  l0 = self.box_Taxi_AbortMission_11
  l0._graph = self
  l0._name = "box_Taxi_AbortMission_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|458639487"
  self.box_TaxiRidePickUpController_12 = cbox:CreateBox("domino/System/TaxiRidePickUpController.lua")
  l0 = self.box_TaxiRidePickUpController_12
  l0._graph = self
  l0._name = "box_TaxiRidePickUpController_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|567333457"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TaxiRidePickUpController_12_Disabled
  l0.ClientSpawned = self.f_box_TaxiRidePickUpController_12_ClientSpawned
  l0.ClientPickedUp = self.f_box_TaxiRidePickUpController_12_ClientPickedUp
  l0.ClientConversationFinised = self.f_box_TaxiRidePickUpController_12_ClientConversationFinised
  self.box_MissionMessageController_v3_19 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_19
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|602951780"
  l0.Out = self.f_box_MissionMessageController_v3_19_Out
  l0.MessageCompleted = DummyFunction
  self.box_MissionLayer_v2_30 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_30
  l0._graph = self
  l0._name = "box_MissionLayer_v2_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|640785859"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_30_Unloaded
  l0.Reseted = DummyFunction
  self.box_Timer_v2_35 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_35
  l0._graph = self
  l0._name = "box_Timer_v2_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|760655788"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_35_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_36 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_36
  l0._graph = self
  l0._name = "box_Timer_v2_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|835662410"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_36_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_TaxiStrategiesController_29 = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self.box_TaxiStrategiesController_29
  l0._graph = self
  l0._name = "box_TaxiStrategiesController_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|861791371"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_TaxiStrategiesController_29_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self.box_Timer_v2_42 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_42
  l0._graph = self
  l0._name = "box_Timer_v2_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|903636592"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_42_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MultipleOR_24 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_24
  l0._graph = self
  l0._name = "box_MultipleOR_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|936469569"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_24_Out
  self.box_TaxiStrategiesController_3 = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self.box_TaxiStrategiesController_3
  l0._graph = self
  l0._name = "box_TaxiStrategiesController_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|952652371"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self.box_TaxiRideReachDestinationMonitor_13 = cbox:CreateBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self.box_TaxiRideReachDestinationMonitor_13
  l0._graph = self
  l0._name = "box_TaxiRideReachDestinationMonitor_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|992522174"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TaxiRideReachDestinationMonitor_13_Disabled
  l0.ReachDestination = self.f_box_TaxiRideReachDestinationMonitor_13_ReachDestination
  l0.ClientDropOff = self.f_box_TaxiRideReachDestinationMonitor_13_ClientDropOff
  self.box_MultipleOR_18 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_18
  l0._graph = self
  l0._name = "box_MultipleOR_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|1131366782"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_18_Out
  self.box_ListWriter_5 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_5
  l0._graph = self
  l0._name = "box_ListWriter_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|1213136815"
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_box_ListWriter_5_Added
  l0.Removed = self.f_box_ListWriter_5_Removed
  l0.Out = self.f_box_ListWriter_5_Out
  self.box_MissionCheckpointReach_15 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_15
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|1285188006"
  l0.Out = self.f_box_MissionCheckpointReach_15_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_TaxiRatingController_22 = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self.box_TaxiRatingController_22
  l0._graph = self
  l0._name = "box_TaxiRatingController_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|1378596868"
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = self.f_box_TaxiRatingController_22_RatingReset
  l0.RewardShown = DummyFunction
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self.box_TaxiStrategiesController_21 = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self.box_TaxiStrategiesController_21
  l0._graph = self
  l0._name = "box_TaxiStrategiesController_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|1406001314"
  l0.Started = self.f_box_TaxiStrategiesController_21_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self.box_DriveAndTalk_37 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_37
  l0._graph = self
  l0._name = "box_DriveAndTalk_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|1420869985"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_DriveAndTalk_37_Stopped
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_37_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_37_TalkFailed
  self.box_DriveAndTalk_38 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_38
  l0._graph = self
  l0._name = "box_DriveAndTalk_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|1490721062"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_Timer_v2_40 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_40
  l0._graph = self
  l0._name = "box_Timer_v2_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|1584125217"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_40_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MultipleOR_23 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_23
  l0._graph = self
  l0._name = "box_MultipleOR_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|1587777152"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_23_Out
  self.box_TaxiRideVehicleMonitor_17 = cbox:CreateBox("domino/System/TaxiRideVehicleMonitor.lua")
  l0 = self.box_TaxiRideVehicleMonitor_17
  l0._graph = self
  l0._name = "box_TaxiRideVehicleMonitor_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|1592867710"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TaxiRideVehicleMonitor_17_Disabled
  l0.ClientDeath = self.f_box_TaxiRideVehicleMonitor_17_ClientDeath
  l0.VehicleUnusable = self.f_box_TaxiRideVehicleMonitor_17_VehicleUnusable
  l0.ClientBailedOut = self.f_box_TaxiRideVehicleMonitor_17_ClientBailedOut
  l0.PlayerAbandonedVehicle = self.f_box_TaxiRideVehicleMonitor_17_PlayerAbandonedVehicle
  self.box_MissionController_v4_32 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_32
  l0._graph = self
  l0._name = "box_MissionController_v4_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|1720919423"
  self.box_GameplayInteractionController_8 = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self.box_GameplayInteractionController_8
  l0._graph = self
  l0._name = "box_GameplayInteractionController_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|1806625994"
  l0.Out = DummyFunction
  l0.Started = self.f_box_GameplayInteractionController_8_Started
  l0.Stopped = self.f_box_GameplayInteractionController_8_Stopped
  self.box_DriveAndTalk_4 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_4
  l0._graph = self
  l0._name = "box_DriveAndTalk_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|1919084538"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_DriveAndTalk_4_Stopped
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_4_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_4_TalkFailed
  self.box_DriveAndTalk_34 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_34
  l0._graph = self
  l0._name = "box_DriveAndTalk_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|2051695759"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_DriveAndTalk_34_Stopped
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_34_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_34_TalkFailed
  self.box_MultipleOR_16 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_16
  l0._graph = self
  l0._name = "box_MultipleOR_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|2115366576"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_16_Out
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
  self:OnEnter_box_MultipleOR_16()
  l0 = self.box_MultipleOR_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|300725286", "300725286", "Taxi06_Main", "CheckPoint_0", "box_MultipleOR_16.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_16()
  l0 = self.box_MultipleOR_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|358768447", "358768447", "Taxi06_Main", "In", "box_MultipleOR_16.Input", self, l0)
  l0:Input(0)
end
function export:f_box_TaxiRatingController_25_RewardShown()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiStrategiesController_29
  l0.Config = "TaxiRideStrategyConfig.9223372047360464804"
  l0 = self.box_TaxiRatingController_25
  l1 = self.box_TaxiStrategiesController_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|803518067", "803518067", "Taxi06_Main", "box_TaxiRatingController_25.RewardShown", "box_TaxiStrategiesController_29.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_MissionMessageController_v3_20_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_20
  l1 = self.box_TaxiStrategiesController_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|149257370", "149257370", "Taxi06_Main", "box_MissionMessageController_v3_20.Out", "box_TaxiStrategiesController_3.Pause", l0, l1)
  l1:Pause()
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MissionLayer_v2_2
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|794668992", "794668992", "Taxi06_Main", "box_MissionLayer_v2_2.Loaded", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_v3_31_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_30
  l0.LayerName = "Taxi06_Main"
  l0 = self.box_MissionMessageController_v3_31
  l1 = self.box_MissionLayer_v2_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|1870811634", "1870811634", "Taxi06_Main", "box_MissionMessageController_v3_31.Out", "box_MissionLayer_v2_30.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_CinematicPrep_14_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_15
  l0.Checkpoint = "CheckPoint_0"
  l0 = self.box_CinematicPrep_14
  l1 = self.box_MissionCheckpointReach_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|395979142", "395979142", "Taxi06_Main", "box_CinematicPrep_14.PostOut", "box_MissionCheckpointReach_15.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_9_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|2023761178"
  l0.Out = self.f_box_Simple_Node_6_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|1765715098", "1765715098", "Taxi06_Main", "box_Simple_Node_9.Out", "box_Simple_Node_6.In", clone, l0)
  l0:In()
end
function export:f_box_TaxiRidePickUpController_12_ClientConversationFinised()
  local l0
  self = self._graph
  self:OnEnter_box_TaxiRidePickUpController_12()
  l0 = self.box_TaxiRidePickUpController_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|1498755469", "1498755469", "Taxi06_Main", "box_TaxiRidePickUpController_12.ClientConversationFinised", "box_TaxiRidePickUpController_12.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_TaxiRidePickUpController_12_ClientPickedUp()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRidePickUpController_12
  self.PlayerVehicle = l0.Vehicle
  l0 = self.box_MissionMessageController_v3_19
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "ReachSingleDestination",
    id = "20000191"
  }
  l0.ShowPreviousObjectiveComplete = 0
  l0.HasObjectiveMarker = 0
  l0 = self.box_TaxiRidePickUpController_12
  l1 = self.box_MissionMessageController_v3_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|932438928", "932438928", "Taxi06_Main", "box_TaxiRidePickUpController_12.ClientPickedUp", "box_MissionMessageController_v3_19.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_TaxiRidePickUpController_12_ClientSpawned()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRidePickUpController_12
  self.SimonHewl = l0.Client
  self:OnEnter_box_TaxiRideVehicleMonitor_17()
  l1 = self.box_TaxiRideVehicleMonitor_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|747194374", "747194374", "Taxi06_Main", "box_TaxiRidePickUpController_12.ClientSpawned", "box_TaxiRideVehicleMonitor_17.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TaxiRidePickUpController_12_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_5
  l0.Input = self.GICUsers
  l0.Data[0] = self.PlayerEntity
  l0.Data[1] = self.SimonHewl
  l0 = self.box_TaxiRidePickUpController_12
  l1 = self.box_ListWriter_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|166985581", "166985581", "Taxi06_Main", "box_TaxiRidePickUpController_12.Disabled", "box_ListWriter_5.Add", l0, l1)
  l1:Add()
end
function export:f_box_MissionMessageController_v3_19_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRatingController_22
  l0.MissionName = "MissionList.9223372046811578497"
  l0 = self.box_MissionMessageController_v3_19
  l1 = self.box_TaxiRatingController_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|1883205590", "1883205590", "Taxi06_Main", "box_MissionMessageController_v3_19.Out", "box_TaxiRatingController_22.ResetRating", l0, l1)
  l1:ResetRating()
end
function export:f_box_MissionLayer_v2_30_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_30
  l1 = self.box_MissionController_v4_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|1686468929", "1686468929", "Taxi06_Main", "box_MissionLayer_v2_30.Unloaded", "box_MissionController_v4_32.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_Timer_v2_35_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_DriveAndTalk_34()
  l0 = self.box_Timer_v2_35
  l1 = self.box_DriveAndTalk_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|1121647480", "1121647480", "Taxi06_Main", "box_Timer_v2_35.TimeElapsed", "box_DriveAndTalk_34.Start", l0, l1)
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
  l0 = self.box_CinematicPrep_14
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|1457820783", "1457820783", "Taxi06_Main", "box_Get_Player_ID_1.Out", "box_CinematicPrep_14.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_Timer_v2_36_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_DriveAndTalk_38()
  l0 = self.box_Timer_v2_36
  l1 = self.box_DriveAndTalk_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|2049964803", "2049964803", "Taxi06_Main", "box_Timer_v2_36.TimeElapsed", "box_DriveAndTalk_38.Start", l0, l1)
  l1:Start()
end
function export:f_box_TaxiStrategiesController_29_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiStrategiesController_29
  l1 = self.box_MissionMessageController_v3_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|2033690533", "2033690533", "Taxi06_Main", "box_TaxiStrategiesController_29.Stopped", "box_MissionMessageController_v3_31.ShowMissionComplete", l0, l1)
  l1:ShowMissionComplete()
end
function export:f_box_Timer_v2_42_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_DriveAndTalk_37()
  l0 = self.box_Timer_v2_42
  l1 = self.box_DriveAndTalk_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|1359029917", "1359029917", "Taxi06_Main", "box_Timer_v2_42.TimeElapsed", "box_DriveAndTalk_37.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_24_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_36
  l0.Seconds = 2
  l0 = self.box_MultipleOR_24
  l1 = self.box_Timer_v2_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|2078366246", "2078366246", "Taxi06_Main", "box_MultipleOR_24.Out", "box_Timer_v2_36.Start", l0, l1)
  l1:Start()
end
function export:f_box_TaxiRideReachDestinationMonitor_13_ClientDropOff()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|385377731"
  l0.Out = self.f_box_Simple_Node_9_Out
  l0 = self.box_TaxiRideReachDestinationMonitor_13
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|1855988376", "1855988376", "Taxi06_Main", "box_TaxiRideReachDestinationMonitor_13.ClientDropOff", "box_Simple_Node_9.In", l0, l1)
  l1:In()
end
function export:f_box_TaxiRideReachDestinationMonitor_13_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRatingController_25
  l0.MissionName = self.Mission
  l0 = self.box_TaxiRideReachDestinationMonitor_13
  l1 = self.box_TaxiRatingController_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|1774706956", "1774706956", "Taxi06_Main", "box_TaxiRideReachDestinationMonitor_13.Disabled", "box_TaxiRatingController_25.ShowReward", l0, l1)
  l1:ShowReward()
end
function export:f_box_TaxiRideReachDestinationMonitor_13_ReachDestination()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|1022009805"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_7_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_7_Out_1
  l0 = self.box_TaxiRideReachDestinationMonitor_13
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|2109295524", "2109295524", "Taxi06_Main", "box_TaxiRideReachDestinationMonitor_13.ReachDestination", "box_Ordered_Output_7.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_7_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_GameplayInteractionController_8()
  l0 = self.box_GameplayInteractionController_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|647248609", "647248609", "Taxi06_Main", "box_Ordered_Output_7.Out", "box_GameplayInteractionController_8.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_7_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|969421829", "969421829", "Taxi06_Main", "box_Ordered_Output_7.Out", "box_MissionMessageController_v3_20.ShowLastObjectiveComplete", clone, l0)
  l0:ShowLastObjectiveComplete()
end
function export:f_box_MultipleOR_18_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_35
  l0.Seconds = 2
  l0 = self.box_MultipleOR_18
  l1 = self.box_Timer_v2_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|743432398", "743432398", "Taxi06_Main", "box_MultipleOR_18.Out", "box_Timer_v2_35.Start", l0, l1)
  l1:Start()
end
function export:f_box_Simple_Node_10_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TaxiRideReachDestinationMonitor_13()
  l0 = self.box_TaxiRideReachDestinationMonitor_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|427012357", "427012357", "Taxi06_Main", "box_Simple_Node_10.Out", "box_TaxiRideReachDestinationMonitor_13.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_ListWriter_5_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_5
  self.GICUsers = l0.Target
  self:OnEnter_box_GameplayInteractionController_8()
  l1 = self.box_GameplayInteractionController_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|1359353321", "1359353321", "Taxi06_Main", "box_ListWriter_5.Added", "box_GameplayInteractionController_8.Start", l0, l1)
  l1:Start()
end
function export:f_box_ListWriter_5_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_5
  self.GICUsers = l0.Target
end
function export:f_box_ListWriter_5_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_5
  self.GICUsers = l0.Target
end
function export:f_box_MissionCheckpointReach_15_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TaxiRidePickUpController_12()
  l0 = self.box_MissionCheckpointReach_15
  l1 = self.box_TaxiRidePickUpController_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|381244873", "381244873", "Taxi06_Main", "box_MissionCheckpointReach_15.Out", "box_TaxiRidePickUpController_12.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TaxiRatingController_22_RatingReset()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiStrategiesController_21
  l0.Config = "TaxiRideStrategyConfig.9223372047360464804"
  l0 = self.box_TaxiRatingController_22
  l1 = self.box_TaxiStrategiesController_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|1432560637", "1432560637", "Taxi06_Main", "box_TaxiRatingController_22.RatingReset", "box_TaxiStrategiesController_21.Start", l0, l1)
  l1:Start()
end
function export:f_box_TaxiStrategiesController_21_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TaxiRideReachDestinationMonitor_13()
  l0 = self.box_TaxiStrategiesController_21
  l1 = self.box_TaxiRideReachDestinationMonitor_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|1230048764", "1230048764", "Taxi06_Main", "box_TaxiStrategiesController_21.Started", "box_TaxiRideReachDestinationMonitor_13.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_DriveAndTalk_37_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_DriveAndTalk_38()
  l0 = self.box_DriveAndTalk_37
  l1 = self.box_DriveAndTalk_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|1769763922", "1769763922", "Taxi06_Main", "box_DriveAndTalk_37.Stopped", "box_DriveAndTalk_38.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_DriveAndTalk_37_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_24()
  l0 = self.box_DriveAndTalk_37
  l1 = self.box_MultipleOR_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|2040004085", "2040004085", "Taxi06_Main", "box_DriveAndTalk_37.TalkFailed", "box_MultipleOR_24.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_DriveAndTalk_37_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_24()
  l0 = self.box_DriveAndTalk_37
  l1 = self.box_MultipleOR_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|1431509363", "1431509363", "Taxi06_Main", "box_DriveAndTalk_37.TalkFinished", "box_MultipleOR_24.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Timer_v2_40_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_DriveAndTalk_4()
  l0 = self.box_Timer_v2_40
  l1 = self.box_DriveAndTalk_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|1716494862", "1716494862", "Taxi06_Main", "box_Timer_v2_40.TimeElapsed", "box_DriveAndTalk_4.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_23_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_42
  l0.Seconds = 2
  l0 = self.box_MultipleOR_23
  l1 = self.box_Timer_v2_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|1595659075", "1595659075", "Taxi06_Main", "box_MultipleOR_23.Out", "box_Timer_v2_42.Start", l0, l1)
  l1:Start()
end
function export:f_box_TaxiRideVehicleMonitor_17_ClientBailedOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_11()
  l0 = self.box_TaxiRideVehicleMonitor_17
  l1 = self.box_Taxi_AbortMission_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|1019767279", "1019767279", "Taxi06_Main", "box_TaxiRideVehicleMonitor_17.ClientBailedOut", "box_Taxi_AbortMission_11.ClientBailedOut", l0, l1)
  l1:ClientBailedOut()
end
function export:f_box_TaxiRideVehicleMonitor_17_ClientDeath()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_11()
  l0 = self.box_TaxiRideVehicleMonitor_17
  l1 = self.box_Taxi_AbortMission_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|412330810", "412330810", "Taxi06_Main", "box_TaxiRideVehicleMonitor_17.ClientDeath", "box_Taxi_AbortMission_11.ClientDead", l0, l1)
  l1:ClientDead()
end
function export:f_box_TaxiRideVehicleMonitor_17_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|1157111193"
  l0.Out = self.f_box_Simple_Node_10_Out
  l0 = self.box_TaxiRideVehicleMonitor_17
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|790499183", "790499183", "Taxi06_Main", "box_TaxiRideVehicleMonitor_17.Disabled", "box_Simple_Node_10.In", l0, l1)
  l1:In()
end
function export:f_box_TaxiRideVehicleMonitor_17_PlayerAbandonedVehicle()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_11()
  l0 = self.box_TaxiRideVehicleMonitor_17
  l1 = self.box_Taxi_AbortMission_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|290459433", "290459433", "Taxi06_Main", "box_TaxiRideVehicleMonitor_17.PlayerAbandonedVehicle", "box_Taxi_AbortMission_11.PlayerAbandonedVehicle", l0, l1)
  l1:PlayerAbandonedVehicle()
end
function export:f_box_TaxiRideVehicleMonitor_17_VehicleUnusable()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_11()
  l0 = self.box_TaxiRideVehicleMonitor_17
  l1 = self.box_Taxi_AbortMission_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|1304986579", "1304986579", "Taxi06_Main", "box_TaxiRideVehicleMonitor_17.VehicleUnusable", "box_Taxi_AbortMission_11.VehicleUnusable", l0, l1)
  l1:VehicleUnusable()
end
function export:f_box_GameplayInteractionController_8_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_40
  l0.Seconds = 1
  l0 = self.box_GameplayInteractionController_8
  l1 = self.box_Timer_v2_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|1836469221", "1836469221", "Taxi06_Main", "box_GameplayInteractionController_8.Started", "box_Timer_v2_40.Start", l0, l1)
  l1:Start()
end
function export:f_box_GameplayInteractionController_8_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_DriveAndTalk_4()
  l0 = self.box_GameplayInteractionController_8
  l1 = self.box_DriveAndTalk_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|1112958185", "1112958185", "Taxi06_Main", "box_GameplayInteractionController_8.Stopped", "box_DriveAndTalk_4.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_DriveAndTalk_4_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_DriveAndTalk_34()
  l0 = self.box_DriveAndTalk_4
  l1 = self.box_DriveAndTalk_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|347404684", "347404684", "Taxi06_Main", "box_DriveAndTalk_4.Stopped", "box_DriveAndTalk_34.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_DriveAndTalk_4_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_18()
  l0 = self.box_DriveAndTalk_4
  l1 = self.box_MultipleOR_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|428573425", "428573425", "Taxi06_Main", "box_DriveAndTalk_4.TalkFailed", "box_MultipleOR_18.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_DriveAndTalk_4_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_18()
  l0 = self.box_DriveAndTalk_4
  l1 = self.box_MultipleOR_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|1002671735", "1002671735", "Taxi06_Main", "box_DriveAndTalk_4.TalkFinished", "box_MultipleOR_18.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Simple_Node_6_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TaxiRideVehicleMonitor_17()
  l0 = self.box_TaxiRideVehicleMonitor_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|1103618096", "1103618096", "Taxi06_Main", "box_Simple_Node_6.Out", "box_TaxiRideVehicleMonitor_17.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_DriveAndTalk_34_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_DriveAndTalk_37()
  l0 = self.box_DriveAndTalk_34
  l1 = self.box_DriveAndTalk_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|99222029", "99222029", "Taxi06_Main", "box_DriveAndTalk_34.Stopped", "box_DriveAndTalk_37.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_DriveAndTalk_34_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_23()
  l0 = self.box_DriveAndTalk_34
  l1 = self.box_MultipleOR_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|1626139313", "1626139313", "Taxi06_Main", "box_DriveAndTalk_34.TalkFailed", "box_MultipleOR_23.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_DriveAndTalk_34_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_23()
  l0 = self.box_DriveAndTalk_34
  l1 = self.box_MultipleOR_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|1675775844", "1675775844", "Taxi06_Main", "box_DriveAndTalk_34.TalkFinished", "box_MultipleOR_23.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MultipleOR_16_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "Taxi06_Main"
  l0 = self.box_MultipleOR_16
  l1 = self.box_MissionLayer_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi06.domino|@Taxi06_Main|891756818", "891756818", "Taxi06_Main", "box_MultipleOR_16.Out", "box_MissionLayer_v2_2.Load", l0, l1)
  l1:Load()
end
function export:OnEnter_box_Taxi_AbortMission_11()
  local l0
  l0 = self.box_Taxi_AbortMission_11
  l0.MissionName = self.Mission
  l0.LayerName = "Taxi06_Main"
  l0.StrategyConfig = "TaxiRideStrategyConfig.9223372047360464804"
  l0.Pawn1 = self.SimonHewl
  l0.Pawn2 = self.PlayerEntity
  l0.Vehicle = self.PlayerVehicle
  l0.Conversation = "ConversationSetting.9223372047771356800"
end
function export:OnEnter_box_TaxiRidePickUpController_12()
  local l0
  l0 = self.box_TaxiRidePickUpController_12
  l0.ClientClo = "9223372046811578507"
  l0.PickUpIcon = "9223372046811578504"
  l0.Config = "TaxiRideGameplayBrick.9223372057721881673"
end
function export:OnEnter_box_MultipleOR_24()
end
function export:OnEnter_box_TaxiRideReachDestinationMonitor_13()
  local l0
  l0 = self.box_TaxiRideReachDestinationMonitor_13
  l0.Client = self.SimonHewl
  l0.DropOffIcon = "9223372046811578509"
  l0.LastDestination = 1
  l0.ShowGps = 1
  l0.ManageObjective = 0
  l0.CustomObjective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "ReachSingleDestination",
    id = "20000191"
  }
  l0.Config = "TaxiRideGameplayBrick.9223372057721881673"
end
function export:OnEnter_box_MultipleOR_18()
end
function export:OnEnter_box_DriveAndTalk_37()
  local l0
  l0 = self.box_DriveAndTalk_37
  l0.Pawn1 = self.SimonHewl
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372047771356796"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
end
function export:OnEnter_box_DriveAndTalk_38()
  local l0
  l0 = self.box_DriveAndTalk_38
  l0.Pawn1 = self.SimonHewl
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372047771356797"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
end
function export:OnEnter_box_MultipleOR_23()
end
function export:OnEnter_box_TaxiRideVehicleMonitor_17()
  local l0
  l0 = self.box_TaxiRideVehicleMonitor_17
  l0.Client = self.SimonHewl
  l0.Config = "TaxiRideGameplayBrick.9223372057721881673"
end
function export:OnEnter_box_GameplayInteractionController_8()
  local l0
  l0 = self.box_GameplayInteractionController_8
  l0.Users = self.GICUsers
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
end
function export:OnEnter_box_DriveAndTalk_4()
  local l0
  l0 = self.box_DriveAndTalk_4
  l0.Pawn1 = self.SimonHewl
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372047771356794"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
end
function export:OnEnter_box_DriveAndTalk_34()
  local l0
  l0 = self.box_DriveAndTalk_34
  l0.Pawn1 = self.SimonHewl
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372047771356795"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
end
function export:OnEnter_box_MultipleOR_16()
end
_compilerVersion = 4
