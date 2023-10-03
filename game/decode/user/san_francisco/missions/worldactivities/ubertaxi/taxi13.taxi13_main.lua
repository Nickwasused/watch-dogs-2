export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AssignPatrol_v2.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  cbox:RegisterBox("domino/System/EnableSystemicMusic.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/MapPointController_v3.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PawnHealthMonitor_v3.lua")
  cbox:RegisterBox("domino/Library/singleplayer/taxi/Taxi_Missions.PickUp_CarAndClient.lua")
  cbox:RegisterBox("domino/Library/singleplayer/taxi/Taxi_Missions.Player_VehicleMonitor.lua")
  cbox:RegisterBox("domino/System/ProximityMonitor.lua")
  cbox:RegisterBox("domino/Library/singleplayer/taxi/Taxi_Missions.ReachDestination.lua")
  cbox:RegisterBox("domino/System/SetActionMap_v2.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/Library/common/SnapAndBind.SnapAndBind.lua")
  cbox:RegisterBox("domino/System/StopMusic.lua")
  cbox:RegisterBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.lua")
  cbox:RegisterBox("domino/System/TaxiController.lua")
  cbox:RegisterBox("domino/System/TaxiRatingController.lua")
  cbox:RegisterBox("domino/System/TaxiStrategiesController.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TutorialController.lua")
  cbox:RegisterBox("domino/System/VehicleBhvMonitor.lua")
  cbox:RegisterBox("domino/System/VehicleBhvController.lua")
  cbox:RegisterBox("domino/System/VehicleMonitor_v2.lua")
  cbox:RegisterBox("domino/System/VehicleSeatingController.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.Client = nil
  self.PlayerVehicle = nil
  self.Mission = "MissionList.9223372047582728459"
  self.ClientCLO = "9223372046858693747"
  self.VIPVehicle = nil
  self.VIPDriver = nil
  self[89] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[89]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_89_Out
  self[5] = cbox:CreateBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.lua")
  l0 = self[5]
  l0._graph = self
  self[12] = cbox:CreateBox("domino/System/PawnHealthMonitor_v3.lua")
  l0 = self[12]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_12_Disabled
  l0.Damaged = DummyFunction
  l0.Killed = self.f_12_Killed
  l0.DBNO = DummyFunction
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
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
  self[60] = cbox:CreateBox("domino/System/AssignPatrol_v2.lua")
  l0 = self[60]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Assigned = self.f_60_Assigned
  l0.Unassigned = DummyFunction
  l0.SpeedSet = DummyFunction
  l0.Aborted = DummyFunction
  l0.Failed = DummyFunction
  self[43] = cbox:CreateBox("domino/Library/singleplayer/taxi/Taxi_Missions.ReachDestination.lua")
  l0 = self[43]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.DestinationReached = self.f_43_DestinationReached
  self[55] = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self[55]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_55_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self[85] = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self[85]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self[87] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[87]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_87_Out
  self[75] = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self[75]
  l0._graph = self
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = self.f_75_RatingReset
  l0.RewardShown = DummyFunction
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self[32] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[32]
  l0._graph = self
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_32_DisplayRequested
  l0.NotificationHidden = self.f_32_NotificationHidden
  l0.MessageCompleted = DummyFunction
  self[40] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[40]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_40_Out
  self[2] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Loaded = self.f_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[11] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[11]
  l0._graph = self
  l0.Out = DummyFunction
  l0.AllCheckpointsDisabled = self.f_11_AllCheckpointsDisabled
  self[82] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[82]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_82_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[59] = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self[59]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = self.f_59_Unassigned
  l0.AssignCompleted = DummyFunction
  l0.UnassignCompleted = self.f_59_UnassignCompleted
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self[50] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[50]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_50_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[53] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[53]
  l0._graph = self
  l0.Started = self.f_53_Started
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_53_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[27] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[27]
  l0._graph = self
  l0.Out = self.f_27_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[3] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[3]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_3_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[33] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[33]
  l0._graph = self
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_33_DisplayRequested
  l0.NotificationHidden = self.f_33_NotificationHidden
  l0.MessageCompleted = DummyFunction
  self[93] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[93]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_93_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[47] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[47]
  l0._graph = self
  l0.Out = self.f_47_Out
  l0.MessageCompleted = DummyFunction
  self[96] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[96]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_96_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[65] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[65]
  l0._graph = self
  self[46] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[46]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_46_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
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
  self[80] = cbox:CreateBox("domino/System/VehicleBhvMonitor.lua")
  l0 = self[80]
  l0._graph = self
  l0.Out = self.f_80_Out
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_80_Disabled
  l0.Stuck = DummyFunction
  l0.Broken = DummyFunction
  l0.TargetDetected = DummyFunction
  l0.InLOS = DummyFunction
  l0.ReacquireLOSTimerExpired = DummyFunction
  l0.LostLOSTimerExpired = DummyFunction
  l0.SuspiciousTargetAction = DummyFunction
  l0.SpecificPathPointReached = DummyFunction
  l0.PathPointReached = DummyFunction
  l0.EndPathPointReached = self.f_80_EndPathPointReached
  l0.InRange = DummyFunction
  l0.WarningRange = DummyFunction
  l0.OutsideRange = DummyFunction
  l0.OutsideTimerExpired = DummyFunction
  self[54] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[54]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_54_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[14] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[14]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_14_PostOut
  self[4] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[4]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_4_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[73] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[73]
  l0._graph = self
  l0.Out = self.f_73_Out
  l0.MessageCompleted = DummyFunction
  self[84] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[84]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_84_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[34] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[34]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_34_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[19] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[19]
  l0._graph = self
  l0.Started = self.f_19_Started
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[70] = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self[70]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = self.f_70_Paused
  l0.Resumed = DummyFunction
  self[90] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[90]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_90_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[66] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[66]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_66_Unloaded
  l0.Reseted = DummyFunction
  self[35] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[35]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_35_Out
  self[78] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[78]
  l0._graph = self
  l0._DynamicAnchors = {Input = 5}
  l0.Out = self.f_78_Out
  self[24] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[24]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_24_OnUserInPlace
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
  self[30] = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self[30]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_30_Disabled
  l0.EnterRadius = self.f_30_EnterRadius
  l0.ExitRadius = self.f_30_ExitRadius
  self[18] = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self[18]
  l0._graph = self
  l0.RatingShown = DummyFunction
  l0.RatingHidden = self.f_18_RatingHidden
  l0.RatingReset = DummyFunction
  l0.RewardShown = DummyFunction
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self[20] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[20]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_20_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[92] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[92]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[44] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[44]
  l0._graph = self
  l0.Out = self.f_44_Out
  l0.MessageCompleted = DummyFunction
  self[71] = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self[71]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_71_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self[51] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[51]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_51_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[58] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[58]
  l0._graph = self
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_58_Out
  l0.ResetOut = DummyFunction
  self[48] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[48]
  l0._graph = self
  l0.Started = self.f_48_Started
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_48_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[86] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[86]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_86_Out
  self[49] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[49]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_49_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[63] = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self[63]
  l0._graph = self
  l0.RatingShown = DummyFunction
  l0.RatingHidden = self.f_63_RatingHidden
  l0.RatingReset = DummyFunction
  l0.RewardShown = self.f_63_RewardShown
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
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
  self[57] = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self[57]
  l0._graph = self
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = DummyFunction
  l0.RewardShown = DummyFunction
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self[36] = cbox:CreateBox("domino/Library/common/SnapAndBind.SnapAndBind.lua")
  l0 = self[36]
  l0._graph = self
  l0.Attached = self.f_36_Attached
  self[91] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[91]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_91_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[67] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[67]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_67_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[8] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[8]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_8_Unloaded
  l0.Reseted = DummyFunction
  self[38] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[38]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_38_Out
  self[7] = cbox:CreateBox("domino/System/VehicleMonitor_v2.lua")
  l0 = self[7]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_7_Disabled
  l0.Enter = DummyFunction
  l0.Entered = DummyFunction
  l0.Leave = DummyFunction
  l0.Exiting = DummyFunction
  l0.ChangeSeat = DummyFunction
  l0.BailedOut = self.f_7_BailedOut
  l0.IsPawnHiding = DummyFunction
  l0.PawnIsNotHiding = DummyFunction
  l0.StateChange = DummyFunction
  l0.TakenDamage = DummyFunction
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
  self[21] = cbox:CreateBox("domino/Library/singleplayer/taxi/Taxi_Missions.Player_VehicleMonitor.lua")
  l0 = self[21]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = self.f_21_Enabled
  l0.Disabled = DummyFunction
  l0.Entered = DummyFunction
  l0.Exited = DummyFunction
  l0.VehicleWrecked = self.f_21_VehicleWrecked
  l0.PlayerAbandonedVehicle = self.f_21_PlayerAbandonedVehicle
  self[42] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[42]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_42_Out
  self[79] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[79]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_79_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[81] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[81]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_81_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[17] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[17]
  l0._graph = self
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_17_Out
  l0.ResetOut = DummyFunction
  self[52] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[52]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_52_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[6] = cbox:CreateBox("domino/Library/singleplayer/taxi/Taxi_Missions.PickUp_CarAndClient.lua")
  l0 = self[6]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.PickedUp = self.f_6_PickedUp
  l0.Spawned = self.f_6_Spawned
  l0.FailedMoveAndAssign = DummyFunction
  self[23] = cbox:CreateBox("domino/System/VehicleMonitor_v2.lua")
  l0 = self[23]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Entered = DummyFunction
  l0.Leave = self.f_23_Leave
  l0.Exiting = DummyFunction
  l0.ChangeSeat = DummyFunction
  l0.BailedOut = self.f_23_BailedOut
  l0.IsPawnHiding = DummyFunction
  l0.PawnIsNotHiding = DummyFunction
  l0.StateChange = DummyFunction
  l0.TakenDamage = DummyFunction
  l0.IsUnusable = self.f_23_IsUnusable
  l0.IsUnderwater = DummyFunction
  l0.NoMoveTimer = self.f_23_NoMoveTimer
  l0.OnMoveTimer = DummyFunction
  l0.IsSlowEnoughToExit = DummyFunction
  l0.VehicleJump = DummyFunction
  l0.VehicleLanding = DummyFunction
  l0.BollardTakedown = DummyFunction
  l0.SteamPipeTakedown = DummyFunction
  l0.TrafficLightTakedown = DummyFunction
  l0.FullTakedown = self.f_23_FullTakedown
  l0.PartialTakedown = DummyFunction
  self[13] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[13]
  l0._graph = self
  self[64] = cbox:CreateBox("domino/System/TaxiController.lua")
  l0 = self[64]
  l0._graph = self
  l0.Out = DummyFunction
  l0.OnClientPickedUp = DummyFunction
  l0.OnClientDroppedOff = self.f_64_OnClientDroppedOff
  self[25] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[25]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_25_OnUserInPlace
  self[69] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[69]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_69_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[26] = cbox:CreateBox("domino/System/VehicleBhvController.lua")
  l0 = self[26]
  l0._graph = self
  l0.StartCompleted = self.f_26_StartCompleted
  l0.StopCompleted = DummyFunction
  l0.ForcedFakeFollow = DummyFunction
  self[37] = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self[37]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[22] = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self[22]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_22_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self[29] = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self[29]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_29_Disabled
  l0.EnterRadius = self.f_29_EnterRadius
  l0.ExitRadius = self.f_29_ExitRadius
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
  l0 = self[38]
  l0:Input(1)
end
function export:In()
  local l0
  l0 = self[38]
  l0:Input(0)
end
function export:f_89_Out()
  local l0
  self = self._graph
  self:en_82()
  l0 = self[82]
  l0:Start()
end
function export:f_12_Disabled()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:ClientDead()
end
function export:f_12_Killed()
  local l0
  self = self._graph
  self:en_12()
  l0 = self[12]
  l0:Disable()
end
function export:f_61_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[70]
  l0.Config = "TaxiRideStrategyConfig.9223372047582772995"
  l0:Pause()
end
function export:f_60_Assigned()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic_nocameralock"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_62_Pushed
  l0.Popped = DummyFunction
  l0:Push()
end
function export:f_31_Out_0()
  local l0
  self = self._graph
  self:en_30()
  l0 = self[30]
  l0:Enable()
end
function export:f_31_Out_1()
  local l0
  self = self._graph
  self:en_29()
  l0 = self[29]
  l0:Enable()
end
function export:f_31_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_77_Out
  l0:In()
end
function export:f_31_Out_3()
  local l0
  self = self._graph
  self:en_80()
  l0 = self[80]
  l0:Enable()
end
function export:f_15_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/EnableSystemicMusic.lua")]
  l0.Enable = 1
  l0._graph = self
  l0.Out = self.f_10_Out
  l0:In()
end
function export:f_43_DestinationReached()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic_nocameralock"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_45_Pushed
  l0.Popped = DummyFunction
  l0:Push()
end
function export:f_55_Stopped()
  local l0
  self = self._graph
  l0 = self[8]
  l0.LayerName = "Taxi13_Main"
  l0:Unload()
end
function export:f_87_Out()
  local l0
  self = self._graph
  self:en_32()
  l0 = self[32]
  l0:HideNotification()
end
function export:f_75_RatingReset()
  local l0
  self = self._graph
  l0 = self[85]
  l0.Config = "TaxiRideStrategyConfig.9223372047582772995"
  l0:Start()
end
function export:f_32_DisplayRequested()
  local l0
  self = self._graph
  l0 = self[89]
  l0:Input(0)
end
function export:f_32_NotificationHidden()
  local l0
  self = self._graph
  self:en_82()
  l0 = self[82]
  l0:Stop()
end
function export:f_40_Out()
  local l0
  self = self._graph
  l0 = self[57]
  l0.MissionName = self.Mission
  l0.RatingAmount = 1
  l0:RemoveRating()
end
function export:f_2_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:In()
end
function export:f_11_AllCheckpointsDisabled()
  local l0
  self = self._graph
  l0 = self[18]
  l0.MissionName = self.Mission
  l0:HideRating()
end
function export:f_82_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_88_Out_0
  l0.Out[1] = self.f_88_Out_1
  l0:In()
end
function export:f_59_UnassignCompleted()
  local l0
  self = self._graph
  l0 = self[60]
  l0.NPC = self.VIPDriver
  l0.Patrol = "9223372047582768926"
  l0:Assign()
end
function export:f_59_Unassigned()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_74_Out_0
  l0.Out[1] = self.f_74_Out_1
  l0.Out[2] = self.f_74_Out_2
  l0:In()
end
function export:f_50_TalkFinished()
  local l0
  self = self._graph
  l0 = self[3]
  l0.Seconds = 2
  l0:Start()
end
function export:f_77_Out()
  local l0
  self = self._graph
  l0 = self[36]
  l0.Parent = self.VIPVehicle
  l0.Child = "9223372047582732666"
  l0.CarIcon = 1
  l0:Attach()
end
function export:f_53_Started()
  local l0
  self = self._graph
  self:en_21()
  l0 = self[21]
  l0:Disable()
end
function export:f_53_TalkFinished()
  local l0
  self = self._graph
  l0 = self[64]
  l0.Client = self.Client
  l0.Vehicle = self.PlayerVehicle
  l0:DropOffClient()
end
function export:f_27_Out()
  local l0
  self = self._graph
  l0 = self[6]
  l0.ClientCLO = "9223372047582728451"
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "PickupSingleClient",
    id = "20000189"
  }
  l0.IconPickUp = "9223372047582728453"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0.Range = 5
  l0.ShowGPS = 0
  l0:Enable()
