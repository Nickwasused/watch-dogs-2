export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AIAgentZoneController.lua")
  cbox:RegisterBox("domino/System/BreakableEntityMonitor_v2.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/CLOMonitor.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/System/ConsoleCommand_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Escape_Gameplay.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/IntelController.lua")
  cbox:RegisterBox("domino/System/LaneRestrictionsControl.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/MapPointController_v4.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Mission_End.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MissionMonitor.lua")
  cbox:RegisterBox("domino/System/MissionMusicController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.MissionZone.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/ParticleFxController_v2.lua")
  cbox:RegisterBox("domino/System/PGTController_v2.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S14/S14M070/s14_m070_cin_snipers.S14_M070_CIN_Snipers_Main.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S14/S14M070/s14m070_scr.S14M070_SCR_Main.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/ShowOrHideAllUI.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/StopMusic.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:LoadResource("soundbinary/4128667699.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = "9223372047128032495"
  self.VotingMachines = {}
  self.BreakableObjective = nil
  self.IsCheckPoint_1 = 0
  self.Objectives_LocatedORDestroyed = 0
  self.HACK_DebugAnnotions_VotingMachines = {}
  self.VotingMachines_1stF_INT = {}
  self.VotingMachines_1stF_Courtyard = {}
  self.BrokenEntity01 = nil
  self.BrokenEntity02 = nil
  self.VotingMachines_3rdF_BaySide = {}
  self.BrokenEntity03 = nil
  self.VotingMachines_3rdF_BridgeSide = {}
  self.BrokenEntity04 = nil
  self.Convo_Guard01 = nil
  self.Convo_Guard02 = nil
  self.Josh = nil
  self.ExplosionParticles_3rdF_BridgeSide = {}
  self.ExplosionParticles_3rdF_BaySide = {}
  self[135] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[135]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_135_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[98] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[98]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_98_PostOut
  self[97] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[97]
  l0._graph = self
  l0.PreOut = self.f_97_PreOut
  l0.PostOut = DummyFunction
  self[59] = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self[59]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_59_Disabled
  self[32] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[32]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_32_Out
  self[51] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[51]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_51_Skipped
  l0.Finished = self.f_51_Finished
  self[22] = cbox:CreateBox("domino/System/BreakableEntityMonitor_v2.lua")
  l0 = self[22]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_22_Disabled
  l0.Breaking = self.f_22_Breaking
  l0.AllBroken = self.f_22_AllBroken
  self[78] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S14/S14M070/s14_m070_cin_snipers.S14_M070_CIN_Snipers_Main.lua")
  l0 = self[78]
  l0._graph = self
  l0.Out = self.f_78_Out
  self[33] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[33]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_33_PostOut
  self[70] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[70]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_70_Out
  self[15] = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self[15]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_15_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self[2] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Loaded = self.f_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[52] = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self[52]
  l0._graph = self
  l0.Enabled = self.f_52_Enabled
  l0.Disabled = DummyFunction
  self[161] = cbox:CreateBox("domino/System/MissionMonitor.lua")
  l0 = self[161]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Tracked = DummyFunction
  l0.NotTracked = DummyFunction
  l0.Completed = DummyFunction
  l0.NotCompleted = DummyFunction
  l0.OnMissionSucceeded = DummyFunction
  l0.OnMissionFailed = self.f_161_OnMissionFailed
  l0.OnMissionAborted = DummyFunction
  self[83] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[83]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = DummyFunction
  self[18] = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self[18]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_18_Disabled
  self[16] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[16]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_16_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[12] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[12]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = self.f_12_OnCommunicationStarted
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[112] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[112]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_112_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[27] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[27]
  l0._graph = self
  l0.Out = self.f_27_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[133] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[133]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = DummyFunction
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = self.f_133_HackContextual
  l0.AllHacked = DummyFunction
  self[21] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[21]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 4}
  l0.Out = self.f_21_Out
  self[79] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[79]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = self.f_79_OnCommunicationStarted
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[116] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[116]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_116_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[117] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[117]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_117_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[8] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[8]
  l0._graph = self
  l0.Out = self.f_8_Out
  l0.MessageCompleted = DummyFunction
  self[54] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[54]
  l0._graph = self
  l0._DynamicAnchors = {Data = 5}
  l0.Added = self.f_54_Added
  l0.Removed = self.f_54_Removed
  l0.Out = self.f_54_Out
  self[99] = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self[99]
  l0._graph = self
  l0.Shown = self.f_99_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[131] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[131]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_131_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[23] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[23]
  l0._graph = self
  l0._DynamicAnchors = {Data = 5}
  l0.Added = self.f_23_Added
  l0.Removed = self.f_23_Removed
  l0.Out = self.f_23_Out
  self[26] = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self[26]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  self[3] = cbox:CreateBox("domino/Library/common/MissionIngredients.Mission_End.lua")
  l0 = self[3]
  l0._graph = self
  self[82] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S14/S14M070/s14m070_scr.S14M070_SCR_Main.lua")
  l0 = self[82]
  l0._graph = self
  l0.Out_Debug_Annotations = self.f_82_Out_Debug_Annotations
  self[38] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[38]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_38_Out
  self[65] = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self[65]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  self[162] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[162]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_162_Out
  l0.ResetOut = DummyFunction
  self[58] = cbox:CreateBox("domino/System/BreakableEntityMonitor_v2.lua")
  l0 = self[58]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_58_Disabled
  l0.Breaking = self.f_58_Breaking
  l0.AllBroken = self.f_58_AllBroken
  self[157] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[157]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[39] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S14/S14M070/s14m070_scr.S14M070_SCR_Main.lua")
  l0 = self[39]
  l0._graph = self
  l0.Out_Debug_Annotations = self.f_39_Out_Debug_Annotations
  self[25] = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self[25]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_25_Disabled
  self[46] = cbox:CreateBox("domino/System/BreakableEntityMonitor_v2.lua")
  l0 = self[46]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_46_Disabled
  l0.Breaking = self.f_46_Breaking
  l0.AllBroken = self.f_46_AllBroken
  self[75] = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self[75]
  l0._graph = self
  l0.Enabled = self.f_75_Enabled
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_75_GotUser
  l0.NotGotUser = self.f_75_NotGotUser
  l0.OnUserInPlace = self.f_75_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self[80] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[80]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_80_PostOut
  self[10] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[10]
  l0._graph = self
  l0._DynamicAnchors = {Data = 4}
  l0.Added = self.f_10_Added
  l0.Removed = self.f_10_Removed
  l0.Out = self.f_10_Out
  self[81] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[81]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_81_Out
  self[48] = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self[48]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_48_Disabled
  self[45] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[45]
  l0._graph = self
  l0._DynamicAnchors = {Data = 5}
  l0.Added = self.f_45_Added
  l0.Removed = self.f_45_Removed
  l0.Out = self.f_45_Out
  self[141] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[141]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_141_Out
  l0.ResetOut = DummyFunction
  self[62] = cbox:CreateBox("domino/System/ConsoleCommand_v2.lua")
  l0 = self[62]
  l0._graph = self
  l0.Enabled = self.f_62_Enabled
  l0.Disabled = DummyFunction
  l0.Executed = self.f_62_Executed
  self[110] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[110]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_110_Out
  l0.ResetOut = DummyFunction
  self[57] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[57]
  l0._graph = self
  l0.Out = self.f_57_Out
  l0.MessageCompleted = DummyFunction
  self[68] = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self[68]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = self.f_68_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[30] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[30]
  l0._graph = self
  l0._DynamicAnchors = {Input = 4}
  l0.Out = self.f_30_Out
  self[11] = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.lua")
  l0 = self[11]
  l0._graph = self
  l0.Enabled = self.f_11_Enabled
  l0.Disabled = DummyFunction
  l0.SoftQuitCompleted = DummyFunction
  self[53] = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self[53]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = self.f_53_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[76] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[76]
  l0._graph = self
  l0.Out = self.f_76_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[49] = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self[49]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  self[67] = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self[67]
  l0._graph = self
  l0.Enabled = self.f_67_Enabled
  l0.Disabled = DummyFunction
  self[139] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[139]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_139_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[129] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[129]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_129_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[19] = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self[19]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = self.f_19_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[104] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[104]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_104_Out
  l0.ResetOut = DummyFunction
  self[92] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[92]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[17] = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self[17]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  self[20] = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self[20]
  l0._graph = self
  l0.Enabled = self.f_20_Enabled
  l0.Disabled = DummyFunction
  self[66] = cbox:CreateBox("domino/System/ConsoleCommand_v2.lua")
  l0 = self[66]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Executed = self.f_66_Executed
  self[155] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[155]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_155_Out
  l0.ResetOut = DummyFunction
  self[108] = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self[108]
  l0._graph = self
  l0.Shown = self.f_108_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[28] = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self[28]
  l0._graph = self
  l0.Enabled = self.f_28_Enabled
  l0.Disabled = DummyFunction
  self[100] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[100]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_100_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[24] = cbox:CreateBox("domino/System/BreakableEntityMonitor_v2.lua")
  l0 = self[24]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_24_Disabled
  l0.Breaking = self.f_24_Breaking
  l0.AllBroken = self.f_24_AllBroken
  self[43] = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self[43]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = self.f_43_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[5] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[5]
  l0._graph = self
  l0.Out = self.f_5_Out
  l0.MessageCompleted = DummyFunction
  self[36] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[36]
  l0._graph = self
  l0.Out = self.f_36_Out
  l0.SetTrue = self.f_36_SetTrue
  l0.SetFalse = self.f_36_SetFalse
  l0.Toggled = self.f_36_Toggled
  l0.SetFromBool = self.f_36_SetFromBool
  self[50] = cbox:CreateBox("domino/Library/common/MissionIngredients.Escape_Gameplay.lua")
  l0 = self[50]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Escaped = self.f_50_Escaped
  l0.LeftArea = DummyFunction
  self[29] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[29]
  l0._graph = self
  l0.Out = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[142] = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self[142]
  l0._graph = self
  l0.Shown = self.f_142_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[4] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[4]
  l0._graph = self
  l0.Loaded = self.f_4_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[128] = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self[128]
  l0._graph = self
  l0.Shown = self.f_128_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[77] = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self[77]
  l0._graph = self
  l0.Enabled = self.f_77_Enabled
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_77_GotUser
  l0.NotGotUser = self.f_77_NotGotUser
  l0.OnUserInPlace = self.f_77_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
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
  l0 = self[81]
  l0:Input(1)
