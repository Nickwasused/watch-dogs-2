export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/GPS3DController.lua")
  cbox:RegisterBox("domino/System/AIAgentZoneController.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CLOMonitor.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Delivery_Gameplay.lua")
  cbox:RegisterBox("domino/System/DPadHackableController.lua")
  cbox:RegisterBox("domino/Library/common/Narrative.DriveAndTalk.lua")
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
  cbox:RegisterBox("domino/Library/common/MissionIngredients.MissionZone.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/System/ProximityMonitor.lua")
  cbox:RegisterBox("domino/System/RandomOutput_v2.lua")
  cbox:RegisterBox("domino/System/RewardComponentController_V3.lua")
  cbox:RegisterBox("domino/System/SetActionMap_v2.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/Library/common/SnapAndBind.SnapAndBind.lua")
  cbox:RegisterBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.lua")
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
  self.PlayerEntity = nil
  self.Client = nil
  self.PlayerVehicle = nil
  self.Mission = "MissionList.9223372047964392059"
  self.MissionLayer = "Taxi19_Main"
  self.Truck = nil
  self.GIC_Users = {}
  self.VehicleHealth = 0
  self[47] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[47]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[22] = cbox:CreateBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.lua")
  l0 = self[22]
  l0._graph = self
  self[4] = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self[4]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_4_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self[45] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[45]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[35] = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self[35]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = self.f_35_Stopped
  self[12] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[12]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_12_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_12_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[78] = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.lua")
  l0 = self[78]
  l0._graph = self
  l0.Enabled = self.f_78_Enabled
  l0.Disabled = DummyFunction
  l0.SoftQuitCompleted = DummyFunction
  self[17] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[17]
  l0._graph = self
  l0.Out = self.f_17_Out
  l0.MessageCompleted = DummyFunction
  self[46] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[46]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[57] = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self[57]
  l0._graph = self
  l0.Enabled = self.f_57_Enabled
  l0.Disabled = self.f_57_Disabled
  l0.EnterRadius = self.f_57_EnterRadius
  l0.ExitRadius = DummyFunction
  self[3] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[3]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_3_Out
  self[26] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[26]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self[49] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[49]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[82] = cbox:CreateBox("domino/Library/common/MissionIngredients.Delivery_Gameplay.lua")
  l0 = self[82]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_82_Stopped
  l0.NewDeliveryCompleted = DummyFunction
  l0.AllDeliveryCompleted = self.f_82_AllDeliveryCompleted
  l0.SpecificVehicleReliabilityFailure = DummyFunction
  l0.VehicleForceStopped = DummyFunction
  l0.Evaded = DummyFunction
  l0.InConflict = DummyFunction
  l0.TeamSpeakFinished = DummyFunction
  self[37] = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self[37]
  l0._graph = self
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = DummyFunction
  l0.RewardShown = DummyFunction
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = self.f_37_RatingRemoved
  self[2] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_2_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[66] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[66]
  l0._graph = self
  l0.Out = self.f_66_Out
  l0.MessageCompleted = DummyFunction
  self[53] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[53]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_53_Out
  self[24] = cbox:CreateBox("domino/System/TaxiRideVehicleMonitor.lua")
  l0 = self[24]
  l0._graph = self
  l0.Enabled = self.f_24_Enabled
  l0.Disabled = self.f_24_Disabled
  l0.ClientDeath = self.f_24_ClientDeath
  l0.VehicleUnusable = self.f_24_VehicleUnusable
  l0.ClientBailedOut = self.f_24_ClientBailedOut
  l0.PlayerAbandonedVehicle = self.f_24_PlayerAbandonedVehicle
  self[40] = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self[40]
  l0._graph = self
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = DummyFunction
  l0.RewardShown = self.f_40_RewardShown
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self[36] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[36]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[11] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[11]
  l0._graph = self
  l0.Loaded = self.f_11_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[5] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[5]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_5_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[43] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[43]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[50] = cbox:CreateBox("domino/System/VehicleMonitor_v3.lua")
  l0 = self[50]
  l0._graph = self
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
  l0.TakenDamage = self.f_50_TakenDamage
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
  self[21] = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self[21]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self[42] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[42]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[69] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[69]
  l0._graph = self
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_69_DisplayRequested
  l0.NotificationHidden = self.f_69_NotificationHidden
  l0.MessageCompleted = DummyFunction
  self[7] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[7]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_7_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[58] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[58]
  l0._graph = self
  l0.Out = self.f_58_Out
  l0.MessageCompleted = DummyFunction
  self[33] = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self[33]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = self.f_33_Paused
  l0.Resumed = DummyFunction
  self[55] = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self[55]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = self.f_55_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[61] = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self[61]
  l0._graph = self
  l0.Shown = self.f_61_Shown
  l0.Hidden = self.f_61_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[23] = cbox:CreateBox("domino/System/TaxiRidePickUpController.lua")
  l0 = self[23]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ClientSpawned = self.f_23_ClientSpawned
  l0.ClientPickedUp = self.f_23_ClientPickedUp
  l0.ClientConversationFinised = self.f_23_ClientConversationFinised
  self[71] = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self[71]
  l0._graph = self
  l0.Enabled = self.f_71_Enabled
  l0.Disabled = DummyFunction
  l0.GotUser = DummyFunction
  l0.NotGotUser = DummyFunction
  l0.OnUserInPlace = DummyFunction
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = self.f_71_OnUserUnspawn
  self[9] = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self[9]
  l0._graph = self
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = self.f_9_RatingReset
  l0.RewardShown = DummyFunction
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self[31] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[31]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_31_Out
  self[19] = cbox:CreateBox("domino/System/FelonyTargetMonitor.lua")
  l0 = self[19]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_19_Stopped
  l0.None = DummyFunction
  l0.DenunciatorStarted = DummyFunction
  l0.DenunciatorInterrupted = DummyFunction
  l0.DenunciatorFinished = DummyFunction
  l0.ScanStarted = DummyFunction
  l0.ScanSuccess = DummyFunction
  l0.ScanFailure = DummyFunction
  l0.Chasing = self.f_19_Chasing
  l0.Searching = DummyFunction
  l0.Evaded = self.f_19_Evaded
  l0.TargetKilled = DummyFunction
  l0.LevelChanged = DummyFunction
  l0.TargetArrested = DummyFunction
  self[15] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[15]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_15_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[29] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[29]
  l0._graph = self
  l0.Out = self.f_29_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[60] = cbox:CreateBox("domino/Library/common/SnapAndBind.SnapAndBind.lua")
  l0 = self[60]
  l0._graph = self
  l0.Attached = self.f_60_Attached
  self[14] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[14]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_14_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[28] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[28]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_28_Unloaded
  l0.Reseted = DummyFunction
  self[1] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[1]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_1_OnUserInPlace
  self[27] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[27]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_27_PostOut
  self[44] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[44]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[72] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[72]
  l0._graph = self
  l0._DynamicAnchors = {In = 5}
  l0.Out = self.f_72_Out
  l0.ResetOut = DummyFunction
  self[41] = cbox:CreateBox("domino/System/RandomOutput_v2.lua")
  l0 = self[41]
  l0._graph = self
  l0._DynamicAnchors = {Probability = 8, Output = 8}
  l0.Out = DummyFunction
  l0.ResetOut = DummyFunction
  l0.None = self.f_41_None
  l0.Output[0] = self.f_41_Output_0
  l0.Output[1] = self.f_41_Output_1
  l0.Output[2] = self.f_41_Output_2
  l0.Output[3] = self.f_41_Output_3
  l0.Output[4] = self.f_41_Output_4
  l0.Output[5] = self.f_41_Output_5
  l0.Output[6] = self.f_41_Output_6
  l0.Output[7] = self.f_41_Output_7
  self[39] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[39]
  l0._graph = self
  self[16] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[16]
  l0._graph = self
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_16_Added
  l0.Removed = self.f_16_Removed
  l0.Out = self.f_16_Out
  self[64] = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self[64]
  l0._graph = self
  l0.Shown = self.f_64_Shown
  l0.Hidden = self.f_64_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[38] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[38]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[8] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[8]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_8_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[6] = cbox:CreateBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self[6]
  l0._graph = self
  l0.Enabled = self.f_6_Enabled
  l0.Disabled = DummyFunction
  l0.ReachDestination = self.f_6_ReachDestination
  l0.ClientDropOff = self.f_6_ClientDropOff
  self[54] = cbox:CreateBox("domino/System/VehicleMonitor_v3.lua")
  l0 = self[54]
  l0._graph = self
  l0.Enabled = self.f_54_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_54_Enter
  l0.Entered = self.f_54_Entered
  l0.PassangerEntered = DummyFunction
  l0.Leave = DummyFunction
  l0.Exiting = self.f_54_Exiting
  l0.ChangeSeat = DummyFunction
  l0.BailedOut = self.f_54_BailedOut
  l0.IsPawnHiding = DummyFunction
  l0.PawnIsNotHiding = DummyFunction
  l0.StateChange = DummyFunction
  l0.TakenDamage = DummyFunction
  l0.IsUnusable = self.f_54_IsUnusable
  l0.IsUnderwater = self.f_54_IsUnderwater
  l0.NoMoveTimer = DummyFunction
  l0.OnMoveTimer = DummyFunction
  l0.IsSlowEnoughToExit = DummyFunction
  l0.VehicleJump = DummyFunction
  l0.VehicleLanding = DummyFunction
  l0.BollardTakedown = DummyFunction
  l0.SteamPipeTakedown = DummyFunction
  l0.TrafficLightTakedown = DummyFunction
  l0.FullTakedown = self.f_54_FullTakedown
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
  l0 = self[31]
  l0:Input(1)
