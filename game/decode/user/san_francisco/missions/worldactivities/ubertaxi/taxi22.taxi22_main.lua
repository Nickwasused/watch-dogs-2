export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CameraLockController.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/DPadHackableController.lua")
  cbox:RegisterBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  cbox:RegisterBox("domino/System/FelonySystemController_v2.lua")
  cbox:RegisterBox("domino/System/FelonyTargetController.lua")
  cbox:RegisterBox("domino/System/FelonyTargetMonitor.lua")
  cbox:RegisterBox("domino/System/GameplayInteractionController.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/MapPointController_v4.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/System/SetActionMap_v2.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/Library/common/SnapAndBind.SnapAndBind.lua")
  cbox:RegisterBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.lua")
  cbox:RegisterBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_SearchArea.lua")
  cbox:RegisterBox("domino/System/TaxiRatingController.lua")
  cbox:RegisterBox("domino/System/TaxiRidePickUpController.lua")
  cbox:RegisterBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  cbox:RegisterBox("domino/System/TaxiRideVehicleMonitor.lua")
  cbox:RegisterBox("domino/System/TaxiStrategiesController.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/VehicleController.lua")
  cbox:LoadResource("soundbinary/2663361170.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.VehicleState = 4
  self.VIPDriver = nil
  self.Client = nil
  self.PlayerVehicle = nil
  self.Mission = "MissionList.9223372048565693556"
  self.VIPVehicle = nil
  self.PoliceCar2 = nil
  self.PoliceCar1 = nil
  self.PoliceDriver1 = nil
  self.PoliceDriver2 = nil
  self.PoliceDriver3 = nil
  self.TargetCar = nil
  self.GIC_Users = {}
  self[15] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[15]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_15_Stopped
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_15_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_15_TalkFailed
  self[38] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[38]
  l0._graph = self
  l0.Out = self.f_38_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[9] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[9]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_9_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_9_TalkFailed
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
  self[60] = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self[60]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_60_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
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
  self[98] = cbox:CreateBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_SearchArea.lua")
  l0 = self[98]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_98_Disabled
  l0.EnteredArea = self.f_98_EnteredArea
  l0.ExitedArea = DummyFunction
  self[53] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[53]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_53_Out
  l0.ResetOut = DummyFunction
  self[24] = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self[24]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  self[30] = cbox:CreateBox("domino/System/TaxiRidePickUpController.lua")
  l0 = self[30]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_30_Disabled
  l0.ClientSpawned = self.f_30_ClientSpawned
  l0.ClientPickedUp = self.f_30_ClientPickedUp
  l0.ClientConversationFinised = self.f_30_ClientConversationFinised
  self[47] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[47]
  l0._graph = self
  l0.Loaded = self.f_47_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[21] = cbox:CreateBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self[21]
  l0._graph = self
  l0.Enabled = self.f_21_Enabled
  l0.Disabled = self.f_21_Disabled
  l0.ReachDestination = DummyFunction
  l0.ClientDropOff = DummyFunction
  self[10] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[10]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_10_Out
  self[121] = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self[121]
  l0._graph = self
  l0.Shown = self.f_121_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[28] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[28]
  l0._graph = self
  l0.Started = self.f_28_Started
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_28_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_28_TalkFailed
  self[27] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[27]
  l0._graph = self
  l0.Started = self.f_27_Started
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[34] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[34]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_34_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_34_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[44] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[44]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_44_Out
  self[7] = cbox:CreateBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self[7]
  l0._graph = self
  l0.Enabled = self.f_7_Enabled
  l0.Disabled = self.f_7_Disabled
  l0.ReachDestination = DummyFunction
  l0.ClientDropOff = DummyFunction
  self[37] = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self[37]
  l0._graph = self
  l0.Started = self.f_37_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self[118] = cbox:CreateBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_SearchArea.lua")
  l0 = self[118]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_118_Disabled
  l0.EnteredArea = self.f_118_EnteredArea
  l0.ExitedArea = DummyFunction
  self[54] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[54]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_54_Out
  l0.ResetOut = DummyFunction
  self[4] = cbox:CreateBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self[4]
  l0._graph = self
  l0.Enabled = self.f_4_Enabled
  l0.Disabled = DummyFunction
  l0.ReachDestination = DummyFunction
  l0.ClientDropOff = self.f_4_ClientDropOff
  self[39] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[39]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_39_Out
  self[35] = cbox:CreateBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self[35]
  l0._graph = self
  l0.Enabled = self.f_35_Enabled
  l0.Disabled = self.f_35_Disabled
  l0.ReachDestination = DummyFunction
  l0.ClientDropOff = DummyFunction
  self[45] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[45]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_45_Out
  l0.ResetOut = DummyFunction
  self[13] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[13]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[3] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[3]
  l0._graph = self
  l0.Started = self.f_3_Started
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[31] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[31]
  l0._graph = self
  l0.Out = self.f_31_Out
  l0.MessageCompleted = DummyFunction
  self[66] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[66]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_66_Unloaded
  l0.Reseted = DummyFunction
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
  self[36] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[36]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_36_PostOut
  self[77] = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self[77]
  l0._graph = self
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = DummyFunction
  l0.RewardShown = self.f_77_RewardShown
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self[56] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[56]
  l0._graph = self
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_56_Added
  l0.Removed = self.f_56_Removed
  l0.Out = self.f_56_Out
  self[29] = cbox:CreateBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.lua")
  l0 = self[29]
  l0._graph = self
  self[8] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[8]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_8_Stopped
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_8_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_8_TalkFailed
  self[19] = cbox:CreateBox("domino/System/CameraLockController.lua")
  l0 = self[19]
  l0._graph = self
  l0.Started = self.f_19_Started
  l0.Stopped = self.f_19_Stopped
  l0.Finished = self.f_19_Finished
  l0.Out = DummyFunction
  self[80] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[80]
  l0._graph = self
  self[33] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[33]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[101] = cbox:CreateBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_SearchArea.lua")
  l0 = self[101]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_101_Disabled
  l0.EnteredArea = self.f_101_EnteredArea
  l0.ExitedArea = DummyFunction
  self[46] = cbox:CreateBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self[46]
  l0._graph = self
  l0.Enabled = self.f_46_Enabled
  l0.Disabled = self.f_46_Disabled
  l0.ReachDestination = self.f_46_ReachDestination
  l0.ClientDropOff = DummyFunction
  self[52] = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self[52]
  l0._graph = self
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = self.f_52_RatingReset
  l0.RewardShown = DummyFunction
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self[61] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[61]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_61_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[23] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[23]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_23_Out
  l0.ResetOut = DummyFunction
  self[32] = cbox:CreateBox("domino/System/TaxiRideVehicleMonitor.lua")
  l0 = self[32]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ClientDeath = self.f_32_ClientDeath
  l0.VehicleUnusable = self.f_32_VehicleUnusable
  l0.ClientBailedOut = self.f_32_ClientBailedOut
  l0.PlayerAbandonedVehicle = self.f_32_PlayerAbandonedVehicle
  self[51] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[51]
  l0._graph = self
  l0.Out = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[26] = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self[26]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  self[57] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[57]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_57_Out
  self[6] = cbox:CreateBox("domino/System/FelonyTargetMonitor.lua")
  l0 = self[6]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_6_Stopped
  l0.None = DummyFunction
  l0.DenunciatorStarted = DummyFunction
  l0.DenunciatorInterrupted = DummyFunction
  l0.DenunciatorFinished = DummyFunction
  l0.ScanStarted = DummyFunction
  l0.ScanSuccess = DummyFunction
  l0.ScanFailure = DummyFunction
  l0.Chasing = DummyFunction
  l0.Searching = DummyFunction
  l0.Evaded = self.f_6_Evaded
  l0.TargetKilled = DummyFunction
  l0.LevelChanged = DummyFunction
  l0.TargetArrested = DummyFunction
  self[43] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[43]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_43_Out
  self[18] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[18]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_18_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[124] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[124]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_124_OnUserInPlace
  self[68] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[68]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_68_Out
  l0.ResetOut = DummyFunction
  self[117] = cbox:CreateBox("domino/Library/common/SnapAndBind.SnapAndBind.lua")
  l0 = self[117]
  l0._graph = self
  l0.Attached = self.f_117_Attached
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
  l0 = self[39]
  l0:Input(1)
end
function export:In()
  local l0
  l0 = self[39]
  l0:Input(0)
end
function export:f_67_Out_0()
  local l0
  self = self._graph
  self:en_46()
  l0 = self[46]
  l0:Disable()
end
function export:f_67_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_64_Out
  l0:In()
end
function export:f_50_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_2_Out
  l0:In()
end
function export:f_50_Out_1()
  local l0
  self = self._graph
  l0 = self[60]
  l0.Config = "TaxiRideStrategyConfig.9223372048565693557"
  l0:Stop()
end
function export:f_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_12_Out
  l0:In()
end
function export:f_15_Stopped()
  local l0
  self = self._graph
  self:en_8()
  l0 = self[8]
  l0:Stop()
end
function export:f_15_TalkFailed()
  local l0
  self = self._graph
  l0 = self[54]
  l0:In(1)
end
function export:f_15_TalkFinished()
  local l0
  self = self._graph
  l0 = self[54]
  l0:In(0)
end
function export:f_59_Indestructable()
  local l0
  self = self._graph
  self:en_46()
  l0 = self[46]
  l0:Enable()
end
function export:f_40_Out()
  local l0
  self = self._graph
  self:en_26()
  l0 = self[26]
  l0:Stop()
end
function export:f_38_Out()
  local l0
  self = self._graph
  self:en_30()
  l0 = self[30]
  l0:Enable()
end
function export:f_9_TalkFailed()
  local l0
  self = self._graph
  l0 = self[53]
  l0:In(1)
end
function export:f_9_TalkFinished()
  local l0
  self = self._graph
  l0 = self[53]
  l0:In(0)
end
function export:f_42_Out()
  local l0
  self = self._graph
  self:en_24()
  l0 = self[24]
  l0:Stop()
end
function export:f_49_Out_0()
  local l0
  self = self._graph
  self:en_1()
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0:SetAsDestructable()
end
function export:f_49_Out_1()
  local l0
  self = self._graph
  self:en_121()
  l0 = self[121]
  l0:Hide()
end
function export:f_5_TalkFinished()
  local l0
  self = self._graph
  l0 = self[56]
  l0.Input = self.GIC_Users
  l0.Data[0] = self.PlayerEntity
  l0.Data[1] = self.Client
  l0:Add()
end
function export:f_60_Stopped()
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
  l0.Popped = self.f_22_Popped
  l0:Pop()
end
function export:f_25_TalkFailed()
  local l0
  self = self._graph
  l0 = self[23]
  l0:In(1)
end
function export:f_25_TalkFinished()
  local l0
  self = self._graph
  l0 = self[23]
  l0:In(0)
end
function export:f_98_Disabled()
  local l0
  self = self._graph
  self:en_7()
  l0 = self[7]
  l0:Enable()
end
function export:f_98_EnteredArea()
  local l0
  self = self._graph
  l0 = self[43]
  l0:Condition(1)
end
function export:f_53_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_62_Out_0
  l0.Out[1] = self.f_62_Out_1
  l0:In()
end
function export:f_30_ClientConversationFinised()
  local l0
  self = self._graph
  self:en_30()
  l0 = self[30]
  l0:Disable()
end
function export:f_30_ClientPickedUp()
  local l0
  self = self._graph
  l0 = self[30]
  self.PlayerVehicle = l0.Vehicle
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_69_Out
  l0:In()
end
function export:f_30_ClientSpawned()
  local l0
  self = self._graph
  l0 = self[30]
  self.Client = l0.Client
  self:en_32()
  l0 = self[32]
  l0:Enable()
end
function export:f_30_Disabled()
  local l0
  self = self._graph
  l0 = self[5]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372052661645935"
  l0.StartDelay = 0.5
  l0:Start()
end
function export:f_12_Out()
  local l0
  self = self._graph
  self:en_32()
  l0 = self[32]
  l0:Disable()
end
function export:f_62_Out_0()
  local l0
  self = self._graph
  l0 = self[3]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372052661645936"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0:Start()
end
function export:f_62_Out_1()
  local l0
  self = self._graph
  self:en_35()
  l0 = self[35]
  l0:Disable()
end
function export:f_47_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_63_Out
  l0:In()
end
function export:f_65_Out_0()
  local l0
  self = self._graph
  self:en_8()
  l0 = self[8]
  l0:Start()
end
function export:f_65_Out_1()
  local l0
  self = self._graph
  self:en_21()
  l0 = self[21]
  l0:Disable()
end
function export:f_21_Disabled()
  local l0
  self = self._graph
  self:en_98()
  l0 = self[98]
  l0:Disable()
end
function export:f_21_Enabled()
  local l0
  self = self._graph
  self:en_98()
  l0 = self[98]
  l0:Enable()
end
function export:f_10_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic_nocameralock"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_20_Pushed
  l0.Popped = DummyFunction
  l0:Push()
end
function export:f_121_Shown()
  local l0
  self = self._graph
  l0 = self[117]
  l0.Parent = self.TargetCar
  l0.Child = "9223372048628207013"
  l0.CarIcon = 1
  l0:Attach()
end
function export:f_28_Started()
  local l0
  self = self._graph
  l0 = self[51]
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF220",
    item = "Objective_02",
    id = "543434"
  }
  l0.HasObjectiveMarker = 0
  l0:ShowNewObjective()
