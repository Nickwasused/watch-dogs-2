export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AIAgentZoneController.lua")
  cbox:RegisterBox("domino/System/AISquadRelationshipController.lua")
  cbox:RegisterBox("domino/System/AISquadStateController.lua")
  cbox:RegisterBox("domino/System/CinemaZoneCleanup.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Download_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/EntityLoadingMonitor.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Escape_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Hack_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/LMALayerController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
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
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Reach_Gameplay.debug.lua")
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
  self._name = "S11M020_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main"
  self.PlayerEntity = nil
  self.List_ParticleSpray = {}
  self.ParticleSpray_Timer = 0.25
  self.Reinforcement_Started = 0
  self.box_Multiple_AND_22 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_22
  l0._graph = self
  l0._name = "box_Multiple_AND_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|45295981"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_22_Out
  self.box_Timer_v2_117 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_117
  l0._graph = self
  l0._name = "box_Timer_v2_117"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|51433631"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_117_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Reach_Gameplay_14 = cbox:CreateBox("domino/Library/common/MissionIngredients.Reach_Gameplay.debug.lua")
  l0 = self.box_Reach_Gameplay_14
  l0._graph = self
  l0._name = "box_Reach_Gameplay_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|63089534"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Reached = self.f_box_Reach_Gameplay_14_Reached
  self.box_Hack_Gameplay_41 = cbox:CreateBox("domino/Library/common/MissionIngredients.Hack_Gameplay.debug.lua")
  l0 = self.box_Hack_Gameplay_41
  l0._graph = self
  l0._name = "box_Hack_Gameplay_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|88145756"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_box_Hack_Gameplay_41_Hacked
  self.box_MissionMessageController_v3_10 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_10
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|98214444"
  l0.Out = self.f_box_MissionMessageController_v3_10_Out
  l0.MessageCompleted = DummyFunction
  self.box_Timer_v2_81 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_81
  l0._graph = self
  l0._name = "box_Timer_v2_81"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|104465441"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_81_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MultipleOR_12 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_12
  l0._graph = self
  l0._name = "box_MultipleOR_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|106862505"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_12_Out
  self.box_MissionMessageController_v3_76 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_76
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_76"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|130161630"
  l0.Out = self.f_box_MissionMessageController_v3_76_Out
  l0.MessageCompleted = DummyFunction
  self.box_MissionLayer_v2_6 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_6
  l0._graph = self
  l0._name = "box_MissionLayer_v2_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|148916093"
  l0.Loaded = self.f_box_MissionLayer_v2_6_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_Timer_v2_79 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_79
  l0._graph = self
  l0._name = "box_Timer_v2_79"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|225006426"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_79_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MultipleOR_4 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_4
  l0._graph = self
  l0._name = "box_MultipleOR_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|298010965"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_4_Out
  self.box_PGTController_v2_20 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_20
  l0._graph = self
  l0._name = "box_PGTController_v2_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|309744823"
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_box_PGTController_v2_20_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_CinematicPrep_34 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_34
  l0._graph = self
  l0._name = "box_CinematicPrep_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|329046147"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_34_PostOut
  self.box_MissionMessageController_v3_27 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_27
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|351411000"
  l0.Out = self.f_box_MissionMessageController_v3_27_Out
  l0.MessageCompleted = DummyFunction
  self.box_HackableController_v2_17 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_17
  l0._graph = self
  l0._name = "box_HackableController_v2_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|380420550"
  l0.Enabled = self.f_box_HackableController_v2_17_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_PlaySound_v2_108 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_108
  l0._graph = self
  l0._name = "box_PlaySound_v2_108"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|394605558"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_ListWriter_60 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_60
  l0._graph = self
  l0._name = "box_ListWriter_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|436709351"
  l0._DynamicAnchors = {Data = 11}
  l0.Added = self.f_box_ListWriter_60_Added
  l0.Removed = self.f_box_ListWriter_60_Removed
  l0.Out = self.f_box_ListWriter_60_Out
  self.box_ReinforcementSystemMonitor_v2_50 = cbox:CreateBox("domino/System/ReinforcementSystemMonitor_v2.lua")
  l0 = self.box_ReinforcementSystemMonitor_v2_50
  l0._graph = self
  l0._name = "box_ReinforcementSystemMonitor_v2_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|476194969"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.None = self.f_box_ReinforcementSystemMonitor_v2_50_None
  l0.Reinforcing = self.f_box_ReinforcementSystemMonitor_v2_50_Reinforcing
  l0.CallingNextWave = DummyFunction
  l0.CallingNextWaveSucceeded = DummyFunction
  l0.ReachedWaveChangeThreshold = DummyFunction
  l0.WaveChanged = DummyFunction
  l0.EntitySpawned = DummyFunction
  l0.Finished = DummyFunction
  self.box_MissionMessageController_v3_26 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_26
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|544263613"
  l0.Out = self.f_box_MissionMessageController_v3_26_Out
  l0.MessageCompleted = DummyFunction
  self.box_PlaySound_v2_110 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_110
  l0._graph = self
  l0._name = "box_PlaySound_v2_110"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|569082063"
  l0.Out = DummyFunction
  l0.Started = self.f_box_PlaySound_v2_110_Started
  l0.Finished = DummyFunction
  self.box_MultipleOR_54 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_54
  l0._graph = self
  l0._name = "box_MultipleOR_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|648629583"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_54_Out
  self.box_PlaySound_v2_119 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_119
  l0._graph = self
  l0._name = "box_PlaySound_v2_119"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|712450703"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MissionMessageController_v3_102 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_102
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_102"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|793356032"
  l0.Out = self.f_box_MissionMessageController_v3_102_Out
  l0.MessageCompleted = DummyFunction
  self.box_OnceOnly_v3_42 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_42
  l0._graph = self
  l0._name = "box_OnceOnly_v3_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|805252227"
  l0._DynamicAnchors = {In = 3}
  l0.Out = self.f_box_OnceOnly_v3_42_Out
  l0.ResetOut = DummyFunction
  self.box_HackableController_v2_25 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_25
  l0._graph = self
  l0._name = "box_HackableController_v2_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|822092459"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_25_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_HackableController_v2_37 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_37
  l0._graph = self
  l0._name = "box_HackableController_v2_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|845202157"
  l0.Enabled = self.f_box_HackableController_v2_37_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Timer_v2_70 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_70
  l0._graph = self
  l0._name = "box_Timer_v2_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|853205525"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_70_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Escape_Gameplay_74 = cbox:CreateBox("domino/Library/common/MissionIngredients.Escape_Gameplay.debug.lua")
  l0 = self.box_Escape_Gameplay_74
  l0._graph = self
  l0._name = "box_Escape_Gameplay_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|939373526"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Escaped = self.f_box_Escape_Gameplay_74_Escaped
  l0.LeftArea = DummyFunction
  self.box_Timer_v2_118 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_118
  l0._graph = self
  l0._name = "box_Timer_v2_118"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1016996651"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_118_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MultipleOR_55 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_55
  l0._graph = self
  l0._name = "box_MultipleOR_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1032854682"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_55_Out
  self.box_PGTController_v2_8 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_8
  l0._graph = self
  l0._name = "box_PGTController_v2_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1033624916"
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_box_PGTController_v2_8_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_CinematicPrep_85 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_85
  l0._graph = self
  l0._name = "box_CinematicPrep_85"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1093922946"
  l0.PreOut = self.f_box_CinematicPrep_85_PreOut
  l0.PostOut = DummyFunction
  self.box_MissionCheckpointReach_3 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_3
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1100683095"
  l0.Out = self.f_box_MissionCheckpointReach_3_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_PlaySound_v2_104 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_104
  l0._graph = self
  l0._name = "box_PlaySound_v2_104"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1108917680"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_116 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_116
  l0._graph = self
  l0._name = "box_PlaySound_v2_116"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1112339511"
  l0.Out = DummyFunction
  l0.Started = self.f_box_PlaySound_v2_116_Started
  l0.Finished = DummyFunction
  self.box_Download_Gameplay_11 = cbox:CreateBox("domino/Library/common/MissionIngredients.Download_Gameplay.debug.lua")
  l0 = self.box_Download_Gameplay_11
  l0._graph = self
  l0._name = "box_Download_Gameplay_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1159088450"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.DownloadCompleted = self.f_box_Download_Gameplay_11_DownloadCompleted
  l0.Ratio1Reached = self.f_box_Download_Gameplay_11_Ratio1Reached
  l0.Ratio1Reached_PostReset = DummyFunction
  l0.Ratio2Reached = DummyFunction
  l0.Ratio2Reached_PostReset = DummyFunction
  l0.CustomRatioReached = DummyFunction
  l0.CustomRatioReached_PostReset = DummyFunction
  l0.PauseRatioReached = DummyFunction
  l0.PauseRatioReached_PostReset = DummyFunction
  self.box_Timer_v2_66 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_66
  l0._graph = self
  l0._name = "box_Timer_v2_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1176476518"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_66_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PhoneCommunicationController_100 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_100
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_100"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1185599066"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_100_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_AISquadStateController_89 = cbox:CreateBox("domino/System/AISquadStateController.lua")
  l0 = self.box_AISquadStateController_89
  l0._graph = self
  l0._name = "box_AISquadStateController_89"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1215203928"
  l0.WanderSet = DummyFunction
  l0.AwareSet = DummyFunction
  l0.UntargetedSearchSet = DummyFunction
  l0.TargetedSearchSet = self.f_box_AISquadStateController_89_TargetedSearchSet
  l0.CombatSet = DummyFunction
  l0.VanishSet = DummyFunction
  l0.SearchOverrideParamsSet = DummyFunction
  l0.SearchOverrideParamsReset = DummyFunction
  l0.SquadBhvParamsSet = DummyFunction
  l0.SquadBhvParamsCleared = DummyFunction
  l0.SquadRemoved = DummyFunction
  self.box_Hack_Gameplay_31 = cbox:CreateBox("domino/Library/common/MissionIngredients.Hack_Gameplay.debug.lua")
  l0 = self.box_Hack_Gameplay_31
  l0._graph = self
  l0._name = "box_Hack_Gameplay_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1217299198"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_box_Hack_Gameplay_31_Hacked
  self.box_Timer_v2_114 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_114
  l0._graph = self
  l0._name = "box_Timer_v2_114"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1244337414"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_114_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionZone_52 = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  l0 = self.box_MissionZone_52
  l0._graph = self
  l0._name = "box_MissionZone_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1248781213"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_MissionZone_52_Disabled
  l0.SoftQuitCompleted = DummyFunction
  self.box_HackableController_v2_29 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_29
  l0._graph = self
  l0._name = "box_HackableController_v2_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1360277258"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_29_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_AISquadRelationshipController_32 = cbox:CreateBox("domino/System/AISquadRelationshipController.lua")
  l0 = self.box_AISquadRelationshipController_32
  l0._graph = self
  l0._name = "box_AISquadRelationshipController_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1366225815"
  l0.RelationshipSet = self.f_box_AISquadRelationshipController_32_RelationshipSet
  l0.RelationshipReset = DummyFunction
  self.box_LMA_Layer_Controller_24 = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self.box_LMA_Layer_Controller_24
  l0._graph = self
  l0._name = "box_LMA_Layer_Controller_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1448614119"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_LMA_Layer_Controller_24_Unloaded
  self.box_PlaySequence_v5_39 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_39
  l0._graph = self
  l0._name = "box_PlaySequence_v5_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1463370581"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_39_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_39_Finished
  self.box_PhoneCommunicationController_45 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_45
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1463419750"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_45_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_PhoneCommunicationController_44 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_44
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1572713068"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_PlaySequence_v5_88 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_88
  l0._graph = self
  l0._name = "box_PlaySequence_v5_88"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1626633305"
  l0.Started = self.f_box_PlaySequence_v5_88_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_88_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_88_Finished
  self.box_PlaySound_v2_95 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_95
  l0._graph = self
  l0._name = "box_PlaySound_v2_95"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1629671345"
  l0.Out = self.f_box_PlaySound_v2_95_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_HackableController_v2_92 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_92
  l0._graph = self
  l0._name = "box_HackableController_v2_92"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1676306164"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_92_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Timer_v2_105 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_105
  l0._graph = self
  l0._name = "box_Timer_v2_105"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1691901836"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_105_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_HackableController_v2_93 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_93
  l0._graph = self
  l0._name = "box_HackableController_v2_93"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1703801041"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_93_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_MissionMessageController_v3_23 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_23
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1711069234"
  l0.Out = self.f_box_MissionMessageController_v3_23_Out
  l0.MessageCompleted = DummyFunction
  self.box_Mission_End_47 = cbox:CreateBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  l0 = self.box_Mission_End_47
  l0._graph = self
  l0._name = "box_Mission_End_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1724216506"
  self.box_MissionLayer_v2_35 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_35
  l0._graph = self
  l0._name = "box_MissionLayer_v2_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1737019424"
  l0.Loaded = self.f_box_MissionLayer_v2_35_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_Timer_v2_48 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_48
  l0._graph = self
  l0._name = "box_Timer_v2_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1741987325"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_48_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_EntityLoadingMonitor_121 = cbox:CreateBox("domino/System/EntityLoadingMonitor.lua")
  l0 = self.box_EntityLoadingMonitor_121
  l0._graph = self
  l0._name = "box_EntityLoadingMonitor_121"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1743325803"
  l0.Enabled = self.f_box_EntityLoadingMonitor_121_Enabled
  l0.Disabled = self.f_box_EntityLoadingMonitor_121_Disabled
  l0.AllLoaded = self.f_box_EntityLoadingMonitor_121_AllLoaded
  self.box_LMA_Layer_Controller_15 = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self.box_LMA_Layer_Controller_15
  l0._graph = self
  l0._name = "box_LMA_Layer_Controller_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1813978681"
  l0.Loaded = self.f_box_LMA_Layer_Controller_15_Loaded
  l0.Unloaded = DummyFunction
  self.box_PlaySound_v2_99 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_99
  l0._graph = self
  l0._name = "box_PlaySound_v2_99"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1826017721"
  l0.Out = self.f_box_PlaySound_v2_99_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_111 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_111
  l0._graph = self
  l0._name = "box_PlaySound_v2_111"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1836618901"
  l0.Out = self.f_box_PlaySound_v2_111_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Timer_v2_109 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_109
  l0._graph = self
  l0._name = "box_Timer_v2_109"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1842928885"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_109_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_SetBoolean_v2_51 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_51
  l0._graph = self
  l0._name = "box_SetBoolean_v2_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1844406602"
  l0.Out = self.f_box_SetBoolean_v2_51_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_51_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_51_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_51_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_51_SetFromBool
  self.box_PlaySound_v2_107 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_107
  l0._graph = self
  l0._name = "box_PlaySound_v2_107"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1871785295"
  l0.Out = DummyFunction
  l0.Started = self.f_box_PlaySound_v2_107_Started
  l0.Finished = DummyFunction
  self.box_Teleport_To_SpawnPoint_75 = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self.box_Teleport_To_SpawnPoint_75
  l0._graph = self
  l0._name = "box_Teleport_To_SpawnPoint_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1876303388"
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_box_Teleport_To_SpawnPoint_75_TeleportDone
  self.box_PlaySound_v2_103 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_103
  l0._graph = self
  l0._name = "box_PlaySound_v2_103"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1936656229"
  l0.Out = self.f_box_PlaySound_v2_103_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MultipleOR_68 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_68
  l0._graph = self
  l0._name = "box_MultipleOR_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1955531505"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_68_Out
  self.box_MissionCheckpointReach_33 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_33
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1980521948"
  l0.Out = self.f_box_MissionCheckpointReach_33_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_PhoneCommunicationController_46 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_46
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1987223515"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_46_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_PlaySound_v2_106 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_106
  l0._graph = self
  l0._name = "box_PlaySound_v2_106"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|2035728356"
  l0.Out = DummyFunction
  l0.Started = self.f_box_PlaySound_v2_106_Started
  l0.Finished = DummyFunction
  self.box_PlayDialog_v2_40 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_40
  l0._graph = self
  l0._name = "box_PlayDialog_v2_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|2054165008"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_CinematicPrep_30 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_30
  l0._graph = self
  l0._name = "box_CinematicPrep_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|2115885333"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_30_PostOut
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
  l0 = self.box_MissionLayer_v2_6
  l0.LayerName = "S11M020_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1280469275", "1280469275", "S11M020_Main", "CheckPoint_0", "box_MissionLayer_v2_6.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_1()
  local l0
  l0 = self.box_MissionLayer_v2_35
  l0.LayerName = "S11M020_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1194188634", "1194188634", "S11M020_Main", "CheckPoint_1", "box_MissionLayer_v2_35.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_2()
  local l0
  self:OnEnter_box_Mission_End_47()
  l0 = self.box_Mission_End_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1841587608", "1841587608", "S11M020_Main", "CheckPoint_2", "box_Mission_End_47.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  l0 = self.box_LMA_Layer_Controller_15
  l0.Interior = 1
  l0.LMALayerName = "OAK_02_Fruitvale_HoratioHouse"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|2002685147", "2002685147", "S11M020_Main", "In", "box_LMA_Layer_Controller_15.Load", self, l0)
  l0:Load()
end
function export:f_box_Multiple_AND_22_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_EntityLoadingMonitor_121()
  l0 = self.box_Multiple_AND_22
  l1 = self.box_EntityLoadingMonitor_121
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1600448890", "1600448890", "S11M020_Main", "box_Multiple_AND_22.Out", "box_EntityLoadingMonitor_121.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Timer_v2_117_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_116
  l0.Entity = "9223372057851047015"
  l0.SoundId = "soundbinary/1851914632.bnk"
  l0 = self.box_Timer_v2_117
  l1 = self.box_PlaySound_v2_116
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1973019416", "1973019416", "S11M020_Main", "box_Timer_v2_117.TimeElapsed", "box_PlaySound_v2_116.Play", l0, l1)
  l1:Play()
end
function export:f_box_Reach_Gameplay_14_Reached()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_26
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S11.S11M020.Objectives.Objective030",
    item = "Objective",
    id = "353382"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_Reach_Gameplay_14
  l1 = self.box_MissionMessageController_v3_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1326300236", "1326300236", "S11M020_Main", "box_Reach_Gameplay_14.Reached", "box_MissionMessageController_v3_26.UpdateObjective", l0, l1)
  l1:UpdateObjective()
end
function export:f_box_VisibilityController_v2_18_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
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
  l0._name = "box_Cinema_Zone_Cleanup_96"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1750300561"
  l0._DynamicAnchors = {NotRemovableEntity = 2}
  l0.Out = self.f_box_Cinema_Zone_Cleanup_96_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|41336133", "41336133", "S11M020_Main", "box_VisibilityController_v2_18.Hidden", "box_Cinema_Zone_Cleanup_96.CleanZone", clone, l0)
  l0:CleanZone()
end
function export:f_box_Hack_Gameplay_41_Hacked()
  local l0, l1
  self = self._graph
  l0 = self.box_Download_Gameplay_11
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
  l0 = self.box_Hack_Gameplay_41
  l1 = self.box_Download_Gameplay_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1670471269", "1670471269", "S11M020_Main", "box_Hack_Gameplay_41.Hacked", "box_Download_Gameplay_11.Start", l0, l1)
  l1:Start()
end
function export:f_box_MissionMessageController_v3_10_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_17
  l0.HackableEntity = "9223372056982510343"
  l0.ProfileLinkedToHack = 1
  l0 = self.box_MissionMessageController_v3_10
  l1 = self.box_HackableController_v2_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1488978192", "1488978192", "S11M020_Main", "box_MissionMessageController_v3_10.Out", "box_HackableController_v2_17.EnableHack", l0, l1)
  l1:EnableHack()
end
function export:f_box_Timer_v2_81_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372056600135897"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_82"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|2117590589"
  l0.Started = self.f_box_ParticleFXController_v2_82_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0 = self.box_Timer_v2_81
  l1 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1011197380", "1011197380", "S11M020_Main", "box_Timer_v2_81.TimeElapsed", "box_ParticleFXController_v2_82.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_12_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_33
  l0.Checkpoint = "CheckPoint_1"
  l0 = self.box_MultipleOR_12
  l1 = self.box_MissionCheckpointReach_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|575039109", "575039109", "S11M020_Main", "box_MultipleOR_12.Out", "box_MissionCheckpointReach_33.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_v3_76_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Escape_Gameplay_74
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
  l0 = self.box_MissionMessageController_v3_76
  l1 = self.box_Escape_Gameplay_74
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|389395137", "389395137", "S11M020_Main", "box_MissionMessageController_v3_76.Out", "box_Escape_Gameplay_74.Start", l0, l1)
  l1:Start()
end
function export:f_box_MissionLayer_v2_6_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1906656858"
  l0.Out = self.f_box_Get_Player_ID_7_Out
  l0 = self.box_MissionLayer_v2_6
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1402864379", "1402864379", "S11M020_Main", "box_MissionLayer_v2_6.Loaded", "box_Get_Player_ID_7.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_58_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ReinforcementSystemController_v2_49()
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1955869941", "1955869941", "S11M020_Main", "box_Simple_Node_58.Out", "box_ReinforcementSystemController_v2_49.StartReinforcing", clone, l0)
  l0:StartReinforcing()
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MissionLayer_v2_2
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|794668992", "794668992", "S11M020_Main", "box_MissionLayer_v2_2.Loaded", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_79_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372056600135896"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1663809713"
  l0.Started = self.f_box_ParticleFXController_v2_80_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0 = self.box_Timer_v2_79
  l1 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1772834707", "1772834707", "S11M020_Main", "box_Timer_v2_79.TimeElapsed", "box_ParticleFXController_v2_80.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_56_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_68()
  l0 = self.box_MultipleOR_68
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|578575786", "578575786", "S11M020_Main", "box_Ordered_Output_56.Out", "box_MultipleOR_68.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_56_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_54()
  l0 = self.box_MultipleOR_54
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|333272457", "333272457", "S11M020_Main", "box_Ordered_Output_56.Out", "box_MultipleOR_54.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_MultipleOR_4_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_3
  l0.Checkpoint = "CheckPoint_0"
  l0 = self.box_MultipleOR_4
  l1 = self.box_MissionCheckpointReach_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|979629895", "979629895", "S11M020_Main", "box_MultipleOR_4.Out", "box_MissionCheckpointReach_3.In", l0, l1)
  l1:In()
end
function export:f_box_PGTController_v2_20_AllSpawned()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372048590894495"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1223125346"
  l0.Out = self.f_box_AI_Agent_Zone_9_Out
  l0 = self.box_PGTController_v2_20
  l1 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1741537314", "1741537314", "S11M020_Main", "box_PGTController_v2_20.AllSpawned", "box_AI_Agent_Zone_9.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_CinematicPrep_34_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_12()
  l0 = self.box_CinematicPrep_34
  l1 = self.box_MultipleOR_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|2108476905", "2108476905", "S11M020_Main", "box_CinematicPrep_34.PostOut", "box_MultipleOR_12.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MissionMessageController_v3_27_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_76
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S11.S11M020.Objectives.Objective050",
    item = "Objective",
    id = "675092"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_MissionMessageController_v3_27
  l1 = self.box_MissionMessageController_v3_76
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|318084548", "318084548", "S11M020_Main", "box_MissionMessageController_v3_27.Out", "box_MissionMessageController_v3_76.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_HackableController_v2_17_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Hack_Gameplay_31
  l0.Entity = "9223372056982510343"
  l0.HackCategory = "IngredientTrigger"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0.DisplayObjectiveDistance = 1
  l0 = self.box_HackableController_v2_17
  l1 = self.box_Hack_Gameplay_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|847217917", "847217917", "S11M020_Main", "box_HackableController_v2_17.Enabled", "box_Hack_Gameplay_31.Start", l0, l1)
  l1:Start()
end
function export:f_box_ParticleFXController_v2_65_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372056600135899"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1405966233"
  l0.Started = self.f_box_ParticleFXController_v2_73_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|2073037662", "2073037662", "S11M020_Main", "box_ParticleFXController_v2_65.Started", "box_ParticleFXController_v2_73.Start", clone, l0)
  l0:Start()
end
function export:f_box_ListWriter_60_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_60
  self.List_ParticleSpray = l0.Target
  l0 = self.box_Timer_v2_114
  l0.Seconds = 3
  l0 = self.box_ListWriter_60
  l1 = self.box_Timer_v2_114
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1040924950", "1040924950", "S11M020_Main", "box_ListWriter_60.Added", "box_Timer_v2_114.Start", l0, l1)
  l1:Start()
end
function export:f_box_ListWriter_60_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_60
  self.List_ParticleSpray = l0.Target
end
function export:f_box_ListWriter_60_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_60
  self.List_ParticleSpray = l0.Target
end
function export:f_box_Ordered_Output_98_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/StimEmitterController.lua")]
  l0.StimEmitter = "9223372070939260885"
  l0._graph = self
  l0._name = "box_Stim_Emitter_Controller_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1993043299"
  l0.Out = DummyFunction
  l0.Enabled = self.f_box_Stim_Emitter_Controller_28_Enabled
  l0.Disabled = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1395555684", "1395555684", "S11M020_Main", "box_Ordered_Output_98.Out", "box_Stim_Emitter_Controller_28.SetEnabled", clone, l0)
  l0:SetEnabled()
end
function export:f_box_Ordered_Output_98_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_110
  l0.Entity = "9223372057817678063"
  l0.SoundId = "soundbinary/3638407535.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1428669575", "1428669575", "S11M020_Main", "box_Ordered_Output_98.Out", "box_PlaySound_v2_110.Play", clone, l0)
  l0:Play()