end
function export:In()
  local l0
  l0 = self[31]
  l0:Input(0)
end
function export:f_20_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_34_Out_0
  l0.Out[1] = self.f_34_Out_1
  l0:In()
end
function export:f_4_Stopped()
  local l0
  self = self._graph
  self:en_82()
  l0 = self[82]
  l0:Start()
end
function export:f_77_Enabled()
  local l0
  self = self._graph
  l0 = self[14]
  l0:Start()
end
function export:f_35_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_51_Out
  l0:In()
end
function export:f_12_Started()
  local l0
  self = self._graph
  l0 = self[16]
  l0.Input = self.GIC_Users
  l0.Data[0] = self.PlayerEntity
  l0.Data[1] = self.Client
  l0:Add()
end
function export:f_12_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[7]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149960"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372060501599237"
  l0:Start()
end
function export:f_70_Enabled()
  local l0
  self = self._graph
  l0 = self[39]
  l0:Succeed()
end
function export:f_51_Out()
  local l0
  self = self._graph
  l0 = self[53]
  l0:Input(1)
end
function export:f_78_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  l0.HackableEntity = self.PlayerVehicle
  l0.HackableEntityList = nil
  l0.HackCategoryType[0] = nil
  l0.HackCategoryType[1] = nil
  l0._graph = self
  l0._DynamicAnchors = {HackCategoryType = 2}
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = DummyFunction
  l0.Removed = DummyFunction
  l0.RemovedAll = self.f_56_RemovedAll
  l0.HackingDisabled = DummyFunction
  l0:RemoveAll()