end
function export:f_28_TalkFailed()
  local l0
  self = self._graph
  l0 = self[45]
  l0:In(1)
end
function export:f_28_TalkFinished()
  local l0
  self = self._graph
  l0 = self[45]
  l0:In(0)
end
function export:f_27_Started()
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
  l0.Popped = self.f_16_Popped
  l0:Pop()
end
function export:f_34_Started()
  local l0
  self = self._graph
  self:en_26()
  l0 = self[26]
  l0:Start()
end
function export:f_34_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  l0.AffectMediaSystem = nil
  l0.VehicleExclusionZone = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = self.f_11_Enabled
  l0.Disabled = DummyFunction
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  l0:Enable()
end
function export:f_44_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_49_Out_0
  l0.Out[1] = self.f_49_Out_1
  l0:In()
end
function export:f_16_Popped()
  local l0
  self = self._graph
  l0 = self[34]
  l0.Seconds = 5
  l0:Start()
end
function export:f_7_Disabled()
  local l0
  self = self._graph
  self:en_118()
  l0 = self[118]
  l0:Disable()
end
function export:f_7_Enabled()
  local l0
  self = self._graph
  self:en_118()
  l0 = self[118]
  l0:Enable()
end
function export:f_37_Started()
  local l0
  self = self._graph
  self:en_35()
  l0 = self[35]
  l0:Enable()