end
function export:f_box_ReinforcementSystemMonitor_v2_50_None()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|539204947"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_64_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_64_Out_1
  l0 = self.box_ReinforcementSystemMonitor_v2_50
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|501633776", "501633776", "S11M020_Main", "box_ReinforcementSystemMonitor_v2_50.None", "box_Ordered_Output_64.In", l0, l1)
  l1:In()
end
function export:f_box_ReinforcementSystemMonitor_v2_50_Reinforcing()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|284465885"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_56_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_56_Out_1
  l0 = self.box_ReinforcementSystemMonitor_v2_50
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1585078344", "1585078344", "S11M020_Main", "box_ReinforcementSystemMonitor_v2_50.Reinforcing", "box_Ordered_Output_56.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_64_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_68()
  l0 = self.box_MultipleOR_68
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1596226072", "1596226072", "S11M020_Main", "box_Ordered_Output_64.Out", "box_MultipleOR_68.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_64_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|868110070"
  l0.Out = self.f_box_Simple_Node_57_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|297054972", "297054972", "S11M020_Main", "box_Ordered_Output_64.Out", "box_Simple_Node_57.In", clone, l0)
  l0:In()
end
function export:f_box_MissionMessageController_v3_26_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_37
  l0.HackableEntity = "9223372053877288828"
  l0.ProfileLinkedToHack = 1
  l0 = self.box_MissionMessageController_v3_26
  l1 = self.box_HackableController_v2_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|834901003", "834901003", "S11M020_Main", "box_MissionMessageController_v3_26.Out", "box_HackableController_v2_37.EnableHack", l0, l1)
  l1:EnableHack()
