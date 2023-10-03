export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/GPS3DController.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  cbox:RegisterBox("domino/System/GameplayInteractionController.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter_SoundID.lua")
  cbox:RegisterBox("domino/System/MapPointController_v4.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/System/ProximityMonitor.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.lua")
  cbox:RegisterBox("domino/System/TaxiRatingController.lua")
  cbox:RegisterBox("domino/System/TaxiRidePickUpController.lua")
  cbox:RegisterBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  cbox:RegisterBox("domino/System/TaxiRideVehicleMonitor.lua")
  cbox:RegisterBox("domino/System/TaxiStrategiesController.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:LoadResource("soundbinary/1419362410.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1899398813.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1090127905.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2628623184.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2060955561.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/964262306.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3332098471.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3788907944.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.PlayerVehicle = nil
  self.Taxi02_DestinationStop = "9223372045891257215"
  self.MissionLayer = "Taxi02_Main"
  self.Client = nil
  self.Taxi02_FirstStop = "9223372045891256547"
  self.CLOClient = "9223372045891232878"
  self.Mission = "MissionList.9223372045891232603"
  self.FirstDestinationReached = 0
  self.IconPickUp = "9223372045891232611"
  self.IconVehicle = "9223372045891256492"
  self.IconDestination = "9223372045891303048"
  self.CLO_9223372046290547198 = "9223372046290547198"
  self.GIC_Users = {}
  self.Elena = nil
  self.ComFortChallenge_Support = {}
  self.RedZoneTimer = 0
  self[13] = cbox:CreateBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.lua")
  l0 = self[13]
  l0._graph = self
  self[20] = cbox:CreateBox("domino/System/Lists/ListWriter_SoundID.lua")
  l0 = self[20]
  l0._graph = self
  l0._DynamicAnchors = {SoundID = 6}
  l0.Added = self.f_20_Added
  l0.Removed = self.f_20_Removed
  l0.Out = self.f_20_Out
  self[26] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[26]
  l0._graph = self
  l0.Loaded = self.f_26_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
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
  self[32] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[32]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_32_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[50] = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self[50]
  l0._graph = self
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = DummyFunction
  l0.RewardShown = self.f_50_RewardShown
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self[38] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[38]
  l0._graph = self
  self[16] = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self[16]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  self[39] = cbox:CreateBox("domino/System/TaxiRidePickUpController.lua")
  l0 = self[39]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ClientSpawned = self.f_39_ClientSpawned
  l0.ClientPickedUp = self.f_39_ClientPickedUp
  l0.ClientConversationFinised = DummyFunction
  self[29] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[29]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[37] = cbox:CreateBox("domino/System/TaxiRideVehicleMonitor.lua")
  l0 = self[37]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_37_Disabled
  l0.ClientDeath = self.f_37_ClientDeath
  l0.VehicleUnusable = self.f_37_VehicleUnusable
  l0.ClientBailedOut = self.f_37_ClientBailedOut
  l0.PlayerAbandonedVehicle = self.f_37_PlayerAbandonedVehicle
  self[46] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[46]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_46_Out
  self[10] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[10]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = self.f_10_ListFinished
  l0.PriorityFailed = self.f_10_PriorityFailed
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[73] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[73]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_73_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[30] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[30]
  l0._graph = self
  l0.Out = self.f_30_Out
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_30_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[34] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[34]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[44] = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self[44]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = self.f_44_Paused
  l0.Resumed = DummyFunction
  self[60] = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self[60]
  l0._graph = self
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = self.f_60_RatingReset
  l0.RewardShown = DummyFunction
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self[5] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[5]
  l0._graph = self
  l0.Out = self.f_5_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[24] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[24]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[9] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[9]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_9_Stopped
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_9_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[8] = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self[8]
  l0._graph = self
  l0.Shown = self.f_8_Shown
  l0.Hidden = self.f_8_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
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
  self[61] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[61]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_61_Unloaded
  l0.Reseted = DummyFunction
  self[27] = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self[27]
  l0._graph = self
  l0.Started = self.f_27_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self[28] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[28]
  l0._graph = self
  l0.Started = self.f_28_Started
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_28_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[36] = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self[36]
  l0._graph = self
  l0.Enabled = self.f_36_Enabled
  l0.Disabled = self.f_36_Disabled
  l0.EnterRadius = self.f_36_EnterRadius
  l0.ExitRadius = DummyFunction
  self[33] = cbox:CreateBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self[33]
  l0._graph = self
  l0.Enabled = self.f_33_Enabled
  l0.Disabled = DummyFunction
  l0.ReachDestination = DummyFunction
  l0.ClientDropOff = self.f_33_ClientDropOff
  self[31] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[31]
  l0._graph = self
  l0.Out = self.f_31_Out
  l0.SetTrue = self.f_31_SetTrue
  l0.SetFalse = self.f_31_SetFalse
  l0.Toggled = self.f_31_Toggled
  l0.SetFromBool = self.f_31_SetFromBool
  self[41] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[41]
  l0._graph = self
  l0.Out = self.f_41_Out
  l0.SetTrue = self.f_41_SetTrue
  l0.SetFalse = self.f_41_SetFalse
  l0.Toggled = self.f_41_Toggled
  l0.SetFromBool = self.f_41_SetFromBool
  self[42] = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self[42]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_42_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self[6] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[6]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_6_Out
  self[4] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[4]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_4_PostOut
  self[17] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[17]
  l0._graph = self
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_17_Added
  l0.Removed = self.f_17_Removed
  l0.Out = self.f_17_Out
  self[22] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[22]
  l0._graph = self
  l0.Out = self.f_22_Out
  l0.MessageCompleted = DummyFunction
  self[23] = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self[23]
  l0._graph = self
  l0.Enabled = self.f_23_Enabled
  l0.Disabled = DummyFunction
  l0.EnterRadius = self.f_23_EnterRadius
  l0.ExitRadius = DummyFunction
  self[40] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[40]
  l0._graph = self
  l0.Out = self.f_40_Out
  l0.MessageCompleted = DummyFunction
  self[48] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[48]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_48_Out
  l0.ResetOut = DummyFunction
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
  l0 = self[6]
  l0:Input(1)
end
function export:In()
  local l0
  l0 = self[6]
  l0:Input(0)
end
function export:f_20_Added()
  local l0
  self = self._graph
  l0 = self[20]
  self.ComFortChallenge_Support = l0.Target
end
function export:f_20_Out()
  local l0
  self = self._graph
  l0 = self[20]
  self.ComFortChallenge_Support = l0.Target
end
function export:f_20_Removed()
  local l0
  self = self._graph
  l0 = self[20]
  self.ComFortChallenge_Support = l0.Target
end
function export:f_26_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_11_Out
  l0:In()
end
function export:f_18_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_19_Out
  l0:In()
end
function export:f_32_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[28]
  l0.Pawn1 = self.Elena
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372049804110308"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372049113084109"
  l0:Start()
end
function export:f_3_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_7_Out
  l0:In()
end
function export:f_50_RewardShown()
  local l0
  self = self._graph
  l0 = self[42]
  l0.Config = "TaxiRideStrategyConfig.9223372045668663952"
  l0:Stop()
end
function export:f_39_ClientPickedUp()
  local l0
  self = self._graph
  l0 = self[39]
  self.PlayerVehicle = l0.Vehicle
  l0 = self[60]
  l0.MissionName = self.Mission
  l0:ResetRating()
end
function export:f_39_ClientSpawned()
  local l0
  self = self._graph
  l0 = self[39]
  self.Elena = l0.Client
  self:en_37()
  l0 = self[37]
  l0:Enable()
end
function export:f_37_ClientBailedOut()
  local l0
  self = self._graph
  self:en_13()
  l0 = self[13]
  l0:ClientBailedOut()
end
function export:f_37_ClientDeath()
  local l0
  self = self._graph
  self:en_13()
  l0 = self[13]
  l0:ClientDead()
end
function export:f_37_Disabled()
  local l0
  self = self._graph
  self:en_17()
  l0 = self[17]
  l0:Remove()
end
function export:f_37_PlayerAbandonedVehicle()
  local l0
  self = self._graph
  self:en_13()
  l0 = self[13]
  l0:PlayerAbandonedVehicle()
end
function export:f_37_VehicleUnusable()
  local l0
  self = self._graph
  self:en_13()
  l0 = self[13]
  l0:VehicleUnusable()
end
function export:f_12_Disabled()
  local l0
  self = self._graph
  self:en_9()
  l0 = self[9]
  l0:Stop()
end
function export:f_12_Enabled()
  local l0
  self = self._graph
  self:en_9()
  l0 = self[9]
  l0:Start()
end
function export:f_7_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_2_Out
  l0:In()
end
function export:f_46_Out()
  local l0
  self = self._graph
  l0 = self[32]
  l0.Seconds = 2
  l0:Start()
end
function export:f_10_ListFinished()
  local l0
  self = self._graph
  l0 = self[46]
  l0:Input(0)
end
function export:f_10_PriorityFailed()
  local l0
  self = self._graph
  l0 = self[46]
  l0:Input(1)
end
function export:f_73_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[34]
  l0.Pawn1 = self.Elena
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372049804110310"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372049113084109"
  l0:Start()
end
function export:f_30_Out()
  local l0
  self = self._graph
  l0 = self[22]
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF020",
    item = "Objective_01",
    id = "630488"
  }
  l0:UpdateObjective()
