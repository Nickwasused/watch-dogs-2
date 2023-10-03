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
  cbox:RegisterBox("domino/System/MultipleAND.lua")
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
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.CurrentDestination = 0
  self.Mission = "MissionList.9223372048443685983"
  self.PlayerVehicle = nil
  self.GICUsers = {}
  self.Ivy = nil
  self.InteractionID = 0
  self[62] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[62]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_62_Out
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
  self[55] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[55]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_55_Out
  self[31] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[31]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_31_Out
  self[1] = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self[1]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  self[38] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[38]
  l0._graph = self
  l0.Out = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[6] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[6]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_6_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_6_TalkFailed
  self[13] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[13]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_13_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_13_TalkFailed
  self[19] = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self[19]
  l0._graph = self
  l0.Out = self.f_19_Out
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  self[27] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[27]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_27_Out
  self[7] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[7]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[46] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[46]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_46_Unloaded
  l0.Reseted = DummyFunction
  self[8] = cbox:CreateBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self[8]
  l0._graph = self
  l0.Enabled = self.f_8_Enabled
  l0.Disabled = DummyFunction
  l0.ReachDestination = self.f_8_ReachDestination
  l0.ClientDropOff = self.f_8_ClientDropOff
  self[61] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[61]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_61_Out
  self[22] = cbox:CreateBox("domino/System/TaxiRidePickUpController.lua")
  l0 = self[22]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_22_Disabled
  l0.ClientSpawned = self.f_22_ClientSpawned
  l0.ClientPickedUp = self.f_22_ClientPickedUp
  l0.ClientConversationFinised = self.f_22_ClientConversationFinised
  self[33] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[33]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_33_Out
  self[20] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[20]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_20_Disabled
  l0.Enter = self.f_20_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[26] = cbox:CreateBox("domino/System/TaxiRideVehicleMonitor.lua")
  l0 = self[26]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ClientDeath = self.f_26_ClientDeath
  l0.VehicleUnusable = self.f_26_VehicleUnusable
  l0.ClientBailedOut = self.f_26_ClientBailedOut
  l0.PlayerAbandonedVehicle = self.f_26_PlayerAbandonedVehicle
  self[28] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[28]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_28_PostOut
  self[9] = cbox:CreateBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self[9]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_9_Disabled
  l0.ReachDestination = self.f_9_ReachDestination
  l0.ClientDropOff = DummyFunction
  self[56] = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self[56]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_56_Started
  l0.Stopped = DummyFunction
  self[57] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[57]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_57_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_57_TalkFailed
  self[48] = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self[48]
  l0._graph = self
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = DummyFunction
  l0.RewardShown = self.f_48_RewardShown
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self[15] = cbox:CreateBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.lua")
  l0 = self[15]
  l0._graph = self
  self[30] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[30]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_30_Out
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
  self[52] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[52]
  l0._graph = self
  l0.Out = self.f_52_Out
  l0.MessageCompleted = DummyFunction
  self[39] = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self[39]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_39_Started
  l0.Stopped = DummyFunction
  self[69] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[69]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_69_Out
  self[51] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[51]
  l0._graph = self
  l0.Loaded = self.f_51_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[2] = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self[2]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_2_Started
  l0.Stopped = DummyFunction
  self[23] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[23]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_23_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_23_TalkFailed
  self[76] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[76]
  l0._graph = self
  self[10] = cbox:CreateBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self[10]
  l0._graph = self
  l0.Enabled = self.f_10_Enabled
  l0.Disabled = self.f_10_Disabled
  l0.ReachDestination = self.f_10_ReachDestination
  l0.ClientDropOff = DummyFunction
  self[21] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[21]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_21_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_21_TalkFailed
  self[63] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[63]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_63_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_63_TalkFailed
  self[44] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[44]
  l0._graph = self
  l0.Out = self.f_44_Out
  l0.MessageCompleted = DummyFunction
  self[45] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[45]
  l0._graph = self
  l0.Out = self.f_45_Out
  l0.MessageCompleted = DummyFunction
  self[3] = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self[3]
  l0._graph = self
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = self.f_3_RatingReset
  l0.RewardShown = DummyFunction
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self[43] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[43]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_43_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_43_TalkFailed
  self[25] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[25]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_25_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_25_TalkFailed
  self[40] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[40]
  l0._graph = self
  l0.Out = self.f_40_Out
  l0.MessageCompleted = DummyFunction
  self[14] = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self[14]
  l0._graph = self
  l0.Started = self.f_14_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self[4] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[4]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_4_Out
  self[35] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[35]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_35_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_35_TalkFailed
  self[60] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[60]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_60_Out
  self[64] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[64]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[32] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[32]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_32_Out
  self[66] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[66]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_66_Out
  self[16] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[16]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_16_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_16_TalkFailed
  self[54] = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self[54]
  l0._graph = self
  l0.Out = self.f_54_Out
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  self[41] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[41]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_41_Out
  self[11] = cbox:CreateBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self[11]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_11_Disabled
  l0.ReachDestination = self.f_11_ReachDestination
  l0.ClientDropOff = DummyFunction
  self[67] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[67]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_67_Out
  self[47] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[47]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_47_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_47_TalkFailed
  self[58] = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self[58]
  l0._graph = self
  l0.Out = self.f_58_Out
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  self[5] = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self[5]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = self.f_5_Paused
  l0.Resumed = DummyFunction
  self[53] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[53]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_53_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[72] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[72]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_72_Out
  self[24] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[24]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_24_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[68] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[68]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_68_Out
  self[71] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[71]
  l0._graph = self
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_71_Added
  l0.Removed = self.f_71_Removed
  l0.Out = self.f_71_Out
  self[29] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[29]
  l0._graph = self
  l0.Out = self.f_29_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[49] = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self[49]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_49_Started
  l0.Stopped = DummyFunction
  self[70] = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self[70]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_70_Stopped
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
  l0 = self[30]
  l0:Input(1)
