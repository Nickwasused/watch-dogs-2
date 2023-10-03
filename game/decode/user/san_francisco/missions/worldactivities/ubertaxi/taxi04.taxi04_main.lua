export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  cbox:RegisterBox("domino/System/FollowPathComponentController.lua")
  cbox:RegisterBox("domino/System/FollowPathComponentMonitor.lua")
  cbox:RegisterBox("domino/System/GameplayInteractionController.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/MapPointController_v4.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/ParticleFxController_v2.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.lua")
  cbox:RegisterBox("domino/System/TaxiRatingController.lua")
  cbox:RegisterBox("domino/System/TaxiRidePickUpController.lua")
  cbox:RegisterBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  cbox:RegisterBox("domino/System/TaxiRideVehicleMonitor.lua")
  cbox:RegisterBox("domino/System/TaxiStrategiesController.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TutorialController.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.MissionLayer = "Taxi04_Main"
  self.Mission = "MissionList.9223372046134522670"
  self.PlayerVehicle = nil
  self.CLOClient = "9223372046134562448"
  self.IconVehicle = "9223372046134562450"
  self.Client = nil
  self.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF040",
    item = "Objective_01",
    id = "581661"
  }
  self.ChasingDrone = 0
  self.ActorList = {}
  self.InteractionID = 0
  self[34] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[34]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_34_Out
  self[29] = cbox:CreateBox("domino/System/FollowPathComponentMonitor.lua")
  l0 = self[29]
  l0._graph = self
  l0.Enabled = self.f_29_Enabled
  l0.Disabled = self.f_29_Disabled
  l0.SpecificPointReached = DummyFunction
  l0.CurrentPointReached = DummyFunction
  l0.EndPointReached = self.f_29_EndPointReached
  l0.OutOfRange = self.f_29_OutOfRange
  l0.BackInRange = self.f_29_BackInRange
  self[62] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[62]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_62_Out
  self[1] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[1]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_1_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_1_TalkFailed
  self[45] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[45]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_45_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[57] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[57]
  l0._graph = self
  l0.Out = self.f_57_Out
  l0.SetTrue = self.f_57_SetTrue
  l0.SetFalse = self.f_57_SetFalse
  l0.Toggled = self.f_57_Toggled
  l0.SetFromBool = self.f_57_SetFromBool
  self[25] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[25]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = self.f_25_TalkStarted
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_25_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_25_TalkFailed
  self[21] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[21]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_21_Unloaded
  l0.Reseted = DummyFunction
  self[48] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[48]
  l0._graph = self
  l0.Out = self.f_48_Out
  l0.MessageCompleted = DummyFunction
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
  self[10] = cbox:CreateBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self[10]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_10_Disabled
  l0.ReachDestination = self.f_10_ReachDestination
  l0.ClientDropOff = self.f_10_ClientDropOff
  self[44] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[44]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_44_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[46] = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self[46]
  l0._graph = self
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = DummyFunction
  l0.RewardShown = DummyFunction
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self[3] = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self[3]
  l0._graph = self
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = self.f_3_RatingReset
  l0.RewardShown = DummyFunction
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self[32] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[32]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_32_Out
  self[31] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[31]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_31_Out
  self[43] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[43]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[8] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[8]
  l0._graph = self
  l0.Out = self.f_8_Out
  l0.SetTrue = self.f_8_SetTrue
  l0.SetFalse = self.f_8_SetFalse
  l0.Toggled = self.f_8_Toggled
  l0.SetFromBool = self.f_8_SetFromBool
  self[39] = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self[39]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = self.f_39_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[26] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[26]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_26_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_26_TalkFailed
  self[6] = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self[6]
  l0._graph = self
  l0.Started = self.f_6_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self[14] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[14]
  l0._graph = self
  l0.Out = self.f_14_Out
  l0.MessageCompleted = DummyFunction
  self[40] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[40]
  l0._graph = self
  l0.Started = self.f_40_Started
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_40_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_40_TalkFailed
  self[23] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[23]
  l0._graph = self
  l0.Out = self.f_23_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[42] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[42]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[19] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[19]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_19_PostOut
  self[17] = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self[17]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_17_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self[12] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[12]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_12_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[37] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[37]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_37_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_37_TalkFailed
  self[30] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[30]
  l0._graph = self
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_30_DisplayRequested
  l0.NotificationHidden = self.f_30_NotificationHidden
  l0.MessageCompleted = DummyFunction
  self[24] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[24]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_24_Out
  self[35] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[35]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_35_Out
  self[33] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[33]
  l0._graph = self
  l0.Out = self.f_33_Out
  l0.MessageCompleted = DummyFunction
  self[64] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[64]
  l0._graph = self
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_64_Added
  l0.Removed = self.f_64_Removed
  l0.Out = self.f_64_Out
  self[22] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[22]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_22_Out
  self[27] = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self[27]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self[13] = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self[13]
  l0._graph = self
  l0.Out = self.f_13_Out
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  self[16] = cbox:CreateBox("domino/System/TaxiRidePickUpController.lua")
  l0 = self[16]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_16_Disabled
  l0.ClientSpawned = self.f_16_ClientSpawned
  l0.ClientPickedUp = self.f_16_ClientPickedUp
  l0.ClientConversationFinised = self.f_16_ClientConversationFinised
  self[5] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[5]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_5_Out
  self[18] = cbox:CreateBox("domino/System/TaxiRideVehicleMonitor.lua")
  l0 = self[18]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_18_Disabled
  l0.ClientDeath = self.f_18_ClientDeath
  l0.VehicleUnusable = self.f_18_VehicleUnusable
  l0.ClientBailedOut = self.f_18_ClientBailedOut
  l0.PlayerAbandonedVehicle = self.f_18_PlayerAbandonedVehicle
  self[7] = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self[7]
  l0._graph = self
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = DummyFunction
  l0.RewardShown = self.f_7_RewardShown
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self[63] = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self[63]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_63_Started
  l0.Stopped = DummyFunction
  self[41] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[41]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_41_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[9] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[9]
  l0._graph = self
  self[4] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[4]
  l0._graph = self
  l0.Loaded = self.f_4_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[56] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[56]
  l0._graph = self
  l0.Out = self.f_56_Out
  l0.SetTrue = self.f_56_SetTrue
  l0.SetFalse = self.f_56_SetFalse
  l0.Toggled = self.f_56_Toggled
  l0.SetFromBool = self.f_56_SetFromBool
  self[20] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[20]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_20_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_20_TalkFailed
  self[11] = cbox:CreateBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.lua")
  l0 = self[11]
  l0._graph = self
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
  l0 = self[24]
  l0:Input(1)