end
function export:f_17_Out()
  local l0
  self = self._graph
  l0 = self[28]
  l0.LayerName = self.MissionLayer
  l0:Unload()
end
function export:f_57_Disabled()
  local l0
  self = self._graph
  self:en_64()
  l0 = self[64]
  l0:Hide()
end
function export:f_57_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0.Player = nil
  l0.Target = "9223372048067755842"
  l0.Path = nil
  l0.Index = nil
  l0.PathType = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TargetAdded = DummyFunction
  l0.TargetRemoved = DummyFunction
  l0:Enable()
end
function export:f_57_EnterRadius()
  local l0
  self = self._graph
  self:en_57()
  l0 = self[57]
  l0:Disable()
end
function export:f_3_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_52_Out_0
  l0.Out[1] = self.f_52_Out_1
  l0:In()
end
function export:f_63_Out()
  local l0
  self = self._graph
  l0 = self[1]
  l0.CLO = "9223372047964392058"
  l0.SpawnOutsideLoadingRing = 1
  l0:Activate()
end
function export:f_13_Popped()
  local l0
  self = self._graph
  l0 = self[17]
  l0:ShowMissionComplete()
end
function export:f_79_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_81_Out
  l0:In()
end
function export:f_82_AllDeliveryCompleted()
  local l0
  self = self._graph
  self:en_82()
  l0 = self[82]
  l0:Stop()
