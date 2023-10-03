export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AIAgentZoneController.lua")
  cbox:RegisterBox("domino/System/AISquadStateController.lua")
  cbox:RegisterBox("domino/System/AISquadStateMonitor.lua")
  cbox:RegisterBox("domino/System/CinemaZoneCleanup.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Download_Gameplay.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Escape_Gameplay.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Locate_Gameplay.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Mission_End.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MissionMusicController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.MissionZone.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PGTController_v2.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/System/PlayerProximityMonitor.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/ReinforcementSystemController_v2.lua")
  cbox:RegisterBox("domino/System/ReinforcementSystemMonitor_v2.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/SetTimeOfDay.lua")
  cbox:RegisterBox("domino/System/ShowOrHideAllUI.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/TeleportToSpawnPoint.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TimerToScreen.lua")
  cbox:RegisterBox("domino/System/TutorialController.lua")
  cbox:RegisterBox("domino/System/VehicleMonitor_v3.lua")
  cbox:LoadResource("soundbinary/81442961.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2679354804.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1465087397.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/720989137.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2834973317.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.SpyingVan = nil
  self.VanPosX = 0
  self.VanPosY = 0
  self.FelonySearchReached = 0
  self.PauseReached = 0
  self._60percentDLReached = 0
  self.PlayerVehicle = nil
  self[65] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[65]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_65_Out
  self[69] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[69]
  l0._graph = self
  l0.Loaded = self.f_69_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[22] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[22]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = self.f_22_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_22_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[19] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[19]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = self.f_19_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_19_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[11] = cbox:CreateBox("domino/System/PlayerProximityMonitor.lua")
  l0 = self[11]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnterRadius = self.f_11_EnterRadius
  l0.ExitRadius = self.f_11_ExitRadius
  l0.RCEnterRadius = DummyFunction
  l0.RCExitRadius = DummyFunction
  self[50] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[50]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_50_OnUserInPlace
  self[14] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[14]
  l0._graph = self
  l0.Out = self.f_14_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[38] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[38]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_38_Out
  self[57] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[57]
  l0._graph = self
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_57_DisplayRequested
  l0.NotificationHidden = self.f_57_NotificationHidden
  l0.MessageCompleted = DummyFunction
  self[54] = cbox:CreateBox("domino/System/AISquadStateController.lua")
  l0 = self[54]
  l0._graph = self
  l0.WanderSet = DummyFunction
  l0.AwareSet = DummyFunction
  l0.UntargetedSearchSet = DummyFunction
  l0.TargetedSearchSet = self.f_54_TargetedSearchSet
  l0.CombatSet = DummyFunction
  l0.VanishSet = DummyFunction
  l0.SearchOverrideParamsSet = DummyFunction
  l0.SearchOverrideParamsReset = DummyFunction
  l0.SquadBhvParamsSet = DummyFunction
  l0.SquadBhvParamsCleared = DummyFunction
  l0.SquadRemoved = DummyFunction
  self[71] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[71]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_71_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[62] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[62]
  l0._graph = self
  l0.StartCommunicationOut = self.f_62_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_62_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[82] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[82]
  l0._graph = self
  l0.StartCommunicationOut = self.f_82_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[70] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[70]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[75] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[75]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_75_PostOut
  self[52] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[52]
  l0._graph = self
  l0.Loaded = self.f_52_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[4] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[4]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_4_Out
  self[42] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[42]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_42_Out
  self[73] = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self[73]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_73_TeleportDone
  self[83] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[83]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[15] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[15]
  l0._graph = self
  l0.Out = self.f_15_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[66] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[66]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_66_Out
  l0.ResetOut = DummyFunction
  self[77] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[77]
  l0._graph = self
  l0.PreOut = self.f_77_PreOut
  l0.PostOut = DummyFunction
  self[5] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[5]
  l0._graph = self
  self[56] = cbox:CreateBox("domino/System/AISquadStateMonitor.lua")
  l0 = self[56]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ArrestState = self.f_56_ArrestState
  l0.ArrestStateAnyTarget = DummyFunction
  l0.CombatState = self.f_56_CombatState
  l0.CombatStateAnyTarget = DummyFunction
  l0.SearchState = self.f_56_SearchState
  l0.SearchStateAnyTarget = DummyFunction
  l0.VanishState = self.f_56_VanishState
  l0.None = self.f_56_None
  self[81] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[81]
  l0._graph = self
  l0.Out = self.f_81_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[78] = cbox:CreateBox("domino/System/ReinforcementSystemMonitor_v2.lua")
  l0 = self[78]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_78_Disabled
  l0.None = self.f_78_None
  l0.Reinforcing = self.f_78_Reinforcing
  l0.CallingNextWave = DummyFunction
  l0.CallingNextWaveSucceeded = DummyFunction
  l0.ReachedWaveChangeThreshold = DummyFunction
  l0.WaveChanged = DummyFunction
  l0.EntitySpawned = DummyFunction
  l0.Finished = DummyFunction
  self[46] = cbox:CreateBox("domino/System/TimerToScreen.lua")
  l0 = self[46]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Stopped = self.f_46_Stopped
  l0.Restarted = DummyFunction
  l0.GotTime = DummyFunction
  l0.TimeElapsed = self.f_46_TimeElapsed
  self[26] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[26]
  l0._graph = self
  l0.Out = self.f_26_Out
  l0.SetTrue = self.f_26_SetTrue
  l0.SetFalse = self.f_26_SetFalse
  l0.Toggled = self.f_26_Toggled
  l0.SetFromBool = self.f_26_SetFromBool
  self[49] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[49]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_49_Skipped
  l0.Finished = self.f_49_Finished
  self[10] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[10]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_10_Out
  self[36] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[36]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_36_Out
  self[89] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[89]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_89_Out
  self[3] = cbox:CreateBox("domino/System/VehicleMonitor_v3.lua")
  l0 = self[3]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_3_Disabled
  l0.Enter = DummyFunction
  l0.Entered = self.f_3_Entered
  l0.PassangerEntered = DummyFunction
  l0.Leave = DummyFunction
  l0.Exiting = self.f_3_Exiting
  l0.ChangeSeat = DummyFunction
  l0.BailedOut = DummyFunction
  l0.IsPawnHiding = DummyFunction
  l0.PawnIsNotHiding = DummyFunction
  l0.StateChange = DummyFunction
  l0.TakenDamage = DummyFunction
  l0.IsUnusable = self.f_3_IsUnusable
  l0.IsUnderwater = self.f_3_IsUnderwater
  l0.NoMoveTimer = DummyFunction
  l0.OnMoveTimer = DummyFunction
  l0.IsSlowEnoughToExit = DummyFunction
  l0.VehicleJump = DummyFunction
  l0.VehicleLanding = DummyFunction
  l0.BollardTakedown = DummyFunction
  l0.SteamPipeTakedown = DummyFunction
  l0.TrafficLightTakedown = DummyFunction
  l0.FullTakedown = self.f_3_FullTakedown
  l0.PartialTakedown = DummyFunction
  l0.NitroUsed = DummyFunction
  l0.NitroStopped = DummyFunction
  l0.IsFlipped = DummyFunction
  l0.IsUnFlipped = DummyFunction
  l0.Unloaded = DummyFunction
  self[64] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[64]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_64_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[17] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[17]
  l0._graph = self
  l0.Out = self.f_17_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[44] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[44]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_44_Out
  l0.ResetOut = DummyFunction
  self[43] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[43]
  l0._graph = self
  l0.Out = self.f_43_Out
  l0.MessageCompleted = DummyFunction
  self[91] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[91]
  l0._graph = self
  l0.Out = self.f_91_Out
  l0.MessageCompleted = DummyFunction
  self[79] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[79]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_79_Out
  self[31] = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self[31]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_31_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self[7] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[7]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_7_Out
  self[13] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[13]
  l0._graph = self
  l0.Out = self.f_13_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[74] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[74]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_74_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[80] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[80]
  l0._graph = self
  self[29] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[29]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_29_Out
  self[85] = cbox:CreateBox("domino/Library/common/MissionIngredients.Download_Gameplay.lua")
  l0 = self[85]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_85_Stopped
  l0.DownloadCompleted = self.f_85_DownloadCompleted
  l0.Ratio1Reached = DummyFunction
  l0.Ratio1Reached_PostReset = DummyFunction
  l0.Ratio2Reached = self.f_85_Ratio2Reached
  l0.Ratio2Reached_PostReset = self.f_85_Ratio2Reached_PostReset
  l0.CustomRatioReached = self.f_85_CustomRatioReached
  l0.CustomRatioReached_PostReset = self.f_85_CustomRatioReached_PostReset
  l0.PauseRatioReached = self.f_85_PauseRatioReached
  l0.PauseRatioReached_PostReset = self.f_85_PauseRatioReached_PostReset
  self[72] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[72]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_72_PostOut
  self[24] = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.lua")
  l0 = self[24]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.SoftQuitCompleted = DummyFunction
  self[67] = cbox:CreateBox("domino/Library/common/MissionIngredients.Locate_Gameplay.lua")
  l0 = self[67]
  l0._graph = self
  l0.Started = self.f_67_Started
  l0.Stopped = DummyFunction
  l0.Located = self.f_67_Located
  self[32] = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self[32]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_32_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self[34] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[34]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_34_Out
  self[55] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[55]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_55_Out
  self[63] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[63]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_63_Started
  l0.Stopped = self.f_63_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_63_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[40] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[40]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_40_Out
  self[48] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[48]
  l0._graph = self
  l0.StartCommunicationOut = self.f_48_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[61] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[61]
  l0._graph = self
  l0.Out = self.f_61_Out
  l0.MessageCompleted = DummyFunction
  self[76] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[76]
  l0._graph = self
  l0.StartCommunicationOut = self.f_76_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[47] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[47]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_47_OnUserInPlace
  self[53] = cbox:CreateBox("domino/Library/common/MissionIngredients.Mission_End.lua")
  l0 = self[53]
  l0._graph = self
  self[87] = cbox:CreateBox("domino/Library/common/MissionIngredients.Escape_Gameplay.lua")
  l0 = self[87]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Escaped = self.f_87_Escaped
  l0.LeftArea = DummyFunction
  self[39] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[39]
  l0._graph = self
  l0.Out = self.f_39_Out
  l0.SetTrue = self.f_39_SetTrue
  l0.SetFalse = self.f_39_SetFalse
  l0.Toggled = self.f_39_Toggled
  l0.SetFromBool = self.f_39_SetFromBool
  self[9] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[9]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_9_Out
  self[37] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[37]
  l0._graph = self
  l0.Out = self.f_37_Out
  l0.SetTrue = self.f_37_SetTrue
  l0.SetFalse = self.f_37_SetFalse
  l0.Toggled = self.f_37_Toggled
  l0.SetFromBool = self.f_37_SetFromBool
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
  l0 = self[69]
  l0.LayerName = "S10M010_Main"
  l0:Load()
end
function export:CheckPoint_1()
  local l0
  self:en_53()
  l0 = self[53]
  l0:FromCheckpoint()
end
function export:CheckPoint_Replay()
  local l0
  l0 = self[79]
  l0:Input(1)
end
function export:In()
  local l0
  l0 = self[79]
  l0:Input(0)
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = self[72]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_65_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_59_Out_0
  l0.Out[1] = self.f_59_Out_1
  l0:In()
end
function export:f_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_90_Hidden
  l0:Hide()
end
function export:f_69_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_51_Out
  l0:In()
end
function export:f_60_Out_0()
  local l0
  self = self._graph
  l0 = self[65]
  l0:Input(1)
end
function export:f_60_Out_1()
  local l0
  self = self._graph
  self:en_85()
  l0 = self[85]
  l0:Stop()
end
function export:f_22_Stopped()
  local l0
  self = self._graph
  l0 = self[9]
  l0:Input(0)
end
function export:f_22_TimeElapsed()
  local l0
  self = self._graph
  self:en_22()
  l0 = self[22]
  l0:Stop()
end
function export:f_6_Out()
  local l0
  self = self._graph
  l0 = self[32]
  l0.PGTMissionArea = "9223372070789975380"
  l0:Start()
end
function export:f_19_Stopped()
  local l0
  self = self._graph
  l0 = self[17]
  l0.SoundId = "soundbinary/1465087397.bnk"
  l0:Play()
end
function export:f_19_TimeElapsed()
  local l0
  self = self._graph
  self:en_19()
  l0 = self[19]
  l0:Stop()
end
function export:f_11_EnterRadius()
  local l0
  self = self._graph
  self:en_57()
  l0 = self[57]
  l0:HideNotification()
end
function export:f_11_ExitRadius()
  local l0
  self = self._graph
  self:en_57()
  l0 = self[57]
  l0:Display()
end
function export:f_50_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[50]
  self.SpyingVan = l0.UserID
  l0 = self[75]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_14_Out()
  local l0
  self = self._graph
  l0 = self[83]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372055560432459"
  l0:StartCommunication()
end
function export:f_38_Out()
  local l0
  self = self._graph
  self:en_63()
  l0 = self[63]
  l0:Start()
end
function export:f_57_DisplayRequested()
  local l0
  self = self._graph
  self:en_46()
  l0 = self[46]
  l0:Start()
end
function export:f_57_NotificationHidden()
  local l0
  self = self._graph
  self:en_46()
  l0 = self[46]
  l0:Stop()
end
function export:f_54_TargetedSearchSet()
  local l0
  self = self._graph
  l0 = self[26]
  l0.Bool = self.FelonySearchReached
  l0:True()
end
function export:f_71_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[80]
  l0.EndReason = {
    section = "MISSIONS.COMMON.MESSAGES.MISSIONWARNING",
    item = "ExitingDownloadArea",
    id = "626756"
  }
  l0:Fail()
end
function export:f_62_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[64]
  l0.SoundId = "soundbinary/720989137.bnk"
  l0:Start()
end
function export:f_62_StartCommunicationOut()
  local l0
  self = self._graph
  l0 = self[36]
  l0:Input(0)
end
function export:f_35_Out_0()
  local l0
  self = self._graph
  l0 = self[29]
  l0:Input(0)
end
function export:f_35_Out_1()
  local l0
  self = self._graph
  l0 = self[36]
  l0:Input(1)
end
function export:f_82_StartCommunicationOut()
  local l0
  self = self._graph
  l0 = self[87]
  l0.Entity = self.SpyingVan
  l0.Entity_AreaRadius = 80
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Escape",
    id = "267211"
  }
  l0.EscapeFelonyLocID = {
    section = "MISSIONS.COMMON.MESSAGES.OBJECTIVE",
    item = "Objective_Escape",
    id = "693233"
  }
  l0:Start()
