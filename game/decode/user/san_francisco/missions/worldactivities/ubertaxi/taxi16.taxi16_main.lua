export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/GPS3DController.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CompareFloats_v2.lua")
  cbox:RegisterBox("domino/System/DPadHackableController.lua")
  cbox:RegisterBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  cbox:RegisterBox("domino/System/FloatingVehicleBhvController.lua")
  cbox:RegisterBox("domino/System/GameplayInteractionController.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/GetDistance.lua")
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
  cbox:RegisterBox("domino/System/ProximityMonitor.lua")
  cbox:RegisterBox("domino/System/SetActionMap_v2.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/Library/common/SnapAndBind.SnapAndBind.lua")
  cbox:RegisterBox("domino/System/SwitchOutput_v3.lua")
  cbox:RegisterBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.lua")
  cbox:RegisterBox("domino/System/TaxiRatingController.lua")
  cbox:RegisterBox("domino/System/TaxiRidePickUpController.lua")
  cbox:RegisterBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  cbox:RegisterBox("domino/System/TaxiRideVehicleMonitor.lua")
  cbox:RegisterBox("domino/System/TaxiStrategiesController.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TutorialController.lua")
  cbox:RegisterBox("domino/System/VehicleBhvMonitor.lua")
  cbox:RegisterBox("domino/System/VehicleController.lua")
  cbox:RegisterBox("domino/System/VehicleSeatingController.lua")
  cbox:LoadResource("soundbinary/448469820.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/4034559296.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2720551685.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3580231226.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.Boat1 = nil
  self.Driver1 = nil
  self.Boat2 = nil
  self.Driver2 = nil
  self.Mission = "MissionList.9223372048242035699"
  self.Client = nil
  self.PlayerVehicle = nil
  self.ActorsList = {}
  self.PathPointNumber = 0
  self.PP2 = 0
  self.TempDistancePlayer = 0
  self.TempDistanceBoat = 0
  self[68] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[68]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_68_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[63] = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self[63]
  l0._graph = self
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = self.f_63_RatingReset
  l0.RewardShown = DummyFunction
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self[30] = cbox:CreateBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self[30]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ReachDestination = self.f_30_ReachDestination
  l0.ClientDropOff = DummyFunction
  self[64] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[64]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_64_Out
  self[73] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[73]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_73_Out
  l0.ResetOut = DummyFunction
  self[12] = cbox:CreateBox("domino/System/FloatingVehicleBhvController.lua")
  l0 = self[12]
  l0._graph = self
  l0.StartCompleted = self.f_12_StartCompleted
  l0.StopCompleted = DummyFunction
  self[34] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[34]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_34_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_34_TalkFailed
  self[6] = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self[6]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_6_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self[102] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[102]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_102_Out
  self[90] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[90]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_90_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_90_TalkFailed
  self[24] = cbox:CreateBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self[24]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_24_Disabled
  l0.ReachDestination = self.f_24_ReachDestination
  l0.ClientDropOff = DummyFunction
  self[96] = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self[96]
  l0._graph = self
  l0.Started = self.f_96_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self[36] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[36]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_36_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_36_TalkFailed
  self[21] = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self[21]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_21_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self[1] = cbox:CreateBox("domino/System/VehicleBhvMonitor.lua")
  l0 = self[1]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_1_Disabled
  l0.Stuck = DummyFunction
  l0.Broken = DummyFunction
  l0.TargetDetected = DummyFunction
  l0.InLOS = DummyFunction
  l0.ReacquireLOSTimerExpired = DummyFunction
  l0.LostLOSTimerExpired = DummyFunction
  l0.SuspiciousTargetAction = DummyFunction
  l0.SpecificPathPointReached = self.f_1_SpecificPathPointReached
  l0.PathPointReached = DummyFunction
  l0.EndPathPointReached = self.f_1_EndPathPointReached
  l0.InRange = DummyFunction
  l0.WarningRange = DummyFunction
  l0.OutsideRange = DummyFunction
  l0.OutsideTimerExpired = DummyFunction
  self[67] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[67]
  l0._graph = self
  l0.Started = self.f_67_Started
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_67_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_67_TalkFailed
  self[59] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[59]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_59_Out
  self[62] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[62]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_62_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_62_TalkFailed
  self[5] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[5]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_5_OnUserInPlace
  self[48] = cbox:CreateBox("domino/System/VehicleBhvMonitor.lua")
  l0 = self[48]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_48_Disabled
  l0.Stuck = DummyFunction
  l0.Broken = DummyFunction
  l0.TargetDetected = DummyFunction
  l0.InLOS = DummyFunction
  l0.ReacquireLOSTimerExpired = DummyFunction
  l0.LostLOSTimerExpired = DummyFunction
  l0.SuspiciousTargetAction = DummyFunction
  l0.SpecificPathPointReached = self.f_48_SpecificPathPointReached
  l0.PathPointReached = DummyFunction
  l0.EndPathPointReached = DummyFunction
  l0.InRange = DummyFunction
  l0.WarningRange = DummyFunction
  l0.OutsideRange = DummyFunction
  l0.OutsideTimerExpired = DummyFunction
  self[17] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[17]
  l0._graph = self
  l0.Out = self.f_17_Out
  l0.MessageCompleted = DummyFunction
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
  self[83] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[83]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_83_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[51] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[51]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_51_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[41] = cbox:CreateBox("domino/System/VehicleBhvMonitor.lua")
  l0 = self[41]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_41_Disabled
  l0.Stuck = DummyFunction
  l0.Broken = DummyFunction
  l0.TargetDetected = DummyFunction
  l0.InLOS = DummyFunction
  l0.ReacquireLOSTimerExpired = DummyFunction
  l0.LostLOSTimerExpired = DummyFunction
  l0.SuspiciousTargetAction = DummyFunction
  l0.SpecificPathPointReached = self.f_41_SpecificPathPointReached
  l0.PathPointReached = DummyFunction
  l0.EndPathPointReached = self.f_41_EndPathPointReached
  l0.InRange = DummyFunction
  l0.WarningRange = DummyFunction
  l0.OutsideRange = DummyFunction
  l0.OutsideTimerExpired = DummyFunction
  self[78] = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self[78]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = self.f_78_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[84] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[84]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_84_Out
  self[56] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[56]
  l0._graph = self
  l0.Started = self.f_56_Started
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_56_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_56_TalkFailed
  self[103] = cbox:CreateBox("domino/System/GetDistance.lua")
  l0 = self[103]
  l0._graph = self
  l0.Out = self.f_103_Out
  l0.OutViaRoad = self.f_103_OutViaRoad
  self[15] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[15]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_15_PostOut
  self[10] = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self[10]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_10_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
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
  self[52] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[52]
  l0._graph = self
  self[101] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[101]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_101_Out
  self[66] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[66]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[11] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[11]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_11_Out
  self[61] = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self[61]
  l0._graph = self
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = DummyFunction
  l0.RewardShown = self.f_61_RewardShown
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self[70] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[70]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_70_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[65] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[65]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_65_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[20] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[20]
  l0._graph = self
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_20_Added
  l0.Removed = self.f_20_Removed
  l0.Out = self.f_20_Out
  self[22] = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self[22]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_22_Started
  l0.Stopped = DummyFunction
  self[80] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[80]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_80_Out
  self[76] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[76]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_76_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[97] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[97]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_97_Out
  self[87] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[87]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_87_Out
  self[95] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[95]
  l0._graph = self
  l0.Out = self.f_95_Out
  l0.MessageCompleted = DummyFunction
  self[8] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[8]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_8_OnUserInPlace
  self[9] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[9]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_9_OnUserInPlace
  self[7] = cbox:CreateBox("domino/System/TaxiRidePickUpController.lua")
  l0 = self[7]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_7_Disabled
  l0.ClientSpawned = self.f_7_ClientSpawned
  l0.ClientPickedUp = self.f_7_ClientPickedUp
  l0.ClientConversationFinised = self.f_7_ClientConversationFinised
  self[100] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[100]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_100_Out
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
  self[35] = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self[35]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_35_Disabled
  l0.EnterRadius = self.f_35_EnterRadius
  l0.ExitRadius = self.f_35_ExitRadius
  self[39] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[39]
  l0._graph = self
  l0.Out = self.f_39_Out
  l0.MessageCompleted = DummyFunction
  self[75] = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self[75]
  l0._graph = self
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = DummyFunction
  l0.RewardShown = DummyFunction
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = self.f_75_RatingRemoved
  self[19] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[19]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[3] = cbox:CreateBox("domino/System/FloatingVehicleBhvController.lua")
  l0 = self[3]
  l0._graph = self
  l0.StartCompleted = self.f_3_StartCompleted
  l0.StopCompleted = DummyFunction
  self[4] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[4]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_4_OnUserInPlace
  self[27] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[27]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_27_Out
  self[23] = cbox:CreateBox("domino/System/TaxiRideVehicleMonitor.lua")
  l0 = self[23]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ClientDeath = self.f_23_ClientDeath
  l0.VehicleUnusable = self.f_23_VehicleUnusable
  l0.ClientBailedOut = self.f_23_ClientBailedOut
  l0.PlayerAbandonedVehicle = self.f_23_PlayerAbandonedVehicle
  self[92] = cbox:CreateBox("domino/Library/common/SnapAndBind.SnapAndBind.lua")
  l0 = self[92]
  l0._graph = self
  l0.Attached = self.f_92_Attached
  self[46] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[46]
  l0._graph = self
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_46_DisplayRequested
  l0.NotificationHidden = self.f_46_NotificationHidden
  l0.MessageCompleted = DummyFunction
  self[45] = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self[45]
  l0._graph = self
  l0.Shown = self.f_45_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[69] = cbox:CreateBox("domino/Library/common/SnapAndBind.SnapAndBind.lua")
  l0 = self[69]
  l0._graph = self
  l0.Attached = self.f_69_Attached
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
  self[74] = cbox:CreateBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self[74]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_74_Disabled
  l0.ReachDestination = self.f_74_ReachDestination
  l0.ClientDropOff = self.f_74_ClientDropOff
  self[81] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[81]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_81_Unloaded
  l0.Reseted = DummyFunction
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
  self[18] = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self[18]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = self.f_18_Paused
  l0.Resumed = DummyFunction
  self[16] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[16]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_16_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[88] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[88]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_88_Out
  self[72] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[72]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_72_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[85] = cbox:CreateBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.lua")
  l0 = self[85]
  l0._graph = self
  self[82] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[82]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_82_Out
  self[60] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[60]
  l0._graph = self
  l0.Loaded = self.f_60_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[33] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[33]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_33_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[77] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[77]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_77_Out
  self[25] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[25]
  l0._graph = self
  l0.Out = self.f_25_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[57] = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self[57]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_57_Started
  l0.Stopped = DummyFunction
  self[79] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[79]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_79_Out
  self[104] = cbox:CreateBox("domino/System/GetDistance.lua")
  l0 = self[104]
  l0._graph = self
  l0.Out = self.f_104_Out
  l0.OutViaRoad = self.f_104_OutViaRoad
  self[99] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[99]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_99_Out
  self[42] = cbox:CreateBox("domino/System/SwitchOutput_v3.lua")
  l0 = self[42]
  l0._graph = self
  l0._DynamicAnchors = {Output = 4}
  l0.Out = DummyFunction
  l0.Output[0] = self.f_42_Output_0
  l0.Output[1] = self.f_42_Output_1
  l0.Output[2] = self.f_42_Output_2
  l0.Output[3] = self.f_42_Output_3
  l0.None = DummyFunction
  l0.WasReset = DummyFunction
  self[89] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[89]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_89_Out
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
  l0 = self[27]
  l0:Input(1)
end
function export:In()
  local l0
  l0 = self[27]
  l0:Input(0)
end
function export:f_105_A_gt_B()
  local l0
  self = self._graph
  l0 = self[42]
  l0:In()
end
function export:f_68_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[70]
  l0.Entity = self.Client
  l0.SoundId = "soundbinary/4034559296.bnk"
  l0:Start()
end
function export:f_63_RatingReset()
  local l0
  self = self._graph
  l0 = self[96]
  l0.Config = "TaxiRideStrategyConfig.9223372048288505671"
  l0:Start()
end
function export:f_93_Popped()
  local l0
  self = self._graph
  self:en_74()
  l0 = self[74]
  l0:Enable()
end
function export:f_30_ReachDestination()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_49_Out_0
  l0.Out[1] = self.f_49_Out_1
  l0:In()
end
function export:f_64_Out()
  local l0
  self = self._graph
  l0 = self[40]
  l0.Entity = self.Client
  l0.SoundId = "soundbinary/3580231226.bnk"
  l0:Start()
end
function export:f_108_RemovedAll()
  local l0
  self = self._graph
  l0 = self[11]
  l0:Condition(1)
end
function export:f_73_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_37_Out_0
  l0.Out[1] = self.f_37_Out_1
  l0:In()
end
function export:f_12_StartCompleted()
  local l0
  self = self._graph
  self:en_41()
  l0 = self[41]
  l0:Enable()
end
function export:f_34_TalkFailed()
  local l0
  self = self._graph
  l0 = self[89]
  l0:Input(1)
end
function export:f_34_TalkFinished()
  local l0
  self = self._graph
  l0 = self[89]
  l0:Input(0)
end
function export:f_6_AssignCompleted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  l0.HackableEntity = self.Boat1
  l0.HackableEntityList = nil
  l0.HackCategoryType[0] = nil
  l0.HackCategoryType[1] = nil
  l0._graph = self
  l0._DynamicAnchors = {HackCategoryType = 2}
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = DummyFunction
  l0.Removed = DummyFunction
  l0.RemovedAll = self.f_107_RemovedAll
  l0.HackingDisabled = DummyFunction
  l0:RemoveAll()
end
function export:f_102_Out()
  local l0
  self = self._graph
  l0 = self[92]
  l0.Parent = self.PlayerVehicle
  l0.Child = "9223372049053023459"
  l0.CarIcon = 1
  l0:Attach()
end
function export:f_90_TalkFailed()
  local l0
  self = self._graph
  l0 = self[102]
  l0:Input(1)
end
function export:f_90_TalkFinished()
  local l0
  self = self._graph
  l0 = self[102]
  l0:Input(0)
end
function export:f_47_Out()
  local l0
  self = self._graph
  self:en_35()
  l0 = self[35]
  l0:Disable()
end
function export:f_24_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic_nocameralock"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_86_Pushed
  l0.Popped = DummyFunction
  l0:Push()
end
function export:f_24_ReachDestination()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_54_Out_0
  l0.Out[1] = self.f_54_Out_1
  l0:In()
end
function export:f_28_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[15]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_96_Started()
  local l0
  self = self._graph
  l0 = self[65]
  l0.Seconds = 7
  l0:Start()
end
function export:f_36_TalkFailed()
  local l0
  self = self._graph
  l0 = self[88]
  l0:Input(1)
end
function export:f_36_TalkFinished()
  local l0
  self = self._graph
  l0 = self[88]
  l0:Input(0)
end
function export:f_21_Stopped()
  local l0
  self = self._graph
  l0 = self[39]
  l0:ShowMissionComplete()
end
function export:f_1_Disabled()
  local l0
  self = self._graph
  l0 = self[78]
  l0.MapPoint = "9223372048288505666"
  l0.LocText = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "Follow",
    id = "417039"
  }
  l0:Hide()