end
function export:In()
  local l0
  l0 = self[24]
  l0:Input(0)
end
function export:f_34_Out()
  local l0
  self = self._graph
  l0 = self[45]
  l0.Seconds = 20
  l0:Start()
end
function export:f_29_BackInRange()
  local l0
  self = self._graph
  l0 = self[62]
  l0:Input(1)
end
function export:f_29_Disabled()
  local l0
  self = self._graph
  l0 = self[56]
  l0:False()
end
function export:f_29_Enabled()
  local l0
  self = self._graph
  self:en_39()
  l0 = self[39]
  l0:Show()
end
function export:f_29_EndPointReached()
  local l0
  self = self._graph
  self:en_29()
  l0 = self[29]
  l0:Disable()
end
function export:f_29_OutOfRange()
  local l0
  self = self._graph
  self:en_30()
  l0 = self[30]
  l0:Display()
end
function export:f_62_Out()
  local l0
  self = self._graph
  self:en_30()
  l0 = self[30]
  l0:HideNotification()
end
function export:f_1_TalkFailed()
  local l0
  self = self._graph
  l0 = self[31]
  l0:Input(1)
end
function export:f_1_TalkFinished()
  local l0
  self = self._graph
  l0 = self[31]
  l0:Input(0)
end
function export:f_45_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[43]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372052426403420"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0:Start()
end
function export:f_57_Out()
  local l0
  self = self._graph
  l0 = self[57]
  self.ChasingDrone = l0.Target
end
function export:f_57_SetFalse()
  local l0
  self = self._graph
  l0 = self[57]
  self.ChasingDrone = l0.Target
end
function export:f_57_SetFromBool()
  local l0
  self = self._graph
  l0 = self[57]
  self.ChasingDrone = l0.Target
end
function export:f_57_SetTrue()
  local l0
  self = self._graph
  l0 = self[57]
  self.ChasingDrone = l0.Target
  self:en_16()
  l0 = self[16]
  l0:Enable()