end
function export:In()
  local l0
  l0 = self[30]
  l0:Input(0)
end
function export:f_62_Out()
  local l0
  self = self._graph
  l0 = self[53]
  l0.Seconds = 5
  l0:Start()
end
function export:f_42_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[43]
  l0.Pawn1 = self.PlayerEntity
  l0.Pawn2 = self.Ivy
  l0.Conversation = "ConversationSetting.9223372052166273564"
  l0.StartDelay = 0.1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0:Start()
end
function export:f_55_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_17_Out_0
  l0.Out[1] = self.f_17_Out_1
  l0:In()
end
function export:f_31_Out()
  local l0
  self = self._graph
  l0 = self[41]
  l0:Condition(0)
end
function export:f_6_TalkFailed()
  local l0
  self = self._graph
  l0 = self[66]
  l0:Input(1)
end
function export:f_6_TalkFinished()
  local l0
  self = self._graph
  l0 = self[66]
  l0:Input(0)
end
function export:f_13_TalkFailed()
  local l0
  self = self._graph
  l0 = self[55]
  l0:Input(1)
end
function export:f_13_TalkFinished()
  local l0
  self = self._graph
  l0 = self[55]
  l0:Input(0)
end
function export:f_19_Out()
  local l0
  self = self._graph
  l0 = self[41]
  l0:Condition(1)
end
function export:f_27_Out()
  local l0
  self = self._graph
  l0 = self[52]
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF200",
    item = "Objective_Wait2",
    id = "688327"
  }
  l0:ShowNewObjective()
end
function export:f_46_Unloaded()
  local l0
  self = self._graph
  l0 = self[76]
  l0:Succeed()
end
function export:f_8_ClientDropOff()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_65_Out_0
  l0.Out[1] = self.f_65_Out_1
  l0:In()
end
function export:f_8_Enabled()
  local l0
  self = self._graph
  self:en_20()
  l0 = self[20]
  l0:Enable()
end
function export:f_8_ReachDestination()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_12_Out_0
  l0.Out[1] = self.f_12_Out_1
  l0:In()