end
function export:f_75_PostOut()
  local l0
  self = self._graph
  l0 = self[89]
  l0:Input(1)
end
function export:f_58_Shown()
  local l0
  self = self._graph
  l0 = self[89]
  l0:Input(0)
end
function export:f_52_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_2_Out
  l0:In()
end
function export:f_4_Out()
  local l0
  self = self._graph
  l0 = self[55]
  l0:Input(0)
end
function export:f_42_Out()
  local l0
  self = self._graph
  self:en_11()
  l0 = self[11]
  l0:Disable()
end
function export:f_73_TeleportDone()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372062800194176"
  l0.NPC = nil
  l0._graph = self
  l0.Out = self.f_94_Out
  l0:Enable()
end
function export:f_15_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372068135428113"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = 30
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_18_Deactivated
  l0:Deactivate()
end
function export:f_33_A_is_False()
  local l0
  self = self._graph
  l0 = self[34]
  l0:Input(1)
end
function export:f_33_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_35_Out_0
  l0.Out[1] = self.f_35_Out_1
  l0:In()
end
function export:f_66_Out()
  local l0
  self = self._graph
  l0 = self[74]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372055560432455"
  l0:StartCommunication()
end
function export:f_77_PreOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  l0.TargetZone = "9223372068380307336"
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
  l0.Out = self.f_20_Out
  l0:CleanZone()