end
function export:f_30_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[31]
  l0:True()
end
function export:f_44_Paused()
  local l0
  self = self._graph
  l0 = self[15]
  l0:Start()
end
function export:f_60_RatingReset()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_21_Out_0
  l0.Out[1] = self.f_21_Out_1
  l0:In()
end
function export:f_5_Out()
  local l0
  self = self._graph
  l0 = self[41]
  l0:False()
end
function export:f_43_A_is_False()
  local l0
  self = self._graph
  l0 = self[24]
  l0.Entity = self.Elena
  l0.SoundId = "soundbinary/1419362410.bnk"
  l0:Start()
end
function export:f_43_A_is_True()
  local l0
  self = self._graph
  l0 = self[45]
  l0.Entity = self.Elena
  l0.SoundId = "soundbinary/1090127905.bnk"
  l0:Start()
end
function export:f_9_Stopped()
  local l0
  self = self._graph
  l0 = self[48]
  l0:In(0)
end
function export:f_9_TalkFinished()
  local l0
  self = self._graph
  l0 = self[48]
  l0:In(1)
end
function export:f_8_Hidden()
  local l0
  self = self._graph
  self:en_36()
  l0 = self[36]
  l0:Disable()
end
function export:f_8_Shown()
  local l0
  self = self._graph
  self:en_36()
  l0 = self[36]
  l0:Enable()