end
function export:f_3_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[51]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149945"
  l0.StartDelay = 1
  l0:Start()
end
function export:f_33_DisplayRequested()
  local l0
  self = self._graph
  l0 = self[35]
  l0:Input(0)
end
function export:f_33_NotificationHidden()
  local l0
  self = self._graph
  self:en_34()
  l0 = self[34]
  l0:Stop()
end
function export:f_93_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[54]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149946"
  l0.StartDelay = 1
  l0:Start()
end
function export:f_47_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_31_Out_0
  l0.Out[1] = self.f_31_Out_1
  l0.Out[2] = self.f_31_Out_2
  l0.Out[3] = self.f_31_Out_3
  l0:In()
end
function export:f_96_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[17]
  l0:In(0)
end
function export:f_41_Out_0()
  local l0
  self = self._graph
  l0 = self[35]
  l0:Input(1)
end
function export:f_41_Out_1()
  local l0
  self = self._graph
  l0 = self[40]
  l0:Input(1)
end
function export:f_76_Out()
  local l0
  self = self._graph
  l0 = self[42]
  l0:Input(1)
end
function export:f_46_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[25]
  l0.CLO = "9223372047582729368"
  l0:Activate()
end
function export:f_72_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[79]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372053284420807"
  l0.StartDelay = 1
  l0:Start()
