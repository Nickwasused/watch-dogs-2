export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AIAgentZoneController.lua")
  cbox:RegisterBox("domino/System/AIBuddyController.lua")
  cbox:RegisterBox("domino/System/CinemaZoneCleanup.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Delivery_Gameplay.lua")
  cbox:RegisterBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  cbox:RegisterBox("domino/System/FlyingDroneController.lua")
  cbox:RegisterBox("domino/System/ForcePawnsVehicleStop_v2.lua")
  cbox:RegisterBox("domino/System/GameplayInteractionController.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Interact_Gameplay.lua")
  cbox:RegisterBox("domino/System/LaneRestrictionsControl.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Mission_End.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PawnHealthMonitor_v4.lua")
  cbox:RegisterBox("domino/System/PlayerProximityMonitor.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/SetActionMap_v2.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/ShowOrHideAllUI.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/TestIfNil.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TimerToScreen.lua")
  cbox:RegisterBox("domino/System/ToyCarController.lua")
  cbox:RegisterBox("domino/System/TutorialController.lua")
  cbox:RegisterBox("domino/System/VehicleMonitor_v3.lua")
  cbox:RegisterBox("domino/System/VehicleSeatingController.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.TalkStarted = 0
  self.MirandaEntity = nil
  self.vehiclePlayer = nil
  self.PlayerVehicle = nil
  self.MirandaTemp = nil
  self.Vehicle_Icon = nil
  self.DestReached = 0
  self.VehicleState = 4
  self.EnterCarFirstTime = 0
  self.LastVehiclePlayer = nil
  self.InFelony = 0
  self.TalkersDT = {}
  self.MirandaDestinationReached = 0
  self.InVehicle = 0
  self[29] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[29]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_29_PostOut
  self[9] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[9]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_9_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[59] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[59]
  l0._graph = self
  self[7] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[7]
  l0._graph = self
  l0.Loaded = self.f_7_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[72] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[72]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_72_PostOut
  self[47] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[47]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_47_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[12] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[12]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_12_OnUserInPlace
  self[48] = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.lua")
  l0 = self[48]
  l0._graph = self
  l0.Started = self.f_48_Started
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_48_Interacted
  self[41] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[41]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_41_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[53] = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self[53]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = DummyFunction
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = self.f_53_Out
  self[19] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[19]
  l0._graph = self
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_19_DisplayRequested
  l0.NotificationHidden = self.f_19_NotificationHidden
  l0.MessageCompleted = DummyFunction
  self[13] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[13]
  l0._graph = self
  l0.Out = self.f_13_Out
  l0.SetTrue = self.f_13_SetTrue
  l0.SetFalse = self.f_13_SetFalse
  l0.Toggled = self.f_13_Toggled
  l0.SetFromBool = self.f_13_SetFromBool
  self[40] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[40]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_40_PostOut
  self[100] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[100]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_100_Out
  self[46] = cbox:CreateBox("domino/Library/common/MissionIngredients.Delivery_Gameplay.lua")
  l0 = self[46]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.NewDeliveryCompleted = DummyFunction
  l0.AllDeliveryCompleted = self.f_46_AllDeliveryCompleted
  l0.SpecificVehicleReliabilityFailure = DummyFunction
  l0.VehicleForceStopped = DummyFunction
  l0.Evaded = DummyFunction
  l0.InConflict = DummyFunction
  l0.TeamSpeakFinished = DummyFunction
  self[24] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[24]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_24_Out
  l0.ResetOut = DummyFunction
  self[83] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[83]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_83_Skipped
  l0.Finished = self.f_83_Finished
  self[85] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[85]
  l0._graph = self
  self[33] = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self[33]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = DummyFunction
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = self.f_33_Out
  self[51] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[51]
  l0._graph = self
  l0.PreOut = self.f_51_PreOut
  l0.PostOut = DummyFunction
  self[111] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[111]
  l0._graph = self
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_111_Added
  l0.Removed = self.f_111_Removed
  l0.Out = self.f_111_Out
  self[15] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[15]
  l0._graph = self
  l0.Out = self.f_15_Out
  l0.MessageCompleted = DummyFunction
  self[21] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[21]
  l0._graph = self
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_21_Out
  l0.ResetOut = DummyFunction
  self[2] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[2]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_2_Out
  l0.ResetOut = DummyFunction
  self[87] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[87]
  l0._graph = self
  l0.Out = self.f_87_Out
  l0.SetTrue = self.f_87_SetTrue
  l0.SetFalse = self.f_87_SetFalse
  l0.Toggled = self.f_87_Toggled
  l0.SetFromBool = self.f_87_SetFromBool
  self[6] = cbox:CreateBox("domino/Library/common/MissionIngredients.Mission_End.lua")
  l0 = self[6]
  l0._graph = self
  self[102] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[102]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_102_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[61] = cbox:CreateBox("domino/System/VehicleMonitor_v3.lua")
  l0 = self[61]
  l0._graph = self
  l0.Enabled = self.f_61_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Entered = self.f_61_Entered
  l0.PassangerEntered = DummyFunction
  l0.Leave = self.f_61_Leave
  l0.Exiting = self.f_61_Exiting
  l0.ChangeSeat = DummyFunction
  l0.BailedOut = DummyFunction
  l0.IsPawnHiding = DummyFunction
  l0.PawnIsNotHiding = DummyFunction
  l0.StateChange = DummyFunction
  l0.TakenDamage = DummyFunction
  l0.IsUnusable = self.f_61_IsUnusable
  l0.IsUnderwater = self.f_61_IsUnderwater
  l0.NoMoveTimer = DummyFunction
  l0.OnMoveTimer = DummyFunction
  l0.IsSlowEnoughToExit = DummyFunction
  l0.VehicleJump = DummyFunction
  l0.VehicleLanding = DummyFunction
  l0.BollardTakedown = DummyFunction
  l0.SteamPipeTakedown = DummyFunction
  l0.TrafficLightTakedown = DummyFunction
  l0.FullTakedown = self.f_61_FullTakedown
  l0.PartialTakedown = DummyFunction
  l0.NitroUsed = DummyFunction
  l0.NitroStopped = DummyFunction
  l0.IsFlipped = DummyFunction
  l0.IsUnFlipped = DummyFunction
  l0.Unloaded = DummyFunction
  self[43] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[43]
  l0._graph = self
  self[18] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[18]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_18_Unloaded
  l0.Reseted = DummyFunction
  self[62] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[62]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_62_Out
  self[82] = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self[82]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = DummyFunction
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = self.f_82_Out
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
  self[50] = cbox:CreateBox("domino/System/PawnHealthMonitor_v4.lua")
  l0 = self[50]
  l0._graph = self
  l0.Enabled = self.f_50_Enabled
  l0.Disabled = self.f_50_Disabled
  l0.Damaged = DummyFunction
  l0.DamageReceived = DummyFunction
  l0.Killed = self.f_50_Killed
  l0.DBNO = DummyFunction
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
  self[88] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[88]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_88_PostOut
  self[57] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[57]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_57_Unloaded
  l0.Reseted = DummyFunction
  self[26] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[26]
  l0._graph = self
  l0.PreOut = self.f_26_PreOut
  l0.PostOut = DummyFunction
  self[75] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[75]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_75_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[71] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[71]
  l0._graph = self
  l0.Out = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[14] = cbox:CreateBox("domino/System/TimerToScreen.lua")
  l0 = self[14]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Stopped = self.f_14_Stopped
  l0.Restarted = DummyFunction
  l0.GotTime = DummyFunction
  l0.TimeElapsed = self.f_14_TimeElapsed
  self[70] = cbox:CreateBox("domino/System/VehicleMonitor_v3.lua")
  l0 = self[70]
  l0._graph = self
  l0.Enabled = self.f_70_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Entered = self.f_70_Entered
  l0.PassangerEntered = DummyFunction
  l0.Leave = DummyFunction
  l0.Exiting = self.f_70_Exiting
  l0.ChangeSeat = DummyFunction
  l0.BailedOut = DummyFunction
  l0.IsPawnHiding = DummyFunction
  l0.PawnIsNotHiding = DummyFunction
  l0.StateChange = DummyFunction
  l0.TakenDamage = DummyFunction
  l0.IsUnusable = self.f_70_IsUnusable
  l0.IsUnderwater = self.f_70_IsUnderwater
  l0.NoMoveTimer = DummyFunction
  l0.OnMoveTimer = DummyFunction
  l0.IsSlowEnoughToExit = DummyFunction
  l0.VehicleJump = DummyFunction
  l0.VehicleLanding = DummyFunction
  l0.BollardTakedown = DummyFunction
  l0.SteamPipeTakedown = DummyFunction
  l0.TrafficLightTakedown = DummyFunction
  l0.FullTakedown = self.f_70_FullTakedown
  l0.PartialTakedown = DummyFunction
  l0.NitroUsed = DummyFunction
  l0.NitroStopped = DummyFunction
  l0.IsFlipped = DummyFunction
  l0.IsUnFlipped = DummyFunction
  l0.Unloaded = DummyFunction
  self[35] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[35]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_35_PostOut
  self[16] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[16]
  l0._graph = self
  l0.Out = self.f_16_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[5] = cbox:CreateBox("domino/System/PlayerProximityMonitor.lua")
  l0 = self[5]
  l0._graph = self
  l0.Enabled = self.f_5_Enabled
  l0.Disabled = self.f_5_Disabled
  l0.EnterRadius = self.f_5_EnterRadius
  l0.ExitRadius = DummyFunction
  l0.RCEnterRadius = DummyFunction
  l0.RCExitRadius = DummyFunction
  self[30] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[30]
  l0._graph = self
  l0.PreOut = self.f_30_PreOut
  l0.PostOut = DummyFunction
  self[44] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[44]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_44_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[107] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[107]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_107_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[31] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[31]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_31_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[23] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[23]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_23_OnUserInPlace
  self[45] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[45]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_45_Out
  self[80] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[80]
  l0._graph = self
  l0.PreOut = self.f_80_PreOut
  l0.PostOut = DummyFunction
  self[91] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[91]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_91_Out
  self[54] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[54]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_54_Out
  self[34] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[34]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_34_OnUserInPlace
  self[90] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[90]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_90_Out
  l0.ResetOut = DummyFunction
  self[105] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[105]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_105_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[117] = cbox:CreateBox("domino/System/AIBuddyController.lua")
  l0 = self[117]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Updated = DummyFunction
  l0.IsFollowing = DummyFunction
  l0.IsGoingToCLO = DummyFunction
  l0.IsWaiting = self.f_117_IsWaiting
  l0.Assigned = DummyFunction
  self[10] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[10]
  l0._graph = self
  self[84] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[84]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_84_Out
  self[36] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[36]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_36_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[63] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[63]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_63_Out
  self[74] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[74]
  l0._graph = self
  self[4] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[4]
  l0._graph = self
  l0.Loaded = self.f_4_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[79] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[79]
  l0._graph = self
  l0.Out = self.f_79_Out
  l0.SetTrue = self.f_79_SetTrue
  l0.SetFalse = self.f_79_SetFalse
  l0.Toggled = self.f_79_Toggled
  l0.SetFromBool = self.f_79_SetFromBool
  self[76] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[76]
  l0._graph = self
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_76_DisplayRequested
  l0.NotificationHidden = self.f_76_NotificationHidden
  l0.MessageCompleted = DummyFunction
  self[55] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[55]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_55_OnUserInPlace
  self[106] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[106]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_106_Out
  self[25] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[25]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_25_Skipped
  l0.Finished = self.f_25_Finished
  self[97] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[97]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_97_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[60] = cbox:CreateBox("domino/Library/common/MissionIngredients.Delivery_Gameplay.lua")
  l0 = self[60]
  l0._graph = self
  l0.Started = self.f_60_Started
  l0.Stopped = DummyFunction
  l0.NewDeliveryCompleted = DummyFunction
  l0.AllDeliveryCompleted = self.f_60_AllDeliveryCompleted
  l0.SpecificVehicleReliabilityFailure = DummyFunction
  l0.VehicleForceStopped = DummyFunction
  l0.Evaded = DummyFunction
  l0.InConflict = DummyFunction
  l0.TeamSpeakFinished = DummyFunction
  self[58] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[58]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_58_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[56] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[56]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_56_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[28] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[28]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_28_PostOut
  self[11] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[11]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = self.f_11_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_11_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
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
  self[73] = cbox:CreateBox("domino/System/TimerToScreen.lua")
  l0 = self[73]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Stopped = self.f_73_Stopped
  l0.Restarted = DummyFunction
  l0.GotTime = DummyFunction
  l0.TimeElapsed = self.f_73_TimeElapsed
  self[112] = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self[112]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_112_Started
  l0.Stopped = DummyFunction
  self[81] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[81]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_81_OnUserInPlace
  self[104] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[104]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_104_Out
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
  l0 = self[7]
  l0.LayerName = "Taxi_S10_Miranda_Main"
  l0:Load()
end
function export:CheckPoint_1()
  local l0
  self:en_6()
  l0 = self[6]
  l0:FromCheckpoint()
end
function export:In()
  local l0
  l0 = self[4]
  l0.LayerName = "Taxi_S10_Miranda_Main"
  l0:Load()
end
function export:f_92_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.PlayerVehicle
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_98_Is_nil
  l0.Is_not_nil = self.f_98_Is_not_nil
  l0:In()
end
function export:f_29_PostOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "no_controls"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_94_Popped
  l0:Pop()
end
function export:f_96_Popped()
  local l0
  self = self._graph
  self:en_6()
  l0 = self[6]
  l0:End()
end
function export:f_77_Popped()
  local l0
  self = self._graph
  self:en_58()
  l0 = self[58]
  l0:Stop()
end
function export:f_77_Pushed()
  local l0
  self = self._graph
  self:en_58()
  l0 = self[58]
  l0:Start()
end
function export:f_9_UnspawnedUser()
  local l0
  self = self._graph
  l0 = self[56]
  l0.User = self.vehiclePlayer
  l0:UnspawnUser()
end
function export:f_116_Stopped()
  local l0
  self = self._graph
  l0 = self[15]
  l0:ShowLastObjectiveComplete()
end
function export:f_98_Is_nil()
  local l0
  self = self._graph
  l0 = self[100]
  l0:Input(0)
end
function export:f_98_Is_not_nil()
  local l0
  self = self._graph
  l0 = self[97]
  l0.User = self.PlayerVehicle
  l0:UnspawnUser()
end
function export:f_7_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_27_Out
  l0:In()
end
function export:f_72_PostOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "no_controls"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_52_Popped
  l0:Pop()
end
function export:f_103_Is_nil()
  local l0
  self = self._graph
  l0 = self[106]
  l0:Input(0)
end
function export:f_103_Is_not_nil()
  local l0
  self = self._graph
  l0 = self[105]
  l0.User = self.MirandaTemp
  l0:UnspawnUser()
end
function export:f_47_TalkFinished()
  local l0
  self = self._graph
  l0 = self[41]
  l0.Pawn1 = self.PlayerEntity
  l0.Pawn2 = self.MirandaTemp
  l0.Conversation = "ConversationSetting.9223372052387881603"
  l0.StartDelay = 1
  l0.SpecificVehicle = self.vehiclePlayer
  l0.RuleConfig = "GameplayConversationSettings.9223372066855953761"
  l0:Start()
end
function export:f_12_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[12]
  self.PlayerVehicle = l0.UserID
  l0 = self[35]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_48_Interacted()
  local l0
  self = self._graph
  self:en_48()
  l0 = self[48]
  l0:Stop()
end
function export:f_48_Started()
  local l0
  self = self._graph
  self:en_70()
  l0 = self[70]
  l0:Enable()
end
function export:f_41_TalkFinished()
  local l0
  self = self._graph
  l0 = self[49]
  l0.Pawn1 = self.PlayerEntity
  l0.Pawn2 = self.MirandaTemp
  l0.Conversation = "ConversationSetting.9223372052387881604"
  l0.StartDelay = 1
  l0.SpecificVehicle = self.vehiclePlayer
  l0.RuleConfig = "GameplayConversationSettings.9223372066855953761"
  l0:Start()
end
function export:f_53_Out()
  local l0
  self = self._graph
  l0 = self[11]
  l0:Start()
end
function export:f_19_DisplayRequested()
  local l0
  self = self._graph
  self:en_14()
  l0 = self[14]
  l0:Start()
end
function export:f_19_NotificationHidden()
  local l0
  self = self._graph
  self:en_14()
  l0 = self[14]
  l0:Stop()
end
function export:f_65_CalledBack()
  local l0
  self = self._graph
  l0 = self[36]
  l0.User = self.PlayerVehicle
  l0:UnspawnUser()
end
function export:f_13_Out()
  local l0
  self = self._graph
  l0 = self[13]
  self.EnterCarFirstTime = l0.Target
end
function export:f_13_SetFalse()
  local l0
  self = self._graph
  l0 = self[13]
  self.EnterCarFirstTime = l0.Target
end
function export:f_13_SetFromBool()
  local l0
  self = self._graph
  l0 = self[13]
  self.EnterCarFirstTime = l0.Target
end
function export:f_13_SetTrue()
  local l0
  self = self._graph
  l0 = self[13]
  self.EnterCarFirstTime = l0.Target
  self:en_19()
  l0 = self[19]
  l0:HideNotification()
end
function export:f_13_Toggled()
  local l0
  self = self._graph
  l0 = self[13]
  self.EnterCarFirstTime = l0.Target
end
function export:f_40_PostOut()
  local l0
  self = self._graph
  l0 = self[54]
  l0:Input(1)
end
function export:f_100_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.vehiclePlayer
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_99_Is_nil
  l0.Is_not_nil = self.f_99_Is_not_nil
  l0:In()
end
function export:f_113_Out()
  local l0
  self = self._graph
  l0 = self[91]
  l0:Input(1)
end
function export:f_46_AllDeliveryCompleted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_22_Out_0
  l0.Out[1] = self.f_22_Out_1
  l0:In()
end
function export:f_24_Out()
  local l0
  self = self._graph
  l0 = self[34]
  l0.CLO = "9223372056544232738"
  l0:Activate()
end
function export:f_83_Finished()
  local l0
  self = self._graph
  l0 = self[90]
  l0:In(1)
end
function export:f_83_Skipped()
  local l0
  self = self._graph
  l0 = self[90]
  l0:In(0)
end
function export:f_69_Out()
  local l0
  self = self._graph
  l0 = self[9]
  l0.User = self.MirandaTemp
  l0:UnspawnUser()
end
function export:f_33_Out()
  local l0
  self = self._graph
  l0 = self[82]
  l0.Vehicle = self.vehiclePlayer
  l0.Pawn = self.MirandaTemp
  l0.Seat = "RearPassengerRight"
  l0:Assign()
end
function export:f_38_Hidden()
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
function export:f_51_PreOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ToyCarController.lua")]
  l0.PlayerPawn = nil
  l0.RCEntity = nil
  l0._graph = self
  l0.CalledBack = self.f_67_CalledBack
  l0.Available = DummyFunction
  l0.Unavailable = DummyFunction
  l0.Connected = DummyFunction
  l0.Disconnected = DummyFunction
  l0.CallBackAvailable = DummyFunction
  l0.CallBackUnavailable = DummyFunction
  l0.DisconnectAvailable = DummyFunction
  l0.DisconnectUnavailable = DummyFunction
  l0.ConnectAvailable = DummyFunction
  l0.ConnectUnavailable = DummyFunction
  l0.Destroyed = DummyFunction
  l0.DestroyedUncontrolledRC = DummyFunction
  l0:CallBack()
end
function export:f_111_Added()
  local l0
  self = self._graph
  l0 = self[111]
  self.TalkersDT = l0.Target
  self:en_112()
  l0 = self[112]
  l0:Start()
end
function export:f_111_Out()
  local l0
  self = self._graph
  l0 = self[111]
  self.TalkersDT = l0.Target
end
function export:f_111_Removed()
  local l0
  self = self._graph
  l0 = self[111]
  self.TalkersDT = l0.Target
end
function export:f_78_Out()
  local l0
  self = self._graph
  l0 = self[12]
  l0.CLO = "9223372056544149341"
  l0.SpawnOutsideLoadingRing = 1
  l0:Activate()
end
function export:f_15_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_101_Out
  l0:In()
end
function export:f_94_Popped()
  local l0
  self = self._graph
  l0 = self[10]
  l0:Abort()
end
function export:f_21_Out()
  local l0
  self = self._graph
  l0 = self[46]
  l0.VehicleEntity = self.PlayerVehicle
  l0.DestinationTrigger = "9223372071473207633"
  l0.NbToDeliver = 1
  l0.AcceptedReliability = "Broken"
  l0.VehicleMarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Acquire",
    id = "185984"
  }
  l0.DestinationMarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0.GetOutToComplete = 0
  l0.ForceStopAtDestination = 0
  l0.ForceStopBrake = "Hard"
  l0.PostEscape_InVehicle = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S10.S10M020.Objectives.Objective020",
    item = "Objective",
    id = "359059"
  }
  l0.PostEscape_OutOfVehicle = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S10.S10M020.Objectives.Objective020",
    item = "Objective",
    id = "359059"
  }
  l0:Start()