end
function export:CheckPoint_1()
  local l0
  l0 = self[4]
  l0.LayerName = "S14M070_Main"
  l0:Load()
end
function export:CheckPoint_2()
  local l0
  self:en_3()
  l0 = self[3]
  l0:FromCheckpoint()
end
function export:In()
  local l0
  l0 = self[81]
  l0:Input(0)
end
function export:f_135_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372067173265680"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_98_PostOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Shown = self.f_56_Shown
  l0.Hidden = DummyFunction
  l0:Show()
end
function export:f_97_PreOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_55_Hidden
  l0:Hide()
end
function export:f_95_Out()
  local l0
  self = self._graph
  l0 = self[92]
  l0.SoundId = "soundbinary/4128667699.bnk"
  l0:Play()
end
function export:f_59_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_47_Out_0
  l0.Out[1] = self.f_47_Out_1
  l0:In()
end
function export:f_32_Out()
  local l0
  self = self._graph
  l0 = self[77]
  l0.CLO = "9223372047531497552"
  l0:Enable()
end
function export:f_51_Finished()
  local l0
  self = self._graph
  l0 = self[70]
  l0:Input(0)
end
function export:f_51_Skipped()
  local l0
  self = self._graph
  l0 = self[70]
  l0:Input(1)
end
function export:f_22_AllBroken()
  local l0
  self = self._graph
  self:en_22()
  l0 = self[22]
  l0:Disable()