end
function export:f_box_PlaySound_v2_110_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_107
  l0.Entity = "9223372057817678071"
  l0.SoundId = "soundbinary/3436307579.bnk"
  l0 = self.box_PlaySound_v2_110
  l1 = self.box_PlaySound_v2_107
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|2104698609", "2104698609", "S11M020_Main", "box_PlaySound_v2_110.Started", "box_PlaySound_v2_107.Play", l0, l1)
  l1:Play()
end
function export:f_box_MultipleOR_54_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_27
  l0.ObjectiveSub2 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S11.S11M020.Objectives.Objective040",
    item = "Objective",
    id = "675091"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_MultipleOR_54
  l1 = self.box_MissionMessageController_v3_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|2041613730", "2041613730", "S11M020_Main", "box_MultipleOR_54.Out", "box_MissionMessageController_v3_27.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_SetActionMap_v2_87_Popped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_12()
  l0 = self.box_MultipleOR_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1885894944", "1885894944", "S11M020_Main", "box_SetActionMap_v2_87.Popped", "box_MultipleOR_12.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_MissionMessageController_v3_102_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_100
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421346344"
  l0 = self.box_MissionMessageController_v3_102
  l1 = self.box_PhoneCommunicationController_100
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|992377012", "992377012", "S11M020_Main", "box_MissionMessageController_v3_102.Out", "box_PhoneCommunicationController_100.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_OnceOnly_v3_42_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_22()
  l0 = self.box_OnceOnly_v3_42
  l1 = self.box_Multiple_AND_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1251336175", "1251336175", "S11M020_Main", "box_OnceOnly_v3_42.Out", "box_Multiple_AND_22.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_Get_Player_ID_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_4()
  l0 = self.box_MultipleOR_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|279331964", "279331964", "S11M020_Main", "box_Get_Player_ID_1.Out", "box_MultipleOR_4.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_HackableController_v2_25_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_22()
  l0 = self.box_HackableController_v2_25
  l1 = self.box_Multiple_AND_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|209503550", "209503550", "S11M020_Main", "box_HackableController_v2_25.Disabled", "box_Multiple_AND_22.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_HackableController_v2_37_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Hack_Gameplay_41
  l0.Entity = "9223372053877288828"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Download",
    id = "189898"
  }
  l0.IsManagingInteraction = 1
  l0.DisplayObjectiveDistance = 1
  l0 = self.box_HackableController_v2_37
  l1 = self.box_Hack_Gameplay_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|18113282", "18113282", "S11M020_Main", "box_HackableController_v2_37.Enabled", "box_Hack_Gameplay_41.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_70_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372056600135905"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1043804923"
  l0.Started = self.f_box_ParticleFXController_v2_71_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0 = self.box_Timer_v2_70
  l1 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1399142563", "1399142563", "S11M020_Main", "box_Timer_v2_70.TimeElapsed", "box_ParticleFXController_v2_71.Start", l0, l1)
  l1:Start()