end
function export:f_15_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[50]
  l0.MissionName = self.Mission
  l0:ShowReward()
end
function export:f_61_Unloaded()
  local l0
  self = self._graph
  l0 = self[38]
  l0:Succeed()
end
function export:f_27_Started()
  local l0
  self = self._graph
  l0 = self[30]
  l0.Seconds = 240
  l0:Start()
end
function export:f_2_Out()
  local l0
  self = self._graph
  self:en_37()
  l0 = self[37]
  l0:Disable()
end
function export:f_28_Started()
  local l0
  self = self._graph
  l0 = self[23]
  l0.Entity1 = "9223372045891257215"
  l0.Entity2 = self.PlayerEntity
  l0.Radius = 50
  l0:Enable()
end
function export:f_28_TalkFinished()
  local l0
  self = self._graph
  l0 = self[29]
  l0.Pawn1 = self.Elena
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372049804110310"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372049113084109"
  l0:Start()
end
function export:f_36_Disabled()
  local l0
  self = self._graph
  self:en_12()
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0:Disable()
end
function export:f_36_Enabled()
  local l0
  self = self._graph
  self:en_12()
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0:Enable()
end
function export:f_36_EnterRadius()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_1_Out_0
  l0.Out[1] = self.f_1_Out_1
  l0:In()