end
function export:f_22_Breaking()
  local l0
  self = self._graph
  l0 = self[22]
  self.BrokenEntity01 = l0.BrokenEntity
  l0 = self[17]
  l0.Entity = self.BrokenEntity01
  l0:Disable()
end
function export:f_22_Disabled()
  local l0
  self = self._graph
  l0 = self[19]
  l0.MapPoint = "9223372054684906104"
  l0:Hide()
end
function export:f_78_Out()
  local l0
  self = self._graph
  l0 = self[32]
  l0:Input(1)
end
function export:f_33_PostOut()
  local l0
  self = self._graph
  l0 = self[38]
  l0:Input(1)
end
function export:f_115_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372067173265213"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_34_Out_0()
  local l0
  self = self._graph
  self:en_11()
  l0 = self[11]
  l0:Disable()
end
function export:f_34_Out_1()
  local l0
  self = self._graph
  l0 = self[50]
  l0.Entity_AreaRadius = 0
  l0.MissionArea = "9223372047969946283"
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
function export:f_34_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/StopMusic.lua")]
  l0.FadeOutTime = 5
  l0._graph = self
  l0.Out = self.f_95_Out
  l0:In()
end
function export:f_70_Out()
  local l0
  self = self._graph
  l0 = self[98]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_15_AllSpawned()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372049749705411"
  l0.NPC = nil
  l0._graph = self
  l0.Out = self.f_35_Out
  l0:Enable()
end
function export:f_2_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:In()
end
function export:f_52_Enabled()
  local l0
  self = self._graph
  self:en_46()
  l0 = self[46]
  l0:Enable()
end
function export:f_161_OnMissionFailed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/StopMusic.lua")]
  l0.FadeOutTime = 8
  l0._graph = self
  l0.Out = DummyFunction
  l0:In()
end
function export:f_47_Out_0()
  local l0
  self = self._graph
  l0 = self[21]
  l0:Condition(3)
end
function export:f_47_Out_1()
  local l0
  self = self._graph
  l0 = self[30]
  l0:Input(3)
end
function export:f_18_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_31_Out_0
  l0.Out[1] = self.f_31_Out_1
  l0:In()
