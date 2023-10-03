export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AISquadStateController.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Escape_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Hack_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/System/LMALayerController.lua")
  cbox:RegisterBox("domino/System/MediaSystemCustomBroadcastController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MissionMusicController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  cbox:RegisterBox("domino/System/MissionZoneController.lua")
  cbox:RegisterBox("domino/System/MoveableEntityMonitor.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PawnHealthController.lua")
  cbox:RegisterBox("domino/System/PGTController_v2.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/System/PlayerStateController.lua")
  cbox:RegisterBox("domino/Library/common/MissionSpecificIngredients.PlayerOnlyTriggerNoRCTip.debug.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S02/S02M050/s02m050_cin_exposedbeliefs.S02M050_CIN_ExposedBeliefs_Main.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S02/S02M050/s02m050_cin_meetjimmytemple.S02M050_CIN_MeetJimmyTemple_Main.debug.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/TeleportToSpawnPoint.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
  cbox:LoadResource("soundbinary/3136382409.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2990335432.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1276477224.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1964194031.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3215721332.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/396836298.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/533720278.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/777344799.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "S02M050_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main"
  self.PlayerEntity = nil
  self.IsTeleported = 0
  self.box_MissionZone_29 = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  l0 = self.box_MissionZone_29
  l0._graph = self
  l0._name = "box_MissionZone_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|7209241"
  l0.Enabled = self.f_box_MissionZone_29_Enabled
  l0.Disabled = DummyFunction
  l0.SoftQuitCompleted = DummyFunction
  self.box_AISquadStateController_128 = cbox:CreateBox("domino/System/AISquadStateController.lua")
  l0 = self.box_AISquadStateController_128
  l0._graph = self
  l0._name = "box_AISquadStateController_128"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|26983259"
  l0.WanderSet = DummyFunction
  l0.AwareSet = DummyFunction
  l0.UntargetedSearchSet = DummyFunction
  l0.TargetedSearchSet = DummyFunction
  l0.CombatSet = DummyFunction
  l0.VanishSet = self.f_box_AISquadStateController_128_VanishSet
  l0.SearchOverrideParamsSet = DummyFunction
  l0.SearchOverrideParamsReset = DummyFunction
  l0.SquadBhvParamsSet = DummyFunction
  l0.SquadBhvParamsCleared = DummyFunction
  l0.SquadRemoved = DummyFunction
  self.box_CinematicPrep_101 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_101
  l0._graph = self
  l0._name = "box_CinematicPrep_101"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|29076936"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_101_PostOut
  self.box_TriggerMonitor_v2_65 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_65
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|46306360"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TriggerMonitor_v2_65_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_65_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MultipleOR_76 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_76
  l0._graph = self
  l0._name = "box_MultipleOR_76"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|81200642"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_76_Out
  self.box_PlaySequence_v5_56 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_56
  l0._graph = self
  l0._name = "box_PlaySequence_v5_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|84222289"
  l0.Started = self.f_box_PlaySequence_v5_56_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_56_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_56_Finished
  self.box_PlayDialog_v2_22 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_22
  l0._graph = self
  l0._name = "box_PlayDialog_v2_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|84929559"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_22_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = self.f_box_PlayDialog_v2_22_Interrupted
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_HackableController_v2_104 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_104
  l0._graph = self
  l0._name = "box_HackableController_v2_104"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|113370745"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_104_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_HackableController_v2_24 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_24
  l0._graph = self
  l0._name = "box_HackableController_v2_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|137170008"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = self.f_box_HackableController_v2_24_HackForced
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_MultipleOR_54 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_54
  l0._graph = self
  l0._name = "box_MultipleOR_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|216208634"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_54_Out
  self.box_MultipleOR_42 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_42
  l0._graph = self
  l0._name = "box_MultipleOR_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|220036206"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_42_Out
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_AISquadStateController_124 = cbox:CreateBox("domino/System/AISquadStateController.lua")
  l0 = self.box_AISquadStateController_124
  l0._graph = self
  l0._name = "box_AISquadStateController_124"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|235317576"
  l0.WanderSet = DummyFunction
  l0.AwareSet = DummyFunction
  l0.UntargetedSearchSet = DummyFunction
  l0.TargetedSearchSet = DummyFunction
  l0.CombatSet = DummyFunction
  l0.VanishSet = self.f_box_AISquadStateController_124_VanishSet
  l0.SearchOverrideParamsSet = DummyFunction
  l0.SearchOverrideParamsReset = DummyFunction
  l0.SquadBhvParamsSet = DummyFunction
  l0.SquadBhvParamsCleared = DummyFunction
  l0.SquadRemoved = DummyFunction
  self.box_S02M050_CIN_ExposedBeliefs_Main_44 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S02/S02M050/s02m050_cin_exposedbeliefs.S02M050_CIN_ExposedBeliefs_Main.debug.lua")
  l0 = self.box_S02M050_CIN_ExposedBeliefs_Main_44
  l0._graph = self
  l0._name = "box_S02M050_CIN_ExposedBeliefs_Main_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|247699282"
  l0.EndCine = self.f_box_S02M050_CIN_ExposedBeliefs_Main_44_EndCine
  self.box_TriggerMonitor_v2_59 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_59
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|267426789"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_59_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_AISquadStateController_6 = cbox:CreateBox("domino/System/AISquadStateController.lua")
  l0 = self.box_AISquadStateController_6
  l0._graph = self
  l0._name = "box_AISquadStateController_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|273423622"
  l0.WanderSet = DummyFunction
  l0.AwareSet = DummyFunction
  l0.UntargetedSearchSet = DummyFunction
  l0.TargetedSearchSet = DummyFunction
  l0.CombatSet = DummyFunction
  l0.VanishSet = self.f_box_AISquadStateController_6_VanishSet
  l0.SearchOverrideParamsSet = DummyFunction
  l0.SearchOverrideParamsReset = DummyFunction
  l0.SquadBhvParamsSet = DummyFunction
  l0.SquadBhvParamsCleared = DummyFunction
  l0.SquadRemoved = DummyFunction
  self.box_CinematicPrep_45 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_45
  l0._graph = self
  l0._name = "box_CinematicPrep_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|306216607"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_45_PostOut
  self.box_CinematicPrep_7 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_7
  l0._graph = self
  l0._name = "box_CinematicPrep_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|309676041"
  l0.PreOut = self.f_box_CinematicPrep_7_PreOut
  l0.PostOut = DummyFunction
  self.box_MultipleOR_135 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_135
  l0._graph = self
  l0._name = "box_MultipleOR_135"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|326699561"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_135_Out
  self.box_PlayDialog_v2_25 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_25
  l0._graph = self
  l0._name = "box_PlayDialog_v2_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|345239281"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_PlaySound_v2_108 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_108
  l0._graph = self
  l0._name = "box_PlaySound_v2_108"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|347964616"
  l0.Out = DummyFunction
  l0.Started = self.f_box_PlaySound_v2_108_Started
  l0.Finished = DummyFunction
  self.box_MissionMessageController_v3_32 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_32
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|385561175"
  l0.Out = self.f_box_MissionMessageController_v3_32_Out
  l0.MessageCompleted = DummyFunction
  self.box_Teleport_To_SpawnPoint_125 = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self.box_Teleport_To_SpawnPoint_125
  l0._graph = self
  l0._name = "box_Teleport_To_SpawnPoint_125"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|386057999"
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_box_Teleport_To_SpawnPoint_125_TeleportDone
  self.box_HackableController_v2_39 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_39
  l0._graph = self
  l0._name = "box_HackableController_v2_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|396688111"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = self.f_box_HackableController_v2_39_HackForced
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Hack_Gameplay_31 = cbox:CreateBox("domino/Library/common/MissionIngredients.Hack_Gameplay.debug.lua")
  l0 = self.box_Hack_Gameplay_31
  l0._graph = self
  l0._name = "box_Hack_Gameplay_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|408081866"
  l0.Started = self.f_box_Hack_Gameplay_31_Started
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_box_Hack_Gameplay_31_Hacked
  self.box_Timer_v2_57 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_57
  l0._graph = self
  l0._name = "box_Timer_v2_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|434563845"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_57_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_48 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_48
  l0._graph = self
  l0._name = "box_PlaySound_v2_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|459210252"
  l0.Out = self.f_box_PlaySound_v2_48_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_79 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_79
  l0._graph = self
  l0._name = "box_PlaySound_v2_79"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|483007691"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_OnceOnly_v3_3 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_3
  l0._graph = self
  l0._name = "box_OnceOnly_v3_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|571259660"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_3_Out
  l0.ResetOut = DummyFunction
  self.box_MultipleOR_132 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_132
  l0._graph = self
  l0._name = "box_MultipleOR_132"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|617890469"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_132_Out
  self.box_Multiple_AND_134 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_134
  l0._graph = self
  l0._name = "box_Multiple_AND_134"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|635051702"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_134_Out
  self.box_MissionLayer_v2_38 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_38
  l0._graph = self
  l0._name = "box_MissionLayer_v2_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|638576537"
  l0.Loaded = self.f_box_MissionLayer_v2_38_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_PlayerOnlyTriggerNoRCTip_47 = cbox:CreateBox("domino/Library/common/MissionSpecificIngredients.PlayerOnlyTriggerNoRCTip.debug.lua")
  l0 = self.box_PlayerOnlyTriggerNoRCTip_47
  l0._graph = self
  l0._name = "box_PlayerOnlyTriggerNoRCTip_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|653800455"
  l0.Enter = self.f_box_PlayerOnlyTriggerNoRCTip_47_Enter
  self.box_MissionMessageController_v3_9 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_9
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|673885915"
  l0.Out = DummyFunction
  l0.MessageCompleted = self.f_box_MissionMessageController_v3_9_MessageCompleted
  self.box_MultipleOR_107 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_107
  l0._graph = self
  l0._name = "box_MultipleOR_107"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|682728037"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_107_Out
  self.box_PlaySound_v2_61 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_61
  l0._graph = self
  l0._name = "box_PlaySound_v2_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|693937839"
  l0.Out = self.f_box_PlaySound_v2_61_Out
  l0.Started = self.f_box_PlaySound_v2_61_Started
  l0.Finished = DummyFunction
  self.box_HackableController_v2_118 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_118
  l0._graph = self
  l0._name = "box_HackableController_v2_118"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|716435749"
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
  self.box_MissionCheckpointReach_111 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_111
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_111"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|752282316"
  l0.Out = self.f_box_MissionCheckpointReach_111_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MissionLayer_v2_35 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_35
  l0._graph = self
  l0._name = "box_MissionLayer_v2_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|759175416"
  l0.Loaded = self.f_box_MissionLayer_v2_35_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_LMA_Layer_Controller_30 = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self.box_LMA_Layer_Controller_30
  l0._graph = self
  l0._name = "box_LMA_Layer_Controller_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|790144359"
  l0.Loaded = self.f_box_LMA_Layer_Controller_30_Loaded
  l0.Unloaded = DummyFunction
  self.box_MultipleOR_19 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_19
  l0._graph = self
  l0._name = "box_MultipleOR_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|910003497"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_19_Out
  self.box_OnceOnly_v3_5 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_5
  l0._graph = self
  l0._name = "box_OnceOnly_v3_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|944069225"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_5_Out
  l0.ResetOut = DummyFunction
  self.box_PlaySound_v2_81 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_81
  l0._graph = self
  l0._name = "box_PlaySound_v2_81"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1003492922"
  l0.Out = self.f_box_PlaySound_v2_81_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlayDialog_v2_14 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_14
  l0._graph = self
  l0._name = "box_PlayDialog_v2_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1016536775"
  l0.Started = self.f_box_PlayDialog_v2_14_Started
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_PGTController_v2_11 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_11
  l0._graph = self
  l0._name = "box_PGTController_v2_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1017907487"
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_box_PGTController_v2_11_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_Hackable_Monitor_67 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_67
  l0._graph = self
  l0._name = "box_Hackable_Monitor_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1025141949"
  l0.Enabled = self.f_box_Hackable_Monitor_67_Enabled
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_67_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_MultipleOR_37 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_37
  l0._graph = self
  l0._name = "box_MultipleOR_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1028605288"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_37_Out
  self.box_PlaySound_v2_77 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_77
  l0._graph = self
  l0._name = "box_PlaySound_v2_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1032700684"
  l0.Out = self.f_box_PlaySound_v2_77_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_CinematicPrep_100 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_100
  l0._graph = self
  l0._name = "box_CinematicPrep_100"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1062215153"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_100_PostOut
  self.box_PhoneCommunicationController_46 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_46
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1093306958"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_46_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_S02M050_CIN_MeetJimmyTemple_Main_43 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S02/S02M050/s02m050_cin_meetjimmytemple.S02M050_CIN_MeetJimmyTemple_Main.debug.lua")
  l0 = self.box_S02M050_CIN_MeetJimmyTemple_Main_43
  l0._graph = self
  l0._name = "box_S02M050_CIN_MeetJimmyTemple_Main_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1094962331"
  l0.EndCine = self.f_box_S02M050_CIN_MeetJimmyTemple_Main_43_EndCine
  self.box_MissionCheckpointReach_8 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_8
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1105189150"
  l0.Out = DummyFunction
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_HackableController_v2_117 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_117
  l0._graph = self
  l0._name = "box_HackableController_v2_117"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1108068746"
  l0.Enabled = self.f_box_HackableController_v2_117_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Mission_End_122 = cbox:CreateBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  l0 = self.box_Mission_End_122
  l0._graph = self
  l0._name = "box_Mission_End_122"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1120604942"
  self.box_PGTController_v2_113 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_113
  l0._graph = self
  l0._name = "box_PGTController_v2_113"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1134354848"
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_box_PGTController_v2_113_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_Timer_v2_50 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_50
  l0._graph = self
  l0._name = "box_Timer_v2_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1153270043"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_50_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionMessageController_v3_112 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_112
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_112"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1183516404"
  l0.Out = self.f_box_MissionMessageController_v3_112_Out
  l0.MessageCompleted = DummyFunction
  self.box_Moveable_Entity_Monitor_71 = cbox:CreateBox("domino/System/MoveableEntityMonitor.lua")
  l0 = self.box_Moveable_Entity_Monitor_71
  l0._graph = self
  l0._name = "box_Moveable_Entity_Monitor_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1201835042"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Moveable_Entity_Monitor_71_Disabled
  l0.OnMovementStarted = DummyFunction
  l0.OnMovementFinished = self.f_box_Moveable_Entity_Monitor_71_OnMovementFinished
  l0.OnFwdMovementStarted = DummyFunction
  l0.OnFwdMovementFinished = DummyFunction
  l0.OnBkwMovementStarted = DummyFunction
  l0.OnBkwMovementFinished = DummyFunction
  l0.OnMovementBlocked = DummyFunction
  l0.OnMovementUnblocked = DummyFunction
  l0.OnMovementPaused = DummyFunction
  l0.OnMovementUnpaused = DummyFunction
  self.box_MissionLayer_v2_103 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_103
  l0._graph = self
  l0._name = "box_MissionLayer_v2_103"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1204296961"
  l0.Loaded = self.f_box_MissionLayer_v2_103_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_CinematicPrep_15 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_15
  l0._graph = self
  l0._name = "box_CinematicPrep_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1306209928"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_15_PostOut
  self.box_OnceOnly_v3_17 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_17
  l0._graph = self
  l0._name = "box_OnceOnly_v3_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1316499274"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_17_Out
  l0.ResetOut = DummyFunction
  self.box_MissionLayer_v2_109 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_109
  l0._graph = self
  l0._name = "box_MissionLayer_v2_109"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1326806835"
  l0.Loaded = self.f_box_MissionLayer_v2_109_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionCheckpointReach_51 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_51
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1328587328"
  l0.Out = self.f_box_MissionCheckpointReach_51_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MissionMessageController_v3_73 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_73
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1374905383"
  l0.Out = self.f_box_MissionMessageController_v3_73_Out
  l0.MessageCompleted = DummyFunction
  self.box_PlaySequence_v5_13 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_13
  l0._graph = self
  l0._name = "box_PlaySequence_v5_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1398788412"
  l0.Started = self.f_box_PlaySequence_v5_13_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_13_Skipped
  l0.Finished = DummyFunction
  self.box_MultipleOR_83 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_83
  l0._graph = self
  l0._name = "box_MultipleOR_83"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1443138426"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_83_Out
  self.box_TriggerMonitor_v2_12 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_12
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1466707919"
  l0.Enabled = self.f_box_TriggerMonitor_v2_12_Enabled
  l0.Disabled = self.f_box_TriggerMonitor_v2_12_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_12_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_Hack_Gameplay_49 = cbox:CreateBox("domino/Library/common/MissionIngredients.Hack_Gameplay.debug.lua")
  l0 = self.box_Hack_Gameplay_49
  l0._graph = self
  l0._name = "box_Hack_Gameplay_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1495480917"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_box_Hack_Gameplay_49_Hacked
  self.box_PhoneCommunicationController_33 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_33
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1533905160"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_33_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_LMA_Layer_Controller_4 = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self.box_LMA_Layer_Controller_4
  l0._graph = self
  l0._name = "box_LMA_Layer_Controller_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1568019580"
  l0.Loaded = DummyFunction
  l0.Unloaded = DummyFunction
  self.box_Timer_v2_53 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_53
  l0._graph = self
  l0._name = "box_Timer_v2_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1578191497"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_53_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CinematicPrep_106 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_106
  l0._graph = self
  l0._name = "box_CinematicPrep_106"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1590076203"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_106_PostOut
  self.box_PlaySound_v2_66 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_66
  l0._graph = self
  l0._name = "box_PlaySound_v2_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1602972936"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_72 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_72
  l0._graph = self
  l0._name = "box_PlaySound_v2_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1629258152"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_box_PlaySound_v2_72_Finished
  self.box_Hackable_Monitor_119 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_119
  l0._graph = self
  l0._name = "box_Hackable_Monitor_119"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1704008235"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Hackable_Monitor_119_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_119_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_MissionCheckpointReach_131 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_131
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_131"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1711849322"
  l0.Out = self.f_box_MissionCheckpointReach_131_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MissionCheckpointReach_41 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_41
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1749087076"
  l0.Out = self.f_box_MissionCheckpointReach_41_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_Moveable_Entity_Monitor_130 = cbox:CreateBox("domino/System/MoveableEntityMonitor.lua")
  l0 = self.box_Moveable_Entity_Monitor_130
  l0._graph = self
  l0._name = "box_Moveable_Entity_Monitor_130"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1771283727"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Moveable_Entity_Monitor_130_Disabled
  l0.OnMovementStarted = DummyFunction
  l0.OnMovementFinished = self.f_box_Moveable_Entity_Monitor_130_OnMovementFinished
  l0.OnFwdMovementStarted = DummyFunction
  l0.OnFwdMovementFinished = DummyFunction
  l0.OnBkwMovementStarted = DummyFunction
  l0.OnBkwMovementFinished = DummyFunction
  l0.OnMovementBlocked = DummyFunction
  l0.OnMovementUnblocked = DummyFunction
  l0.OnMovementPaused = DummyFunction
  l0.OnMovementUnpaused = DummyFunction
  self.box_PGTController_v2_18 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_18
  l0._graph = self
  l0._name = "box_PGTController_v2_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1818803802"
  l0.Started = self.f_box_PGTController_v2_18_Started
  l0.Aborted = DummyFunction
  l0.AllSpawned = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_MultipleOR_102 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_102
  l0._graph = self
  l0._name = "box_MultipleOR_102"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1839517306"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_102_Out
  self.box_TriggerMonitor_v2_105 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_105
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_105"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1949369733"
  l0.Enabled = self.f_box_TriggerMonitor_v2_105_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_105_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_Escape_Gameplay_16 = cbox:CreateBox("domino/Library/common/MissionIngredients.Escape_Gameplay.debug.lua")
  l0 = self.box_Escape_Gameplay_16
  l0._graph = self
  l0._name = "box_Escape_Gameplay_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1954148070"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Escaped = self.f_box_Escape_Gameplay_16_Escaped
  l0.LeftArea = self.f_box_Escape_Gameplay_16_LeftArea
  self.box_SetBoolean_v2_136 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_136
  l0._graph = self
  l0._name = "box_SetBoolean_v2_136"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1959659484"
  l0.Out = self.f_box_SetBoolean_v2_136_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_136_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_136_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_136_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_136_SetFromBool
  self.box_PlaySound_v2_26 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_26
  l0._graph = self
  l0._name = "box_PlaySound_v2_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1967202437"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MissionMessageController_v3_23 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_23
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|2000589260"
  l0.Out = self.f_box_MissionMessageController_v3_23_Out
  l0.MessageCompleted = DummyFunction
  self.box_HackableController_v2_52 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_52
  l0._graph = self
  l0._name = "box_HackableController_v2_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|2035105012"
  l0.Enabled = self.f_box_HackableController_v2_52_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_PlaySound_v2_69 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_69
  l0._graph = self
  l0._name = "box_PlaySound_v2_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|2058911229"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
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
  l0 = self.box_MissionLayer_v2_35
  l0.LayerName = "S02M050_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1370707596", "1370707596", "S02M050_Main", "CheckPoint_0", "box_MissionLayer_v2_35.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_1()
  local l0
  l0 = self.box_MissionLayer_v2_103
  l0.LayerName = "S02M050_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1628749512", "1628749512", "S02M050_Main", "CheckPoint_1", "box_MissionLayer_v2_103.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_2()
  local l0
  l0 = self.box_MissionLayer_v2_38
  l0.LayerName = "S02M050_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1088043105", "1088043105", "S02M050_Main", "CheckPoint_2", "box_MissionLayer_v2_38.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_3()
  local l0
  l0 = self.box_MissionLayer_v2_109
  l0.LayerName = "S02M050_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|574831637", "574831637", "S02M050_Main", "CheckPoint_3", "box_MissionLayer_v2_109.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_4()
  local l0
  self:OnEnter_box_Mission_End_122()
  l0 = self.box_Mission_End_122
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1731957585", "1731957585", "S02M050_Main", "CheckPoint_4", "box_Mission_End_122.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:CheckPoint_Replay()
  local l0
  self:OnEnter_box_MultipleOR_132()
  l0 = self.box_MultipleOR_132
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1105881119", "1105881119", "S02M050_Main", "CheckPoint_Replay", "box_MultipleOR_132.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_132()
  l0 = self.box_MultipleOR_132
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1037046506", "1037046506", "S02M050_Main", "In", "box_MultipleOR_132.Input", self, l0)
  l0:Input(0)
end
function export:f_box_MissionZone_29_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PGTController_v2_18
  l0.PGTMissionArea = "9223372046915605603"
  l0 = self.box_MissionZone_29
  l1 = self.box_PGTController_v2_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|476810806", "476810806", "S02M050_Main", "box_MissionZone_29.Enabled", "box_PGTController_v2_18.Start", l0, l1)
  l1:Start()
end
function export:f_box_AISquadStateController_128_VanishSet()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1066527750"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_27_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_27_Out_1
  l0 = self.box_AISquadStateController_128
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|167223695", "167223695", "S02M050_Main", "box_AISquadStateController_128.VanishSet", "box_Ordered_Output_27.In", l0, l1)
  l1:In()
end
function export:f_box_CinematicPrep_101_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_102()
  l0 = self.box_CinematicPrep_101
  l1 = self.box_MultipleOR_102
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|711661747", "711661747", "S02M050_Main", "box_CinematicPrep_101.PostOut", "box_MultipleOR_102.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_TriggerMonitor_v2_65_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1131137137"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_68_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_68_Out_1
  l0 = self.box_TriggerMonitor_v2_65
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1277253738", "1277253738", "S02M050_Main", "box_TriggerMonitor_v2_65.Disabled", "box_Ordered_Output_68.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_65_Enter()
  local l0
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_65()
  l0 = self.box_TriggerMonitor_v2_65
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|2103129484", "2103129484", "S02M050_Main", "box_TriggerMonitor_v2_65.Enter", "box_TriggerMonitor_v2_65.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_MultipleOR_76_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Player_State_Controller_58()
  l0 = self.box_MultipleOR_76
  l1 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1483363088", "1483363088", "S02M050_Main", "box_MultipleOR_76.Out", "box_Player_State_Controller_58.ResetCombatAllowed", l0, l1)
  l1:ResetCombatAllowed()
end
function export:f_box_PlaySequence_v5_56_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_83()
  l0 = self.box_PlaySequence_v5_56
  l1 = self.box_MultipleOR_83
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1439696404", "1439696404", "S02M050_Main", "box_PlaySequence_v5_56.Finished", "box_MultipleOR_83.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_PlaySequence_v5_56_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_83()
  l0 = self.box_PlaySequence_v5_56
  l1 = self.box_MultipleOR_83
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1119291926", "1119291926", "S02M050_Main", "box_PlaySequence_v5_56.Skipped", "box_MultipleOR_83.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_PlaySequence_v5_56_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Moveable_Entity_Monitor_130()
  l0 = self.box_PlaySequence_v5_56
  l1 = self.box_Moveable_Entity_Monitor_130
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|2122555389", "2122555389", "S02M050_Main", "box_PlaySequence_v5_56.Started", "box_Moveable_Entity_Monitor_130.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_PlayDialog_v2_22_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_54()
  l0 = self.box_PlayDialog_v2_22
  l1 = self.box_MultipleOR_54
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|635364671", "635364671", "S02M050_Main", "box_PlayDialog_v2_22.Finished", "box_MultipleOR_54.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_PlayDialog_v2_22_Interrupted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_54()
  l0 = self.box_PlayDialog_v2_22
  l1 = self.box_MultipleOR_54
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|62854072", "62854072", "S02M050_Main", "box_PlayDialog_v2_22.Interrupted", "box_MultipleOR_54.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_HackableController_v2_104_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = "CustomBroadcasts.9223372047457491181"
  l0.OnGenericChannel = nil
  l0.OnShopChannel = nil
  l0.OnBarChannel = 1
  l0.PlayOnLoad = 1
  l0.ApplyOnLoad = 1
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Controller_120"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1290971001"
  l0.LoadAndPlayRequested = self.f_box_Media_System_Custom_Broadcast_Controller_120_LoadAndPlayRequested
  l0.EndedAllCustomMediaBroadcasts = DummyFunction
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_HackableController_v2_104
  l1 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1268056980", "1268056980", "S02M050_Main", "box_HackableController_v2_104.Disabled", "box_Media_System_Custom_Broadcast_Controller_120.LoadAndPlayCustomBroadcast", l0, l1)
  l1:LoadAndPlayCustomBroadcast()
end
function export:f_box_HackableController_v2_24_HackForced()
  local l0, l1
  self = self._graph
  l0 = self.box_PGTController_v2_11
  l0.PGTMissionArea = "9223372046915605603"
  l0 = self.box_HackableController_v2_24
  l1 = self.box_PGTController_v2_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|601111309", "601111309", "S02M050_Main", "box_HackableController_v2_24.HackForced", "box_PGTController_v2_11.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_34_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionZone_29()
  l0 = self.box_MissionZone_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|970179551", "970179551", "S02M050_Main", "box_Ordered_Output_34.Out", "box_MissionZone_29.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_34_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_23
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S02.S02M050.Objectives.Objective050",
    item = "Objective",
    id = "577466"
  }
  l0.HasObjectiveMarker = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1808075816", "1808075816", "S02M050_Main", "box_Ordered_Output_34.Out", "box_MissionMessageController_v3_23.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_Pawn_Health_Controller_20_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PawnHealthController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AISquadStateController_6
  l0.Affiliation = "UZulu"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1955558555", "1955558555", "S02M050_Main", "box_Pawn_Health_Controller_20.Out", "box_AISquadStateController_6.ForceVanish", clone, l0)
  l0:ForceVanish()
end
function export:f_box_MultipleOR_54_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_53
  l0.Seconds = 0.7
  l0 = self.box_MultipleOR_54
  l1 = self.box_Timer_v2_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|2041401478", "2041401478", "S02M050_Main", "box_MultipleOR_54.Out", "box_Timer_v2_53.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_42_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372069352628068"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_98"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1060802161"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_98_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_MultipleOR_42
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|411718450", "411718450", "S02M050_Main", "box_MultipleOR_42.Out", "box_VisibilityController_v2_98.Show", l0, l1)
  l1:Show()
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MissionLayer_v2_2
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|794668992", "794668992", "S02M050_Main", "box_MissionLayer_v2_2.Loaded", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_AISquadStateController_124_VanishSet()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  l0.Entity = nil
  l0.MaxSpeed = nil
  l0.AimingMode = nil
  l0.CoverEntity = nil
  l0.CombatAllowed = nil
  l0.CoverAllowed = nil
  l0.CoverToCoverAllowed = nil
  l0.ClimbInteractionAllowed = nil
  l0._graph = self
  l0._name = "box_Player_State_Controller_127"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|510187037"
  l0.MaxSpeedSet = DummyFunction
  l0.MaxSpeedReset = DummyFunction
  l0.AimingStarted = DummyFunction
  l0.AimingStopped = DummyFunction
  l0.CoverEntered = DummyFunction
  l0.CoverExited = DummyFunction
  l0.FaceMaskEnabled = DummyFunction
  l0.FaceMaskDisabled = DummyFunction
  l0.CombatAllowedSet = DummyFunction
  l0.CombatAllowedReset = self.f_box_Player_State_Controller_127_CombatAllowedReset
  l0.CoverAllowedSet = DummyFunction
  l0.CoverAllowedReset = DummyFunction
  l0.CoverToCoverAllowedSet = DummyFunction
  l0.CoverToCoverAllowedReset = DummyFunction
  l0.ClimbInteractionAllowedSet = DummyFunction
  l0.ClimbInteractionAllowedReset = DummyFunction
  l0.WeaponPickupAllowed = DummyFunction
  l0.WeaponPickupPrevented = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_AISquadStateController_124
  l1 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1075638917", "1075638917", "S02M050_Main", "box_AISquadStateController_124.VanishSet", "box_Player_State_Controller_127.ResetCombatAllowed", l0, l1)
  l1:ResetCombatAllowed()
end
function export:f_box_S02M050_CIN_ExposedBeliefs_Main_44_EndCine()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_42()
  l0 = self.box_S02M050_CIN_ExposedBeliefs_Main_44
  l1 = self.box_MultipleOR_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|792978221", "792978221", "S02M050_Main", "box_S02M050_CIN_ExposedBeliefs_Main_44.EndCine", "box_MultipleOR_42.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_TriggerMonitor_v2_59_Enter()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|735552055"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_60_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_60_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_60_Out_2
  l0 = self.box_TriggerMonitor_v2_59
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1197226973", "1197226973", "S02M050_Main", "box_TriggerMonitor_v2_59.Enter", "box_Ordered_Output_60.In", l0, l1)
  l1:In()
end
function export:f_box_AISquadStateController_6_VanishSet()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_56
  l0.SceneEntity = "9223372061974846631"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S02/S02_PGV-FS_VID/s02_pgv-fs_vid.seq"
  l0 = self.box_AISquadStateController_6
  l1 = self.box_PlaySequence_v5_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1271393595", "1271393595", "S02M050_Main", "box_AISquadStateController_6.VanishSet", "box_PlaySequence_v5_56.Start", l0, l1)
  l1:Start()
end
function export:f_box_CinematicPrep_45_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/PawnHealthController.lua")]
  l0.Pawn = self.PlayerEntity
  l0.PawnList = nil
  l0._graph = self
  l0._name = "box_Pawn_Health_Controller_123"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|398183376"
  l0.Out = self.f_box_Pawn_Health_Controller_123_Out
  l0 = self.box_CinematicPrep_45
  l1 = Boxes[PathID("domino/System/PawnHealthController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1369753211", "1369753211", "S02M050_Main", "box_CinematicPrep_45.PostOut", "box_Pawn_Health_Controller_123.UnsetImmune", l0, l1)
  l1:UnsetImmune()
end
function export:f_box_CinematicPrep_7_PreOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/PawnHealthController.lua")]
  l0.Pawn = self.PlayerEntity
  l0.PawnList = nil
  l0._graph = self
  l0._name = "box_Pawn_Health_Controller_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|212926499"
  l0.Out = self.f_box_Pawn_Health_Controller_20_Out
  l0 = self.box_CinematicPrep_7
  l1 = Boxes[PathID("domino/System/PawnHealthController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|775021655", "775021655", "S02M050_Main", "box_CinematicPrep_7.PreOut", "box_Pawn_Health_Controller_20.SetImmune", l0, l1)
  l1:SetImmune()
end
function export:f_box_MultipleOR_135_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_45
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_MultipleOR_135
  l1 = self.box_CinematicPrep_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|862815055", "862815055", "S02M050_Main", "box_MultipleOR_135.Out", "box_CinematicPrep_45.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_PlaySound_v2_108_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_112
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S02.S02M050.Objectives.Objective050",
    item = "Objective",
    id = "577466"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_PlaySound_v2_108
  l1 = self.box_MissionMessageController_v3_112
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1410294128", "1410294128", "S02M050_Main", "box_PlaySound_v2_108.Started", "box_MissionMessageController_v3_112.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_MissionMessageController_v3_32_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_73
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S02.S02M050.Objectives.Objective010",
    item = "Objective",
    id = "343707"
  }
  l0 = self.box_MissionMessageController_v3_32
  l1 = self.box_MissionMessageController_v3_73
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1216788351", "1216788351", "S02M050_Main", "box_MissionMessageController_v3_32.Out", "box_MissionMessageController_v3_73.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_Teleport_To_SpawnPoint_125_TeleportDone()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  l0.Entity = nil
  l0.MaxSpeed = nil
  l0.AimingMode = nil
  l0.CoverEntity = "9223372073852076323"
  l0.CombatAllowed = nil
  l0.CoverAllowed = nil
  l0.CoverToCoverAllowed = nil
  l0.ClimbInteractionAllowed = nil
  l0._graph = self
  l0._name = "box_Player_State_Controller_126"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|991438336"
  l0.MaxSpeedSet = DummyFunction
  l0.MaxSpeedReset = DummyFunction
  l0.AimingStarted = DummyFunction
  l0.AimingStopped = DummyFunction
  l0.CoverEntered = self.f_box_Player_State_Controller_126_CoverEntered
  l0.CoverExited = DummyFunction
  l0.FaceMaskEnabled = DummyFunction
  l0.FaceMaskDisabled = DummyFunction
  l0.CombatAllowedSet = DummyFunction
  l0.CombatAllowedReset = DummyFunction
  l0.CoverAllowedSet = DummyFunction
  l0.CoverAllowedReset = DummyFunction
  l0.CoverToCoverAllowedSet = DummyFunction
  l0.CoverToCoverAllowedReset = DummyFunction
  l0.ClimbInteractionAllowedSet = DummyFunction
  l0.ClimbInteractionAllowedReset = DummyFunction
  l0.WeaponPickupAllowed = DummyFunction
  l0.WeaponPickupPrevented = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Teleport_To_SpawnPoint_125
  l1 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1516096205", "1516096205", "S02M050_Main", "box_Teleport_To_SpawnPoint_125.TeleportDone", "box_Player_State_Controller_126.EnterCover", l0, l1)
  l1:EnterCover()
end
function export:f_box_HackableController_v2_39_HackForced()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PlaySequence_v5_13()
  l0 = self.box_HackableController_v2_39
  l1 = self.box_PlaySequence_v5_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1029120628", "1029120628", "S02M050_Main", "box_HackableController_v2_39.HackForced", "box_PlaySequence_v5_13.Start", l0, l1)
  l1:Start()
end
function export:f_box_Pawn_Health_Controller_123_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PawnHealthController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_107()
  l0 = self.box_MultipleOR_107
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|2097735541", "2097735541", "S02M050_Main", "box_Pawn_Health_Controller_123.Out", "box_MultipleOR_107.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_VisibilityController_v2_78_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372069352628070"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_84"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1102800799"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_84_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1486229791", "1486229791", "S02M050_Main", "box_VisibilityController_v2_78.Hidden", "box_VisibilityController_v2_84.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Hack_Gameplay_31_Hacked()
  local l0, l1
  self = self._graph
  l0 = self.box_Hack_Gameplay_49
  l0.Entity = "9223372058064744603"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 0
  l0.DisplayObjectiveDistance = 1
  l0 = self.box_Hack_Gameplay_31
  l1 = self.box_Hack_Gameplay_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|879408723", "879408723", "S02M050_Main", "box_Hack_Gameplay_31.Hacked", "box_Hack_Gameplay_49.Start", l0, l1)
  l1:Start()
end
function export:f_box_Hack_Gameplay_31_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_119()
  l0 = self.box_Hack_Gameplay_31
  l1 = self.box_Hackable_Monitor_119
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|974967652", "974967652", "S02M050_Main", "box_Hack_Gameplay_31.Started", "box_Hackable_Monitor_119.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_VisibilityController_v2_99_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_100
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|860320269", "860320269", "S02M050_Main", "box_VisibilityController_v2_99.Hidden", "box_CinematicPrep_100.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_Timer_v2_57_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_69
  l0.SoundId = "soundbinary/533720278.bnk"
  l0 = self.box_Timer_v2_57
  l1 = self.box_PlaySound_v2_69
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|831121567", "831121567", "S02M050_Main", "box_Timer_v2_57.TimeElapsed", "box_PlaySound_v2_69.Play", l0, l1)
  l1:Play()
end
function export:f_box_PlaySound_v2_48_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_81
  l0.Entity = "9223372060260103303"
  l0.SoundId = "soundbinary/3136382409.bnk"
  l0 = self.box_PlaySound_v2_48
  l1 = self.box_PlaySound_v2_81
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1357830340", "1357830340", "S02M050_Main", "box_PlaySound_v2_48.Out", "box_PlaySound_v2_81.Play", l0, l1)
  l1:Play()
end
function export:f_box_VisibilityController_v2_86_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372069352628062"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_87"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1809926098"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_87_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1861709349", "1861709349", "S02M050_Main", "box_VisibilityController_v2_86.Hidden", "box_VisibilityController_v2_87.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Player_State_Controller_127_CombatAllowedReset()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_134()
  l0 = self.box_Multiple_AND_134
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1866746739", "1866746739", "S02M050_Main", "box_Player_State_Controller_127.CombatAllowedReset", "box_Multiple_AND_134.Condition", clone, l0)
  l0:Condition(1)
end
function export:f_box_Pawn_Health_Controller_116_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PawnHealthController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_LMA_Layer_Controller_30
  l0.LMALayerName = "SVSM_W_14_LMA"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1874709880", "1874709880", "S02M050_Main", "box_Pawn_Health_Controller_116.Out", "box_LMA_Layer_Controller_30.Load", clone, l0)
  l0:Load()
end
function export:f_box_Get_Player_ID_40_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_39
  l0.HackableEntity = "9223372058064770014"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|853963809", "853963809", "S02M050_Main", "box_Get_Player_ID_40.Out", "box_HackableController_v2_39.ForceHack", clone, l0)
  l0:ForceHack()
end
function export:f_box_OnceOnly_v3_3_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_LMA_Layer_Controller_4
  l0.LMALayerName = "SVSM_W_14_LMA"
  l0 = self.box_OnceOnly_v3_3
  l1 = self.box_LMA_Layer_Controller_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1979814006", "1979814006", "S02M050_Main", "box_OnceOnly_v3_3.Out", "box_LMA_Layer_Controller_4.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_MultipleOR_132_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "S02M050_Main"
  l0 = self.box_MultipleOR_132
  l1 = self.box_MissionLayer_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|831683925", "831683925", "S02M050_Main", "box_MultipleOR_132.Out", "box_MissionLayer_v2_2.Load", l0, l1)
  l1:Load()
end
function export:f_box_Multiple_AND_134_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_135()
  l0 = self.box_Multiple_AND_134
  l1 = self.box_MultipleOR_135
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1357578920", "1357578920", "S02M050_Main", "box_Multiple_AND_134.Out", "box_MultipleOR_135.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MissionLayer_v2_38_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|564382981"
  l0.Out = self.f_box_Get_Player_ID_40_Out
  l0 = self.box_MissionLayer_v2_38
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|919718027", "919718027", "S02M050_Main", "box_MissionLayer_v2_38.Loaded", "box_Get_Player_ID_40.In", l0, l1)
  l1:In()
end
function export:f_box_PlayerOnlyTriggerNoRCTip_47_Enter()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionZoneController.lua")]
  l0.MissionZone = "9223372046915605281"
  l0.Red = nil
  l0.Green = nil
  l0.Blue = nil
  l0.Alpha = nil
  l0.Radius = 100
  l0.DrawType = nil
  l0.ShapeType = nil
  l0.MinimapContext = nil
  l0.ObjectiveEnteringArea = nil
  l0.ObjectiveExitingArea = nil
  l0._graph = self
  l0._name = "box_MissionZoneController_v2_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1267549111"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_MissionZoneController_v2_21_Disabled
  l0.PropertiesUpdated = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_PlayerOnlyTriggerNoRCTip_47
  l1 = Boxes[PathID("domino/System/MissionZoneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|474410624", "474410624", "S02M050_Main", "box_PlayerOnlyTriggerNoRCTip_47.Enter", "box_MissionZoneController_v2_21.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MissionMessageController_v3_9_MessageCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1437365351"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_80_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_80_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_80_Out_2
  l0 = self.box_MissionMessageController_v3_9
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1836599011", "1836599011", "S02M050_Main", "box_MissionMessageController_v3_9.MessageCompleted", "box_Ordered_Output_80.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_107_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_111
  l0.Checkpoint = "CheckPoint_3"
  l0 = self.box_MultipleOR_107
  l1 = self.box_MissionCheckpointReach_111
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|621200097", "621200097", "S02M050_Main", "box_MultipleOR_107.Out", "box_MissionCheckpointReach_111.In", l0, l1)
  l1:In()
end
function export:f_box_VisibilityController_v2_95_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372069352628062"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_93"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1846190323"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_93_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1570654914", "1570654914", "S02M050_Main", "box_VisibilityController_v2_95.Shown", "box_VisibilityController_v2_93.Show", clone, l0)
  l0:Show()
end
function export:f_box_PlaySound_v2_61_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Moveable_Entity_Monitor_71()
  l0 = self.box_PlaySound_v2_61
  l1 = self.box_Moveable_Entity_Monitor_71
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1527483434", "1527483434", "S02M050_Main", "box_PlaySound_v2_61.Out", "box_Moveable_Entity_Monitor_71.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_PlaySound_v2_61_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_66
  l0.Entity = "9223372060260103303"
  l0.SoundId = "soundbinary/3136382409.bnk"
  l0 = self.box_PlaySound_v2_61
  l1 = self.box_PlaySound_v2_66
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|499832675", "499832675", "S02M050_Main", "box_PlaySound_v2_61.Started", "box_PlaySound_v2_66.Play", l0, l1)
  l1:Play()
end
function export:f_box_Ordered_Output_60_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_76()
  l0 = self.box_MultipleOR_76
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|173337455", "173337455", "S02M050_Main", "box_Ordered_Output_60.Out", "box_MultipleOR_76.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_60_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_7
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1162895777", "1162895777", "S02M050_Main", "box_Ordered_Output_60.Out", "box_CinematicPrep_7.PreCinematic", clone, l0)
  l0:PreCinematic()
end
function export:f_box_Ordered_Output_60_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_26
  l0.Entity = "9223372060260103303"
  l0.SoundId = "soundbinary/3136382409.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|861896311", "861896311", "S02M050_Main", "box_Ordered_Output_60.Out", "box_PlaySound_v2_26.Play", clone, l0)
  l0:Play()
end
function export:f_box_MissionCheckpointReach_111_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_104
  l0.HackableEntity = "9223372058064744603"
  l0.ProfileLinkedToHack = 1
  l0 = self.box_MissionCheckpointReach_111
  l1 = self.box_HackableController_v2_104
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1064536429", "1064536429", "S02M050_Main", "box_MissionCheckpointReach_111.Out", "box_HackableController_v2_104.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_MissionLayer_v2_35_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1092100315"
  l0.Out = self.f_box_Get_Player_ID_36_Out
  l0 = self.box_MissionLayer_v2_35
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1149985670", "1149985670", "S02M050_Main", "box_MissionLayer_v2_35.Loaded", "box_Get_Player_ID_36.In", l0, l1)
  l1:In()
end
function export:f_box_LMA_Layer_Controller_30_Loaded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_37()
  l0 = self.box_LMA_Layer_Controller_30
  l1 = self.box_MultipleOR_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|153011657", "153011657", "S02M050_Main", "box_LMA_Layer_Controller_30.Loaded", "box_MultipleOR_37.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_VisibilityController_v2_91_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372069352628072"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_92"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1962826642"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_92_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|600789872", "600789872", "S02M050_Main", "box_VisibilityController_v2_91.Shown", "box_VisibilityController_v2_92.Show", clone, l0)
  l0:Show()
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
  l0 = self.box_MissionCheckpointReach_131
  l0.Checkpoint = "CheckPoint_Replay"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1528971915", "1528971915", "S02M050_Main", "box_Get_Player_ID_1.Out", "box_MissionCheckpointReach_131.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_55_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  DrawTextToScreen("Comment: MARCUS - That's got to be Jimmy's Lift", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v2')-- Comment: MARCUS - That's got to be Jimmy's Lift")
  l0 = self.box_PlayDialog_v2_14
  l0.SoundId = "soundbinary/3215721332.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1431044434", "1431044434", "S02M050_Main", "box_Ordered_Output_55.Out", "box_PlayDialog_v2_14.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_55_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_19()
  l0 = self.box_MultipleOR_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1329159534", "1329159534", "S02M050_Main", "box_Ordered_Output_55.Out", "box_MultipleOR_19.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_55_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_77
  l0.SoundId = "soundbinary/1964194031.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|145336517", "145336517", "S02M050_Main", "box_Ordered_Output_55.Out", "box_PlaySound_v2_77.Play", clone, l0)
  l0:Play()
end
function export:f_box_VisibilityController_v2_94_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372069352628060"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_90"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1993811745"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_90_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1824870249", "1824870249", "S02M050_Main", "box_VisibilityController_v2_94.Shown", "box_VisibilityController_v2_90.Show", clone, l0)
  l0:Show()