end
function export:f_61_Out()
  local l0
  self = self._graph
  l0 = self[23]
  l0.Pawn1 = self.PlayerEntity
  l0.Pawn2 = self.Ivy
  l0.Conversation = "ConversationSetting.9223372052166273567"
  l0.StartDelay = 0.1
  l0:Start()
end
function export:f_22_ClientConversationFinised()
  local l0
  self = self._graph
  self:en_22()
  l0 = self[22]
  l0:Disable()
end
function export:f_22_ClientPickedUp()
  local l0
  self = self._graph
  l0 = self[22]
  self.PlayerVehicle = l0.Vehicle
  l0 = self[38]
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF200",
    item = "Objective_Wait",
    id = "630515"
  }
  l0.ShowPreviousObjectiveComplete = 0
  l0.HasObjectiveMarker = 0
  l0:ShowNewObjective()
end
function export:f_22_ClientSpawned()
  local l0
  self = self._graph
  l0 = self[22]
  self.Ivy = l0.Client
  self:en_26()
  l0 = self[26]
  l0:Enable()
end
function export:f_22_Disabled()
  local l0
  self = self._graph
  l0 = self[6]
  l0.Pawn1 = self.PlayerEntity
  l0.Pawn2 = self.Ivy
  l0.Conversation = "ConversationSetting.9223372052166273566"
  l0.StartDelay = 0.1
  l0:Start()
end
function export:f_33_Out()
  local l0
  self = self._graph
  l0 = self[13]
  l0.Pawn1 = self.PlayerEntity
  l0.Pawn2 = self.Ivy
  l0.Conversation = "ConversationSetting.9223372052166273565"
  l0.StartDelay = 0.1
  l0:Start()
end
function export:f_20_Disabled()
  local l0
  self = self._graph
  self:en_7()
  l0 = self[7]
  l0:Start()
end
function export:f_20_Enter()
  local l0
  self = self._graph
  self:en_20()
  l0 = self[20]
  l0:Disable()
end
function export:f_26_ClientBailedOut()
  local l0
  self = self._graph
  self:en_15()
  l0 = self[15]
  l0:ClientBailedOut()
end
function export:f_26_ClientDeath()
  local l0
  self = self._graph
  self:en_15()
  l0 = self[15]
  l0:ClientDead()
end
function export:f_26_PlayerAbandonedVehicle()
  local l0
  self = self._graph
  self:en_15()
  l0 = self[15]
  l0:PlayerAbandonedVehicle()
end
function export:f_26_VehicleUnusable()
  local l0
  self = self._graph
  self:en_15()
  l0 = self[15]
  l0:VehicleUnusable()
end
function export:f_28_PostOut()
  local l0
  self = self._graph
  l0 = self[29]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_9_Disabled()
  local l0
  self = self._graph
  l0 = self[58]
  l0.InInteractionId = self.InteractionID
  l0:Stop()
end
function export:f_9_ReachDestination()
  local l0
  self = self._graph
  self:en_9()
  l0 = self[9]
  l0:Disable()
end
function export:f_56_Started()
  local l0
  self = self._graph
  l0 = self[56]
  self.InteractionID = l0.interactionId
  l0 = self[64]
  l0.Pawn1 = self.PlayerEntity
  l0.Pawn2 = self.Ivy
  l0.Conversation = "ConversationSetting.9223372052166273563"
  l0.StartDelay = 2
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0:Start()
end
function export:f_57_TalkFailed()
  local l0
  self = self._graph
  l0 = self[69]
  l0:Input(1)
end
function export:f_57_TalkFinished()
  local l0
  self = self._graph
  l0 = self[69]
  l0:Input(0)
end
function export:f_48_RewardShown()
  local l0
  self = self._graph
  l0 = self[70]
  l0.Config = "TaxiRideStrategyConfig.9223372048443685984"
  l0:Stop()