end
function export:f_33_ClientDropOff()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_47_Out_0
  l0.Out[1] = self.f_47_Out_1
  l0:In()
end
function export:f_33_Enabled()
  local l0
  self = self._graph
  l0 = self[73]
  l0.Seconds = 3
  l0:Start()
end
function export:f_31_Out()
  local l0
  self = self._graph
  l0 = self[31]
  self.RedZoneTimer = l0.Target
end
function export:f_31_SetFalse()
  local l0
  self = self._graph
  l0 = self[31]
  self.RedZoneTimer = l0.Target
end
function export:f_31_SetFromBool()
  local l0
  self = self._graph
  l0 = self[31]
  self.RedZoneTimer = l0.Target
end
function export:f_31_SetTrue()
  local l0
  self = self._graph
  l0 = self[31]
  self.RedZoneTimer = l0.Target
end
function export:f_31_Toggled()
  local l0
  self = self._graph
  l0 = self[31]
  self.RedZoneTimer = l0.Target
end
function export:f_21_Out_0()
  local l0
  self = self._graph
  l0 = self[27]
  l0.Config = "TaxiRideStrategyConfig.9223372045668663952"
  l0:Start()
end
function export:f_21_Out_1()
  local l0
  self = self._graph
  self:en_17()
  l0 = self[17]
  l0:Add()
end
function export:f_41_Out()
  local l0
  self = self._graph
  l0 = self[41]
  self.RedZoneTimer = l0.Target
end
function export:f_41_SetFalse()
  local l0
  self = self._graph
  l0 = self[41]
  self.RedZoneTimer = l0.Target
  l0 = self[39]
  l0.ClientClo = self.CLOClient
  l0.PickUpIcon = self.IconPickUp
  l0.Config = "TaxiRideGameplayBrick.9223372057653321824"
  l0:Enable()
end
function export:f_41_SetFromBool()
  local l0
  self = self._graph
  l0 = self[41]
  self.RedZoneTimer = l0.Target
end
function export:f_41_SetTrue()
  local l0
  self = self._graph
  l0 = self[41]
  self.RedZoneTimer = l0.Target
end
function export:f_41_Toggled()
  local l0
  self = self._graph
  l0 = self[41]
  self.RedZoneTimer = l0.Target
end
function export:f_1_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_18_Out
  l0:In()
end
function export:f_1_Out_1()
  local l0
  self = self._graph
  l0 = self[10]
  l0.Entity = self.Elena
  l0.SoundIdList = self.ComFortChallenge_Support
  l0:Start()
end
function export:f_42_Stopped()
  local l0
  self = self._graph
  l0 = self[40]
  l0:ShowMissionComplete()
end
function export:f_6_Out()
  local l0
  self = self._graph
  l0 = self[26]
  l0.LayerName = self.MissionLayer
  l0:Load()
end
function export:f_4_PostOut()
  local l0
  self = self._graph
  l0 = self[5]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_19_Out()
  local l0
  self = self._graph
  self:en_8()
  l0 = self[8]
  l0:Hide()
end
function export:f_17_Added()
  local l0
  self = self._graph
  l0 = self[17]
  self.GIC_Users = l0.Target
  self:en_16()
  l0 = self[16]
  l0:Start()
