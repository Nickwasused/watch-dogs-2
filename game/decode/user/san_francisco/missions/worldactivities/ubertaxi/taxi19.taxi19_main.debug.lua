export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/GPS3DController.lua")
  cbox:RegisterBox("domino/System/AIAgentZoneController.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CLOMonitor.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Delivery_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/DPadHackableController.lua")
  cbox:RegisterBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  cbox:RegisterBox("domino/System/FelonySystemController_v2.lua")
  cbox:RegisterBox("domino/System/FelonyTargetMonitor.lua")
  cbox:RegisterBox("domino/System/GameplayInteractionController.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/MapPointController_v4.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/System/ProximityMonitor.lua")
  cbox:RegisterBox("domino/System/RandomOutput_v2.lua")
  cbox:RegisterBox("domino/System/RewardComponentController_V3.lua")
  cbox:RegisterBox("domino/System/SetActionMap_v2.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  cbox:RegisterBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.debug.lua")
  cbox:RegisterBox("domino/System/TaxiRatingController.lua")
  cbox:RegisterBox("domino/System/TaxiRidePickUpController.lua")
  cbox:RegisterBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  cbox:RegisterBox("domino/System/TaxiRideVehicleMonitor.lua")
  cbox:RegisterBox("domino/System/TaxiStrategiesController.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TutorialController.lua")
  cbox:RegisterBox("domino/System/VehicleController.lua")
  cbox:RegisterBox("domino/System/VehicleMonitor_v3.lua")
  cbox:LoadResource("soundbinary/1300528721.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2625879924.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/765946842.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/854186129.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1373450954.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/4141286621.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1790188508.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2094350830.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "Taxi19_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main"
  self.PlayerEntity = nil
  self.Client = nil
  self.PlayerVehicle = nil
  self.Mission = "MissionList.9223372047964392059"
  self.MissionLayer = "Taxi19_Main"
  self.Truck = nil
  self.GIC_Users = {}
  self.VehicleHealth = 0
  self.box_PlayDialog_v2_47 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_47
  l0._graph = self
  l0._name = "box_PlayDialog_v2_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|2628236"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_Taxi_AbortMission_22 = cbox:CreateBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.debug.lua")
  l0 = self.box_Taxi_AbortMission_22
  l0._graph = self
  l0._name = "box_Taxi_AbortMission_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|27221645"
  self.box_TaxiStrategiesController_4 = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self.box_TaxiStrategiesController_4
  l0._graph = self
  l0._name = "box_TaxiStrategiesController_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|29093916"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_TaxiStrategiesController_4_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self.box_PlayDialog_v2_45 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_45
  l0._graph = self
  l0._name = "box_PlayDialog_v2_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|45222272"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_GameplayInteractionController_35 = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self.box_GameplayInteractionController_35
  l0._graph = self
  l0._name = "box_GameplayInteractionController_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|90700378"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_GameplayInteractionController_35_Stopped
  self.box_Timer_v2_12 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_12
  l0._graph = self
  l0._name = "box_Timer_v2_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|91655187"
  l0.Out = DummyFunction
  l0.Started = self.f_box_Timer_v2_12_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_12_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionZone_78 = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  l0 = self.box_MissionZone_78
  l0._graph = self
  l0._name = "box_MissionZone_78"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|241771769"
  l0.Enabled = self.f_box_MissionZone_78_Enabled
  l0.Disabled = DummyFunction
  l0.SoftQuitCompleted = DummyFunction
  self.box_MissionMessageController_v3_17 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_17
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|242887754"
  l0.Out = self.f_box_MissionMessageController_v3_17_Out
  l0.MessageCompleted = DummyFunction
  self.box_PlayDialog_v2_46 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_46
  l0._graph = self
  l0._name = "box_PlayDialog_v2_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|251967402"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_Proximity_Monitor_57 = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self.box_Proximity_Monitor_57
  l0._graph = self
  l0._name = "box_Proximity_Monitor_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|265875770"
  l0.Enabled = self.f_box_Proximity_Monitor_57_Enabled
  l0.Disabled = self.f_box_Proximity_Monitor_57_Disabled
  l0.EnterRadius = self.f_box_Proximity_Monitor_57_EnterRadius
  l0.ExitRadius = DummyFunction
  self.box_MultipleOR_3 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_3
  l0._graph = self
  l0._name = "box_MultipleOR_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|284273303"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_3_Out
  self.box_RewardController_v3_26 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_26
  l0._graph = self
  l0._name = "box_RewardController_v3_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|311118906"
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_PlayDialog_v2_49 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_49
  l0._graph = self
  l0._name = "box_PlayDialog_v2_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|349724272"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_Delivery_Gameplay_82 = cbox:CreateBox("domino/Library/common/MissionIngredients.Delivery_Gameplay.debug.lua")
  l0 = self.box_Delivery_Gameplay_82
  l0._graph = self
  l0._name = "box_Delivery_Gameplay_82"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|372565252"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_Delivery_Gameplay_82_Stopped
  l0.NewDeliveryCompleted = DummyFunction
  l0.AllDeliveryCompleted = self.f_box_Delivery_Gameplay_82_AllDeliveryCompleted
  l0.SpecificVehicleReliabilityFailure = DummyFunction
  l0.VehicleForceStopped = DummyFunction
  l0.Evaded = DummyFunction
  l0.InConflict = DummyFunction
  l0.TeamSpeakFinished = DummyFunction
  self.box_TaxiRatingController_37 = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self.box_TaxiRatingController_37
  l0._graph = self
  l0._name = "box_TaxiRatingController_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|402329065"
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = DummyFunction
  l0.RewardShown = DummyFunction
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = self.f_box_TaxiRatingController_37_RatingRemoved
  self.box_Timer_v2_2 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_2
  l0._graph = self
  l0._name = "box_Timer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|441922682"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_2_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionMessageController_v3_66 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_66
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|594776840"
  l0.Out = self.f_box_MissionMessageController_v3_66_Out
  l0.MessageCompleted = DummyFunction
  self.box_MultipleOR_53 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_53
  l0._graph = self
  l0._name = "box_MultipleOR_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|610470745"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_53_Out
  self.box_TaxiRideVehicleMonitor_24 = cbox:CreateBox("domino/System/TaxiRideVehicleMonitor.lua")
  l0 = self.box_TaxiRideVehicleMonitor_24
  l0._graph = self
  l0._name = "box_TaxiRideVehicleMonitor_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|625009593"
  l0.Enabled = self.f_box_TaxiRideVehicleMonitor_24_Enabled
  l0.Disabled = self.f_box_TaxiRideVehicleMonitor_24_Disabled
  l0.ClientDeath = self.f_box_TaxiRideVehicleMonitor_24_ClientDeath
  l0.VehicleUnusable = self.f_box_TaxiRideVehicleMonitor_24_VehicleUnusable
  l0.ClientBailedOut = self.f_box_TaxiRideVehicleMonitor_24_ClientBailedOut
  l0.PlayerAbandonedVehicle = self.f_box_TaxiRideVehicleMonitor_24_PlayerAbandonedVehicle
  self.box_TaxiRatingController_40 = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self.box_TaxiRatingController_40
  l0._graph = self
  l0._name = "box_TaxiRatingController_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|666306200"
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = DummyFunction
  l0.RewardShown = self.f_box_TaxiRatingController_40_RewardShown
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self.box_DriveAndTalk_36 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_36
  l0._graph = self
  l0._name = "box_DriveAndTalk_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|674536712"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_MissionLayer_v2_11 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_11
  l0._graph = self
  l0._name = "box_MissionLayer_v2_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|720092972"
  l0.Loaded = self.f_box_MissionLayer_v2_11_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_DriveAndTalk_5 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_5
  l0._graph = self
  l0._name = "box_DriveAndTalk_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|738337235"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_5_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_PlayDialog_v2_43 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_43
  l0._graph = self
  l0._name = "box_PlayDialog_v2_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|774266266"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_VehicleMonitor_v3_50 = cbox:CreateBox("domino/System/VehicleMonitor_v3.lua")
  l0 = self.box_VehicleMonitor_v3_50
  l0._graph = self
  l0._name = "box_VehicleMonitor_v3_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|777926515"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Entered = DummyFunction
  l0.PassangerEntered = DummyFunction
  l0.Leave = DummyFunction
  l0.Exiting = DummyFunction
  l0.ChangeSeat = DummyFunction
  l0.BailedOut = DummyFunction
  l0.IsPawnHiding = DummyFunction
  l0.PawnIsNotHiding = DummyFunction
  l0.StateChange = DummyFunction
  l0.TakenDamage = self.f_box_VehicleMonitor_v3_50_TakenDamage
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
  l0.NitroUsed = DummyFunction
  l0.NitroStopped = DummyFunction
  l0.IsFlipped = DummyFunction
  l0.IsUnFlipped = DummyFunction
  l0.Unloaded = DummyFunction
  self.box_TaxiStrategiesController_21 = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self.box_TaxiStrategiesController_21
  l0._graph = self
  l0._name = "box_TaxiStrategiesController_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|787481297"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self.box_PlayDialog_v2_42 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_42
  l0._graph = self
  l0._name = "box_PlayDialog_v2_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|799640775"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_TutorialController_69 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_69
  l0._graph = self
  l0._name = "box_TutorialController_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|803088937"
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_box_TutorialController_69_DisplayRequested
  l0.NotificationHidden = self.f_box_TutorialController_69_NotificationHidden
  l0.MessageCompleted = DummyFunction
  self.box_DriveAndTalk_7 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_7
  l0._graph = self
  l0._name = "box_DriveAndTalk_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|835493791"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_7_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_MissionMessageController_v3_58 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_58
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|848615684"
  l0.Out = self.f_box_MissionMessageController_v3_58_Out
  l0.MessageCompleted = DummyFunction
  self.box_TaxiStrategiesController_33 = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self.box_TaxiStrategiesController_33
  l0._graph = self
  l0._name = "box_TaxiStrategiesController_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|968633056"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = self.f_box_TaxiStrategiesController_33_Paused
  l0.Resumed = DummyFunction
  self.box_MapPointController_v4_55 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_55
  l0._graph = self
  l0._name = "box_MapPointController_v4_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|997828645"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v4_55_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MapPointController_v4_61 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_61
  l0._graph = self
  l0._name = "box_MapPointController_v4_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1033316799"
  l0.Shown = self.f_box_MapPointController_v4_61_Shown
  l0.Hidden = self.f_box_MapPointController_v4_61_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_TaxiRidePickUpController_23 = cbox:CreateBox("domino/System/TaxiRidePickUpController.lua")
  l0 = self.box_TaxiRidePickUpController_23
  l0._graph = self
  l0._name = "box_TaxiRidePickUpController_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1157532517"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ClientSpawned = self.f_box_TaxiRidePickUpController_23_ClientSpawned
  l0.ClientPickedUp = self.f_box_TaxiRidePickUpController_23_ClientPickedUp
  l0.ClientConversationFinised = self.f_box_TaxiRidePickUpController_23_ClientConversationFinised
  self.box_CLOMonitor_71 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_71
  l0._graph = self
  l0._name = "box_CLOMonitor_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1221373732"
  l0.Enabled = self.f_box_CLOMonitor_71_Enabled
  l0.Disabled = DummyFunction
  l0.GotUser = DummyFunction
  l0.NotGotUser = DummyFunction
  l0.OnUserInPlace = DummyFunction
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = self.f_box_CLOMonitor_71_OnUserUnspawn
  self.box_TaxiRatingController_9 = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self.box_TaxiRatingController_9
  l0._graph = self
  l0._name = "box_TaxiRatingController_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1240080816"
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = self.f_box_TaxiRatingController_9_RatingReset
  l0.RewardShown = DummyFunction
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self.box_MultipleOR_31 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_31
  l0._graph = self
  l0._name = "box_MultipleOR_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1317002812"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_31_Out
  self.box_FelonyTargetMonitor_19 = cbox:CreateBox("domino/System/FelonyTargetMonitor.lua")
  l0 = self.box_FelonyTargetMonitor_19
  l0._graph = self
  l0._name = "box_FelonyTargetMonitor_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1356772442"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_FelonyTargetMonitor_19_Stopped
  l0.None = DummyFunction
  l0.DenunciatorStarted = DummyFunction
  l0.DenunciatorInterrupted = DummyFunction
  l0.DenunciatorFinished = DummyFunction
  l0.ScanStarted = DummyFunction
  l0.ScanSuccess = DummyFunction
  l0.ScanFailure = DummyFunction
  l0.Chasing = self.f_box_FelonyTargetMonitor_19_Chasing
  l0.Searching = DummyFunction
  l0.Evaded = self.f_box_FelonyTargetMonitor_19_Evaded
  l0.TargetKilled = DummyFunction
  l0.LevelChanged = DummyFunction
  l0.TargetArrested = DummyFunction
  self.box_Timer_v2_15 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_15
  l0._graph = self
  l0._name = "box_Timer_v2_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1477768770"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_15_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionCheckpointReach_29 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_29
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1558484410"
  l0.Out = self.f_box_MissionCheckpointReach_29_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_SnapAndBind_60 = cbox:CreateBox("domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  l0 = self.box_SnapAndBind_60
  l0._graph = self
  l0._name = "box_SnapAndBind_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1604271614"
  l0.Attached = self.f_box_SnapAndBind_60_Attached
  self.box_Timer_v2_14 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_14
  l0._graph = self
  l0._name = "box_Timer_v2_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1704401468"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_14_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionLayer_v2_28 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_28
  l0._graph = self
  l0._name = "box_MissionLayer_v2_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1733474691"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_28_Unloaded
  l0.Reseted = DummyFunction
  self.box_CLOController_1 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_1
  l0._graph = self
  l0._name = "box_CLOController_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1782562708"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_1_OnUserInPlace
  self.box_CinematicPrep_27 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_27
  l0._graph = self
  l0._name = "box_CinematicPrep_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1783043596"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_27_PostOut
  self.box_PlayDialog_v2_44 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_44
  l0._graph = self
  l0._name = "box_PlayDialog_v2_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1785013346"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_OnceOnly_v3_72 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_72
  l0._graph = self
  l0._name = "box_OnceOnly_v3_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1795449728"
  l0._DynamicAnchors = {In = 5}
  l0.Out = self.f_box_OnceOnly_v3_72_Out
  l0.ResetOut = DummyFunction
  self.box_RandomOutput_v2_41 = cbox:CreateBox("domino/System/RandomOutput_v2.lua")
  l0 = self.box_RandomOutput_v2_41
  l0._graph = self
  l0._name = "box_RandomOutput_v2_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1876312299"
  l0._DynamicAnchors = {Probability = 8, Output = 8}
  l0.Out = DummyFunction
  l0.ResetOut = DummyFunction
  l0.None = self.f_box_RandomOutput_v2_41_None
  l0.Output[0] = self.f_box_RandomOutput_v2_41_Output_0
  l0.Output[1] = self.f_box_RandomOutput_v2_41_Output_1
  l0.Output[2] = self.f_box_RandomOutput_v2_41_Output_2
  l0.Output[3] = self.f_box_RandomOutput_v2_41_Output_3
  l0.Output[4] = self.f_box_RandomOutput_v2_41_Output_4
  l0.Output[5] = self.f_box_RandomOutput_v2_41_Output_5
  l0.Output[6] = self.f_box_RandomOutput_v2_41_Output_6
  l0.Output[7] = self.f_box_RandomOutput_v2_41_Output_7
  self.box_MissionController_v4_39 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_39
  l0._graph = self
  l0._name = "box_MissionController_v4_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1897024348"
  self.box_ListWriter_16 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_16
  l0._graph = self
  l0._name = "box_ListWriter_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1951870477"
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_box_ListWriter_16_Added
  l0.Removed = self.f_box_ListWriter_16_Removed
  l0.Out = self.f_box_ListWriter_16_Out
  self.box_MapPointController_v4_64 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_64
  l0._graph = self
  l0._name = "box_MapPointController_v4_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1955828796"
  l0.Shown = self.f_box_MapPointController_v4_64_Shown
  l0.Hidden = self.f_box_MapPointController_v4_64_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_PlayDialog_v2_38 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_38
  l0._graph = self
  l0._name = "box_PlayDialog_v2_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|2034537146"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_DriveAndTalk_8 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_8
  l0._graph = self
  l0._name = "box_DriveAndTalk_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|2050416304"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_8_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_TaxiRideReachDestinationMonitor_6 = cbox:CreateBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self.box_TaxiRideReachDestinationMonitor_6
  l0._graph = self
  l0._name = "box_TaxiRideReachDestinationMonitor_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|2121760747"
  l0.Enabled = self.f_box_TaxiRideReachDestinationMonitor_6_Enabled
  l0.Disabled = DummyFunction
  l0.ReachDestination = self.f_box_TaxiRideReachDestinationMonitor_6_ReachDestination
  l0.ClientDropOff = self.f_box_TaxiRideReachDestinationMonitor_6_ClientDropOff
  self.box_VehicleMonitor_v3_54 = cbox:CreateBox("domino/System/VehicleMonitor_v3.lua")
  l0 = self.box_VehicleMonitor_v3_54
  l0._graph = self
  l0._name = "box_VehicleMonitor_v3_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|2125514685"
  l0.Enabled = self.f_box_VehicleMonitor_v3_54_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_VehicleMonitor_v3_54_Enter
  l0.Entered = self.f_box_VehicleMonitor_v3_54_Entered
  l0.PassangerEntered = DummyFunction
  l0.Leave = DummyFunction
  l0.Exiting = self.f_box_VehicleMonitor_v3_54_Exiting
  l0.ChangeSeat = DummyFunction
  l0.BailedOut = self.f_box_VehicleMonitor_v3_54_BailedOut
  l0.IsPawnHiding = DummyFunction
  l0.PawnIsNotHiding = DummyFunction
  l0.StateChange = DummyFunction
  l0.TakenDamage = DummyFunction
  l0.IsUnusable = self.f_box_VehicleMonitor_v3_54_IsUnusable
  l0.IsUnderwater = self.f_box_VehicleMonitor_v3_54_IsUnderwater
  l0.NoMoveTimer = DummyFunction
  l0.OnMoveTimer = DummyFunction
  l0.IsSlowEnoughToExit = DummyFunction
  l0.VehicleJump = DummyFunction
  l0.VehicleLanding = DummyFunction
  l0.BollardTakedown = DummyFunction
  l0.SteamPipeTakedown = DummyFunction
  l0.TrafficLightTakedown = DummyFunction
  l0.FullTakedown = self.f_box_VehicleMonitor_v3_54_FullTakedown
  l0.PartialTakedown = DummyFunction
  l0.NitroUsed = DummyFunction
  l0.NitroStopped = DummyFunction
  l0.IsFlipped = DummyFunction
  l0.IsUnFlipped = DummyFunction
  l0.Unloaded = DummyFunction
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
  self:OnEnter_box_MultipleOR_31()
  l0 = self.box_MultipleOR_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|2006387645", "2006387645", "Taxi19_Main", "CheckPoint_0", "box_MultipleOR_31.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_31()
  l0 = self.box_MultipleOR_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|965630921", "965630921", "Taxi19_Main", "In", "box_MultipleOR_31.Input", self, l0)
  l0:Input(0)
end
function export:f_box_Vehicle_Controller_20_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1449864104"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_34_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_34_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1825951520", "1825951520", "Taxi19_Main", "box_Vehicle_Controller_20.Out", "box_Ordered_Output_34.In", clone, l0)
  l0:In()
end
function export:f_box_TaxiStrategiesController_4_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Delivery_Gameplay_82()
  l0 = self.box_TaxiStrategiesController_4
  l1 = self.box_Delivery_Gameplay_82
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|271454166", "271454166", "Taxi19_Main", "box_TaxiStrategiesController_4.Stopped", "box_Delivery_Gameplay_82.Start", l0, l1)
  l1:Start()
end
function export:f_box_FelonySystemController_v2_77_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|186009604", "186009604", "Taxi19_Main", "box_FelonySystemController_v2_77.Enabled", "box_Timer_v2_14.Start", clone, l0)
  l0:Start()
end
function export:f_box_GameplayInteractionController_35_Stopped()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|179215489"
  l0.Out = self.f_box_Simple_Node_51_Out
  l0 = self.box_GameplayInteractionController_35
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1385988816", "1385988816", "Taxi19_Main", "box_GameplayInteractionController_35.Stopped", "box_Simple_Node_51.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_12_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_16
  l0.Input = self.GIC_Users
  l0.Data[0] = self.PlayerEntity
  l0.Data[1] = self.Client
  l0 = self.box_Timer_v2_12
  l1 = self.box_ListWriter_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1763882997", "1763882997", "Taxi19_Main", "box_Timer_v2_12.Started", "box_ListWriter_16.Add", l0, l1)
  l1:Add()
end
function export:f_box_Timer_v2_12_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_7
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149960"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372060501599237"
  l0 = self.box_Timer_v2_12
  l1 = self.box_DriveAndTalk_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1589035676", "1589035676", "Taxi19_Main", "box_Timer_v2_12.TimeElapsed", "box_DriveAndTalk_7.Start", l0, l1)
  l1:Start()
end
function export:f_box_FelonySystemController_v2_70_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionController_v4_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1354180283", "1354180283", "Taxi19_Main", "box_FelonySystemController_v2_70.Enabled", "box_MissionController_v4_39.Succeed", clone, l0)
  l0:Succeed()
end
function export:f_box_Simple_Node_51_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_53()
  l0 = self.box_MultipleOR_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1181410012", "1181410012", "Taxi19_Main", "box_Simple_Node_51.Out", "box_MultipleOR_53.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_MissionZone_78_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  l0.HackableEntity = self.PlayerVehicle
  l0.HackableEntityList = nil
  l0.HackCategoryType[0] = nil
  l0.HackCategoryType[1] = nil
  l0._graph = self
  l0._name = "box_DPad_Hackable_Controller_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|623556330"
  l0._DynamicAnchors = {HackCategoryType = 2}
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = DummyFunction
  l0.Removed = DummyFunction
  l0.RemovedAll = self.f_box_DPad_Hackable_Controller_56_RemovedAll
  l0.HackingDisabled = DummyFunction
  l0 = self.box_MissionZone_78
  l1 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1117199516", "1117199516", "Taxi19_Main", "box_MissionZone_78.Enabled", "box_DPad_Hackable_Controller_56.RemoveAll", l0, l1)
  l1:RemoveAll()
end
function export:f_box_MissionMessageController_v3_17_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_28
  l0.LayerName = self.MissionLayer
  l0 = self.box_MissionMessageController_v3_17
  l1 = self.box_MissionLayer_v2_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|111450611", "111450611", "Taxi19_Main", "box_MissionMessageController_v3_17.Out", "box_MissionLayer_v2_28.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_Proximity_Monitor_57_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v4_64()
  l0 = self.box_Proximity_Monitor_57
  l1 = self.box_MapPointController_v4_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|431100743", "431100743", "Taxi19_Main", "box_Proximity_Monitor_57.Disabled", "box_MapPointController_v4_64.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Proximity_Monitor_57_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0.Player = nil
  l0.Target = "9223372048067755842"
  l0.Path = nil
  l0.Index = nil
  l0.PathType = nil
  l0._graph = self
  l0._name = "box_3DGPSController_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1706529128"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TargetAdded = DummyFunction
  l0.TargetRemoved = DummyFunction
  l0 = self.box_Proximity_Monitor_57
  l1 = Boxes[PathID("domino/System/GPS3DController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|109754486", "109754486", "Taxi19_Main", "box_Proximity_Monitor_57.Enabled", "box_3DGPSController_32.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Proximity_Monitor_57_EnterRadius()
  local l0
  self = self._graph
  self:OnEnter_box_Proximity_Monitor_57()
  l0 = self.box_Proximity_Monitor_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|92105629", "92105629", "Taxi19_Main", "box_Proximity_Monitor_57.EnterRadius", "box_Proximity_Monitor_57.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_MultipleOR_3_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1459675136"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_52_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_52_Out_1
  l0 = self.box_MultipleOR_3
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|2061415437", "2061415437", "Taxi19_Main", "box_MultipleOR_3.Out", "box_Ordered_Output_52.In", l0, l1)
  l1:In()
end
function export:f_box_AI_Agent_Zone_63_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_1
  l0.CLO = "9223372047964392058"
  l0.SpawnOutsideLoadingRing = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1026934239", "1026934239", "Taxi19_Main", "box_AI_Agent_Zone_63.Out", "box_CLOController_1.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_SetActionMap_v2_13_Popped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|774421346", "774421346", "Taxi19_Main", "box_SetActionMap_v2_13.Popped", "box_MissionMessageController_v3_17.ShowMissionComplete", clone, l0)
  l0:ShowMissionComplete()
end
function export:f_box_Simple_Node_79_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_81"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1671024847"
  l0.Out = self.f_box_Simple_Node_81_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|434086179", "434086179", "Taxi19_Main", "box_Simple_Node_79.Out", "box_Simple_Node_81.In", clone, l0)
  l0:In()
end
function export:f_box_Delivery_Gameplay_82_AllDeliveryCompleted()
  local l0
  self = self._graph
  self:OnEnter_box_Delivery_Gameplay_82()
  l0 = self.box_Delivery_Gameplay_82
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1404410667", "1404410667", "Taxi19_Main", "box_Delivery_Gameplay_82.AllDeliveryCompleted", "box_Delivery_Gameplay_82.Stop", l0, l0)
  l0:Stop()
end
function export:f_box_Delivery_Gameplay_82_Stopped()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.PlayerVehicle
  l0._graph = self
  l0._name = "box_Vehicle_Controller_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1908430878"
  l0.Out = self.f_box_Vehicle_Controller_25_Out
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.Destructable = DummyFunction
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
  l0 = self.box_Delivery_Gameplay_82
  l1 = Boxes[PathID("domino/System/VehicleController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|165090171", "165090171", "Taxi19_Main", "box_Delivery_Gameplay_82.Stopped", "box_Vehicle_Controller_25.DisableForPlayer", l0, l1)
  l1:DisableForPlayer()
end
function export:f_box_TaxiRatingController_37_RatingRemoved()
  local l0, l1
  self = self._graph
  self:OnEnter_box_RandomOutput_v2_41()
  l0 = self.box_TaxiRatingController_37
  l1 = self.box_RandomOutput_v2_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|945024164", "945024164", "Taxi19_Main", "box_TaxiRatingController_37.RatingRemoved", "box_RandomOutput_v2_41.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_2_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_5
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149959"
  l0.StartDelay = 1
  l0 = self.box_Timer_v2_2
  l1 = self.box_DriveAndTalk_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1319056495", "1319056495", "Taxi19_Main", "box_Timer_v2_2.TimeElapsed", "box_DriveAndTalk_5.Start", l0, l1)
  l1:Start()
end
function export:f_box_MissionMessageController_v3_66_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_71
  l0.CLO = "9223372047964392058"
  l0 = self.box_MissionMessageController_v3_66
  l1 = self.box_CLOMonitor_71
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|616795184", "616795184", "Taxi19_Main", "box_MissionMessageController_v3_66.Out", "box_CLOMonitor_71.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MultipleOR_53_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleMonitor_v3_50
  l0.Vehicle = self.PlayerVehicle
  l0 = self.box_MultipleOR_53
  l1 = self.box_VehicleMonitor_v3_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|120041140", "120041140", "Taxi19_Main", "box_MultipleOR_53.Out", "box_VehicleMonitor_v3_50.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_DPad_Hackable_Controller_56_RemovedAll()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.PlayerVehicle
  l0._graph = self
  l0._name = "box_Vehicle_Controller_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|8127002"
  l0.Out = self.f_box_Vehicle_Controller_20_Out
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.Destructable = DummyFunction
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|82796179", "82796179", "Taxi19_Main", "box_DPad_Hackable_Controller_56.RemovedAll", "box_Vehicle_Controller_20.EnableForPlayer", clone, l0)
  l0:EnableForPlayer()
end
function export:f_box_TaxiRideVehicleMonitor_24_ClientBailedOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  l0.AffectMediaSystem = nil
  l0.VehicleExclusionZone = nil
  l0._graph = self
  l0._name = "box_FelonySystemController_v2_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|911997490"
  l0.Out = DummyFunction
  l0.Enabled = self.f_box_FelonySystemController_v2_62_Enabled
  l0.Disabled = DummyFunction
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  l0 = self.box_TaxiRideVehicleMonitor_24
  l1 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|466089332", "466089332", "Taxi19_Main", "box_TaxiRideVehicleMonitor_24.ClientBailedOut", "box_FelonySystemController_v2_62.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TaxiRideVehicleMonitor_24_ClientDeath()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  l0.AffectMediaSystem = nil
  l0.VehicleExclusionZone = nil
  l0._graph = self
  l0._name = "box_FelonySystemController_v2_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|2039043602"
  l0.Out = DummyFunction
  l0.Enabled = self.f_box_FelonySystemController_v2_67_Enabled
  l0.Disabled = DummyFunction
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  l0 = self.box_TaxiRideVehicleMonitor_24
  l1 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|205050327", "205050327", "Taxi19_Main", "box_TaxiRideVehicleMonitor_24.ClientDeath", "box_FelonySystemController_v2_67.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TaxiRideVehicleMonitor_24_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_83"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1691791550"
  l0.Out = self.f_box_Simple_Node_83_Out
  l0 = self.box_TaxiRideVehicleMonitor_24
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|821990560", "821990560", "Taxi19_Main", "box_TaxiRideVehicleMonitor_24.Disabled", "box_Simple_Node_83.In", l0, l1)
  l1:In()
end
function export:f_box_TaxiRideVehicleMonitor_24_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VehicleMonitor_v3_54()
  l0 = self.box_TaxiRideVehicleMonitor_24
  l1 = self.box_VehicleMonitor_v3_54
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1831990481", "1831990481", "Taxi19_Main", "box_TaxiRideVehicleMonitor_24.Enabled", "box_VehicleMonitor_v3_54.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_TaxiRideVehicleMonitor_24_PlayerAbandonedVehicle()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  l0.AffectMediaSystem = nil
  l0.VehicleExclusionZone = nil
  l0._graph = self
  l0._name = "box_FelonySystemController_v2_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1528512152"
  l0.Out = DummyFunction
  l0.Enabled = self.f_box_FelonySystemController_v2_65_Enabled
  l0.Disabled = DummyFunction
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  l0 = self.box_TaxiRideVehicleMonitor_24
  l1 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1488498401", "1488498401", "Taxi19_Main", "box_TaxiRideVehicleMonitor_24.PlayerAbandonedVehicle", "box_FelonySystemController_v2_65.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TaxiRideVehicleMonitor_24_VehicleUnusable()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_3()
  l0 = self.box_TaxiRideVehicleMonitor_24
  l1 = self.box_MultipleOR_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1789555948", "1789555948", "Taxi19_Main", "box_TaxiRideVehicleMonitor_24.VehicleUnusable", "box_MultipleOR_3.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_TaxiRatingController_40_RewardShown()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiStrategiesController_4
  l0.Config = "TaxiRideStrategyConfig.9223372047964392060"
  l0 = self.box_TaxiRatingController_40
  l1 = self.box_TaxiStrategiesController_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|2056789037", "2056789037", "Taxi19_Main", "box_TaxiRatingController_40.RewardShown", "box_TaxiStrategiesController_4.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_MissionLayer_v2_11_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1710752773"
  l0.Out = self.f_box_Get_Player_ID_48_Out
  l0 = self.box_MissionLayer_v2_11
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1242202455", "1242202455", "Taxi19_Main", "box_MissionLayer_v2_11.Loaded", "box_Get_Player_ID_48.In", l0, l1)
  l1:In()
end
function export:f_box_DriveAndTalk_5_TalkFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_12
  l0.Seconds = 5
  l0 = self.box_DriveAndTalk_5
  l1 = self.box_Timer_v2_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|533288448", "533288448", "Taxi19_Main", "box_DriveAndTalk_5.TalkFinished", "box_Timer_v2_12.Start", l0, l1)
  l1:Start()
end
function export:f_box_VehicleMonitor_v3_50_TakenDamage()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRatingController_37
  l0.MissionName = self.Mission
  l0.RatingAmount = 1
  l0 = self.box_VehicleMonitor_v3_50
  l1 = self.box_TaxiRatingController_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1891767164", "1891767164", "Taxi19_Main", "box_VehicleMonitor_v3_50.TakenDamage", "box_TaxiRatingController_37.RemoveRating", l0, l1)
  l1:RemoveRating()
end
function export:f_box_Simple_Node_10_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372064965781324"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|326791914"
  l0.Out = self.f_box_AI_Agent_Zone_63_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|837595554", "837595554", "Taxi19_Main", "box_Simple_Node_10.Out", "box_AI_Agent_Zone_63.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_TutorialController_69_DisplayRequested()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Vehicle_Controller_73()
  l0 = self.box_TutorialController_69
  l1 = Boxes[PathID("domino/System/VehicleController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1796867011", "1796867011", "Taxi19_Main", "box_TutorialController_69.DisplayRequested", "box_Vehicle_Controller_73.DisableForPlayer", l0, l1)
  l1:DisableForPlayer()
end
function export:f_box_TutorialController_69_NotificationHidden()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Vehicle_Controller_73()
  l0 = self.box_TutorialController_69
  l1 = Boxes[PathID("domino/System/VehicleController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|2118816917", "2118816917", "Taxi19_Main", "box_TutorialController_69.NotificationHidden", "box_Vehicle_Controller_73.EnableForPlayer", l0, l1)
  l1:EnableForPlayer()
end
function export:f_box_DriveAndTalk_7_TalkFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_15
  l0.Seconds = 5
  l0 = self.box_DriveAndTalk_7
  l1 = self.box_Timer_v2_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|2030473190", "2030473190", "Taxi19_Main", "box_DriveAndTalk_7.TalkFinished", "box_Timer_v2_15.Start", l0, l1)
  l1:Start()
end
function export:f_box_MissionMessageController_v3_58_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v4_64()
  l0 = self.box_MissionMessageController_v3_58
  l1 = self.box_MapPointController_v4_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1808056462", "1808056462", "Taxi19_Main", "box_MissionMessageController_v3_58.Out", "box_MapPointController_v4_64.Show", l0, l1)
  l1:Show()
end
function export:f_box_FelonySystemController_v2_62_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Taxi_AbortMission_22()
  l0 = self.box_Taxi_AbortMission_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|940914580", "940914580", "Taxi19_Main", "box_FelonySystemController_v2_62.Enabled", "box_Taxi_AbortMission_22.ClientBailedOut", clone, l0)
  l0:ClientBailedOut()
end
function export:f_box_TaxiStrategiesController_33_Paused()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRatingController_40
  l0.MissionName = self.Mission
  l0 = self.box_TaxiStrategiesController_33
  l1 = self.box_TaxiRatingController_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|512324088", "512324088", "Taxi19_Main", "box_TaxiStrategiesController_33.Paused", "box_TaxiRatingController_40.ShowReward", l0, l1)
  l1:ShowReward()
end
function export:f_box_MapPointController_v4_55_Hidden()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_3()
  l0 = self.box_MapPointController_v4_55
  l1 = self.box_MultipleOR_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1670392793", "1670392793", "Taxi19_Main", "box_MapPointController_v4_55.Hidden", "box_MultipleOR_3.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MapPointController_v4_61_Hidden()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TaxiRidePickUpController_23()
  l0 = self.box_MapPointController_v4_61
  l1 = self.box_TaxiRidePickUpController_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1162612475", "1162612475", "Taxi19_Main", "box_MapPointController_v4_61.Hidden", "box_TaxiRidePickUpController_23.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MapPointController_v4_61_Shown()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FelonyTargetMonitor_19()
  l0 = self.box_MapPointController_v4_61
  l1 = self.box_FelonyTargetMonitor_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|597447711", "597447711", "Taxi19_Main", "box_MapPointController_v4_61.Shown", "box_FelonyTargetMonitor_19.Start", l0, l1)
  l1:Start()
end
function export:f_box_TaxiRidePickUpController_23_ClientConversationFinised()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_2
  l0.Seconds = 3
  l0 = self.box_TaxiRidePickUpController_23
  l1 = self.box_Timer_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1569717690", "1569717690", "Taxi19_Main", "box_TaxiRidePickUpController_23.ClientConversationFinised", "box_Timer_v2_2.Start", l0, l1)
  l1:Start()
end
function export:f_box_TaxiRidePickUpController_23_ClientPickedUp()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FelonyTargetMonitor_19()
  l0 = self.box_TaxiRidePickUpController_23
  l1 = self.box_FelonyTargetMonitor_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|2010521707", "2010521707", "Taxi19_Main", "box_TaxiRidePickUpController_23.ClientPickedUp", "box_FelonyTargetMonitor_19.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_TaxiRidePickUpController_23_ClientSpawned()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRidePickUpController_23
  self.Client = l0.Client
  self:OnEnter_box_TaxiRideVehicleMonitor_24()
  l1 = self.box_TaxiRideVehicleMonitor_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1295392780", "1295392780", "Taxi19_Main", "box_TaxiRidePickUpController_23.ClientSpawned", "box_TaxiRideVehicleMonitor_24.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_CLOMonitor_71_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VehicleMonitor_v3_54()
  l0 = self.box_CLOMonitor_71
  l1 = self.box_VehicleMonitor_v3_54
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|679555328", "679555328", "Taxi19_Main", "box_CLOMonitor_71.Enabled", "box_VehicleMonitor_v3_54.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_CLOMonitor_71_OnUserUnspawn()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1901775663"
  l0.Out = self.f_box_Simple_Node_74_Out
  l0 = self.box_CLOMonitor_71
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|577363971", "577363971", "Taxi19_Main", "box_CLOMonitor_71.OnUserUnspawn", "box_Simple_Node_74.In", l0, l1)
  l1:In()
end
function export:f_box_TaxiRatingController_9_RatingReset()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiStrategiesController_21
  l0.Config = "TaxiRideStrategyConfig.9223372047964392060"
  l0 = self.box_TaxiRatingController_9
  l1 = self.box_TaxiStrategiesController_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|978836861", "978836861", "Taxi19_Main", "box_TaxiRatingController_9.RatingReset", "box_TaxiStrategiesController_21.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_31_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_11
  l0.LayerName = self.MissionLayer
  l0 = self.box_MultipleOR_31
  l1 = self.box_MissionLayer_v2_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|189845348", "189845348", "Taxi19_Main", "box_MultipleOR_31.Out", "box_MissionLayer_v2_11.Load", l0, l1)
  l1:Load()
end
function export:f_box_FelonyTargetMonitor_19_Chasing()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_69()
  l0 = self.box_FelonyTargetMonitor_19
  l1 = self.box_TutorialController_69
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|2001445815", "2001445815", "Taxi19_Main", "box_FelonyTargetMonitor_19.Chasing", "box_TutorialController_69.Display", l0, l1)
  l1:Display()
end
function export:f_box_FelonyTargetMonitor_19_Evaded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_69()
  l0 = self.box_FelonyTargetMonitor_19
  l1 = self.box_TutorialController_69
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1717808495", "1717808495", "Taxi19_Main", "box_FelonyTargetMonitor_19.Evaded", "box_TutorialController_69.HideNotification", l0, l1)
  l1:HideNotification()
end
function export:f_box_FelonyTargetMonitor_19_Stopped()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  l0.AffectMediaSystem = nil
  l0.VehicleExclusionZone = nil
  l0._graph = self
  l0._name = "box_FelonySystemController_v2_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|32469758"
  l0.Out = DummyFunction
  l0.Enabled = self.f_box_FelonySystemController_v2_77_Enabled
  l0.Disabled = DummyFunction
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  l0 = self.box_FelonyTargetMonitor_19
  l1 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|468855934", "468855934", "Taxi19_Main", "box_FelonyTargetMonitor_19.Stopped", "box_FelonySystemController_v2_77.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Ordered_Output_34_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SnapAndBind_60
  l0.Parent = self.PlayerVehicle
  l0.Child = "9223372047964396385"
  l0.CarIcon = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1869020141", "1869020141", "Taxi19_Main", "box_Ordered_Output_34.Out", "box_SnapAndBind_60.Attach", clone, l0)
  l0:Attach()
end
function export:f_box_Ordered_Output_34_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_RewardController_v3_26
  l0.ItemDB = "Items.9223372057864724772"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1937958440", "1937958440", "Taxi19_Main", "box_Ordered_Output_34.Out", "box_RewardController_v3_26.ExecuteRewards", clone, l0)
  l0:ExecuteRewards()
end
function export:f_box_Ordered_Output_52_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  l0.AffectMediaSystem = nil
  l0.VehicleExclusionZone = nil
  l0._graph = self
  l0._name = "box_FelonySystemController_v2_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1593489068"
  l0.Out = DummyFunction
  l0.Enabled = self.f_box_FelonySystemController_v2_68_Enabled
  l0.Disabled = DummyFunction
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1174586342", "1174586342", "Taxi19_Main", "box_Ordered_Output_52.Out", "box_FelonySystemController_v2_68.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_52_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_53()
  l0 = self.box_MultipleOR_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1398054176", "1398054176", "Taxi19_Main", "box_Ordered_Output_52.Out", "box_MultipleOR_53.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Timer_v2_15_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_8
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149961"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372060501599237"
  l0 = self.box_Timer_v2_15
  l1 = self.box_DriveAndTalk_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1868963711", "1868963711", "Taxi19_Main", "box_Timer_v2_15.TimeElapsed", "box_DriveAndTalk_8.Start", l0, l1)
  l1:Start()
end
function export:f_box_FelonySystemController_v2_65_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Taxi_AbortMission_22()
  l0 = self.box_Taxi_AbortMission_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1949141783", "1949141783", "Taxi19_Main", "box_FelonySystemController_v2_65.Enabled", "box_Taxi_AbortMission_22.PlayerAbandonedVehicle", clone, l0)
  l0:PlayerAbandonedVehicle()
end
function export:f_box_MissionCheckpointReach_29_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_58
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "PickupSingleClient",
    id = "20000189"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_MissionCheckpointReach_29
  l1 = self.box_MissionMessageController_v3_58
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|2125101911", "2125101911", "Taxi19_Main", "box_MissionCheckpointReach_29.Out", "box_MissionMessageController_v3_58.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_FelonySystemController_v2_68_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Taxi_AbortMission_22()
  l0 = self.box_Taxi_AbortMission_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|2130124393", "2130124393", "Taxi19_Main", "box_FelonySystemController_v2_68.Enabled", "box_Taxi_AbortMission_22.VehicleUnusable", clone, l0)
  l0:VehicleUnusable()
end
function export:f_box_SnapAndBind_60_Attached()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_66
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF190",
    item = "Objective_Pick_Truck",
    id = "630509"
  }
  l0.ShowPreviousObjectiveComplete = 0
  l0.HasObjectiveMarker = 0
  l0 = self.box_SnapAndBind_60
  l1 = self.box_MissionMessageController_v3_66
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|539290078", "539290078", "Taxi19_Main", "box_SnapAndBind_60.Attached", "box_MissionMessageController_v3_66.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_Simple_Node_81_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionZone_78()
  l0 = self.box_MissionZone_78
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1936562186", "1936562186", "Taxi19_Main", "box_Simple_Node_81.Out", "box_MissionZone_78.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Simple_Node_83_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TaxiStrategiesController_33
  l0.Config = "TaxiRideStrategyConfig.9223372047964392060"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|2038980004", "2038980004", "Taxi19_Main", "box_Simple_Node_83.Out", "box_TaxiStrategiesController_33.Pause", clone, l0)
  l0:Pause()
end
function export:f_box_Timer_v2_14_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRideReachDestinationMonitor_6
  l0.Client = self.Client
  l0.DropOffIcon = "9223372048067792675"
  l0.LastDestination = 1
  l0.ShowGps = 1
  l0.Config = "TaxiRideGameplayBrick.9223372057728442524"
  l0 = self.box_Timer_v2_14
  l1 = self.box_TaxiRideReachDestinationMonitor_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1389492920", "1389492920", "Taxi19_Main", "box_Timer_v2_14.TimeElapsed", "box_TaxiRideReachDestinationMonitor_6.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Get_Player_ID_48_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_27
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|341937923", "341937923", "Taxi19_Main", "box_Get_Player_ID_48.Out", "box_CinematicPrep_27.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_MissionLayer_v2_28_Unloaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  l0.AffectMediaSystem = nil
  l0.VehicleExclusionZone = nil
  l0._graph = self
  l0._name = "box_FelonySystemController_v2_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|171854514"
  l0.Out = DummyFunction
  l0.Enabled = self.f_box_FelonySystemController_v2_70_Enabled
  l0.Disabled = DummyFunction
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  l0 = self.box_MissionLayer_v2_28
  l1 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|415586469", "415586469", "Taxi19_Main", "box_MissionLayer_v2_28.Unloaded", "box_FelonySystemController_v2_70.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_CLOController_1_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_1
  self.PlayerVehicle = l0.UserID
  self:OnEnter_box_MissionZone_78()
  l1 = self.box_MissionZone_78
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|621101469", "621101469", "Taxi19_Main", "box_CLOController_1.OnUserInPlace", "box_MissionZone_78.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_CinematicPrep_27_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_29
  l0.Checkpoint = "CheckPoint_0"
  l0 = self.box_CinematicPrep_27
  l1 = self.box_MissionCheckpointReach_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1629003864", "1629003864", "Taxi19_Main", "box_CinematicPrep_27.PostOut", "box_MissionCheckpointReach_29.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_18_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|792432512"
  l0.Out = self.f_box_Simple_Node_10_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|483104823", "483104823", "Taxi19_Main", "box_Simple_Node_18.Out", "box_Simple_Node_10.In", clone, l0)
  l0:In()
end
function export:f_box_OnceOnly_v3_72_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v4_55
  l0.MapPoint = "9223372047964396385"
  l0 = self.box_OnceOnly_v3_72
  l1 = self.box_MapPointController_v4_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1946939180", "1946939180", "Taxi19_Main", "box_OnceOnly_v3_72.Out", "box_MapPointController_v4_55.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Ordered_Output_80_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MapPointController_v4_61()
  l0 = self.box_MapPointController_v4_61
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|121294137", "121294137", "Taxi19_Main", "box_Ordered_Output_80.Out", "box_MapPointController_v4_61.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Ordered_Output_80_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_79"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|371860561"
  l0.Out = self.f_box_Simple_Node_79_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1794787736", "1794787736", "Taxi19_Main", "box_Ordered_Output_80.Out", "box_Simple_Node_79.In", clone, l0)
  l0:In()
end
function export:f_box_RandomOutput_v2_41_None()
  local l0
  self = self._graph
  self:OnEnter_box_RandomOutput_v2_41()
  l0 = self.box_RandomOutput_v2_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1978404068", "1978404068", "Taxi19_Main", "box_RandomOutput_v2_41.None", "box_RandomOutput_v2_41.Reset", l0, l0)
  l0:Reset()
end
function export:f_box_RandomOutput_v2_41_Output_0()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_45
  l0.Entity = self.Client
  l0.SoundId = "soundbinary/765946842.bnk"
  l0.Queue = 1
  l0 = self.box_RandomOutput_v2_41
  l1 = self.box_PlayDialog_v2_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|565390361", "565390361", "Taxi19_Main", "box_RandomOutput_v2_41.Output", "box_PlayDialog_v2_45.Start", l0, l1)
  l1:Start()
end
function export:f_box_RandomOutput_v2_41_Output_1()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_43
  l0.Entity = self.Client
  l0.SoundId = "soundbinary/2625879924.bnk"
  l0.Queue = 1
  l0 = self.box_RandomOutput_v2_41
  l1 = self.box_PlayDialog_v2_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1216019195", "1216019195", "Taxi19_Main", "box_RandomOutput_v2_41.Output", "box_PlayDialog_v2_43.Start", l0, l1)
  l1:Start()
end
function export:f_box_RandomOutput_v2_41_Output_2()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_44
  l0.Entity = self.Client
  l0.SoundId = "soundbinary/1300528721.bnk"
  l0.Queue = 1
  l0 = self.box_RandomOutput_v2_41
  l1 = self.box_PlayDialog_v2_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|780891027", "780891027", "Taxi19_Main", "box_RandomOutput_v2_41.Output", "box_PlayDialog_v2_44.Start", l0, l1)
  l1:Start()
end
function export:f_box_RandomOutput_v2_41_Output_3()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_42
  l0.Entity = self.Client
  l0.SoundId = "soundbinary/1373450954.bnk"
  l0.Queue = 1
  l0 = self.box_RandomOutput_v2_41
  l1 = self.box_PlayDialog_v2_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1652295331", "1652295331", "Taxi19_Main", "box_RandomOutput_v2_41.Output", "box_PlayDialog_v2_42.Start", l0, l1)
  l1:Start()
end
function export:f_box_RandomOutput_v2_41_Output_4()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_38
  l0.Entity = self.Client
  l0.SoundId = "soundbinary/4141286621.bnk"
  l0.Queue = 1
  l0 = self.box_RandomOutput_v2_41
  l1 = self.box_PlayDialog_v2_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|2613112", "2613112", "Taxi19_Main", "box_RandomOutput_v2_41.Output", "box_PlayDialog_v2_38.Start", l0, l1)
  l1:Start()
end
function export:f_box_RandomOutput_v2_41_Output_5()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_46
  l0.Entity = self.Client
  l0.SoundId = "soundbinary/2094350830.bnk"
  l0.Queue = 1
  l0 = self.box_RandomOutput_v2_41
  l1 = self.box_PlayDialog_v2_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1838331519", "1838331519", "Taxi19_Main", "box_RandomOutput_v2_41.Output", "box_PlayDialog_v2_46.Start", l0, l1)
  l1:Start()
end
function export:f_box_RandomOutput_v2_41_Output_6()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_47
  l0.Entity = self.Client
  l0.SoundId = "soundbinary/1790188508.bnk"
  l0.Queue = 1
  l0 = self.box_RandomOutput_v2_41
  l1 = self.box_PlayDialog_v2_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|685951462", "685951462", "Taxi19_Main", "box_RandomOutput_v2_41.Output", "box_PlayDialog_v2_47.Start", l0, l1)
  l1:Start()
end
function export:f_box_RandomOutput_v2_41_Output_7()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_49
  l0.Entity = self.Client
  l0.SoundId = "soundbinary/854186129.bnk"
  l0.Queue = 1
  l0 = self.box_RandomOutput_v2_41
  l1 = self.box_PlayDialog_v2_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1738791194", "1738791194", "Taxi19_Main", "box_RandomOutput_v2_41.Output", "box_PlayDialog_v2_49.Start", l0, l1)
  l1:Start()
end
function export:f_box_Simple_Node_74_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_72()
  l0 = self.box_OnceOnly_v3_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|953974410", "953974410", "Taxi19_Main", "box_Simple_Node_74.Out", "box_OnceOnly_v3_72.In", clone, l0)
  l0:In(4)
end
function export:f_box_Vehicle_Controller_25_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic_nocameralock"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|345253828"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_box_SetActionMap_v2_13_Popped
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|976760839", "976760839", "Taxi19_Main", "box_Vehicle_Controller_25.Out", "box_SetActionMap_v2_13.Pop", clone, l0)
  l0:Pop()
end
function export:f_box_ListWriter_16_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_16
  self.GIC_Users = l0.Target
  self:OnEnter_box_GameplayInteractionController_35()
  l1 = self.box_GameplayInteractionController_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|571271428", "571271428", "Taxi19_Main", "box_ListWriter_16.Added", "box_GameplayInteractionController_35.Start", l0, l1)
  l1:Start()
end
function export:f_box_ListWriter_16_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_16
  self.GIC_Users = l0.Target
end
function export:f_box_ListWriter_16_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_16
  self.GIC_Users = l0.Target
end
function export:f_box_MapPointController_v4_64_Hidden()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1791267718"
  l0.Out = self.f_box_Simple_Node_18_Out
  l0 = self.box_MapPointController_v4_64
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|905032816", "905032816", "Taxi19_Main", "box_MapPointController_v4_64.Hidden", "box_Simple_Node_18.In", l0, l1)
  l1:In()
end
function export:f_box_MapPointController_v4_64_Shown()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Proximity_Monitor_57()
  l0 = self.box_MapPointController_v4_64
  l1 = self.box_Proximity_Monitor_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1304616448", "1304616448", "Taxi19_Main", "box_MapPointController_v4_64.Shown", "box_Proximity_Monitor_57.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_FelonySystemController_v2_67_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Taxi_AbortMission_22()
  l0 = self.box_Taxi_AbortMission_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|112868198", "112868198", "Taxi19_Main", "box_FelonySystemController_v2_67.Enabled", "box_Taxi_AbortMission_22.ClientDead", clone, l0)
  l0:ClientDead()
end
function export:f_box_DriveAndTalk_8_TalkFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_36
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372060501599236"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372060501599237"
  l0 = self.box_DriveAndTalk_8
  l1 = self.box_DriveAndTalk_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|2117078845", "2117078845", "Taxi19_Main", "box_DriveAndTalk_8.TalkFinished", "box_DriveAndTalk_36.Start", l0, l1)
  l1:Start()
end
function export:f_box_Simple_Node_59_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TaxiRidePickUpController_23()
  l0 = self.box_TaxiRidePickUpController_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|276699682", "276699682", "Taxi19_Main", "box_Simple_Node_59.Out", "box_TaxiRidePickUpController_23.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_TaxiRideReachDestinationMonitor_6_ClientDropOff()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TaxiRideVehicleMonitor_24()
  l0 = self.box_TaxiRideReachDestinationMonitor_6
  l1 = self.box_TaxiRideVehicleMonitor_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|217679275", "217679275", "Taxi19_Main", "box_TaxiRideReachDestinationMonitor_6.ClientDropOff", "box_TaxiRideVehicleMonitor_24.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_TaxiRideReachDestinationMonitor_6_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRatingController_9
  l0.MissionName = self.Mission
  l0 = self.box_TaxiRideReachDestinationMonitor_6
  l1 = self.box_TaxiRatingController_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|400730959", "400730959", "Taxi19_Main", "box_TaxiRideReachDestinationMonitor_6.Enabled", "box_TaxiRatingController_9.ResetRating", l0, l1)
  l1:ResetRating()
end
function export:f_box_TaxiRideReachDestinationMonitor_6_ReachDestination()
  local l0, l1
  self = self._graph
  self:OnEnter_box_GameplayInteractionController_35()
  l0 = self.box_TaxiRideReachDestinationMonitor_6
  l1 = self.box_GameplayInteractionController_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|929680071", "929680071", "Taxi19_Main", "box_TaxiRideReachDestinationMonitor_6.ReachDestination", "box_GameplayInteractionController_35.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_VehicleMonitor_v3_54_BailedOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_72()
  l0 = self.box_VehicleMonitor_v3_54
  l1 = self.box_OnceOnly_v3_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1502604969", "1502604969", "Taxi19_Main", "box_VehicleMonitor_v3_54.BailedOut", "box_OnceOnly_v3_72.In", l0, l1)
  l1:In(0)
end
function export:f_box_VehicleMonitor_v3_54_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v4_61()
  l0 = self.box_VehicleMonitor_v3_54
  l1 = self.box_MapPointController_v4_61
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|2033471718", "2033471718", "Taxi19_Main", "box_VehicleMonitor_v3_54.Enabled", "box_MapPointController_v4_61.Show", l0, l1)
  l1:Show()
end
function export:f_box_VehicleMonitor_v3_54_Enter()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  l0.AffectMediaSystem = nil
  l0.VehicleExclusionZone = nil
  l0._graph = self
  l0._name = "box_FelonySystemController_v2_76"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|818695420"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  l0 = self.box_VehicleMonitor_v3_54
  l1 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1807716755", "1807716755", "Taxi19_Main", "box_VehicleMonitor_v3_54.Enter", "box_FelonySystemController_v2_76.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_VehicleMonitor_v3_54_Entered()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1849621747"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_80_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_80_Out_1
  l0 = self.box_VehicleMonitor_v3_54
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|910313250", "910313250", "Taxi19_Main", "box_VehicleMonitor_v3_54.Entered", "box_Ordered_Output_80.In", l0, l1)
  l1:In()
end
function export:f_box_VehicleMonitor_v3_54_Exiting()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|2105358607"
  l0.Out = self.f_box_Simple_Node_59_Out
  l0 = self.box_VehicleMonitor_v3_54
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|654368374", "654368374", "Taxi19_Main", "box_VehicleMonitor_v3_54.Exiting", "box_Simple_Node_59.In", l0, l1)
  l1:In()
end
function export:f_box_VehicleMonitor_v3_54_FullTakedown()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_72()
  l0 = self.box_VehicleMonitor_v3_54
  l1 = self.box_OnceOnly_v3_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|884368282", "884368282", "Taxi19_Main", "box_VehicleMonitor_v3_54.FullTakedown", "box_OnceOnly_v3_72.In", l0, l1)
  l1:In(3)
end
function export:f_box_VehicleMonitor_v3_54_IsUnderwater()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_72()
  l0 = self.box_VehicleMonitor_v3_54
  l1 = self.box_OnceOnly_v3_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1388615515", "1388615515", "Taxi19_Main", "box_VehicleMonitor_v3_54.IsUnderwater", "box_OnceOnly_v3_72.In", l0, l1)
  l1:In(2)
end
function export:f_box_VehicleMonitor_v3_54_IsUnusable()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_72()
  l0 = self.box_VehicleMonitor_v3_54
  l1 = self.box_OnceOnly_v3_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|1276753366", "1276753366", "Taxi19_Main", "box_VehicleMonitor_v3_54.IsUnusable", "box_OnceOnly_v3_72.In", l0, l1)
  l1:In(1)
end
function export:OnEnter_box_Taxi_AbortMission_22()
  local l0
  l0 = self.box_Taxi_AbortMission_22
  l0.MissionName = self.Mission
  l0.LayerName = self.MissionLayer
  l0.StrategyConfig = "TaxiRideStrategyConfig.9223372047964392060"
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Vehicle = self.PlayerVehicle
  l0.Conversation = "ConversationSetting.9223372048760149962"
end
function export:OnEnter_box_GameplayInteractionController_35()
  local l0
  l0 = self.box_GameplayInteractionController_35
  l0.Users = self.GIC_Users
  l0.RuleConfig = "GameplayConversationSettings.9223372060501599237"
end
function export:OnEnter_box_MissionZone_78()
  local l0
  l0 = self.box_MissionZone_78
  l0.MissionArea = "9223372071844304029"
  l0.MissionLayer = self.MissionLayer
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
end
function export:OnEnter_box_Proximity_Monitor_57()
  local l0
  l0 = self.box_Proximity_Monitor_57
  l0.Entity1 = self.PlayerEntity
  l0.Entity2 = "9223372048067755842"
  l0.Radius = 3
  l0.CheckNow = 1
end
function export:OnEnter_box_MultipleOR_3()
end
function export:OnEnter_box_Delivery_Gameplay_82()
  local l0
  l0 = self.box_Delivery_Gameplay_82
  l0.VehicleEntity = self.PlayerVehicle
  l0.DestinationTrigger = "9223372072537398467"
  l0.NbToDeliver = 1
  l0.AcceptedReliability = "Broken"
  l0.VehicleMarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Acquire",
    id = "185984"
  }
  l0.DestinationMarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0.GetOutToComplete = 1
  l0.ForceStopAtDestination = 1
end
function export:OnEnter_box_Vehicle_Controller_73()
  local l0
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.PlayerVehicle
  l0._graph = self
  l0._name = "box_Vehicle_Controller_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi19.domino|@Taxi19_Main|587105938"
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.Destructable = DummyFunction
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
end
function export:OnEnter_box_MultipleOR_53()
end
function export:OnEnter_box_TaxiRideVehicleMonitor_24()
  local l0
  l0 = self.box_TaxiRideVehicleMonitor_24
  l0.Client = self.Client
  l0.Config = "TaxiRideGameplayBrick.9223372057728442524"
end
function export:OnEnter_box_TutorialController_69()
  local l0
  l0 = self.box_TutorialController_69
  l0.Notification = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "EscapePolice",
    id = "333925"
  }
  l0.Duration = -1
end
function export:OnEnter_box_MapPointController_v4_61()
  local l0
  l0 = self.box_MapPointController_v4_61
  l0.MapPoint = "9223372047964396385"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Acquire",
    id = "185984"
  }
end
function export:OnEnter_box_TaxiRidePickUpController_23()
  local l0
  l0 = self.box_TaxiRidePickUpController_23
  l0.ClientClo = "9223372047964396386"
  l0.PickUpIcon = "9223372047964396385"
  l0.Config = "TaxiRideGameplayBrick.9223372057728442524"
end
function export:OnEnter_box_MultipleOR_31()
end
function export:OnEnter_box_FelonyTargetMonitor_19()
  local l0
  l0 = self.box_FelonyTargetMonitor_19
  l0.FelonyType = "Police"
  l0.CheckNow = 1
end
function export:OnEnter_box_OnceOnly_v3_72()
end
function export:OnEnter_box_RandomOutput_v2_41()
  local l0
  l0 = self.box_RandomOutput_v2_41
  l0.Probability[0] = 0.125
  l0.Probability[1] = 0.125
  l0.Probability[2] = 0.125
  l0.Probability[3] = 0.125
  l0.Probability[4] = 0.125
  l0.Probability[5] = 0.125
  l0.Probability[6] = 0.125
  l0.Probability[7] = 0.125
end
function export:OnEnter_box_MapPointController_v4_64()
  local l0
  l0 = self.box_MapPointController_v4_64
  l0.MapPoint = "9223372048067755842"
  l0.LocText = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "PickupSingleClient",
    id = "20000189"
  }
end
function export:OnEnter_box_VehicleMonitor_v3_54()
  local l0
  l0 = self.box_VehicleMonitor_v3_54
  l0.Vehicle = self.PlayerVehicle
  l0.CheckNow = 1
end
_compilerVersion = 4