end
function export:f_box_MultipleOR_19_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_12()
  l0 = self.box_MultipleOR_19
  l1 = self.box_TriggerMonitor_v2_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|2089922436", "2089922436", "S02M050_Main", "box_MultipleOR_19.Out", "box_TriggerMonitor_v2_12.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_OnceOnly_v3_5_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|832906286"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_55_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_55_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_55_Out_2
  l0 = self.box_OnceOnly_v3_5
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1376348875", "1376348875", "S02M050_Main", "box_OnceOnly_v3_5.Out", "box_Ordered_Output_55.In", l0, l1)
  l1:In()
end
function export:f_box_Player_State_Controller_126_CoverEntered()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AISquadStateController_124
  l0.Affiliation = "UZulu"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1631790799", "1631790799", "S02M050_Main", "box_Player_State_Controller_126.CoverEntered", "box_AISquadStateController_124.ForceVanish", clone, l0)
  l0:ForceVanish()
end
function export:f_box_PlaySound_v2_81_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_57
  l0.Seconds = 21
  l0 = self.box_PlaySound_v2_81
  l1 = self.box_Timer_v2_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1800195619", "1800195619", "S02M050_Main", "box_PlaySound_v2_81.Out", "box_Timer_v2_57.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlayDialog_v2_14_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_46
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357367688"
  l0 = self.box_PlayDialog_v2_14
  l1 = self.box_PhoneCommunicationController_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1364979915", "1364979915", "S02M050_Main", "box_PlayDialog_v2_14.Started", "box_PhoneCommunicationController_46.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_PGTController_v2_11_AllSpawned()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = "CustomBroadcasts.9223372047457491181"
  l0.OnGenericChannel = nil
  l0.OnShopChannel = nil
  l0.OnBarChannel = 1
  l0.PlayOnLoad = 1
  l0.ApplyOnLoad = 1
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Controller_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1941038694"
  l0.LoadAndPlayRequested = self.f_box_Media_System_Custom_Broadcast_Controller_75_LoadAndPlayRequested
  l0.EndedAllCustomMediaBroadcasts = DummyFunction
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_PGTController_v2_11
  l1 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1635856304", "1635856304", "S02M050_Main", "box_PGTController_v2_11.AllSpawned", "box_Media_System_Custom_Broadcast_Controller_75.LoadAndPlayCustomBroadcast", l0, l1)
  l1:LoadAndPlayCustomBroadcast()