end
function export:f_63_Out_0()
  local l0
  self = self._graph
  l0 = self[76]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_63_Out_1()
  local l0
  self = self._graph
  l0 = self[62]
  l0.Command = "restrictON"
  l0:Enable()
end
function export:f_103_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372067173265212"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_101_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_103_Out_1()
  local l0
  self = self._graph
  l0 = self[112]
  l0.Seconds = 0.1
  l0:Start()
end
function export:f_103_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_115_Out
  l0:In()
end
function export:f_103_Out_3()
  local l0
  self = self._graph
  l0 = self[116]
  l0.Seconds = 0.3
  l0:Start()
end
function export:f_103_Out_4()
  local l0
  self = self._graph
  l0 = self[117]
  l0.Seconds = 0.5
  l0:Start()
end
function export:f_16_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[97]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:f_134_Out_0()
  local l0
  self = self._graph
  l0 = self[131]
  l0.Seconds = 0.1
  l0:Start()
end
function export:f_134_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_138_Out
  l0:In()
end
function export:f_134_Out_2()
  local l0
  self = self._graph
  l0 = self[129]
  l0.Seconds = 0.2
  l0:Start()
end
function export:f_134_Out_3()
  local l0
  self = self._graph
  l0 = self[135]
  l0.Seconds = 0.6
  l0:Start()
end
function export:f_134_Out_4()
  local l0
  self = self._graph
  l0 = self[139]
  l0.Seconds = 0.3
  l0:Start()
end
function export:f_12_OnCommunicationStarted()
  local l0
  self = self._graph
  l0 = self[27]
  l0.Checkpoint = "CheckPoint_1"
  l0:In()
end
function export:f_55_Hidden()
  local l0
  self = self._graph
  l0 = self[51]
  l0.SceneEntity = "9223372049410233498"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S14/s14_pgv-fs_vid.seq"
  l0:Start()
end
function export:f_112_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372067173265214"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_27_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_94_Out_0
  l0.Out[1] = DummyFunction
  l0:In()
end
function export:f_42_Out_0()
  local l0
  self = self._graph
  l0 = self[21]
  l0:Condition(1)
end
function export:f_42_Out_1()
  local l0
  self = self._graph
  l0 = self[30]
  l0:Input(1)
end
function export:f_133_HackContextual()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_134_Out_0
  l0.Out[1] = self.f_134_Out_1
  l0.Out[2] = self.f_134_Out_2
  l0.Out[3] = self.f_134_Out_3
  l0.Out[4] = self.f_134_Out_4
  l0:In()
end
function export:f_21_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_87_Out_0
  l0.Out[1] = self.f_87_Out_1
  l0:In()
end
function export:f_101_Started()
  local l0
  self = self._graph
  l0 = self[104]
  l0:In(1)
end
function export:f_73_Shown()
  local l0
  self = self._graph
  l0 = self[12]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053615630250"
  l0:StartCommunication()
end
function export:f_79_OnCommunicationStarted()
  local l0
  self = self._graph
  l0 = self[8]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S14.S14M070.Objectives.Objective020",
    item = "Objective",
    id = "354188"
  }
  l0.HasObjectiveMarker = 0
  l0:ShowNewObjective()
end
function export:f_116_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372067173265215"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_117_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372067173265216"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_34_Out_0
  l0.Out[1] = self.f_34_Out_1
  l0.Out[2] = self.f_34_Out_2
  l0:In()
end
function export:f_54_Added()
  local l0
  self = self._graph
  l0 = self[54]
  self.VotingMachines_3rdF_BridgeSide = l0.Target
  l0 = self[99]
  l0.MapPoint = "9223372054684906110"
  l0:Show()
end
function export:f_54_Out()
  local l0
  self = self._graph
  l0 = self[54]
  self.VotingMachines_3rdF_BridgeSide = l0.Target
end
function export:f_54_Removed()
  local l0
  self = self._graph
  l0 = self[54]
  self.VotingMachines_3rdF_BridgeSide = l0.Target
end
function export:f_159_Activated()
  local l0
  self = self._graph
  l0 = self[161]
  l0.Mission = "MissionList.9223372046811300302"
  l0:Enable()
end
function export:f_99_Shown()
  local l0
  self = self._graph
  l0 = self[67]
  l0.EntityList = self.VotingMachines_3rdF_BridgeSide
  l0:Enable()
end
function export:f_131_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372067173265682"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_140_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_145_Out_0()
  local l0
  self = self._graph
  self:en_24()
  l0 = self[24]
  l0:Enable()
end
function export:f_145_Out_1()
  local l0
  self = self._graph
  l0 = self[133]
  l0.HackableEntity = "9223372067173090823"
  l0.HackCategoryType = "Explosive"
  l0.AutoDisable = 1
  l0:Enable()
