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
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlayerProximityMonitor.lua")
  cbox:RegisterBox("domino/System/SetEntity.lua")
  cbox:RegisterBox("domino/System/SetActionMap_v2.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/Library/common/SnapAndBind.SnapAndBind.lua")
  cbox:RegisterBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.lua")
  cbox:RegisterBox("domino/System/TaxiRatingController.lua")
  cbox:RegisterBox("domino/System/TaxiRidePickUpController.lua")
  cbox:RegisterBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  cbox:RegisterBox("domino/System/TaxiRideVehicleMonitor.lua")
  cbox:RegisterBox("domino/System/TaxiStrategiesController.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.PlayerVehicle = nil
  self.Mission = "MissionList.9223372047964168914"
  self.CurrentDestination = 0
  self.MrLi = nil
  self.NudleTranslate = "9223372058339622023"
  self.Client = nil
  self.GIC_Users = {}
  self[77] = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self[77]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_77_Started
  l0.Stopped = DummyFunction
  self[47] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[47]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[56] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[56]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_56_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_56_TalkFailed
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
  self[5] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[5]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_5_Out
  l0.ResetOut = DummyFunction
  self[62] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[62]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_62_Out
  l0.ResetOut = DummyFunction
  self[46] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[46]
  l0._graph = self
  l0.Out = self.f_46_Out
  l0.MessageCompleted = DummyFunction
  self[49] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[49]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_49_Out
  l0.ResetOut = DummyFunction
  self[41] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[41]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_41_Out
  l0.ResetOut = DummyFunction
  self[6] = cbox:CreateBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.lua")
  l0 = self[6]
  l0._graph = self
  self[40] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[40]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_40_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_40_TalkFailed
  self[54] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[54]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_54_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_54_TalkFailed
  self[70] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[70]
  l0._graph = self
  l0._DynamicAnchors = {In = 3}
  l0.Out = self.f_70_Out
  l0.ResetOut = DummyFunction
  self[58] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[58]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[43] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[43]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_43_Out
  l0.ResetOut = DummyFunction
  self[84] = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self[84]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_84_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self[30] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[30]
  l0._graph = self
  self[59] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[59]
  l0._graph = self
  l0.Started = self.f_59_Started
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = self.f_59_TalkPaused
  l0.TalkFinished = self.f_59_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_59_TalkFailed
  self[16] = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self[16]
  l0._graph = self
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = DummyFunction
  l0.RewardShown = self.f_16_RewardShown
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self[13] = cbox:CreateBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self[13]
  l0._graph = self
  l0.Enabled = self.f_13_Enabled
  l0.Disabled = self.f_13_Disabled
  l0.ReachDestination = self.f_13_ReachDestination
  l0.ClientDropOff = DummyFunction
  self[50] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[50]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_50_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_50_TalkFailed
  self[35] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[35]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_35_Out
  l0.ResetOut = DummyFunction
  self[31] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[31]
  l0._graph = self
  l0.Started = self.f_31_Started
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_31_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_31_TalkFailed
  self[18] = cbox:CreateBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self[18]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_18_Disabled
  l0.ReachDestination = self.f_18_ReachDestination
  l0.ClientDropOff = DummyFunction
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
  self[69] = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self[69]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self[2] = cbox:CreateBox("domino/System/PlayerProximityMonitor.lua")
  l0 = self[2]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_2_Disabled
  l0.EnterRadius = self.f_2_EnterRadius
  l0.ExitRadius = DummyFunction
  l0.RCEnterRadius = DummyFunction
  l0.RCExitRadius = DummyFunction
  self[25] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[25]
  l0._graph = self
  l0.Loaded = self.f_25_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[64] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[64]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_64_Out
  l0.ResetOut = DummyFunction
  self[81] = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self[81]
  l0._graph = self
  l0.Started = self.f_81_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self[20] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[20]
  l0._graph = self
  l0.Out = self.f_20_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[33] = cbox:CreateBox("domino/Library/common/SnapAndBind.SnapAndBind.lua")
  l0 = self[33]
  l0._graph = self
  l0.Attached = self.f_33_Attached
  self[39] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[39]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_39_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_39_TalkFailed
  self[44] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[44]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_44_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_44_TalkFailed
  self[9] = cbox:CreateBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self[9]
  l0._graph = self
  l0.Enabled = self.f_9_Enabled
  l0.Disabled = self.f_9_Disabled
  l0.ReachDestination = self.f_9_ReachDestination
  l0.ClientDropOff = DummyFunction
  self[67] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[67]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_67_Out
  l0.ResetOut = DummyFunction
  self[7] = cbox:CreateBox("domino/System/TaxiRideVehicleMonitor.lua")
  l0 = self[7]
  l0._graph = self
  l0.Enabled = self.f_7_Enabled
  l0.Disabled = DummyFunction
  l0.ClientDeath = self.f_7_ClientDeath
  l0.VehicleUnusable = self.f_7_VehicleUnusable
  l0.ClientBailedOut = self.f_7_ClientBailedOut
  l0.PlayerAbandonedVehicle = self.f_7_PlayerAbandonedVehicle
  self[53] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[53]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_53_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_53_TalkFailed
  self[8] = cbox:CreateBox("domino/System/TaxiRidePickUpController.lua")
  l0 = self[8]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_8_Disabled
  l0.ClientSpawned = self.f_8_ClientSpawned
  l0.ClientPickedUp = self.f_8_ClientPickedUp
  l0.ClientConversationFinised = self.f_8_ClientConversationFinised
  self[51] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[51]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_51_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_51_TalkFailed
  self[10] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[10]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_10_PostOut
  self[11] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[11]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_11_Out
  l0.ResetOut = DummyFunction
  self[71] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[71]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_71_Unloaded
  l0.Reseted = DummyFunction
  self[28] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[28]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_28_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_28_TalkFailed
  self[68] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[68]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_68_Out
  l0.ResetOut = DummyFunction
  self[42] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[42]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_42_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_42_TalkFailed
  self[12] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[12]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_12_Out
  l0.ResetOut = DummyFunction
  self[22] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[22]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_22_Out
  self[61] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[61]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_61_Out
  l0.ResetOut = DummyFunction
  self[21] = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self[21]
  l0._graph = self
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = self.f_21_RatingReset
  l0.RewardShown = DummyFunction
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self[19] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[19]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_19_Out
  self[48] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[48]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_48_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_48_TalkFailed
  self[78] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[78]
  l0._graph = self
  l0._DynamicAnchors = {Data = 3}
  l0.Added = self.f_78_Added
  l0.Removed = self.f_78_Removed
  l0.Out = self.f_78_Out
  self[60] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[60]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_60_Out
  l0.ResetOut = DummyFunction
  self[36] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[36]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_36_Out
  l0.ResetOut = DummyFunction
  self[1] = cbox:CreateBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self[1]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ReachDestination = DummyFunction
  l0.ClientDropOff = self.f_1_ClientDropOff
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
  l0 = self[22]
  l0:Input(1)
end
function export:In()
  local l0
  l0 = self[22]
  l0:Input(0)
end
function export:f_77_Started()
  local l0
  self = self._graph
  l0 = self[26]
  l0.PawnList = self.GIC_Users
  l0.Conversation = "ConversationSetting.9223372049506588210"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372069460196083"
  l0:Start()
end
function export:f_56_TalkFailed()
  local l0
  self = self._graph
  l0 = self[62]
  l0:In(1)
end
function export:f_56_TalkFinished()
  local l0
  self = self._graph
  l0 = self[62]
  l0:In(0)
end
function export:f_3_Out()
  local l0
  self = self._graph
  self:en_77()
  l0 = self[77]
  l0:Stop()
end
function export:f_26_TalkFailed()
  local l0
  self = self._graph
  l0 = self[5]
  l0:In(1)
end
function export:f_26_TalkFinished()
  local l0
  self = self._graph
  l0 = self[5]
  l0:In(0)
end
function export:f_5_Out()
  local l0
  self = self._graph
  l0 = self[28]
  l0.PawnList = self.GIC_Users
  l0.Conversation = "ConversationSetting.9223372049506588211"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372069460196083"
  l0:Start()
end
function export:f_62_Out()
  local l0
  self = self._graph
  self:en_13()
  l0 = self[13]
  l0:Enable()
end
function export:f_46_Out()
  local l0
  self = self._graph
  l0 = self[71]
  l0.LayerName = "Taxi14_Main"
  l0:Unload()
end
function export:f_49_Out()
  local l0
  self = self._graph
  self:en_9()
  l0 = self[9]
  l0:Enable()
end
function export:f_41_Out()
  local l0
  self = self._graph
  l0 = self[48]
  l0.PawnList = self.GIC_Users
  l0.Conversation = "ConversationSetting.9223372049506588204"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372069460196083"
  l0:Start()
end
function export:f_23_Out()
  local l0
  self = self._graph
  self:en_7()
  l0 = self[7]
  l0:Disable()
end
function export:f_55_Pushed()
  local l0
  self = self._graph
  l0 = self[59]
  l0.PawnList = self.GIC_Users
  l0.Conversation = "ConversationSetting.9223372049506588212"
  l0.StartDelay = 1
  l0:Start()
end
function export:f_40_TalkFailed()
  local l0
  self = self._graph
  l0 = self[12]
  l0:In(1)
end
function export:f_40_TalkFinished()
  local l0
  self = self._graph
  l0 = self[12]
  l0:In(0)
end
function export:f_54_TalkFailed()
  local l0
  self = self._graph
  l0 = self[61]
  l0:In(1)
end
function export:f_54_TalkFinished()
  local l0
  self = self._graph
  l0 = self[61]
  l0:In(0)
end
function export:f_70_Out()
  local l0
  self = self._graph
  l0 = self[1]
  l0.Client = self.MrLi
  l0.DropOffIcon = self.PlayerEntity
  l0.LastDestination = 1
  l0.ManageObjective = 1
  l0.CustomObjective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF140",
    item = "Objective_Reach_3",
    id = "630501"
  }
  l0.Config = "TaxiRideGameplayBrick.9223372058239048238"
  l0:Enable()