end
function export:f_box_Hackable_Monitor_67_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_41
  l0.Checkpoint = "CheckPoint_2"
  l0 = self.box_Hackable_Monitor_67
  l1 = self.box_MissionCheckpointReach_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|2008765988", "2008765988", "S02M050_Main", "box_Hackable_Monitor_67.Enabled", "box_MissionCheckpointReach_41.In", l0, l1)
  l1:In()
end
function export:f_box_Hackable_Monitor_67_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_129"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1380820692"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_129_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_129_Out_1
  l0 = self.box_Hackable_Monitor_67
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|454651976", "454651976", "S02M050_Main", "box_Hackable_Monitor_67.HackSuccess", "box_Ordered_Output_129.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_37_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_51
  l0.Checkpoint = "CheckPoint_0"
  l0 = self.box_MultipleOR_37
  l1 = self.box_MissionCheckpointReach_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1374711393", "1374711393", "S02M050_Main", "box_MultipleOR_37.Out", "box_MissionCheckpointReach_51.In", l0, l1)
  l1:In()
end
function export:f_box_PlaySound_v2_77_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_48
  l0.SoundId = "soundbinary/1276477224.bnk"
  l0 = self.box_PlaySound_v2_77
  l1 = self.box_PlaySound_v2_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|276769222", "276769222", "S02M050_Main", "box_PlaySound_v2_77.Out", "box_PlaySound_v2_48.Play", l0, l1)
  l1:Play()