end
function export:f_65_Out_0()
  local l0
  self = self._graph
  l0 = self[48]
  l0.MissionName = self.Mission
  l0:ShowReward()
end
function export:f_65_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_36_Out
  l0:In()
end
function export:f_50_Out_0()
  local l0
  self = self._graph
  l0 = self[39]
  l0.Users = self.GICUsers
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0:Start()
end
function export:f_50_Out_1()
  local l0
  self = self._graph
  self:en_9()
  l0 = self[9]
  l0:Enable()
end
function export:f_30_Out()
  local l0
  self = self._graph
  l0 = self[51]
  l0.LayerName = "Taxi20_Main"
  l0:Load()
end
function export:f_37_TalkFailed()
  local l0
  self = self._graph
  l0 = self[4]
  l0:Input(1)
end
function export:f_37_TalkFinished()
  local l0
  self = self._graph
  l0 = self[4]
  l0:Input(0)
end
function export:f_52_Out()
  local l0
  self = self._graph
  l0 = self[57]
  l0.Pawn1 = self.PlayerEntity
  l0.Pawn2 = self.Ivy
  l0.Conversation = "ConversationSetting.9223372052166273577"
  l0.StartDelay = 0.1
  l0:Start()
end
function export:f_39_Started()
  local l0
  self = self._graph
  l0 = self[39]
  self.InteractionID = l0.interactionId
  l0 = self[47]
  l0.Pawn1 = self.PlayerEntity
  l0.Pawn2 = self.Ivy
  l0.Conversation = "ConversationSetting.9223372052166273572"
  l0.StartDelay = 0.6
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0:Start()
end
function export:f_36_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_34_Out
  l0:In()
end
function export:f_69_Out()
  local l0
  self = self._graph
  l0 = self[63]
  l0.Pawn1 = self.PlayerEntity
  l0.Pawn2 = self.Ivy
  l0.Conversation = "ConversationSetting.9223372052166273568"
  l0.StartDelay = 0.1
  l0:Start()
end
function export:f_51_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_18_Out
  l0:In()
end
function export:f_2_Started()
  local l0
  self = self._graph
  l0 = self[2]
  self.InteractionID = l0.interactionId
  l0 = self[3]
  l0.MissionName = self.Mission
  l0:ResetRating()
end
function export:f_23_TalkFailed()
  local l0
  self = self._graph
  l0 = self[67]
  l0:Input(1)
end
function export:f_23_TalkFinished()
  local l0
  self = self._graph
  l0 = self[67]
  l0:Input(0)
end
function export:f_10_Disabled()
  local l0
  self = self._graph
  l0 = self[19]
  l0.InInteractionId = self.InteractionID
  l0:Stop()
end
function export:f_10_Enabled()
  local l0
  self = self._graph
  l0 = self[24]
  l0.Seconds = 11
  l0:Start()
end
function export:f_10_ReachDestination()
  local l0
  self = self._graph
  self:en_10()
  l0 = self[10]
  l0:Disable()
end
function export:f_21_TalkFailed()
  local l0
  self = self._graph
  l0 = self[61]
  l0:Input(1)
end
function export:f_21_TalkFinished()
  local l0
  self = self._graph
  l0 = self[61]
  l0:Input(0)
end
function export:f_63_TalkFailed()
  local l0
  self = self._graph
  l0 = self[72]
  l0:Input(1)
end
function export:f_63_TalkFinished()
  local l0
  self = self._graph
  l0 = self[72]
  l0:Input(0)
end
function export:f_12_Out_0()
  local l0
  self = self._graph
  self:en_7()
  l0 = self[7]
  l0:Stop()
end
function export:f_12_Out_1()
  local l0
  self = self._graph
  l0 = self[5]
  l0.Config = "TaxiRideStrategyConfig.9223372048443685984"
  l0:Pause()
end
function export:f_44_Out()
  local l0
  self = self._graph
  l0 = self[21]
  l0.Pawn1 = self.PlayerEntity
  l0.Pawn2 = self.Ivy
  l0.Conversation = "ConversationSetting.9223372052166273575"
  l0.StartDelay = 0.1
  l0:Start()