end
function export:f_83_TimeElapsed()
  local l0
  self = self._graph
  self:en_37()
  l0 = self[37]
  l0:Show()
end
function export:f_80_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_95_Out_0
  l0.Out[1] = self.f_95_Out_1
  l0:In()
end
function export:f_80_EndPathPointReached()
  local l0
  self = self._graph
  self:en_80()
  l0 = self[80]
  l0:Disable()
end
function export:f_80_Out()
  local l0
  self = self._graph
  l0 = self[58]
  l0:In(0)
end
function export:f_54_TalkFinished()
  local l0
  self = self._graph
  l0 = self[68]
  l0.Seconds = 2
  l0:Start()
end
function export:f_14_PostOut()
  local l0
  self = self._graph
  l0 = self[27]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_4_UnspawnedUser()
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
  l0.Popped = self.f_56_Popped
  l0:Pop()
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
function export:f_73_Out()
  local l0
  self = self._graph
  l0 = self[66]
  l0.LayerName = "Taxi13_Main"
  l0:Unload()
end
function export:f_84_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[90]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372053284420808"
  l0.StartDelay = 1
  l0:Start()
end
function export:f_34_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_41_Out_0
  l0.Out[1] = self.f_41_Out_1
  l0:In()
end
function export:f_19_Started()
  local l0
  self = self._graph
  self:en_21()
  l0 = self[21]
  l0:Enable()
