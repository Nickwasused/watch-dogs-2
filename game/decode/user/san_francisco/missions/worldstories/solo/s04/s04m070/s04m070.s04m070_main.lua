export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AIBuddyController.lua")
  cbox:RegisterBox("domino/System/AIBuddyMonitor.lua")
  cbox:RegisterBox("domino/System/AISquadStateMonitor.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CraneController.lua")
  cbox:RegisterBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  cbox:RegisterBox("domino/System/ForcePawnsVehicleStop_v2.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Hack_Gameplay.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Interact_Gameplay.lua")
  cbox:RegisterBox("domino/System/InteractionScriptController.lua")
  cbox:RegisterBox("domino/System/InteractionScriptMonitor_v2.lua")
  cbox:RegisterBox("domino/System/LMALayerController.lua")
  cbox:RegisterBox("domino/System/LogicGate_v2.lua")
  cbox:RegisterBox("domino/System/MapPointController_v4.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Mission_End.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MissionMusicController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.MissionZone.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/NetworkSurfingController.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PawnHealthController.lua")
  cbox:RegisterBox("domino/System/PawnHealthMonitor_v3.lua")
  cbox:RegisterBox("domino/System/PerkController.lua")
  cbox:RegisterBox("domino/System/PGTController_v2.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PhysZoneCleanup.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/System/PlayerProximityMonitor.lua")
  cbox:RegisterBox("domino/System/PlayerVehicleMonitor_v2.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Reach_Gameplay.lua")
  cbox:RegisterBox("domino/System/RemoteControlledVehicleController.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S04/S04M070/s04_m070_scr_countdown.S04_M070_SCR_Countdown_Main.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S04/S04M070/s04m070_cin_haumcelebration.S04M070_CIN_HaumCelebration_Main.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S04/S04M070/s04m070_cin_showingoffjr.S04M070_CIN_ShowingOffJr_Main.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/TalkerController.lua")
  cbox:RegisterBox("domino/System/TeleportToSpawnPoint.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:RegisterBox("domino/System/TutorialController.lua")
  cbox:RegisterBox("domino/Library/common/FP2015.TV_Antenna.lua")
  cbox:RegisterBox("domino/System/VehicleMonitor_v3.lua")
  cbox:RegisterBox("domino/System/VehicleSeatingController.lua")
  cbox:RegisterBox("domino/System/VehicleSeatingMonitor.lua")
  cbox:LoadResource("soundbinary/2286467389.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1482453689.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1465087397.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2974452019.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1497291215.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3019176306.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3861125065.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3552307770.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1062183988.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.Wrench = nil
  self.WKZ_Van = nil
  self.AimedAtWKZ = 0
  self.CurrentVehicle = nil
  self.S04M070_Active_END = 1
  self[135] = cbox:CreateBox("domino/System/PlayerProximityMonitor.lua")
  l0 = self[135]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_135_Disabled
  l0.EnterRadius = self.f_135_EnterRadius
  l0.ExitRadius = DummyFunction
  l0.RCEnterRadius = DummyFunction
  l0.RCExitRadius = DummyFunction
  self[20] = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self[20]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_20_TeleportDone
  self[11] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[11]
  l0._graph = self
  l0.Loaded = self.f_11_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[125] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[125]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[4] = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self[4]
  l0._graph = self
  l0.Started = self.f_4_Started
  l0.Aborted = DummyFunction
  l0.AllSpawned = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  self[49] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[49]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_49_Out
  self[89] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[89]
  l0._graph = self
  l0.Loaded = self.f_89_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[19] = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.lua")
  l0 = self[19]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_19_Interacted
  self[149] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[149]
  l0._graph = self
  self[45] = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self[45]
  l0._graph = self
  l0.Assigned = self.f_45_Assigned
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = DummyFunction
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self[136] = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.lua")
  l0 = self[136]
  l0._graph = self
  l0.Enabled = self.f_136_Enabled
  l0.Disabled = self.f_136_Disabled
  l0.SoftQuitCompleted = DummyFunction
  self[83] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[83]
  l0._graph = self
  l0.Out = self.f_83_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[141] = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.lua")
  l0 = self[141]
  l0._graph = self
  l0.Enabled = self.f_141_Enabled
  l0.Disabled = DummyFunction
  l0.SoftQuitCompleted = DummyFunction
  self[148] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[148]
  l0._graph = self
  l0.Out = self.f_148_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[152] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[152]
  l0._graph = self
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_152_Out
  l0.ResetOut = DummyFunction
  self[132] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[132]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_132_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[33] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[33]
  l0._graph = self
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_33_Out
  l0.ResetOut = DummyFunction
  self[58] = cbox:CreateBox("domino/System/AISquadStateMonitor.lua")
  l0 = self[58]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ArrestState = DummyFunction
  l0.ArrestStateAnyTarget = DummyFunction
  l0.CombatState = self.f_58_CombatState
  l0.CombatStateAnyTarget = DummyFunction
  l0.SearchState = self.f_58_SearchState
  l0.SearchStateAnyTarget = DummyFunction
  l0.VanishState = DummyFunction
  l0.None = DummyFunction
  self[101] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[101]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_101_Finished
  self[107] = cbox:CreateBox("domino/Library/common/FP2015.TV_Antenna.lua")
  l0 = self[107]
  l0._graph = self
  l0.Out = self.f_107_Out
  l0.EnterFOV_Output = self.f_107_EnterFOV_Output
  l0.LeaveFOV_Output = DummyFunction
  l0.RCExit = DummyFunction
  l0.RcHacked = DummyFunction
  self[91] = cbox:CreateBox("domino/System/TalkerController.lua")
  l0 = self[91]
  l0._graph = self
  l0.Out = self.f_91_Out
  self[106] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[106]
  l0._graph = self
  self[71] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[71]
  l0._graph = self
  l0.Out = self.f_71_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[30] = cbox:CreateBox("domino/System/AIBuddyController.lua")
  l0 = self[30]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Updated = DummyFunction
  l0.IsFollowing = DummyFunction
  l0.IsGoingToCLO = DummyFunction
  l0.IsWaiting = DummyFunction
  l0.Assigned = DummyFunction
  self[134] = cbox:CreateBox("domino/System/LogicGate_v2.lua")
  l0 = self[134]
  l0._graph = self
  l0.Out = self.f_134_Out
  l0.Opened = DummyFunction
  l0.Closed = DummyFunction
  self[54] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[54]
  l0._graph = self
  l0.PreOut = self.f_54_PreOut
  l0.PostOut = DummyFunction
  self[82] = cbox:CreateBox("domino/System/PlayerVehicleMonitor_v2.lua")
  l0 = self[82]
  l0._graph = self
  l0.Enabled = self.f_82_Enabled
  l0.Disabled = self.f_82_Disabled
  l0.Enter = self.f_82_Enter
  l0.Leave = self.f_82_Leave
  l0.ChangeSeat = self.f_82_ChangeSeat
  self[62] = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self[62]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = DummyFunction
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self[32] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[32]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_32_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[123] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[123]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[56] = cbox:CreateBox("domino/System/AIBuddyController.lua")
  l0 = self[56]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Updated = DummyFunction
  l0.IsFollowing = self.f_56_IsFollowing
  l0.IsGoingToCLO = DummyFunction
  l0.IsWaiting = DummyFunction
  l0.Assigned = DummyFunction
  self[40] = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self[40]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_40_TeleportDone
  self[38] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S04/S04M070/s04m070_cin_showingoffjr.S04M070_CIN_ShowingOffJr_Main.lua")
  l0 = self[38]
  l0._graph = self
  l0.Out = self.f_38_Out
  self[113] = cbox:CreateBox("domino/System/AIBuddyMonitor.lua")
  l0 = self[113]
  l0._graph = self
  l0.Enabled = self.f_113_Enabled
  l0.Disabled = self.f_113_Disabled
  l0.OnBuddyFollowing = DummyFunction
  l0.OnBuddyInCombat = DummyFunction
  l0.OnBuddyHasNoSeat = DummyFunction
  l0.OnBuddyCantReach = DummyFunction
  l0.OnBuddyNormalRange = DummyFunction
  l0.OnBuddyTooFarBarkRange = DummyFunction
  l0.OnBuddyTooFar = DummyFunction
  l0.OnBuddyTooFarUnspawnRange = self.f_113_OnBuddyTooFarUnspawnRange
  self[17] = cbox:CreateBox("domino/System/AIBuddyController.lua")
  l0 = self[17]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Updated = DummyFunction
  l0.IsFollowing = DummyFunction
  l0.IsGoingToCLO = DummyFunction
  l0.IsWaiting = DummyFunction
  l0.Assigned = DummyFunction
  self[109] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[109]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_109_PostOut
  self[111] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[111]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_111_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[46] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S04/S04M070/s04_m070_scr_countdown.S04_M070_SCR_Countdown_Main.lua")
  l0 = self[46]
  l0._graph = self
  l0.Out = self.f_46_Out
  self[48] = cbox:CreateBox("domino/Library/common/MissionIngredients.Reach_Gameplay.lua")
  l0 = self[48]
  l0._graph = self
  l0.Started = self.f_48_Started
  l0.Stopped = DummyFunction
  l0.Reached = self.f_48_Reached
  self[69] = cbox:CreateBox("domino/System/PerkController.lua")
  l0 = self[69]
  l0._graph = self
  l0.PerkAdded = self.f_69_PerkAdded
  l0.PerkRemoved = DummyFunction
  l0.PerkListAdded = DummyFunction
  l0.PerkListRemoved = DummyFunction
  l0.PerkListReplaced = DummyFunction
  l0.PerkReseted = DummyFunction
  self[3] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[3]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[34] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[34]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_34_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[35] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[35]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_35_PostOut
  self[53] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[53]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_53_Out
  self[50] = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self[50]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_50_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self[131] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[131]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_131_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[44] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[44]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_44_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[64] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[64]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_64_OnUserInPlace
  self[8] = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.lua")
  l0 = self[8]
  l0._graph = self
  l0.Started = self.f_8_Started
  l0.Stopped = DummyFunction
  l0.Interacted = DummyFunction
  self[70] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[70]
  l0._graph = self
  l0.Out = self.f_70_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[31] = cbox:CreateBox("domino/Library/common/MissionIngredients.Hack_Gameplay.lua")
  l0 = self[31]
  l0._graph = self
  l0.Started = self.f_31_Started
  l0.Stopped = self.f_31_Stopped
  l0.Hacked = self.f_31_Hacked
  self[5] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[5]
  l0._graph = self
  l0.Enabled = self.f_5_Enabled
  l0.Disabled = self.f_5_Disabled
  l0.Enter = self.f_5_Enter
  l0.Leave = self.f_5_Leave
  l0.Use = DummyFunction
  self[42] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[42]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_42_OnUserInPlace
  self[22] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[22]
  l0._graph = self
  l0.Out = self.f_22_Out
  l0.MessageCompleted = DummyFunction
  self[39] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S04/S04M070/s04m070_cin_haumcelebration.S04M070_CIN_HaumCelebration_Main.lua")
  l0 = self[39]
  l0._graph = self
  l0.Out = self.f_39_Out
  self[105] = cbox:CreateBox("domino/System/AIBuddyController.lua")
  l0 = self[105]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Updated = DummyFunction
  l0.IsFollowing = DummyFunction
  l0.IsGoingToCLO = DummyFunction
  l0.IsWaiting = self.f_105_IsWaiting
  l0.Assigned = DummyFunction
  self[73] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[73]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_73_PostOut
  self[120] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[120]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_120_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_120_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[25] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[25]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[23] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[23]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = self.f_23_Finished
  self[94] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[94]
  l0._graph = self
  l0.Out = self.f_94_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[121] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[121]
  l0._graph = self
  l0.Out = self.f_121_Out
  l0.MessageCompleted = DummyFunction
  self[76] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[76]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_76_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_76_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[118] = cbox:CreateBox("domino/System/TalkerController.lua")
  l0 = self[118]
  l0._graph = self
  l0.Out = self.f_118_Out
  self[10] = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self[10]
  l0._graph = self
  l0.Loaded = self.f_10_Loaded
  l0.Unloaded = DummyFunction
  self[12] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[12]
  l0._graph = self
  l0.Out = self.f_12_Out
  l0.MessageCompleted = DummyFunction
  self[14] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[14]
  l0._graph = self
  l0.Out = self.f_14_Out
  l0.MessageCompleted = DummyFunction
  self[151] = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self[151]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = self.f_151_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[57] = cbox:CreateBox("domino/System/AIBuddyController.lua")
  l0 = self[57]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Updated = DummyFunction
  l0.IsFollowing = DummyFunction
  l0.IsGoingToCLO = self.f_57_IsGoingToCLO
  l0.IsWaiting = DummyFunction
  l0.Assigned = DummyFunction
  self[114] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[114]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_114_Out
  self[2] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Loaded = self.f_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[115] = cbox:CreateBox("domino/System/AIBuddyController.lua")
  l0 = self[115]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Updated = DummyFunction
  l0.IsFollowing = DummyFunction
  l0.IsGoingToCLO = DummyFunction
  l0.IsWaiting = self.f_115_IsWaiting
  l0.Assigned = DummyFunction
  self[41] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[41]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_41_OnUserInPlace
  self[6] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[6]
  l0._graph = self
  l0.Out = self.f_6_Out
  l0.MessageCompleted = DummyFunction
  self[87] = cbox:CreateBox("domino/System/AIBuddyController.lua")
  l0 = self[87]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Updated = DummyFunction
  l0.IsFollowing = DummyFunction
  l0.IsGoingToCLO = self.f_87_IsGoingToCLO
  l0.IsWaiting = DummyFunction
  l0.Assigned = DummyFunction
  self[52] = cbox:CreateBox("domino/System/VehicleMonitor_v3.lua")
  l0 = self[52]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_52_Disabled
  l0.Enter = DummyFunction
  l0.Entered = DummyFunction
  l0.PassangerEntered = DummyFunction
  l0.Leave = DummyFunction
  l0.Exiting = DummyFunction
  l0.ChangeSeat = DummyFunction
  l0.BailedOut = DummyFunction
  l0.IsPawnHiding = DummyFunction
  l0.PawnIsNotHiding = DummyFunction
  l0.StateChange = DummyFunction
  l0.TakenDamage = DummyFunction
  l0.IsUnusable = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.NoMoveTimer = self.f_52_NoMoveTimer
  l0.OnMoveTimer = DummyFunction
  l0.IsSlowEnoughToExit = DummyFunction
  l0.VehicleJump = DummyFunction
  l0.VehicleLanding = DummyFunction
  l0.BollardTakedown = DummyFunction
  l0.SteamPipeTakedown = DummyFunction
  l0.TrafficLightTakedown = DummyFunction
  l0.FullTakedown = DummyFunction
  l0.PartialTakedown = DummyFunction
  l0.NitroUsed = DummyFunction
  l0.NitroStopped = DummyFunction
  l0.IsFlipped = DummyFunction
  l0.IsUnFlipped = DummyFunction
  l0.Unloaded = DummyFunction
  self[28] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[28]
  l0._graph = self
  l0.PreOut = self.f_28_PreOut
  l0.PostOut = DummyFunction
  self[21] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[21]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_21_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[104] = cbox:CreateBox("domino/System/CraneController.lua")
  l0 = self[104]
  l0._graph = self
  l0.PlatformPositionSet = DummyFunction
  l0.CanMoveChanged = self.f_104_CanMoveChanged
  self[16] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[16]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[59] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[59]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_59_OnUserInPlace
  self[142] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[142]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_142_Out
  self[112] = cbox:CreateBox("domino/System/NetworkSurfingController.lua")
  l0 = self[112]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_112_Deactivated
  self[63] = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self[63]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = self.f_63_Unassigned
  l0.AssignCompleted = DummyFunction
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
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
  self[110] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[110]
  l0._graph = self
  l0.Enabled = self.f_110_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[13] = cbox:CreateBox("domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self[13]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.InteractionStarted = self.f_13_InteractionStarted
  l0.InteractionFailed = DummyFunction
  l0.InteractionFinished = self.f_13_InteractionFinished
  l0.AnimationStarted = DummyFunction
  l0.AnimationFinished = DummyFunction
  self[154] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[154]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_154_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[80] = cbox:CreateBox("domino/System/TalkerController.lua")
  l0 = self[80]
  l0._graph = self
  l0.Out = self.f_80_Out
  self[85] = cbox:CreateBox("domino/System/AIBuddyController.lua")
  l0 = self[85]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Updated = DummyFunction
  l0.IsFollowing = DummyFunction
  l0.IsGoingToCLO = DummyFunction
  l0.IsWaiting = self.f_85_IsWaiting
  l0.Assigned = DummyFunction
  self[133] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[133]
  l0._graph = self
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = self.f_133_NotificationHidden
  l0.MessageCompleted = DummyFunction
  self[18] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[18]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_18_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_18_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[55] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[55]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[138] = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self[138]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  self[116] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[116]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_116_Out
  self[117] = cbox:CreateBox("domino/System/AIBuddyController.lua")
  l0 = self[117]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Updated = DummyFunction
  l0.IsFollowing = DummyFunction
  l0.IsGoingToCLO = self.f_117_IsGoingToCLO
  l0.IsWaiting = DummyFunction
  l0.Assigned = DummyFunction
  self[127] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[127]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[88] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[88]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_88_Out
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
  self[143] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[143]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_143_Out
  self[72] = cbox:CreateBox("domino/System/PerkController.lua")
  l0 = self[72]
  l0._graph = self
  l0.PerkAdded = DummyFunction
  l0.PerkRemoved = DummyFunction
  l0.PerkListAdded = DummyFunction
  l0.PerkListRemoved = DummyFunction
  l0.PerkListReplaced = DummyFunction
  l0.PerkReseted = self.f_72_PerkReseted
  self[79] = cbox:CreateBox("domino/System/PawnHealthMonitor_v3.lua")
  l0 = self[79]
  l0._graph = self
  l0.Enabled = self.f_79_Enabled
  l0.Disabled = DummyFunction
  l0.Damaged = DummyFunction
  l0.Killed = self.f_79_Killed
  l0.DBNO = DummyFunction
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
  self[75] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[75]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = self.f_75_HackForced
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[60] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[60]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_60_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[103] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[103]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[68] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[68]
  l0._graph = self
  l0.Loaded = self.f_68_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[29] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[29]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_29_PostOut
  self[146] = cbox:CreateBox("domino/Library/common/MissionIngredients.Mission_End.lua")
  l0 = self[146]
  l0._graph = self
  self[96] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[96]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_96_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[119] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[119]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = self.f_119_ProfilingEnabled
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[24] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[24]
  l0._graph = self
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_24_Out
  l0.ResetOut = DummyFunction
  self[122] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[122]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_122_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[90] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[90]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_90_PostOut
  self[100] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[100]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[95] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[95]
  l0._graph = self
  l0.Started = self.f_95_Started
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
  l0 = self[11]
  l0.LayerName = "S04M070_Main"
  l0:Load()
end
function export:CheckPoint_1()
  local l0
  l0 = self[68]
  l0.LayerName = "S04M070_Main"
  l0:Load()
end
function export:CheckPoint_2()
  local l0
  l0 = self[89]
  l0.LayerName = "S04M070_Main"
  l0:Load()
end
function export:CheckPoint_3()
  local l0
  self:en_146()
  l0 = self[146]
  l0:FromCheckpoint()
end
function export:In()
  local l0
  l0 = self[2]
  l0.LayerName = "S04M070_Main"
  l0:Load()
end
function export:f_128_Out_0()
  local l0
  self = self._graph
  l0 = self[23]
  l0.SceneEntity = "9223372059169445086"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S04/S04_M070_ElevatorBeautyShot/s04_m070_elevatorbeautyshot.seq"
  l0:Start()
end
function export:f_128_Out_1()
  local l0
  self = self._graph
  l0 = self[142]
  l0:Input(0)
end
function export:f_135_Disabled()
  local l0
  self = self._graph
  self:en_136()
  l0 = self[136]
  l0:Enable()
end
function export:f_135_EnterRadius()
  local l0
  self = self._graph
  self:en_135()
  l0 = self[135]
  l0:Disable()
end
function export:f_145_EnableStateSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372047986193919"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_65_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0:Disable()
end
function export:f_20_TeleportDone()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_128_Out_0
  l0.Out[1] = self.f_128_Out_1
  l0:In()
end
function export:f_92_Out_0()
  local l0
  self = self._graph
  l0 = self[93]
  l0.Seconds = 2
  l0:Start()
end
function export:f_92_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleSeatingMonitor.lua")]
  l0.Pawn = self.PlayerEntity
  l0.Vehicle = nil
  l0._graph = self
  l0.EntityIsInVehicle = self.f_86_EntityIsInVehicle
  l0.EntityIsNotInVehicle = DummyFunction
  l0.VehicleIsEmpty = DummyFunction
  l0.VehicleIsNotEmpty = DummyFunction
  l0:IsInVehicle()
end
function export:f_11_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_15_Out
  l0:In()
end
function export:f_124_Out_0()
  local l0
  self = self._graph
  l0 = self[46]
  l0:In()
end
function export:f_124_Out_1()
  local l0
  self = self._graph
  l0 = self[123]
  l0.SoundId = "soundbinary/1482453689.bnk"
  l0:Play()
end
function export:f_47_CanExitChanged()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/RemoteControlledVehicleController.lua")]
  l0.UserEntity = self.PlayerEntity
  l0.RCEntity = "9223372048476329022"
  l0.CanExit = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.UserForcedOutOfRC = self.f_36_UserForcedOutOfRC
  l0.CanExitChanged = DummyFunction
  l0:ForceUserOutOfRC()
end
function export:f_4_Started()
  local l0
  self = self._graph
  self:en_141()
  l0 = self[141]
  l0:Enable()
end
function export:f_37_Out()
  local l0
  self = self._graph
  l0 = self[53]
  l0:Input(1)
end
function export:f_61_ResetOut()
  local l0
  self = self._graph
  self:en_82()
  l0 = self[82]
  l0:Disable()
end
function export:f_61_Stopped()
  local l0
  self = self._graph
  self:en_82()
  l0 = self[82]
  l0:Enable()
end
function export:f_99_Out_0()
  local l0
  self = self._graph
  l0 = self[8]
  l0.Entity = "9223372047986193919"
  l0.IsManagingInteraction = 1
  l0:Start()
end
function export:f_99_Out_1()
  local l0
  self = self._graph
  l0 = self[122]
  l0.Seconds = 27
  l0:Start()
end
function export:f_49_Out()
  local l0
  self = self._graph
  l0 = self[70]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_129_Out_0()
  local l0
  self = self._graph
  l0 = self[142]
  l0:Input(1)
end
function export:f_129_Out_1()
  local l0
  self = self._graph
  self:en_27()
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0:Activate()
end
function export:f_89_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_84_Out
  l0:In()
end
function export:f_19_Interacted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PawnHealthController.lua")]
  l0.Pawn = self.PlayerEntity
  l0.PawnList = nil
  l0._graph = self
  l0.Out = self.f_108_Out
  l0:SetInvincible()
end
function export:f_51_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372072116240189"
  l0.InteractionEntityList = nil
  l0.EnableState = 0
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnableStateSet = self.f_144_EnableStateSet
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0:SetEnableState()
end
function export:f_45_Assigned()
  local l0
  self = self._graph
  l0 = self[50]
  l0.Vehicle = self.CurrentVehicle
  l0.Pawn = self.PlayerEntity
  l0.Seat = "Driver"
  l0.WalkType = "Jog"
  l0:Assign()
end
function export:f_136_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_140_Out
  l0:In()
end
function export:f_136_Enabled()
  local l0
  self = self._graph
  l0 = self[10]
  l0.LMALayerName = "SF_06_Sutro_Tower_LMA"
  l0:Load()
end
function export:f_83_Out()
  local l0
  self = self._graph
  l0 = self[69]
  l0.PerkDB = "PerksSinglePlayer.9223372047059047165"
  l0:AddPerk()
end
function export:f_141_Enabled()
  local l0
  self = self._graph
  l0 = self[73]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_148_Out()
  local l0
  self = self._graph
  l0 = self[149]
  l0.EndReason = {
    section = "MISSIONS.COMMON.MESSAGES.MISSIONFAILURE",
    item = "AllyKilled",
    id = "689089"
  }
  l0:Fail()
end
function export:f_152_Out()
  local l0
  self = self._graph
  self:en_133()
  l0 = self[133]
  l0:HideNotification()
end
function export:f_9_Out_0()
  local l0
  self = self._graph
  l0 = self[12]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S04.S04M070.Objectives.Objective020",
    item = "Objective",
    id = "341492"
  }
  l0:ShowNewObjective()
end
function export:f_9_Out_1()
  local l0
  self = self._graph
  l0 = self[58]
  l0.Affiliation = "UZulu"
  l0.CheckStateNow = 1
  l0:Enable()
end
function export:f_140_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_139_Out
  l0:In()
end
function export:f_132_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[116]
  l0:Input(0)
end
function export:f_33_Out()
  local l0
  self = self._graph
  l0 = self[16]
  l0.PlayerEntity = self.PlayerEntity
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053603311351"
  l0:StartCommunication()
end
function export:f_58_CombatState()
  local l0
  self = self._graph
  l0 = self[55]
  l0.SoundId = "soundbinary/3552307770.bnk"
  l0:Play()
end
function export:f_58_SearchState()
  local l0
  self = self._graph
  l0 = self[116]
  l0:Input(1)
end
function export:f_101_Finished()
  local l0
  self = self._graph
  self:en_27()
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0:Deactivate()
end
function export:f_107_EnterFOV_Output()
  local l0
  self = self._graph
  l0 = self[152]
  l0:In(0)
end
function export:f_107_Out()
  local l0
  self = self._graph
  self:en_133()
  l0 = self[133]
  l0:Display()
end
function export:f_126_Out_0()
  local l0
  self = self._graph
  l0 = self[14]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S04.S04M070.Objectives.Objective030",
    item = "Objective",
    id = "341493"
  }
  l0:ShowNewObjective()
end
function export:f_126_Out_1()
  local l0
  self = self._graph
  l0 = self[125]
  l0.SoundId = "soundbinary/3019176306.bnk"
  l0:Play()
end
function export:f_84_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_130_Out_0
  l0.Out[1] = self.f_130_Out_1
  l0:In()
end
function export:f_91_Out()
  local l0
  self = self._graph
  l0 = self[59]
  l0.CLO = "9223372060380611443"
  l0:Activate()
end
function export:f_7_CanExitChanged()
  local l0
  self = self._graph
  l0 = self[154]
  l0:Start()
end
function export:f_71_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_9_Out_0
  l0.Out[1] = self.f_9_Out_1
  l0:In()
end
function export:f_134_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleSeatingMonitor.lua")]
  l0.Pawn = self.PlayerEntity
  l0.Vehicle = nil
  l0._graph = self
  l0.EntityIsInVehicle = self.f_66_EntityIsInVehicle
  l0.EntityIsNotInVehicle = self.f_66_EntityIsNotInVehicle
  l0.VehicleIsEmpty = DummyFunction
  l0.VehicleIsNotEmpty = DummyFunction
  l0:IsInVehicle()
end
function export:f_54_PreOut()
  local l0
  self = self._graph
  l0 = self[21]
  l0.Seconds = 3
  l0:Start()
end
function export:f_82_ChangeSeat()
  local l0
  self = self._graph
  l0 = self[82]
  self.CurrentVehicle = l0.Vehicle
end
function export:f_82_Disabled()
  local l0
  self = self._graph
  self:en_52()
  l0 = self[52]
  l0:Disable()
end
function export:f_82_Enabled()
  local l0
  self = self._graph
  self:en_52()
  l0 = self[52]
  l0:Enable()
end
function export:f_82_Enter()
  local l0
  self = self._graph
  l0 = self[82]
  self.CurrentVehicle = l0.Vehicle
end
function export:f_82_Leave()
  local l0
  self = self._graph
  l0 = self[82]
  self.CurrentVehicle = l0.Vehicle
end
function export:f_32_TalkFinished()
  local l0
  self = self._graph
  l0 = self[25]
  l0.PlayerEntity = self.PlayerEntity
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372049688397559"
  l0:StartCommunication()
end
function export:f_78_Out_0()
  local l0
  self = self._graph
  l0 = self[85]
  l0.NPC = self.Wrench
  l0:Wait()
end
function export:f_78_Out_1()
  local l0
  self = self._graph
  l0 = self[53]
  l0:Input(0)
end
function export:f_108_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_26_Out_0
  l0.Out[1] = self.f_26_Out_1
  l0.Out[2] = self.f_26_Out_2
  l0:In()
end
function export:f_56_IsFollowing()
  local l0
  self = self._graph
  l0 = self[35]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_40_TeleportDone()
  local l0
  self = self._graph
  l0 = self[72]
  l0:ResetPerks()
end
function export:f_38_Out()
  local l0
  self = self._graph
  l0 = self[42]
  l0.CLO = "9223372046622977133"
  l0:Activate()
end
function export:f_113_Disabled()
  local l0
  self = self._graph
  l0 = self[134]
  l0:In()
end
function export:f_113_Enabled()
  local l0
  self = self._graph
  l0 = self[79]
  l0.Pawn = self.Wrench
  l0:Enable()
end
function export:f_113_OnBuddyTooFarUnspawnRange()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_147_Out_0
  l0.Out[1] = self.f_147_Out_1
  l0:In()
end
function export:f_26_Out_0()
  local l0
  self = self._graph
  self:en_76()
  l0 = self[76]
  l0:DisableHack()
end
function export:f_26_Out_1()
  local l0
  self = self._graph
  l0 = self[143]
  l0:Input(0)
end
function export:f_26_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_74_Out
  l0:In()
end
function export:f_109_PostOut()
  local l0
  self = self._graph
  l0 = self[88]
  l0:Input(0)
end
function export:f_111_Disabled()
  local l0
  self = self._graph
  l0 = self[39]
  l0:In()
end
function export:f_153_Out()
  local l0
  self = self._graph
  l0 = self[109]
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_46_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_126_Out_0
  l0.Out[1] = self.f_126_Out_1
  l0:In()
end
function export:f_48_Reached()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:Disable()
end
function export:f_48_Started()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:Enable()
end
function export:f_69_PerkAdded()
  local l0
  self = self._graph
  l0 = self[22]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S04.S04M070.Objectives.Objective040",
    item = "Objective",
    id = "341494"
  }
  l0.HasObjectiveMarker = 0
  l0:ShowNewObjective()