end
function export:f_56_ArrestState()
  local l0
  self = self._graph
  l0 = self[4]
  l0:Input(0)
end
function export:f_56_CombatState()
  local l0
  self = self._graph
  l0 = self[4]
  l0:Input(1)
end
function export:f_56_None()
  local l0
  self = self._graph
  l0 = self[7]
  l0:Input(1)
end
function export:f_56_SearchState()
  local l0
  self = self._graph
  l0 = self[4]
  l0:Input(2)
end
function export:f_56_VanishState()
  local l0
  self = self._graph
  l0 = self[7]
  l0:Input(0)
end
function export:f_59_Out_0()
  local l0
  self = self._graph
  self:en_24()
  l0 = self[24]
  l0:Disable()
end
function export:f_59_Out_1()
  local l0
  self = self._graph
  l0 = self[42]
  l0:Input(0)
end
function export:f_81_Out()
  local l0
  self = self._graph
  l0 = self[61]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S10.S10M010.Objectives.Objective005",
    item = "Objective",
    id = "689595"
  }
  l0:ShowNewObjective()
end
function export:f_78_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.FelonySearchReached
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_45_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_78_None()
  local l0
  self = self._graph
  self:en_68()
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  l0:StartReinforcing()
end
function export:f_78_Reinforcing()
  local l0
  self = self._graph
  self:en_78()
  l0 = self[78]
  l0:Disable()
