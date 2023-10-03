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
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/System/RandomOutput_v2.lua")
  cbox:RegisterBox("domino/System/SetActionMap_v2.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.lua")
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
  self.PlayerEntity = nil
  self.MissionLayer = "Taxi18_Main"
  self.PlayerVehicle = nil
  self.Mission = "MissionList.9223372047771309739"
  self.Client = nil
  self.GIC_Users = {}
  self[34] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[34]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[13] = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self[13]
  l0._graph = self
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = DummyFunction
  l0.RewardShown = DummyFunction
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = self.f_13_RatingRemoved
  self[12] = cbox:CreateBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.lua")
  l0 = self[12]
  l0._graph = self
  self[18] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[18]
  l0._graph = self
  l0.Out = self.f_18_Out
  l0.MessageCompleted = DummyFunction
  self[15] = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self[15]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = self.f_15_Paused
  l0.Resumed = DummyFunction
  self[2] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Loaded = self.f_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[24] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[24]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_24_Out
  self[41] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[41]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[27] = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self[27]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_27_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self[7] = cbox:CreateBox("domino/System/TaxiRideVehicleMonitor.lua")
  l0 = self[7]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_7_Disabled
  l0.ClientDeath = self.f_7_ClientDeath
  l0.VehicleUnusable = self.f_7_VehicleUnusable
  l0.ClientBailedOut = self.f_7_ClientBailedOut
  l0.PlayerAbandonedVehicle = self.f_7_PlayerAbandonedVehicle
  self[25] = cbox:CreateBox("domino/System/RandomOutput_v2.lua")
  l0 = self[25]
  l0._graph = self
  l0._DynamicAnchors = {Probability = 5, Output = 5}
  l0.Out = DummyFunction
  l0.ResetOut = DummyFunction
  l0.None = DummyFunction
  l0.Output[0] = self.f_25_Output_0
  l0.Output[1] = self.f_25_Output_1
  l0.Output[2] = self.f_25_Output_2
  l0.Output[3] = self.f_25_Output_3
  l0.Output[4] = self.f_25_Output_4
  self[26] = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self[26]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self[21] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[21]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_21_PostOut
  self[29] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[29]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[10] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[10]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_10_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[31] = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self[31]
  l0._graph = self
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = DummyFunction
  l0.RewardShown = self.f_31_RewardShown
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self[28] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[28]
  l0._graph = self
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_28_Added
  l0.Removed = self.f_28_Removed
  l0.Out = self.f_28_Out
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
  self[32] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[32]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[33] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[33]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_33_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[14] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[14]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_14_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_14_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[22] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[22]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_22_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[17] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[17]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_17_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[30] = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self[30]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_30_Started
  l0.Stopped = DummyFunction
  self[8] = cbox:CreateBox("domino/System/TaxiRidePickUpController.lua")
  l0 = self[8]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_8_Disabled
  l0.ClientSpawned = self.f_8_ClientSpawned
  l0.ClientPickedUp = self.f_8_ClientPickedUp
  l0.ClientConversationFinised = self.f_8_ClientConversationFinised
  self[37] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[37]
  l0._graph = self
  self[16] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[16]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_16_Out
  self[9] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[9]
  l0._graph = self
  l0.Started = self.f_9_Started
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_9_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[20] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[20]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_20_Unloaded
  l0.Reseted = DummyFunction
  self[43] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[43]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_43_Out
  self[5] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[5]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_5_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[4] = cbox:CreateBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self[4]
  l0._graph = self
  l0.Enabled = self.f_4_Enabled
  l0.Disabled = DummyFunction
  l0.ReachDestination = self.f_4_ReachDestination
  l0.ClientDropOff = self.f_4_ClientDropOff
  self[23] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[23]
  l0._graph = self
  l0.Out = self.f_23_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[40] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[40]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[11] = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self[11]
  l0._graph = self
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = self.f_11_RatingReset
  l0.RewardShown = DummyFunction
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self[36] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[36]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[42] = cbox:CreateBox("domino/System/RandomOutput_v2.lua")
  l0 = self[42]
  l0._graph = self
  l0._DynamicAnchors = {Probability = 3, Output = 3}
  l0.Out = self.f_42_Out
  l0.ResetOut = DummyFunction
  l0.None = DummyFunction
  l0.Output[0] = self.f_42_Output_0
  l0.Output[1] = self.f_42_Output_1
  l0.Output[2] = self.f_42_Output_2
  self[35] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[35]
  l0._graph = self
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
  l0 = self[24]
  l0:Input(1)
end
function export:In()
  local l0
  l0 = self[24]
  l0:Input(0)
end
function export:f_13_RatingRemoved()
  local l0
  self = self._graph
  self:en_14()
  l0 = self[14]
  l0:Start()