end
function export:f_2_Out()
  local l0
  self = self._graph
  l0 = self[111]
  l0.Input = self.TalkersDT
  l0.Data[0] = self.PlayerEntity
  l0.Data[1] = self.MirandaTemp
  l0:Add()
end
function export:f_87_Out()
  local l0
  self = self._graph
  l0 = self[87]
  self.InVehicle = l0.Target
end
function export:f_87_SetFalse()
  local l0
  self = self._graph
  l0 = self[87]
  self.InVehicle = l0.Target
end
function export:f_87_SetFromBool()
  local l0
  self = self._graph
  l0 = self[87]
  self.InVehicle = l0.Target
end
function export:f_87_SetTrue()
  local l0
  self = self._graph
  l0 = self[87]
  self.InVehicle = l0.Target
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_86_Out_0
  l0.Out[1] = self.f_86_Out_1
  l0:In()
end
function export:f_87_Toggled()
  local l0
  self = self._graph
  l0 = self[87]
  self.InVehicle = l0.Target
end
function export:f_102_UnspawnedUser()
  local l0
  self = self._graph
  l0 = self[104]
  l0:Input(1)
end
function export:f_61_Enabled()
  local l0
  self = self._graph
  l0 = self[2]
  l0:In(0)
end
function export:f_61_Entered()
  local l0
  self = self._graph
  l0 = self[87]
  l0:True()