end
function export:f_57_Toggled()
  local l0
  self = self._graph
  l0 = self[57]
  self.ChasingDrone = l0.Target
end
function export:f_25_TalkFailed()
  local l0
  self = self._graph
  l0 = self[22]
  l0:Input(1)
end
function export:f_25_TalkFinished()
  local l0
  self = self._graph
  l0 = self[22]
  l0:Input(0)
end
function export:f_25_TalkStarted()
  local l0
  self = self._graph
  l0 = self[8]
  l0:True()
end
function export:f_21_Unloaded()
  local l0
  self = self._graph
  l0 = self[9]
  l0:Succeed()
end
function export:f_48_Out()
  local l0
  self = self._graph
  self:en_10()
  l0 = self[10]
  l0:Enable()
end
function export:f_2_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[20]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149895"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0:Start()
end
function export:f_10_ClientDropOff()
  local l0
  self = self._graph
  self:en_18()
  l0 = self[18]
  l0:Disable()
end
function export:f_10_Disabled()
  local l0
  self = self._graph
  l0 = self[7]
  l0.MissionName = self.Mission
  l0:ShowReward()
end
function export:f_10_ReachDestination()
  local l0
  self = self._graph
  l0 = self[13]
  l0.InInteractionId = self.InteractionID
  l0:Stop()
end
function export:f_44_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[37]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372052426403421"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0:Start()
end
function export:f_3_RatingReset()
  local l0
  self = self._graph
  l0 = self[6]
  l0.Config = "TaxiRideStrategyConfig.9223372047360464805"
  l0:Start()
end
function export:f_15_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_38_Out
  l0:In()
end
function export:f_36_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[19]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_32_Out()
  local l0
  self = self._graph
  l0 = self[2]
  l0.Seconds = 2
  l0:Start()
end
function export:f_31_Out()
  local l0
  self = self._graph
  l0 = self[12]
  l0.Seconds = 10
  l0:Start()
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = self[8]
  self.ChasingDrone = l0.Target
end
function export:f_8_SetFalse()
  local l0
  self = self._graph
  l0 = self[8]
  self.ChasingDrone = l0.Target
end
function export:f_8_SetFromBool()
  local l0
  self = self._graph
  l0 = self[8]
  self.ChasingDrone = l0.Target
end
function export:f_8_SetTrue()
  local l0
  self = self._graph
  l0 = self[8]
  self.ChasingDrone = l0.Target
  l0 = self[3]
  l0:ResetRating()
end
function export:f_8_Toggled()
  local l0
  self = self._graph
  l0 = self[8]
  self.ChasingDrone = l0.Target
end
function export:f_39_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372052661644418"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_53_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_26_TalkFailed()
  local l0
  self = self._graph
  l0 = self[32]
  l0:Input(1)
end
function export:f_26_TalkFinished()
  local l0
  self = self._graph
  l0 = self[32]
  l0:Input(0)
end
function export:f_6_Started()
  local l0
  self = self._graph
  self:en_28()
  l0 = Boxes[PathID("domino/System/FollowPathComponentController.lua")]
  l0:Start()
end
function export:f_14_Out()
  local l0
  self = self._graph
  self:en_29()
  l0 = self[29]
  l0:Enable()
end
function export:f_40_Started()
  local l0
  self = self._graph
  l0 = self[48]
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF040",
    item = "Objective_01",
    id = "581661"
  }
  l0:ShowLastObjectiveComplete()
end
function export:f_40_TalkFailed()
  local l0
  self = self._graph
  l0 = self[35]
  l0:Input(1)
end
function export:f_40_TalkFinished()
  local l0
  self = self._graph
  l0 = self[35]
  l0:Input(0)
end
function export:f_60_A_is_True()
  local l0
  self = self._graph
  self:en_41()
  l0 = self[41]
  l0:Start()
end
function export:f_23_Out()
  local l0
  self = self._graph
  l0 = self[57]
  l0:True()
end
function export:f_61_Out_0()
  local l0
  self = self._graph
  self:en_39()
  l0 = self[39]
  l0:Hide()
end
function export:f_61_Out_1()
  local l0
  self = self._graph
  l0 = self[62]
  l0:Input(0)
end
function export:f_19_PostOut()
  local l0
  self = self._graph
  l0 = self[23]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_17_Stopped()
  local l0
  self = self._graph
  l0 = self[33]
  l0:ShowMissionComplete()
