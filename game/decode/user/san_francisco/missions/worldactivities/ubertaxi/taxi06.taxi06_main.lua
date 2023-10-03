export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/Library/common/Narrative.DriveAndTalk.lua")
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
  cbox:RegisterBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.lua")
  cbox:RegisterBox("domino/System/TaxiRatingController.lua")
  cbox:RegisterBox("domino/System/TaxiRidePickUpController.lua")
  cbox:RegisterBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  cbox:RegisterBox("domino/System/TaxiRideVehicleMonitor.lua")
  cbox:RegisterBox("domino/System/TaxiStrategiesController.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.Mission = "MissionList.9223372046811578497"
  self.PlayerVehicle = nil
  self.MissionLayer = "Taxi02_Main"
  self.SimonHewl = nil
  self.GICUsers = {}
  self[25] = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self[25]
  l0._graph = self
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = DummyFunction
  l0.RewardShown = self.f_25_RewardShown
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self[20] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[20]
  l0._graph = self
  l0.Out = self.f_20_Out
  l0.MessageCompleted = DummyFunction
  self[2] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Loaded = self.f_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[31] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[31]
  l0._graph = self
  l0.Out = self.f_31_Out
  l0.MessageCompleted = DummyFunction
  self[14] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[14]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_14_PostOut
  self[11] = cbox:CreateBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.lua")
  l0 = self[11]
  l0._graph = self
  self[12] = cbox:CreateBox("domino/System/TaxiRidePickUpController.lua")
  l0 = self[12]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_12_Disabled
  l0.ClientSpawned = self.f_12_ClientSpawned
  l0.ClientPickedUp = self.f_12_ClientPickedUp
  l0.ClientConversationFinised = self.f_12_ClientConversationFinised
  self[19] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[19]
  l0._graph = self
  l0.Out = self.f_19_Out
  l0.MessageCompleted = DummyFunction
  self[30] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[30]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_30_Unloaded
  l0.Reseted = DummyFunction
  self[35] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[35]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_35_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[36] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[36]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_36_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[29] = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self[29]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_29_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self[42] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[42]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_42_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[24] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[24]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_24_Out
  self[3] = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self[3]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self[13] = cbox:CreateBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self[13]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_13_Disabled
  l0.ReachDestination = self.f_13_ReachDestination
  l0.ClientDropOff = self.f_13_ClientDropOff
  self[18] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[18]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_18_Out
  self[5] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[5]
  l0._graph = self
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_5_Added
  l0.Removed = self.f_5_Removed
  l0.Out = self.f_5_Out
  self[15] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[15]
  l0._graph = self
  l0.Out = self.f_15_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[22] = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self[22]
  l0._graph = self
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = self.f_22_RatingReset
  l0.RewardShown = DummyFunction
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self[21] = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self[21]
  l0._graph = self
  l0.Started = self.f_21_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self[37] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[37]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_37_Stopped
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_37_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_37_TalkFailed
  self[38] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[38]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[40] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[40]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_40_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[23] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[23]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_23_Out
  self[17] = cbox:CreateBox("domino/System/TaxiRideVehicleMonitor.lua")
  l0 = self[17]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_17_Disabled
  l0.ClientDeath = self.f_17_ClientDeath
  l0.VehicleUnusable = self.f_17_VehicleUnusable
  l0.ClientBailedOut = self.f_17_ClientBailedOut
  l0.PlayerAbandonedVehicle = self.f_17_PlayerAbandonedVehicle
  self[32] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[32]
  l0._graph = self
  self[8] = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self[8]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_8_Started
  l0.Stopped = self.f_8_Stopped
  self[4] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[4]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_4_Stopped
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_4_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_4_TalkFailed
  self[34] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[34]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_34_Stopped
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_34_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_34_TalkFailed
  self[16] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[16]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_16_Out
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
  l0 = self[16]
  l0:Input(1)
end
function export:In()
  local l0
  l0 = self[16]
  l0:Input(0)
end
function export:f_25_RewardShown()
  local l0
  self = self._graph
  l0 = self[29]
  l0.Config = "TaxiRideStrategyConfig.9223372047360464804"
  l0:Stop()
end
function export:f_20_Out()
  local l0
  self = self._graph
  l0 = self[3]
  l0:Pause()
end
function export:f_2_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:In()
end
function export:f_31_Out()
  local l0
  self = self._graph
  l0 = self[30]
  l0.LayerName = "Taxi06_Main"
  l0:Unload()
end
function export:f_14_PostOut()
  local l0
  self = self._graph
  l0 = self[15]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_9_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_6_Out
  l0:In()
end
function export:f_12_ClientConversationFinised()
  local l0
  self = self._graph
  self:en_12()
  l0 = self[12]
  l0:Disable()
end
function export:f_12_ClientPickedUp()
  local l0
  self = self._graph
  l0 = self[12]
  self.PlayerVehicle = l0.Vehicle
  l0 = self[19]
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "ReachSingleDestination",
    id = "20000191"
  }
  l0.ShowPreviousObjectiveComplete = 0
  l0.HasObjectiveMarker = 0
  l0:ShowNewObjective()
