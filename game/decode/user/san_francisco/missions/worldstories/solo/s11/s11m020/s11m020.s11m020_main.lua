export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AIAgentZoneController.lua")
  cbox:RegisterBox("domino/System/AISquadRelationshipController.lua")
  cbox:RegisterBox("domino/System/AISquadStateController.lua")
  cbox:RegisterBox("domino/System/CinemaZoneCleanup.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Download_Gameplay.lua")
  cbox:RegisterBox("domino/System/EntityLoadingMonitor.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Escape_Gameplay.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Hack_Gameplay.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/LMALayerController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Mission_End.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.MissionZone.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/ParticleFxController_v2.lua")
  cbox:RegisterBox("domino/System/PGTController_v2.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Reach_Gameplay.lua")
  cbox:RegisterBox("domino/System/ReinforcementSystemController_v2.lua")
  cbox:RegisterBox("domino/System/ReinforcementSystemMonitor_v2.lua")
  cbox:RegisterBox("domino/System/SetActionMap_v2.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/ShowOrHideAllUI.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/StimEmitterController.lua")
  cbox:RegisterBox("domino/System/TeleportToSpawnPoint.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
  cbox:LoadResource("soundbinary/1797200237.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1069305775.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1336825784.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3638407535.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3436307579.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/777322241.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1134021737.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1957660117.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2103974382.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1526129229.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1851914632.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/4044913383.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.List_ParticleSpray = {}
  self.ParticleSpray_Timer = 0.25
  self.Reinforcement_Started = 0
  self[22] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[22]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_22_Out
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
  self[14] = cbox:CreateBox("domino/Library/common/MissionIngredients.Reach_Gameplay.lua")
  l0 = self[14]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Reached = self.f_14_Reached
  self[41] = cbox:CreateBox("domino/Library/common/MissionIngredients.Hack_Gameplay.lua")
  l0 = self[41]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_41_Hacked
  self[10] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[10]
  l0._graph = self
  l0.Out = self.f_10_Out
  l0.MessageCompleted = DummyFunction
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
  self[12] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[12]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_12_Out
  self[76] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[76]
  l0._graph = self
  l0.Out = self.f_76_Out
  l0.MessageCompleted = DummyFunction
  self[6] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[6]
  l0._graph = self
  l0.Loaded = self.f_6_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[2] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Loaded = self.f_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[79] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[79]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_79_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[4] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[4]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_4_Out
  self[20] = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self[20]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_20_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self[34] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[34]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_34_PostOut
  self[27] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[27]
  l0._graph = self
  l0.Out = self.f_27_Out
  l0.MessageCompleted = DummyFunction
  self[17] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[17]
  l0._graph = self
  l0.Enabled = self.f_17_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[108] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[108]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[60] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[60]
  l0._graph = self
  l0._DynamicAnchors = {Data = 11}
  l0.Added = self.f_60_Added
  l0.Removed = self.f_60_Removed
  l0.Out = self.f_60_Out
  self[50] = cbox:CreateBox("domino/System/ReinforcementSystemMonitor_v2.lua")
  l0 = self[50]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.None = self.f_50_None
  l0.Reinforcing = self.f_50_Reinforcing
  l0.CallingNextWave = DummyFunction
  l0.CallingNextWaveSucceeded = DummyFunction
  l0.ReachedWaveChangeThreshold = DummyFunction
  l0.WaveChanged = DummyFunction
  l0.EntitySpawned = DummyFunction
  l0.Finished = DummyFunction
  self[26] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[26]
  l0._graph = self
  l0.Out = self.f_26_Out
  l0.MessageCompleted = DummyFunction
  self[110] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[110]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_110_Started
  l0.Finished = DummyFunction
  self[54] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[54]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_54_Out
  self[119] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[119]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[102] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[102]
  l0._graph = self
  l0.Out = self.f_102_Out
  l0.MessageCompleted = DummyFunction
  self[42] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[42]
  l0._graph = self
  l0._DynamicAnchors = {In = 3}
  l0.Out = self.f_42_Out
  l0.ResetOut = DummyFunction
  self[25] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[25]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_25_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[37] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[37]
  l0._graph = self
  l0.Enabled = self.f_37_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[70] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[70]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_70_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[74] = cbox:CreateBox("domino/Library/common/MissionIngredients.Escape_Gameplay.lua")
  l0 = self[74]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Escaped = self.f_74_Escaped
  l0.LeftArea = DummyFunction
  self[118] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[118]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_118_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[55] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[55]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_55_Out
  self[8] = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self[8]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_8_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self[85] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[85]
  l0._graph = self
  l0.PreOut = self.f_85_PreOut
  l0.PostOut = DummyFunction
  self[3] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[3]
  l0._graph = self
  l0.Out = self.f_3_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[104] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[104]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[116] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[116]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_116_Started
  l0.Finished = DummyFunction
  self[11] = cbox:CreateBox("domino/Library/common/MissionIngredients.Download_Gameplay.lua")
  l0 = self[11]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.DownloadCompleted = self.f_11_DownloadCompleted
  l0.Ratio1Reached = self.f_11_Ratio1Reached
  l0.Ratio1Reached_PostReset = DummyFunction
  l0.Ratio2Reached = DummyFunction
  l0.Ratio2Reached_PostReset = DummyFunction
  l0.CustomRatioReached = DummyFunction
  l0.CustomRatioReached_PostReset = DummyFunction
  l0.PauseRatioReached = DummyFunction
  l0.PauseRatioReached_PostReset = DummyFunction
  self[66] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[66]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_66_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[100] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[100]
  l0._graph = self
  l0.StartCommunicationOut = self.f_100_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[89] = cbox:CreateBox("domino/System/AISquadStateController.lua")
  l0 = self[89]
  l0._graph = self
  l0.WanderSet = DummyFunction
  l0.AwareSet = DummyFunction
  l0.UntargetedSearchSet = DummyFunction
  l0.TargetedSearchSet = self.f_89_TargetedSearchSet
  l0.CombatSet = DummyFunction
  l0.VanishSet = DummyFunction
  l0.SearchOverrideParamsSet = DummyFunction
  l0.SearchOverrideParamsReset = DummyFunction
  l0.SquadBhvParamsSet = DummyFunction
  l0.SquadBhvParamsCleared = DummyFunction
  l0.SquadRemoved = DummyFunction
  self[31] = cbox:CreateBox("domino/Library/common/MissionIngredients.Hack_Gameplay.lua")
  l0 = self[31]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_31_Hacked
  self[114] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[114]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_114_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[52] = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.lua")
  l0 = self[52]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_52_Disabled
  l0.SoftQuitCompleted = DummyFunction
  self[29] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[29]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_29_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[32] = cbox:CreateBox("domino/System/AISquadRelationshipController.lua")
  l0 = self[32]
  l0._graph = self
  l0.RelationshipSet = self.f_32_RelationshipSet
  l0.RelationshipReset = DummyFunction
  self[24] = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self[24]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_24_Unloaded
  self[39] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[39]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_39_Skipped
  l0.Finished = self.f_39_Finished
  self[45] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[45]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_45_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[44] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[44]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[88] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[88]
  l0._graph = self
  l0.Started = self.f_88_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_88_Skipped
  l0.Finished = self.f_88_Finished
  self[95] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[95]
  l0._graph = self
  l0.Out = self.f_95_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[92] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[92]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_92_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[105] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[105]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_105_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[93] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[93]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_93_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[23] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[23]
  l0._graph = self
  l0.Out = self.f_23_Out
  l0.MessageCompleted = DummyFunction
  self[47] = cbox:CreateBox("domino/Library/common/MissionIngredients.Mission_End.lua")
  l0 = self[47]
  l0._graph = self
  self[35] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[35]
  l0._graph = self
  l0.Loaded = self.f_35_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[48] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[48]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_48_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[121] = cbox:CreateBox("domino/System/EntityLoadingMonitor.lua")
  l0 = self[121]
  l0._graph = self
  l0.Enabled = self.f_121_Enabled
  l0.Disabled = self.f_121_Disabled
  l0.AllLoaded = self.f_121_AllLoaded
  self[15] = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self[15]
  l0._graph = self
  l0.Loaded = self.f_15_Loaded
  l0.Unloaded = DummyFunction
  self[99] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[99]
  l0._graph = self
  l0.Out = self.f_99_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[111] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[111]
  l0._graph = self
  l0.Out = self.f_111_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[109] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[109]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_109_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[51] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[51]
  l0._graph = self
  l0.Out = self.f_51_Out
  l0.SetTrue = self.f_51_SetTrue
  l0.SetFalse = self.f_51_SetFalse
  l0.Toggled = self.f_51_Toggled
  l0.SetFromBool = self.f_51_SetFromBool
  self[107] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[107]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_107_Started
  l0.Finished = DummyFunction
  self[75] = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self[75]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_75_TeleportDone
  self[103] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[103]
  l0._graph = self
  l0.Out = self.f_103_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[68] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[68]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_68_Out
  self[33] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[33]
  l0._graph = self
  l0.Out = self.f_33_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[46] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[46]
  l0._graph = self
  l0.StartCommunicationOut = self.f_46_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[106] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[106]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_106_Started
  l0.Finished = DummyFunction
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
  self[30] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[30]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_30_PostOut
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
  l0 = self[6]
  l0.LayerName = "S11M020_Main"
  l0:Load()
end
function export:CheckPoint_1()
  local l0
  l0 = self[35]
  l0.LayerName = "S11M020_Main"
  l0:Load()
end
function export:CheckPoint_2()
  local l0
  self:en_47()
  l0 = self[47]
  l0:FromCheckpoint()
end
function export:In()
  local l0
  l0 = self[15]
  l0.Interior = 1
  l0.LMALayerName = "OAK_02_Fruitvale_HoratioHouse"
  l0:Load()
end
function export:f_22_Out()
  local l0
  self = self._graph
  self:en_121()
  l0 = self[121]
  l0:Enable()
end
function export:f_117_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[116]
  l0.Entity = "9223372057851047015"
  l0.SoundId = "soundbinary/1851914632.bnk"
  l0:Play()
end
function export:f_14_Reached()
  local l0
  self = self._graph
  l0 = self[26]
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S11.S11M020.Objectives.Objective030",
    item = "Objective",
    id = "353382"
  }
  l0.HasObjectiveMarker = 0
  l0:UpdateObjective()
end
function export:f_18_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  l0.TargetZone = "9223372059682171462"
  l0.SceneEntity = nil
  l0.RemoveBreakable = nil
  l0.RemoveCharacter = 1
  l0.RemoveVehicle = nil
  l0.RemoveWeapon = nil
  l0.RemoveDeadBody = nil
  l0.RemoveRigidPhysObject = nil
  l0.StopDialog = nil
  l0.NotRemovableEntity[0] = nil
  l0.NotRemovableEntity[1] = nil
  l0._graph = self
  l0._DynamicAnchors = {NotRemovableEntity = 2}
  l0.Out = self.f_96_Out
  l0:CleanZone()
end
function export:f_41_Hacked()
  local l0
  self = self._graph
  l0 = self[11]
  l0.TargetEntity = "9223372053877288828"
  l0.LinkedObjective = "Objective"
  l0.Duration = 25
  l0.OverridedRadius = 20
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
  l0.CustomRatio = 0.5
  l0.DetectionOnCustomRatio = 0
  l0.DownloadPauseRatio = 0.5
  l0.DownloadPauseDuration = -1
  l0.FleeOnDownloadDetected = 1
  l0.AutoDetectDownload = 1
  l0:Start()
end
function export:f_10_Out()
  local l0
  self = self._graph
  l0 = self[17]
  l0.HackableEntity = "9223372056982510343"
  l0.ProfileLinkedToHack = 1
  l0:EnableHack()
end
function export:f_81_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372056600135897"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_82_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_12_Out()
  local l0
  self = self._graph
  l0 = self[33]
  l0.Checkpoint = "CheckPoint_1"
  l0:In()
end
function export:f_76_Out()
  local l0
  self = self._graph
  l0 = self[74]
  l0.Entity_AreaRadius = 0
  l0.MissionArea = "9223372056188761578"
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
function export:f_6_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_7_Out
  l0:In()
end
function export:f_58_Out()
  local l0
  self = self._graph
  self:en_49()
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  l0:StartReinforcing()
end
function export:f_2_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:In()
end
function export:f_79_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372056600135896"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_80_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_56_Out_0()
  local l0
  self = self._graph
  l0 = self[68]
  l0:Input(0)
end
function export:f_56_Out_1()
  local l0
  self = self._graph
  l0 = self[54]
  l0:Input(1)
end
function export:f_4_Out()
  local l0
  self = self._graph
  l0 = self[3]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_20_AllSpawned()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372048590894495"
  l0.NPC = nil
  l0._graph = self
  l0.Out = self.f_9_Out
  l0:Enable()
end
function export:f_34_PostOut()
  local l0
  self = self._graph
  l0 = self[12]
  l0:Input(1)
end
function export:f_27_Out()
  local l0
  self = self._graph
  l0 = self[76]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S11.S11M020.Objectives.Objective050",
    item = "Objective",
    id = "675092"
  }
  l0.HasObjectiveMarker = 0
  l0:ShowNewObjective()