end
function export:f_94_Out_0()
  local l0
  self = self._graph
  l0 = self[5]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S14.S14M070.Objectives.Objective010",
    item = "Objective",
    id = "354183"
  }
  l0.IncrementalObjectiveTotal = 4
  l0.ShowPreviousObjectiveComplete = 0
  l0.HasObjectiveMarker = 0
  l0:ShowNewObjective()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372058043348850"
  l0.RestrictTraffic = 0
  l0.RestrictPedestrians = nil
  l0.RestrictParking = 0
  l0.ResetLivingCity = nil
  l0.ResetMissionWithLivingCity = nil
  l0.CivilianDensityDbObject = nil
  l0.ParkedCarsDensityDbObject = nil
  l0.TrafficDensityScale = nil
  l0.ApplyToEnticers = 0
  l0.ApplyToRoadNetwork = nil
  l0.RestrictHumanOnFoot = nil
  l0.RestrictHumanPassenger = nil
  l0.RestrictAnimal = nil
  l0.RestrictRobot = nil
  l0.RestrictRoadVehicle = 0
  l0.RestrictRail = nil
  l0.RestrictBoat = nil
  l0.RestrictParkedCar = 0
  l0.RestrictParkedBoat = nil
  l0.RestrictWorldAI = 0
  l0.RestrictReinforcementAI = 0
  l0.RestrictMissionAI = 0
  l0.RestrictCityObject = nil
  l0.RestrictMissionObject = 0
  l0._graph = self
  l0.Out = self.f_69_Out
  l0:In()
end
function export:f_23_Added()
  local l0
  self = self._graph
  l0 = self[23]
  self.VotingMachines_1stF_INT = l0.Target
  l0 = self[128]
  l0.MapPoint = "9223372054684906106"
  l0:Show()
end
function export:f_23_Out()
  local l0
  self = self._graph
  l0 = self[23]
  self.VotingMachines_1stF_INT = l0.Target
end
function export:f_23_Removed()
  local l0
  self = self._graph
  l0 = self[23]
  self.VotingMachines_1stF_INT = l0.Target
end
function export:f_41_Out_0()
  local l0
  self = self._graph
  l0 = self[10]
  l0.Input = self.VotingMachines_1stF_Courtyard
  l0.Data[0] = "9223372056332876197"
  l0.Data[1] = "9223372056332876201"
  l0.Data[2] = "9223372056332876199"
  l0.Data[3] = "9223372056332876191"
  l0:Add()
end
function export:f_41_Out_1()
  local l0
  self = self._graph
  l0 = self[23]
  l0.Input = self.VotingMachines_1stF_INT
  l0.Data[0] = "9223372056332874937"
  l0.Data[1] = "9223372056332874939"
  l0.Data[2] = "9223372056332874941"
  l0.Data[3] = "9223372056332874943"
  l0.Data[4] = "9223372061942159112"
  l0:Add()
end
function export:f_41_Out_2()
  local l0
  self = self._graph
  l0 = self[45]
  l0.Input = self.VotingMachines_3rdF_BaySide
  l0.Data[0] = "9223372056997412506"
  l0.Data[1] = "9223372056997412510"
  l0.Data[2] = "9223372056997412514"
  l0.Data[3] = "9223372056997412516"
  l0.Data[4] = "9223372056997412518"
  l0:Add()
end
function export:f_41_Out_3()
  local l0
  self = self._graph
  l0 = self[54]
  l0.Input = self.VotingMachines_3rdF_BridgeSide
  l0.Data[0] = "9223372056997412498"
  l0.Data[1] = "9223372056997412494"
  l0.Data[2] = "9223372056997412488"
  l0.Data[3] = "9223372056997412486"
  l0.Data[4] = "9223372056997412502"
  l0:Add()
end
function export:f_138_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372067173265684"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_82_Out_Debug_Annotations()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsCheckPoint_1
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_40_A_is_True
  l0.A_is_False = self.f_40_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_40_A_is_False()
  local l0
  self = self._graph
  l0 = self[78]
  l0:In()
end
function export:f_40_A_is_True()
  local l0
  self = self._graph
  l0 = self[32]
  l0:Input(0)
end
function export:f_38_Out()
  local l0
  self = self._graph
  l0 = self[39]
  l0:In()
end
function export:f_162_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372068246841851"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0.Activated = self.f_159_Activated
  l0.Deactivated = DummyFunction
  l0:Activate()
end
function export:f_58_AllBroken()
  local l0
  self = self._graph
  self:en_58()
  l0 = self[58]
  l0:Disable()
end
function export:f_58_Breaking()
  local l0
  self = self._graph
  l0 = self[58]
  self.BrokenEntity04 = l0.BrokenEntity
  l0 = self[65]
  l0.Entity = self.BrokenEntity04
  l0:Disable()