end
function export:f_34_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[60]
  l0.Seconds = 2
  l0:Start()
end
function export:f_65_Disabled()
  local l0
  self = self._graph
  l0 = self[96]
  l0.HackableEntity = "9223372047986193919"
  l0:DisableProfiling()
end
function export:f_130_Out_0()
  local l0
  self = self._graph
  self:en_120()
  l0 = self[120]
  l0:DisableHack()
end
function export:f_130_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_129_Out_0
  l0.Out[1] = self.f_129_Out_1
  l0:In()
end
function export:f_35_PostOut()
  local l0
  self = self._graph
  l0 = self[6]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S04.S04M070.Objectives.Objective010",
    item = "Objective",
    id = "341491"
  }
  l0:ShowNewObjective()
end
function export:f_53_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372047986193919"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0.Enabled = self.f_97_Enabled
  l0.Disabled = DummyFunction
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0:Enable()
end
function export:f_50_AssignCompleted()
  local l0
  self = self._graph
  l0 = self[44]
  l0.Seconds = 2
  l0:Start()
end
function export:f_131_UnspawnedUser()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PawnHealthController.lua")]
  l0.Pawn = self.PlayerEntity
  l0.PawnList = nil
  l0._graph = self
  l0.Out = self.f_153_Out
  l0:UnsetInvincible()