end
function export:f_118_Disabled()
  local l0
  self = self._graph
  l0 = self[124]
  l0.CLO = "9223372048628207011"
  l0:Activate()
end
function export:f_118_EnteredArea()
  local l0
  self = self._graph
  self:en_7()
  l0 = self[7]
  l0:Disable()
end
function export:f_54_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_65_Out_0
  l0.Out[1] = self.f_65_Out_1
  l0:In()
end
function export:f_4_ClientDropOff()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_50_Out_0
  l0.Out[1] = self.f_50_Out_1
  l0:In()
end
function export:f_4_Enabled()
  local l0
  self = self._graph
  l0 = self[61]
  l0.Seconds = 3
  l0:Start()
end
function export:f_39_Out()
  local l0
  self = self._graph
  l0 = self[47]
  l0.LayerName = "Taxi22_Main"
  l0:Load()
end
function export:f_35_Disabled()
  local l0
  self = self._graph
  self:en_101()
  l0 = self[101]
  l0:Disable()
end
function export:f_35_Enabled()
  local l0
  self = self._graph
  self:en_101()
  l0 = self[101]
  l0:Enable()
end
function export:f_45_Out()
  local l0
  self = self._graph
  l0 = self[33]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372055023975316"
  l0.StartDelay = 1
  l0:Start()