end
function export:f_61_Exiting()
  local l0
  self = self._graph
  l0 = self[87]
  l0:False()
end
function export:f_61_FullTakedown()
  local l0
  self = self._graph
  l0 = self[84]
  l0:Input(2)
end
function export:f_61_IsUnderwater()
  local l0
  self = self._graph
  l0 = self[84]
  l0:Input(1)
end
function export:f_61_IsUnusable()
  local l0
  self = self._graph
  l0 = self[84]
  l0:Input(0)
end
function export:f_61_Leave()
  local l0
  self = self._graph
  self:en_76()
  l0 = self[76]
  l0:Display()
end
function export:f_18_Unloaded()
  local l0
  self = self._graph
  l0 = self[29]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_32_Out()
  local l0
  self = self._graph
  l0 = self[25]
  l0.SceneEntity = "9223372056544150074"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S10/S10_Mirandas_Driver_CINEMA/s10_mirandas_driver_cinema.seq"
  l0:Start()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372065596322563"
  l0.NPC = nil
  l0._graph = self
  l0.Out = self.f_78_Out
  l0:Enable()
end
function export:f_62_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_38_Hidden
  l0:Hide()
end
function export:f_82_Out()
  local l0
  self = self._graph
  l0 = self[117]
  l0.NPC = self.MirandaTemp
  l0:Wait()