end
function export:f_box_Simple_Node_57_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|188706018"
  l0.Out = self.f_box_Simple_Node_58_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1242069477", "1242069477", "S11M020_Main", "box_Simple_Node_57.Out", "box_Simple_Node_58.In", clone, l0)
  l0:In()
end
function export:f_box_ParticleFXController_v2_69_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372056600135898"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1899892505"
  l0.Started = self.f_box_ParticleFXController_v2_77_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1426971769", "1426971769", "S11M020_Main", "box_ParticleFXController_v2_69.Started", "box_ParticleFXController_v2_77.Start", clone, l0)
  l0:Start()
end
function export:f_box_Escape_Gameplay_74_Escaped()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Reinforcement_Started
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1408417667"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_53_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_53_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_Escape_Gameplay_74
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|44842025", "44842025", "S11M020_Main", "box_Escape_Gameplay_74.Escaped", "box_Compare_Boolean_v2_53.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_118_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_119
  l0.Entity = "9223372057851047015"
  l0.SoundId = "soundbinary/1797200237.bnk"
  l0 = self.box_Timer_v2_118
  l1 = self.box_PlaySound_v2_119
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1021056438", "1021056438", "S11M020_Main", "box_Timer_v2_118.TimeElapsed", "box_PlaySound_v2_119.Play", l0, l1)
  l1:Play()