end
function export:f_43_Out()
  local l0
  self = self._graph
  l0 = self[51]
  l0.PawnList = self.GIC_Users
  l0.Conversation = "ConversationSetting.9223372049506588205"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372069460196083"
  l0:Start()
end
function export:f_84_Stopped()
  local l0
  self = self._graph
  l0 = self[46]
  l0:ShowMissionComplete()
end
function export:f_59_Started()
  local l0
  self = self._graph
  l0 = self[69]
  l0.Config = "TaxiRideStrategyConfig.9223372047964168915"
  l0:Pause()
end
function export:f_59_TalkFailed()
  local l0
  self = self._graph
  l0 = self[70]
  l0:In(1)
end
function export:f_59_TalkFinished()
  local l0
  self = self._graph
  l0 = self[70]
  l0:In(0)
end
function export:f_59_TalkPaused()
  local l0
  self = self._graph
  l0 = self[70]
  l0:In(2)
end
function export:f_4_Popped()
  local l0
  self = self._graph
  l0 = self[16]
  l0.MissionName = self.Mission
  l0:ShowReward()
end
function export:f_16_RewardShown()
  local l0
  self = self._graph
  l0 = self[84]
  l0.Config = "TaxiRideStrategyConfig.9223372047964168915"
  l0:Stop()