end
function export:f_12_ClientSpawned()
  local l0
  self = self._graph
  l0 = self[12]
  self.SimonHewl = l0.Client
  self:en_17()
  l0 = self[17]
  l0:Enable()
end
function export:f_12_Disabled()
  local l0
  self = self._graph
  l0 = self[5]
  l0.Input = self.GICUsers
  l0.Data[0] = self.PlayerEntity
  l0.Data[1] = self.SimonHewl
  l0:Add()
end
function export:f_19_Out()
  local l0
  self = self._graph
  l0 = self[22]
  l0.MissionName = "MissionList.9223372046811578497"
  l0:ResetRating()
end
function export:f_30_Unloaded()
  local l0
  self = self._graph
  l0 = self[32]
  l0:Succeed()
end
function export:f_35_TimeElapsed()
  local l0
  self = self._graph
  self:en_34()
  l0 = self[34]
  l0:Start()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[14]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_36_TimeElapsed()
  local l0
  self = self._graph
  self:en_38()
  l0 = self[38]
  l0:Start()
end
function export:f_29_Stopped()
  local l0
  self = self._graph
  l0 = self[31]
  l0:ShowMissionComplete()
end
function export:f_42_TimeElapsed()
  local l0
  self = self._graph
  self:en_37()
  l0 = self[37]
  l0:Start()
end
function export:f_24_Out()
  local l0
  self = self._graph
  l0 = self[36]
  l0.Seconds = 2
  l0:Start()
end
function export:f_13_ClientDropOff()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_9_Out
  l0:In()
end
function export:f_13_Disabled()
  local l0
  self = self._graph
  l0 = self[25]
  l0.MissionName = self.Mission
  l0:ShowReward()
end
function export:f_13_ReachDestination()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_7_Out_0
  l0.Out[1] = self.f_7_Out_1
  l0:In()
end
function export:f_7_Out_0()
  local l0
  self = self._graph
  self:en_8()
  l0 = self[8]
  l0:Stop()
end
function export:f_7_Out_1()
  local l0
  self = self._graph
  l0 = self[20]
  l0:ShowLastObjectiveComplete()
end
function export:f_18_Out()
  local l0
  self = self._graph
  l0 = self[35]
  l0.Seconds = 2
  l0:Start()
end
function export:f_10_Out()
  local l0
  self = self._graph
  self:en_13()
  l0 = self[13]
  l0:Disable()
end
function export:f_5_Added()
  local l0
  self = self._graph
  l0 = self[5]
  self.GICUsers = l0.Target
  self:en_8()
  l0 = self[8]
  l0:Start()
end
function export:f_5_Out()
  local l0
  self = self._graph
  l0 = self[5]
  self.GICUsers = l0.Target
end
function export:f_5_Removed()
  local l0
  self = self._graph
  l0 = self[5]
  self.GICUsers = l0.Target
end
function export:f_15_Out()
  local l0
  self = self._graph
  self:en_12()
  l0 = self[12]
  l0:Enable()
end
function export:f_22_RatingReset()
  local l0
  self = self._graph
  l0 = self[21]
  l0.Config = "TaxiRideStrategyConfig.9223372047360464804"
  l0:Start()
end
function export:f_21_Started()
  local l0
  self = self._graph
  self:en_13()
  l0 = self[13]
  l0:Enable()
end
function export:f_37_Stopped()
  local l0
  self = self._graph
  self:en_38()
  l0 = self[38]
  l0:Stop()