end
function export:f_17_Enabled()
  local l0
  self = self._graph
  l0 = self[31]
  l0.Entity = "9223372056982510343"
  l0.HackCategory = "IngredientTrigger"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0.DisplayObjectiveDistance = 1
  l0:Start()
end
function export:f_65_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372056600135899"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_73_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_60_Added()
  local l0
  self = self._graph
  l0 = self[60]
  self.List_ParticleSpray = l0.Target
  l0 = self[114]
  l0.Seconds = 3
  l0:Start()
end
function export:f_60_Out()
  local l0
  self = self._graph
  l0 = self[60]
  self.List_ParticleSpray = l0.Target
end
function export:f_60_Removed()
  local l0
  self = self._graph
  l0 = self[60]
  self.List_ParticleSpray = l0.Target
end
function export:f_98_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/StimEmitterController.lua")]
  l0.StimEmitter = "9223372070939260885"
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = self.f_28_Enabled
  l0.Disabled = DummyFunction
  l0:SetEnabled()
end
function export:f_98_Out_1()
  local l0
  self = self._graph
  l0 = self[110]
  l0.Entity = "9223372057817678063"
  l0.SoundId = "soundbinary/3638407535.bnk"
  l0:Play()
end
function export:f_50_None()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_64_Out_0
  l0.Out[1] = self.f_64_Out_1
  l0:In()