end
function export:f_box_MultipleOR_55_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_111
  l0.Entity = "9223372057817678073"
  l0.SoundId = "soundbinary/1069305775.bnk"
  l0 = self.box_MultipleOR_55
  l1 = self.box_PlaySound_v2_111
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|166423184", "166423184", "S11M020_Main", "box_MultipleOR_55.Out", "box_PlaySound_v2_111.Play", l0, l1)
  l1:Play()
end
function export:f_box_PGTController_v2_8_AllSpawned()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372048590894495"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1722681927"
  l0.Out = self.f_box_AI_Agent_Zone_21_Out
  l0 = self.box_PGTController_v2_8
  l1 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1872163576", "1872163576", "S11M020_Main", "box_PGTController_v2_8.AllSpawned", "box_AI_Agent_Zone_21.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_ParticleFXController_v2_71_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372056600135902"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1150210424"
  l0.Started = self.f_box_ParticleFXController_v2_72_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|622106522", "622106522", "S11M020_Main", "box_ParticleFXController_v2_71.Started", "box_ParticleFXController_v2_72.Start", clone, l0)
  l0:Start()
end
function export:f_box_Get_Player_ID_36_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PGTController_v2_20
  l0.PGTMissionArea = "9223372046778229399"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1867670230", "1867670230", "S11M020_Main", "box_Get_Player_ID_36.Out", "box_PGTController_v2_20.Start", clone, l0)
  l0:Start()
end
function export:f_box_Show_Or_Hide_All_UI_86_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "no_controls"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_87"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|755394343"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_box_SetActionMap_v2_87_Popped
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|940284548", "940284548", "S11M020_Main", "box_Show_Or_Hide_All_UI_86.Shown", "box_SetActionMap_v2_87.Pop", clone, l0)
  l0:Pop()
end
function export:f_box_CinematicPrep_85_PreOut()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_88
  l0.SceneEntity = "9223372058541296989"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S11/S11_M020_OpenDoor_CINEMA/s11_m020_opendoor_cinema.seq"
  l0 = self.box_CinematicPrep_85
  l1 = self.box_PlaySequence_v5_88
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|641735033", "641735033", "S11M020_Main", "box_CinematicPrep_85.PreOut", "box_PlaySequence_v5_88.Start", l0, l1)
  l1:Start()
end
function export:f_box_MissionCheckpointReach_3_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "no_controls"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_84"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1392730264"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_box_SetActionMap_v2_84_Pushed
  l0.Popped = DummyFunction
  l0 = self.box_MissionCheckpointReach_3
  l1 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|195273230", "195273230", "S11M020_Main", "box_MissionCheckpointReach_3.Out", "box_SetActionMap_v2_84.Push", l0, l1)
  l1:Push()
end
function export:f_box_PlaySound_v2_116_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_118
  l0.Seconds = 0.5
  l0 = self.box_PlaySound_v2_116
  l1 = self.box_Timer_v2_118
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|15593118", "15593118", "S11M020_Main", "box_PlaySound_v2_116.Started", "box_Timer_v2_118.Start", l0, l1)
  l1:Start()
end
function export:f_box_ParticleFXController_v2_72_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372056600135895"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_78"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1456998735"
  l0.Started = self.f_box_ParticleFXController_v2_78_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|385930134", "385930134", "S11M020_Main", "box_ParticleFXController_v2_72.Started", "box_ParticleFXController_v2_78.Start", clone, l0)
  l0:Start()
end
function export:f_box_Download_Gameplay_11_DownloadCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_45
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421346349"
  l0 = self.box_Download_Gameplay_11
  l1 = self.box_PhoneCommunicationController_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|628384641", "628384641", "S11M020_Main", "box_Download_Gameplay_11.DownloadCompleted", "box_PhoneCommunicationController_45.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Download_Gameplay_11_Ratio1Reached()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_44
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421346345"
  l0 = self.box_Download_Gameplay_11
  l1 = self.box_PhoneCommunicationController_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1006997493", "1006997493", "S11M020_Main", "box_Download_Gameplay_11.Ratio1Reached", "box_PhoneCommunicationController_44.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Timer_v2_66_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372056600135904"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1245793069"
  l0.Started = self.f_box_ParticleFXController_v2_67_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0 = self.box_Timer_v2_66
  l1 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|322389799", "322389799", "S11M020_Main", "box_Timer_v2_66.TimeElapsed", "box_ParticleFXController_v2_67.Start", l0, l1)
  l1:Start()
end
function export:f_box_PhoneCommunicationController_100_StartCommunicationOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1594742439"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_16_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_16_Out_1
  l0 = self.box_PhoneCommunicationController_100
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|66906811", "66906811", "S11M020_Main", "box_PhoneCommunicationController_100.StartCommunicationOut", "box_Ordered_Output_16.In", l0, l1)
  l1:In()
end
function export:f_box_ParticleFXController_v2_113_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372056303576086"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_115"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1825645664"
  l0.Started = self.f_box_ParticleFXController_v2_115_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1806270752", "1806270752", "S11M020_Main", "box_ParticleFXController_v2_113.Stopped", "box_ParticleFXController_v2_115.Start", clone, l0)
  l0:Start()
end
function export:f_box_AISquadStateController_89_TargetedSearchSet()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MissionZone_52()
  l0 = self.box_AISquadStateController_89
  l1 = self.box_MissionZone_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1753009830", "1753009830", "S11M020_Main", "box_AISquadStateController_89.TargetedSearchSet", "box_MissionZone_52.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Hack_Gameplay_31_Hacked()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1569521045"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_59_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_59_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_59_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_59_Out_3
  l0 = self.box_Hack_Gameplay_31
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1240279530", "1240279530", "S11M020_Main", "box_Hack_Gameplay_31.Hacked", "box_Ordered_Output_59.In", l0, l1)
  l1:In()
end
function export:f_box_AI_Agent_Zone_9_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_92
  l0.HackableEntity = "9223372053877288828"
  l0.ProfileLinkedToHack = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|696175430", "696175430", "S11M020_Main", "box_AI_Agent_Zone_9.Out", "box_HackableController_v2_92.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_Timer_v2_114_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = nil
  l0.ParticleEmitterList = self.List_ParticleSpray
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_113"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1213066186"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Stopped = self.f_box_ParticleFXController_v2_113_Stopped
  l0.Cleaned = DummyFunction
  l0 = self.box_Timer_v2_114
  l1 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|335907000", "335907000", "S11M020_Main", "box_Timer_v2_114.TimeElapsed", "box_ParticleFXController_v2_113.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_ParticleFXController_v2_67_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372056600135901"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|889689599"
  l0.Started = self.f_box_ParticleFXController_v2_69_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1939111724", "1939111724", "S11M020_Main", "box_ParticleFXController_v2_67.Started", "box_ParticleFXController_v2_69.Start", clone, l0)
  l0:Start()