end
function export:f_46_Stopped()
  local l0
  self = self._graph
  self:en_71()
  l0 = self[71]
  l0:Stop()
end
function export:f_46_TimeElapsed()
  local l0
  self = self._graph
  self:en_71()
  l0 = self[71]
  l0:Start()
end
function export:f_26_Out()
  local l0
  self = self._graph
  l0 = self[26]
  self.FelonySearchReached = l0.Target
end
function export:f_26_SetFalse()
  local l0
  self = self._graph
  l0 = self[26]
  self.FelonySearchReached = l0.Target
end
function export:f_26_SetFromBool()
  local l0
  self = self._graph
  l0 = self[26]
  self.FelonySearchReached = l0.Target
end
function export:f_26_SetTrue()
  local l0
  self = self._graph
  l0 = self[26]
  self.FelonySearchReached = l0.Target
  l0 = self[55]
  l0:Input(1)
end
function export:f_26_Toggled()
  local l0
  self = self._graph
  l0 = self[26]
  self.FelonySearchReached = l0.Target
end
function export:f_49_Finished()
  local l0
  self = self._graph
  l0 = self[44]
  l0:In(1)
end
function export:f_49_Skipped()
  local l0
  self = self._graph
  l0 = self[44]
  l0:In(0)
end
function export:f_10_Out()
  local l0
  self = self._graph
  self:en_22()
  l0 = self[22]
  l0:Start()