end
function export:f_82_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.PlayerVehicle
  l0._graph = self
  l0.Out = self.f_25_Out
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
  l0:DisableForPlayer()
end
function export:f_37_RatingRemoved()
  local l0
  self = self._graph
  self:en_41()
  l0 = self[41]
  l0:In()
end
function export:f_2_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[5]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149959"
  l0.StartDelay = 1
  l0:Start()
end
function export:f_66_Out()
  local l0
  self = self._graph
  l0 = self[71]
  l0.CLO = "9223372047964392058"
  l0:Enable()
end
function export:f_53_Out()
  local l0
  self = self._graph
  l0 = self[50]
  l0.Vehicle = self.PlayerVehicle
  l0:Disable()
end
function export:f_56_RemovedAll()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.PlayerVehicle
  l0._graph = self
  l0.Out = self.f_20_Out
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
  l0:EnableForPlayer()
end
function export:f_24_ClientBailedOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  l0.AffectMediaSystem = nil
  l0.VehicleExclusionZone = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = self.f_62_Enabled
  l0.Disabled = DummyFunction
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  l0:Enable()
end
function export:f_24_ClientDeath()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  l0.AffectMediaSystem = nil
  l0.VehicleExclusionZone = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = self.f_67_Enabled
  l0.Disabled = DummyFunction
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  l0:Enable()
end
function export:f_24_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_83_Out
  l0:In()
end
function export:f_24_Enabled()
  local l0
  self = self._graph
  self:en_54()
  l0 = self[54]
  l0:Disable()
end
function export:f_24_PlayerAbandonedVehicle()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  l0.AffectMediaSystem = nil
  l0.VehicleExclusionZone = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = self.f_65_Enabled
  l0.Disabled = DummyFunction
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  l0:Enable()
end
function export:f_24_VehicleUnusable()
  local l0
  self = self._graph
  l0 = self[3]
  l0:Input(0)
end
function export:f_40_RewardShown()
  local l0
  self = self._graph
  l0 = self[4]
  l0.Config = "TaxiRideStrategyConfig.9223372047964392060"
  l0:Stop()
end
function export:f_11_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_48_Out
  l0:In()
end
function export:f_5_TalkFinished()
  local l0
  self = self._graph
  l0 = self[12]
  l0.Seconds = 5
  l0:Start()
end
function export:f_50_TakenDamage()
  local l0
  self = self._graph
  l0 = self[37]
  l0.MissionName = self.Mission
  l0.RatingAmount = 1
  l0:RemoveRating()
end
function export:f_10_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372064965781324"
  l0.NPC = nil
  l0._graph = self
  l0.Out = self.f_63_Out
  l0:Enable()
end
function export:f_69_DisplayRequested()
  local l0
  self = self._graph
  self:en_73()
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0:DisableForPlayer()
end
function export:f_69_NotificationHidden()
  local l0
  self = self._graph
  self:en_73()
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0:EnableForPlayer()
end
function export:f_7_TalkFinished()
  local l0
  self = self._graph
  l0 = self[15]
  l0.Seconds = 5
  l0:Start()
end
function export:f_58_Out()
  local l0
  self = self._graph
  self:en_64()
  l0 = self[64]
  l0:Show()
end
function export:f_62_Enabled()
  local l0
  self = self._graph
  self:en_22()
  l0 = self[22]
  l0:ClientBailedOut()
end
function export:f_33_Paused()
  local l0
  self = self._graph
  l0 = self[40]
  l0.MissionName = self.Mission
  l0:ShowReward()
end
function export:f_55_Hidden()
  local l0
  self = self._graph
  l0 = self[3]
  l0:Input(1)
end
function export:f_61_Hidden()
  local l0
  self = self._graph
  self:en_23()
  l0 = self[23]
  l0:Enable()