end
function export:f_13_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic_nocameralock"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_55_Pushed
  l0.Popped = DummyFunction
  l0:Push()
end
function export:f_13_Enabled()
  local l0
  self = self._graph
  l0 = self[31]
  l0.PawnList = self.GIC_Users
  l0.Conversation = "ConversationSetting.9223372049506588197"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372069460196083"
  l0:Start()
end
function export:f_13_ReachDestination()
  local l0
  self = self._graph
  self:en_13()
  l0 = self[13]
  l0:Disable()
end
function export:f_50_TalkFailed()
  local l0
  self = self._graph
  l0 = self[41]
  l0:In(1)
end
function export:f_50_TalkFinished()
  local l0
  self = self._graph
  l0 = self[41]
  l0:In(0)
end
function export:f_14_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_3_Out
  l0:In()
end
function export:f_35_Out()
  local l0
  self = self._graph
  l0 = self[40]
  l0.PawnList = self.GIC_Users
  l0.Conversation = "ConversationSetting.9223372049506588194"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372069460196083"
  l0:Start()
end
function export:f_31_Started()
  local l0
  self = self._graph
  self:en_2()
  l0 = self[2]
  l0:Enable()
end
function export:f_31_TalkFailed()
  local l0
  self = self._graph
  l0 = self[64]
  l0:In(1)