end
function export:f_50_Reinforcing()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_56_Out_0
  l0.Out[1] = self.f_56_Out_1
  l0:In()
end
function export:f_64_Out_0()
  local l0
  self = self._graph
  l0 = self[68]
  l0:Input(1)
end
function export:f_64_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_57_Out
  l0:In()
end
function export:f_26_Out()
  local l0
  self = self._graph
  l0 = self[37]
  l0.HackableEntity = "9223372053877288828"
  l0.ProfileLinkedToHack = 1
  l0:EnableHack()
end
function export:f_110_Started()
  local l0
  self = self._graph
  l0 = self[107]
  l0.Entity = "9223372057817678071"
  l0.SoundId = "soundbinary/3436307579.bnk"
  l0:Play()
end
function export:f_54_Out()
  local l0
  self = self._graph
  l0 = self[27]
  l0.ObjectiveSub2 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S11.S11M020.Objectives.Objective040",
    item = "Objective",
    id = "675091"
  }
  l0.HasObjectiveMarker = 0
  l0:IncrementObjective()
end
function export:f_87_Popped()
  local l0
  self = self._graph
  l0 = self[12]
  l0:Input(0)
end
function export:f_102_Out()
  local l0
  self = self._graph
  l0 = self[100]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421346344"
  l0:StartCommunication()