end
function export:f_61_Shown()
  local l0
  self = self._graph
  self:en_19()
  l0 = self[19]
  l0:Start()
end
function export:f_23_ClientConversationFinised()
  local l0
  self = self._graph
  l0 = self[2]
  l0.Seconds = 3
  l0:Start()
end
function export:f_23_ClientPickedUp()
  local l0
  self = self._graph
  self:en_19()
  l0 = self[19]
  l0:Stop()
end
function export:f_23_ClientSpawned()
  local l0
  self = self._graph
  l0 = self[23]
  self.Client = l0.Client
  self:en_24()
  l0 = self[24]
  l0:Enable()
end
function export:f_71_Enabled()
  local l0
  self = self._graph
  self:en_54()
  l0 = self[54]
  l0:Enable()
end
function export:f_71_OnUserUnspawn()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_74_Out
  l0:In()
end
function export:f_9_RatingReset()
  local l0
  self = self._graph
  l0 = self[21]
  l0.Config = "TaxiRideStrategyConfig.9223372047964392060"
  l0:Start()
end
function export:f_31_Out()
  local l0
  self = self._graph
  l0 = self[11]
  l0.LayerName = self.MissionLayer
  l0:Load()
end
function export:f_19_Chasing()
  local l0
  self = self._graph
  self:en_69()
  l0 = self[69]
  l0:Display()
end
function export:f_19_Evaded()
  local l0
  self = self._graph
  self:en_69()
  l0 = self[69]
  l0:HideNotification()
end
function export:f_19_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  l0.AffectMediaSystem = nil
  l0.VehicleExclusionZone = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = self.f_77_Enabled
  l0.Disabled = DummyFunction
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  l0:Enable()
end
function export:f_34_Out_0()
  local l0
  self = self._graph
  l0 = self[60]
  l0.Parent = self.PlayerVehicle
  l0.Child = "9223372047964396385"
  l0.CarIcon = 1
  l0:Attach()
end
function export:f_34_Out_1()
  local l0
  self = self._graph
  l0 = self[26]
  l0.ItemDB = "Items.9223372057864724772"
  l0:ExecuteRewards()
end
function export:f_52_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  l0.AffectMediaSystem = nil
  l0.VehicleExclusionZone = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = self.f_68_Enabled
  l0.Disabled = DummyFunction
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  l0:Enable()
end
function export:f_52_Out_1()
  local l0
  self = self._graph
  l0 = self[53]
  l0:Input(0)
end
function export:f_15_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[8]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149961"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372060501599237"
  l0:Start()
end
function export:f_65_Enabled()
  local l0
  self = self._graph
  self:en_22()
  l0 = self[22]
  l0:PlayerAbandonedVehicle()
end
function export:f_29_Out()
  local l0
  self = self._graph
  l0 = self[58]
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "PickupSingleClient",
    id = "20000189"
  }
  l0.HasObjectiveMarker = 0
  l0:ShowNewObjective()
end
function export:f_68_Enabled()
  local l0
  self = self._graph
  self:en_22()
  l0 = self[22]
  l0:VehicleUnusable()
end
function export:f_60_Attached()
  local l0
  self = self._graph
  l0 = self[66]
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF190",
    item = "Objective_Pick_Truck",
    id = "630509"
  }
  l0.ShowPreviousObjectiveComplete = 0
  l0.HasObjectiveMarker = 0
  l0:ShowNewObjective()
end
function export:f_81_Out()
  local l0
  self = self._graph
  self:en_78()
  l0 = self[78]
  l0:Disable()
end
function export:f_83_Out()
  local l0
  self = self._graph
  l0 = self[33]
  l0.Config = "TaxiRideStrategyConfig.9223372047964392060"
  l0:Pause()
end
function export:f_14_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[6]
  l0.Client = self.Client
  l0.DropOffIcon = "9223372048067792675"
  l0.LastDestination = 1
  l0.ShowGps = 1
  l0.Config = "TaxiRideGameplayBrick.9223372057728442524"
  l0:Enable()