end
function export:f_44_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[56]
  l0.NPC = self.Wrench
  l0:Follow()
end
function export:f_64_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[64]
  self.Wrench = l0.UserID
  l0 = self[105]
  l0.NPC = self.Wrench
  l0:Wait()
end
function export:f_8_Started()
  local l0
  self = self._graph
  l0 = self[13]
  l0.InteractionScriptEntity = "9223372047986193919"
  l0:Enable()
end
function export:f_70_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PhysZoneCleanup.lua")]
  l0.TargetZone = "9223372060052285003"
  l0._graph = self
  l0.Out = self.f_77_Out
  l0:Activate()
end
function export:f_31_Hacked()
  local l0
  self = self._graph
  l0 = self[33]
  l0:In(0)
end
function export:f_31_Started()
  local l0
  self = self._graph
  self:en_18()
  l0 = self[18]
  l0:Enable()
end
function export:f_31_Stopped()
  local l0
  self = self._graph
  self:en_18()
  l0 = self[18]
  l0:Disable()
end
function export:f_5_Disabled()
  local l0
  self = self._graph
  self:en_113()
  l0 = self[113]
  l0:Disable()
end
function export:f_5_Enabled()
  local l0
  self = self._graph
  self:en_113()
  l0 = self[113]
  l0:Enable()