end
function export:f_70_Paused()
  local l0
  self = self._graph
  l0 = self[53]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149950"
  l0.StartDelay = 1
  l0:Start()
end
function export:f_90_TalkFinished()
  local l0
  self = self._graph
  l0 = self[91]
  l0.Seconds = 1
  l0:Start()
end
function export:f_66_Unloaded()
  local l0
  self = self._graph
  l0 = self[65]
  l0:Succeed()
end
function export:f_35_Out()
  local l0
  self = self._graph
  self:en_34()
  l0 = self[34]
  l0:Start()
end
function export:f_45_Pushed()
  local l0
  self = self._graph
  l0 = self[44]
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF130",
    item = "Objective_Wait",
    id = "630496"
  }
  l0.HasObjectiveMarker = 0
  l0:ShowNewObjective()
end
function export:f_78_Out()
  local l0
  self = self._graph
  l0 = self[96]
  l0.Seconds = 3
  l0:Start()
end
function export:f_24_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[24]
  self.VIPDriver = l0.UserID
  l0 = self[22]
  l0.Vehicle = self.VIPVehicle
  l0.Pawn = self.VIPDriver
  l0.Seat = "Driver"
  l0:Assign()
end
function export:f_68_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[69]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372053284420806"
  l0.StartDelay = 1
  l0:Start()