end
function export:f_1_EndPathPointReached()
  local l0
  self = self._graph
  l0 = self[80]
  l0:Input(0)
end
function export:f_1_SpecificPathPointReached()
  local l0
  self = self._graph
  l0 = self[80]
  l0:Input(1)
end
function export:f_67_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_14_Out_0
  l0.Out[1] = self.f_14_Out_1
  l0:In()
end
function export:f_67_TalkFailed()
  local l0
  self = self._graph
  l0 = self[100]
  l0:Input(1)
end
function export:f_67_TalkFinished()
  local l0
  self = self._graph
  l0 = self[100]
  l0:Input(0)
end
function export:f_59_Out()
  local l0
  self = self._graph
  l0 = self[67]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372052661645925"
  l0.StartDelay = 1
  l0:Start()
end
function export:f_62_TalkFailed()
  local l0
  self = self._graph
  l0 = self[84]
  l0:Input(1)
end
function export:f_62_TalkFinished()
  local l0
  self = self._graph
  l0 = self[84]
  l0:Input(0)
end
function export:f_31_Indestructable()
  local l0
  self = self._graph
  l0 = self[9]
  l0.CLO = "9223372049053023452"
  l0:Activate()
end
function export:f_5_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[5]
  self.Driver1 = l0.UserID
  l0 = self[6]
  l0.Vehicle = self.Boat1
  l0.Pawn = self.Driver1
  l0.CanAutoSwitchToDriver = 1
  l0:Assign()