end
function export:f_42_Out()
  local l0
  self = self._graph
  l0 = self[22]
  l0:Condition(0)
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[4]
  l0:Input(0)
end
function export:f_25_Disabled()
  local l0
  self = self._graph
  l0 = self[22]
  l0:Condition(1)
end
function export:f_37_Enabled()
  local l0
  self = self._graph
  l0 = self[41]
  l0.Entity = "9223372053877288828"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Download",
    id = "189898"
  }
  l0.IsManagingInteraction = 1
  l0.DisplayObjectiveDistance = 1
  l0:Start()
end
function export:f_70_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372056600135905"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_71_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_57_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_58_Out
  l0:In()
end
function export:f_69_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372056600135898"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_77_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_74_Escaped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Reinforcement_Started
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_53_A_is_True
  l0.A_is_False = self.f_53_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_118_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[119]
  l0.Entity = "9223372057851047015"
  l0.SoundId = "soundbinary/1797200237.bnk"
  l0:Play()
end
function export:f_55_Out()
  local l0
  self = self._graph
  l0 = self[111]
  l0.Entity = "9223372057817678073"
  l0.SoundId = "soundbinary/1069305775.bnk"
  l0:Play()
end
function export:f_8_AllSpawned()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372048590894495"
  l0.NPC = nil
  l0._graph = self
  l0.Out = self.f_21_Out
  l0:Enable()