end
function export:f_30_Disabled()
  local l0
  self = self._graph
  l0 = self[87]
  l0:Input(0)
end
function export:f_30_EnterRadius()
  local l0
  self = self._graph
  self:en_32()
  l0 = self[32]
  l0:Display()
end
function export:f_30_ExitRadius()
  local l0
  self = self._graph
  l0 = self[87]
  l0:Input(1)
end
function export:f_18_RatingHidden()
  local l0
  self = self._graph
  l0 = self[55]
  l0.Config = "TaxiRideStrategyConfig.9223372047582772995"
  l0:Stop()
end
function export:f_9_Out_0()
  local l0
  self = self._graph
  self:en_12()
  l0 = self[12]
  l0:Enable()
end
function export:f_9_Out_1()
  local l0
  self = self._graph
  self:en_7()
  l0 = self[7]
  l0:Enable()
end
function export:f_20_TalkFinished()
  local l0
  self = self._graph
  l0 = self[46]
  l0.Seconds = 5
  l0:Start()
end
function export:f_94_Popped()
  local l0
  self = self._graph
  l0 = self[48]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372053284420810"
  l0.StartDelay = 1
  l0:Start()
end
function export:f_44_Out()
  local l0
  self = self._graph
  l0 = self[20]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372053284420811"
  l0.StartDelay = 1
  l0.StartLimit_Radius = 0.01
  l0:Start()