end
function export:f_58_Disabled()
  local l0
  self = self._graph
  l0 = self[104]
  l0:In(0)
end
function export:f_140_Started()
  local l0
  self = self._graph
  l0 = self[141]
  l0:In(1)
end
function export:f_39_Out_Debug_Annotations()
  local l0
  self = self._graph
  l0 = self[82]
  l0:In()
end
function export:f_87_Out_0()
  local l0
  self = self._graph
  l0 = self[79]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421346294"
  l0:StartCommunication()
end
function export:f_87_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/StopMusic.lua")]
  l0.FadeOutTime = 8
  l0._graph = self
  l0.Out = self.f_109_Out
  l0:In()
end
function export:f_25_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_42_Out_0
  l0.Out[1] = self.f_42_Out_1
  l0:In()
end
function export:f_46_AllBroken()
  local l0
  self = self._graph
  self:en_46()
  l0 = self[46]
  l0:Disable()
end
function export:f_46_Breaking()
  local l0
  self = self._graph
  l0 = self[46]
  self.BrokenEntity03 = l0.BrokenEntity
  l0 = self[49]
  l0.Entity = self.BrokenEntity03
  l0:Disable()
end
function export:f_46_Disabled()
  local l0
  self = self._graph
  l0 = self[110]
  l0:In(0)
end
function export:f_75_Enabled()
  local l0
  self = self._graph
  l0 = self[15]
  l0.PGTMissionArea = "9223372052607970127"
  l0:Start()
end
function export:f_75_GotUser()
  local l0
  self = self._graph
  l0 = self[75]
  self.Convo_Guard02 = l0.UserID
end
function export:f_75_NotGotUser()
  local l0
  self = self._graph
  l0 = self[75]
  self.Convo_Guard02 = l0.UserID
end
function export:f_75_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[75]
  self.Convo_Guard02 = l0.UserID
  l0 = self[83]
  l0:Condition(0)
end
function export:f_80_PostOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Shown = self.f_73_Shown
  l0.Hidden = DummyFunction
  l0:Show()
end
function export:f_10_Added()
  local l0
  self = self._graph
  l0 = self[10]
  self.VotingMachines_1stF_Courtyard = l0.Target
  l0 = self[142]
  l0.MapPoint = "9223372054684906104"
  l0:Show()
end
function export:f_10_Out()
  local l0
  self = self._graph
  l0 = self[10]
  self.VotingMachines_1stF_Courtyard = l0.Target
end
function export:f_10_Removed()
  local l0
  self = self._graph
  l0 = self[10]
  self.VotingMachines_1stF_Courtyard = l0.Target
end
function export:f_81_Out()
  local l0
  self = self._graph
  l0 = self[2]
  l0.LayerName = "S14M070_Main"
  l0:Load()
end
function export:f_48_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_44_Out_0
  l0.Out[1] = self.f_44_Out_1
  l0:In()
end
function export:f_109_Out()
  local l0
  self = self._graph
  l0 = self[157]
  l0.SoundId = "soundbinary/4128667699.bnk"
  l0:Play()
end
function export:f_45_Added()
  local l0
  self = self._graph
  l0 = self[45]
  self.VotingMachines_3rdF_BaySide = l0.Target
  l0 = self[108]
  l0.MapPoint = "9223372054684906108"
  l0:Show()
end
function export:f_45_Out()
  local l0
  self = self._graph
  l0 = self[45]
  self.VotingMachines_3rdF_BaySide = l0.Target
end
function export:f_45_Removed()
  local l0
  self = self._graph
  l0 = self[45]
  self.VotingMachines_3rdF_BaySide = l0.Target
end
function export:f_141_Out()
  local l0
  self = self._graph
  l0 = self[25]
  l0.EntityList = self.VotingMachines_1stF_INT
  l0:Disable()
end
function export:f_62_Enabled()
  local l0
  self = self._graph
  l0 = self[66]
  l0.Command = "restrictOFF"
  l0:Enable()
end
function export:f_62_Executed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372049710585850"
  l0.RestrictTraffic = 0
  l0.RestrictPedestrians = 0
  l0.RestrictParking = 0
  l0.ResetLivingCity = nil
  l0.ResetMissionWithLivingCity = nil
  l0.CivilianDensityDbObject = nil
  l0.ParkedCarsDensityDbObject = nil
  l0.TrafficDensityScale = nil
  l0.ApplyToEnticers = nil
  l0.ApplyToRoadNetwork = nil
  l0.RestrictHumanOnFoot = 0
  l0.RestrictHumanPassenger = 0
  l0.RestrictAnimal = 0
  l0.RestrictRobot = 0
  l0.RestrictRoadVehicle = 0
  l0.RestrictRail = 0
  l0.RestrictBoat = 0
  l0.RestrictParkedCar = 0
  l0.RestrictParkedBoat = 0
  l0.RestrictWorldAI = nil
  l0.RestrictReinforcementAI = 0
  l0.RestrictMissionAI = 0
  l0.RestrictCityObject = 0
  l0.RestrictMissionObject = 0
  l0._graph = self
  l0.Out = DummyFunction
  l0:In()