end
function export:f_48_Disabled()
  local l0
  self = self._graph
  l0 = self[97]
  l0:Condition(1)
end
function export:f_48_SpecificPathPointReached()
  local l0
  self = self._graph
  self:en_48()
  l0 = self[48]
  l0:Disable()
end
function export:f_17_Out()
  local l0
  self = self._graph
  l0 = self[63]
  l0.MissionName = self.Mission
  l0:ResetRating()
end
function export:f_83_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[66]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372052661645921"
  l0.StartDelay = 0.01
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0:Start()
end
function export:f_38_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_32_Out
  l0:In()
end
function export:f_51_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[62]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372052661645917"
  l0.StartDelay = 0.01
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0:Start()
end
function export:f_41_Disabled()
  local l0
  self = self._graph
  l0 = self[77]
  l0:Input(1)
end
function export:f_41_EndPathPointReached()
  local l0
  self = self._graph
  l0 = self[79]
  l0:Input(0)
end
function export:f_41_SpecificPathPointReached()
  local l0
  self = self._graph
  l0 = self[79]
  l0:Input(1)
end
function export:f_78_Hidden()
  local l0
  self = self._graph
  l0 = self[77]
  l0:Input(0)
end
function export:f_84_Out()
  local l0
  self = self._graph
  l0 = self[16]
  l0.Seconds = 1
  l0:Start()