end
function export:f_box_MissionZone_52_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_46
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421346356"
  l0 = self.box_MissionZone_52
  l1 = self.box_PhoneCommunicationController_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1880895804", "1880895804", "S11M020_Main", "box_MissionZone_52.Disabled", "box_PhoneCommunicationController_46.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_ReinforcementSystemController_v2_49_ReinforcingStarted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|201693915", "201693915", "S11M020_Main", "box_ReinforcementSystemController_v2_49.ReinforcingStarted", "box_SetBoolean_v2_51.True", clone, l0)
  l0:True()
end
function export:f_box_ReinforcementSystemController_v2_49_ReinforcingStopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_55()
  l0 = self.box_MultipleOR_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1803382610", "1803382610", "S11M020_Main", "box_ReinforcementSystemController_v2_49.ReinforcingStopped", "box_MultipleOR_55.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_HackableController_v2_29_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_25
  l0.HackableEntity = "9223372056982510343"
  l0.ProfileLinkedToHack = 1
  l0 = self.box_HackableController_v2_29
  l1 = self.box_HackableController_v2_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|415097026", "415097026", "S11M020_Main", "box_HackableController_v2_29.Disabled", "box_HackableController_v2_25.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_AISquadRelationshipController_32_RelationshipSet()
  local l0, l1
  self = self._graph
  l0 = self.box_AISquadStateController_89
  l0.Position = "9223372056982510343"
  l0.Affiliation = "T_13"
  l0 = self.box_AISquadRelationshipController_32
  l1 = self.box_AISquadStateController_89
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1599959341", "1599959341", "S11M020_Main", "box_AISquadRelationshipController_32.RelationshipSet", "box_AISquadStateController_89.SetInTargetedSearch", l0, l1)
  l1:SetInTargetedSearch()
end
function export:f_box_Simple_Node_61_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_54()
  l0 = self.box_MultipleOR_54
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|947108212", "947108212", "S11M020_Main", "box_Simple_Node_61.Out", "box_MultipleOR_54.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_SetActionMap_v2_84_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_83"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1983692078"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_Show_Or_Hide_All_UI_83_Hidden
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1687401113", "1687401113", "S11M020_Main", "box_SetActionMap_v2_84.Pushed", "box_Show_Or_Hide_All_UI_83.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_ParticleFXController_v2_73_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_99
  l0.Entity = "9223372057622446882"
  l0.SoundId = "soundbinary/1526129229.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|66221197", "66221197", "S11M020_Main", "box_ParticleFXController_v2_73.Started", "box_PlaySound_v2_99.Play", clone, l0)
  l0:Play()
end
function export:f_box_Compare_Boolean_v2_53_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_55()
  l0 = self.box_MultipleOR_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1398317657", "1398317657", "S11M020_Main", "box_Compare_Boolean_v2_53.A_is_False", "box_MultipleOR_55.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Compare_Boolean_v2_53_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ReinforcementSystemController_v2_49()
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1153400543", "1153400543", "S11M020_Main", "box_Compare_Boolean_v2_53.A_is_True", "box_ReinforcementSystemController_v2_49.StopReinforcing", clone, l0)
  l0:StopReinforcing()
end
function export:f_box_ParticleFXController_v2_62_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372056600135900"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|395272286"
  l0.Started = self.f_box_ParticleFXController_v2_65_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|255189754", "255189754", "S11M020_Main", "box_ParticleFXController_v2_62.Started", "box_ParticleFXController_v2_65.Start", clone, l0)
  l0:Start()
end
function export:f_box_LMA_Layer_Controller_24_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_30
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_LMA_Layer_Controller_24
  l1 = self.box_CinematicPrep_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1608548513", "1608548513", "S11M020_Main", "box_LMA_Layer_Controller_24.Unloaded", "box_CinematicPrep_30.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_ParticleFXController_v2_78_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_103
  l0.Entity = "9223372057817678065"
  l0.SoundId = "soundbinary/4044913383.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|517122614", "517122614", "S11M020_Main", "box_ParticleFXController_v2_78.Started", "box_PlaySound_v2_103.Play", clone, l0)
  l0:Play()
end
function export:f_box_PlaySequence_v5_39_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_42()
  l0 = self.box_PlaySequence_v5_39
  l1 = self.box_OnceOnly_v3_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|268475553", "268475553", "S11M020_Main", "box_PlaySequence_v5_39.Finished", "box_OnceOnly_v3_42.In", l0, l1)
  l1:In(2)
end
function export:f_box_PlaySequence_v5_39_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_42()
  l0 = self.box_PlaySequence_v5_39
  l1 = self.box_OnceOnly_v3_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1536159781", "1536159781", "S11M020_Main", "box_PlaySequence_v5_39.Skipped", "box_OnceOnly_v3_42.In", l0, l1)
  l1:In(1)
end
function export:f_box_PhoneCommunicationController_45_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_23
  l0.ObjectiveSub2 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S11.S11M020.Objectives.Objective040",
    item = "Objective",
    id = "675091"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_PhoneCommunicationController_45
  l1 = self.box_MissionMessageController_v3_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1222342324", "1222342324", "S11M020_Main", "box_PhoneCommunicationController_45.OnCommunicationFinished", "box_MissionMessageController_v3_23.UpdateObjective", l0, l1)
  l1:UpdateObjective()
end
function export:f_box_Simple_Node_63_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1382562621"
  l0.Out = self.f_box_Simple_Node_61_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|240398681", "240398681", "S11M020_Main", "box_Simple_Node_63.Out", "box_Simple_Node_61.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_59_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_60
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|298760754", "298760754", "S11M020_Main", "box_Ordered_Output_59.Out", "box_ListWriter_60.Add", clone, l0)
  l0:Add()
end
function export:f_box_Ordered_Output_59_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372056600135903"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1442242508"
  l0.Started = self.f_box_ParticleFXController_v2_62_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1819749033", "1819749033", "S11M020_Main", "box_Ordered_Output_59.Out", "box_ParticleFXController_v2_62.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_59_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_95
  l0.Entity = "9223372057817678057"
  l0.SoundId = "soundbinary/777322241.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1613569063", "1613569063", "S11M020_Main", "box_Ordered_Output_59.Out", "box_PlaySound_v2_95.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_59_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_48
  l0.Seconds = 3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|957967726", "957967726", "S11M020_Main", "box_Ordered_Output_59.Out", "box_Timer_v2_48.Start", clone, l0)
  l0:Start()
end
function export:f_box_Simple_Node_19_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_42()
  l0 = self.box_OnceOnly_v3_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1983295053", "1983295053", "S11M020_Main", "box_Simple_Node_19.Out", "box_OnceOnly_v3_42.In", clone, l0)
  l0:In(0)
end
function export:f_box_Ordered_Output_16_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1746572059"
  l0.Out = self.f_box_Simple_Node_5_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|2012852754", "2012852754", "S11M020_Main", "box_Ordered_Output_16.Out", "box_Simple_Node_5.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_16_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Reach_Gameplay_14
  l0.Entity_AreaRadius = 0
  l0.MissionArea = "9223372051800818762"
  l0.AutoGPS = 1
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1757495462", "1757495462", "S11M020_Main", "box_Ordered_Output_16.Out", "box_Reach_Gameplay_14.Start", clone, l0)
  l0:Start()
end
function export:f_box_PlaySequence_v5_88_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_39
  l0.SceneEntity = "9223372047927281821"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S11/S11_HoratioDeath_CIN/s11_horatiodeath_cin.seq"
  l0 = self.box_PlaySequence_v5_88
  l1 = self.box_PlaySequence_v5_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|631302936", "631302936", "S11M020_Main", "box_PlaySequence_v5_88.Finished", "box_PlaySequence_v5_39.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlaySequence_v5_88_Skipped()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1593561001"
  l0.Out = self.f_box_Simple_Node_19_Out
  l0 = self.box_PlaySequence_v5_88
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|648884932", "648884932", "S11M020_Main", "box_PlaySequence_v5_88.Skipped", "box_Simple_Node_19.In", l0, l1)
  l1:In()