end
function export:f_17_Out()
  local l0
  self = self._graph
  l0 = self[17]
  self.GIC_Users = l0.Target
end
function export:f_17_Removed()
  local l0
  self = self._graph
  l0 = self[17]
  self.GIC_Users = l0.Target
  self:en_16()
  l0 = self[16]
  l0:Stop()
end
function export:f_22_Out()
  local l0
  self = self._graph
  self:en_8()
  l0 = self[8]
  l0:Show()
end
function export:f_23_Enabled()
  local l0
  self = self._graph
  l0 = self[33]
  l0.Client = self.Elena
  l0.DropOffIcon = "9223372045891257215"
  l0.LastDestination = 1
  l0.ShowGps = 1
  l0.ManageObjective = 1
  l0.CustomObjective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF020",
    item = "Objective_02",
    id = "630489"
  }
  l0.Config = "TaxiRideGameplayBrick.9223372057653321824"
  l0:Enable()
end
function export:f_23_EnterRadius()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.RedZoneTimer
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_43_A_is_True
  l0.A_is_False = self.f_43_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_40_Out()
  local l0
  self = self._graph
  l0 = self[61]
  l0.LayerName = self.MissionLayer
  l0:Unload()
end
function export:f_48_Out()
  local l0
  self = self._graph
  l0 = self[20]
  l0.Input = self.ComFortChallenge_Support
  l0.SoundID[0] = "soundbinary/1899398813.bnk"
  l0.SoundID[1] = "soundbinary/3788907944.bnk"
  l0.SoundID[2] = "soundbinary/964262306.bnk"
  l0.SoundID[3] = "soundbinary/2628623184.bnk"
  l0.SoundID[4] = "soundbinary/3332098471.bnk"
  l0.SoundID[5] = "soundbinary/2060955561.bnk"
  l0:Add()
end
function export:f_47_Out_0()
  local l0
  self = self._graph
  l0 = self[44]
  l0.Config = "TaxiRideStrategyConfig.9223372045668663952"
  l0:Pause()
end
function export:f_47_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_3_Out
  l0:In()
end
function export:f_11_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[4]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:en_13()
  local l0
  l0 = self[13]
  l0.MissionName = self.Mission
  l0.LayerName = self.MissionLayer
  l0.StrategyConfig = "TaxiRideStrategyConfig.9223372045668663952"
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Vehicle = self.PlayerVehicle
  l0.Conversation = "ConversationSetting.9223372048760149956"
end
function export:en_16()
  local l0
  l0 = self[16]
  l0.Users = self.GIC_Users
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
end
function export:en_37()
  local l0
  l0 = self[37]
  l0.Client = self.Elena
  l0.Config = "TaxiRideGameplayBrick.9223372057653321824"
end
function export:en_12()
  local l0
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0.Player = nil
  l0.Target = self.Taxi02_FirstStop
  l0.Path = nil
  l0.Index = nil
  l0.PathType = "Player"
  l0._graph = self
  l0.Enabled = self.f_12_Enabled
  l0.Disabled = self.f_12_Disabled
  l0.TargetAdded = DummyFunction
  l0.TargetRemoved = DummyFunction
end
function export:en_9()
  local l0
  l0 = self[9]
  l0.Pawn1 = self.Elena
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372049804110307"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372049113084109"
end
function export:en_8()
  local l0
  l0 = self[8]
  l0.MapPoint = self.Taxi02_FirstStop
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0.LocMapMarkerTitle = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0.LocMapMarkerDescription = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
end
function export:en_36()
  local l0
  l0 = self[36]
  l0.Entity1 = self.Taxi02_FirstStop
  l0.Entity2 = self.PlayerEntity
  l0.Radius = 50
end
function export:en_17()
  local l0
  l0 = self[17]
  l0.Input = self.GIC_Users
  l0.Data[0] = self.PlayerEntity
  l0.Data[1] = self.Elena
end
_compilerVersion = 4