end
function export:f_box_VisibilityController_v2_98_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372069352628070"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_91"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|810227866"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_91_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|111782758", "111782758", "S02M050_Main", "box_VisibilityController_v2_98.Shown", "box_VisibilityController_v2_91.Show", clone, l0)
  l0:Show()
end
function export:f_box_CinematicPrep_100_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_67()
  l0 = self.box_CinematicPrep_100
  l1 = self.box_Hackable_Monitor_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|44562823", "44562823", "S02M050_Main", "box_CinematicPrep_100.PostOut", "box_Hackable_Monitor_67.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Ordered_Output_27_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_65()
  l0 = self.box_TriggerMonitor_v2_65
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1485683787", "1485683787", "S02M050_Main", "box_Ordered_Output_27.Out", "box_TriggerMonitor_v2_65.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_27_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Player_State_Controller_58()
  l0 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1223282564", "1223282564", "S02M050_Main", "box_Ordered_Output_27.Out", "box_Player_State_Controller_58.SetCombatAllowed", clone, l0)
  l0:SetCombatAllowed()
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
  l0 = self.box_CinematicPrep_15
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1086391005", "1086391005", "S02M050_Main", "box_Get_Player_ID_36.Out", "box_CinematicPrep_15.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_PhoneCommunicationController_46_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_50
  l0.Seconds = 4
  l0 = self.box_PhoneCommunicationController_46
  l1 = self.box_Timer_v2_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|2040197608", "2040197608", "S02M050_Main", "box_PhoneCommunicationController_46.OnCommunicationFinished", "box_Timer_v2_50.Start", l0, l1)
  l1:Start()