end
function export:f_45_Out()
  local l0
  self = self._graph
  l0 = self[46]
  l0.LayerName = "Taxi20_Main"
  l0:Unload()
end
function export:f_3_RatingReset()
  local l0
  self = self._graph
  l0 = self[14]
  l0.Config = "TaxiRideStrategyConfig.9223372048443685984"
  l0:Start()
end
function export:f_43_TalkFailed()
  local l0
  self = self._graph
  l0 = self[60]
  l0:Input(1)
end
function export:f_43_TalkFinished()
  local l0
  self = self._graph
  l0 = self[60]
  l0:Input(0)
end
function export:f_25_TalkFailed()
  local l0
  self = self._graph
  l0 = self[33]
  l0:Input(1)
end
function export:f_25_TalkFinished()
  local l0
  self = self._graph
  l0 = self[33]
  l0:Input(0)
end
function export:f_40_Out()
  local l0
  self = self._graph
  l0 = self[25]
  l0.Pawn1 = self.PlayerEntity
  l0.Pawn2 = self.Ivy
  l0.Conversation = "ConversationSetting.9223372052166273576"
  l0.StartDelay = 0.1
  l0:Start()
end
function export:f_14_Started()
  local l0
  self = self._graph
  self:en_10()
  l0 = self[10]
  l0:Enable()
end
function export:f_4_Out()
  local l0
  self = self._graph
  l0 = self[42]
  l0.Seconds = 4
  l0:Start()
end
function export:f_35_TalkFailed()
  local l0
  self = self._graph
  l0 = self[68]
  l0:Input(1)
end
function export:f_35_TalkFinished()
  local l0
  self = self._graph
  l0 = self[68]
  l0:Input(0)
end
function export:f_60_Out()
  local l0
  self = self._graph
  l0 = self[32]
  l0:Condition(0)
end
function export:f_32_Out()
  local l0
  self = self._graph
  l0 = self[44]
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF200",
    item = "Objective_Wait2",
    id = "688327"
  }
  l0:ShowNewObjective()
end
function export:f_66_Out()
  local l0
  self = self._graph
  l0 = self[71]
  l0.Input = self.GICUsers
  l0.Data[0] = self.PlayerEntity
  l0.Data[1] = self.Ivy
  l0:Add()
end
function export:f_18_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[28]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_16_TalkFailed()
  local l0
  self = self._graph
  l0 = self[31]
  l0:Input(1)
end
function export:f_16_TalkFinished()
  local l0
  self = self._graph
  l0 = self[31]
  l0:Input(0)
end
function export:f_54_Out()
  local l0
  self = self._graph
  l0 = self[32]
  l0:Condition(1)
end
function export:f_41_Out()
  local l0
  self = self._graph
  l0 = self[40]
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF200",
    item = "Objective_Wait2",
    id = "688327"
  }
  l0:ShowNewObjective()
end
function export:f_11_Disabled()
  local l0
  self = self._graph
  l0 = self[54]
  l0.Users = self.GICUsers
  l0.InInteractionId = self.InteractionID
  l0:Stop()
end
function export:f_11_ReachDestination()
  local l0
  self = self._graph
  self:en_11()
  l0 = self[11]
  l0:Disable()
end
function export:f_67_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_50_Out_0
  l0.Out[1] = self.f_50_Out_1
  l0:In()
end
function export:f_47_TalkFailed()
  local l0
  self = self._graph
  l0 = self[62]
  l0:Input(1)
end
function export:f_47_TalkFinished()
  local l0
  self = self._graph
  l0 = self[62]
  l0:Input(0)
end
function export:f_34_Out()
  local l0
  self = self._graph
  self:en_26()
  l0 = self[26]
  l0:Disable()
end
function export:f_58_Out()
  local l0
  self = self._graph
  l0 = self[27]
  l0:Condition(1)
end
function export:f_5_Paused()
  local l0
  self = self._graph
  l0 = self[1]
  l0.InInteractionId = self.InteractionID
  l0:Stop()