end
function export:f_5_Enter()
  local l0
  self = self._graph
  l0 = self[17]
  l0.NPC = self.Wrench
  l0:Wait()
end
function export:f_5_Leave()
  local l0
  self = self._graph
  l0 = self[30]
  l0.NPC = self.Wrench
  l0:Follow()
end
function export:f_42_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[42]
  self.CurrentVehicle = l0.UserID
  l0 = self[41]
  l0.CLO = "9223372046622977615"
  l0:Activate()
end
function export:f_22_Out()
  local l0
  self = self._graph
  self:en_31()
  l0 = self[31]
  l0:Start()
end
function export:f_39_Out()
  local l0
  self = self._graph
  l0 = self[40]
  l0.SpawnPoint = "9223372046622999926"
  l0.UseFadeToBlack = 0
  l0.KeepBlackScreenOnExit = 1
  l0:In()
end
function export:f_105_IsWaiting()
  local l0
  self = self._graph
  l0 = self[87]
  l0.NPC = self.Wrench
  l0.CLO = "9223372060380611013"
  l0:GotoCLO()
end
function export:f_73_PostOut()
  local l0
  self = self._graph
  l0 = self[53]
  l0:Input(2)
end
function export:f_120_Disabled()
  local l0
  self = self._graph
  self:en_120()
  l0 = self[120]
  l0:DisableProfiling()