end
function export:f_37_TalkFailed()
  local l0
  self = self._graph
  l0 = self[24]
  l0:Input(1)
end
function export:f_37_TalkFinished()
  local l0
  self = self._graph
  l0 = self[24]
  l0:Input(0)
end
function export:f_40_TimeElapsed()
  local l0
  self = self._graph
  self:en_4()
  l0 = self[4]
  l0:Start()
end
function export:f_23_Out()
  local l0
  self = self._graph
  l0 = self[42]
  l0.Seconds = 2
  l0:Start()
end
function export:f_17_ClientBailedOut()
  local l0
  self = self._graph
  self:en_11()
  l0 = self[11]
  l0:ClientBailedOut()
end
function export:f_17_ClientDeath()
  local l0
  self = self._graph
  self:en_11()
  l0 = self[11]
  l0:ClientDead()
end
function export:f_17_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_10_Out
  l0:In()
end
function export:f_17_PlayerAbandonedVehicle()
  local l0
  self = self._graph
  self:en_11()
  l0 = self[11]
  l0:PlayerAbandonedVehicle()
end
function export:f_17_VehicleUnusable()
  local l0
  self = self._graph
  self:en_11()
  l0 = self[11]
  l0:VehicleUnusable()
end
function export:f_8_Started()
  local l0
  self = self._graph
  l0 = self[40]
  l0.Seconds = 1
  l0:Start()
end
function export:f_8_Stopped()
  local l0
  self = self._graph
  self:en_4()
  l0 = self[4]
  l0:Stop()
end
function export:f_4_Stopped()
  local l0
  self = self._graph
  self:en_34()
  l0 = self[34]
  l0:Stop()
end
function export:f_4_TalkFailed()
  local l0
  self = self._graph
  l0 = self[18]
  l0:Input(1)
end
function export:f_4_TalkFinished()
  local l0
  self = self._graph
  l0 = self[18]
  l0:Input(0)
end
function export:f_6_Out()
  local l0
  self = self._graph
  self:en_17()
  l0 = self[17]
  l0:Disable()
end
function export:f_34_Stopped()
  local l0
  self = self._graph
  self:en_37()
  l0 = self[37]
  l0:Stop()
end
function export:f_34_TalkFailed()
  local l0
  self = self._graph
  l0 = self[23]
  l0:Input(1)
end
function export:f_34_TalkFinished()
  local l0
  self = self._graph
  l0 = self[23]
  l0:Input(0)
end
function export:f_16_Out()
  local l0
  self = self._graph
  l0 = self[2]
  l0.LayerName = "Taxi06_Main"
  l0:Load()
end
function export:en_11()
  local l0
  l0 = self[11]
  l0.MissionName = self.Mission
  l0.LayerName = "Taxi06_Main"
  l0.StrategyConfig = "TaxiRideStrategyConfig.9223372047360464804"
  l0.Pawn1 = self.SimonHewl
  l0.Pawn2 = self.PlayerEntity
  l0.Vehicle = self.PlayerVehicle
  l0.Conversation = "ConversationSetting.9223372047771356800"
end
function export:en_12()
  local l0
  l0 = self[12]
  l0.ClientClo = "9223372046811578507"
  l0.PickUpIcon = "9223372046811578504"
  l0.Config = "TaxiRideGameplayBrick.9223372057721881673"
end
function export:en_13()
  local l0
  l0 = self[13]
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
function export:en_37()
  local l0
  l0 = self[37]
  l0.Pawn1 = self.SimonHewl
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372047771356796"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
end
function export:en_38()
  local l0
  l0 = self[38]
  l0.Pawn1 = self.SimonHewl
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372047771356797"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
end
function export:en_17()
  local l0
  l0 = self[17]
  l0.Client = self.SimonHewl
  l0.Config = "TaxiRideGameplayBrick.9223372057721881673"
end
function export:en_8()
  local l0
  l0 = self[8]
  l0.Users = self.GICUsers
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
end
function export:en_4()
  local l0
  l0 = self[4]
  l0.Pawn1 = self.SimonHewl
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372047771356794"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
end
function export:en_34()
  local l0
  l0 = self[34]
  l0.Pawn1 = self.SimonHewl
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372047771356795"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
end
_compilerVersion = 4