end
function export:f_53_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[35]
  l0.Pawn1 = self.PlayerEntity
  l0.Pawn2 = self.Ivy
  l0.Conversation = "ConversationSetting.9223372052166273562"
  l0.StartDelay = 0.1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0:Start()
end
function export:f_72_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_59_Out_0
  l0.Out[1] = self.f_59_Out_1
  l0:In()
end
function export:f_24_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[16]
  l0.Pawn1 = self.PlayerEntity
  l0.Pawn2 = self.Ivy
  l0.Conversation = "ConversationSetting.9223372052166273561"
  l0.StartDelay = 0.1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0:Start()
end
function export:f_68_Out()
  local l0
  self = self._graph
  l0 = self[27]
  l0:Condition(0)
end
function export:f_71_Added()
  local l0
  self = self._graph
  l0 = self[71]
  self.GICUsers = l0.Target
  l0 = self[2]
  l0.Users = self.GICUsers
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0:Start()
end
function export:f_71_Out()
  local l0
  self = self._graph
  l0 = self[71]
  self.GICUsers = l0.Target
end
function export:f_71_Removed()
  local l0
  self = self._graph
  l0 = self[71]
  self.GICUsers = l0.Target
end
function export:f_17_Out_0()
  local l0
  self = self._graph
  l0 = self[49]
  l0.Users = self.GICUsers
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0:Start()
end
function export:f_17_Out_1()
  local l0
  self = self._graph
  self:en_11()
  l0 = self[11]
  l0:Enable()
end
function export:f_29_Out()
  local l0
  self = self._graph
  self:en_22()
  l0 = self[22]
  l0:Enable()
end
function export:f_49_Started()
  local l0
  self = self._graph
  l0 = self[49]
  self.InteractionID = l0.interactionId
  l0 = self[37]
  l0.Pawn1 = self.PlayerEntity
  l0.Pawn2 = self.Ivy
  l0.Conversation = "ConversationSetting.9223372052166273573"
  l0.StartDelay = 0.6
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0:Start()
end
function export:f_59_Out_0()
  local l0
  self = self._graph
  l0 = self[56]
  l0.Users = self.GICUsers
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0:Start()
end
function export:f_59_Out_1()
  local l0
  self = self._graph
  l0 = self[8]
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
  l0:Enable()
end
function export:f_70_Stopped()
  local l0
  self = self._graph
  l0 = self[45]
  l0:ShowMissionComplete()
end
function export:en_7()
  local l0
  l0 = self[7]
  l0.Pawn1 = self.PlayerEntity
  l0.Pawn2 = self.Ivy
  l0.Conversation = "ConversationSetting.9223372052166273578"
  l0.StartDelay = 0.1
end
function export:en_22()
  local l0
  l0 = self[22]
  l0.ClientClo = "9223372048443729269"
  l0.PickUpIcon = "9223372048443729264"
  l0.Config = "TaxiRideGameplayBrick.9223372057535679965"
end
function export:en_20()
  local l0
  l0 = self[20]
  l0.Trigger = "9223372057535679978"
end
function export:en_26()
  local l0
  l0 = self[26]
  l0.Client = self.Ivy
  l0.Config = "TaxiRideGameplayBrick.9223372057535679965"
end
function export:en_9()
  local l0
  l0 = self[9]
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
function export:en_15()
  local l0
  l0 = self[15]
  l0.MissionName = self.Mission
  l0.LayerName = "Taxi20_Main"
  l0.StrategyConfig = "TaxiRideStrategyConfig.9223372048443685984"
  l0.Pawn1 = self.Ivy
  l0.Pawn2 = self.PlayerEntity
  l0.Vehicle = self.PlayerVehicle
  l0.Conversation = "ConversationSetting.9223372052166273569"
end
function export:en_10()
  local l0
  l0 = self[10]
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
function export:en_11()
  local l0
  l0 = self[11]
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
_compilerVersion = 4