end
function export:f_37_Hidden()
  local l0
  self = self._graph
  l0 = self[26]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:f_49_TalkFinished()
  local l0
  self = self._graph
  l0 = self[44]
  l0.Pawn1 = self.PlayerEntity
  l0.Pawn2 = self.MirandaTemp
  l0.Conversation = "ConversationSetting.9223372052387881605"
  l0.StartDelay = 1
  l0.SpecificVehicle = self.vehiclePlayer
  l0.RuleConfig = "GameplayConversationSettings.9223372066855953761"
  l0:Start()
end
function export:f_50_Disabled()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:Disable()
end
function export:f_50_Enabled()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:Enable()
end
function export:f_50_Killed()
  local l0
  self = self._graph
  l0 = self[59]
  l0.EndReason = {
    section = "MISSIONS.COMMON.MESSAGES.MISSIONFAILURE",
    item = "AllyKilled",
    id = "689089"
  }
  l0:Fail()
end
function export:f_88_PostOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Shown = self.f_42_Shown
  l0.Hidden = DummyFunction
  l0:Show()
end
function export:f_57_Unloaded()
  local l0
  self = self._graph
  l0 = self[72]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_101_Out()
  local l0
  self = self._graph
  l0 = self[62]
  l0:Condition(1)
end
function export:f_3_Out_0()
  local l0
  self = self._graph
  self:en_112()
  l0 = self[112]
  l0:Stop()