end
function export:f_box_S02M050_CIN_MeetJimmyTemple_Main_43_EndCine()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/PawnHealthController.lua")]
  l0.Pawn = self.PlayerEntity
  l0.PawnList = nil
  l0._graph = self
  l0._name = "box_Pawn_Health_Controller_116"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|534267079"
  l0.Out = self.f_box_Pawn_Health_Controller_116_Out
  l0 = self.box_S02M050_CIN_MeetJimmyTemple_Main_43
  l1 = Boxes[PathID("domino/System/PawnHealthController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1706643994", "1706643994", "S02M050_Main", "box_S02M050_CIN_MeetJimmyTemple_Main_43.EndCine", "box_Pawn_Health_Controller_116.UnsetImmune", l0, l1)
  l1:UnsetImmune()
end
function export:f_box_VisibilityController_v2_84_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372069352628072"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_82"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1330763791"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_82_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1324196585", "1324196585", "S02M050_Main", "box_VisibilityController_v2_84.Hidden", "box_VisibilityController_v2_82.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_HackableController_v2_117_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Hack_Gameplay_31
  l0.Entity = "9223372061767478004"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0.DisplayObjectiveDistance = 1
  l0 = self.box_HackableController_v2_117
  l1 = self.box_Hack_Gameplay_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|881158890", "881158890", "S02M050_Main", "box_HackableController_v2_117.Enabled", "box_Hack_Gameplay_31.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_68_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_19()
  l0 = self.box_MultipleOR_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1901665065", "1901665065", "S02M050_Main", "box_Ordered_Output_68.Out", "box_MultipleOR_19.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_68_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_76()
  l0 = self.box_MultipleOR_76
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1517067704", "1517067704", "S02M050_Main", "box_Ordered_Output_68.Out", "box_MultipleOR_76.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_PGTController_v2_113_AllSpawned()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_107()
  l0 = self.box_PGTController_v2_113
  l1 = self.box_MultipleOR_107
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1807758878", "1807758878", "S02M050_Main", "box_PGTController_v2_113.AllSpawned", "box_MultipleOR_107.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Timer_v2_50_TimeElapsed()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: RADIO - Welcome to the 5th level of the New Dawn...", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v2')-- Comment: RADIO - Welcome to the 5th level of the New Dawn...")
  l0 = self.box_PlayDialog_v2_22
  l0.SoundId = "soundbinary/2990335432.bnk"
  l0 = self.box_Timer_v2_50
  l1 = self.box_PlayDialog_v2_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|55951037", "55951037", "S02M050_Main", "box_Timer_v2_50.TimeElapsed", "box_PlayDialog_v2_22.Start", l0, l1)
  l1:Start()