end
function export:f_18_Out()
  local l0
  self = self._graph
  l0 = self[20]
  l0.LayerName = self.MissionLayer
  l0:Unload()
end
function export:f_15_Paused()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_3_Out_0
  l0.Out[1] = self.f_3_Out_1
  l0.Out[2] = self.f_3_Out_2
  l0:In()
end
function export:f_2_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:In()
end
function export:f_6_Popped()
  local l0
  self = self._graph
  l0 = self[31]
  l0.MissionName = self.Mission
  l0:ShowReward()
end
function export:f_24_Out()
  local l0
  self = self._graph
  l0 = self[2]
  l0.LayerName = self.MissionLayer
  l0:Load()
end
function export:f_27_Stopped()
  local l0
  self = self._graph
  l0 = self[18]
  l0:ShowMissionComplete()
end
function export:f_7_ClientBailedOut()
  local l0
  self = self._graph
  self:en_12()
  l0 = self[12]
  l0:ClientBailedOut()
end
function export:f_7_ClientDeath()
  local l0
  self = self._graph
  self:en_12()
  l0 = self[12]
  l0:ClientDead()
end
function export:f_7_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_19_Out
  l0:In()
end
function export:f_7_PlayerAbandonedVehicle()
  local l0
  self = self._graph
  self:en_12()
  l0 = self[12]
  l0:PlayerAbandonedVehicle()
end
function export:f_7_VehicleUnusable()
  local l0
  self = self._graph
  self:en_12()
  l0 = self[12]
  l0:VehicleUnusable()
end
function export:f_25_Output_0()
  local l0
  self = self._graph
  l0 = self[32]
  l0.Entity = self.Client
  l0.SoundId = "soundbinary/1867911622.bnk"
  l0.Queue = 1
  l0:Start()
end
function export:f_25_Output_1()
  local l0
  self = self._graph
  l0 = self[35]
  l0.Entity = self.Client
  l0.SoundId = "soundbinary/3092395210.bnk"
  l0.Queue = 1
  l0:Start()
end
function export:f_25_Output_2()
  local l0
  self = self._graph
  l0 = self[29]
  l0.Entity = self.Client
  l0.SoundId = "soundbinary/2795069091.bnk"
  l0.Queue = 1
  l0:Start()
end
function export:f_25_Output_3()
  local l0
  self = self._graph
  l0 = self[36]
  l0.Entity = self.Client
  l0.SoundId = "soundbinary/785468299.bnk"
  l0.Queue = 1
  l0:Start()
end
function export:f_25_Output_4()
  local l0
  self = self._graph
  l0 = self[38]
  l0.Entity = self.Client
  l0.SoundId = "soundbinary/1047637062.bnk"
  l0.Queue = 1
  l0:Start()
end
function export:f_21_PostOut()
  local l0
  self = self._graph
  l0 = self[23]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_10_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[16]
  l0:Input(0)
end
function export:f_31_RewardShown()
  local l0
  self = self._graph
  l0 = self[27]
  l0.Config = "TaxiRideStrategyConfig.9223372047771309751"
  l0:Stop()
end
function export:f_28_Added()
  local l0
  self = self._graph
  l0 = self[28]
  self.GIC_Users = l0.Target
  self:en_30()
  l0 = self[30]
  l0:Start()
end
function export:f_28_Out()
  local l0
  self = self._graph
  l0 = self[28]
  self.GIC_Users = l0.Target
end
function export:f_28_Removed()
  local l0
  self = self._graph
  l0 = self[28]
  self.GIC_Users = l0.Target
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[21]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_33_TalkFinished()
  local l0
  self = self._graph
  l0 = self[43]
  l0:Input(0)
end
function export:f_14_Started()
  local l0
  self = self._graph
  l0 = self[25]
  l0.Probability[0] = 0.2
  l0.Probability[1] = 0.2
  l0.Probability[2] = 0.2
  l0.Probability[3] = 0.2
  l0.Probability[4] = 0.2
  l0:In()
end
function export:f_14_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[16]
  l0:Input(1)
end
function export:f_22_TalkFinished()
  local l0
  self = self._graph
  l0 = self[33]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149932"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0:Start()
end
function export:f_17_TalkFinished()
  local l0
  self = self._graph
  l0 = self[22]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149931"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0:Start()
end
function export:f_30_Started()
  local l0
  self = self._graph
  l0 = self[9]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149929"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0:Start()
end
function export:f_3_Out_0()
  local l0
  self = self._graph
  self:en_30()
  l0 = self[30]
  l0:Stop()
end
function export:f_3_Out_1()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:Stop()
end
function export:f_3_Out_2()
  local l0
  self = self._graph
  self:en_14()
  l0 = self[14]
  l0:Stop()