end
function export:f_56_Started()
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
  l0.Popped = self.f_55_Popped
  l0:Pop()
end
function export:f_56_TalkFailed()
  local l0
  self = self._graph
  l0 = self[101]
  l0:Input(1)
end
function export:f_56_TalkFinished()
  local l0
  self = self._graph
  l0 = self[101]
  l0:Input(0)
end
function export:f_103_Out()
  local l0
  self = self._graph
  l0 = self[103]
  self.TempDistancePlayer = l0.Distance
  l0 = self[104]
  l0.Entity1 = "9223372072024838062"
  l0.Entity2 = self.Boat1
  l0:Distance2D()
end
function export:f_103_OutViaRoad()
  local l0
  self = self._graph
  l0 = self[103]
  self.TempDistancePlayer = l0.Distance
end
function export:f_15_PostOut()
  local l0
  self = self._graph
  l0 = self[25]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_10_AssignCompleted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  l0.HackableEntity = self.Boat2
  l0.HackableEntityList = nil
  l0.HackCategoryType[0] = nil
  l0.HackCategoryType[1] = nil
  l0._graph = self
  l0._DynamicAnchors = {HackCategoryType = 2}
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = DummyFunction
  l0.Removed = DummyFunction
  l0.RemovedAll = self.f_108_RemovedAll
  l0.HackingDisabled = DummyFunction
  l0:RemoveAll()