end
function export:f_box_MissionMessageController_v3_112_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PGTController_v2_113
  l0.PGTMissionArea = "9223372046915605603"
  l0 = self.box_MissionMessageController_v3_112
  l1 = self.box_PGTController_v2_113
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1593939977", "1593939977", "S02M050_Main", "box_MissionMessageController_v3_112.Out", "box_PGTController_v2_113.Start", l0, l1)
  l1:Start()
end
function export:f_box_Moveable_Entity_Monitor_71_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_72
  l0.SoundId = "soundbinary/533720278.bnk"
  l0 = self.box_Moveable_Entity_Monitor_71
  l1 = self.box_PlaySound_v2_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1260278769", "1260278769", "S02M050_Main", "box_Moveable_Entity_Monitor_71.Disabled", "box_PlaySound_v2_72.Play", l0, l1)
  l1:Play()
end
function export:f_box_Moveable_Entity_Monitor_71_OnMovementFinished()
  local l0
  self = self._graph
  self:OnEnter_box_Moveable_Entity_Monitor_71()
  l0 = self.box_Moveable_Entity_Monitor_71
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1232449563", "1232449563", "S02M050_Main", "box_Moveable_Entity_Monitor_71.OnMovementFinished", "box_Moveable_Entity_Monitor_71.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_MissionLayer_v2_103_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1427516791"
  l0.Out = self.f_box_Get_Player_ID_70_Out
  l0 = self.box_MissionLayer_v2_103
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1545991059", "1545991059", "S02M050_Main", "box_MissionLayer_v2_103.Loaded", "box_Get_Player_ID_70.In", l0, l1)
  l1:In()
end
function export:f_box_MissionZoneController_v2_28_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_117
  l0.HackableEntity = "9223372061767478004"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|916613555", "916613555", "S02M050_Main", "box_MissionZoneController_v2_28.Enabled", "box_HackableController_v2_117.EnableHack", clone, l0)
  l0:EnableHack()
end
function export:f_box_MissionZoneController_v2_21_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S02M050_CIN_ExposedBeliefs_Main_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1816886551", "1816886551", "S02M050_Main", "box_MissionZoneController_v2_21.Disabled", "box_S02M050_CIN_ExposedBeliefs_Main_44.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_64_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Mission_End_122()
  l0 = self.box_Mission_End_122
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1470918580", "1470918580", "S02M050_Main", "box_Ordered_Output_64.Out", "box_Mission_End_122.End", clone, l0)
  l0:End()
end
function export:f_box_Ordered_Output_64_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669152"
  l0.UseMusicScoreMode = nil
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_115"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|831189936"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1306806174", "1306806174", "S02M050_Main", "box_Ordered_Output_64.Out", "box_MissionMusicController_115.Deactivate", clone, l0)
  l0:Deactivate()
end
function export:f_box_Ordered_Output_64_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = "CustomBroadcasts.9223372047457491181"
  l0.OnGenericChannel = nil
  l0.OnShopChannel = nil
  l0.OnBarChannel = 1
  l0.PlayOnLoad = 1
  l0.ApplyOnLoad = 1
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Controller_121"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|992980738"
  l0.LoadAndPlayRequested = DummyFunction
  l0.EndedAllCustomMediaBroadcasts = DummyFunction
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1516535175", "1516535175", "S02M050_Main", "box_Ordered_Output_64.Out", "box_Media_System_Custom_Broadcast_Controller_121.EndAllCustomMediaBroadcasts", clone, l0)
  l0:EndAllCustomMediaBroadcasts()
end
function export:f_box_Media_System_Custom_Broadcast_Controller_120_LoadAndPlayRequested()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Escape_Gameplay_16
  l0.Entity = "9223372046915801718"
  l0.Entity_AreaRadius = 125
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1525179811", "1525179811", "S02M050_Main", "box_Media_System_Custom_Broadcast_Controller_120.LoadAndPlayRequested", "box_Escape_Gameplay_16.Start", clone, l0)
  l0:Start()
end
function export:f_box_CinematicPrep_15_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_37()
  l0 = self.box_CinematicPrep_15
  l1 = self.box_MultipleOR_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|310861426", "310861426", "S02M050_Main", "box_CinematicPrep_15.PostOut", "box_MultipleOR_37.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_OnceOnly_v3_17_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_32
  l0.ObjectiveSub2 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S02.S02M050.Objectives.Objective040",
    item = "Objective",
    id = "577465"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_OnceOnly_v3_17
  l1 = self.box_MissionMessageController_v3_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1622200383", "1622200383", "S02M050_Main", "box_OnceOnly_v3_17.Out", "box_MissionMessageController_v3_32.UpdateObjective", l0, l1)
  l1:UpdateObjective()
end
function export:f_box_MissionLayer_v2_109_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_110"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1960859713"
  l0.Out = self.f_box_Get_Player_ID_110_Out
  l0 = self.box_MissionLayer_v2_109
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|191099507", "191099507", "S02M050_Main", "box_MissionLayer_v2_109.Loaded", "box_Get_Player_ID_110.In", l0, l1)
  l1:In()