end
function export:f_71_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372056600135902"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_72_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_36_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[20]
  l0.PGTMissionArea = "9223372046778229399"
  l0:Start()
end
function export:f_86_Shown()
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
  l0.Popped = self.f_87_Popped
  l0:Pop()
end
function export:f_85_PreOut()
  local l0
  self = self._graph
  l0 = self[88]
  l0.SceneEntity = "9223372058541296989"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S11/S11_M020_OpenDoor_CINEMA/s11_m020_opendoor_cinema.seq"
  l0:Start()
end
function export:f_3_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "no_controls"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_84_Pushed
  l0.Popped = DummyFunction
  l0:Push()
end
function export:f_116_Started()
  local l0
  self = self._graph
  l0 = self[118]
  l0.Seconds = 0.5
  l0:Start()
end
function export:f_72_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372056600135895"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_78_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_11_DownloadCompleted()
  local l0
  self = self._graph
  l0 = self[45]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421346349"
  l0:StartCommunication()
end
function export:f_11_Ratio1Reached()
  local l0
  self = self._graph
  l0 = self[44]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421346345"
  l0:StartCommunication()
end
function export:f_66_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372056600135904"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_67_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_100_StartCommunicationOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_16_Out_0
  l0.Out[1] = self.f_16_Out_1
  l0:In()
end
function export:f_113_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372056303576086"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_115_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_89_TargetedSearchSet()
  local l0
  self = self._graph
  self:en_52()
  l0 = self[52]
  l0:Disable()
end
function export:f_31_Hacked()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_59_Out_0
  l0.Out[1] = self.f_59_Out_1
  l0.Out[2] = self.f_59_Out_2
  l0.Out[3] = self.f_59_Out_3
  l0:In()
end
function export:f_9_Out()
  local l0
  self = self._graph
  l0 = self[92]
  l0.HackableEntity = "9223372053877288828"
  l0.ProfileLinkedToHack = 1
  l0:DisableHack()
end
function export:f_114_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = nil
  l0.ParticleEmitterList = self.List_ParticleSpray
  l0._graph = self
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Stopped = self.f_113_Stopped
  l0.Cleaned = DummyFunction
  l0:Stop()