end
function export:f_26_TalkFailed()
  local l0
  self = self._graph
  l0 = self[99]
  l0:Input(1)
end
function export:f_26_TalkFinished()
  local l0
  self = self._graph
  l0 = self[99]
  l0:Input(0)
end
function export:f_101_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_58_Out
  l0:In()
end
function export:f_32_Out()
  local l0
  self = self._graph
  self:en_23()
  l0 = self[23]
  l0:Disable()
end
function export:f_11_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_13_Out_0
  l0.Out[1] = self.f_13_Out_1
  l0:In()
end
function export:f_37_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_2_Out
  l0:In()
end
function export:f_37_Out_1()
  local l0
  self = self._graph
  l0 = self[30]
  l0.Client = self.Client
  l0.DropOffIcon = "9223372049053023459"
  l0.ShowGps = 1
  l0.ManageObjective = 1
  l0.CustomObjective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF160",
    item = "Objective_Reach_Location",
    id = "630505"
  }
  l0.Config = "TaxiRideGameplayBrick.9223372058001194753"
  l0:Enable()
end
function export:f_61_RewardShown()
  local l0
  self = self._graph
  l0 = self[21]
  l0.Config = "TaxiRideStrategyConfig.9223372048288505671"
  l0:Stop()
end
function export:f_70_Finished()
  local l0
  self = self._graph
  self:en_22()
  l0 = self[22]
  l0:Start()
end
function export:f_65_TimeElapsed()
  local l0
  self = self._graph
  self:en_35()
  l0 = self[35]
  l0:Enable()
end
function export:f_20_Added()
  local l0
  self = self._graph
  l0 = self[20]
  self.ActorsList = l0.Target
  self:en_57()
  l0 = self[57]
  l0:Start()
end
function export:f_20_Out()
  local l0
  self = self._graph
  l0 = self[20]
  self.ActorsList = l0.Target
end
function export:f_20_Removed()
  local l0
  self = self._graph
  l0 = self[20]
  self.ActorsList = l0.Target
end
function export:f_22_Started()
  local l0
  self = self._graph
  l0 = self[51]
  l0.Seconds = 7
  l0:Start()
end
function export:f_55_Popped()
  local l0
  self = self._graph
  l0 = self[17]
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF160",
    item = "Objective_Follow_Boat",
    id = "630504"
  }
  l0.HasObjectiveMarker = 0
  l0:ShowNewObjective()
end
function export:f_80_Out()
  local l0
  self = self._graph
  self:en_1()
  l0 = self[1]
  l0:Disable()
end
function export:f_76_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[34]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372052661645920"
  l0.StartDelay = 0.01
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0:Start()
end
function export:f_97_Out()
  local l0
  self = self._graph
  l0 = self[45]
  l0.MapPoint = "9223372048288505666"
  l0.LocText = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "Follow",
    id = "417039"
  }
  l0:Show()
end
function export:f_87_Out()
  local l0
  self = self._graph
  l0 = self[72]
  l0.Seconds = 5
  l0:Start()
end
function export:f_95_Out()
  local l0
  self = self._graph
  l0 = self[59]
  l0:Condition(1)
end
function export:f_8_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[8]
  self.Boat2 = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.Boat2
  l0._graph = self
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.Destructable = DummyFunction
  l0.Indestructable = self.f_31_Indestructable
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
function export:f_107_RemovedAll()
  local l0
  self = self._graph
  l0 = self[11]
  l0:Condition(0)