end
function export:f_110_Out()
  local l0
  self = self._graph
  l0 = self[53]
  l0.MapPoint = "9223372054684906108"
  l0:Hide()
end
function export:f_56_Shown()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:End()
end
function export:f_57_Out()
  local l0
  self = self._graph
  l0 = self[16]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053615630251"
  l0:StartCommunication()
end
function export:f_68_Hidden()
  local l0
  self = self._graph
  l0 = self[59]
  l0.EntityList = self.VotingMachines_3rdF_BridgeSide
  l0:Disable()
end
function export:f_30_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_158_Out_0
  l0.Out[1] = self.f_158_Out_1
  l0:In()
end
function export:f_35_Out()
  local l0
  self = self._graph
  self:en_11()
  l0 = self[11]
  l0:Enable()
end
function export:f_11_Enabled()
  local l0
  self = self._graph
  l0 = self[80]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_102_Out_0()
  local l0
  self = self._graph
  self:en_58()
  l0 = self[58]
  l0:Enable()
end
function export:f_102_Out_1()
  local l0
  self = self._graph
  l0 = self[100]
  l0.HackableEntity = "9223372067173090819"
  l0.HackCategoryType = "Explosive"
  l0.AutoDisable = 1
  l0:Enable()
end
function export:f_53_Hidden()
  local l0
  self = self._graph
  l0 = self[48]
  l0.EntityList = self.VotingMachines_3rdF_BaySide
  l0:Disable()
end
function export:f_76_Out()
  local l0
  self = self._graph
  l0 = self[38]
  l0:Input(0)
end
function export:f_44_Out_0()
  local l0
  self = self._graph
  l0 = self[21]
  l0:Condition(2)
end
function export:f_44_Out_1()
  local l0
  self = self._graph
  l0 = self[30]
  l0:Input(2)
end
function export:f_69_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_63_Out_0
  l0.Out[1] = self.f_63_Out_1
  l0:In()
end
function export:f_31_Out_0()
  local l0
  self = self._graph
  l0 = self[21]
  l0:Condition(0)
end
function export:f_31_Out_1()
  local l0
  self = self._graph
  l0 = self[30]
  l0:Input(0)
end
function export:f_67_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_102_Out_0
  l0.Out[1] = self.f_102_Out_1
  l0:In()
end
function export:f_139_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372067173265678"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_129_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372067173265686"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_19_Hidden()
  local l0
  self = self._graph
  l0 = self[155]
  l0:In(0)
end
function export:f_104_Out()
  local l0
  self = self._graph
  l0 = self[68]
  l0.MapPoint = "9223372054684906110"
  l0:Hide()
end
function export:f_20_Enabled()
  local l0
  self = self._graph
  self:en_22()
  l0 = self[22]
  l0:Enable()
end
function export:f_66_Executed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372049710585850"
  l0.RestrictTraffic = 0
  l0.RestrictPedestrians = 0
  l0.RestrictParking = 0
  l0.ResetLivingCity = nil
  l0.ResetMissionWithLivingCity = nil
  l0.CivilianDensityDbObject = nil
  l0.ParkedCarsDensityDbObject = nil
  l0.TrafficDensityScale = nil
  l0.ApplyToEnticers = nil
  l0.ApplyToRoadNetwork = nil
  l0.RestrictHumanOnFoot = 0
  l0.RestrictHumanPassenger = 0
  l0.RestrictAnimal = 0
  l0.RestrictRobot = 0
  l0.RestrictRoadVehicle = 0
  l0.RestrictRail = 0
  l0.RestrictBoat = 0
  l0.RestrictParkedCar = 0
  l0.RestrictParkedBoat = 0
  l0.RestrictWorldAI = 0
  l0.RestrictReinforcementAI = 0
  l0.RestrictMissionAI = 0
  l0.RestrictCityObject = 0
  l0.RestrictMissionObject = 0
  l0._graph = self
  l0.Out = DummyFunction
  l0:In()
end
function export:f_37_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[36]
  l0:True()
end
function export:f_155_Out()
  local l0
  self = self._graph
  l0 = self[18]
  l0.EntityList = self.VotingMachines_1stF_Courtyard
  l0:Disable()
end
function export:f_108_Shown()
  local l0
  self = self._graph
  l0 = self[52]
  l0.EntityList = self.VotingMachines_3rdF_BaySide
  l0:Enable()