end
function export:f_3_Out_1()
  local l0
  self = self._graph
  self:en_61()
  l0 = self[61]
  l0:Disable()
end
function export:f_3_Out_2()
  local l0
  self = self._graph
  l0 = self[51]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:f_26_PreOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ToyCarController.lua")]
  l0.PlayerPawn = nil
  l0.RCEntity = nil
  l0._graph = self
  l0.CalledBack = self.f_64_CalledBack
  l0.Available = DummyFunction
  l0.Unavailable = DummyFunction
  l0.Connected = DummyFunction
  l0.Disconnected = DummyFunction
  l0.CallBackAvailable = DummyFunction
  l0.CallBackUnavailable = DummyFunction
  l0.DisconnectAvailable = DummyFunction
  l0.DisconnectUnavailable = DummyFunction
  l0.ConnectAvailable = DummyFunction
  l0.ConnectUnavailable = DummyFunction
  l0.Destroyed = DummyFunction
  l0.DestroyedUncontrolledRC = DummyFunction
  l0:CallBack()
end
function export:f_52_Popped()
  local l0
  self = self._graph
  l0 = self[74]
  l0:Abort()
end
function export:f_75_UnspawnedUser()
  local l0
  self = self._graph
  l0 = self[57]
  l0.LayerName = "Taxi_S10_Miranda_Main"
  l0:Unload()
end
function export:f_14_Stopped()
  local l0
  self = self._graph
  self:en_93()
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0:Pop()
end
function export:f_14_TimeElapsed()
  local l0
  self = self._graph
  self:en_93()
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0:Push()
end
function export:f_108_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_113_Out
  l0:In()