end
function export:f_48_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[27]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_28_Unloaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  l0.AffectMediaSystem = nil
  l0.VehicleExclusionZone = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = self.f_70_Enabled
  l0.Disabled = DummyFunction
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  l0:Enable()
end
function export:f_1_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[1]
  self.PlayerVehicle = l0.UserID
  self:en_78()
  l0 = self[78]
  l0:Enable()
end
function export:f_27_PostOut()
  local l0
  self = self._graph
  l0 = self[29]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_18_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_10_Out
  l0:In()
end
function export:f_72_Out()
  local l0
  self = self._graph
  l0 = self[55]
  l0.MapPoint = "9223372047964396385"
  l0:Hide()
end
function export:f_80_Out_0()
  local l0
  self = self._graph
  self:en_61()
  l0 = self[61]
  l0:Hide()
end
function export:f_80_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_79_Out
  l0:In()
end
function export:f_41_None()
  local l0
  self = self._graph
  self:en_41()
  l0 = self[41]
  l0:Reset()
end
function export:f_41_Output_0()
  local l0
  self = self._graph
  l0 = self[45]
  l0.Entity = self.Client
  l0.SoundId = "soundbinary/765946842.bnk"
  l0.Queue = 1
  l0:Start()
end
function export:f_41_Output_1()
  local l0
  self = self._graph
  l0 = self[43]
  l0.Entity = self.Client
  l0.SoundId = "soundbinary/2625879924.bnk"
  l0.Queue = 1
  l0:Start()
end
function export:f_41_Output_2()
  local l0
  self = self._graph
  l0 = self[44]
  l0.Entity = self.Client
  l0.SoundId = "soundbinary/1300528721.bnk"
  l0.Queue = 1
  l0:Start()
end
function export:f_41_Output_3()
  local l0
  self = self._graph
  l0 = self[42]
  l0.Entity = self.Client
  l0.SoundId = "soundbinary/1373450954.bnk"
  l0.Queue = 1
  l0:Start()
end
function export:f_41_Output_4()
  local l0
  self = self._graph
  l0 = self[38]
  l0.Entity = self.Client
  l0.SoundId = "soundbinary/4141286621.bnk"
  l0.Queue = 1
  l0:Start()
end
function export:f_41_Output_5()
  local l0
  self = self._graph
  l0 = self[46]
  l0.Entity = self.Client
  l0.SoundId = "soundbinary/2094350830.bnk"
  l0.Queue = 1
  l0:Start()
end
function export:f_41_Output_6()
  local l0
  self = self._graph
  l0 = self[47]
  l0.Entity = self.Client
  l0.SoundId = "soundbinary/1790188508.bnk"
  l0.Queue = 1
  l0:Start()
end
function export:f_41_Output_7()
  local l0
  self = self._graph
  l0 = self[49]
  l0.Entity = self.Client
  l0.SoundId = "soundbinary/854186129.bnk"
  l0.Queue = 1
  l0:Start()
end
function export:f_74_Out()
  local l0
  self = self._graph
  l0 = self[72]
  l0:In(4)
end
function export:f_25_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic_nocameralock"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_13_Popped
  l0:Pop()
end
function export:f_16_Added()
  local l0
  self = self._graph
  l0 = self[16]
  self.GIC_Users = l0.Target
  self:en_35()
  l0 = self[35]
  l0:Start()
end
function export:f_16_Out()
  local l0
  self = self._graph
  l0 = self[16]
  self.GIC_Users = l0.Target
end
function export:f_16_Removed()
  local l0
  self = self._graph
  l0 = self[16]
  self.GIC_Users = l0.Target
end
function export:f_64_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_18_Out
  l0:In()
end
function export:f_64_Shown()
  local l0
  self = self._graph
  self:en_57()
  l0 = self[57]
  l0:Enable()
end
function export:f_67_Enabled()
  local l0
  self = self._graph
  self:en_22()
  l0 = self[22]
  l0:ClientDead()
end
function export:f_8_TalkFinished()
  local l0
  self = self._graph
  l0 = self[36]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372060501599236"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372060501599237"
  l0:Start()
end
function export:f_59_Out()
  local l0
  self = self._graph
  self:en_23()
  l0 = self[23]
  l0:Disable()