end
function export:f_12_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[26]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149894"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0:Start()
end
function export:f_37_TalkFailed()
  local l0
  self = self._graph
  l0 = self[34]
  l0:Input(1)
end
function export:f_37_TalkFinished()
  local l0
  self = self._graph
  l0 = self[34]
  l0:Input(0)
end
function export:f_38_Out()
  local l0
  self = self._graph
  self:en_10()
  l0 = self[10]
  l0:Disable()
end
function export:f_30_DisplayRequested()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.ChasingDrone
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_60_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_30_NotificationHidden()
  local l0
  self = self._graph
  self:en_41()
  l0 = self[41]
  l0:Stop()
end
function export:f_24_Out()
  local l0
  self = self._graph
  l0 = self[4]
  l0.LayerName = self.MissionLayer
  l0:Load()
end
function export:f_35_Out()
  local l0
  self = self._graph
  l0 = self[42]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372052426403425"
  l0.StartDelay = 0.01
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0:Start()
end
function export:f_33_Out()
  local l0
  self = self._graph
  l0 = self[21]
  l0.LayerName = self.MissionLayer
  l0:Unload()
end
function export:f_64_Added()
  local l0
  self = self._graph
  l0 = self[64]
  self.ActorList = l0.Target
  l0 = self[63]
  l0.Users = self.ActorList
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0:Start()
end
function export:f_64_Out()
  local l0
  self = self._graph
  l0 = self[64]
  self.ActorList = l0.Target
end
function export:f_64_Removed()
  local l0
  self = self._graph
  l0 = self[64]
  self.ActorList = l0.Target
end
function export:f_22_Out()
  local l0
  self = self._graph
  l0 = self[64]
  l0.Input = self.ActorList
  l0.Data[0] = self.PlayerEntity
  l0.Data[1] = self.Client
  l0:Add()
end
function export:f_53_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372052661643958"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_52_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_13_Out()
  local l0
  self = self._graph
  l0 = self[27]
  l0.Config = "TaxiRideStrategyConfig.9223372047360464805"
  l0:Pause()
end
function export:f_16_ClientConversationFinised()
  local l0
  self = self._graph
  self:en_16()
  l0 = self[16]
  l0:Disable()
end
function export:f_16_ClientPickedUp()
  local l0
  self = self._graph
  l0 = self[16]
  self.PlayerVehicle = l0.Vehicle
end
function export:f_16_ClientSpawned()
  local l0
  self = self._graph
  l0 = self[16]
  self.Client = l0.Client
  self:en_18()
  l0 = self[18]
  l0:Enable()
end
function export:f_16_Disabled()
  local l0
  self = self._graph
  l0 = self[25]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372052426403423"
  l0.StartDelay = 1
  l0:Start()
end
function export:f_52_Started()
  local l0
  self = self._graph
  l0 = self[40]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372052426403424"
  l0.StartDelay = 0.01
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0:Start()
end
function export:f_5_Out()
  local l0
  self = self._graph
  l0 = self[44]
  l0.Seconds = 10
  l0:Start()
end
function export:f_18_ClientBailedOut()
  local l0
  self = self._graph
  self:en_11()
  l0 = self[11]
  l0:ClientBailedOut()
end
function export:f_18_ClientDeath()
  local l0
  self = self._graph
  self:en_11()
  l0 = self[11]
  l0:ClientDead()
end
function export:f_18_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_15_Out
  l0:In()
end
function export:f_18_PlayerAbandonedVehicle()
  local l0
  self = self._graph
  self:en_11()
  l0 = self[11]
  l0:PlayerAbandonedVehicle()
end
function export:f_18_VehicleUnusable()
  local l0
  self = self._graph
  self:en_11()
  l0 = self[11]
  l0:VehicleUnusable()
end
function export:f_7_RewardShown()
  local l0
  self = self._graph
  l0 = self[17]
  l0.Config = "TaxiRideStrategyConfig.9223372047360464805"
  l0:Stop()
end
function export:f_63_Started()
  local l0
  self = self._graph
  l0 = self[63]
  self.InteractionID = l0.interactionId
  l0 = self[1]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149893"
  l0.StartDelay = 6
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0:Start()
end
function export:f_41_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[46]
  l0.MissionName = self.Mission
  l0.RatingAmount = 1
  l0:RemoveRating()