end
function export:f_9_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[9]
  self.Driver2 = l0.UserID
  l0 = self[10]
  l0.Vehicle = self.Boat2
  l0.Pawn = self.Driver2
  l0.CanAutoSwitchToDriver = 1
  l0:Assign()
end
function export:f_98_Disabled()
  local l0
  self = self._graph
  self:en_24()
  l0 = self[24]
  l0:Disable()
end
function export:f_98_Enabled()
  local l0
  self = self._graph
  self:en_24()
  l0 = self[24]
  l0:Enable()
end
function export:f_7_ClientConversationFinised()
  local l0
  self = self._graph
  self:en_7()
  l0 = self[7]
  l0:Disable()
end
function export:f_7_ClientPickedUp()
  local l0
  self = self._graph
  l0 = self[7]
  self.PlayerVehicle = l0.Vehicle
  self:en_98()
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0:Enable()
end
function export:f_7_ClientSpawned()
  local l0
  self = self._graph
  l0 = self[7]
  self.Client = l0.Client
  self:en_23()
  l0 = self[23]
  l0:Enable()
end
function export:f_7_Disabled()
  local l0
  self = self._graph
  l0 = self[20]
  l0.Input = self.ActorsList
  l0.Data[0] = self.Client
  l0.Data[1] = self.PlayerEntity
  l0:Add()
end
function export:f_100_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_94_Out
  l0:In()
end
function export:f_50_TalkFailed()
  local l0
  self = self._graph
  l0 = self[87]
  l0:Input(1)
end
function export:f_50_TalkFinished()
  local l0
  self = self._graph
  l0 = self[87]
  l0:Input(0)
end
function export:f_35_Disabled()
  local l0
  self = self._graph
  l0 = self[82]
  l0:Input(0)
end
function export:f_35_EnterRadius()
  local l0
  self = self._graph
  l0 = self[82]
  l0:Input(1)
end
function export:f_35_ExitRadius()
  local l0
  self = self._graph
  self:en_46()
  l0 = self[46]
  l0:Display()
end
function export:f_39_Out()
  local l0
  self = self._graph
  l0 = self[81]
  l0.LayerName = "Taxi16_Main"
  l0:Unload()
end
function export:f_75_RatingRemoved()
  local l0
  self = self._graph
  l0 = self[103]
  l0.Entity1 = "9223372072024838062"
  l0.Entity2 = self.PlayerVehicle
  l0:Distance2D()
end
function export:f_3_StartCompleted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_71_Out_0
  l0.Out[1] = self.f_71_Out_1
  l0:In()
end
function export:f_4_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[4]
  self.Boat1 = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.Boat1
  l0._graph = self
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.Destructable = DummyFunction
  l0.Indestructable = self.f_29_Indestructable
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
function export:f_27_Out()
  local l0
  self = self._graph
  l0 = self[60]
  l0.LayerName = "Taxi16_Main"
  l0:Load()
end
function export:f_23_ClientBailedOut()
  local l0
  self = self._graph
  self:en_85()
  l0 = self[85]
  l0:ClientBailedOut()
end
function export:f_23_ClientDeath()
  local l0
  self = self._graph
  self:en_85()
  l0 = self[85]
  l0:ClientDead()
end
function export:f_23_PlayerAbandonedVehicle()
  local l0
  self = self._graph
  self:en_85()
  l0 = self[85]
  l0:PlayerAbandonedVehicle()
end
function export:f_23_VehicleUnusable()
  local l0
  self = self._graph
  self:en_85()
  l0 = self[85]
  l0:VehicleUnusable()
end
function export:f_92_Attached()
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
  l0.Popped = self.f_93_Popped
  l0:Pop()
end
function export:f_91_Pushed()
  local l0
  self = self._graph
  l0 = self[90]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372052661645923"
  l0.StartDelay = 0.01
  l0:Start()
end
function export:f_49_Out_0()
  local l0
  self = self._graph
  self:en_22()
  l0 = self[22]
  l0:Stop()
end
function export:f_49_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic_nocameralock"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_91_Pushed
  l0.Popped = DummyFunction
  l0:Push()
end
function export:f_46_DisplayRequested()
  local l0
  self = self._graph
  self:en_53()
  l0 = self[53]
  l0:Start()
end
function export:f_46_NotificationHidden()
  local l0
  self = self._graph
  self:en_53()
  l0 = self[53]
  l0:Stop()
end
function export:f_45_Shown()
  local l0
  self = self._graph
  l0 = self[56]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372052661645916"
  l0.StartDelay = 0.01
  l0:Start()
end
function export:f_106_Out_0()
  local l0
  self = self._graph
  self:en_74()
  l0 = self[74]
  l0:Disable()
end
function export:f_106_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_38_Out
  l0:In()