end
function export:f_6_ClientDropOff()
  local l0
  self = self._graph
  self:en_24()
  l0 = self[24]
  l0:Disable()
end
function export:f_6_Enabled()
  local l0
  self = self._graph
  l0 = self[9]
  l0.MissionName = self.Mission
  l0:ResetRating()
end
function export:f_6_ReachDestination()
  local l0
  self = self._graph
  self:en_35()
  l0 = self[35]
  l0:Stop()
end
function export:f_54_BailedOut()
  local l0
  self = self._graph
  l0 = self[72]
  l0:In(0)
end
function export:f_54_Enabled()
  local l0
  self = self._graph
  self:en_61()
  l0 = self[61]
  l0:Show()
end
function export:f_54_Enter()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  l0.AffectMediaSystem = nil
  l0.VehicleExclusionZone = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  l0:Disable()
end
function export:f_54_Entered()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_80_Out_0
  l0.Out[1] = self.f_80_Out_1
  l0:In()
end
function export:f_54_Exiting()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_59_Out
  l0:In()
end
function export:f_54_FullTakedown()
  local l0
  self = self._graph
  l0 = self[72]
  l0:In(3)
end
function export:f_54_IsUnderwater()
  local l0
  self = self._graph
  l0 = self[72]
  l0:In(2)
end
function export:f_54_IsUnusable()
  local l0
  self = self._graph
  l0 = self[72]
  l0:In(1)
end
function export:en_22()
  local l0
  l0 = self[22]
  l0.MissionName = self.Mission
  l0.LayerName = self.MissionLayer
  l0.StrategyConfig = "TaxiRideStrategyConfig.9223372047964392060"
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Vehicle = self.PlayerVehicle
  l0.Conversation = "ConversationSetting.9223372048760149962"
end
function export:en_35()
  local l0
  l0 = self[35]
  l0.Users = self.GIC_Users
  l0.RuleConfig = "GameplayConversationSettings.9223372060501599237"
end
function export:en_78()
  local l0
  l0 = self[78]
  l0.MissionArea = "9223372071844304029"
  l0.MissionLayer = self.MissionLayer
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
end
function export:en_57()
  local l0
  l0 = self[57]
  l0.Entity1 = self.PlayerEntity
  l0.Entity2 = "9223372048067755842"
  l0.Radius = 3
  l0.CheckNow = 1
end
function export:en_82()
  local l0
  l0 = self[82]
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
function export:en_73()
  local l0
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.PlayerVehicle
  l0._graph = self
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
function export:en_24()
  local l0
  l0 = self[24]
  l0.Client = self.Client
  l0.Config = "TaxiRideGameplayBrick.9223372057728442524"
end
function export:en_69()
  local l0
  l0 = self[69]
  l0.Notification = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "EscapePolice",
    id = "333925"
  }
  l0.Duration = -1
end
function export:en_61()
  local l0
  l0 = self[61]
  l0.MapPoint = "9223372047964396385"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Acquire",
    id = "185984"
  }
end
function export:en_23()
  local l0
  l0 = self[23]
  l0.ClientClo = "9223372047964396386"
  l0.PickUpIcon = "9223372047964396385"
  l0.Config = "TaxiRideGameplayBrick.9223372057728442524"
end
function export:en_19()
  local l0
  l0 = self[19]
  l0.FelonyType = "Police"
  l0.CheckNow = 1
end
function export:en_41()
  local l0
  l0 = self[41]
  l0.Probability[0] = 0.125
  l0.Probability[1] = 0.125
  l0.Probability[2] = 0.125
  l0.Probability[3] = 0.125
  l0.Probability[4] = 0.125
  l0.Probability[5] = 0.125
  l0.Probability[6] = 0.125
  l0.Probability[7] = 0.125
end
function export:en_64()
  local l0
  l0 = self[64]
  l0.MapPoint = "9223372048067755842"
  l0.LocText = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "PickupSingleClient",
    id = "20000189"
  }
end
function export:en_54()
  local l0
  l0 = self[54]
  l0.Vehicle = self.PlayerVehicle
  l0.CheckNow = 1
end
_compilerVersion = 4