end
function export:f_box_PlaySequence_v5_88_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_PGTController_v2_8
  l0.PGTMissionArea = "9223372046778229399"
  l0 = self.box_PlaySequence_v5_88
  l1 = self.box_PGTController_v2_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1482026489", "1482026489", "S11M020_Main", "box_PlaySequence_v5_88.Started", "box_PGTController_v2_8.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlaySound_v2_95_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_105
  l0.Seconds = 1
  l0 = self.box_PlaySound_v2_95
  l1 = self.box_Timer_v2_105
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|146612968", "146612968", "S11M020_Main", "box_PlaySound_v2_95.Out", "box_Timer_v2_105.Start", l0, l1)
  l1:Start()
end
function export:f_box_ParticleFXController_v2_80_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_81
  l0.Seconds = self.ParticleSpray_Timer
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|245911142", "245911142", "S11M020_Main", "box_ParticleFXController_v2_80.Started", "box_Timer_v2_81.Start", clone, l0)
  l0:Start()
end
function export:f_box_HackableController_v2_92_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_93
  l0.HackableEntity = "9223372056982510343"
  l0.ProfileLinkedToHack = 1
  l0 = self.box_HackableController_v2_92
  l1 = self.box_HackableController_v2_93
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1713768006", "1713768006", "S11M020_Main", "box_HackableController_v2_92.Disabled", "box_HackableController_v2_93.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_Simple_Node_13_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionZone_52()
  l0 = self.box_MissionZone_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1187569790", "1187569790", "S11M020_Main", "box_Simple_Node_13.Out", "box_MissionZone_52.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Timer_v2_105_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_106
  l0.Entity = "9223372057817678063"
  l0.SoundId = "soundbinary/1134021737.bnk"
  l0 = self.box_Timer_v2_105
  l1 = self.box_PlaySound_v2_106
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1448268278", "1448268278", "S11M020_Main", "box_Timer_v2_105.TimeElapsed", "box_PlaySound_v2_106.Play", l0, l1)
  l1:Play()
end
function export:f_box_HackableController_v2_93_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_34
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_HackableController_v2_93
  l1 = self.box_CinematicPrep_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1773962376", "1773962376", "S11M020_Main", "box_HackableController_v2_93.Disabled", "box_CinematicPrep_34.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_MissionMessageController_v3_23_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_10
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S11.S11M020.Objectives.Objective030",
    item = "Objective",
    id = "353382"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_MissionMessageController_v3_23
  l1 = self.box_MissionMessageController_v3_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1067755224", "1067755224", "S11M020_Main", "box_MissionMessageController_v3_23.Out", "box_MissionMessageController_v3_10.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_AI_Agent_Zone_21_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_29
  l0.HackableEntity = "9223372053877288828"
  l0.ProfileLinkedToHack = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1813150397", "1813150397", "S11M020_Main", "box_AI_Agent_Zone_21.Out", "box_HackableController_v2_29.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_MissionLayer_v2_35_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1084018694"
  l0.Out = self.f_box_Get_Player_ID_36_Out
  l0 = self.box_MissionLayer_v2_35
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|445397380", "445397380", "S11M020_Main", "box_MissionLayer_v2_35.Loaded", "box_Get_Player_ID_36.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_48_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_40
  l0.SoundId = "soundbinary/2103974382.bnk"
  l0 = self.box_Timer_v2_48
  l1 = self.box_PlayDialog_v2_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|2069651428", "2069651428", "S11M020_Main", "box_Timer_v2_48.TimeElapsed", "box_PlayDialog_v2_40.Start", l0, l1)
  l1:Start()
end
function export:f_box_EntityLoadingMonitor_121_AllLoaded()
  local l0
  self = self._graph
  self:OnEnter_box_EntityLoadingMonitor_121()
  l0 = self.box_EntityLoadingMonitor_121
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|134218538", "134218538", "S11M020_Main", "box_EntityLoadingMonitor_121.AllLoaded", "box_EntityLoadingMonitor_121.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_EntityLoadingMonitor_121_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372069557598633"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1912555673"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_EntityLoadingMonitor_121
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|637407518", "637407518", "S11M020_Main", "box_EntityLoadingMonitor_121.Disabled", "box_VisibilityController_v2_43.Show", l0, l1)
  l1:Show()
end
function export:f_box_EntityLoadingMonitor_121_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Teleport_To_SpawnPoint_75
  l0.SpawnPoint = "9223372053562787547"
  l0.UseFadeToBlack = 0
  l0.KeepBlackScreenOnExit = 1
  l0 = self.box_EntityLoadingMonitor_121
  l1 = self.box_Teleport_To_SpawnPoint_75
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1360415421", "1360415421", "S11M020_Main", "box_EntityLoadingMonitor_121.Enabled", "box_Teleport_To_SpawnPoint_75.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_5_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1689967780"
  l0.Out = self.f_box_Simple_Node_13_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1222306370", "1222306370", "S11M020_Main", "box_Simple_Node_5.Out", "box_Simple_Node_13.In", clone, l0)
  l0:In()
end
function export:f_box_Cinema_Zone_Cleanup_96_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_85
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1150952904", "1150952904", "S11M020_Main", "box_Cinema_Zone_Cleanup_96.Out", "box_CinematicPrep_85.PreCinematic", clone, l0)
  l0:PreCinematic()
end
function export:f_box_LMA_Layer_Controller_15_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "S11M020_Main"
  l0 = self.box_LMA_Layer_Controller_15
  l1 = self.box_MissionLayer_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|463696222", "463696222", "S11M020_Main", "box_LMA_Layer_Controller_15.Loaded", "box_MissionLayer_v2_2.Load", l0, l1)
  l1:Load()
end
function export:f_box_ParticleFXController_v2_115_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_98"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|469204888"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_98_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_98_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1856481047", "1856481047", "S11M020_Main", "box_ParticleFXController_v2_115.Started", "box_Ordered_Output_98.In", clone, l0)
  l0:In()
end
function export:f_box_PlaySound_v2_99_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_66
  l0.Seconds = self.ParticleSpray_Timer
  l0 = self.box_PlaySound_v2_99
  l1 = self.box_Timer_v2_66
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|93526676", "93526676", "S11M020_Main", "box_PlaySound_v2_99.Out", "box_Timer_v2_66.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlaySound_v2_111_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Mission_End_47()
  l0 = self.box_PlaySound_v2_111
  l1 = self.box_Mission_End_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1844958457", "1844958457", "S11M020_Main", "box_PlaySound_v2_111.Out", "box_Mission_End_47.End", l0, l1)
  l1:End()
end
function export:f_box_Timer_v2_109_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_108
  l0.Entity = "9223372057817678073"
  l0.SoundId = "soundbinary/1957660117.bnk"
  l0 = self.box_Timer_v2_109
  l1 = self.box_PlaySound_v2_108
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|706834698", "706834698", "S11M020_Main", "box_Timer_v2_109.TimeElapsed", "box_PlaySound_v2_108.Play", l0, l1)
  l1:Play()
end
function export:f_box_SetBoolean_v2_51_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_51
  self.Reinforcement_Started = l0.Target
end
function export:f_box_SetBoolean_v2_51_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_51
  self.Reinforcement_Started = l0.Target
end
function export:f_box_SetBoolean_v2_51_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_51
  self.Reinforcement_Started = l0.Target