end
function export:f_36_Out()
  local l0
  self = self._graph
  self:en_19()
  l0 = self[19]
  l0:Start()
end
function export:f_89_Out()
  local l0
  self = self._graph
  l0 = self[81]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_21_Out_0()
  local l0
  self = self._graph
  l0 = self[42]
  l0:Input(1)
end
function export:f_21_Out_1()
  local l0
  self = self._graph
  l0 = self[43]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S10.S10M010.Objectives.Objective020",
    item = "Objective",
    id = "355774"
  }
  l0:ShowNewObjective()
end
function export:f_3_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_60_Out_0
  l0.Out[1] = self.f_60_Out_1
  l0:In()
end
function export:f_3_Entered()
  local l0
  self = self._graph
  l0 = self[65]
  l0:Input(0)
end
function export:f_3_Exiting()
  local l0
  self = self._graph
  self:en_11()
  l0 = self[11]
  l0:Enable()
end
function export:f_3_FullTakedown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_23_Out
  l0:In()
end
function export:f_3_IsUnderwater()
  local l0
  self = self._graph
  l0 = self[10]
  l0:Input(1)
end
function export:f_3_IsUnusable()
  local l0
  self = self._graph
  l0 = self[10]
  l0:Input(0)
end
function export:f_51_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372062800194176"
  l0.NPC = nil
  l0._graph = self
  l0.Out = self.f_93_Out
  l0:Enable()