end
function export:f_67_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372056600135901"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_69_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_52_Disabled()
  local l0
  self = self._graph
  l0 = self[46]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421346356"
  l0:StartCommunication()
end
function export:f_49_ReinforcingStarted()
  local l0
  self = self._graph
  l0 = self[51]
  l0:True()
end
function export:f_49_ReinforcingStopped()
  local l0
  self = self._graph
  l0 = self[55]
  l0:Input(0)
end
function export:f_29_Disabled()
  local l0
  self = self._graph
  l0 = self[25]
  l0.HackableEntity = "9223372056982510343"
  l0.ProfileLinkedToHack = 1
  l0:DisableHack()
end
function export:f_32_RelationshipSet()
  local l0
  self = self._graph
  l0 = self[89]
  l0.Position = "9223372056982510343"
  l0.Affiliation = "T_13"
  l0:SetInTargetedSearch()
end
function export:f_61_Out()
  local l0
  self = self._graph
  l0 = self[54]
  l0:Input(0)
end
function export:f_84_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_83_Hidden
  l0:Hide()
end
function export:f_73_Started()
  local l0
  self = self._graph
  l0 = self[99]
  l0.Entity = "9223372057622446882"
  l0.SoundId = "soundbinary/1526129229.bnk"
  l0:Play()
end
function export:f_53_A_is_False()
  local l0
  self = self._graph
  l0 = self[55]
  l0:Input(1)
end
function export:f_53_A_is_True()
  local l0
  self = self._graph
  self:en_49()
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  l0:StopReinforcing()
end
function export:f_62_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372056600135900"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_65_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_24_Unloaded()
  local l0
  self = self._graph
  l0 = self[30]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_78_Started()
  local l0
  self = self._graph
  l0 = self[103]
  l0.Entity = "9223372057817678065"
  l0.SoundId = "soundbinary/4044913383.bnk"
  l0:Play()
end
function export:f_39_Finished()
  local l0
  self = self._graph
  l0 = self[42]
  l0:In(2)
end
function export:f_39_Skipped()
  local l0
  self = self._graph
  l0 = self[42]
  l0:In(1)
end
function export:f_45_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[23]
  l0.ObjectiveSub2 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S11.S11M020.Objectives.Objective040",
    item = "Objective",
    id = "675091"
  }
  l0.HasObjectiveMarker = 0
  l0:UpdateObjective()
end
function export:f_63_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_61_Out
  l0:In()
end
function export:f_59_Out_0()
  local l0
  self = self._graph
  l0 = self[60]
  l0.Input = self.List_ParticleSpray
  l0.Data[0] = "9223372056600135903"
  l0.Data[1] = "9223372056600135904"
  l0.Data[2] = "9223372056600135905"
  l0.Data[3] = "9223372056600135900"
  l0.Data[4] = "9223372056600135901"
  l0.Data[5] = "9223372056600135902"
  l0.Data[6] = "9223372056600135899"
  l0.Data[7] = "9223372056600135898"
  l0.Data[8] = "9223372056600135895"
  l0.Data[9] = "9223372056600135896"
  l0.Data[10] = "9223372056600135897"
  l0:Add()
end
function export:f_59_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372056600135903"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_62_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_59_Out_2()
  local l0
  self = self._graph
  l0 = self[95]
  l0.Entity = "9223372057817678057"
  l0.SoundId = "soundbinary/777322241.bnk"
  l0:Play()
end
function export:f_59_Out_3()
  local l0
  self = self._graph
  l0 = self[48]
  l0.Seconds = 3
  l0:Start()
end
function export:f_19_Out()
  local l0
  self = self._graph
  l0 = self[42]
  l0:In(0)
end
function export:f_16_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_5_Out
  l0:In()