end
function export:f_95_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ForcePawnsVehicleStop_v2.lua")]
  l0.PlayerEntity = nil
  l0.Brake = nil
  l0._graph = self
  l0.Stopped = self.f_116_Stopped
  l0.ResetOut = DummyFunction
  l0:Stop()
end
function export:f_70_Enabled()
  local l0
  self = self._graph
  l0 = self[63]
  l0:Input(0)
end
function export:f_70_Entered()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_20_Out_0
  l0.Out[1] = self.f_20_Out_1
  l0:In()
end
function export:f_70_Exiting()
  local l0
  self = self._graph
  l0 = self[63]
  l0:Input(1)
end
function export:f_70_FullTakedown()
  local l0
  self = self._graph
  l0 = self[45]
  l0:Input(2)
end
function export:f_70_IsUnderwater()
  local l0
  self = self._graph
  l0 = self[45]
  l0:Input(1)
end
function export:f_70_IsUnusable()
  local l0
  self = self._graph
  l0 = self[45]
  l0:Input(0)
end
function export:f_93_Popped()
  local l0
  self = self._graph
  self:en_107()
  l0 = self[107]
  l0:Stop()
end
function export:f_93_Pushed()
  local l0
  self = self._graph
  self:en_107()
  l0 = self[107]
  l0:Start()
end
function export:f_20_Out_0()
  local l0
  self = self._graph
  l0 = self[21]
  l0:In(0)
end
function export:f_20_Out_1()
  local l0
  self = self._graph
  l0 = self[13]
  l0.Bool = self.EnterCarFirstTime
  l0:True()
end
function export:f_27_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372065596322563"
  l0.NPC = nil
  l0._graph = self
  l0.Out = self.f_92_Out
  l0:Enable()
end
function export:f_66_CalledBack()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372055532596591"
  l0.NPC = nil
  l0._graph = self
  l0.Out = self.f_69_Out
  l0:Enable()
end
function export:f_35_PostOut()
  local l0
  self = self._graph
  l0 = self[54]
  l0:Input(0)
end
function export:f_16_Out()
  local l0
  self = self._graph
  self:en_48()
  l0 = self[48]
  l0:Start()
end
function export:f_99_Is_nil()
  local l0
  self = self._graph
  l0 = self[104]
  l0:Input(0)
end
function export:f_99_Is_not_nil()
  local l0
  self = self._graph
  l0 = self[102]
  l0.User = self.vehiclePlayer
  l0:UnspawnUser()
end
function export:f_5_Disabled()
  local l0
  self = self._graph
  l0 = self[79]
  l0:True()
end
function export:f_5_Enabled()
  local l0
  self = self._graph
  self:en_61()
  l0 = self[61]
  l0:Enable()
end
function export:f_5_EnterRadius()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372055532596591"
  l0.RestrictTraffic = nil
  l0.RestrictPedestrians = nil
  l0.RestrictParking = nil
  l0.ResetLivingCity = nil
  l0.ResetMissionWithLivingCity = nil
  l0.CivilianDensityDbObject = "CivilianDensity.9223372048779320679"
  l0.ParkedCarsDensityDbObject = nil
  l0.TrafficDensityScale = nil
  l0.ApplyToEnticers = nil
  l0.ApplyToRoadNetwork = nil
  l0.RestrictHumanOnFoot = nil
  l0.RestrictHumanPassenger = nil
  l0.RestrictAnimal = nil
  l0.RestrictRobot = nil
  l0.RestrictRoadVehicle = nil
  l0.RestrictRail = nil
  l0.RestrictBoat = nil
  l0.RestrictParkedCar = nil
  l0.RestrictParkedBoat = nil
  l0.RestrictWorldAI = nil
  l0.RestrictReinforcementAI = nil
  l0.RestrictMissionAI = 0
  l0.RestrictCityObject = nil
  l0.RestrictMissionObject = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0:In()
end
function export:f_30_PreOut()
  local l0
  self = self._graph
  l0 = self[31]
  l0.User = self.PlayerVehicle
  l0:UnspawnUser()
end
function export:f_89_A_and_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "no_controls"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_95_Pushed
  l0.Popped = DummyFunction
  l0:Push()
end
function export:f_44_TalkFinished()
  local l0
  self = self._graph
  l0 = self[62]
  l0:Condition(0)
end
function export:f_107_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[30]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:f_31_UnspawnedUser()
  local l0
  self = self._graph
  l0 = self[18]
  l0.LayerName = "Taxi_S10_Miranda_Main"
  l0:Unload()
end
function export:f_23_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[23]
  self.PlayerVehicle = l0.UserID
  l0 = self[40]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_64_CalledBack()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FlyingDroneController.lua")]
  l0.PlayerPawn = nil
  l0._graph = self
  l0.CalledBack = self.f_65_CalledBack
  l0.Available = DummyFunction
  l0.Unavailable = DummyFunction
  l0.Connected = DummyFunction
  l0.Disconnected = DummyFunction
  l0.CallBackAvailable = DummyFunction
  l0.CallBackUnavailable = DummyFunction
  l0.DisconnectAvailable = DummyFunction
  l0.DisconnectUnavailable = DummyFunction
  l0.ConnectAvailable = DummyFunction
  l0.ConnectUnavailable = DummyFunction
  l0.Destroyed = DummyFunction
  l0:CallBack()
end
function export:f_42_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "no_controls"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_96_Popped
  l0:Pop()
end
function export:f_45_Out()
  local l0
  self = self._graph
  l0 = self[43]
  l0.EndReason = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "FailVehicleTotaled",
    id = "337822"
  }
  l0:Fail()