end
function export:f_120_ProfilingDisabled()
  local l0
  self = self._graph
  l0 = self[90]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_137_Out_0()
  local l0
  self = self._graph
  l0 = self[48]
  l0.Entity = "9223372060380611012"
  l0.Entity_AreaRadius = 10
  l0.AutoGPS = 1
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0:Start()
end
function export:f_137_Out_1()
  local l0
  self = self._graph
  self:en_135()
  l0 = self[135]
  l0:Enable()
end
function export:f_23_Finished()
  local l0
  self = self._graph
  l0 = self[131]
  l0.User = self.Wrench
  l0:UnspawnUser()
end
function export:f_94_Out()
  local l0
  self = self._graph
  l0 = self[106]
  l0.EndReason = {
    section = "MISSIONS.COMMON.MESSAGES.MISSIONFAILURE",
    item = "AllyAbandoned",
    id = "605440"
  }
  l0:Fail()
end
function export:f_121_Out()
  local l0
  self = self._graph
  l0 = self[24]
  l0:In(0)
end
function export:f_36_UserForcedOutOfRC()
  local l0
  self = self._graph
  l0 = self[111]
  l0.HackableEntity = "9223372048476329022"
  l0:DisableHack()
end
function export:f_74_Out()
  local l0
  self = self._graph
  self:en_136()
  l0 = self[136]
  l0:Disable()