end
function export:f_28_RangeCheckStarted()
  local l0
  self = self._graph
  l0 = self[14]
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF040",
    item = "Objective_01",
    id = "581661"
  }
  l0.ShowPreviousObjectiveComplete = 0
  l0.HasObjectiveMarker = 0
  l0:ShowNewObjective()
end
function export:f_28_Started()
  local l0
  self = self._graph
  self:en_28()
  l0 = Boxes[PathID("domino/System/FollowPathComponentController.lua")]
  l0:SetText()
end
function export:f_28_TextSet()
  local l0
  self = self._graph
  self:en_28()
  l0 = Boxes[PathID("domino/System/FollowPathComponentController.lua")]
  l0:StartRangeCheck()
end
function export:f_4_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_36_Out
  l0:In()
end
function export:f_56_Out()
  local l0
  self = self._graph
  l0 = self[56]
  self.ChasingDrone = l0.Target
end
function export:f_56_SetFalse()
  local l0
  self = self._graph
  l0 = self[56]
  self.ChasingDrone = l0.Target
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_61_Out_0
  l0.Out[1] = self.f_61_Out_1
  l0:In()
end
function export:f_56_SetFromBool()
  local l0
  self = self._graph
  l0 = self[56]
  self.ChasingDrone = l0.Target
end
function export:f_56_SetTrue()
  local l0
  self = self._graph
  l0 = self[56]
  self.ChasingDrone = l0.Target
end
function export:f_56_Toggled()
  local l0
  self = self._graph
  l0 = self[56]
  self.ChasingDrone = l0.Target
end
function export:f_20_TalkFailed()
  local l0
  self = self._graph
  l0 = self[5]
  l0:Input(1)
end
function export:f_20_TalkFinished()
  local l0
  self = self._graph
  l0 = self[5]
  l0:Input(0)
end
function export:en_29()
  local l0
  l0 = self[29]
  l0.Entity = "9223372049633593501"
end
function export:en_10()
  local l0
  l0 = self[10]
  l0.Client = self.Client
  l0.DropOffIcon = "9223372046134562454"
  l0.LastDestination = 1
  l0.ShowGps = 1
  l0.ManageObjective = 1
  l0.CustomObjective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF040",
    item = "Objective_02",
    id = "581662"
  }
  l0.Config = "TaxiRideGameplayBrick.9223372057631920033"
end
function export:en_39()
  local l0
  l0 = self[39]
  l0.MapPoint = "9223372049633593501"
end
function export:en_30()
  local l0
  l0 = self[30]
  l0.Notification = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "DistanceTooFar",
    id = "417038"
  }
  l0.Duration = -1
end
function export:en_16()
  local l0
  l0 = self[16]
  l0.ClientClo = self.CLOClient
  l0.PickUpIcon = "9223372046134562452"
  l0.Config = "TaxiRideGameplayBrick.9223372057631920033"
end
function export:en_18()
  local l0
  l0 = self[18]
  l0.Client = self.Client
  l0.Config = "TaxiRideGameplayBrick.9223372057631920033"
end
function export:en_41()
  local l0
  l0 = self[41]
  l0.Seconds = 10
  l0.Loop = 1
  l0.nbLoop = 4
end
function export:en_28()
  local l0
  l0 = Boxes[PathID("domino/System/FollowPathComponentController.lua")]
  l0.Entity = "9223372049633593501"
  l0.Path = "9223372049633593505"
  l0.Speed = 21
  l0.Range = 250
  l0.LocText = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "FollowDrone",
    id = "635932"
  }
  l0._graph = self
  l0.Started = self.f_28_Started
  l0.Stopped = DummyFunction
  l0.SpeedSet = DummyFunction
  l0.TextSet = self.f_28_TextSet
  l0.MarkerHidden = DummyFunction
  l0.MarkerShown = DummyFunction
  l0.RangeCheckStarted = self.f_28_RangeCheckStarted
end
function export:en_11()
  local l0
  l0 = self[11]
  l0.MissionName = self.Mission
  l0.LayerName = self.MissionLayer
  l0.StrategyConfig = "TaxiRideStrategyConfig.9223372047360464805"
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Vehicle = self.PlayerVehicle
  l0.Conversation = "ConversationSetting.9223372048760149896"
end
_compilerVersion = 4