end
function export:f_8_ClientConversationFinised()
  local l0
  self = self._graph
  self:en_8()
  l0 = self[8]
  l0:Disable()
end
function export:f_8_ClientPickedUp()
  local l0
  self = self._graph
  l0 = self[8]
  self.PlayerVehicle = l0.Vehicle
  l0 = self[4]
  l0.Client = self.Client
  l0.DropOffIcon = "9223372047771309741"
  l0.LastDestination = 1
  l0.ShowGps = 1
  l0.Config = "TaxiRideGameplayBrick.9223372057728442518"
  l0:Enable()
end
function export:f_8_ClientSpawned()
  local l0
  self = self._graph
  l0 = self[8]
  self.Client = l0.Client
  self:en_7()
  l0 = self[7]
  l0:Enable()
end
function export:f_8_Disabled()
  local l0
  self = self._graph
  l0 = self[28]
  l0.Input = self.GIC_Users
  l0.Data[0] = self.PlayerEntity
  l0.Data[1] = self.Client
  l0:Add()
end
function export:f_19_Out()
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
  l0.Popped = self.f_6_Popped
  l0:Pop()
end
function export:f_16_Out()
  local l0
  self = self._graph
  l0 = self[13]
  l0.MissionName = self.Mission
  l0.RatingAmount = 1
  l0:RemoveRating()
end
function export:f_9_Started()
  local l0
  self = self._graph
  l0 = self[10]
  l0.Seconds = 120
  l0:Start()
end
function export:f_9_TalkFinished()
  local l0
  self = self._graph
  l0 = self[17]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149930"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0:Start()
end
function export:f_20_Unloaded()
  local l0
  self = self._graph
  l0 = self[37]
  l0:Succeed()
end
function export:f_43_Out()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:Start()
end
function export:f_5_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[42]
  l0.Probability[0] = 0.3
  l0.Probability[1] = 0.3
  l0.Probability[2] = 0.3
  l0:In()
end
function export:f_4_ClientDropOff()
  local l0
  self = self._graph
  self:en_7()
  l0 = self[7]
  l0:Disable()
end
function export:f_4_Enabled()
  local l0
  self = self._graph
  l0 = self[11]
  l0.MissionName = self.Mission
  l0:ResetRating()
end
function export:f_4_ReachDestination()
  local l0
  self = self._graph
  l0 = self[15]
  l0.Config = "TaxiRideStrategyConfig.9223372047771309751"
  l0:Pause()
end
function export:f_23_Out()
  local l0
  self = self._graph
  self:en_8()
  l0 = self[8]
  l0:Enable()
end
function export:f_11_RatingReset()
  local l0
  self = self._graph
  l0 = self[26]
  l0.Config = "TaxiRideStrategyConfig.9223372047771309751"
  l0:Start()
end
function export:f_42_Out()
  local l0
  self = self._graph
  l0 = self[43]
  l0:Input(1)
end
function export:f_42_Output_0()
  local l0
  self = self._graph
  l0 = self[34]
  l0.Entity = self.Client
  l0.SoundId = "soundbinary/2840773711.bnk"
  l0.Queue = 1
  l0:Start()
end
function export:f_42_Output_1()
  local l0
  self = self._graph
  l0 = self[40]
  l0.Entity = self.Client
  l0.SoundId = "soundbinary/457473115.bnk"
  l0.Queue = 1
  l0:Start()
end
function export:f_42_Output_2()
  local l0
  self = self._graph
  l0 = self[41]
  l0.Entity = self.Client
  l0.SoundId = "soundbinary/1474812156.bnk"
  l0.Queue = 1
  l0:Start()
end
function export:en_12()
  local l0
  l0 = self[12]
  l0.MissionName = self.Mission
  l0.LayerName = self.MissionLayer
  l0.StrategyConfig = "TaxiRideStrategyConfig.9223372047771309751"
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Vehicle = self.PlayerVehicle
  l0.Conversation = "ConversationSetting.9223372048760149934"
end
function export:en_7()
  local l0
  l0 = self[7]
  l0.Client = self.Client
  l0.Config = "TaxiRideGameplayBrick.9223372057728442518"
end
function export:en_14()
  local l0
  l0 = self[14]
  l0.Seconds = 15
end
function export:en_30()
  local l0
  l0 = self[30]
  l0.Users = self.GIC_Users
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
end
function export:en_8()
  local l0
  l0 = self[8]
  l0.ClientClo = "9223372047771309731"
  l0.PickUpIcon = "9223372047771309720"
  l0.Config = "TaxiRideGameplayBrick.9223372057728442518"
end
function export:en_5()
  local l0
  l0 = self[5]
  l0.Seconds = 20
end
_compilerVersion = 4