end
function export:f_71_Stopped()
  local l0
  self = self._graph
  l0 = self[73]
  l0:ShowMissionComplete()
end
function export:f_56_Popped()
  local l0
  self = self._graph
  self:en_63()
  l0 = self[63]
  l0:HideRating()
end
function export:f_51_TalkFinished()
  local l0
  self = self._graph
  l0 = self[93]
  l0.Seconds = 1
  l0:Start()
end
function export:f_58_Out()
  local l0
  self = self._graph
  l0 = self[75]
  l0.MissionName = self.Mission
  l0:ResetRating()
end
function export:f_48_Started()
  local l0
  self = self._graph
  l0 = self[47]
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF130",
    item = "Objective_Follow",
    id = "630497"
  }
  l0.HasObjectiveMarker = 0
  l0:ShowNewObjective()
end
function export:f_48_TalkFinished()
  local l0
  self = self._graph
  l0 = self[52]
  l0.Seconds = 3
  l0:Start()
end
function export:f_86_Out()
  local l0
  self = self._graph
  self:en_33()
  l0 = self[33]
  l0:HideNotification()
end
function export:f_62_Pushed()
  local l0
  self = self._graph
  l0 = self[61]
  l0.Seconds = 8
  l0:Start()
end
function export:f_49_TalkFinished()
  local l0
  self = self._graph
  l0 = self[16]
  l0.Seconds = 1
  l0:Start()
end
function export:f_63_RatingHidden()
  local l0
  self = self._graph
  self:en_63()
  l0 = self[63]
  l0:ShowReward()
end
function export:f_63_RewardShown()
  local l0
  self = self._graph
  l0 = self[71]
  l0.Config = "TaxiRideStrategyConfig.9223372047582772995"
  l0:Stop()
end
function export:f_39_Out()
  local l0
  self = self._graph
  self:en_23()
  l0 = self[23]
  l0:Enable()
end
function export:f_16_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[50]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149944"
  l0.StartDelay = 1
  l0:Start()
end
function export:f_10_Out()
  local l0
  self = self._graph
  l0 = self[11]
  l0:DisableAllCheckpoints()
end
function export:f_36_Attached()
  local l0
  self = self._graph
  l0 = self[83]
  l0:Start()
end
function export:f_91_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[92]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372053284420809"
  l0.StartDelay = 1
  l0:Start()
end
function export:f_67_UnspawnedUser()
  local l0
  self = self._graph
  l0 = self[4]
  l0.User = self.VIPDriver
  l0:UnspawnUser()