end
function export:f_16_Out_1()
  local l0
  self = self._graph
  l0 = self[14]
  l0.Entity_AreaRadius = 0
  l0.MissionArea = "9223372051800818762"
  l0.AutoGPS = 1
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0:Start()
end
function export:f_88_Finished()
  local l0
  self = self._graph
  l0 = self[39]
  l0.SceneEntity = "9223372047927281821"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S11/S11_HoratioDeath_CIN/s11_horatiodeath_cin.seq"
  l0:Start()
end
function export:f_88_Skipped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_19_Out
  l0:In()
end
function export:f_88_Started()
  local l0
  self = self._graph
  l0 = self[8]
  l0.PGTMissionArea = "9223372046778229399"
  l0:Start()
end
function export:f_95_Out()
  local l0
  self = self._graph
  l0 = self[105]
  l0.Seconds = 1
  l0:Start()
end
function export:f_80_Started()
  local l0
  self = self._graph
  l0 = self[81]
  l0.Seconds = self.ParticleSpray_Timer
  l0:Start()
end
function export:f_92_Disabled()
  local l0
  self = self._graph
  l0 = self[93]
  l0.HackableEntity = "9223372056982510343"
  l0.ProfileLinkedToHack = 1
  l0:DisableHack()
end
function export:f_13_Out()
  local l0
  self = self._graph
  self:en_52()
  l0 = self[52]
  l0:Enable()
end
function export:f_105_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[106]
  l0.Entity = "9223372057817678063"
  l0.SoundId = "soundbinary/1134021737.bnk"
  l0:Play()
end
function export:f_93_Disabled()
  local l0
  self = self._graph
  l0 = self[34]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_23_Out()
  local l0
  self = self._graph
  l0 = self[10]
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S11.S11M020.Objectives.Objective030",
    item = "Objective",
    id = "353382"
  }
  l0.HasObjectiveMarker = 0
  l0:IncrementObjective()
end
function export:f_21_Out()
  local l0
  self = self._graph
  l0 = self[29]
  l0.HackableEntity = "9223372053877288828"
  l0.ProfileLinkedToHack = 1
  l0:DisableHack()
end
function export:f_35_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_36_Out
  l0:In()
end
function export:f_48_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[40]
  l0.SoundId = "soundbinary/2103974382.bnk"
  l0:Start()
end
function export:f_121_AllLoaded()
  local l0
  self = self._graph
  self:en_121()
  l0 = self[121]
  l0:Disable()
end
function export:f_121_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372069557598633"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0:Show()
end
function export:f_121_Enabled()
  local l0
  self = self._graph
  l0 = self[75]
  l0.SpawnPoint = "9223372053562787547"
  l0.UseFadeToBlack = 0
  l0.KeepBlackScreenOnExit = 1
  l0:In()
end
function export:f_5_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_13_Out
  l0:In()
end
function export:f_96_Out()
  local l0
  self = self._graph
  l0 = self[85]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:f_15_Loaded()
  local l0
  self = self._graph
  l0 = self[2]
  l0.LayerName = "S11M020_Main"
  l0:Load()
end
function export:f_115_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_98_Out_0
  l0.Out[1] = self.f_98_Out_1
  l0:In()
end
function export:f_99_Out()
  local l0
  self = self._graph
  l0 = self[66]
  l0.Seconds = self.ParticleSpray_Timer
  l0:Start()
end
function export:f_111_Out()
  local l0
  self = self._graph
  self:en_47()
  l0 = self[47]
  l0:End()
end
function export:f_109_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[108]
  l0.Entity = "9223372057817678073"
  l0.SoundId = "soundbinary/1957660117.bnk"
  l0:Play()
end
function export:f_51_Out()
  local l0
  self = self._graph
  l0 = self[51]
  self.Reinforcement_Started = l0.Target
end
function export:f_51_SetFalse()
  local l0
  self = self._graph
  l0 = self[51]
  self.Reinforcement_Started = l0.Target
end
function export:f_51_SetFromBool()
  local l0
  self = self._graph
  l0 = self[51]
  self.Reinforcement_Started = l0.Target