end
function export:f_31_TalkFinished()
  local l0
  self = self._graph
  l0 = self[64]
  l0:In(0)
end
function export:f_18_Disabled()
  local l0
  self = self._graph
  l0 = self[50]
  l0.PawnList = self.GIC_Users
  l0.Conversation = "ConversationSetting.9223372049506588203"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372069460196083"
  l0:Start()
end
function export:f_18_ReachDestination()
  local l0
  self = self._graph
  self:en_18()
  l0 = self[18]
  l0:Disable()
end
function export:f_57_TalkFailed()
  local l0
  self = self._graph
  l0 = self[68]
  l0:In(1)
end
function export:f_57_TalkFinished()
  local l0
  self = self._graph
  l0 = self[68]
  l0:In(0)
end
function export:f_2_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_14_Out
  l0:In()
end
function export:f_2_EnterRadius()
  local l0
  self = self._graph
  self:en_2()
  l0 = self[2]
  l0:Disable()
end
function export:f_25_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_52_Out
  l0:In()
end
function export:f_15_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.NudleTranslate = l0.Target
  self:en_8()
  l0 = self[8]
  l0:Enable()
end
function export:f_64_Out()
  local l0
  self = self._graph
  l0 = self[39]
  l0.PawnList = self.GIC_Users
  l0.Conversation = "ConversationSetting.9223372049506588198"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372069460196083"
  l0:Start()
end
function export:f_81_Started()
  local l0
  self = self._graph
  l0 = self[33]
  l0.Parent = self.PlayerVehicle
  l0.Child = self.NudleTranslate
  l0.yPosOffset = 2
  l0:Attach()
end
function export:f_20_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = "9223372058339622024"
  l0._graph = self
  l0.Out = self.f_15_Out
  l0:FromEntity()
end
function export:f_33_Attached()
  local l0
  self = self._graph
  l0 = self[42]
  l0.PawnList = self.GIC_Users
  l0.Conversation = "ConversationSetting.9223372049506588193"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372069460196083"
  l0:Start()
end
function export:f_39_TalkFailed()
  local l0
  self = self._graph
  l0 = self[67]
  l0:In(1)
end
function export:f_39_TalkFinished()
  local l0
  self = self._graph
  l0 = self[67]
  l0:In(0)
end
function export:f_24_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_17_Out
  l0:In()
end
function export:f_24_Out_1()
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
  l0.Popped = self.f_4_Popped
  l0:Pop()
end
function export:f_52_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[10]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_44_TalkFailed()
  local l0
  self = self._graph
  l0 = self[36]
  l0:In(1)
end
function export:f_44_TalkFinished()
  local l0
  self = self._graph
  l0 = self[36]
  l0:In(0)
end
function export:f_9_Disabled()
  local l0
  self = self._graph
  l0 = self[53]
  l0.PawnList = self.GIC_Users
  l0.Conversation = "ConversationSetting.9223372049506588206"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372069460196083"
  l0:Start()
end
function export:f_9_Enabled()
  local l0
  self = self._graph
  l0 = self[44]
  l0.PawnList = self.GIC_Users
  l0.Conversation = "ConversationSetting.9223372049506588195"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372069460196083"
  l0:Start()