end
function export:f_8_Unloaded()
  local l0
  self = self._graph
  l0 = self[13]
  l0.EndReason = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "FailTrackingDisrupted",
    id = "641467"
  }
  l0:Fail()
end
function export:f_95_Out_0()
  local l0
  self = self._graph
  l0 = self[81]
  l0:Start()
end
function export:f_95_Out_1()
  local l0
  self = self._graph
  self:en_23()
  l0 = self[23]
  l0:Disable()
end
function export:f_38_Out()
  local l0
  self = self._graph
  l0 = self[2]
  l0.LayerName = "Taxi13_Main"
  l0:Load()
end
function export:f_7_BailedOut()
  local l0
  self = self._graph
  self:en_7()
  l0 = self[7]
  l0:Disable()
end
function export:f_7_Disabled()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:ClientBailedOut()
end
function export:f_21_Enabled()
  local l0
  self = self._graph
  l0 = self[43]
  l0.Destination = "9223372047582766628"
  l0.ManageObjectives = 1
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF130",
    item = "Objective_Reach_Stakeout",
    id = "630495"
  }
  l0.LocText = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "MarkerDestination",
    id = "335055"
  }
  l0.VehiclePlayer = self.PlayerVehicle
  l0.ReachDistance = 3
  l0.ShowGPS = 0
  l0.AutoStop = 1
  l0.StationaryAtDestination = 1
  l0:Enable()
end
function export:f_21_PlayerAbandonedVehicle()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:PlayerAbandonedVehicle()
end
function export:f_21_VehicleWrecked()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:VehicleUnusable()
end
function export:f_42_Out()
  local l0
  self = self._graph
  self:en_37()
  l0 = self[37]
  l0:Hide()
end
function export:f_79_TalkFinished()
  local l0
  self = self._graph
  l0 = self[84]
  l0.Seconds = 3
  l0:Start()
end
function export:f_81_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[59]
  l0.Pawn = self.VIPDriver
  l0.UseAnimation = 1
  l0:Unassign()
end
function export:f_17_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/StopMusic.lua")]
  l0.FadeOutTime = 5
  l0._graph = self
  l0.Out = self.f_15_Out
  l0:In()
end
function export:f_52_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[49]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372053284420805"
  l0.StartDelay = 1
  l0:Start()
end
function export:f_6_PickedUp()
  local l0
  self = self._graph
  l0 = self[6]
  self.Client = l0.Client
  self.PlayerVehicle = l0.Vehicle
  l0 = self[19]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149948"
  l0.StartDelay = 0.01
  l0:Start()
end
function export:f_6_Spawned()
  local l0
  self = self._graph
  l0 = self[6]
  self.Client = l0.Client
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_9_Out_0
  l0.Out[1] = self.f_9_Out_1
  l0:In()
end
function export:f_23_BailedOut()
  local l0
  self = self._graph
  l0 = self[78]
  l0:Input(0)
end
function export:f_23_FullTakedown()
  local l0
  self = self._graph
  l0 = self[78]
  l0:Input(2)
end
function export:f_23_IsUnusable()
  local l0
  self = self._graph
  l0 = self[78]
  l0:Input(1)
end
function export:f_23_Leave()
  local l0
  self = self._graph
  l0 = self[78]
  l0:Input(3)
end
function export:f_23_NoMoveTimer()
  local l0
  self = self._graph
  l0 = self[78]
  l0:Input(4)
end
function export:f_64_OnClientDroppedOff()
  local l0
  self = self._graph
  l0 = self[67]
  l0.User = self.Client
  l0:UnspawnUser()
end
function export:f_25_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[25]
  self.VIPVehicle = l0.UserID
  l0 = self[24]
  l0.CLO = "9223372047582729369"
  l0:Activate()
end
function export:f_69_TalkFinished()
  local l0
  self = self._graph
  l0 = self[72]
  l0.Seconds = 2
  l0:Start()
end
function export:f_26_StartCompleted()
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
  l0.Popped = self.f_94_Popped
  l0:Pop()