end
function export:f_76_Disabled()
  local l0
  self = self._graph
  self:en_76()
  l0 = self[76]
  l0:DisableProfiling()
end
function export:f_76_ProfilingDisabled()
  local l0
  self = self._graph
  l0 = self[54]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:f_118_Out()
  local l0
  self = self._graph
  l0 = self[95]
  l0.Entity = self.Wrench
  l0.SoundId = "soundbinary/1062183988.bnk"
  l0:Start()
end
function export:f_10_Loaded()
  local l0
  self = self._graph
  l0 = self[138]
  l0.PGTMissionArea = "9223372046687101181"
  l0:Start()
end
function export:f_12_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_99_Out_0
  l0.Out[1] = self.f_99_Out_1
  l0:In()
end
function export:f_14_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372072116240189"
  l0.InteractionEntityList = nil
  l0.EnableState = 1
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnableStateSet = self.f_43_EnableStateSet
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0:SetEnableState()
end
function export:f_151_Hidden()
  local l0
  self = self._graph
  l0 = self[104]
  l0.Entity = "9223372048476329022"
  l0.CanMove = 0
  l0:SetCanMove()
end
function export:f_57_IsGoingToCLO()
  local l0
  self = self._graph
  l0 = self[80]
  l0.Talker = self.Wrench
  l0.Conversation = "ConversationInteractionSettings.9223372060380614537"
  l0:SetConversationOnEntity()
end
function export:f_114_Out()
  local l0
  self = self._graph
  l0 = self[134]
  l0:Close()
end
function export:f_2_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:In()
end
function export:f_66_EntityIsInVehicle()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_78_Out_0
  l0.Out[1] = self.f_78_Out_1
  l0:In()
end
function export:f_66_EntityIsNotInVehicle()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_67_Out
  l0:In()
end
function export:f_115_IsWaiting()
  local l0
  self = self._graph
  l0 = self[117]
  l0.NPC = self.Wrench
  l0.CLO = "9223372060380611013"
  l0:GotoCLO()