end
function export:f_9_ReachDestination()
  local l0
  self = self._graph
  self:en_9()
  l0 = self[9]
  l0:Disable()
end
function export:f_67_Out()
  local l0
  self = self._graph
  l0 = self[57]
  l0.PawnList = self.GIC_Users
  l0.Conversation = "ConversationSetting.9223372049506588200"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372069460196083"
  l0:Start()
end
function export:f_7_ClientBailedOut()
  local l0
  self = self._graph
  self:en_6()
  l0 = self[6]
  l0:ClientBailedOut()
end
function export:f_7_ClientDeath()
  local l0
  self = self._graph
  self:en_6()
  l0 = self[6]
  l0:ClientDead()
end
function export:f_7_Enabled()
  local l0
  self = self._graph
  l0 = self[19]
  l0:Condition(1)
end
function export:f_7_PlayerAbandonedVehicle()
  local l0
  self = self._graph
  self:en_6()
  l0 = self[6]
  l0:PlayerAbandonedVehicle()
end
function export:f_7_VehicleUnusable()
  local l0
  self = self._graph
  self:en_6()
  l0 = self[6]
  l0:VehicleUnusable()
end
function export:f_53_TalkFailed()
  local l0
  self = self._graph
  l0 = self[60]
  l0:In(1)
end
function export:f_53_TalkFinished()
  local l0
  self = self._graph
  l0 = self[60]
  l0:In(0)
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
end
function export:f_8_ClientSpawned()
  local l0
  self = self._graph
  l0 = self[8]
  self.MrLi = l0.Client
  self:en_7()
  l0 = self[7]
  l0:Enable()
end
function export:f_8_Disabled()
  local l0
  self = self._graph
  l0 = self[78]
  l0.Input = self.GIC_Users
  l0.Data[0] = self.PlayerEntity
  l0.Data[1] = self.MrLi
  l0.Data[2] = self.NudleTranslate
  l0:Add()
end
function export:f_51_TalkFailed()
  local l0
  self = self._graph
  l0 = self[49]
  l0:In(1)
end
function export:f_51_TalkFinished()
  local l0
  self = self._graph
  l0 = self[49]
  l0:In(0)
end
function export:f_10_PostOut()
  local l0
  self = self._graph
  l0 = self[20]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_11_Out()
  local l0
  self = self._graph
  l0 = self[19]
  l0:Condition(0)
end
function export:f_71_Unloaded()
  local l0
  self = self._graph
  l0 = self[30]
  l0:Succeed()
end
function export:f_28_TalkFailed()
  local l0
  self = self._graph
  l0 = self[11]
  l0:In(1)
end
function export:f_28_TalkFinished()
  local l0
  self = self._graph
  l0 = self[11]
  l0:In(0)
end
function export:f_68_Out()
  local l0
  self = self._graph
  l0 = self[58]
  l0.PawnList = self.GIC_Users
  l0.Conversation = "ConversationSetting.9223372049506588199"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372069460196083"
  l0:Start()
end
function export:f_42_TalkFailed()
  local l0
  self = self._graph
  l0 = self[35]
  l0:In(1)
end
function export:f_42_TalkFinished()
  local l0
  self = self._graph
  l0 = self[35]
  l0:In(0)
end
function export:f_12_Out()
  local l0
  self = self._graph
  self:en_18()
  l0 = self[18]
  l0:Enable()
end
function export:f_22_Out()
  local l0
  self = self._graph
  l0 = self[25]
  l0.LayerName = "Taxi14_Main"
  l0:Load()
end
function export:f_61_Out()
  local l0
  self = self._graph
  l0 = self[56]
  l0.PawnList = self.GIC_Users
  l0.Conversation = "ConversationSetting.9223372049506588208"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372069460196083"
  l0:Start()
end
function export:f_21_RatingReset()
  local l0
  self = self._graph
  l0 = self[81]
  l0.Config = "TaxiRideStrategyConfig.9223372047964168915"
  l0:Start()