end
function export:f_box_MissionCheckpointReach_51_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_105
  l0.Trigger = "9223372069800444544"
  l0.AutoDisable = 1
  l0 = self.box_MissionCheckpointReach_51
  l1 = self.box_TriggerMonitor_v2_105
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|928496234", "928496234", "S02M050_Main", "box_MissionCheckpointReach_51.Out", "box_TriggerMonitor_v2_105.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_VisibilityController_v2_82_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372069352628074"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_85"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1587619359"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_85_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|197272764", "197272764", "S02M050_Main", "box_VisibilityController_v2_82.Hidden", "box_VisibilityController_v2_85.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_MissionMessageController_v3_73_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayerOnlyTriggerNoRCTip_47
  l0.Trigger = "9223372053119242789"
  l0 = self.box_MissionMessageController_v3_73
  l1 = self.box_PlayerOnlyTriggerNoRCTip_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|916955966", "916955966", "S02M050_Main", "box_MissionMessageController_v3_73.Out", "box_PlayerOnlyTriggerNoRCTip_47.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Ordered_Output_129_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_61
  l0.SoundId = "soundbinary/1276477224.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|3864973", "3864973", "S02M050_Main", "box_Ordered_Output_129.Out", "box_PlaySound_v2_61.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_129_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hackable_Monitor_67()
  l0 = self.box_Hackable_Monitor_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1444183196", "1444183196", "S02M050_Main", "box_Ordered_Output_129.Out", "box_Hackable_Monitor_67.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_VisibilityController_v2_96_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372069614416486"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_97"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1626567329"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_97_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1079774498", "1079774498", "S02M050_Main", "box_VisibilityController_v2_96.Shown", "box_VisibilityController_v2_97.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_PlaySequence_v5_13_Skipped()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_24
  l0.HackableEntity = "9223372050098953689"
  l0 = self.box_PlaySequence_v5_13
  l1 = self.box_HackableController_v2_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1168262789", "1168262789", "S02M050_Main", "box_PlaySequence_v5_13.Skipped", "box_HackableController_v2_24.ForceHack", l0, l1)
  l1:ForceHack()
end
function export:f_box_PlaySequence_v5_13_Started()
  local l0
  self = self._graph
  self:OnEnter_box_PlaySequence_v5_13()
  l0 = self.box_PlaySequence_v5_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1090365098", "1090365098", "S02M050_Main", "box_PlaySequence_v5_13.Started", "box_PlaySequence_v5_13.Skip", l0, l0)
  l0:Skip()
end
function export:f_box_Media_System_Custom_Broadcast_Controller_74_LoadAndPlayRequested()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_33
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421346327"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|633187629", "633187629", "S02M050_Main", "box_Media_System_Custom_Broadcast_Controller_74.LoadAndPlayRequested", "box_PhoneCommunicationController_33.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_Get_Player_ID_70_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_101
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1819224253", "1819224253", "S02M050_Main", "box_Get_Player_ID_70.Out", "box_CinematicPrep_101.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_VisibilityController_v2_89_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372069352628064"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_86"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|476772768"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_86_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1266143605", "1266143605", "S02M050_Main", "box_VisibilityController_v2_89.Hidden", "box_VisibilityController_v2_86.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Ordered_Output_80_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = "CustomBroadcasts.9223372047457491181"
  l0.OnGenericChannel = nil
  l0.OnShopChannel = nil
  l0.OnBarChannel = 1
  l0.PlayOnLoad = 1
  l0.ApplyOnLoad = 1
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Controller_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1407424842"
  l0.LoadAndPlayRequested = self.f_box_Media_System_Custom_Broadcast_Controller_74_LoadAndPlayRequested
  l0.EndedAllCustomMediaBroadcasts = DummyFunction
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|453068752", "453068752", "S02M050_Main", "box_Ordered_Output_80.Out", "box_Media_System_Custom_Broadcast_Controller_74.LoadAndPlayCustomBroadcast", clone, l0)
  l0:LoadAndPlayCustomBroadcast()
end
function export:f_box_Ordered_Output_80_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_79
  l0.Entity = "9223372060260103303"
  l0.SoundId = "soundbinary/396836298.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|2023949709", "2023949709", "S02M050_Main", "box_Ordered_Output_80.Out", "box_PlaySound_v2_79.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_80_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372069352628068"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_78"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|407481269"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_78_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1210011041", "1210011041", "S02M050_Main", "box_Ordered_Output_80.Out", "box_VisibilityController_v2_78.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_MultipleOR_83_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Moveable_Entity_Monitor_130()
  l0 = self.box_MultipleOR_83
  l1 = self.box_Moveable_Entity_Monitor_130
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1655491316", "1655491316", "S02M050_Main", "box_MultipleOR_83.Out", "box_Moveable_Entity_Monitor_130.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_TriggerMonitor_v2_12_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_AISquadStateController_128
  l0.Affiliation = "UZulu"
  l0 = self.box_TriggerMonitor_v2_12
  l1 = self.box_AISquadStateController_128
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|2027153848", "2027153848", "S02M050_Main", "box_TriggerMonitor_v2_12.Disabled", "box_AISquadStateController_128.ForceVanish", l0, l1)
  l1:ForceVanish()
end
function export:f_box_TriggerMonitor_v2_12_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_12
  l1 = self.box_OnceOnly_v3_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1882448398", "1882448398", "S02M050_Main", "box_TriggerMonitor_v2_12.Enabled", "box_OnceOnly_v3_17.In", l0, l1)
  l1:In(0)
end
function export:f_box_TriggerMonitor_v2_12_Enter()
  local l0
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_12()
  l0 = self.box_TriggerMonitor_v2_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|126351956", "126351956", "S02M050_Main", "box_TriggerMonitor_v2_12.Enter", "box_TriggerMonitor_v2_12.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Hack_Gameplay_49_Hacked()
  local l0, l1
  self = self._graph
  l0 = self.box_Hack_Gameplay_49
  l1 = self.box_OnceOnly_v3_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|413201965", "413201965", "S02M050_Main", "box_Hack_Gameplay_49.Hacked", "box_OnceOnly_v3_5.In", l0, l1)
  l1:In(0)
end
function export:f_box_PhoneCommunicationController_33_StartCommunicationOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MissionZone_29()
  l0 = self.box_PhoneCommunicationController_33
  l1 = self.box_MissionZone_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1105463046", "1105463046", "S02M050_Main", "box_PhoneCommunicationController_33.StartCommunicationOut", "box_MissionZone_29.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Timer_v2_53_TimeElapsed()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: MARCUS - Thank you. I worked hard for it.", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v2')-- Comment: MARCUS - Thank you. I worked hard for it.")
  l0 = self.box_PlayDialog_v2_25
  l0.SoundId = "soundbinary/777344799.bnk"
  l0 = self.box_Timer_v2_53
  l1 = self.box_PlayDialog_v2_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|785856244", "785856244", "S02M050_Main", "box_Timer_v2_53.TimeElapsed", "box_PlayDialog_v2_25.Start", l0, l1)
  l1:Start()
end
function export:f_box_VisibilityController_v2_85_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372069352628060"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_89"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1433544052"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_89_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1268467000", "1268467000", "S02M050_Main", "box_VisibilityController_v2_85.Hidden", "box_VisibilityController_v2_89.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_CinematicPrep_106_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_108
  l0.Entity = "9223372060260103303"
  l0.SoundId = "soundbinary/3136382409.bnk"
  l0 = self.box_CinematicPrep_106
  l1 = self.box_PlaySound_v2_108
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1686248076", "1686248076", "S02M050_Main", "box_CinematicPrep_106.PostOut", "box_PlaySound_v2_108.Play", l0, l1)
  l1:Play()
end
function export:f_box_VisibilityController_v2_97_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372069614416488"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_99"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|422701498"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_99_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1793307699", "1793307699", "S02M050_Main", "box_VisibilityController_v2_97.Hidden", "box_VisibilityController_v2_99.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_PlaySound_v2_72_Finished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669152"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_114"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1270888156"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0 = self.box_PlaySound_v2_72
  l1 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|48607447", "48607447", "S02M050_Main", "box_PlaySound_v2_72.Finished", "box_MissionMusicController_114.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Hackable_Monitor_119_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_118
  l0.HackableEntity = "9223372061767478004"
  l0.ProfileLinkedToHack = 1
  l0 = self.box_Hackable_Monitor_119
  l1 = self.box_HackableController_v2_118
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1385974503", "1385974503", "S02M050_Main", "box_Hackable_Monitor_119.Disabled", "box_HackableController_v2_118.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_Hackable_Monitor_119_HackSuccess()
  local l0
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_119()
  l0 = self.box_Hackable_Monitor_119
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1002273131", "1002273131", "S02M050_Main", "box_Hackable_Monitor_119.HackSuccess", "box_Hackable_Monitor_119.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_MissionCheckpointReach_131_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_131
  l1 = self.box_S02M050_CIN_MeetJimmyTemple_Main_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1605913925", "1605913925", "S02M050_Main", "box_MissionCheckpointReach_131.Out", "box_S02M050_CIN_MeetJimmyTemple_Main_43.In", l0, l1)
  l1:In()
end
function export:f_box_MissionCheckpointReach_41_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|199651623"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_34_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_34_Out_1
  l0.Out[2] = DummyFunction
  l0 = self.box_MissionCheckpointReach_41
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|403236349", "403236349", "S02M050_Main", "box_MissionCheckpointReach_41.Out", "box_Ordered_Output_34.In", l0, l1)
  l1:In()
end
function export:f_box_Moveable_Entity_Monitor_130_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsTeleported
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_133"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|2138853225"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_133_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_133_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_Moveable_Entity_Monitor_130
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|849896198", "849896198", "S02M050_Main", "box_Moveable_Entity_Monitor_130.Disabled", "box_Compare_Boolean_v2_133.In", l0, l1)
  l1:In()
end
function export:f_box_Moveable_Entity_Monitor_130_OnMovementFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_Moveable_Entity_Monitor_130
  l1 = self.box_SetBoolean_v2_136
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1712535082", "1712535082", "S02M050_Main", "box_Moveable_Entity_Monitor_130.OnMovementFinished", "box_SetBoolean_v2_136.True", l0, l1)
  l1:True()