end
function export:f_51_SetTrue()
  local l0
  self = self._graph
  l0 = self[51]
  self.Reinforcement_Started = l0.Target
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_63_Out
  l0:In()
end
function export:f_51_Toggled()
  local l0
  self = self._graph
  l0 = self[51]
  self.Reinforcement_Started = l0.Target
end
function export:f_107_Started()
  local l0
  self = self._graph
  l0 = self[109]
  l0.Seconds = 2
  l0:Start()
end
function export:f_75_TeleportDone()
  local l0
  self = self._graph
  l0 = self[24]
  l0.Interior = 1
  l0.LMALayerName = "OAK_02_Fruitvale_HoratioHouse"
  l0:Unload()
end
function export:f_77_Started()
  local l0
  self = self._graph
  l0 = self[70]
  l0.Seconds = self.ParticleSpray_Timer
  l0:Start()
end
function export:f_7_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[4]
  l0:Input(1)
end
function export:f_103_Out()
  local l0
  self = self._graph
  l0 = self[79]
  l0.Seconds = self.ParticleSpray_Timer
  l0:Start()
end
function export:f_68_Out()
  local l0
  self = self._graph
  self:en_50()
  l0 = self[50]
  l0:Disable()
end
function export:f_33_Out()
  local l0
  self = self._graph
  l0 = self[102]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S11.S11M020.Objectives.Objective020",
    item = "Objective",
    id = "353028"
  }
  l0.HasObjectiveMarker = 0
  l0:ShowNewObjective()
end
function export:f_83_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372069557598633"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_18_Hidden
  l0.Out = DummyFunction
  l0:Hide()
end
function export:f_46_StartCommunicationOut()
  local l0
  self = self._graph
  self:en_50()
  l0 = self[50]
  l0:Enable()
end
function export:f_28_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/StimEmitterController.lua")]
  l0.StimEmitter = "9223372071029959823"
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = self.f_38_Enabled
  l0.Disabled = DummyFunction
  l0:SetEnabled()
end
function export:f_106_Started()
  local l0
  self = self._graph
  l0 = self[117]
  l0.Seconds = 1
  l0:Start()
end
function export:f_38_Enabled()
  local l0
  self = self._graph
  l0 = self[32]
  l0.Affiliation = "T_13"
  l0.Relationship = "Threat"
  l0:SetRelationship()
end
function export:f_30_PostOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Shown = self.f_86_Shown
  l0.Hidden = DummyFunction
  l0:Show()
end
function export:f_82_Started()
  local l0
  self = self._graph
  l0 = self[104]
  l0.Entity = "9223372057817678069"
  l0.SoundId = "soundbinary/1336825784.bnk"
  l0:Play()
end
function export:en_50()
  local l0
  l0 = self[50]
  l0.Affiliation = "T_13"
  l0.CheckNow = 1
end
function export:en_52()
  local l0
  l0 = self[52]
  l0.MissionArea = "9223372048492637882"
  l0.MissionLayer = "S11M020_Main"
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
end
function export:en_49()
  local l0
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  l0.Target = nil
  l0.Affiliation = "T_13"
  l0.ReinforcementConfig = "ReinforcementConfig.9223372043023253487"
  l0.AgentList = nil
  l0.Center = nil
  l0.UnspawnOnStop = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.ReinforcingStarted = self.f_49_ReinforcingStarted
  l0.ReinforcingStopped = self.f_49_ReinforcingStopped
  l0.ReinforcementLocationFixed = DummyFunction
  l0.ReinforcementLocationReleased = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
end
function export:en_47()
  local l0
  l0 = self[47]
  l0.Checkpoint = "CheckPoint_2"
  l0.MissionLayer = "S11M020_Main"
  l0.ShowMissionComplete = 1
end
function export:en_121()
  local l0
  l0 = self[121]
  l0.Entity = "9223372069557598633"
end
_compilerVersion = 4