end
function export:f_19_Out()
  local l0
  self = self._graph
  l0 = self[21]
  l0.MissionName = self.Mission
  l0:ResetRating()
end
function export:f_48_TalkFailed()
  local l0
  self = self._graph
  l0 = self[43]
  l0:In(1)
end
function export:f_48_TalkFinished()
  local l0
  self = self._graph
  l0 = self[43]
  l0:In(0)
end
function export:f_78_Added()
  local l0
  self = self._graph
  l0 = self[78]
  self.GIC_Users = l0.Target
  self:en_77()
  l0 = self[77]
  l0:Start()
end
function export:f_78_Out()
  local l0
  self = self._graph
  l0 = self[78]
  self.GIC_Users = l0.Target
end
function export:f_78_Removed()
  local l0
  self = self._graph
  l0 = self[78]
  self.GIC_Users = l0.Target
end
function export:f_60_Out()
  local l0
  self = self._graph
  l0 = self[54]
  l0.PawnList = self.GIC_Users
  l0.Conversation = "ConversationSetting.9223372049506588207"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372069460196083"
  l0:Start()
end
function export:f_36_Out()
  local l0
  self = self._graph
  l0 = self[47]
  l0.PawnList = self.GIC_Users
  l0.Conversation = "ConversationSetting.9223372049506588196"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372069460196083"
  l0:Start()
end
function export:f_1_ClientDropOff()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_24_Out_0
  l0.Out[1] = self.f_24_Out_1
  l0:In()
end
function export:f_17_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_23_Out
  l0:In()
end
function export:en_77()
  local l0
  l0 = self[77]
  l0.Users = self.GIC_Users
  l0.RuleConfig = "GameplayConversationSettings.9223372069460196083"
end
function export:en_6()
  local l0
  l0 = self[6]
  l0.MissionName = self.Mission
  l0.LayerName = "Taxi14_Main"
  l0.StrategyConfig = "TaxiRideStrategyConfig.9223372047964168915"
  l0.Pawn1 = self.MrLi
  l0.Pawn2 = self.PlayerEntity
  l0.Vehicle = self.PlayerVehicle
  l0.Conversation = "ConversationSetting.9223372049506588201"
end
function export:en_13()
  local l0
  l0 = self[13]
  l0.Client = self.MrLi
  l0.DropOffIcon = "9223372047964207183"
  l0.ShowGps = 1
  l0.ManageObjective = 1
  l0.CustomObjective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF140",
    item = "Objective_Reach_3",
    id = "630501"
  }
  l0.Config = "TaxiRideGameplayBrick.9223372058239048238"
end
function export:en_18()
  local l0
  l0 = self[18]
  l0.Client = self.MrLi
  l0.DropOffIcon = "9223372047964207177"
  l0.ShowGps = 1
  l0.ManageObjective = 1
  l0.CustomObjective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF140",
    item = "Objective_Reach_2",
    id = "630500"
  }
  l0.Config = "TaxiRideGameplayBrick.9223372058239048238"
end
function export:en_2()
  local l0
  l0 = self[2]
  l0.TargetEntity = "9223372047964207183"
  l0.Radius = 4
  l0.CheckNow = 1
end
function export:en_9()
  local l0
  l0 = self[9]
  l0.Client = self.MrLi
  l0.DropOffIcon = "9223372047964207179"
  l0.ShowGps = 1
  l0.ManageObjective = 1
  l0.CustomObjective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF140",
    item = "Objective_Reach_1",
    id = "630499"
  }
  l0.Config = "TaxiRideGameplayBrick.9223372058239048238"
end
function export:en_7()
  local l0
  l0 = self[7]
  l0.Client = self.MrLi
  l0.Config = "TaxiRideGameplayBrick.9223372058239048238"
end
function export:en_8()
  local l0
  l0 = self[8]
  l0.ClientClo = "9223372047964168911"
  l0.PickUpIcon = "9223372047964168908"
  l0.Config = "TaxiRideGameplayBrick.9223372058239048238"
end
_compilerVersion = 4