end
function export:f_69_Attached()
  local l0
  self = self._graph
  l0 = self[5]
  l0.CLO = "9223372049053023453"
  l0:Activate()
end
function export:f_86_Pushed()
  local l0
  self = self._graph
  l0 = self[95]
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "WaitForInstructions",
    id = "333924"
  }
  l0.HasObjectiveMarker = 0
  l0:ShowNewObjective()
end
function export:f_53_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[75]
  l0.MissionName = self.Mission
  l0.RatingAmount = 1
  l0:RemoveRating()
end
function export:f_74_ClientDropOff()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_106_Out_0
  l0.Out[1] = self.f_106_Out_1
  l0:In()
end
function export:f_74_Disabled()
  local l0
  self = self._graph
  l0 = self[61]
  l0.MissionName = self.Mission
  l0:ShowReward()
end
function export:f_74_ReachDestination()
  local l0
  self = self._graph
  l0 = self[18]
  l0.Config = "TaxiRideStrategyConfig.9223372048288505671"
  l0:Pause()
end
function export:f_13_Out_0()
  local l0
  self = self._graph
  l0 = self[3]
  l0.FloatingVehicle = self.Boat1
  l0.Target = self.PlayerVehicle
  l0.PathOrPos = "9223372049053023444"
  l0.Config = "FloatingVehicleBhvSetup.9223372048779321882"
  l0:Start()
end
function export:f_13_Out_1()
  local l0
  self = self._graph
  l0 = self[12]
  l0.FloatingVehicle = self.Boat2
  l0.Target = self.PlayerVehicle
  l0.PathOrPos = "9223372049053023448"
  l0.Config = "FloatingVehicleBhvSetup.9223372048779321882"
  l0:Start()
end
function export:f_81_Unloaded()
  local l0
  self = self._graph
  l0 = self[52]
  l0:Succeed()
end
function export:f_18_Paused()
  local l0
  self = self._graph
  l0 = self[33]
  l0.User = self.Driver1
  l0:UnspawnUser()
end
function export:f_16_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[50]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372052661645918"
  l0.StartDelay = 0.01
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0:Start()
end
function export:f_88_Out()
  local l0
  self = self._graph
  l0 = self[76]
  l0.Seconds = 1
  l0:Start()
end
function export:f_72_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[36]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372052661645919"
  l0.StartDelay = 0.01
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0:Start()
end
function export:f_29_Indestructable()
  local l0
  self = self._graph
  l0 = self[69]
  l0.Parent = self.Boat1
  l0.Child = "9223372048288505666"
  l0:Attach()
end
function export:f_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_47_Out
  l0:In()
end
function export:f_82_Out()
  local l0
  self = self._graph
  self:en_46()
  l0 = self[46]
  l0:HideNotification()
end
function export:f_60_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_28_Out
  l0:In()
end
function export:f_58_Out()
  local l0
  self = self._graph
  l0 = self[68]
  l0:Start()
end
function export:f_33_UnspawnedUser()
  local l0
  self = self._graph
  l0 = self[19]
  l0.User = self.Driver2
  l0:UnspawnUser()
end
function export:f_77_Out()
  local l0
  self = self._graph
  l0 = self[73]
  l0:In(0)
end
function export:f_25_Out()
  local l0
  self = self._graph
  self:en_7()
  l0 = self[7]
  l0:Enable()
end
function export:f_94_Out()
  local l0
  self = self._graph
  l0 = self[97]
  l0:Condition(0)
end
function export:f_57_Started()
  local l0
  self = self._graph
  l0 = self[26]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372052661645924"
  l0.StartDelay = 0.01
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0:Start()
end
function export:f_14_Out_0()
  local l0
  self = self._graph
  l0 = self[4]
  l0.CLO = "9223372049053023450"
  l0:Activate()
end
function export:f_14_Out_1()
  local l0
  self = self._graph
  l0 = self[8]
  l0.CLO = "9223372049053023451"
  l0:Activate()
end
function export:f_54_Out_0()
  local l0
  self = self._graph
  self:en_57()
  l0 = self[57]
  l0:Stop()
end
function export:f_54_Out_1()
  local l0
  self = self._graph
  self:en_98()
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0:Disable()
end
function export:f_79_Out()
  local l0
  self = self._graph
  self:en_41()
  l0 = self[41]
  l0:Disable()
end
function export:f_104_Out()
  local l0
  self = self._graph
  l0 = self[104]
  self.TempDistanceBoat = l0.Distance
  l0 = Boxes[PathID("domino/System/CompareFloats_v2.lua")]
  l0.A = self.TempDistancePlayer
  l0.B = self.TempDistanceBoat
  l0.Tolerance = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_lt_B = DummyFunction
  l0.A_le_B = DummyFunction
  l0.A_eq_B = DummyFunction
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_105_A_gt_B
  l0.A_ne_B = DummyFunction
  l0:In()