end
function export:f_58_Removed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.TargetCar
  l0._graph = self
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.Destructable = DummyFunction
  l0.Indestructable = self.f_59_Indestructable
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
  l0:SetAsIndestructable()
end
function export:f_20_Pushed()
  local l0
  self = self._graph
  self:en_19()
  l0 = self[19]
  l0:Start()
end
function export:f_64_Out()
  local l0
  self = self._graph
  self:en_15()
  l0 = self[15]
  l0:Stop()
end
function export:f_3_Started()
  local l0
  self = self._graph
  l0 = self[43]
  l0:Condition(0)
end
function export:f_31_Out()
  local l0
  self = self._graph
  l0 = self[66]
  l0.LayerName = "Taxi22_Main"
  l0:Unload()
end
function export:f_66_Unloaded()
  local l0
  self = self._graph
  l0 = self[80]
  l0:Succeed()
end
function export:f_63_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[36]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_41_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_42_Out
  l0:In()
end
function export:f_14_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_40_Out
  l0:In()
end
function export:f_14_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[4]
  l0.Client = self.Client
  l0.DropOffIcon = "9223372048565696106"
  l0.LastDestination = 1
  l0.ShowGps = 1
  l0.ManageObjective = 1
  l0.CustomObjective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "ReachSingleDestination",
    id = "20000191"
  }
  l0.Config = "TaxiRideGameplayBrick.9223372057728442535"
  l0:Enable()