end
function export:f_80_PreOut()
  local l0
  self = self._graph
  l0 = self[75]
  l0.User = self.vehiclePlayer
  l0:UnspawnUser()
end
function export:f_91_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.InVehicle
  l0.B = self.MirandaDestinationReached
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = DummyFunction
  l0.A_and_B = self.f_89_A_and_B
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_54_Out()
  local l0
  self = self._graph
  l0 = self[16]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_67_CalledBack()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FlyingDroneController.lua")]
  l0.PlayerPawn = nil
  l0._graph = self
  l0.CalledBack = self.f_66_CalledBack
  l0.Available = DummyFunction
  l0.Unavailable = DummyFunction
  l0.Connected = DummyFunction
  l0.Disconnected = DummyFunction
  l0.CallBackAvailable = DummyFunction
  l0.CallBackUnavailable = DummyFunction
  l0.DisconnectAvailable = DummyFunction
  l0.DisconnectUnavailable = DummyFunction
  l0.ConnectAvailable = DummyFunction
  l0.ConnectUnavailable = DummyFunction
  l0.Destroyed = DummyFunction
  l0:CallBack()
end
function export:f_34_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[34]
  self.vehiclePlayer = l0.UserID
  l0 = self[81]
  l0.CLO = "9223372046876295800"
  l0:Activate()
end
function export:f_90_Out()
  local l0
  self = self._graph
  l0 = self[55]
  l0.CLO = "9223372057833950995"
  l0:Activate()
end
function export:f_105_UnspawnedUser()
  local l0
  self = self._graph
  l0 = self[106]
  l0:Input(1)
end
function export:f_86_Out_0()
  local l0
  self = self._graph
  self:en_76()
  l0 = self[76]
  l0:HideNotification()
end
function export:f_86_Out_1()
  local l0
  self = self._graph
  l0 = self[91]
  l0:Input(0)
end
function export:f_17_A_is_False()
  local l0
  self = self._graph
  l0 = self[71]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S10.S10M020.Objectives.Objective015",
    item = "Notification",
    id = "637981"
  }
  l0.ShowPreviousObjectiveComplete = 0
  l0:UpdateObjective()
end
function export:f_17_A_is_True()
  local l0
  self = self._graph
  self:en_19()
  l0 = self[19]
  l0:Display()
end
function export:f_117_IsWaiting()
  local l0
  self = self._graph
  l0 = self[68]
  l0.Seconds = 2
  l0:Start()
end
function export:f_84_Out()
  local l0
  self = self._graph
  l0 = self[85]
  l0.EndReason = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "FailVehicleTotaled",
    id = "337822"
  }
  l0:Fail()
end
function export:f_36_UnspawnedUser()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  l0.TargetZone = "9223372056544150455"
  l0.SceneEntity = nil
  l0.RemoveBreakable = nil
  l0.RemoveCharacter = nil
  l0.RemoveVehicle = nil
  l0.RemoveWeapon = nil
  l0.RemoveDeadBody = nil
  l0.RemoveRigidPhysObject = nil
  l0.StopDialog = nil
  l0.NotRemovableEntity[0] = nil
  l0.NotRemovableEntity[1] = nil
  l0._graph = self
  l0._DynamicAnchors = {NotRemovableEntity = 2}
  l0.Out = self.f_32_Out
  l0:CleanZone()
end
function export:f_22_Out_0()
  local l0
  self = self._graph
  self:en_70()
  l0 = self[70]
  l0:Disable()
end
function export:f_22_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "no_controls"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_109_Pushed
  l0.Popped = DummyFunction
  l0:Push()
end
function export:f_63_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.EnterCarFirstTime
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_17_A_is_True
  l0.A_is_False = self.f_17_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_110_Popped()
  local l0
  self = self._graph
  l0 = self[60]
  l0.VehicleEntity = self.vehiclePlayer
  l0.DestinationTrigger = "9223372071645955187"
  l0.NbToDeliver = 1
  l0.AcceptedReliability = "Broken"
  l0.VehicleMarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Acquire",
    id = "185984"
  }
  l0.DestinationMarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0.GetOutToComplete = 0
  l0.ForceStopAtDestination = 1
  l0.ForceStopBrake = "Hard"
  l0.PostEscape_InVehicle = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S10.S10M020.Objectives.Objective030",
    item = "Objective",
    id = "605732"
  }
  l0.PostEscape_OutOfVehicle = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S10.S10M020.Objectives.Objective030",
    item = "Objective",
    id = "605732"
  }
  l0:Start()
end
function export:f_4_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:In()
end
function export:f_109_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_37_Hidden
  l0:Hide()
end
function export:f_79_Out()
  local l0
  self = self._graph
  l0 = self[79]
  self.MirandaDestinationReached = l0.Target
end
function export:f_79_SetFalse()
  local l0
  self = self._graph
  l0 = self[79]
  self.MirandaDestinationReached = l0.Target
end
function export:f_79_SetFromBool()
  local l0
  self = self._graph
  l0 = self[79]
  self.MirandaDestinationReached = l0.Target
end
function export:f_79_SetTrue()
  local l0
  self = self._graph
  l0 = self[79]
  self.MirandaDestinationReached = l0.Target
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_108_Out
  l0:In()
end
function export:f_79_Toggled()
  local l0
  self = self._graph
  l0 = self[79]
  self.MirandaDestinationReached = l0.Target
end
function export:f_76_DisplayRequested()
  local l0
  self = self._graph
  self:en_73()
  l0 = self[73]
  l0:Start()