end
function export:f_41_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[41]
  self.Wrench = l0.UserID
  l0 = self[45]
  l0.Vehicle = self.CurrentVehicle
  l0.Pawn = self.Wrench
  l0.Seat = "FrontPassenger"
  l0.WalkType = "Jog"
  l0:Assign()
end
function export:f_6_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_137_Out_0
  l0.Out[1] = self.f_137_Out_1
  l0:In()
end
function export:f_87_IsGoingToCLO()
  local l0
  self = self._graph
  l0 = self[91]
  l0.Talker = self.Wrench
  l0.Conversation = "ConversationInteractionSettings.9223372060380614537"
  l0:SetConversationOnEntity()
end
function export:f_52_Disabled()
  local l0
  self = self._graph
  l0 = self[63]
  l0.Pawn = self.Wrench
  l0.UseAnimation = 1
  l0.Seat = "FrontPassenger"
  l0:Unassign()
end
function export:f_52_NoMoveTimer()
  local l0
  self = self._graph
  self:en_61()
  l0 = Boxes[PathID("domino/System/ForcePawnsVehicleStop_v2.lua")]
  l0:Reset()
end
function export:f_77_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372072116240189"
  l0.InteractionEntityList = nil
  l0.EnableState = 0
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnableStateSet = self.f_145_EnableStateSet
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0:SetEnableState()
end
function export:f_147_Out_0()
  local l0
  self = self._graph
  l0 = self[114]
  l0:Input(1)
end
function export:f_147_Out_1()
  local l0
  self = self._graph
  l0 = self[94]
  l0.SoundId = "soundbinary/1497291215.bnk"
  l0:Play()
end
function export:f_28_PreOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/RemoteControlledVehicleController.lua")]
  l0.UserEntity = self.PlayerEntity
  l0.RCEntity = "9223372048476329022"
  l0.CanExit = 1
  l0._graph = self
  l0.Out = DummyFunction
  l0.UserForcedOutOfRC = DummyFunction
  l0.CanExitChanged = self.f_47_CanExitChanged
  l0:SetCanExit()
end
function export:f_21_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[20]
  l0.SpawnPoint = "9223372046521920915"
  l0:In()
end
function export:f_86_EntityIsInVehicle()
  local l0
  self = self._graph
  l0 = self[62]
  l0.Pawn = self.PlayerEntity
  l0.UseAnimation = 1
  l0.Seat = "Driver"
  l0:Unassign()
end
function export:f_104_CanMoveChanged()
  local l0
  self = self._graph
  l0 = self[121]
  l0:ShowLastObjectiveComplete()
end
function export:f_67_Out()
  local l0
  self = self._graph
  l0 = self[115]
  l0.NPC = self.Wrench
  l0:Wait()
end
function export:f_59_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[4]
  l0.PGTMissionArea = "9223372046687101181"
  l0:Start()
end
function export:f_142_Out()
  local l0
  self = self._graph
  l0 = self[127]
  l0.SoundId = "soundbinary/2974452019.bnk"
  l0:Play()
end
function export:f_112_Deactivated()
  local l0
  self = self._graph
  l0 = self[75]
  l0.HackableEntity = "9223372048476329022"
  l0:ForceHack()
end
function export:f_63_Unassigned()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_92_Out_0
  l0.Out[1] = self.f_92_Out_1
  l0:In()
end
function export:f_81_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[29]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_110_Enabled()
  local l0
  self = self._graph
  l0 = self[112]
  l0:Deactivate()
end
function export:f_98_Activated()
  local l0
  self = self._graph
  l0 = self[132]
  l0.Seconds = 0.3
  l0:Start()
end
function export:f_13_InteractionFinished()
  local l0
  self = self._graph
  l0 = self[46]
  l0:InInteractionFinish()
end
function export:f_13_InteractionStarted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_124_Out_0
  l0.Out[1] = self.f_124_Out_1
  l0:In()
end
function export:f_154_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[107]
  l0.Reference_Object_Logic = "9223372048476329022"
  l0.LookAt_Trigger_00 = "9223372048476329018"
  l0.LookAt_Trigger_01 = "9223372048476329016"
  l0.LookAt_Trigger_02 = "9223372048476329014"
  l0.LookAt_Trigger_03 = "9223372048476329012"
  l0.LookAt_Trigger_04 = "9223372048476329010"
  l0.LookAt_Trigger_05 = "9223372048476329008"
  l0.LookAt_Trigger_06 = "9223372048476329006"
  l0.LookAt_Trigger_07 = "9223372048476329004"
  l0.LookAt_Trigger_08 = "9223372048476329002"
  l0.Camera_Context_Config = "CameraContext.9223372044265832551"
  l0.Camera_Context_BlendIn = "CameraBlendListDB.9223372048779319830"
  l0.Camera_Context_BlendOut = "CameraBlendListDB.9223372048779319830"
  l0.MapPoint = "9223372048476336470"
  l0.MapPointLocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Link",
    id = "340811"
  }
  l0.IsS04M070 = self.S04M070_Active_END
  l0:In()
end
function export:f_80_Out()
  local l0
  self = self._graph
  l0 = self[3]
  l0.Entity = self.Wrench
  l0.SoundId = "soundbinary/1062183988.bnk"
  l0:Start()
end
function export:f_85_IsWaiting()
  local l0
  self = self._graph
  self:en_61()
  l0 = Boxes[PathID("domino/System/ForcePawnsVehicleStop_v2.lua")]
  l0:Stop()
end
function export:f_133_NotificationHidden()
  local l0
  self = self._graph
  l0 = self[151]
  l0.MapPoint = "9223372048476336470"
  l0:Hide()
end
function export:f_18_Disabled()
  local l0
  self = self._graph
  l0 = self[110]
  l0.HackableEntity = "9223372048476329022"
  l0:EnableHack()
end
function export:f_18_HackSuccess()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_102_Out_0
  l0.Out[1] = self.f_102_Out_1
  l0:In()
end
function export:f_116_Out()
  local l0
  self = self._graph
  l0 = self[100]
  l0.SoundId = "soundbinary/1465087397.bnk"
  l0:Play()
end
function export:f_117_IsGoingToCLO()
  local l0
  self = self._graph
  l0 = self[118]
  l0.Talker = self.Wrench
  l0.Conversation = "ConversationInteractionSettings.9223372060380614537"
  l0:SetConversationOnEntity()