end
function export:f_box_SetBoolean_v2_51_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_51
  self.Reinforcement_Started = l0.Target
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1545719669"
  l0.Out = self.f_box_Simple_Node_63_Out
  l0 = self.box_SetBoolean_v2_51
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1585024919", "1585024919", "S11M020_Main", "box_SetBoolean_v2_51.SetTrue", "box_Simple_Node_63.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_51_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_51
  self.Reinforcement_Started = l0.Target
end
function export:f_box_PlaySound_v2_107_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_109
  l0.Seconds = 2
  l0 = self.box_PlaySound_v2_107
  l1 = self.box_Timer_v2_109
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|429264965", "429264965", "S11M020_Main", "box_PlaySound_v2_107.Started", "box_Timer_v2_109.Start", l0, l1)
  l1:Start()
end
function export:f_box_Teleport_To_SpawnPoint_75_TeleportDone()
  local l0, l1
  self = self._graph
  l0 = self.box_LMA_Layer_Controller_24
  l0.Interior = 1
  l0.LMALayerName = "OAK_02_Fruitvale_HoratioHouse"
  l0 = self.box_Teleport_To_SpawnPoint_75
  l1 = self.box_LMA_Layer_Controller_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|992962858", "992962858", "S11M020_Main", "box_Teleport_To_SpawnPoint_75.TeleportDone", "box_LMA_Layer_Controller_24.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_ParticleFXController_v2_77_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_70
  l0.Seconds = self.ParticleSpray_Timer
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|201833139", "201833139", "S11M020_Main", "box_ParticleFXController_v2_77.Started", "box_Timer_v2_70.Start", clone, l0)
  l0:Start()
end
function export:f_box_Get_Player_ID_7_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_4()
  l0 = self.box_MultipleOR_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|699050767", "699050767", "S11M020_Main", "box_Get_Player_ID_7.Out", "box_MultipleOR_4.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_PlaySound_v2_103_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_79
  l0.Seconds = self.ParticleSpray_Timer
  l0 = self.box_PlaySound_v2_103
  l1 = self.box_Timer_v2_79
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1091220924", "1091220924", "S11M020_Main", "box_PlaySound_v2_103.Out", "box_Timer_v2_79.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_68_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_ReinforcementSystemMonitor_v2_50()
  l0 = self.box_MultipleOR_68
  l1 = self.box_ReinforcementSystemMonitor_v2_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1090578190", "1090578190", "S11M020_Main", "box_MultipleOR_68.Out", "box_ReinforcementSystemMonitor_v2_50.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MissionCheckpointReach_33_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_102
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S11.S11M020.Objectives.Objective020",
    item = "Objective",
    id = "353028"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_MissionCheckpointReach_33
  l1 = self.box_MissionMessageController_v3_102
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|396008778", "396008778", "S11M020_Main", "box_MissionCheckpointReach_33.Out", "box_MissionMessageController_v3_102.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_Show_Or_Hide_All_UI_83_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372069557598633"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|79189584"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_18_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|950839817", "950839817", "S11M020_Main", "box_Show_Or_Hide_All_UI_83.Hidden", "box_VisibilityController_v2_18.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_PhoneCommunicationController_46_StartCommunicationOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_ReinforcementSystemMonitor_v2_50()
  l0 = self.box_PhoneCommunicationController_46
  l1 = self.box_ReinforcementSystemMonitor_v2_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1436514136", "1436514136", "S11M020_Main", "box_PhoneCommunicationController_46.StartCommunicationOut", "box_ReinforcementSystemMonitor_v2_50.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Stim_Emitter_Controller_28_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/StimEmitterController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/StimEmitterController.lua")]
  l0.StimEmitter = "9223372071029959823"
  l0._graph = self
  l0._name = "box_Stim_Emitter_Controller_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|2075326582"
  l0.Out = DummyFunction
  l0.Enabled = self.f_box_Stim_Emitter_Controller_38_Enabled
  l0.Disabled = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1629922133", "1629922133", "S11M020_Main", "box_Stim_Emitter_Controller_28.Enabled", "box_Stim_Emitter_Controller_38.SetEnabled", clone, l0)
  l0:SetEnabled()
end
function export:f_box_PlaySound_v2_106_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_117
  l0.Seconds = 1
  l0 = self.box_PlaySound_v2_106
  l1 = self.box_Timer_v2_117
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1224493750", "1224493750", "S11M020_Main", "box_PlaySound_v2_106.Started", "box_Timer_v2_117.Start", l0, l1)
  l1:Start()
end
function export:f_box_Stim_Emitter_Controller_38_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/StimEmitterController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AISquadRelationshipController_32
  l0.Affiliation = "T_13"
  l0.Relationship = "Threat"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1474979860", "1474979860", "S11M020_Main", "box_Stim_Emitter_Controller_38.Enabled", "box_AISquadRelationshipController_32.SetRelationship", clone, l0)
  l0:SetRelationship()
end
function export:f_box_CinematicPrep_30_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_86"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1086603483"
  l0.Out = DummyFunction
  l0.Shown = self.f_box_Show_Or_Hide_All_UI_86_Shown
  l0.Hidden = DummyFunction
  l0 = self.box_CinematicPrep_30
  l1 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|680571059", "680571059", "S11M020_Main", "box_CinematicPrep_30.PostOut", "box_Show_Or_Hide_All_UI_86.Show", l0, l1)
  l1:Show()
end
function export:f_box_ParticleFXController_v2_82_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_104
  l0.Entity = "9223372057817678069"
  l0.SoundId = "soundbinary/1336825784.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|742578977", "742578977", "S11M020_Main", "box_ParticleFXController_v2_82.Started", "box_PlaySound_v2_104.Play", clone, l0)
  l0:Play()
end
function export:OnEnter_box_Multiple_AND_22()
end
function export:OnEnter_box_MultipleOR_12()
end
function export:OnEnter_box_MultipleOR_4()
end
function export:OnEnter_box_ReinforcementSystemMonitor_v2_50()
  local l0
  l0 = self.box_ReinforcementSystemMonitor_v2_50
  l0.Affiliation = "T_13"
  l0.CheckNow = 1
end
function export:OnEnter_box_MultipleOR_54()
end
function export:OnEnter_box_OnceOnly_v3_42()
end
function export:OnEnter_box_MultipleOR_55()
end
function export:OnEnter_box_MissionZone_52()
  local l0
  l0 = self.box_MissionZone_52
  l0.MissionArea = "9223372048492637882"
  l0.MissionLayer = "S11M020_Main"
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
end
function export:OnEnter_box_ReinforcementSystemController_v2_49()
  local l0
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  l0.Target = nil
  l0.Affiliation = "T_13"
  l0.ReinforcementConfig = "ReinforcementConfig.9223372043023253487"
  l0.AgentList = nil
  l0.Center = nil
  l0.UnspawnOnStop = nil
  l0._graph = self
  l0._name = "box_ReinforcementSystemController_v2_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M020\\S11M020.domino|@S11M020_Main|1286410574"
  l0.Out = DummyFunction
  l0.ReinforcingStarted = self.f_box_ReinforcementSystemController_v2_49_ReinforcingStarted
  l0.ReinforcingStopped = self.f_box_ReinforcementSystemController_v2_49_ReinforcingStopped
  l0.ReinforcementLocationFixed = DummyFunction
  l0.ReinforcementLocationReleased = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
end
function export:OnEnter_box_Mission_End_47()
  local l0
  l0 = self.box_Mission_End_47
  l0.Checkpoint = "CheckPoint_2"
  l0.MissionLayer = "S11M020_Main"
  l0.ShowMissionComplete = 1
end
function export:OnEnter_box_EntityLoadingMonitor_121()
  local l0
  l0 = self.box_EntityLoadingMonitor_121
  l0.Entity = "9223372069557598633"
end
function export:OnEnter_box_MultipleOR_68()
end
_compilerVersion = 4