end
function export:f_76_NotificationHidden()
  local l0
  self = self._graph
  self:en_73()
  l0 = self[73]
  l0:Stop()
end
function export:f_55_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[55]
  self.LastVehiclePlayer = l0.UserID
  l0 = self[53]
  l0.Vehicle = self.LastVehiclePlayer
  l0.Pawn = self.PlayerEntity
  l0.Seat = "Driver"
  l0:Assign()
end
function export:f_39_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "no_controls"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_110_Popped
  l0:Pop()
end
function export:f_106_Out()
  local l0
  self = self._graph
  l0 = self[23]
  l0.CLO = "9223372056544149341"
  l0.SpawnOutsideLoadingRing = 1
  l0:Activate()
end
function export:f_25_Finished()
  local l0
  self = self._graph
  l0 = self[24]
  l0:In(1)
end
function export:f_25_Skipped()
  local l0
  self = self._graph
  l0 = self[24]
  l0:In(0)
end
function export:f_97_UnspawnedUser()
  local l0
  self = self._graph
  l0 = self[100]
  l0:Input(1)
end
function export:f_60_AllDeliveryCompleted()
  local l0
  self = self._graph
  self:en_50()
  l0 = self[50]
  l0:Disable()
end
function export:f_60_Started()
  local l0
  self = self._graph
  self:en_50()
  l0 = self[50]
  l0:Enable()
end
function export:f_58_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[80]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:f_56_UnspawnedUser()
  local l0
  self = self._graph
  l0 = self[83]
  l0.SceneEntity = "9223372047682966032"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S10/S10_MirandaCab_CIN/s10_mirandacab_cin.seq"
  l0:Start()
end
function export:f_28_PostOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Shown = self.f_39_Shown
  l0.Hidden = DummyFunction
  l0:Show()
end
function export:f_11_Stopped()
  local l0
  self = self._graph
  l0 = self[88]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_11_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[11]
  l0:Stop()
end
function export:f_68_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[28]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_73_Stopped()
  local l0
  self = self._graph
  self:en_77()
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0:Pop()
end
function export:f_73_TimeElapsed()
  local l0
  self = self._graph
  self:en_77()
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0:Push()
end
function export:f_112_Started()
  local l0
  self = self._graph
  l0 = self[47]
  l0.Pawn1 = self.PlayerEntity
  l0.Pawn2 = self.MirandaTemp
  l0.Conversation = "ConversationSetting.9223372052387881602"
  l0.StartDelay = 1
  l0.SpecificVehicle = self.vehiclePlayer
  l0.RuleConfig = "GameplayConversationSettings.9223372066855953761"
  l0:Start()
end
function export:f_81_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[81]
  self.MirandaTemp = l0.UserID
  l0 = self[33]
  l0.Vehicle = self.vehiclePlayer
  l0.Pawn = self.PlayerEntity
  l0.Seat = "Driver"
  l0:Assign()
end
function export:f_104_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.MirandaTemp
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_103_Is_nil
  l0.Is_not_nil = self.f_103_Is_not_nil
  l0:In()
end
function export:en_77()
  local l0
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "no_controls"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_77_Pushed
  l0.Popped = self.f_77_Popped
end
function export:en_48()
  local l0
  l0 = self[48]
  l0.Entity = self.PlayerVehicle
  l0.IsManagingInteraction = 0
  l0.MarkerEntity = "9223372056544150084"
  l0.PlayerOnly = 1
end
function export:en_19()
  local l0
  l0 = self[19]
  l0.Notification = {
    section = "MISSIONS.COMMON.MESSAGES.MISSIONWARNING",
    item = "GetbackInVehicle",
    id = "544597"
  }
  l0.Duration = 16
end
function export:en_6()
  local l0
  l0 = self[6]
  l0.Checkpoint = "CheckPoint_1"
  l0.MissionLayer = "Taxi_S10_Miranda_Main"
  l0.ShowMissionComplete = 1
end
function export:en_61()
  local l0
  l0 = self[61]
  l0.Vehicle = self.vehiclePlayer
  l0.CheckNow = 1
end
function export:en_50()
  local l0
  l0 = self[50]
  l0.Pawn = self.MirandaTemp
end
function export:en_14()
  local l0
  l0 = self[14]
  l0.Seconds = 15
end
function export:en_70()
  local l0
  l0 = self[70]
  l0.Vehicle = self.PlayerVehicle
  l0.CheckNow = 1
end
function export:en_93()
  local l0
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "no_controls"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_93_Pushed
  l0.Popped = self.f_93_Popped
end
function export:en_5()
  local l0
  l0 = self[5]
  l0.TargetEntity = "9223372071645955187"
  l0.Radius = 125
  l0.MonitorConnectedJumper = 0
  l0.MonitorConnectedDrone = 0
end
function export:en_107()
  local l0
  l0 = self[107]
  l0.Seconds = 0.5
end
function export:en_76()
  local l0
  l0 = self[76]
  l0.Notification = {
    section = "MISSIONS.COMMON.MESSAGES.MISSIONWARNING",
    item = "GetbackInVehicle",
    id = "544597"
  }
  l0.Duration = 16
end
function export:en_58()
  local l0
  l0 = self[58]
  l0.Seconds = 0.5
end
function export:en_73()
  local l0
  l0 = self[73]
  l0.Seconds = 15
end
function export:en_112()
  local l0
  l0 = self[112]
  l0.Users = self.TalkersDT
  l0.RuleConfig = "GameplayConversationSettings.9223372066855953761"
end
_compilerVersion = 4