end
function export:f_box_VisibilityController_v2_87_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372069352628066"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_88"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|704869020"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1997668708", "1997668708", "S02M050_Main", "box_VisibilityController_v2_87.Hidden", "box_VisibilityController_v2_88.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_PGTController_v2_18_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionZoneController.lua")]
  l0.MissionZone = "9223372046915605281"
  l0.Red = nil
  l0.Green = nil
  l0.Blue = nil
  l0.Alpha = nil
  l0.Radius = 100
  l0.DrawType = nil
  l0.ShapeType = nil
  l0.MinimapContext = nil
  l0.ObjectiveEnteringArea = nil
  l0.ObjectiveExitingArea = nil
  l0._graph = self
  l0._name = "box_MissionZoneController_v2_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1216123711"
  l0.Enabled = self.f_box_MissionZoneController_v2_28_Enabled
  l0.Disabled = DummyFunction
  l0.PropertiesUpdated = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_PGTController_v2_18
  l1 = Boxes[PathID("domino/System/MissionZoneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1230031684", "1230031684", "S02M050_Main", "box_PGTController_v2_18.Started", "box_MissionZoneController_v2_28.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MultipleOR_102_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_9
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S02.S02M050",
    item = "Objective",
    id = "693239"
  }
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S02.S02M050.Objectives.Objective010",
    item = "Objective",
    id = "343707"
  }
  l0 = self.box_MultipleOR_102
  l1 = self.box_MissionMessageController_v3_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|127340389", "127340389", "S02M050_Main", "box_MultipleOR_102.Out", "box_MissionMessageController_v3_9.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_VisibilityController_v2_93_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372069352628066"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_96"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1394146765"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_96_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|302970686", "302970686", "S02M050_Main", "box_VisibilityController_v2_93.Shown", "box_VisibilityController_v2_96.Show", clone, l0)
  l0:Show()
end
function export:f_box_Media_System_Custom_Broadcast_Controller_75_LoadAndPlayRequested()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_42()
  l0 = self.box_MultipleOR_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|410717674", "410717674", "S02M050_Main", "box_Media_System_Custom_Broadcast_Controller_75.LoadAndPlayRequested", "box_MultipleOR_42.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_TriggerMonitor_v2_105_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_102()
  l0 = self.box_TriggerMonitor_v2_105
  l1 = self.box_MultipleOR_102
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|111189696", "111189696", "S02M050_Main", "box_TriggerMonitor_v2_105.Enabled", "box_MultipleOR_102.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_TriggerMonitor_v2_105_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_8
  l0.Checkpoint = "CheckPoint_1"
  l0 = self.box_TriggerMonitor_v2_105
  l1 = self.box_MissionCheckpointReach_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|512989108", "512989108", "S02M050_Main", "box_TriggerMonitor_v2_105.Enter", "box_MissionCheckpointReach_8.In", l0, l1)
  l1:In()
end
function export:f_box_Escape_Gameplay_16_Escaped()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1282585052"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_64_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_64_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_64_Out_2
  l0 = self.box_Escape_Gameplay_16
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|673865862", "673865862", "S02M050_Main", "box_Escape_Gameplay_16.Escaped", "box_Ordered_Output_64.In", l0, l1)
  l1:In()
end
function export:f_box_Escape_Gameplay_16_LeftArea()
  local l0, l1
  self = self._graph
  l0 = self.box_Escape_Gameplay_16
  l1 = self.box_OnceOnly_v3_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1205212895", "1205212895", "S02M050_Main", "box_Escape_Gameplay_16.LeftArea", "box_OnceOnly_v3_3.In", l0, l1)
  l1:In(0)
end
function export:f_box_SetBoolean_v2_136_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_136
  self.IsTeleported = l0.Target
end
function export:f_box_SetBoolean_v2_136_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_136
  self.IsTeleported = l0.Target
end
function export:f_box_SetBoolean_v2_136_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_136
  self.IsTeleported = l0.Target
end
function export:f_box_SetBoolean_v2_136_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_136
  self.IsTeleported = l0.Target
  l0 = self.box_Teleport_To_SpawnPoint_125
  l0.SpawnPoint = "9223372073852076325"
  l0.UseFadeToBlack = 0
  l0.KeepBlackScreenOnExit = 1
  l0 = self.box_SetBoolean_v2_136
  l1 = self.box_Teleport_To_SpawnPoint_125
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|668585951", "668585951", "S02M050_Main", "box_SetBoolean_v2_136.SetTrue", "box_Teleport_To_SpawnPoint_125.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_136_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_136
  self.IsTeleported = l0.Target
end
function export:f_box_Get_Player_ID_110_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_106
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1450101311", "1450101311", "S02M050_Main", "box_Get_Player_ID_110.Out", "box_CinematicPrep_106.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_VisibilityController_v2_92_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372069352628074"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_94"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|860456561"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_94_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1328772202", "1328772202", "S02M050_Main", "box_VisibilityController_v2_92.Shown", "box_VisibilityController_v2_94.Show", clone, l0)
  l0:Show()
end
function export:f_box_VisibilityController_v2_90_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372069352628064"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_95"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|689845336"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_95_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|360756403", "360756403", "S02M050_Main", "box_VisibilityController_v2_90.Shown", "box_VisibilityController_v2_95.Show", clone, l0)
  l0:Show()
end
function export:f_box_MissionMessageController_v3_23_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_52
  l0.HackableEntity = "9223372058064770014"
  l0 = self.box_MissionMessageController_v3_23
  l1 = self.box_HackableController_v2_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1052857772", "1052857772", "S02M050_Main", "box_MissionMessageController_v3_23.Out", "box_HackableController_v2_52.EnableHack", l0, l1)
  l1:EnableHack()
end
function export:f_box_HackableController_v2_52_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_59
  l0.Trigger = "9223372061138402970"
  l0.AutoDisable = 1
  l0 = self.box_HackableController_v2_52
  l1 = self.box_TriggerMonitor_v2_59
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|613126065", "613126065", "S02M050_Main", "box_HackableController_v2_52.Enabled", "box_TriggerMonitor_v2_59.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Compare_Boolean_v2_133_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_135()
  l0 = self.box_MultipleOR_135
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|1516383526", "1516383526", "S02M050_Main", "box_Compare_Boolean_v2_133.A_is_False", "box_MultipleOR_135.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Compare_Boolean_v2_133_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_134()
  l0 = self.box_Multiple_AND_134
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|810208521", "810208521", "S02M050_Main", "box_Compare_Boolean_v2_133.A_is_True", "box_Multiple_AND_134.Condition", clone, l0)
  l0:Condition(0)
end
function export:OnEnter_box_MissionZone_29()
  local l0
  l0 = self.box_MissionZone_29
  l0.MissionArea = "9223372047839552014"
  l0.MissionLayer = "S02M050_Main"
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
end
function export:OnEnter_box_TriggerMonitor_v2_65()
  local l0
  l0 = self.box_TriggerMonitor_v2_65
  l0.Trigger = "9223372068896340391"
end
function export:OnEnter_box_MultipleOR_76()
end
function export:OnEnter_box_MultipleOR_54()
end
function export:OnEnter_box_MultipleOR_42()
end
function export:OnEnter_box_MultipleOR_135()
end
function export:OnEnter_box_Player_State_Controller_58()
  local l0
  l0 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  l0.Entity = nil
  l0.MaxSpeed = nil
  l0.AimingMode = nil
  l0.CoverEntity = nil
  l0.CombatAllowed = 0
  l0.CoverAllowed = nil
  l0.CoverToCoverAllowed = nil
  l0.ClimbInteractionAllowed = nil
  l0._graph = self
  l0._name = "box_Player_State_Controller_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\S02M050.domino|@S02M050_Main|514596879"
  l0.MaxSpeedSet = DummyFunction
  l0.MaxSpeedReset = DummyFunction
  l0.AimingStarted = DummyFunction
  l0.AimingStopped = DummyFunction
  l0.CoverEntered = DummyFunction
  l0.CoverExited = DummyFunction
  l0.FaceMaskEnabled = DummyFunction
  l0.FaceMaskDisabled = DummyFunction
  l0.CombatAllowedSet = DummyFunction
  l0.CombatAllowedReset = DummyFunction
  l0.CoverAllowedSet = DummyFunction
  l0.CoverAllowedReset = DummyFunction
  l0.CoverToCoverAllowedSet = DummyFunction
  l0.CoverToCoverAllowedReset = DummyFunction
  l0.ClimbInteractionAllowedSet = DummyFunction
  l0.ClimbInteractionAllowedReset = DummyFunction
  l0.WeaponPickupAllowed = DummyFunction
  l0.WeaponPickupPrevented = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_MultipleOR_132()
end
function export:OnEnter_box_Multiple_AND_134()
end
function export:OnEnter_box_MultipleOR_107()
end
function export:OnEnter_box_MultipleOR_19()
end
function export:OnEnter_box_Hackable_Monitor_67()
  local l0
  l0 = self.box_Hackable_Monitor_67
  l0.HackableEntity = "9223372058064770014"
end
function export:OnEnter_box_MultipleOR_37()
end
function export:OnEnter_box_Mission_End_122()
  local l0
  l0 = self.box_Mission_End_122
  l0.Checkpoint = "CheckPoint_4"
  l0.MissionLayer = "S02M050_Main"
  l0.ShowMissionComplete = 1
end
function export:OnEnter_box_Moveable_Entity_Monitor_71()
  local l0
  l0 = self.box_Moveable_Entity_Monitor_71
  l0.MoveableEntity = "9223372050098953689"
end
function export:OnEnter_box_PlaySequence_v5_13()
  local l0
  l0 = self.box_PlaySequence_v5_13
  l0.SceneEntity = "9223372064873905324"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S02/S02_SCR_ExposedBeliefs_Checkpoint/s02_scr_exposedbeliefs_checkpoint.seq"
end
function export:OnEnter_box_MultipleOR_83()
end
function export:OnEnter_box_TriggerMonitor_v2_12()
  local l0
  l0 = self.box_TriggerMonitor_v2_12
  l0.Trigger = "9223372058593196316"
end
function export:OnEnter_box_Hackable_Monitor_119()
  local l0
  l0 = self.box_Hackable_Monitor_119
  l0.HackableEntity = "9223372047976189992"
end
function export:OnEnter_box_Moveable_Entity_Monitor_130()
  local l0
  l0 = self.box_Moveable_Entity_Monitor_130
  l0.MoveableEntity = "9223372050098953689"
end
function export:OnEnter_box_MultipleOR_102()
end
_compilerVersion = 4