end
function export:f_30_Out()
  local l0
  self = self._graph
  self:en_24()
  l0 = self[24]
  l0:Enable()
end
function export:f_64_Finished()
  local l0
  self = self._graph
  l0 = self[29]
  l0:Input(1)
end
function export:f_17_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372068135428113"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0:Activate()
end
function export:f_44_Out()
  local l0
  self = self._graph
  l0 = self[73]
  l0.SpawnPoint = "9223372046778389044"
  l0.KeepBlackScreenOnExit = 1
  l0:In()
end
function export:f_43_Out()
  local l0
  self = self._graph
  l0 = self[82]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372055560432462"
  l0:StartCommunication()
end
function export:f_91_Out()
  local l0
  self = self._graph
  self:en_85()
  l0 = self[85]
  l0:Start()
end
function export:f_79_Out()
  local l0
  self = self._graph
  l0 = self[52]
  l0.LayerName = "S10M010_Main"
  l0:Load()
end
function export:f_31_AllSpawned()
  local l0
  self = self._graph
  l0 = self[47]
  l0.CLO = "9223372046791239266"
  l0.SpawnOutsideLoadingRing = 1
  l0:Activate()
end
function export:f_25_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_30_Out
  l0:In()
end
function export:f_25_Out_1()
  local l0
  self = self._graph
  l0 = self[67]
  l0.EntityToLocate = self.SpyingVan
  l0.MissionArea = "9223372062742955225"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0:Start()
end
function export:f_7_Out()
  local l0
  self = self._graph
  l0 = self[54]
  l0.Position = self.SpyingVan
  l0.Affiliation = "AFI"
  l0.IsThreat = 1
  l0.DispatchCallId = "COMS_Dispatch_HackDetected"
  l0.SearchOverrideParamTimeout = 120
  l0:SetInTargetedSearch()
end
function export:f_13_Out()
  local l0
  self = self._graph
  l0 = self[70]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372055560432457"
  l0:StartCommunication()
end
function export:f_68_ReinforcingStarted()
  local l0
  self = self._graph
  self:en_56()
  l0 = self[56]
  l0:Enable()
end
function export:f_68_ReinforcingStopped()
  local l0
  self = self._graph
  l0 = self[15]
  l0.SoundId = "soundbinary/81442961.bnk"
  l0:Play()
end
function export:f_94_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  l0.TargetZone = "9223372063493044668"
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
  l0.Out = self.f_1_Out
  l0:CleanZone()
end
function export:f_93_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  l0.TargetZone = "9223372063493044668"
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
  l0.Out = self.f_6_Out
  l0:CleanZone()
end
function export:f_12_A_is_False()
  local l0
  self = self._graph
  l0 = self[38]
  l0:Input(1)
end
function export:f_74_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[62]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372055560432456"
  l0:StartCommunication()
end
function export:f_29_Out()
  local l0
  self = self._graph
  self:en_78()
  l0 = self[78]
  l0:Enable()
end
function export:f_85_CustomRatioReached()
  local l0
  self = self._graph
  l0 = self[34]
  l0:Input(0)
end
function export:f_85_CustomRatioReached_PostReset()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.FelonySearchReached
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_33_A_is_True
  l0.A_is_False = self.f_33_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_85_DownloadCompleted()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:Disable()
end
function export:f_85_PauseRatioReached()
  local l0
  self = self._graph
  l0 = self[38]
  l0:Input(0)
end
function export:f_85_PauseRatioReached_PostReset()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.PauseReached
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_12_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_85_Ratio2Reached()
  local l0
  self = self._graph
  l0 = self[40]
  l0:Input(0)
end
function export:f_85_Ratio2Reached_PostReset()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self._60percentDLReached
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_28_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_85_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_21_Out_0
  l0.Out[1] = self.f_21_Out_1
  l0:In()
end
function export:f_72_PostOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Shown = self.f_58_Shown
  l0.Hidden = DummyFunction
  l0:Show()