end
function export:f_28_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_145_Out_0
  l0.Out[1] = self.f_145_Out_1
  l0:In()
end
function export:f_100_HackSuccess()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_103_Out_0
  l0.Out[1] = self.f_103_Out_1
  l0.Out[2] = self.f_103_Out_2
  l0.Out[3] = self.f_103_Out_3
  l0.Out[4] = self.f_103_Out_4
  l0:In()
end
function export:f_24_AllBroken()
  local l0
  self = self._graph
  self:en_24()
  l0 = self[24]
  l0:Disable()
end
function export:f_24_Breaking()
  local l0
  self = self._graph
  l0 = self[24]
  self.BrokenEntity02 = l0.BrokenEntity
  l0 = self[26]
  l0.Entity = self.BrokenEntity02
  l0:Disable()
end
function export:f_24_Disabled()
  local l0
  self = self._graph
  l0 = self[43]
  l0.MapPoint = "9223372054684906106"
  l0:Hide()
end
function export:f_43_Hidden()
  local l0
  self = self._graph
  l0 = self[141]
  l0:In(0)
end
function export:f_158_Out_0()
  local l0
  self = self._graph
  l0 = self[29]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S14.S14M070.Objectives.Objective010",
    item = "Objective",
    id = "354183"
  }
  l0:IncrementObjective()
end
function export:f_158_Out_1()
  local l0
  self = self._graph
  l0 = self[162]
  l0:In(0)
end
function export:f_5_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_41_Out_0
  l0.Out[1] = self.f_41_Out_1
  l0.Out[2] = self.f_41_Out_2
  l0.Out[3] = self.f_41_Out_3
  l0.Out[4] = DummyFunction
  l0:In()
end
function export:f_36_Out()
  local l0
  self = self._graph
  l0 = self[36]
  self.IsCheckPoint_1 = l0.Target
end
function export:f_36_SetFalse()
  local l0
  self = self._graph
  l0 = self[36]
  self.IsCheckPoint_1 = l0.Target
end
function export:f_36_SetFromBool()
  local l0
  self = self._graph
  l0 = self[36]
  self.IsCheckPoint_1 = l0.Target
end
function export:f_36_SetTrue()
  local l0
  self = self._graph
  l0 = self[36]
  self.IsCheckPoint_1 = l0.Target
  l0 = self[33]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_36_Toggled()
  local l0
  self = self._graph
  l0 = self[36]
  self.IsCheckPoint_1 = l0.Target
end
function export:f_50_Escaped()
  local l0
  self = self._graph
  l0 = self[57]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S14.S14M070.Objectives.Objective020",
    item = "Objective",
    id = "354188"
  }
  l0.HasObjectiveMarker = 0
  l0:ShowLastObjectiveComplete()
end
function export:f_142_Shown()
  local l0
  self = self._graph
  l0 = self[20]
  l0.EntityList = self.VotingMachines_1stF_Courtyard
  l0:Enable()
end
function export:f_4_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_37_Out
  l0:In()
end
function export:f_128_Shown()
  local l0
  self = self._graph
  l0 = self[28]
  l0.EntityList = self.VotingMachines_1stF_INT
  l0:Enable()
end
function export:f_77_Enabled()
  local l0
  self = self._graph
  l0 = self[75]
  l0.CLO = "9223372047411652686"
  l0:Enable()
end
function export:f_77_GotUser()
  local l0
  self = self._graph
  l0 = self[77]
  self.Convo_Guard01 = l0.UserID
end
function export:f_77_NotGotUser()
  local l0
  self = self._graph
  l0 = self[77]
  self.Convo_Guard01 = l0.UserID
end
function export:f_77_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[77]
  self.Convo_Guard01 = l0.UserID
  l0 = self[83]
  l0:Condition(1)
end
function export:en_22()
  local l0
  l0 = self[22]
  l0.BreakableEntitiesList = self.VotingMachines_1stF_Courtyard
end
function export:en_3()
  local l0
  l0 = self[3]
  l0.Checkpoint = "CheckPoint_2"
  l0.MissionLayer = "S14M070_Main"
  l0.ShowMissionComplete = 1
end
function export:en_58()
  local l0
  l0 = self[58]
  l0.BreakableEntitiesList = self.VotingMachines_3rdF_BridgeSide
end
function export:en_46()
  local l0
  l0 = self[46]
  l0.BreakableEntitiesList = self.VotingMachines_3rdF_BaySide
end
function export:en_11()
  local l0
  l0 = self[11]
  l0.MissionArea = "9223372047969946283"
  l0.MissionLayer = "S14M070_Main"
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
end
function export:en_24()
  local l0
  l0 = self[24]
  l0.BreakableEntitiesList = self.VotingMachines_1stF_INT
end
_compilerVersion = 4