end
function export:f_36_PostOut()
  local l0
  self = self._graph
  l0 = self[38]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_77_RewardShown()
  local l0
  self = self._graph
  l0 = self[31]
  l0:ShowMissionComplete()
end
function export:f_22_Popped()
  local l0
  self = self._graph
  l0 = self[77]
  l0.MissionName = self.Mission
  l0:ShowReward()
end
function export:f_48_Out_0()
  local l0
  self = self._graph
  l0 = self[28]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372055023975315"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0:Start()
end
function export:f_48_Out_1()
  local l0
  self = self._graph
  self:en_6()
  l0 = self[6]
  l0:Start()
end
function export:f_56_Added()
  local l0
  self = self._graph
  l0 = self[56]
  self.GIC_Users = l0.Target
  self:en_24()
  l0 = self[24]
  l0:Start()
end
function export:f_56_Out()
  local l0
  self = self._graph
  l0 = self[56]
  self.GIC_Users = l0.Target
end
function export:f_56_Removed()
  local l0
  self = self._graph
  l0 = self[56]
  self.GIC_Users = l0.Target
end
function export:f_11_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonyTargetController.lua")]
  l0.Target = nil
  l0.FelonyType = "Police"
  l0.HeatValue = nil
  l0.FelonyLevel = nil
  l0.ScanSkipDispatchBark = nil
  l0.CustomScanIndex = nil
  l0.CustomScanDetectionRate = nil
  l0.CustomScanTriggerChase = nil
  l0.CustomChaseLevel = nil
  l0.AgentList = nil
  l0.RemoveAgentRestrictions = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.MinHeatSet = DummyFunction
  l0.ScanStarted = DummyFunction
  l0.ChaseStarted = DummyFunction
  l0.SearchStarted = self.f_17_SearchStarted
  l0.ScriptedAgentsAdded = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
  l0:StartSearch()
end
function export:f_8_Stopped()
  local l0
  self = self._graph
  l0 = self[57]
  l0:Input(0)
end
function export:f_8_TalkFailed()
  local l0
  self = self._graph
  l0 = self[57]
  l0:Input(2)
end
function export:f_8_TalkFinished()
  local l0
  self = self._graph
  l0 = self[57]
  l0:Input(1)
end
function export:f_19_Finished()
  local l0
  self = self._graph
  self:en_19()
  l0 = self[19]
  l0:Stop()