end
function export:f_88_Out()
  local l0
  self = self._graph
  l0 = self[83]
  l0.Checkpoint = "CheckPoint_2"
  l0:In()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[49]
  l0:Input(0)
end
function export:f_93_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[57]
  l0.NPC = self.Wrench
  l0.CLO = "9223372060380611013"
  l0:GotoCLO()
end
function export:f_143_Out()
  local l0
  self = self._graph
  l0 = self[103]
  l0.SoundId = "soundbinary/2286467389.bnk"
  l0:Play()
end
function export:f_72_PerkReseted()
  local l0
  self = self._graph
  l0 = self[81]
  l0.Seconds = 3
  l0:Start()
end
function export:f_144_EnableStateSet()
  local l0
  self = self._graph
  l0 = self[64]
  l0.CLO = "9223372056618736261"
  l0:Activate()
end
function export:f_79_Enabled()
  local l0
  self = self._graph
  l0 = self[32]
  l0.Pawn1 = self.PlayerEntity
  l0.Pawn2 = self.Wrench
  l0.Conversation = "ConversationSetting.9223372049688397558"
  l0.StartDelay = 1
  l0.SpecificVehicle = self.WKZ_Van
  l0:Start()
end
function export:f_79_Killed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_150_Out_0
  l0.Out[1] = self.f_150_Out_1
  l0:In()
end
function export:f_75_HackForced()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/RemoteControlledVehicleController.lua")]
  l0.UserEntity = self.PlayerEntity
  l0.RCEntity = "9223372048476329022"
  l0.CanExit = 0
  l0._graph = self
  l0.Out = DummyFunction
  l0.UserForcedOutOfRC = DummyFunction
  l0.CanExitChanged = self.f_7_CanExitChanged
  l0:SetCanExit()
end
function export:f_102_Out_0()
  local l0
  self = self._graph
  self:en_31()
  l0 = self[31]
  l0:Stop()
end
function export:f_102_Out_1()
  local l0
  self = self._graph
  l0 = self[101]
  l0.SoundId = "soundbinary/3861125065.bnk"
  l0:Play()
end
function export:f_60_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[28]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:f_68_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_51_Out
  l0:In()
end
function export:f_29_PostOut()
  local l0
  self = self._graph
  self:en_146()
  l0 = self[146]
  l0:End()
end
function export:f_43_EnableStateSet()
  local l0
  self = self._graph
  l0 = self[19]
  l0.Entity = "9223372072116240189"
  l0.IsManagingInteraction = 1
  l0.PlayerOnly = 1
  l0:Start()
end
function export:f_150_Out_0()
  local l0
  self = self._graph
  l0 = self[114]
  l0:Input(0)
end
function export:f_150_Out_1()
  local l0
  self = self._graph
  l0 = self[148]
  l0.SoundId = "soundbinary/1497291215.bnk"
  l0:Play()
end
function export:f_96_ProfilingDisabled()
  local l0
  self = self._graph
  l0 = self[38]
  l0:In()
end
function export:f_119_ProfilingEnabled()
  local l0
  self = self._graph
  l0 = self[71]
  l0.Checkpoint = "CheckPoint_1"
  l0:In()
end
function export:f_24_Out()
  local l0
  self = self._graph
  l0 = self[34]
  l0.PlayerEntity = self.PlayerEntity
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421347585"
  l0:StartCommunication()
end
function export:f_122_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669154"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0.Activated = self.f_98_Activated
  l0.Deactivated = DummyFunction
  l0:Activate()
end
function export:f_90_PostOut()
  local l0
  self = self._graph
  l0 = self[88]
  l0:Input(1)
end
function export:f_139_Out()
  local l0
  self = self._graph
  self:en_141()
  l0 = self[141]
  l0:Disable()
end
function export:f_15_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[49]
  l0:Input(1)
end
function export:f_97_Enabled()
  local l0
  self = self._graph
  l0 = self[119]
  l0.HackableEntity = "9223372047986193919"
  l0:EnableProfiling()
end
function export:f_95_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_37_Out
  l0:In()
end
function export:en_135()
  local l0
  l0 = self[135]
  l0.TargetEntity = "9223372047986383305"
  l0.Radius = 160
end
function export:en_27()
  local l0
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669154"
  l0.UseMusicScoreMode = nil
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
end
function export:en_61()
  local l0
  l0 = Boxes[PathID("domino/System/ForcePawnsVehicleStop_v2.lua")]
  l0.PlayerEntity = nil
  l0.Brake = "Soft"
  l0._graph = self
  l0.Stopped = self.f_61_Stopped
  l0.ResetOut = self.f_61_ResetOut
end
function export:en_136()
  local l0
  l0 = self[136]
  l0.MissionArea = "9223372047986383305"
  l0.MissionLayer = "S04M070_Main"
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
end
function export:en_141()
  local l0
  l0 = self[141]
  l0.MissionArea = "9223372047986383305"
  l0.MissionLayer = "S04M070_Main"
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
end
function export:en_82()
  local l0
  l0 = self[82]
  l0.CheckNow = 1
end
function export:en_113()
  local l0
  l0 = self[113]
  l0.BuddyNPC = self.Wrench
end
function export:en_31()
  local l0
  l0 = self[31]
  l0.Entity = "9223372055214361305"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 0
  l0.DisplayObjectiveDistance = 1
end
function export:en_5()
  local l0
  l0 = self[5]
  l0.Trigger = "9223372073471818828"
end
function export:en_120()
  local l0
  l0 = self[120]
  l0.HackableEntity = "9223372048476329022"
end
function export:en_76()
  local l0
  l0 = self[76]
  l0.HackableEntity = "9223372048476329022"
end
function export:en_52()
  local l0
  l0 = self[52]
  l0.Vehicle = self.CurrentVehicle
  l0.NoMoveTime = 0.5
end
function export:en_133()
  local l0
  l0 = self[133]
  l0.Notification = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S04.S04M070.EXTRA.Specific_DishMovement",
    item = "Description",
    id = "694087"
  }
  l0.Duration = -1
end
function export:en_18()
  local l0
  l0 = self[18]
  l0.HackableEntity = "9223372048052779651"
end
function export:en_146()
  local l0
  l0 = self[146]
  l0.Checkpoint = "CheckPoint_3"
  l0.MissionLayer = "S04M070_Main"
  l0.LmaLayer = "SF_06_Sutro_Tower_LMA"
  l0.ShowMissionComplete = 1
end
_compilerVersion = 4