end
function export:f_67_Located()
  local l0
  self = self._graph
  l0 = self[76]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048237295726"
  l0:StartCommunication()
end
function export:f_67_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_41_Out
  l0:In()
end
function export:f_32_AllSpawned()
  local l0
  self = self._graph
  l0 = self[50]
  l0.CLO = "9223372046791239266"
  l0.SpawnOutsideLoadingRing = 1
  l0:Activate()
end
function export:f_28_A_is_False()
  local l0
  self = self._graph
  l0 = self[40]
  l0:Input(1)
end
function export:f_34_Out()
  local l0
  self = self._graph
  l0 = self[66]
  l0:In(0)
end
function export:f_20_Out()
  local l0
  self = self._graph
  l0 = self[49]
  l0.SceneEntity = "9223372047235831007"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S10/S10_Karaoke_CIN/s10_karaoke_cin.seq"
  l0:Start()
end
function export:f_55_Out()
  local l0
  self = self._graph
  self:en_56()
  l0 = self[56]
  l0:Disable()
end
function export:f_45_A_is_True()
  local l0
  self = self._graph
  l0 = self[7]
  l0:Input(2)
end
function export:f_41_Out()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:Enable()
end
function export:f_63_Started()
  local l0
  self = self._graph
  l0 = self[37]
  l0.Bool = self.PauseReached
  l0:True()
end
function export:f_63_Stopped()
  local l0
  self = self._graph
  l0 = self[14]
  l0.SoundId = "soundbinary/2679354804.bnk"
  l0:Play()
end
function export:f_63_TimeElapsed()
  local l0
  self = self._graph
  self:en_63()
  l0 = self[63]
  l0:Stop()
end
function export:f_40_Out()
  local l0
  self = self._graph
  l0 = self[48]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372055560432461"
  l0:StartCommunication()
end
function export:f_18_Deactivated()
  local l0
  self = self._graph
  self:en_53()
  l0 = self[53]
  l0:End()
end
function export:f_48_StartCommunicationOut()
  local l0
  self = self._graph
  l0 = self[39]
  l0.Bool = self._60percentDLReached
  l0:True()
end
function export:f_61_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_25_Out_0
  l0.Out[1] = self.f_25_Out_1
  l0:In()
end
function export:f_76_StartCommunicationOut()
  local l0
  self = self._graph
  l0 = self[91]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S10.S10M010.Objectives.Objective010",
    item = "Objective",
    id = "355773"
  }
  l0.ObjectiveSub1 = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Download",
    id = "189898"
  }
  l0:ShowNewObjective()
end
function export:f_47_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[47]
  self.SpyingVan = l0.UserID
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  l0.Hour = 0
  l0.Minute = 30
  l0._graph = self
  l0.Out = self.f_8_Out
  l0:SetTimeOfDay()
end
function export:f_90_Hidden()
  local l0
  self = self._graph
  l0 = self[77]
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:f_27_Out()
  local l0
  self = self._graph
  l0 = self[9]
  l0:Input(1)
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = self[31]
  l0.PGTMissionArea = "9223372070789975380"
  l0:Start()
end
function export:f_87_Escaped()
  local l0
  self = self._graph
  self:en_68()
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  l0:StopReinforcing()
end
function export:f_23_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_27_Out
  l0:In()
end
function export:f_39_Out()
  local l0
  self = self._graph
  l0 = self[39]
  self._60percentDLReached = l0.Target
end
function export:f_39_SetFalse()
  local l0
  self = self._graph
  l0 = self[39]
  self._60percentDLReached = l0.Target
end
function export:f_39_SetFromBool()
  local l0
  self = self._graph
  l0 = self[39]
  self._60percentDLReached = l0.Target
end
function export:f_39_SetTrue()
  local l0
  self = self._graph
  l0 = self[39]
  self._60percentDLReached = l0.Target
end
function export:f_39_Toggled()
  local l0
  self = self._graph
  l0 = self[39]
  self._60percentDLReached = l0.Target