end
function export:f_104_OutViaRoad()
  local l0
  self = self._graph
  l0 = self[104]
  self.TempDistanceBoat = l0.Distance
end
function export:f_71_Out_0()
  local l0
  self = self._graph
  self:en_48()
  l0 = self[48]
  l0:Enable()
end
function export:f_71_Out_1()
  local l0
  self = self._graph
  self:en_1()
  l0 = self[1]
  l0:Enable()
end
function export:f_99_Out()
  local l0
  self = self._graph
  l0 = self[59]
  l0:Condition(0)
end
function export:f_42_Output_0()
  local l0
  self = self._graph
  l0 = self[64]
  l0:Input(0)
end
function export:f_42_Output_1()
  local l0
  self = self._graph
  l0 = self[44]
  l0.Entity = self.Client
  l0.SoundId = "soundbinary/448469820.bnk"
  l0:Start()
end
function export:f_42_Output_2()
  local l0
  self = self._graph
  l0 = self[43]
  l0.Entity = self.Client
  l0.SoundId = "soundbinary/2720551685.bnk"
  l0:Start()
end
function export:f_42_Output_3()
  local l0
  self = self._graph
  l0 = self[64]
  l0:Input(1)
end
function export:f_89_Out()
  local l0
  self = self._graph
  l0 = self[83]
  l0.Seconds = 7
  l0:Start()
end
function export:en_24()
  local l0
  l0 = self[24]
  l0.Client = self.Client
  l0.DropOffIcon = "9223372049053023455"
  l0.ManageObjective = 1
  l0.CustomObjective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "ReachSingleDestination",
    id = "20000191"
  }
  l0.Config = "TaxiRideGameplayBrick.9223372058001194753"
end
function export:en_1()
  local l0
  l0 = self[1]
  l0.Vehicle = self.Boat1
  l0.SpecificPathPoint = 14
end
function export:en_48()
  local l0
  l0 = self[48]
  l0.Vehicle = self.Boat1
  l0.SpecificPathPoint = 2
end
function export:en_41()
  local l0
  l0 = self[41]
  l0.Vehicle = self.Boat2
  l0.SpecificPathPoint = 14
end
function export:en_22()
  local l0
  l0 = self[22]
  l0.Users = self.ActorsList
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
end
function export:en_98()
  local l0
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0.Player = nil
  l0.Target = nil
  l0.Path = "9223372069070783633"
  l0.Index = nil
  l0.PathType = "Custom"
  l0._graph = self
  l0.Enabled = self.f_98_Enabled
  l0.Disabled = self.f_98_Disabled
  l0.TargetAdded = DummyFunction
  l0.TargetRemoved = DummyFunction
end
function export:en_7()
  local l0
  l0 = self[7]
  l0.ClientClo = "9223372049053023460"
  l0.PickUpIcon = "9223372049053023457"
  l0.ShowPickUpIcon = 1
  l0.Config = "TaxiRideGameplayBrick.9223372058001194753"
end
function export:en_35()
  local l0
  l0 = self[35]
  l0.Entity1 = self.Boat1
  l0.Entity2 = self.PlayerVehicle
  l0.Radius = 200
  l0.CheckNow = 1
end
function export:en_23()
  local l0
  l0 = self[23]
  l0.Client = self.Client
  l0.Config = "TaxiRideGameplayBrick.9223372058001194753"
end
function export:en_46()
  local l0
  l0 = self[46]
  l0.Notification = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "BoatsDistanceTooFar",
    id = "685188"
  }
  l0.Duration = -1
end
function export:en_53()
  local l0
  l0 = self[53]
  l0.Seconds = 10
  l0.Loop = 1
  l0.nbLoop = 5
end
function export:en_74()
  local l0
  l0 = self[74]
  l0.Client = self.Client
  l0.DropOffIcon = "9223372049053023459"
  l0.LastDestination = 1
  l0.ManageObjective = 1
  l0.Config = "TaxiRideGameplayBrick.9223372058001194753"
end
function export:en_85()
  local l0
  l0 = self[85]
  l0.MissionName = self.Mission
  l0.LayerName = "Taxi13_Main"
  l0.StrategyConfig = "TaxiRideStrategyConfig.9223372048288505671"
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Vehicle = self.PlayerVehicle
  l0.Conversation = "ConversationSetting.9223372058001194754"
end
function export:en_57()
  local l0
  l0 = self[57]
  l0.Users = self.ActorsList
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
end
_compilerVersion = 4