end
function export:f_19_Started()
  local l0
  self = self._graph
  l0 = self[25]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372052661645943"
  l0.StartDelay = 1
  l0:Start()
end
function export:f_19_Stopped()
  local l0
  self = self._graph
  l0 = self[44]
  l0:Condition(1)
end
function export:f_101_Disabled()
  local l0
  self = self._graph
  self:en_21()
  l0 = self[21]
  l0:Enable()
end
function export:f_101_EnteredArea()
  local l0
  self = self._graph
  l0 = self[9]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372052661645941"
  l0.StartDelay = 1
  l0:Start()
end
function export:f_46_Disabled()
  local l0
  self = self._graph
  self:en_121()
  l0 = self[121]
  l0:Show()
end
function export:f_46_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_41_Out
  l0:In()
end
function export:f_46_ReachDestination()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_67_Out_0
  l0.Out[1] = self.f_67_Out_1
  l0:In()
end
function export:f_52_RatingReset()
  local l0
  self = self._graph
  l0 = self[37]
  l0.Config = "TaxiRideStrategyConfig.9223372048565693557"
  l0:Start()
end
function export:f_61_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[13]
  l0.Entity = self.Client
  l0.SoundId = "soundbinary/2663361170.bnk"
  l0.Queue = 1
  l0:Start()
end
function export:f_23_Out()
  local l0
  self = self._graph
  l0 = self[18]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372052661645944"
  l0.StartDelay = 1
  l0:Start()
end
function export:f_17_SearchStarted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_48_Out_0
  l0.Out[1] = self.f_48_Out_1
  l0:In()
end
function export:f_32_ClientBailedOut()
  local l0
  self = self._graph
  self:en_29()
  l0 = self[29]
  l0:ClientBailedOut()
end
function export:f_32_ClientDeath()
  local l0
  self = self._graph
  self:en_29()
  l0 = self[29]
  l0:ClientDead()
end
function export:f_32_PlayerAbandonedVehicle()
  local l0
  self = self._graph
  self:en_29()
  l0 = self[29]
  l0:PlayerAbandonedVehicle()
end
function export:f_32_VehicleUnusable()
  local l0
  self = self._graph
  self:en_29()
  l0 = self[29]
  l0:VehicleUnusable()
end
function export:f_57_Out()
  local l0
  self = self._graph
  l0 = self[68]
  l0:In(0)
end
function export:f_6_Evaded()
  local l0
  self = self._graph
  self:en_6()
  l0 = self[6]
  l0:Stop()
end
function export:f_6_Stopped()
  local l0
  self = self._graph
  l0 = self[14]
  l0.Seconds = 1
  l0:Start()
end
function export:f_43_Out()
  local l0
  self = self._graph
  self:en_15()
  l0 = self[15]
  l0:Start()
end
function export:f_69_Out()
  local l0
  self = self._graph
  l0 = self[52]
  l0.MissionName = self.Mission
  l0:ResetRating()
end
function export:f_18_TalkFinished()
  local l0
  self = self._graph
  l0 = self[44]
  l0:Condition(0)
end
function export:f_124_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[124]
  self.TargetCar = l0.UserID
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  l0.HackableEntity = self.TargetCar
  l0.HackableEntityList = nil
  l0.HackCategoryType[0] = "LockLeftWheel"
  l0.HackCategoryType[1] = "LockRightWheel"
  l0.HackCategoryType[2] = "EngineOverheat"
  l0.HackCategoryType[3] = "LockBrakes"
  l0._graph = self
  l0._DynamicAnchors = {HackCategoryType = 4}
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = DummyFunction
  l0.Removed = self.f_58_Removed
  l0.RemovedAll = DummyFunction
  l0.HackingDisabled = DummyFunction
  l0:Remove()
end
function export:f_68_Out()
  local l0
  self = self._graph
  l0 = self[10]
  l0:Condition(0)
end
function export:f_1_Destructable()
  local l0
  self = self._graph
  self:en_1()
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0:ExplodeVehicle()
end
function export:f_1_VehicleExploded()
  local l0
  self = self._graph
  l0 = self[27]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372055023975314"
  l0.StartDelay = 0.1
  l0:Start()