end
function export:f_9_Out()
  local l0
  self = self._graph
  l0 = self[5]
  l0.EndReason = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S15.S15M010",
    item = "MissionFail",
    id = "693187"
  }
  l0:Fail()
end
function export:f_37_Out()
  local l0
  self = self._graph
  l0 = self[37]
  self.PauseReached = l0.Target
end
function export:f_37_SetFalse()
  local l0
  self = self._graph
  l0 = self[37]
  self.PauseReached = l0.Target
end
function export:f_37_SetFromBool()
  local l0
  self = self._graph
  l0 = self[37]
  self.PauseReached = l0.Target
end
function export:f_37_SetTrue()
  local l0
  self = self._graph
  l0 = self[37]
  self.PauseReached = l0.Target
  l0 = self[13]
  l0.SoundId = "soundbinary/2834973317.bnk"
  l0:Play()
end
function export:f_37_Toggled()
  local l0
  self = self._graph
  l0 = self[37]
  self.PauseReached = l0.Target
end
function export:en_22()
  local l0
  l0 = self[22]
  l0.Seconds = 1
end
function export:en_19()
  local l0
  l0 = self[19]
  l0.Seconds = 10
end
function export:en_11()
  local l0
  l0 = self[11]
  l0.TargetEntity = self.SpyingVan
  l0.Radius = 50
  l0.MonitorConnectedJumper = 0
  l0.MonitorConnectedDrone = 0
end
function export:en_57()
  local l0
  l0 = self[57]
  l0.Notification = {
    section = "MISSIONS.COMMON.MESSAGES.MISSIONWARNING",
    item = "ExitingDownloadArea",
    id = "626756"
  }
  l0.Duration = 16
end
function export:en_71()
  local l0
  l0 = self[71]
  l0.Seconds = 0.5
end
function export:en_56()
  local l0
  l0 = self[56]
  l0.Affiliation = "AFI"
  l0.CheckStateNow = 1
end
function export:en_78()
  local l0
  l0 = self[78]
  l0.Affiliation = "AFI"
  l0.CheckNow = 1
end
function export:en_46()
  local l0
  l0 = self[46]
  l0.Seconds = 15
end
function export:en_3()
  local l0
  l0 = self[3]
  l0.Vehicle = self.SpyingVan
end
function export:en_68()
  local l0
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  l0.Target = nil
  l0.Affiliation = "AFI"
  l0.ReinforcementConfig = "ReinforcementConfig.9223372043023253486"
  l0.AgentList = nil
  l0.Center = nil
  l0.UnspawnOnStop = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.ReinforcingStarted = self.f_68_ReinforcingStarted
  l0.ReinforcingStopped = self.f_68_ReinforcingStopped
  l0.ReinforcementLocationFixed = DummyFunction
  l0.ReinforcementLocationReleased = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
end
function export:en_85()
  local l0
  l0 = self[85]
  l0.TargetEntity = self.SpyingVan
  l0.LinkedObjective = "ObjectiveSub1"
  l0.Duration = 120
  l0.DownloadRadiusPreset = "Vehicle"
  l0.OverridedRadius = 19
  l0.DownloadingText = {
    section = "HACKING.Interface Messages",
    item = "RetrievingData",
    id = "132264"
  }
  l0.DownloadingPausedText = {
    section = "HACKING.Interface Messages",
    item = "ConnectionLost",
    id = "5905"
  }
  l0.CustomRatio = 0.01
  l0.DetectionOnCustomRatio = 0
  l0.DownloadPauseRatio = 0.5
  l0.DownloadPauseDuration = 20
  l0.FleeOnDownloadDetected = 1
  l0.AutoDetectDownload = 1
end
function export:en_24()
  local l0
  l0 = self[24]
  l0.MissionArea = "9223372058266851987"
  l0.MissionLayer = "S10M010_Main"
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
end
function export:en_63()
  local l0
  l0 = self[63]
  l0.Seconds = 17
end
function export:en_53()
  local l0
  l0 = self[53]
  l0.Checkpoint = "CheckPoint_1"
  l0.MissionLayer = "S10M010_Main"
  l0.ShowMissionComplete = 1
end
_compilerVersion = 4