end
function export:f_74_Out_0()
  local l0
  self = self._graph
  self:en_30()
  l0 = self[30]
  l0:Disable()
end
function export:f_74_Out_1()
  local l0
  self = self._graph
  self:en_29()
  l0 = self[29]
  l0:Disable()
end
function export:f_74_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_76_Out
  l0:In()
end
function export:f_88_Out_0()
  local l0
  self = self._graph
  l0 = self[89]
  l0:Input(1)
end
function export:f_88_Out_1()
  local l0
  self = self._graph
  l0 = self[40]
  l0:Input(0)
end
function export:f_22_AssignCompleted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_28_Out_0
  l0.Out[1] = self.f_28_Out_1
  l0:In()
end
function export:f_29_Disabled()
  local l0
  self = self._graph
  l0 = self[86]
  l0:Input(0)
end
function export:f_29_EnterRadius()
  local l0
  self = self._graph
  l0 = self[86]
  l0:Input(1)
end
function export:f_29_ExitRadius()
  local l0
  self = self._graph
  self:en_33()
  l0 = self[33]
  l0:Display()
end
function export:f_28_Out_0()
  local l0
  self = self._graph
  l0 = self[26]
  l0.VehicleMaster = self.VIPVehicle
  l0.VehicleTarget = self.PlayerEntity
  l0.PathOrPos = "9223372047582729366"
  l0.Config = "VehicleBhvSetup.9223372048779328386"
  l0.StopAtEndPoint = 1
  l0:Start()
end
function export:f_28_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_39_Out
  l0:In()
end
function export:en_5()
  local l0
  l0 = self[5]
  l0.MissionName = self.Mission
  l0.LayerName = "Taxi13_Main"
  l0.StrategyConfig = "TaxiRideStrategyConfig.9223372047582772995"
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Vehicle = self.PlayerVehicle
  l0.Conversation = "ConversationSetting.9223372048760149956"
end
function export:en_12()
  local l0
  l0 = self[12]
  l0.Pawn = self.Client
  l0.CheckNow = 1
end
function export:en_32()
  local l0
  l0 = self[32]
  l0.Notification = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "DistanceTooClose",
    id = "417037"
  }
  l0.Duration = -1
end
function export:en_82()
  local l0
  l0 = self[82]
  l0.Seconds = 10
end
function export:en_33()
  local l0
  l0 = self[33]
  l0.Notification = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "DistanceTooFar",
    id = "417038"
  }
  l0.Duration = -1
end
function export:en_80()
  local l0
  l0 = self[80]
  l0.Vehicle = self.VIPVehicle
end
function export:en_34()
  local l0
  l0 = self[34]
  l0.Seconds = 10
end
function export:en_30()
  local l0
  l0 = self[30]
  l0.Entity1 = self.VIPVehicle
  l0.Entity2 = self.PlayerEntity
  l0.Radius = 15
  l0.CheckNow = 1
end
function export:en_63()
  local l0
  l0 = self[63]
  l0.MissionName = self.Mission
end
function export:en_7()
  local l0
  l0 = self[7]
  l0.Pawn = self.Client
end
function export:en_21()
  local l0
  l0 = self[21]
  l0.VehiclePlayer = self.PlayerVehicle
  l0.IconVehicle = "9223372047582728448"
  l0.TimeToReturnToVehicle = 20
  l0.CheckNow = 0
end
function export:en_23()
  local l0
  l0 = self[23]
  l0.Vehicle = self.VIPVehicle
  l0.Pawn = self.VIPDriver
  l0.CheckNow = 1
  l0.NoMoveTime = 5
end
function export:en_37()
  local l0
  l0 = self[37]
  l0.MapPoint = "9223372047582732666"
  l0.LocText = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "Follow",
    id = "417039"
  }
end
function export:en_29()
  local l0
  l0 = self[29]
  l0.Entity1 = self.VIPVehicle
  l0.Entity2 = self.PlayerEntity
  l0.Radius = 45
  l0.CheckNow = 1
end
_compilerVersion = 4