end
function export:f_117_Attached()
  local l0
  self = self._graph
  l0 = self[10]
  l0:Condition(1)
end
function export:en_15()
  local l0
  l0 = self[15]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372052661645942"
  l0.StartDelay = 1
end
function export:en_98()
  local l0
  l0 = self[98]
  l0.SearchArea = "9223372048565701989"
  l0.SearchRadius = 60
end
function export:en_24()
  local l0
  l0 = self[24]
  l0.Users = self.GIC_Users
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
end
function export:en_30()
  local l0
  l0 = self[30]
  l0.ClientClo = "9223372048565696104"
  l0.PickUpIcon = "9223372048565696106"
  l0.Config = "TaxiRideGameplayBrick.9223372057728442535"
end
function export:en_21()
  local l0
  l0 = self[21]
  l0.Client = self.Client
  l0.DropOffIcon = "9223372048565701987"
  l0.ShowGps = 1
  l0.Config = "TaxiRideGameplayBrick.9223372057728442535"
end
function export:en_121()
  local l0
  l0 = self[121]
  l0.MapPoint = "9223372048628207013"
end
function export:en_7()
  local l0
  l0 = self[7]
  l0.Client = self.Client
  l0.DropOffIcon = "9223372048628207015"
  l0.ShowGps = 1
  l0.Config = "TaxiRideGameplayBrick.9223372057728442535"
end
function export:en_118()
  local l0
  l0 = self[118]
  l0.SearchArea = "9223372048628207007"
  l0.SearchRadius = 100
end
function export:en_35()
  local l0
  l0 = self[35]
  l0.Client = self.Client
  l0.DropOffIcon = "9223372048628204474"
  l0.ShowGps = 1
  l0.Config = "TaxiRideGameplayBrick.9223372057728442535"
end
function export:en_29()
  local l0
  l0 = self[29]
  l0.MissionName = self.Mission
  l0.LayerName = "Taxi22_Main"
  l0.StrategyConfig = "TaxiRideStrategyConfig.9223372048565693557"
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Vehicle = self.PlayerVehicle
  l0.Conversation = "ConversationSetting.9223372048760149956"
end
function export:en_8()
  local l0
  l0 = self[8]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372052661645937"
  l0.StartDelay = 1
end
function export:en_19()
  local l0
  l0 = self[19]
  l0.Target = self.TargetCar
  l0.Duration = 5
end
function export:en_101()
  local l0
  l0 = self[101]
  l0.SearchArea = "9223372048628204472"
  l0.SearchRadius = 60
end
function export:en_46()
  local l0
  l0 = self[46]
  l0.Client = self.Client
  l0.DropOffIcon = "9223372048628207013"
  l0.ShowGps = 1
  l0.Config = "TaxiRideGameplayBrick.9223372057728442535"
end
function export:en_32()
  local l0
  l0 = self[32]
  l0.Client = self.Client
  l0.Config = "TaxiRideGameplayBrick.9223372057728442535"
end
function export:en_26()
  local l0
  l0 = self[26]
  l0.Users = self.GIC_Users
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
end
function export:en_6()
  local l0
  l0 = self[6]
  l0.FelonyType = "Police"
  l0.CheckNow = 1
end
function export:en_1()
  local l0
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.TargetCar
  l0._graph = self
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.Destructable = self.f_1_Destructable
  l0.Indestructable = DummyFunction
  l0.Deflatable = DummyFunction
  l0.Undeflatable = DummyFunction
  l0.Unmovable = DummyFunction
  l0.Movable = DummyFunction
  l0.EngineBroken = DummyFunction
  l0.EngineShutDown = DummyFunction
  l0.EngineStarted = DummyFunction
  l0.VehicleExploded = self.f_1_VehicleExploded
  l0.VehicleAlarmHackOn = DummyFunction
  l0.VehicleAlarmHackOff = DummyFunction
end
_compilerVersion = 4
