export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CinemaZoneCleanup.lua")
  cbox:RegisterBox("Domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("Domino/System/CLOController.lua")
  cbox:RegisterBox("Domino/System/DPadHackableController.lua")
  cbox:RegisterBox("Domino/Library/common/Narrative.DriveAndTalk.lua")
  cbox:RegisterBox("Domino/System/ForcePawnsVehicleStop_v2.lua")
  cbox:RegisterBox("Domino/System/GameplayInteractionController.lua")
  cbox:RegisterBox("Domino/System/GetPlayerID.lua")
  cbox:RegisterBox("Domino/System/HackableController_v2.lua")
  cbox:RegisterBox("Domino/System/IntegerArithmetics.lua")
  cbox:RegisterBox("Domino/System/IntegerSelect.lua")
  cbox:RegisterBox("Domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("Domino/System/MapPointController_v4.lua")
  cbox:RegisterBox("Domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("Domino/System/MissionController_v4.lua")
  cbox:RegisterBox("Domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("Domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("Domino/System/MultipleAND.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/RaceController.lua")
  cbox:RegisterBox("Domino/System/RaceMonitor.lua")
  cbox:RegisterBox("Domino/System/SetActionMap_v2.lua")
  cbox:RegisterBox("Domino/System/SetInteger_v2.lua")
  cbox:RegisterBox("Domino/System/SimpleNode.lua")
  cbox:RegisterBox("Domino/Library/common/SnapAndBind.SnapAndBind.lua")
  cbox:RegisterBox("Domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.lua")
  cbox:RegisterBox("Domino/System/TaxiRatingController.lua")
  cbox:RegisterBox("Domino/System/TaxiRidePickUpController.lua")
  cbox:RegisterBox("Domino/System/TaxiRideReachDestinationMonitor.lua")
  cbox:RegisterBox("Domino/System/TaxiRideVehicleMonitor.lua")
  cbox:RegisterBox("Domino/System/TaxiStrategiesController.lua")
  cbox:RegisterBox("Domino/System/Timer_v2.lua")
  cbox:RegisterBox("Domino/System/TriggerMonitor_v2.lua")
  cbox:RegisterBox("Domino/System/VehicleBhvMonitor.lua")
  cbox:RegisterBox("Domino/System/VehicleController.lua")
  cbox:RegisterBox("Domino/System/VehicleBhvController.lua")
  cbox:RegisterBox("Domino/System/VehicleSeatingController.lua")
  cbox:RegisterBox("Domino/System/VisibilityController_v2.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.PlayerVehicle = nil
  self.Client = nil
  self.Mission = "MissionList.9223372048443828908"
  self.Car1 = nil
  self.Driver1 = nil
  self.Car2 = nil
  self.Car3 = nil
  self.Driver2 = nil
  self.Driver3 = nil
  self.NoCarsFinishedRace = 2
  self.ActorList = {}
  self.VehicleList = {}
  self.DriverList = {}
  self.InteractionID = 0
  self[139] = cbox:CreateBox("Domino/System/IntegerSelect.lua")
  l0 = self[139]
  l0._graph = self
  l0._DynamicAnchors = {Case = 4, Match = 4}
  l0.Out = DummyFunction
  l0.Match[0] = self.f_139_Match_0
  l0.Match[1] = self.f_139_Match_1
  l0.Match[2] = self.f_139_Match_2
  l0.Match[3] = self.f_139_Match_3
  l0.None = DummyFunction
  self[46] = cbox:CreateBox("Domino/System/Lists/ListWriter.lua")
  l0 = self[46]
  l0._graph = self
  l0._DynamicAnchors = {Data = 3}
  l0.Added = self.f_46_Added
  l0.Removed = self.f_46_Removed
  l0.Out = self.f_46_Out
  self[49] = cbox:CreateBox("Domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[49]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_49_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_49_TalkFailed
  self[113] = cbox:CreateBox("Domino/System/MapPointController_v4.lua")
  l0 = self[113]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[8] = cbox:CreateBox("Domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[8]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_8_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_8_TalkFailed
  self[97] = cbox:CreateBox("Domino/System/VehicleBhvMonitor.lua")
  l0 = self[97]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = self.f_97_Enabled
  l0.Disabled = self.f_97_Disabled
  l0.Stuck = DummyFunction
  l0.Broken = DummyFunction
  l0.TargetDetected = DummyFunction
  l0.InLOS = DummyFunction
  l0.ReacquireLOSTimerExpired = DummyFunction
  l0.LostLOSTimerExpired = DummyFunction
  l0.SuspiciousTargetAction = DummyFunction
  l0.SpecificPathPointReached = DummyFunction
  l0.PathPointReached = DummyFunction
  l0.EndPathPointReached = self.f_97_EndPathPointReached
  l0.InRange = DummyFunction
  l0.WarningRange = DummyFunction
  l0.OutsideRange = DummyFunction
  l0.OutsideTimerExpired = DummyFunction
  self[59] = cbox:CreateBox("Domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[59]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_59_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_59_TalkFailed
  self[78] = cbox:CreateBox("Domino/System/TaxiStrategiesController.lua")
  l0 = self[78]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_78_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self[4] = cbox:CreateBox("Domino/System/MissionController_v4.lua")
  l0 = self[4]
  l0._graph = self
  self[16] = cbox:CreateBox("Domino/System/MapPointController_v4.lua")
  l0 = self[16]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[108] = cbox:CreateBox("Domino/Library/common/SnapAndBind.SnapAndBind.lua")
  l0 = self[108]
  l0._graph = self
  l0.Attached = self.f_108_Attached
  self[64] = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self[64]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_64_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[129] = cbox:CreateBox("Domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[129]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_129_Stopped
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[84] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[84]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_84_Out
  self[103] = cbox:CreateBox("Domino/System/MultipleAND.lua")
  l0 = self[103]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 3}
  l0.Out = self.f_103_Out
  self[100] = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self[100]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_100_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[15] = cbox:CreateBox("Domino/System/MultipleAND.lua")
  l0 = self[15]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_15_Out
  self[58] = cbox:CreateBox("Domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[58]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_58_Stopped
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[91] = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self[91]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_91_OnUserInPlace
  self[23] = cbox:CreateBox("Domino/System/MissionCheckpointReach.lua")
  l0 = self[23]
  l0._graph = self
  l0.Out = self.f_23_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[72] = cbox:CreateBox("Domino/System/TriggerMonitor_v2.lua")
  l0 = self[72]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_72_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[3] = cbox:CreateBox("Domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self[3]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_3_Disabled
  l0.ReachDestination = self.f_3_ReachDestination
  l0.ClientDropOff = DummyFunction
  self[109] = cbox:CreateBox("Domino/Library/common/SnapAndBind.SnapAndBind.lua")
  l0 = self[109]
  l0._graph = self
  l0.Attached = self.f_109_Attached
  self[111] = cbox:CreateBox("Domino/System/MapPointController_v4.lua")
  l0 = self[111]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[119] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[119]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_119_Out
  self[135] = cbox:CreateBox("Domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[135]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_135_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_135_TalkFailed
  self[34] = cbox:CreateBox("Domino/System/TriggerMonitor_v2.lua")
  l0 = self[34]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_34_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[18] = cbox:CreateBox("Domino/System/MissionMessageController_v3.lua")
  l0 = self[18]
  l0._graph = self
  l0.Out = self.f_18_Out
  l0.MessageCompleted = DummyFunction
  self[133] = cbox:CreateBox("Domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[133]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_133_Stopped
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[132] = cbox:CreateBox("Domino/System/TaxiRatingController.lua")
  l0 = self[132]
  l0._graph = self
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = DummyFunction
  l0.RewardShown = DummyFunction
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = self.f_132_RatingRemoved
  self[159] = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self[159]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_159_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[143] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[143]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_143_Out
  self[66] = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self[66]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_66_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[131] = cbox:CreateBox("Domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[131]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_131_Stopped
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[82] = cbox:CreateBox("Domino/System/MissionMessageController_v3.lua")
  l0 = self[82]
  l0._graph = self
  l0.Out = self.f_82_Out
  l0.MessageCompleted = DummyFunction
  self[57] = cbox:CreateBox("Domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[57]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_57_Stopped
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[26] = cbox:CreateBox("Domino/Library/common/SnapAndBind.SnapAndBind.lua")
  l0 = self[26]
  l0._graph = self
  l0.Attached = self.f_26_Attached
  self[63] = cbox:CreateBox("Domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[63]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_63_Stopped
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[145] = cbox:CreateBox("Domino/System/RaceController.lua")
  l0 = self[145]
  l0._graph = self
  l0._DynamicAnchors = {RacerVehicle = 3}
  l0.OnPlayerTeleportedToStart = DummyFunction
  l0.OnRaceSetupFinished = self.f_145_OnRaceSetupFinished
  l0.OnRaceStarted = self.f_145_OnRaceStarted
  l0.OnRaceFinished = self.f_145_OnRaceFinished
  l0.OnRaceResultsShown = DummyFunction
  l0.OnRaceResultsClosed = DummyFunction
  l0.OnRaceStopped = self.f_145_OnRaceStopped
  self[125] = cbox:CreateBox("Domino/System/MapPointController_v4.lua")
  l0 = self[125]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = self.f_125_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[107] = cbox:CreateBox("Domino/System/VehicleBhvMonitor.lua")
  l0 = self[107]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = self.f_107_Enabled
  l0.Disabled = self.f_107_Disabled
  l0.Stuck = DummyFunction
  l0.Broken = DummyFunction
  l0.TargetDetected = DummyFunction
  l0.InLOS = DummyFunction
  l0.ReacquireLOSTimerExpired = DummyFunction
  l0.LostLOSTimerExpired = DummyFunction
  l0.SuspiciousTargetAction = DummyFunction
  l0.SpecificPathPointReached = DummyFunction
  l0.PathPointReached = DummyFunction
  l0.EndPathPointReached = self.f_107_EndPathPointReached
  l0.InRange = DummyFunction
  l0.WarningRange = DummyFunction
  l0.OutsideRange = DummyFunction
  l0.OutsideTimerExpired = DummyFunction
  self[86] = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self[86]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_86_OnUserInPlace
  self[96] = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self[96]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_96_OnUserInPlace
  self[10] = cbox:CreateBox("Domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self[10]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_10_Disabled
  l0.ReachDestination = self.f_10_ReachDestination
  l0.ClientDropOff = self.f_10_ClientDropOff
  self[30] = cbox:CreateBox("Domino/System/TriggerMonitor_v2.lua")
  l0 = self[30]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_30_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[65] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[65]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_65_Out
  self[48] = cbox:CreateBox("Domino/System/Lists/ListWriter.lua")
  l0 = self[48]
  l0._graph = self
  l0._DynamicAnchors = {Data = 3}
  l0.Added = self.f_48_Added
  l0.Removed = self.f_48_Removed
  l0.Out = self.f_48_Out
  self[127] = cbox:CreateBox("Domino/System/MapPointController_v4.lua")
  l0 = self[127]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = self.f_127_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[141] = cbox:CreateBox("Domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[141]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_141_Stopped
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[98] = cbox:CreateBox("Domino/System/VehicleBhvMonitor.lua")
  l0 = self[98]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = self.f_98_Enabled
  l0.Disabled = self.f_98_Disabled
  l0.Stuck = DummyFunction
  l0.Broken = DummyFunction
  l0.TargetDetected = DummyFunction
  l0.InLOS = DummyFunction
  l0.ReacquireLOSTimerExpired = DummyFunction
  l0.LostLOSTimerExpired = DummyFunction
  l0.SuspiciousTargetAction = DummyFunction
  l0.SpecificPathPointReached = DummyFunction
  l0.PathPointReached = DummyFunction
  l0.EndPathPointReached = self.f_98_EndPathPointReached
  l0.InRange = DummyFunction
  l0.WarningRange = DummyFunction
  l0.OutsideRange = DummyFunction
  l0.OutsideTimerExpired = DummyFunction
  self[136] = cbox:CreateBox("Domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[136]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_136_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_136_TalkFailed
  self[11] = cbox:CreateBox("Domino/System/TaxiRidePickUpController.lua")
  l0 = self[11]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_11_Disabled
  l0.ClientSpawned = self.f_11_ClientSpawned
  l0.ClientPickedUp = self.f_11_ClientPickedUp
  l0.ClientConversationFinised = self.f_11_ClientConversationFinised
  self[105] = cbox:CreateBox("Domino/System/VehicleBhvController.lua")
  l0 = self[105]
  l0._graph = self
  l0.StartCompleted = self.f_105_StartCompleted
  l0.StopCompleted = DummyFunction
  l0.ForcedFakeFollow = DummyFunction
  self[33] = cbox:CreateBox("Domino/System/MissionMessageController_v3.lua")
  l0 = self[33]
  l0._graph = self
  l0.Out = self.f_33_Out
  l0.MessageCompleted = DummyFunction
  self[81] = cbox:CreateBox("Domino/System/HackableController_v2.lua")
  l0 = self[81]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[122] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[122]
  l0._graph = self
  l0._DynamicAnchors = {Input = 8}
  l0.Out = self.f_122_Out
  self[85] = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self[85]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_85_OnUserInPlace
  self[87] = cbox:CreateBox("Domino/System/VehicleSeatingController.lua")
  l0 = self[87]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_87_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self[75] = cbox:CreateBox("Domino/System/TriggerMonitor_v2.lua")
  l0 = self[75]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_75_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[2] = cbox:CreateBox("Domino/System/TaxiRideVehicleMonitor.lua")
  l0 = self[2]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ClientDeath = self.f_2_ClientDeath
  l0.VehicleUnusable = self.f_2_VehicleUnusable
  l0.ClientBailedOut = self.f_2_ClientBailedOut
  l0.PlayerAbandonedVehicle = self.f_2_PlayerAbandonedVehicle
  self[60] = cbox:CreateBox("Domino/System/TriggerMonitor_v2.lua")
  l0 = self[60]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_60_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[80] = cbox:CreateBox("Domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[80]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_80_Stopped
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[55] = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self[55]
  l0._graph = self
  l0.Loaded = self.f_55_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[160] = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self[160]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_160_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[134] = cbox:CreateBox("Domino/System/MultipleAND.lua")
  l0 = self[134]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 4}
  l0.Out = self.f_134_Out
  self[102] = cbox:CreateBox("Domino/System/VehicleBhvController.lua")
  l0 = self[102]
  l0._graph = self
  l0.StartCompleted = self.f_102_StartCompleted
  l0.StopCompleted = DummyFunction
  l0.ForcedFakeFollow = DummyFunction
  self[157] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua")
  l0 = self[157]
  l0._graph = self
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_157_Out
  l0.ResetOut = DummyFunction
  self[118] = cbox:CreateBox("Domino/System/MultipleAND.lua")
  l0 = self[118]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_118_Out
  self[144] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[144]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_144_Out
  self[121] = cbox:CreateBox("Domino/System/IntegerSelect.lua")
  l0 = self[121]
  l0._graph = self
  l0._DynamicAnchors = {Case = 4, Match = 4}
  l0.Out = DummyFunction
  l0.Match[0] = self.f_121_Match_0
  l0.Match[1] = self.f_121_Match_1
  l0.Match[2] = self.f_121_Match_2
  l0.Match[3] = self.f_121_Match_3
  l0.None = DummyFunction
  self[47] = cbox:CreateBox("Domino/System/RaceMonitor.lua")
  l0 = self[47]
  l0._graph = self
  l0.OnPlayerRankUpdated = self.f_47_OnPlayerRankUpdated
  self[99] = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self[99]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_99_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[6] = cbox:CreateBox("Domino/System/TaxiStrategiesController.lua")
  l0 = self[6]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = self.f_6_Paused
  l0.Resumed = DummyFunction
  self[14] = cbox:CreateBox("Domino/System/Lists/ListWriter.lua")
  l0 = self[14]
  l0._graph = self
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_14_Added
  l0.Removed = self.f_14_Removed
  l0.Out = self.f_14_Out
  self[83] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua")
  l0 = self[83]
  l0._graph = self
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_83_Out
  l0.ResetOut = DummyFunction
  self[31] = cbox:CreateBox("Domino/System/TriggerMonitor_v2.lua")
  l0 = self[31]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_31_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[61] = cbox:CreateBox("Domino/System/VehicleBhvMonitor.lua")
  l0 = self[61]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Stuck = DummyFunction
  l0.Broken = DummyFunction
  l0.TargetDetected = DummyFunction
  l0.InLOS = DummyFunction
  l0.ReacquireLOSTimerExpired = DummyFunction
  l0.LostLOSTimerExpired = DummyFunction
  l0.SuspiciousTargetAction = DummyFunction
  l0.SpecificPathPointReached = DummyFunction
  l0.PathPointReached = DummyFunction
  l0.EndPathPointReached = self.f_61_EndPathPointReached
  l0.InRange = DummyFunction
  l0.WarningRange = DummyFunction
  l0.OutsideRange = DummyFunction
  l0.OutsideTimerExpired = DummyFunction
  self[117] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[117]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_117_Out
  self[101] = cbox:CreateBox("Domino/System/MultipleAND.lua")
  l0 = self[101]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 4}
  l0.Out = self.f_101_Out
  self[92] = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self[92]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_92_OnUserInPlace
  self[130] = cbox:CreateBox("Domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[130]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_130_Stopped
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[52] = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self[52]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_52_Unloaded
  l0.Reseted = DummyFunction
  self[112] = cbox:CreateBox("Domino/System/MapPointController_v4.lua")
  l0 = self[112]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[89] = cbox:CreateBox("Domino/System/VehicleBhvController.lua")
  l0 = self[89]
  l0._graph = self
  l0.StartCompleted = self.f_89_StartCompleted
  l0.StopCompleted = DummyFunction
  l0.ForcedFakeFollow = DummyFunction
  self[12] = cbox:CreateBox("Domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[12]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_12_Stopped
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[128] = cbox:CreateBox("Domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[128]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_128_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_128_TalkFailed
  self[79] = cbox:CreateBox("Domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[79]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_79_Stopped
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[39] = cbox:CreateBox("Domino/System/RaceMonitor.lua")
  l0 = self[39]
  l0._graph = self
  l0.OnPlayerRankUpdated = self.f_39_OnPlayerRankUpdated
  self[44] = cbox:CreateBox("Domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[44]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_44_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_44_TalkFailed
  self[51] = cbox:CreateBox("Domino/System/MultipleAND.lua")
  l0 = self[51]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 4}
  l0.Out = self.f_51_Out
  self[106] = cbox:CreateBox("Domino/System/VehicleBhvController.lua")
  l0 = self[106]
  l0._graph = self
  l0.StartCompleted = self.f_106_StartCompleted
  l0.StopCompleted = DummyFunction
  l0.ForcedFakeFollow = DummyFunction
  self[37] = cbox:CreateBox("Domino/System/IntegerSelect.lua")
  l0 = self[37]
  l0._graph = self
  l0._DynamicAnchors = {Case = 4, Match = 4}
  l0.Out = DummyFunction
  l0.Match[0] = self.f_37_Match_0
  l0.Match[1] = self.f_37_Match_1
  l0.Match[2] = self.f_37_Match_2
  l0.Match[3] = self.f_37_Match_3
  l0.None = DummyFunction
  self[24] = cbox:CreateBox("Domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.lua")
  l0 = self[24]
  l0._graph = self
  self[126] = cbox:CreateBox("Domino/System/MapPointController_v4.lua")
  l0 = self[126]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = self.f_126_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[110] = cbox:CreateBox("Domino/Library/common/SnapAndBind.SnapAndBind.lua")
  l0 = self[110]
  l0._graph = self
  l0.Attached = self.f_110_Attached
  self[152] = cbox:CreateBox("Domino/System/GameplayInteractionController.lua")
  l0 = self[152]
  l0._graph = self
  l0.Out = self.f_152_Out
  l0.Started = self.f_152_Started
  l0.Stopped = DummyFunction
  self[90] = cbox:CreateBox("Domino/System/VehicleSeatingController.lua")
  l0 = self[90]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_90_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self[9] = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self[9]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_9_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[17] = cbox:CreateBox("Domino/System/TaxiStrategiesController.lua")
  l0 = self[17]
  l0._graph = self
  l0.Started = self.f_17_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self[94] = cbox:CreateBox("Domino/System/VehicleSeatingController.lua")
  l0 = self[94]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_94_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self[45] = cbox:CreateBox("Domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[45]
  l0._graph = self
  l0.Started = self.f_45_Started
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_45_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_45_TalkFailed
  self[73] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[73]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_73_Out
  self[62] = cbox:CreateBox("Domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[62]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[13] = cbox:CreateBox("Domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[13]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_13_Stopped
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[71] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[71]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_71_Out
  self[74] = cbox:CreateBox("Domino/System/VehicleBhvMonitor.lua")
  l0 = self[74]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Stuck = DummyFunction
  l0.Broken = DummyFunction
  l0.TargetDetected = DummyFunction
  l0.InLOS = DummyFunction
  l0.ReacquireLOSTimerExpired = DummyFunction
  l0.LostLOSTimerExpired = DummyFunction
  l0.SuspiciousTargetAction = DummyFunction
  l0.SpecificPathPointReached = DummyFunction
  l0.PathPointReached = DummyFunction
  l0.EndPathPointReached = self.f_74_EndPathPointReached
  l0.InRange = DummyFunction
  l0.WarningRange = DummyFunction
  l0.OutsideRange = DummyFunction
  l0.OutsideTimerExpired = DummyFunction
  self[5] = cbox:CreateBox("Domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[5]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_5_PostOut
  self[29] = cbox:CreateBox("Domino/System/MapPointController_v4.lua")
  l0 = self[29]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[68] = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self[68]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[137] = cbox:CreateBox("Domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[137]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_137_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_137_TalkFailed
  self[153] = cbox:CreateBox("Domino/System/Lists/ListWriter.lua")
  l0 = self[153]
  l0._graph = self
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_153_Added
  l0.Removed = self.f_153_Removed
  l0.Out = self.f_153_Out
  self[38] = cbox:CreateBox("Domino/System/TaxiRatingController.lua")
  l0 = self[38]
  l0._graph = self
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = self.f_38_RatingReset
  l0.RewardShown = DummyFunction
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self[140] = cbox:CreateBox("Domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[140]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_140_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_140_TalkFailed
  self[53] = cbox:CreateBox("Domino/System/GameplayInteractionController.lua")
  l0 = self[53]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_53_Started
  l0.Stopped = DummyFunction
  self[25] = cbox:CreateBox("Domino/System/TaxiRatingController.lua")
  l0 = self[25]
  l0._graph = self
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = DummyFunction
  l0.RewardShown = self.f_25_RewardShown
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self[120] = cbox:CreateBox("Domino/System/VehicleBhvMonitor.lua")
  l0 = self[120]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Stuck = DummyFunction
  l0.Broken = DummyFunction
  l0.TargetDetected = DummyFunction
  l0.InLOS = DummyFunction
  l0.ReacquireLOSTimerExpired = DummyFunction
  l0.LostLOSTimerExpired = DummyFunction
  l0.SuspiciousTargetAction = DummyFunction
  l0.SpecificPathPointReached = DummyFunction
  l0.PathPointReached = DummyFunction
  l0.EndPathPointReached = self.f_120_EndPathPointReached
  l0.InRange = DummyFunction
  l0.WarningRange = DummyFunction
  l0.OutsideRange = DummyFunction
  l0.OutsideTimerExpired = DummyFunction
  self[95] = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self[95]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_95_OnUserInPlace
  self[93] = cbox:CreateBox("Domino/System/VehicleBhvController.lua")
  l0 = self[93]
  l0._graph = self
  l0.StartCompleted = self.f_93_StartCompleted
  l0.StopCompleted = DummyFunction
  l0.ForcedFakeFollow = DummyFunction
  self[158] = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self[158]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_158_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[21] = cbox:CreateBox("Domino/System/MapPointController_v4.lua")
  l0 = self[21]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[42] = cbox:CreateBox("Domino/System/TriggerMonitor_v2.lua")
  l0 = self[42]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_42_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[88] = cbox:CreateBox("Domino/System/VehicleBhvController.lua")
  l0 = self[88]
  l0._graph = self
  l0.StartCompleted = self.f_88_StartCompleted
  l0.StopCompleted = DummyFunction
  l0.ForcedFakeFollow = DummyFunction
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
  l0 = self[65]
  l0:Input(1)
end
function export:In()
  local l0
  l0 = self[65]
  l0:Input(0)
end
function export:f_139_Match_0()
  local l0
  self = self._graph
  self:en_79()
  l0 = self[79]
  l0:Start()
end
function export:f_139_Match_1()
  local l0
  self = self._graph
  self:en_80()
  l0 = self[80]
  l0:Start()
end
function export:f_139_Match_2()
  local l0
  self = self._graph
  self:en_141()
  l0 = self[141]
  l0:Start()
end
function export:f_139_Match_3()
  local l0
  self = self._graph
  self:en_57()
  l0 = self[57]
  l0:Start()
end
function export:f_46_Added()
  local l0
  self = self._graph
  l0 = self[46]
  self.DriverList = l0.Target
  l0 = Boxes[PathID("Domino/System/DPadHackableController.lua")]
  l0.HackableEntity = nil
  l0.HackableEntityList = self.VehicleList
  l0.HackCategoryType[0] = "EngineOverheat"
  l0.HackCategoryType[1] = "LockLeftWheel"
  l0.HackCategoryType[2] = "LockRightWheel"
  l0.HackCategoryType[3] = "LockBrakes"
  l0._graph = self
  l0._DynamicAnchors = {HackCategoryType = 4}
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = DummyFunction
  l0.Removed = self.f_54_Removed
  l0.RemovedAll = DummyFunction
  l0.HackingDisabled = DummyFunction
  l0:Remove()
end
function export:f_46_Out()
  local l0
  self = self._graph
  l0 = self[46]
  self.DriverList = l0.Target
end
function export:f_46_Removed()
  local l0
  self = self._graph
  l0 = self[46]
  self.DriverList = l0.Target
end
function export:f_49_TalkFailed()
  local l0
  self = self._graph
  l0 = self[144]
  l0:Input(1)
end
function export:f_49_TalkFinished()
  local l0
  self = self._graph
  l0 = self[144]
  l0:Input(0)
end
function export:f_41_Hidden()
  local l0
  self = self._graph
  l0 = self[100]
  l0.Seconds = 1
  l0:Start()
end
function export:f_8_TalkFailed()
  local l0
  self = self._graph
  l0 = self[84]
  l0:Input(1)
end
function export:f_8_TalkFinished()
  local l0
  self = self._graph
  l0 = self[84]
  l0:Input(0)
end
function export:f_154_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_156_Out
  l0:In()
end
function export:f_40_Hidden()
  local l0
  self = self._graph
  l0 = self[93]
  l0.VehicleMaster = self.Car3
  l0.VehicleTarget = self.PlayerVehicle
  l0.PathOrPos = "9223372048443832631"
  l0.Config = "VehicleBhvSetup.9223372072344162524"
  l0.StopAtEndPoint = 1
  l0:Start()
end
function export:f_97_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/VehicleController.lua")]
  l0.Vehicle = self.Car3
  l0._graph = self
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.Destructable = self.f_149_Destructable
  l0.Indestructable = DummyFunction
  l0.Deflatable = DummyFunction
  l0.Undeflatable = DummyFunction
  l0.Unmovable = DummyFunction
  l0.Movable = DummyFunction
  l0.EngineBroken = DummyFunction
  l0.EngineShutDown = DummyFunction
  l0.EngineStarted = DummyFunction
  l0.VehicleExploded = DummyFunction
  l0:SetAsDestructable()
end
function export:f_97_Enabled()
  local l0
  self = self._graph
  l0 = self[108]
  l0.Parent = self.Car3
  l0.Child = "9223372048443829523"
  l0.CarIcon = 1
  l0:Attach()
end
function export:f_97_EndPathPointReached()
  local l0
  self = self._graph
  self:en_97()
  l0 = self[97]
  l0:Disable()
end
function export:f_59_TalkFailed()
  local l0
  self = self._graph
  l0 = self[73]
  l0:Input(1)
end
function export:f_59_TalkFinished()
  local l0
  self = self._graph
  l0 = self[73]
  l0:Input(0)
end
function export:f_78_Stopped()
  local l0
  self = self._graph
  l0 = self[33]
  l0:ShowMissionComplete()
end
function export:f_76_Pushed()
  local l0
  self = self._graph
  l0 = self[9]
  l0:Start()
end
function export:f_108_Attached()
  local l0
  self = self._graph
  l0 = self[159]
  l0.Seconds = 0.5
  l0:Start()
end
function export:f_64_UnspawnedUser()
  local l0
  self = self._graph
  l0 = self[66]
  l0.User = self.Driver2
  l0:UnspawnUser()
end
function export:f_7_Out()
  local l0
  self = self._graph
  self:en_2()
  l0 = self[2]
  l0:Disable()
end
function export:f_129_Stopped()
  local l0
  self = self._graph
  l0 = self[134]
  l0:Condition(0)
end
function export:f_84_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_104_Out_0
  l0.Out[1] = self.f_104_Out_1
  l0.Out[2] = self.f_104_Out_2
  l0.Out[3] = self.f_104_Out_3
  l0:In()
end
function export:f_103_Out()
  local l0
  self = self._graph
  l0 = self[48]
  l0.Input = self.VehicleList
  l0.Data[0] = self.Car1
  l0.Data[1] = self.Car2
  l0.Data[2] = self.Car3
  l0:Add()
end
function export:f_100_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[88]
  l0.VehicleMaster = self.Car1
  l0.VehicleTarget = self.PlayerVehicle
  l0.PathOrPos = "9223372048443829538"
  l0.Config = "VehicleBhvSetup.9223372072344162524"
  l0.StopAtEndPoint = 1
  l0:Start()
end
function export:f_15_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_155_Out_0
  l0.Out[1] = self.f_155_Out_1
  l0:In()
end
function export:f_58_Stopped()
  local l0
  self = self._graph
  l0 = self[62]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372060254403113"
  l0.StartDelay = 1
  l0:Start()
end
function export:f_91_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[91]
  self.Car2 = l0.UserID
  l0 = Boxes[PathID("Domino/System/VehicleController.lua")]
  l0.Vehicle = self.Car2
  l0._graph = self
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.Destructable = DummyFunction
  l0.Indestructable = self.f_70_Indestructable
  l0.Deflatable = DummyFunction
  l0.Undeflatable = DummyFunction
  l0.Unmovable = DummyFunction
  l0.Movable = DummyFunction
  l0.EngineBroken = DummyFunction
  l0.EngineShutDown = DummyFunction
  l0.EngineStarted = DummyFunction
  l0.VehicleExploded = DummyFunction
  l0:SetAsIndestructable()
end
function export:f_23_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetInteger_v2.lua")]
  l0.Integer = 0
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0.Out = self.f_56_Out
  l0:FromInteger()
end
function export:f_72_Enter()
  local l0
  self = self._graph
  self:en_58()
  l0 = self[58]
  l0:Stop()
end
function export:f_124_Out_0()
  local l0
  self = self._graph
  self:en_129()
  l0 = self[129]
  l0:Stop()
end
function export:f_124_Out_1()
  local l0
  self = self._graph
  self:en_130()
  l0 = self[130]
  l0:Stop()
end
function export:f_124_Out_2()
  local l0
  self = self._graph
  self:en_131()
  l0 = self[131]
  l0:Stop()
end
function export:f_124_Out_3()
  local l0
  self = self._graph
  self:en_133()
  l0 = self[133]
  l0:Stop()
end
function export:f_147_Indestructable()
  local l0
  self = self._graph
  l0 = self[86]
  l0.CLO = "9223372048443829521"
  l0:Activate()
end
function export:f_3_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CinemaZoneCleanup.lua")]
  l0.TargetZone = "9223372070356287990"
  l0.SceneEntity = nil
  l0.RemoveBreakable = 0
  l0.RemoveCharacter = 0
  l0.RemoveVehicle = 1
  l0.RemoveWeapon = nil
  l0.RemoveDeadBody = nil
  l0.RemoveRigidPhysObject = nil
  l0.StopDialog = 0
  l0.NotRemovableEntity[0] = self.PlayerVehicle
  l0._graph = self
  l0._DynamicAnchors = {NotRemovableEntity = 1}
  l0.Out = self.f_151_Out
  l0:CleanZone()
end
function export:f_3_ReachDestination()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:Disable()
end
function export:f_150_Destructable()
  local l0
  self = self._graph
  l0 = self[101]
  l0:Condition(3)
end
function export:f_109_Attached()
  local l0
  self = self._graph
  l0 = self[158]
  l0.Seconds = 0.5
  l0:Start()
end
function export:f_119_Out()
  local l0
  self = self._graph
  l0 = self[101]
  l0:Condition(0)
end
function export:f_116_Out_0()
  local l0
  self = self._graph
  l0 = self[87]
  l0.Vehicle = self.Car1
  l0.Pawn = self.Driver1
  l0.Seat = "Driver"
  l0:Assign()
end
function export:f_116_Out_1()
  local l0
  self = self._graph
  l0 = self[103]
  l0:Condition(2)
end
function export:f_70_Indestructable()
  local l0
  self = self._graph
  l0 = self[92]
  l0.CLO = "9223372048443832626"
  l0:Activate()
end
function export:f_135_TalkFailed()
  local l0
  self = self._graph
  l0 = self[122]
  l0:Input(3)
end
function export:f_135_TalkFinished()
  local l0
  self = self._graph
  l0 = self[122]
  l0:Input(2)
end
function export:f_34_Enter()
  local l0
  self = self._graph
  self:en_13()
  l0 = self[13]
  l0:Stop()
end
function export:f_32_Out_0()
  local l0
  self = self._graph
  l0 = self[30]
  l0.Trigger = "9223372056449869466"
  l0.AutoDisable = 1
  l0:Enable()
end
function export:f_32_Out_1()
  local l0
  self = self._graph
  l0 = self[31]
  l0.Trigger = "9223372056675091874"
  l0.AutoDisable = 1
  l0:Enable()
end
function export:f_32_Out_2()
  local l0
  self = self._graph
  l0 = self[34]
  l0.Trigger = "9223372056675092513"
  l0.AutoDisable = 1
  l0:Enable()
end
function export:f_32_Out_3()
  local l0
  self = self._graph
  l0 = self[75]
  l0.Trigger = "9223372056675092524"
  l0.AutoDisable = 1
  l0:Enable()
end
function export:f_32_Out_4()
  local l0
  self = self._graph
  l0 = self[42]
  l0.Trigger = "9223372056675092534"
  l0.AutoDisable = 1
  l0:Enable()
end
function export:f_32_Out_5()
  local l0
  self = self._graph
  l0 = self[60]
  l0.Trigger = "9223372056675092542"
  l0.AutoDisable = 1
  l0:Enable()
end
function export:f_32_Out_6()
  local l0
  self = self._graph
  l0 = self[72]
  l0.Trigger = "9223372056675092544"
  l0.AutoDisable = 1
  l0:Enable()
end
function export:f_18_Out()
  local l0
  self = self._graph
  l0 = self[15]
  l0:Condition(1)
end
function export:f_133_Stopped()
  local l0
  self = self._graph
  l0 = self[134]
  l0:Condition(3)
end
function export:f_132_RatingRemoved()
  local l0
  self = self._graph
  l0 = self[121]
  l0.Integer = self.NoCarsFinishedRace
  l0.Case[0] = 0
  l0.Case[1] = 2
  l0.Case[2] = 4
  l0.Case[3] = 6
  l0:In()
end
function export:f_159_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[111]
  l0.MapPoint = "9223372048443829523"
  l0:Show()
end
function export:f_143_Out()
  local l0
  self = self._graph
  l0 = self[118]
  l0:Condition(0)
end
function export:f_66_UnspawnedUser()
  local l0
  self = self._graph
  l0 = self[68]
  l0.User = self.Driver3
  l0:UnspawnUser()
end
function export:f_131_Stopped()
  local l0
  self = self._graph
  l0 = self[134]
  l0:Condition(2)
end
function export:f_82_Out()
  local l0
  self = self._graph
  l0 = self[83]
  l0:In(0)
end
function export:f_57_Stopped()
  local l0
  self = self._graph
  l0 = self[51]
  l0:Condition(3)
end
function export:f_26_Attached()
  local l0
  self = self._graph
  self:en_10()
  l0 = self[10]
  l0:Enable()
end
function export:f_63_Stopped()
  local l0
  self = self._graph
  l0 = self[39]
  l0.Race = "RaceDbConfig.9223372056449869464"
  l0:GetPlayerRank()
end
function export:f_145_OnRaceFinished()
  local l0
  self = self._graph
  self:en_145()
  l0 = self[145]
  l0:StopRace()
end
function export:f_145_OnRaceSetupFinished()
  local l0
  self = self._graph
  self:en_145()
  l0 = self[145]
  l0:StartRace()
end
function export:f_145_OnRaceStarted()
  local l0
  self = self._graph
  l0 = self[82]
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF210",
    item = "Objective_Race",
    id = "630518"
  }
  l0.HasObjectiveMarker = 0
  l0:ShowNewObjective()
end
function export:f_145_OnRaceStopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_20_Out_0
  l0.Out[1] = self.f_20_Out_1
  l0.Out[2] = self.f_20_Out_2
  l0.Out[3] = self.f_20_Out_3
  l0:In()
end
function export:f_125_Hidden()
  local l0
  self = self._graph
  l0 = self[71]
  l0:Input(2)
end
function export:f_107_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/VehicleController.lua")]
  l0.Vehicle = self.Car2
  l0._graph = self
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.Destructable = self.f_148_Destructable
  l0.Indestructable = DummyFunction
  l0.Deflatable = DummyFunction
  l0.Undeflatable = DummyFunction
  l0.Unmovable = DummyFunction
  l0.Movable = DummyFunction
  l0.EngineBroken = DummyFunction
  l0.EngineShutDown = DummyFunction
  l0.EngineStarted = DummyFunction
  l0.VehicleExploded = DummyFunction
  l0:SetAsDestructable()
end
function export:f_107_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_50_Out_0
  l0.Out[1] = self.f_50_Out_1
  l0:In()
end
function export:f_107_EndPathPointReached()
  local l0
  self = self._graph
  self:en_107()
  l0 = self[107]
  l0:Disable()
end
function export:f_86_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[86]
  self.Driver1 = l0.UserID
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_116_Out_0
  l0.Out[1] = self.f_116_Out_1
  l0:In()
end
function export:f_96_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[96]
  self.Driver3 = l0.UserID
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_115_Out_0
  l0.Out[1] = self.f_115_Out_1
  l0:In()
end
function export:f_10_ClientDropOff()
  local l0
  self = self._graph
  self:en_10()
  l0 = self[10]
  l0:Disable()
end
function export:f_10_Disabled()
  local l0
  self = self._graph
  l0 = self[25]
  l0.MissionName = self.Mission
  l0:ShowReward()
end
function export:f_10_ReachDestination()
  local l0
  self = self._graph
  l0 = self[64]
  l0.User = self.Driver1
  l0:UnspawnUser()
end
function export:f_148_Destructable()
  local l0
  self = self._graph
  l0 = self[101]
  l0:Condition(1)
end
function export:f_30_Enter()
  local l0
  self = self._graph
  self:en_12()
  l0 = self[12]
  l0:Start()
end
function export:f_65_Out()
  local l0
  self = self._graph
  l0 = self[55]
  l0.LayerName = "Taxi21_Main"
  l0:Load()
end
function export:f_48_Added()
  local l0
  self = self._graph
  l0 = self[48]
  self.VehicleList = l0.Target
  l0 = self[46]
  l0.Input = self.DriverList
  l0.Data[0] = self.Driver1
  l0.Data[1] = self.Driver2
  l0.Data[2] = self.Driver3
  l0:Add()
end
function export:f_48_Out()
  local l0
  self = self._graph
  l0 = self[48]
  self.VehicleList = l0.Target
end
function export:f_48_Removed()
  local l0
  self = self._graph
  l0 = self[48]
  self.VehicleList = l0.Target
end
function export:f_142_Out_0()
  local l0
  self = self._graph
  self:en_79()
  l0 = self[79]
  l0:Stop()
end
function export:f_142_Out_1()
  local l0
  self = self._graph
  self:en_80()
  l0 = self[80]
  l0:Stop()
end
function export:f_142_Out_2()
  local l0
  self = self._graph
  self:en_141()
  l0 = self[141]
  l0:Stop()
end
function export:f_142_Out_3()
  local l0
  self = self._graph
  self:en_57()
  l0 = self[57]
  l0:Stop()
end
function export:f_127_Hidden()
  local l0
  self = self._graph
  l0 = self[71]
  l0:Input(1)
end
function export:f_141_Stopped()
  local l0
  self = self._graph
  l0 = self[51]
  l0:Condition(2)
end
function export:f_98_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/VehicleController.lua")]
  l0.Vehicle = self.Car1
  l0._graph = self
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.Destructable = self.f_150_Destructable
  l0.Indestructable = DummyFunction
  l0.Deflatable = DummyFunction
  l0.Undeflatable = DummyFunction
  l0.Unmovable = DummyFunction
  l0.Movable = DummyFunction
  l0.EngineBroken = DummyFunction
  l0.EngineShutDown = DummyFunction
  l0.EngineStarted = DummyFunction
  l0.VehicleExploded = DummyFunction
  l0:SetAsDestructable()
end
function export:f_98_Enabled()
  local l0
  self = self._graph
  l0 = self[110]
  l0.Parent = self.Car1
  l0.Child = "9223372048443840070"
  l0.CarIcon = 1
  l0:Attach()
end
function export:f_98_EndPathPointReached()
  local l0
  self = self._graph
  self:en_98()
  l0 = self[98]
  l0:Disable()
end
function export:f_50_Out_0()
  local l0
  self = self._graph
  l0 = self[118]
  l0:Condition(1)
end
function export:f_50_Out_1()
  local l0
  self = self._graph
  l0 = self[109]
  l0.Parent = self.Car2
  l0.Child = "9223372048443840068"
  l0.CarIcon = 1
  l0:Attach()
end
function export:f_136_TalkFailed()
  local l0
  self = self._graph
  l0 = self[122]
  l0:Input(5)
end
function export:f_136_TalkFinished()
  local l0
  self = self._graph
  l0 = self[122]
  l0:Input(4)
end
function export:f_11_ClientConversationFinised()
  local l0
  self = self._graph
  self:en_11()
  l0 = self[11]
  l0:Disable()
end
function export:f_11_ClientPickedUp()
  local l0
  self = self._graph
  l0 = self[11]
  self.PlayerVehicle = l0.Vehicle
  self:en_3()
  l0 = self[3]
  l0:Enable()
end
function export:f_11_ClientSpawned()
  local l0
  self = self._graph
  l0 = self[11]
  self.Client = l0.Client
  self:en_2()
  l0 = self[2]
  l0:Enable()
end
function export:f_11_Disabled()
  local l0
  self = self._graph
  l0 = self[153]
  l0.Input = self.ActorList
  l0.Data[0] = self.Client
  l0.Data[1] = self.PlayerEntity
  l0:Add()
end
function export:f_123_Out()
  local l0
  self = self._graph
  self:en_63()
  l0 = self[63]
  l0:Start()
end
function export:f_105_StartCompleted()
  local l0
  self = self._graph
  l0 = self[74]
  l0.Vehicle = self.Car2
  l0:Enable()
end
function export:f_33_Out()
  local l0
  self = self._graph
  l0 = self[52]
  l0.LayerName = "Taxi21_Main"
  l0:Unload()
end
function export:f_122_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic_nocameralock"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_67_Popped
  l0:Pop()
end
function export:f_151_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic_nocameralock"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_1_Pushed
  l0.Popped = DummyFunction
  l0:Push()
end
function export:f_85_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[85]
  self.Car1 = l0.UserID
  l0 = Boxes[PathID("Domino/System/VehicleController.lua")]
  l0.Vehicle = self.Car1
  l0._graph = self
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.Destructable = DummyFunction
  l0.Indestructable = self.f_147_Indestructable
  l0.Deflatable = DummyFunction
  l0.Undeflatable = DummyFunction
  l0.Unmovable = DummyFunction
  l0.Movable = DummyFunction
  l0.EngineBroken = DummyFunction
  l0.EngineShutDown = DummyFunction
  l0.EngineStarted = DummyFunction
  l0.VehicleExploded = DummyFunction
  l0:SetAsIndestructable()
end
function export:f_54_Removed()
  local l0
  self = self._graph
  l0 = self[81]
  l0.HackableEntityList = self.DriverList
  l0:DisableProfiling()
end
function export:f_87_AssignCompleted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.Driver1
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_41_Hidden
  l0.Out = DummyFunction
  l0:Hide()
end
function export:f_75_Enter()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_124_Out_0
  l0.Out[1] = self.f_124_Out_1
  l0.Out[2] = self.f_124_Out_2
  l0.Out[3] = self.f_124_Out_3
  l0:In()
end
function export:f_20_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_28_Out
  l0:In()
end
function export:f_20_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic_nocameralock"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_76_Pushed
  l0.Popped = DummyFunction
  l0:Push()
end
function export:f_20_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_7_Out
  l0:In()
end
function export:f_20_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_22_Out_0
  l0.Out[1] = self.f_22_Out_1
  l0.Out[2] = self.f_22_Out_2
  l0:In()
end
function export:f_2_ClientBailedOut()
  local l0
  self = self._graph
  self:en_24()
  l0 = self[24]
  l0:ClientBailedOut()
end
function export:f_2_ClientDeath()
  local l0
  self = self._graph
  self:en_24()
  l0 = self[24]
  l0:ClientDead()
end
function export:f_2_PlayerAbandonedVehicle()
  local l0
  self = self._graph
  self:en_24()
  l0 = self[24]
  l0:PlayerAbandonedVehicle()
end
function export:f_2_VehicleUnusable()
  local l0
  self = self._graph
  self:en_24()
  l0 = self[24]
  l0:VehicleUnusable()
end
function export:f_104_Out_0()
  local l0
  self = self._graph
  l0 = self[102]
  l0.VehicleMaster = self.Car3
  l0.VehicleTarget = self.PlayerEntity
  l0.PathOrPos = "9223372048443836966"
  l0.Config = "VehicleBhvSetup.9223372045908643591"
  l0.StopAtEndPoint = 1
  l0:Start()
end
function export:f_104_Out_1()
  local l0
  self = self._graph
  l0 = self[105]
  l0.VehicleMaster = self.Car2
  l0.VehicleTarget = self.PlayerEntity
  l0.PathOrPos = "9223372048443836966"
  l0.Config = "VehicleBhvSetup.9223372045908643591"
  l0.StopAtEndPoint = 1
  l0:Start()
end
function export:f_104_Out_2()
  local l0
  self = self._graph
  l0 = self[106]
  l0.VehicleMaster = self.Car1
  l0.VehicleTarget = self.PlayerEntity
  l0.PathOrPos = "9223372048443836966"
  l0.Config = "VehicleBhvSetup.9223372045908643591"
  l0.StopAtEndPoint = 1
  l0:Start()
end
function export:f_104_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic_nocameralock"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_19_Popped
  l0:Pop()
end
function export:f_60_Enter()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_142_Out_0
  l0.Out[1] = self.f_142_Out_1
  l0.Out[2] = self.f_142_Out_2
  l0.Out[3] = self.f_142_Out_3
  l0:In()
end
function export:f_80_Stopped()
  local l0
  self = self._graph
  l0 = self[51]
  l0:Condition(1)
end
function export:f_55_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_69_Out
  l0:In()
end
function export:f_115_Out_0()
  local l0
  self = self._graph
  l0 = self[94]
  l0.Vehicle = self.Car3
  l0.Pawn = self.Driver3
  l0.Seat = "Driver"
  l0:Assign()
end
function export:f_115_Out_1()
  local l0
  self = self._graph
  l0 = self[103]
  l0:Condition(1)
end
function export:f_160_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[113]
  l0.MapPoint = "9223372048443840070"
  l0:Show()
end
function export:f_43_ResetOut()
  local l0
  self = self._graph
  l0 = self[6]
  l0.Config = "TaxiRideStrategyConfig.9223372048443828909"
  l0:Pause()
end
function export:f_43_Stopped()
  local l0
  self = self._graph
  self:en_43()
  l0 = Boxes[PathID("Domino/System/ForcePawnsVehicleStop_v2.lua")]
  l0:Reset()
end
function export:f_56_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetInteger_v2.lua")]
  self.NoCarsFinishedRace = l0.Target
  self:en_11()
  l0 = self[11]
  l0:Enable()
end
function export:f_134_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_123_Out
  l0:In()
end
function export:f_67_Popped()
  local l0
  self = self._graph
  l0 = self[26]
  l0.Parent = self.PlayerVehicle
  l0.Child = "9223372048443841316"
  l0:Attach()
end
function export:f_102_StartCompleted()
  local l0
  self = self._graph
  l0 = self[61]
  l0.Vehicle = self.Car3
  l0:Enable()
end
function export:f_157_Out()
  local l0
  self = self._graph
  l0 = self[59]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372056449869150"
  l0.StartDelay = 0.1
  l0:Start()
end
function export:f_118_Out()
  local l0
  self = self._graph
  l0 = self[49]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372056449869151"
  l0.StartDelay = 1
  l0:Start()
end
function export:f_22_Out_0()
  local l0
  self = self._graph
  l0 = self[16]
  l0.MapPoint = "9223372048443840070"
  l0:Hide()
end
function export:f_22_Out_1()
  local l0
  self = self._graph
  l0 = self[29]
  l0.MapPoint = "9223372048443840068"
  l0:Hide()
end
function export:f_22_Out_2()
  local l0
  self = self._graph
  l0 = self[21]
  l0.MapPoint = "9223372048443829523"
  l0:Hide()
end
function export:f_1_Pushed()
  local l0
  self = self._graph
  l0 = self[18]
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF210",
    item = "Objective_Wait",
    id = "630517"
  }
  l0.HasObjectiveMarker = 0
  l0:ShowNewObjective()
end
function export:f_144_Out()
  local l0
  self = self._graph
  l0 = self[44]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372056449869152"
  l0.StartDelay = 2
  l0:Start()
end
function export:f_121_Match_0()
  local l0
  self = self._graph
  l0 = self[128]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149922"
  l0.StartDelay = 1
  l0:Start()
end
function export:f_121_Match_1()
  local l0
  self = self._graph
  l0 = self[135]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149920"
  l0.StartDelay = 1
  l0:Start()
end
function export:f_121_Match_2()
  local l0
  self = self._graph
  l0 = self[136]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372060806248342"
  l0.StartDelay = 1
  l0:Start()
end
function export:f_121_Match_3()
  local l0
  self = self._graph
  l0 = self[137]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149918"
  l0.StartDelay = 1
  l0:Start()
end
function export:f_47_OnPlayerRankUpdated()
  local l0, l1
  self = self._graph
  l0 = self[47]
  l1 = self[37]
  l1.Integer = l0.PlayerRank
  l1.Case[0] = 1
  l1.Case[1] = 2
  l1.Case[2] = 3
  l1.Case[3] = 4
  l1:In()
end
function export:f_99_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[89]
  l0.VehicleMaster = self.Car2
  l0.VehicleTarget = self.PlayerVehicle
  l0.PathOrPos = "9223372048443832629"
  l0.Config = "VehicleBhvSetup.9223372072344162524"
  l0.StopAtEndPoint = 1
  l0:Start()
end
function export:f_28_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_27_Out
  l0:In()
end
function export:f_6_Paused()
  local l0
  self = self._graph
  l0 = self[140]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149921"
  l0.StartDelay = 0.1
  l0:Start()
end
function export:f_14_Added()
  local l0
  self = self._graph
  l0 = self[14]
  self.ActorList = l0.Target
  self:en_53()
  l0 = self[53]
  l0:Start()
end
function export:f_14_Out()
  local l0
  self = self._graph
  l0 = self[14]
  self.ActorList = l0.Target
end
function export:f_14_Removed()
  local l0
  self = self._graph
  l0 = self[14]
  self.ActorList = l0.Target
end
function export:f_83_Out()
  local l0
  self = self._graph
  l0 = self[38]
  l0.MissionName = self.Mission
  l0:ResetRating()
end
function export:f_31_Enter()
  local l0
  self = self._graph
  self:en_12()
  l0 = self[12]
  l0:Stop()
end
function export:f_61_EndPathPointReached()
  local l0
  self = self._graph
  l0 = self[126]
  l0.MapPoint = "9223372048443829523"
  l0:Hide()
end
function export:f_117_Out()
  local l0
  self = self._graph
  l0 = self[132]
  l0.MissionName = self.Mission
  l0.RatingAmount = self.NoCarsFinishedRace
  l0:RemoveRating()
end
function export:f_101_Out()
  local l0
  self = self._graph
  l0 = self[8]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372049052868102"
  l0.StartDelay = 1
  l0:Start()
end
function export:f_92_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[92]
  self.Driver2 = l0.UserID
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_114_Out_0
  l0.Out[1] = self.f_114_Out_1
  l0:In()
end
function export:f_130_Stopped()
  local l0
  self = self._graph
  l0 = self[134]
  l0:Condition(1)
end
function export:f_52_Unloaded()
  local l0
  self = self._graph
  l0 = self[4]
  l0:Succeed()
end
function export:f_149_Destructable()
  local l0
  self = self._graph
  l0 = self[101]
  l0:Condition(2)
end
function export:f_138_Out()
  local l0
  self = self._graph
  self:en_58()
  l0 = self[58]
  l0:Start()
end
function export:f_146_Indestructable()
  local l0
  self = self._graph
  l0 = self[96]
  l0.CLO = "9223372048443832627"
  l0:Activate()
end
function export:f_27_Out()
  local l0
  self = self._graph
  self:en_53()
  l0 = self[53]
  l0:Stop()
end
function export:f_89_StartCompleted()
  local l0
  self = self._graph
  self:en_107()
  l0 = self[107]
  l0:Enable()
end
function export:f_77_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/IntegerArithmetics.lua")]
  self.NoCarsFinishedRace = l0.Target
end
function export:f_12_Stopped()
  local l0
  self = self._graph
  self:en_13()
  l0 = self[13]
  l0:Start()
end
function export:f_128_TalkFailed()
  local l0
  self = self._graph
  l0 = self[122]
  l0:Input(1)
end
function export:f_128_TalkFinished()
  local l0
  self = self._graph
  l0 = self[122]
  l0:Input(0)
end
function export:f_79_Stopped()
  local l0
  self = self._graph
  l0 = self[51]
  l0:Condition(0)
end
function export:f_39_OnPlayerRankUpdated()
  local l0, l1
  self = self._graph
  l0 = self[39]
  l1 = self[139]
  l1.Integer = l0.PlayerRank
  l1.Case[0] = 1
  l1.Case[1] = 2
  l1.Case[2] = 3
  l1.Case[3] = 4
  l1:In()
end
function export:f_44_TalkFailed()
  local l0
  self = self._graph
  l0 = self[119]
  l0:Input(1)
end
function export:f_44_TalkFinished()
  local l0
  self = self._graph
  l0 = self[119]
  l0:Input(0)
end
function export:f_51_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_138_Out
  l0:In()
end
function export:f_106_StartCompleted()
  local l0
  self = self._graph
  l0 = self[120]
  l0.Vehicle = self.Car1
  l0:Enable()
end
function export:f_37_Match_0()
  local l0
  self = self._graph
  self:en_129()
  l0 = self[129]
  l0:Start()
end
function export:f_37_Match_1()
  local l0
  self = self._graph
  self:en_130()
  l0 = self[130]
  l0:Start()
end
function export:f_37_Match_2()
  local l0
  self = self._graph
  self:en_131()
  l0 = self[131]
  l0:Start()
end
function export:f_37_Match_3()
  local l0
  self = self._graph
  self:en_133()
  l0 = self[133]
  l0:Start()
end
function export:f_69_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[5]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_126_Hidden()
  local l0
  self = self._graph
  l0 = self[71]
  l0:Input(0)
end
function export:f_110_Attached()
  local l0
  self = self._graph
  l0 = self[160]
  l0.Seconds = 0.5
  l0:Start()
end
function export:f_114_Out_0()
  local l0
  self = self._graph
  l0 = self[90]
  l0.Vehicle = self.Car2
  l0.Pawn = self.Driver2
  l0.Seat = "Driver"
  l0:Assign()
end
function export:f_114_Out_1()
  local l0
  self = self._graph
  l0 = self[103]
  l0:Condition(0)
end
function export:f_152_Out()
  local l0
  self = self._graph
  l0 = self[157]
  l0:In(0)
end
function export:f_152_Started()
  local l0
  self = self._graph
  l0 = self[152]
  self.InteractionID = l0.interactionId
end
function export:f_90_AssignCompleted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.Driver2
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_36_Hidden
  l0.Out = DummyFunction
  l0:Hide()
end
function export:f_9_TimeElapsed()
  local l0
  self = self._graph
  self:en_43()
  l0 = Boxes[PathID("Domino/System/ForcePawnsVehicleStop_v2.lua")]
  l0:Stop()
end
function export:f_17_Started()
  local l0
  self = self._graph
  l0 = self[14]
  l0.Input = self.ActorList
  l0.Data[0] = self.Client
  l0.Data[1] = self.PlayerEntity
  l0:Add()
end
function export:f_94_AssignCompleted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.Driver3
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_40_Hidden
  l0.Out = DummyFunction
  l0:Hide()
end
function export:f_45_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_35_Out_0
  l0.Out[1] = self.f_35_Out_1
  l0.Out[2] = self.f_35_Out_2
  l0:In()
end
function export:f_45_TalkFailed()
  local l0
  self = self._graph
  l0 = self[143]
  l0:Input(1)
end
function export:f_45_TalkFinished()
  local l0
  self = self._graph
  l0 = self[143]
  l0:Input(0)
end
function export:f_73_Out()
  local l0
  self = self._graph
  l0 = self[15]
  l0:Condition(0)
end
function export:f_156_Out()
  local l0
  self = self._graph
  self:en_152()
  l0 = self[152]
  l0:Stop()
end
function export:f_13_Stopped()
  local l0
  self = self._graph
  l0 = self[47]
  l0.Race = "RaceDbConfig.9223372056449869464"
  l0:GetPlayerRank()
end
function export:f_71_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/IntegerArithmetics.lua")]
  l0.A = self.NoCarsFinishedRace
  l0.B = 2
  l0._graph = self
  l0.Out = self.f_77_Out
  l0:Add()
end
function export:f_74_EndPathPointReached()
  local l0
  self = self._graph
  l0 = self[127]
  l0.MapPoint = "9223372048443840068"
  l0:Hide()
end
function export:f_5_PostOut()
  local l0
  self = self._graph
  l0 = self[23]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_35_Out_0()
  local l0
  self = self._graph
  l0 = self[91]
  l0.CLO = "9223372048443832624"
  l0:Activate()
end
function export:f_35_Out_1()
  local l0
  self = self._graph
  l0 = self[95]
  l0.CLO = "9223372048443832625"
  l0:Activate()
end
function export:f_35_Out_2()
  local l0
  self = self._graph
  l0 = self[85]
  l0.CLO = "9223372048443829520"
  l0:Activate()
end
function export:f_137_TalkFailed()
  local l0
  self = self._graph
  l0 = self[122]
  l0:Input(7)
end
function export:f_137_TalkFinished()
  local l0
  self = self._graph
  l0 = self[122]
  l0:Input(6)
end
function export:f_153_Added()
  local l0
  self = self._graph
  l0 = self[153]
  self.ActorList = l0.Target
end
function export:f_153_Out()
  local l0
  self = self._graph
  l0 = self[153]
  self.ActorList = l0.Target
  self:en_152()
  l0 = self[152]
  l0:Start()
end
function export:f_153_Removed()
  local l0
  self = self._graph
  l0 = self[153]
  self.ActorList = l0.Target
end
function export:f_38_RatingReset()
  local l0
  self = self._graph
  l0 = self[17]
  l0.Config = "TaxiRideStrategyConfig.9223372048443828909"
  l0:Start()
end
function export:f_140_TalkFailed()
  local l0
  self = self._graph
  l0 = self[117]
  l0:Input(1)
end
function export:f_140_TalkFinished()
  local l0
  self = self._graph
  l0 = self[117]
  l0:Input(0)
end
function export:f_53_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 7}
  l0.Out[0] = self.f_32_Out_0
  l0.Out[1] = self.f_32_Out_1
  l0.Out[2] = self.f_32_Out_2
  l0.Out[3] = self.f_32_Out_3
  l0.Out[4] = self.f_32_Out_4
  l0.Out[5] = self.f_32_Out_5
  l0.Out[6] = self.f_32_Out_6
  l0:In()
end
function export:f_155_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_154_Out
  l0:In()
end
function export:f_155_Out_1()
  local l0
  self = self._graph
  l0 = self[45]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372060806248341"
  l0.StartDelay = 1
  l0:Start()
end
function export:f_25_RewardShown()
  local l0
  self = self._graph
  l0 = self[78]
  l0.Config = "TaxiRideStrategyConfig.9223372048443828909"
  l0:Stop()
end
function export:f_120_EndPathPointReached()
  local l0
  self = self._graph
  l0 = self[125]
  l0.MapPoint = "9223372048443840070"
  l0:Hide()
end
function export:f_36_Hidden()
  local l0
  self = self._graph
  l0 = self[99]
  l0.Seconds = 0.5
  l0:Start()
end
function export:f_95_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[95]
  self.Car3 = l0.UserID
  l0 = Boxes[PathID("Domino/System/VehicleController.lua")]
  l0.Vehicle = self.Car3
  l0._graph = self
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.Destructable = DummyFunction
  l0.Indestructable = self.f_146_Indestructable
  l0.Deflatable = DummyFunction
  l0.Undeflatable = DummyFunction
  l0.Unmovable = DummyFunction
  l0.Movable = DummyFunction
  l0.EngineBroken = DummyFunction
  l0.EngineShutDown = DummyFunction
  l0.EngineStarted = DummyFunction
  l0.VehicleExploded = DummyFunction
  l0:SetAsIndestructable()
end
function export:f_93_StartCompleted()
  local l0
  self = self._graph
  self:en_97()
  l0 = self[97]
  l0:Enable()
end
function export:f_158_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[112]
  l0.MapPoint = "9223372048443840068"
  l0:Show()
end
function export:f_42_Enter()
  local l0
  self = self._graph
  self:en_63()
  l0 = self[63]
  l0:Stop()
end
function export:f_88_StartCompleted()
  local l0
  self = self._graph
  self:en_98()
  l0 = self[98]
  l0:Enable()
end
function export:f_19_Popped()
  local l0
  self = self._graph
  self:en_145()
  l0 = self[145]
  l0:SetupRace()
end
function export:en_97()
  local l0
  l0 = self[97]
  l0.Vehicle = self.Car3
end
function export:en_129()
  local l0
  l0 = self[129]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372065512861487"
  l0.StartDelay = 0.3
end
function export:en_58()
  local l0
  l0 = self[58]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372060254403112"
  l0.StartDelay = 1
end
function export:en_3()
  local l0
  l0 = self[3]
  l0.Client = self.Client
  l0.DropOffIcon = "9223372048443829536"
  l0.ShowGps = 1
  l0.ManageObjective = 1
  l0.CustomObjective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF210",
    item = "Objective_Reach",
    id = "630516"
  }
  l0.Config = "TaxiRideGameplayBrick.9223372057631918002"
end
function export:en_133()
  local l0
  l0 = self[133]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372060254403111"
  l0.StartDelay = 0.3
end
function export:en_131()
  local l0
  l0 = self[131]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372060254403110"
  l0.StartDelay = 0.3
end
function export:en_57()
  local l0
  l0 = self[57]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372060254403111"
  l0.StartDelay = 0.3
end
function export:en_63()
  local l0
  l0 = self[63]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149916"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
end
function export:en_145()
  local l0
  l0 = self[145]
  l0.Race = "RaceDbConfig.9223372056449869464"
  l0.RacerVehicle[0] = self.Car1
  l0.RacerVehicle[1] = self.Car2
  l0.RacerVehicle[2] = self.Car3
end
function export:en_107()
  local l0
  l0 = self[107]
  l0.Vehicle = self.Car2
end
function export:en_10()
  local l0
  l0 = self[10]
  l0.Client = self.Client
  l0.DropOffIcon = "9223372048443841316"
  l0.LastDestination = 1
  l0.Config = "TaxiRideGameplayBrick.9223372057631918002"
end
function export:en_141()
  local l0
  l0 = self[141]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372060254403110"
  l0.StartDelay = 0.3
end
function export:en_98()
  local l0
  l0 = self[98]
  l0.Vehicle = self.Car1
end
function export:en_11()
  local l0
  l0 = self[11]
  l0.ClientClo = "9223372048443829524"
  l0.PickUpIcon = "9223372048443829530"
  l0.Config = "TaxiRideGameplayBrick.9223372057631918002"
end
function export:en_2()
  local l0
  l0 = self[2]
  l0.Client = self.Client
  l0.Config = "TaxiRideGameplayBrick.9223372057631918002"
end
function export:en_80()
  local l0
  l0 = self[80]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372060254403109"
  l0.StartDelay = 0.3
end
function export:en_43()
  local l0
  l0 = Boxes[PathID("Domino/System/ForcePawnsVehicleStop_v2.lua")]
  l0.PlayerEntity = nil
  l0.Brake = nil
  l0._graph = self
  l0.Stopped = self.f_43_Stopped
  l0.ResetOut = self.f_43_ResetOut
end
function export:en_130()
  local l0
  l0 = self[130]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372060254403109"
  l0.StartDelay = 0.3
end
function export:en_12()
  local l0
  l0 = self[12]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149914"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
end
function export:en_79()
  local l0
  l0 = self[79]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372060254403108"
  l0.StartDelay = 0.3
end
function export:en_24()
  local l0
  l0 = self[24]
  l0.MissionName = self.Mission
  l0.LayerName = "Taxi21_Main"
  l0.StrategyConfig = "TaxiRideStrategyConfig.9223372048443828909"
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Vehicle = self.PlayerVehicle
  l0.Conversation = "ConversationSetting.9223372048760149918"
end
function export:en_152()
  local l0
  l0 = self[152]
  l0.Users = self.ActorList
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
end
function export:en_13()
  local l0
  l0 = self[13]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149915"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
end
function export:en_53()
  local l0
  l0 = self[53]
  l0.Users = self.ActorList
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
end
_compilerVersion = 4
