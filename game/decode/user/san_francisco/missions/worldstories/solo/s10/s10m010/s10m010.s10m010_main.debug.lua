export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AIAgentZoneController.lua")
  cbox:RegisterBox("domino/System/AISquadStateController.lua")
  cbox:RegisterBox("domino/System/AISquadStateMonitor.lua")
  cbox:RegisterBox("domino/System/CinemaZoneCleanup.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Download_Gameplay.debug.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Escape_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Locate_Gameplay.debug.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MissionMusicController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
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
  self._name = "S10M010_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main"
  self.PlayerEntity = nil
  self.SpyingVan = nil
  self.VanPosX = 0
  self.VanPosY = 0
  self.FelonySearchReached = 0
  self.PauseReached = 0
  self._60percentDLReached = 0
  self.PlayerVehicle = nil
  self.box_MultipleOR_65 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_65
  l0._graph = self
  l0._name = "box_MultipleOR_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|14946458"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_65_Out
  self.box_MissionLayer_v2_69 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_69
  l0._graph = self
  l0._name = "box_MissionLayer_v2_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|86192157"
  l0.Loaded = self.f_box_MissionLayer_v2_69_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_Timer_v2_22 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_22
  l0._graph = self
  l0._name = "box_Timer_v2_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|170138693"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_Timer_v2_22_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_22_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_19 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_19
  l0._graph = self
  l0._name = "box_Timer_v2_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|197522679"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_Timer_v2_19_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_19_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Player_Proximity_Monitor_11 = cbox:CreateBox("domino/System/PlayerProximityMonitor.lua")
  l0 = self.box_Player_Proximity_Monitor_11
  l0._graph = self
  l0._name = "box_Player_Proximity_Monitor_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|273862455"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnterRadius = self.f_box_Player_Proximity_Monitor_11_EnterRadius
  l0.ExitRadius = self.f_box_Player_Proximity_Monitor_11_ExitRadius
  l0.RCEnterRadius = DummyFunction
  l0.RCExitRadius = DummyFunction
  self.box_CLOController_50 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_50
  l0._graph = self
  l0._name = "box_CLOController_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|298422377"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_50_OnUserInPlace
  self.box_PlaySound_v2_14 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_14
  l0._graph = self
  l0._name = "box_PlaySound_v2_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|326777364"
  l0.Out = self.f_box_PlaySound_v2_14_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MultipleOR_38 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_38
  l0._graph = self
  l0._name = "box_MultipleOR_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|367254623"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_38_Out
  self.box_TutorialController_57 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_57
  l0._graph = self
  l0._name = "box_TutorialController_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|382177007"
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_box_TutorialController_57_DisplayRequested
  l0.NotificationHidden = self.f_box_TutorialController_57_NotificationHidden
  l0.MessageCompleted = DummyFunction
  self.box_AISquadStateController_54 = cbox:CreateBox("domino/System/AISquadStateController.lua")
  l0 = self.box_AISquadStateController_54
  l0._graph = self
  l0._name = "box_AISquadStateController_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|391460074"
  l0.WanderSet = DummyFunction
  l0.AwareSet = DummyFunction
  l0.UntargetedSearchSet = DummyFunction
  l0.TargetedSearchSet = self.f_box_AISquadStateController_54_TargetedSearchSet
  l0.CombatSet = DummyFunction
  l0.VanishSet = DummyFunction
  l0.SearchOverrideParamsSet = DummyFunction
  l0.SearchOverrideParamsReset = DummyFunction
  l0.SquadBhvParamsSet = DummyFunction
  l0.SquadBhvParamsCleared = DummyFunction
  l0.SquadRemoved = DummyFunction
  self.box_Timer_v2_71 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_71
  l0._graph = self
  l0._name = "box_Timer_v2_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|391976394"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_71_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PhoneCommunicationController_62 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_62
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|432137033"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_62_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_62_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_PhoneCommunicationController_82 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_82
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_82"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|553412231"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_82_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_PhoneCommunicationController_70 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_70
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|553640881"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_CinematicPrep_75 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_75
  l0._graph = self
  l0._name = "box_CinematicPrep_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|565184498"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_75_PostOut
  self.box_MissionLayer_v2_52 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_52
  l0._graph = self
  l0._name = "box_MissionLayer_v2_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|611978732"
  l0.Loaded = self.f_box_MissionLayer_v2_52_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MultipleOR_4 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_4
  l0._graph = self
  l0._name = "box_MultipleOR_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|614358088"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_4_Out
  self.box_MultipleOR_42 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_42
  l0._graph = self
  l0._name = "box_MultipleOR_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|643905688"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_42_Out
  self.box_Teleport_To_SpawnPoint_73 = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self.box_Teleport_To_SpawnPoint_73
  l0._graph = self
  l0._name = "box_Teleport_To_SpawnPoint_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|658107127"
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_box_Teleport_To_SpawnPoint_73_TeleportDone
  self.box_PhoneCommunicationController_83 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_83
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_83"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|659712445"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_PlaySound_v2_15 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_15
  l0._graph = self
  l0._name = "box_PlaySound_v2_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|668428588"
  l0.Out = self.f_box_PlaySound_v2_15_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_OnceOnly_v3_66 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_66
  l0._graph = self
  l0._name = "box_OnceOnly_v3_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|730419389"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_66_Out
  l0.ResetOut = DummyFunction
  self.box_CinematicPrep_77 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_77
  l0._graph = self
  l0._name = "box_CinematicPrep_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|784214411"
  l0.PreOut = self.f_box_CinematicPrep_77_PreOut
  l0.PostOut = DummyFunction
  self.box_MissionController_v4_5 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_5
  l0._graph = self
  l0._name = "box_MissionController_v4_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|787150283"
  self.box_AISquadStateMonitor_56 = cbox:CreateBox("domino/System/AISquadStateMonitor.lua")
  l0 = self.box_AISquadStateMonitor_56
  l0._graph = self
  l0._name = "box_AISquadStateMonitor_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|804887620"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ArrestState = self.f_box_AISquadStateMonitor_56_ArrestState
  l0.ArrestStateAnyTarget = DummyFunction
  l0.CombatState = self.f_box_AISquadStateMonitor_56_CombatState
  l0.CombatStateAnyTarget = DummyFunction
  l0.SearchState = self.f_box_AISquadStateMonitor_56_SearchState
  l0.SearchStateAnyTarget = DummyFunction
  l0.VanishState = self.f_box_AISquadStateMonitor_56_VanishState
  l0.None = self.f_box_AISquadStateMonitor_56_None
  self.box_MissionCheckpointReach_81 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_81
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_81"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|841791659"
  l0.Out = self.f_box_MissionCheckpointReach_81_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_ReinforcementSystemMonitor_v2_78 = cbox:CreateBox("domino/System/ReinforcementSystemMonitor_v2.lua")
  l0 = self.box_ReinforcementSystemMonitor_v2_78
  l0._graph = self
  l0._name = "box_ReinforcementSystemMonitor_v2_78"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|860230272"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_ReinforcementSystemMonitor_v2_78_Disabled
  l0.None = self.f_box_ReinforcementSystemMonitor_v2_78_None
  l0.Reinforcing = self.f_box_ReinforcementSystemMonitor_v2_78_Reinforcing
  l0.CallingNextWave = DummyFunction
  l0.CallingNextWaveSucceeded = DummyFunction
  l0.ReachedWaveChangeThreshold = DummyFunction
  l0.WaveChanged = DummyFunction
  l0.EntitySpawned = DummyFunction
  l0.Finished = DummyFunction
  self.box_TimerToScreen_46 = cbox:CreateBox("domino/System/TimerToScreen.lua")
  l0 = self.box_TimerToScreen_46
  l0._graph = self
  l0._name = "box_TimerToScreen_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|865663908"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Stopped = self.f_box_TimerToScreen_46_Stopped
  l0.Restarted = DummyFunction
  l0.GotTime = DummyFunction
  l0.TimeElapsed = self.f_box_TimerToScreen_46_TimeElapsed
  self.box_SetBoolean_v2_26 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_26
  l0._graph = self
  l0._name = "box_SetBoolean_v2_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|881405380"
  l0.Out = self.f_box_SetBoolean_v2_26_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_26_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_26_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_26_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_26_SetFromBool
  self.box_PlaySequence_v5_49 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_49
  l0._graph = self
  l0._name = "box_PlaySequence_v5_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|933010021"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_49_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_49_Finished
  self.box_MultipleOR_10 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_10
  l0._graph = self
  l0._name = "box_MultipleOR_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|944355312"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_10_Out
  self.box_MultipleOR_36 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_36
  l0._graph = self
  l0._name = "box_MultipleOR_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|953478667"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_36_Out
  self.box_MultipleOR_89 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_89
  l0._graph = self
  l0._name = "box_MultipleOR_89"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|964631965"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_89_Out
  self.box_VehicleMonitor_v3_3 = cbox:CreateBox("domino/System/VehicleMonitor_v3.lua")
  l0 = self.box_VehicleMonitor_v3_3
  l0._graph = self
  l0._name = "box_VehicleMonitor_v3_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|995867955"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_VehicleMonitor_v3_3_Disabled
  l0.Enter = DummyFunction
  l0.Entered = self.f_box_VehicleMonitor_v3_3_Entered
  l0.PassangerEntered = DummyFunction
  l0.Leave = DummyFunction
  l0.Exiting = self.f_box_VehicleMonitor_v3_3_Exiting
  l0.ChangeSeat = DummyFunction
  l0.BailedOut = DummyFunction
  l0.IsPawnHiding = DummyFunction
  l0.PawnIsNotHiding = DummyFunction
  l0.StateChange = DummyFunction
  l0.TakenDamage = DummyFunction
  l0.IsUnusable = self.f_box_VehicleMonitor_v3_3_IsUnusable
  l0.IsUnderwater = self.f_box_VehicleMonitor_v3_3_IsUnderwater
  l0.NoMoveTimer = DummyFunction
  l0.OnMoveTimer = DummyFunction
  l0.IsSlowEnoughToExit = DummyFunction
  l0.VehicleJump = DummyFunction
  l0.VehicleLanding = DummyFunction
  l0.BollardTakedown = DummyFunction
  l0.SteamPipeTakedown = DummyFunction
  l0.TrafficLightTakedown = DummyFunction
  l0.FullTakedown = self.f_box_VehicleMonitor_v3_3_FullTakedown
  l0.PartialTakedown = DummyFunction
  l0.NitroUsed = DummyFunction
  l0.NitroStopped = DummyFunction
  l0.IsFlipped = DummyFunction
  l0.IsUnFlipped = DummyFunction
  l0.Unloaded = DummyFunction
  self.box_PlayDialog_v2_64 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_64
  l0._graph = self
  l0._name = "box_PlayDialog_v2_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1108410656"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_64_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_PlaySound_v2_17 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_17
  l0._graph = self
  l0._name = "box_PlaySound_v2_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1117105007"
  l0.Out = self.f_box_PlaySound_v2_17_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_OnceOnly_v3_44 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_44
  l0._graph = self
  l0._name = "box_OnceOnly_v3_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1172854503"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_44_Out
  l0.ResetOut = DummyFunction
  self.box_MissionMessageController_v3_43 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_43
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1192089029"
  l0.Out = self.f_box_MissionMessageController_v3_43_Out
  l0.MessageCompleted = DummyFunction
  self.box_MissionMessageController_v3_91 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_91
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_91"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1218903073"
  l0.Out = self.f_box_MissionMessageController_v3_91_Out
  l0.MessageCompleted = DummyFunction
  self.box_MultipleOR_79 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_79
  l0._graph = self
  l0._name = "box_MultipleOR_79"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1245790795"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_79_Out
  self.box_PGTController_v2_31 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_31
  l0._graph = self
  l0._name = "box_PGTController_v2_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1265068978"
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_box_PGTController_v2_31_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_MultipleOR_7 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_7
  l0._graph = self
  l0._name = "box_MultipleOR_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1311864330"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_7_Out
  self.box_PlaySound_v2_13 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_13
  l0._graph = self
  l0._name = "box_PlaySound_v2_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1314533557"
  l0.Out = self.f_box_PlaySound_v2_13_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PhoneCommunicationController_74 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_74
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1515910829"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_74_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionController_v4_80 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_80
  l0._graph = self
  l0._name = "box_MissionController_v4_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1588875314"
  self.box_MultipleOR_29 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_29
  l0._graph = self
  l0._name = "box_MultipleOR_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1595639185"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_29_Out
  self.box_Download_Gameplay_85 = cbox:CreateBox("domino/Library/common/MissionIngredients.Download_Gameplay.debug.lua")
  l0 = self.box_Download_Gameplay_85
  l0._graph = self
  l0._name = "box_Download_Gameplay_85"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1627210577"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_Download_Gameplay_85_Stopped
  l0.DownloadCompleted = self.f_box_Download_Gameplay_85_DownloadCompleted
  l0.Ratio1Reached = DummyFunction
  l0.Ratio1Reached_PostReset = DummyFunction
  l0.Ratio2Reached = self.f_box_Download_Gameplay_85_Ratio2Reached
  l0.Ratio2Reached_PostReset = self.f_box_Download_Gameplay_85_Ratio2Reached_PostReset
  l0.CustomRatioReached = self.f_box_Download_Gameplay_85_CustomRatioReached
  l0.CustomRatioReached_PostReset = self.f_box_Download_Gameplay_85_CustomRatioReached_PostReset
  l0.PauseRatioReached = self.f_box_Download_Gameplay_85_PauseRatioReached
  l0.PauseRatioReached_PostReset = self.f_box_Download_Gameplay_85_PauseRatioReached_PostReset
  self.box_CinematicPrep_72 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_72
  l0._graph = self
  l0._name = "box_CinematicPrep_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1637622196"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_72_PostOut
  self.box_MissionZone_24 = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  l0 = self.box_MissionZone_24
  l0._graph = self
  l0._name = "box_MissionZone_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1644774972"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.SoftQuitCompleted = DummyFunction
  self.box_Locate_Gameplay_67 = cbox:CreateBox("domino/Library/common/MissionIngredients.Locate_Gameplay.debug.lua")
  l0 = self.box_Locate_Gameplay_67
  l0._graph = self
  l0._name = "box_Locate_Gameplay_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1652425970"
  l0.Started = self.f_box_Locate_Gameplay_67_Started
  l0.Stopped = DummyFunction
  l0.Located = self.f_box_Locate_Gameplay_67_Located
  self.box_PGTController_v2_32 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_32
  l0._graph = self
  l0._name = "box_PGTController_v2_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1659645989"
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_box_PGTController_v2_32_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_MultipleOR_34 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_34
  l0._graph = self
  l0._name = "box_MultipleOR_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1677021096"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_34_Out
  self.box_MultipleOR_55 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_55
  l0._graph = self
  l0._name = "box_MultipleOR_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1758570562"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_55_Out
  self.box_Timer_v2_63 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_63
  l0._graph = self
  l0._name = "box_Timer_v2_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1893070426"
  l0.Out = DummyFunction
  l0.Started = self.f_box_Timer_v2_63_Started
  l0.Stopped = self.f_box_Timer_v2_63_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_63_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MultipleOR_40 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_40
  l0._graph = self
  l0._name = "box_MultipleOR_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1900674221"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_40_Out
  self.box_PhoneCommunicationController_48 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_48
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1953770030"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_48_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionMessageController_v3_61 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_61
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1954212683"
  l0.Out = self.f_box_MissionMessageController_v3_61_Out
  l0.MessageCompleted = DummyFunction
  self.box_PhoneCommunicationController_76 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_76
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_76"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1963799115"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_76_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_CLOController_47 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_47
  l0._graph = self
  l0._name = "box_CLOController_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1971745162"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_47_OnUserInPlace
  self.box_Mission_End_53 = cbox:CreateBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  l0 = self.box_Mission_End_53
  l0._graph = self
  l0._name = "box_Mission_End_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|2016498954"
  self.box_Escape_Gameplay_87 = cbox:CreateBox("domino/Library/common/MissionIngredients.Escape_Gameplay.debug.lua")
  l0 = self.box_Escape_Gameplay_87
  l0._graph = self
  l0._name = "box_Escape_Gameplay_87"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|2075754666"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Escaped = self.f_box_Escape_Gameplay_87_Escaped
  l0.LeftArea = DummyFunction
  self.box_SetBoolean_v2_39 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_39
  l0._graph = self
  l0._name = "box_SetBoolean_v2_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|2093908097"
  l0.Out = self.f_box_SetBoolean_v2_39_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_39_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_39_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_39_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_39_SetFromBool
  self.box_MultipleOR_9 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_9
  l0._graph = self
  l0._name = "box_MultipleOR_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|2122493999"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_9_Out
  self.box_SetBoolean_v2_37 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_37
  l0._graph = self
  l0._name = "box_SetBoolean_v2_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|2139049603"
  l0.Out = self.f_box_SetBoolean_v2_37_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_37_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_37_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_37_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_37_SetFromBool
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
  l0 = self.box_MissionLayer_v2_69
  l0.LayerName = "S10M010_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|439790382", "439790382", "S10M010_Main", "CheckPoint_0", "box_MissionLayer_v2_69.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_1()
  local l0
  self:OnEnter_box_Mission_End_53()
  l0 = self.box_Mission_End_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|312498154", "312498154", "S10M010_Main", "CheckPoint_1", "box_Mission_End_53.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:CheckPoint_Replay()
  local l0
  self:OnEnter_box_MultipleOR_79()
  l0 = self.box_MultipleOR_79
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1868142820", "1868142820", "S10M010_Main", "CheckPoint_Replay", "box_MultipleOR_79.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_79()
  l0 = self.box_MultipleOR_79
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1664946832", "1664946832", "S10M010_Main", "In", "box_MultipleOR_79.Input", self, l0)
  l0:Input(0)
end
function export:f_box_SetTimeOfDay_8_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_72
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1308711455", "1308711455", "S10M010_Main", "box_SetTimeOfDay_8.Out", "box_CinematicPrep_72.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_MultipleOR_65_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|827376390"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_59_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_59_Out_1
  l0 = self.box_MultipleOR_65
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|482693579", "482693579", "S10M010_Main", "box_MultipleOR_65.Out", "box_Ordered_Output_59.In", l0, l1)
  l1:In()
end
function export:f_box_Get_Player_ID_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_90"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|2021685725"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_Show_Or_Hide_All_UI_90_Hidden
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1385542337", "1385542337", "S10M010_Main", "box_Get_Player_ID_2.Out", "box_Show_Or_Hide_All_UI_90.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_MissionLayer_v2_69_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|996822619"
  l0.Out = self.f_box_Get_Player_ID_51_Out
  l0 = self.box_MissionLayer_v2_69
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1685630055", "1685630055", "S10M010_Main", "box_MissionLayer_v2_69.Loaded", "box_Get_Player_ID_51.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_60_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_65()
  l0 = self.box_MultipleOR_65
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|564944865", "564944865", "S10M010_Main", "box_Ordered_Output_60.Out", "box_MultipleOR_65.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_60_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Download_Gameplay_85()
  l0 = self.box_Download_Gameplay_85
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1550050026", "1550050026", "S10M010_Main", "box_Ordered_Output_60.Out", "box_Download_Gameplay_85.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Timer_v2_22_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_9()
  l0 = self.box_Timer_v2_22
  l1 = self.box_MultipleOR_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1316330464", "1316330464", "S10M010_Main", "box_Timer_v2_22.Stopped", "box_MultipleOR_9.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Timer_v2_22_TimeElapsed()
  local l0
  self = self._graph
  self:OnEnter_box_Timer_v2_22()
  l0 = self.box_Timer_v2_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|403872219", "403872219", "S10M010_Main", "box_Timer_v2_22.TimeElapsed", "box_Timer_v2_22.Stop", l0, l0)
  l0:Stop()
end
function export:f_box_Cinema_Zone_Cleanup_6_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PGTController_v2_32
  l0.PGTMissionArea = "9223372070789975380"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1546191061", "1546191061", "S10M010_Main", "box_Cinema_Zone_Cleanup_6.Out", "box_PGTController_v2_32.Start", clone, l0)
  l0:Start()
end
function export:f_box_Timer_v2_19_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_17
  l0.SoundId = "soundbinary/1465087397.bnk"
  l0 = self.box_Timer_v2_19
  l1 = self.box_PlaySound_v2_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1507485242", "1507485242", "S10M010_Main", "box_Timer_v2_19.Stopped", "box_PlaySound_v2_17.Play", l0, l1)
  l1:Play()
end
function export:f_box_Timer_v2_19_TimeElapsed()
  local l0
  self = self._graph
  self:OnEnter_box_Timer_v2_19()
  l0 = self.box_Timer_v2_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|837536370", "837536370", "S10M010_Main", "box_Timer_v2_19.TimeElapsed", "box_Timer_v2_19.Stop", l0, l0)
  l0:Stop()
end
function export:f_box_Player_Proximity_Monitor_11_EnterRadius()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_57()
  l0 = self.box_Player_Proximity_Monitor_11
  l1 = self.box_TutorialController_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1274671088", "1274671088", "S10M010_Main", "box_Player_Proximity_Monitor_11.EnterRadius", "box_TutorialController_57.HideNotification", l0, l1)
  l1:HideNotification()
end
function export:f_box_Player_Proximity_Monitor_11_ExitRadius()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_57()
  l0 = self.box_Player_Proximity_Monitor_11
  l1 = self.box_TutorialController_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|454506629", "454506629", "S10M010_Main", "box_Player_Proximity_Monitor_11.ExitRadius", "box_TutorialController_57.Display", l0, l1)
  l1:Display()
end
function export:f_box_CLOController_50_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_50
  self.SpyingVan = l0.UserID
  l0 = self.box_CinematicPrep_75
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_CLOController_50
  l1 = self.box_CinematicPrep_75
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1152540835", "1152540835", "S10M010_Main", "box_CLOController_50.OnUserInPlace", "box_CinematicPrep_75.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_PlaySound_v2_14_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_83
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372055560432459"
  l0 = self.box_PlaySound_v2_14
  l1 = self.box_PhoneCommunicationController_83
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|22925498", "22925498", "S10M010_Main", "box_PlaySound_v2_14.Out", "box_PhoneCommunicationController_83.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_MultipleOR_38_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Timer_v2_63()
  l0 = self.box_MultipleOR_38
  l1 = self.box_Timer_v2_63
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1734151355", "1734151355", "S10M010_Main", "box_MultipleOR_38.Out", "box_Timer_v2_63.Start", l0, l1)
  l1:Start()
end
function export:f_box_TutorialController_57_DisplayRequested()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TimerToScreen_46()
  l0 = self.box_TutorialController_57
  l1 = self.box_TimerToScreen_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|408295846", "408295846", "S10M010_Main", "box_TutorialController_57.DisplayRequested", "box_TimerToScreen_46.Start", l0, l1)
  l1:Start()
end
function export:f_box_TutorialController_57_NotificationHidden()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TimerToScreen_46()
  l0 = self.box_TutorialController_57
  l1 = self.box_TimerToScreen_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|584120107", "584120107", "S10M010_Main", "box_TutorialController_57.NotificationHidden", "box_TimerToScreen_46.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_AISquadStateController_54_TargetedSearchSet()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_26
  l0.Bool = self.FelonySearchReached
  l0 = self.box_AISquadStateController_54
  l1 = self.box_SetBoolean_v2_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|239492563", "239492563", "S10M010_Main", "box_AISquadStateController_54.TargetedSearchSet", "box_SetBoolean_v2_26.True", l0, l1)
  l1:True()
end
function export:f_box_Timer_v2_71_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionController_v4_80
  l0.EndReason = {
    section = "MISSIONS.COMMON.MESSAGES.MISSIONWARNING",
    item = "ExitingDownloadArea",
    id = "626756"
  }
  l0 = self.box_Timer_v2_71
  l1 = self.box_MissionController_v4_80
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|217513911", "217513911", "S10M010_Main", "box_Timer_v2_71.TimeElapsed", "box_MissionController_v4_80.Fail", l0, l1)
  l1:Fail()
end
function export:f_box_PhoneCommunicationController_62_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_64
  l0.SoundId = "soundbinary/720989137.bnk"
  l0 = self.box_PhoneCommunicationController_62
  l1 = self.box_PlayDialog_v2_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1281553580", "1281553580", "S10M010_Main", "box_PhoneCommunicationController_62.OnCommunicationFinished", "box_PlayDialog_v2_64.Start", l0, l1)
  l1:Start()
end
function export:f_box_PhoneCommunicationController_62_StartCommunicationOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_36()
  l0 = self.box_PhoneCommunicationController_62
  l1 = self.box_MultipleOR_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1724006595", "1724006595", "S10M010_Main", "box_PhoneCommunicationController_62.StartCommunicationOut", "box_MultipleOR_36.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Ordered_Output_35_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_29()
  l0 = self.box_MultipleOR_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1304850558", "1304850558", "S10M010_Main", "box_Ordered_Output_35.Out", "box_MultipleOR_29.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_35_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_36()
  l0 = self.box_MultipleOR_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|352193236", "352193236", "S10M010_Main", "box_Ordered_Output_35.Out", "box_MultipleOR_36.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_PhoneCommunicationController_82_StartCommunicationOut()
  local l0, l1
  self = self._graph
  l0 = self.box_Escape_Gameplay_87
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
  l0 = self.box_PhoneCommunicationController_82
  l1 = self.box_Escape_Gameplay_87
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|2074664613", "2074664613", "S10M010_Main", "box_PhoneCommunicationController_82.StartCommunicationOut", "box_Escape_Gameplay_87.Start", l0, l1)
  l1:Start()
end
function export:f_box_CinematicPrep_75_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_89()
  l0 = self.box_CinematicPrep_75
  l1 = self.box_MultipleOR_89
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1906108060", "1906108060", "S10M010_Main", "box_CinematicPrep_75.PostOut", "box_MultipleOR_89.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Show_Or_Hide_All_UI_58_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_89()
  l0 = self.box_MultipleOR_89
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|2095679460", "2095679460", "S10M010_Main", "box_Show_Or_Hide_All_UI_58.Shown", "box_MultipleOR_89.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_MissionLayer_v2_52_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|42730895"
  l0.Out = self.f_box_Get_Player_ID_2_Out
  l0 = self.box_MissionLayer_v2_52
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1305188796", "1305188796", "S10M010_Main", "box_MissionLayer_v2_52.Loaded", "box_Get_Player_ID_2.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_4_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_55()
  l0 = self.box_MultipleOR_4
  l1 = self.box_MultipleOR_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1839642151", "1839642151", "S10M010_Main", "box_MultipleOR_4.Out", "box_MultipleOR_55.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MultipleOR_42_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Player_Proximity_Monitor_11()
  l0 = self.box_MultipleOR_42
  l1 = self.box_Player_Proximity_Monitor_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|928573232", "928573232", "S10M010_Main", "box_MultipleOR_42.Out", "box_Player_Proximity_Monitor_11.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Teleport_To_SpawnPoint_73_TeleportDone()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372062800194176"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_94"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1371104507"
  l0.Out = self.f_box_AI_Agent_Zone_94_Out
  l0 = self.box_Teleport_To_SpawnPoint_73
  l1 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1021784366", "1021784366", "S10M010_Main", "box_Teleport_To_SpawnPoint_73.TeleportDone", "box_AI_Agent_Zone_94.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_PlaySound_v2_15_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372068135428113"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = 30
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1917302046"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_MissionMusicController_18_Deactivated
  l0 = self.box_PlaySound_v2_15
  l1 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|982011620", "982011620", "S10M010_Main", "box_PlaySound_v2_15.Out", "box_MissionMusicController_18.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_Compare_Boolean_v2_33_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_34()
  l0 = self.box_MultipleOR_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|568526729", "568526729", "S10M010_Main", "box_Compare_Boolean_v2_33.A_is_False", "box_MultipleOR_34.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Compare_Boolean_v2_33_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|534322630"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_35_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_35_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1120929414", "1120929414", "S10M010_Main", "box_Compare_Boolean_v2_33.A_is_True", "box_Ordered_Output_35.In", clone, l0)
  l0:In()
end
function export:f_box_OnceOnly_v3_66_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_74
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372055560432455"
  l0 = self.box_OnceOnly_v3_66
  l1 = self.box_PhoneCommunicationController_74
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1957407262", "1957407262", "S10M010_Main", "box_OnceOnly_v3_66.Out", "box_PhoneCommunicationController_74.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_CinematicPrep_77_PreOut()
  local l0, l1
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
  l0._name = "box_Cinema_Zone_Cleanup_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1697276126"
  l0._DynamicAnchors = {NotRemovableEntity = 2}
  l0.Out = self.f_box_Cinema_Zone_Cleanup_20_Out
  l0 = self.box_CinematicPrep_77
  l1 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1428878925", "1428878925", "S10M010_Main", "box_CinematicPrep_77.PreOut", "box_Cinema_Zone_Cleanup_20.CleanZone", l0, l1)
  l1:CleanZone()
end
function export:f_box_AISquadStateMonitor_56_ArrestState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_4()
  l0 = self.box_AISquadStateMonitor_56
  l1 = self.box_MultipleOR_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1670715547", "1670715547", "S10M010_Main", "box_AISquadStateMonitor_56.ArrestState", "box_MultipleOR_4.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_AISquadStateMonitor_56_CombatState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_4()
  l0 = self.box_AISquadStateMonitor_56
  l1 = self.box_MultipleOR_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|2038488746", "2038488746", "S10M010_Main", "box_AISquadStateMonitor_56.CombatState", "box_MultipleOR_4.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_AISquadStateMonitor_56_None()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_7()
  l0 = self.box_AISquadStateMonitor_56
  l1 = self.box_MultipleOR_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1451737410", "1451737410", "S10M010_Main", "box_AISquadStateMonitor_56.None", "box_MultipleOR_7.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_AISquadStateMonitor_56_SearchState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_4()
  l0 = self.box_AISquadStateMonitor_56
  l1 = self.box_MultipleOR_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|524235496", "524235496", "S10M010_Main", "box_AISquadStateMonitor_56.SearchState", "box_MultipleOR_4.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_AISquadStateMonitor_56_VanishState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_7()
  l0 = self.box_AISquadStateMonitor_56
  l1 = self.box_MultipleOR_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|960492439", "960492439", "S10M010_Main", "box_AISquadStateMonitor_56.VanishState", "box_MultipleOR_7.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Ordered_Output_59_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionZone_24()
  l0 = self.box_MissionZone_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|220948599", "220948599", "S10M010_Main", "box_Ordered_Output_59.Out", "box_MissionZone_24.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_59_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_42()
  l0 = self.box_MultipleOR_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|70329131", "70329131", "S10M010_Main", "box_Ordered_Output_59.Out", "box_MultipleOR_42.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_MissionCheckpointReach_81_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_61
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S10.S10M010.Objectives.Objective005",
    item = "Objective",
    id = "689595"
  }
  l0 = self.box_MissionCheckpointReach_81
  l1 = self.box_MissionMessageController_v3_61
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1745092629", "1745092629", "S10M010_Main", "box_MissionCheckpointReach_81.Out", "box_MissionMessageController_v3_61.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_ReinforcementSystemMonitor_v2_78_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.FelonySearchReached
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1771087142"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_45_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_ReinforcementSystemMonitor_v2_78
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|868313488", "868313488", "S10M010_Main", "box_ReinforcementSystemMonitor_v2_78.Disabled", "box_Compare_Boolean_v2_45.In", l0, l1)
  l1:In()
end
function export:f_box_ReinforcementSystemMonitor_v2_78_None()
  local l0, l1
  self = self._graph
  self:OnEnter_box_ReinforcementSystemController_v2_68()
  l0 = self.box_ReinforcementSystemMonitor_v2_78
  l1 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1288527778", "1288527778", "S10M010_Main", "box_ReinforcementSystemMonitor_v2_78.None", "box_ReinforcementSystemController_v2_68.StartReinforcing", l0, l1)
  l1:StartReinforcing()
end
function export:f_box_ReinforcementSystemMonitor_v2_78_Reinforcing()
  local l0
  self = self._graph
  self:OnEnter_box_ReinforcementSystemMonitor_v2_78()
  l0 = self.box_ReinforcementSystemMonitor_v2_78
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|934712093", "934712093", "S10M010_Main", "box_ReinforcementSystemMonitor_v2_78.Reinforcing", "box_ReinforcementSystemMonitor_v2_78.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_TimerToScreen_46_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Timer_v2_71()
  l0 = self.box_TimerToScreen_46
  l1 = self.box_Timer_v2_71
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1016127509", "1016127509", "S10M010_Main", "box_TimerToScreen_46.Stopped", "box_Timer_v2_71.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_TimerToScreen_46_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Timer_v2_71()
  l0 = self.box_TimerToScreen_46
  l1 = self.box_Timer_v2_71
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1212557127", "1212557127", "S10M010_Main", "box_TimerToScreen_46.TimeElapsed", "box_Timer_v2_71.Start", l0, l1)
  l1:Start()
end
function export:f_box_SetBoolean_v2_26_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_26
  self.FelonySearchReached = l0.Target
end
function export:f_box_SetBoolean_v2_26_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_26
  self.FelonySearchReached = l0.Target
end
function export:f_box_SetBoolean_v2_26_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_26
  self.FelonySearchReached = l0.Target
end
function export:f_box_SetBoolean_v2_26_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_26
  self.FelonySearchReached = l0.Target
  self:OnEnter_box_MultipleOR_55()
  l1 = self.box_MultipleOR_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1545538952", "1545538952", "S10M010_Main", "box_SetBoolean_v2_26.SetTrue", "box_MultipleOR_55.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_SetBoolean_v2_26_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_26
  self.FelonySearchReached = l0.Target
end
function export:f_box_PlaySequence_v5_49_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_44()
  l0 = self.box_PlaySequence_v5_49
  l1 = self.box_OnceOnly_v3_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|427839859", "427839859", "S10M010_Main", "box_PlaySequence_v5_49.Finished", "box_OnceOnly_v3_44.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_49_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_44()
  l0 = self.box_PlaySequence_v5_49
  l1 = self.box_OnceOnly_v3_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|167647678", "167647678", "S10M010_Main", "box_PlaySequence_v5_49.Skipped", "box_OnceOnly_v3_44.In", l0, l1)
  l1:In(0)
end
function export:f_box_MultipleOR_10_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Timer_v2_22()
  l0 = self.box_MultipleOR_10
  l1 = self.box_Timer_v2_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1454380109", "1454380109", "S10M010_Main", "box_MultipleOR_10.Out", "box_Timer_v2_22.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_36_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Timer_v2_19()
  l0 = self.box_MultipleOR_36
  l1 = self.box_Timer_v2_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|2078450242", "2078450242", "S10M010_Main", "box_MultipleOR_36.Out", "box_Timer_v2_19.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_89_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_81
  l0.Checkpoint = "CheckPoint_0"
  l0 = self.box_MultipleOR_89
  l1 = self.box_MissionCheckpointReach_81
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|997480446", "997480446", "S10M010_Main", "box_MultipleOR_89.Out", "box_MissionCheckpointReach_81.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_21_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_42()
  l0 = self.box_MultipleOR_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|199964229", "199964229", "S10M010_Main", "box_Ordered_Output_21.Out", "box_MultipleOR_42.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_21_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_43
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S10.S10M010.Objectives.Objective020",
    item = "Objective",
    id = "355774"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1215887492", "1215887492", "S10M010_Main", "box_Ordered_Output_21.Out", "box_MissionMessageController_v3_43.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_VehicleMonitor_v3_3_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|107226408"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_60_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_60_Out_1
  l0 = self.box_VehicleMonitor_v3_3
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1138324886", "1138324886", "S10M010_Main", "box_VehicleMonitor_v3_3.Disabled", "box_Ordered_Output_60.In", l0, l1)
  l1:In()
end
function export:f_box_VehicleMonitor_v3_3_Entered()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_65()
  l0 = self.box_VehicleMonitor_v3_3
  l1 = self.box_MultipleOR_65
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1296910373", "1296910373", "S10M010_Main", "box_VehicleMonitor_v3_3.Entered", "box_MultipleOR_65.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_VehicleMonitor_v3_3_Exiting()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Player_Proximity_Monitor_11()
  l0 = self.box_VehicleMonitor_v3_3
  l1 = self.box_Player_Proximity_Monitor_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|2016104668", "2016104668", "S10M010_Main", "box_VehicleMonitor_v3_3.Exiting", "box_Player_Proximity_Monitor_11.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_VehicleMonitor_v3_3_FullTakedown()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|2091832819"
  l0.Out = self.f_box_Simple_Node_23_Out
  l0 = self.box_VehicleMonitor_v3_3
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|831239524", "831239524", "S10M010_Main", "box_VehicleMonitor_v3_3.FullTakedown", "box_Simple_Node_23.In", l0, l1)
  l1:In()
end
function export:f_box_VehicleMonitor_v3_3_IsUnderwater()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_10()
  l0 = self.box_VehicleMonitor_v3_3
  l1 = self.box_MultipleOR_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1871674756", "1871674756", "S10M010_Main", "box_VehicleMonitor_v3_3.IsUnderwater", "box_MultipleOR_10.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_VehicleMonitor_v3_3_IsUnusable()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_10()
  l0 = self.box_VehicleMonitor_v3_3
  l1 = self.box_MultipleOR_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1801823679", "1801823679", "S10M010_Main", "box_VehicleMonitor_v3_3.IsUnusable", "box_MultipleOR_10.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Get_Player_ID_51_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372062800194176"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_93"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1403941849"
  l0.Out = self.f_box_AI_Agent_Zone_93_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|2073080209", "2073080209", "S10M010_Main", "box_Get_Player_ID_51.Out", "box_AI_Agent_Zone_93.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Simple_Node_30_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionZone_24()
  l0 = self.box_MissionZone_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|2124683211", "2124683211", "S10M010_Main", "box_Simple_Node_30.Out", "box_MissionZone_24.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_PlayDialog_v2_64_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_29()
  l0 = self.box_PlayDialog_v2_64
  l1 = self.box_MultipleOR_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1118500992", "1118500992", "S10M010_Main", "box_PlayDialog_v2_64.Finished", "box_MultipleOR_29.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_PlaySound_v2_17_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372068135428113"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1410855878"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0 = self.box_PlaySound_v2_17
  l1 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1970340362", "1970340362", "S10M010_Main", "box_PlaySound_v2_17.Out", "box_MissionMusicController_16.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_OnceOnly_v3_44_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Teleport_To_SpawnPoint_73
  l0.SpawnPoint = "9223372046778389044"
  l0.KeepBlackScreenOnExit = 1
  l0 = self.box_OnceOnly_v3_44
  l1 = self.box_Teleport_To_SpawnPoint_73
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1476395068", "1476395068", "S10M010_Main", "box_OnceOnly_v3_44.Out", "box_Teleport_To_SpawnPoint_73.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_v3_43_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_82
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372055560432462"
  l0 = self.box_MissionMessageController_v3_43
  l1 = self.box_PhoneCommunicationController_82
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1713807558", "1713807558", "S10M010_Main", "box_MissionMessageController_v3_43.Out", "box_PhoneCommunicationController_82.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_MissionMessageController_v3_91_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Download_Gameplay_85()
  l0 = self.box_MissionMessageController_v3_91
  l1 = self.box_Download_Gameplay_85
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1194811132", "1194811132", "S10M010_Main", "box_MissionMessageController_v3_91.Out", "box_Download_Gameplay_85.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_79_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_52
  l0.LayerName = "S10M010_Main"
  l0 = self.box_MultipleOR_79
  l1 = self.box_MissionLayer_v2_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1369925039", "1369925039", "S10M010_Main", "box_MultipleOR_79.Out", "box_MissionLayer_v2_52.Load", l0, l1)
  l1:Load()
end
function export:f_box_PGTController_v2_31_AllSpawned()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_47
  l0.CLO = "9223372046791239266"
  l0.SpawnOutsideLoadingRing = 1
  l0 = self.box_PGTController_v2_31
  l1 = self.box_CLOController_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|104882419", "104882419", "S10M010_Main", "box_PGTController_v2_31.AllSpawned", "box_CLOController_47.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Ordered_Output_25_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1043222585"
  l0.Out = self.f_box_Simple_Node_30_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|999618734", "999618734", "S10M010_Main", "box_Ordered_Output_25.Out", "box_Simple_Node_30.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_25_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Locate_Gameplay_67
  l0.EntityToLocate = self.SpyingVan
  l0.MissionArea = "9223372062742955225"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1346843148", "1346843148", "S10M010_Main", "box_Ordered_Output_25.Out", "box_Locate_Gameplay_67.Start", clone, l0)
  l0:Start()
end
function export:f_box_MultipleOR_7_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_AISquadStateController_54
  l0.Position = self.SpyingVan
  l0.Affiliation = "AFI"
  l0.IsThreat = 1
  l0.DispatchCallId = "COMS_Dispatch_HackDetected"
  l0.SearchOverrideParamTimeout = 120
  l0 = self.box_MultipleOR_7
  l1 = self.box_AISquadStateController_54
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|2122907253", "2122907253", "S10M010_Main", "box_MultipleOR_7.Out", "box_AISquadStateController_54.SetInTargetedSearch", l0, l1)
  l1:SetInTargetedSearch()
end
function export:f_box_PlaySound_v2_13_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_70
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372055560432457"
  l0 = self.box_PlaySound_v2_13
  l1 = self.box_PhoneCommunicationController_70
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|627504046", "627504046", "S10M010_Main", "box_PlaySound_v2_13.Out", "box_PhoneCommunicationController_70.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_ReinforcementSystemController_v2_68_ReinforcingStarted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_AISquadStateMonitor_56()
  l0 = self.box_AISquadStateMonitor_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1589467275", "1589467275", "S10M010_Main", "box_ReinforcementSystemController_v2_68.ReinforcingStarted", "box_AISquadStateMonitor_56.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_ReinforcementSystemController_v2_68_ReinforcingStopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_15
  l0.SoundId = "soundbinary/81442961.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|453586198", "453586198", "S10M010_Main", "box_ReinforcementSystemController_v2_68.ReinforcingStopped", "box_PlaySound_v2_15.Play", clone, l0)
  l0:Play()
end
function export:f_box_AI_Agent_Zone_94_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
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
  l0._name = "box_Cinema_Zone_Cleanup_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|2064410106"
  l0._DynamicAnchors = {NotRemovableEntity = 2}
  l0.Out = self.f_box_Cinema_Zone_Cleanup_1_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1315945967", "1315945967", "S10M010_Main", "box_AI_Agent_Zone_94.Out", "box_Cinema_Zone_Cleanup_1.CleanZone", clone, l0)
  l0:CleanZone()
end
function export:f_box_AI_Agent_Zone_93_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
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
  l0._name = "box_Cinema_Zone_Cleanup_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|180209121"
  l0._DynamicAnchors = {NotRemovableEntity = 2}
  l0.Out = self.f_box_Cinema_Zone_Cleanup_6_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|972671562", "972671562", "S10M010_Main", "box_AI_Agent_Zone_93.Out", "box_Cinema_Zone_Cleanup_6.CleanZone", clone, l0)
  l0:CleanZone()
end
function export:f_box_Compare_Boolean_v2_12_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_38()
  l0 = self.box_MultipleOR_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|729835220", "729835220", "S10M010_Main", "box_Compare_Boolean_v2_12.A_is_False", "box_MultipleOR_38.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_PhoneCommunicationController_74_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_62
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372055560432456"
  l0 = self.box_PhoneCommunicationController_74
  l1 = self.box_PhoneCommunicationController_62
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1563148876", "1563148876", "S10M010_Main", "box_PhoneCommunicationController_74.OnCommunicationFinished", "box_PhoneCommunicationController_62.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_MultipleOR_29_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_ReinforcementSystemMonitor_v2_78()
  l0 = self.box_MultipleOR_29
  l1 = self.box_ReinforcementSystemMonitor_v2_78
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|444309450", "444309450", "S10M010_Main", "box_MultipleOR_29.Out", "box_ReinforcementSystemMonitor_v2_78.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Download_Gameplay_85_CustomRatioReached()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_34()
  l0 = self.box_Download_Gameplay_85
  l1 = self.box_MultipleOR_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1325649205", "1325649205", "S10M010_Main", "box_Download_Gameplay_85.CustomRatioReached", "box_MultipleOR_34.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Download_Gameplay_85_CustomRatioReached_PostReset()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.FelonySearchReached
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|700065121"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_33_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_33_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_Download_Gameplay_85
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|244396166", "244396166", "S10M010_Main", "box_Download_Gameplay_85.CustomRatioReached PostReset", "box_Compare_Boolean_v2_33.In", l0, l1)
  l1:In()
end
function export:f_box_Download_Gameplay_85_DownloadCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VehicleMonitor_v3_3()
  l0 = self.box_Download_Gameplay_85
  l1 = self.box_VehicleMonitor_v3_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1422687125", "1422687125", "S10M010_Main", "box_Download_Gameplay_85.DownloadCompleted", "box_VehicleMonitor_v3_3.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Download_Gameplay_85_PauseRatioReached()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_38()
  l0 = self.box_Download_Gameplay_85
  l1 = self.box_MultipleOR_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1137782551", "1137782551", "S10M010_Main", "box_Download_Gameplay_85.PauseRatioReached", "box_MultipleOR_38.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Download_Gameplay_85_PauseRatioReached_PostReset()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.PauseReached
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1495902770"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_12_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_Download_Gameplay_85
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1558787831", "1558787831", "S10M010_Main", "box_Download_Gameplay_85.PauseRatioReached PostReset", "box_Compare_Boolean_v2_12.In", l0, l1)
  l1:In()
end
function export:f_box_Download_Gameplay_85_Ratio2Reached()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_40()
  l0 = self.box_Download_Gameplay_85
  l1 = self.box_MultipleOR_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|523718502", "523718502", "S10M010_Main", "box_Download_Gameplay_85.Ratio2Reached", "box_MultipleOR_40.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Download_Gameplay_85_Ratio2Reached_PostReset()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self._60percentDLReached
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1660052482"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_28_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_Download_Gameplay_85
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1831297296", "1831297296", "S10M010_Main", "box_Download_Gameplay_85.Ratio2Reached PostReset", "box_Compare_Boolean_v2_28.In", l0, l1)
  l1:In()
end
function export:f_box_Download_Gameplay_85_Stopped()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|990303152"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_21_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_21_Out_1
  l0 = self.box_Download_Gameplay_85
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1344582539", "1344582539", "S10M010_Main", "box_Download_Gameplay_85.Stopped", "box_Ordered_Output_21.In", l0, l1)
  l1:In()
end
function export:f_box_CinematicPrep_72_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|593349657"
  l0.Out = DummyFunction
  l0.Shown = self.f_box_Show_Or_Hide_All_UI_58_Shown
  l0.Hidden = DummyFunction
  l0 = self.box_CinematicPrep_72
  l1 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|461095167", "461095167", "S10M010_Main", "box_CinematicPrep_72.PostOut", "box_Show_Or_Hide_All_UI_58.Show", l0, l1)
  l1:Show()
end
function export:f_box_Locate_Gameplay_67_Located()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_76
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048237295726"
  l0 = self.box_Locate_Gameplay_67
  l1 = self.box_PhoneCommunicationController_76
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|2035878212", "2035878212", "S10M010_Main", "box_Locate_Gameplay_67.Located", "box_PhoneCommunicationController_76.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Locate_Gameplay_67_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1788038285"
  l0.Out = self.f_box_Simple_Node_41_Out
  l0 = self.box_Locate_Gameplay_67
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|199789214", "199789214", "S10M010_Main", "box_Locate_Gameplay_67.Started", "box_Simple_Node_41.In", l0, l1)
  l1:In()
end
function export:f_box_PGTController_v2_32_AllSpawned()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_50
  l0.CLO = "9223372046791239266"
  l0.SpawnOutsideLoadingRing = 1
  l0 = self.box_PGTController_v2_32
  l1 = self.box_CLOController_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|292688699", "292688699", "S10M010_Main", "box_PGTController_v2_32.AllSpawned", "box_CLOController_50.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Compare_Boolean_v2_28_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_40()
  l0 = self.box_MultipleOR_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1932286071", "1932286071", "S10M010_Main", "box_Compare_Boolean_v2_28.A_is_False", "box_MultipleOR_40.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_MultipleOR_34_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MultipleOR_34
  l1 = self.box_OnceOnly_v3_66
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|740417818", "740417818", "S10M010_Main", "box_MultipleOR_34.Out", "box_OnceOnly_v3_66.In", l0, l1)
  l1:In(0)
end
function export:f_box_Cinema_Zone_Cleanup_20_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_49
  l0.SceneEntity = "9223372047235831007"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S10/S10_Karaoke_CIN/s10_karaoke_cin.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1737705218", "1737705218", "S10M010_Main", "box_Cinema_Zone_Cleanup_20.Out", "box_PlaySequence_v5_49.Start", clone, l0)
  l0:Start()
end
function export:f_box_MultipleOR_55_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_AISquadStateMonitor_56()
  l0 = self.box_MultipleOR_55
  l1 = self.box_AISquadStateMonitor_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|311742920", "311742920", "S10M010_Main", "box_MultipleOR_55.Out", "box_AISquadStateMonitor_56.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Compare_Boolean_v2_45_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_7()
  l0 = self.box_MultipleOR_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1373351711", "1373351711", "S10M010_Main", "box_Compare_Boolean_v2_45.A_is_True", "box_MultipleOR_7.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_Simple_Node_41_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VehicleMonitor_v3_3()
  l0 = self.box_VehicleMonitor_v3_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|2025273380", "2025273380", "S10M010_Main", "box_Simple_Node_41.Out", "box_VehicleMonitor_v3_3.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Timer_v2_63_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_37
  l0.Bool = self.PauseReached
  l0 = self.box_Timer_v2_63
  l1 = self.box_SetBoolean_v2_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1175620985", "1175620985", "S10M010_Main", "box_Timer_v2_63.Started", "box_SetBoolean_v2_37.True", l0, l1)
  l1:True()
end
function export:f_box_Timer_v2_63_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_14
  l0.SoundId = "soundbinary/2679354804.bnk"
  l0 = self.box_Timer_v2_63
  l1 = self.box_PlaySound_v2_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1044543577", "1044543577", "S10M010_Main", "box_Timer_v2_63.Stopped", "box_PlaySound_v2_14.Play", l0, l1)
  l1:Play()
end
function export:f_box_Timer_v2_63_TimeElapsed()
  local l0
  self = self._graph
  self:OnEnter_box_Timer_v2_63()
  l0 = self.box_Timer_v2_63
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|2102101065", "2102101065", "S10M010_Main", "box_Timer_v2_63.TimeElapsed", "box_Timer_v2_63.Stop", l0, l0)
  l0:Stop()
end
function export:f_box_MultipleOR_40_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_48
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372055560432461"
  l0 = self.box_MultipleOR_40
  l1 = self.box_PhoneCommunicationController_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|665262579", "665262579", "S10M010_Main", "box_MultipleOR_40.Out", "box_PhoneCommunicationController_48.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_MissionMusicController_18_Deactivated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Mission_End_53()
  l0 = self.box_Mission_End_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1469962587", "1469962587", "S10M010_Main", "box_MissionMusicController_18.Deactivated", "box_Mission_End_53.End", clone, l0)
  l0:End()
end
function export:f_box_PhoneCommunicationController_48_StartCommunicationOut()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_39
  l0.Bool = self._60percentDLReached
  l0 = self.box_PhoneCommunicationController_48
  l1 = self.box_SetBoolean_v2_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1958459938", "1958459938", "S10M010_Main", "box_PhoneCommunicationController_48.StartCommunicationOut", "box_SetBoolean_v2_39.True", l0, l1)
  l1:True()
end
function export:f_box_MissionMessageController_v3_61_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1270739897"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_25_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_25_Out_1
  l0 = self.box_MissionMessageController_v3_61
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1732716151", "1732716151", "S10M010_Main", "box_MissionMessageController_v3_61.Out", "box_Ordered_Output_25.In", l0, l1)
  l1:In()
end
function export:f_box_PhoneCommunicationController_76_StartCommunicationOut()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_91
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
  l0 = self.box_PhoneCommunicationController_76
  l1 = self.box_MissionMessageController_v3_91
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|696990516", "696990516", "S10M010_Main", "box_PhoneCommunicationController_76.StartCommunicationOut", "box_MissionMessageController_v3_91.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_CLOController_47_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_47
  self.SpyingVan = l0.UserID
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  l0.Hour = 0
  l0.Minute = 30
  l0._graph = self
  l0._name = "box_SetTimeOfDay_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|4378593"
  l0.Out = self.f_box_SetTimeOfDay_8_Out
  l0 = self.box_CLOController_47
  l1 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1163804406", "1163804406", "S10M010_Main", "box_CLOController_47.OnUserInPlace", "box_SetTimeOfDay_8.SetTimeOfDay", l0, l1)
  l1:SetTimeOfDay()
end
function export:f_box_Show_Or_Hide_All_UI_90_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_77
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|882239195", "882239195", "S10M010_Main", "box_Show_Or_Hide_All_UI_90.Hidden", "box_CinematicPrep_77.PreCinematic", clone, l0)
  l0:PreCinematic()
end
function export:f_box_Simple_Node_27_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_9()
  l0 = self.box_MultipleOR_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|479586755", "479586755", "S10M010_Main", "box_Simple_Node_27.Out", "box_MultipleOR_9.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Cinema_Zone_Cleanup_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PGTController_v2_31
  l0.PGTMissionArea = "9223372070789975380"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1330021049", "1330021049", "S10M010_Main", "box_Cinema_Zone_Cleanup_1.Out", "box_PGTController_v2_31.Start", clone, l0)
  l0:Start()
end
function export:f_box_Escape_Gameplay_87_Escaped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_ReinforcementSystemController_v2_68()
  l0 = self.box_Escape_Gameplay_87
  l1 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|2046142147", "2046142147", "S10M010_Main", "box_Escape_Gameplay_87.Escaped", "box_ReinforcementSystemController_v2_68.StopReinforcing", l0, l1)
  l1:StopReinforcing()
end
function export:f_box_Simple_Node_23_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|2035486515"
  l0.Out = self.f_box_Simple_Node_27_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|459372209", "459372209", "S10M010_Main", "box_Simple_Node_23.Out", "box_Simple_Node_27.In", clone, l0)
  l0:In()
end
function export:f_box_SetBoolean_v2_39_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_39
  self._60percentDLReached = l0.Target
end
function export:f_box_SetBoolean_v2_39_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_39
  self._60percentDLReached = l0.Target
end
function export:f_box_SetBoolean_v2_39_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_39
  self._60percentDLReached = l0.Target
end
function export:f_box_SetBoolean_v2_39_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_39
  self._60percentDLReached = l0.Target
end
function export:f_box_SetBoolean_v2_39_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_39
  self._60percentDLReached = l0.Target
end
function export:f_box_MultipleOR_9_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionController_v4_5
  l0.EndReason = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S15.S15M010",
    item = "MissionFail",
    id = "693187"
  }
  l0 = self.box_MultipleOR_9
  l1 = self.box_MissionController_v4_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|943415695", "943415695", "S10M010_Main", "box_MultipleOR_9.Out", "box_MissionController_v4_5.Fail", l0, l1)
  l1:Fail()
end
function export:f_box_SetBoolean_v2_37_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_37
  self.PauseReached = l0.Target
end
function export:f_box_SetBoolean_v2_37_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_37
  self.PauseReached = l0.Target
end
function export:f_box_SetBoolean_v2_37_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_37
  self.PauseReached = l0.Target
end
function export:f_box_SetBoolean_v2_37_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_37
  self.PauseReached = l0.Target
  l0 = self.box_PlaySound_v2_13
  l0.SoundId = "soundbinary/2834973317.bnk"
  l0 = self.box_SetBoolean_v2_37
  l1 = self.box_PlaySound_v2_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|781703496", "781703496", "S10M010_Main", "box_SetBoolean_v2_37.SetTrue", "box_PlaySound_v2_13.Play", l0, l1)
  l1:Play()
end
function export:f_box_SetBoolean_v2_37_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_37
  self.PauseReached = l0.Target
end
function export:OnEnter_box_MultipleOR_65()
end
function export:OnEnter_box_Timer_v2_22()
  local l0
  l0 = self.box_Timer_v2_22
  l0.Seconds = 1
end
function export:OnEnter_box_Timer_v2_19()
  local l0
  l0 = self.box_Timer_v2_19
  l0.Seconds = 10
end
function export:OnEnter_box_Player_Proximity_Monitor_11()
  local l0
  l0 = self.box_Player_Proximity_Monitor_11
  l0.TargetEntity = self.SpyingVan
  l0.Radius = 50
  l0.MonitorConnectedJumper = 0
  l0.MonitorConnectedDrone = 0
end
function export:OnEnter_box_MultipleOR_38()
end
function export:OnEnter_box_TutorialController_57()
  local l0
  l0 = self.box_TutorialController_57
  l0.Notification = {
    section = "MISSIONS.COMMON.MESSAGES.MISSIONWARNING",
    item = "ExitingDownloadArea",
    id = "626756"
  }
  l0.Duration = 16
end
function export:OnEnter_box_Timer_v2_71()
  local l0
  l0 = self.box_Timer_v2_71
  l0.Seconds = 0.5
end
function export:OnEnter_box_MultipleOR_4()
end
function export:OnEnter_box_MultipleOR_42()
end
function export:OnEnter_box_AISquadStateMonitor_56()
  local l0
  l0 = self.box_AISquadStateMonitor_56
  l0.Affiliation = "AFI"
  l0.CheckStateNow = 1
end
function export:OnEnter_box_ReinforcementSystemMonitor_v2_78()
  local l0
  l0 = self.box_ReinforcementSystemMonitor_v2_78
  l0.Affiliation = "AFI"
  l0.CheckNow = 1
end
function export:OnEnter_box_TimerToScreen_46()
  local l0
  l0 = self.box_TimerToScreen_46
  l0.Seconds = 15
end
function export:OnEnter_box_MultipleOR_10()
end
function export:OnEnter_box_MultipleOR_36()
end
function export:OnEnter_box_MultipleOR_89()
end
function export:OnEnter_box_VehicleMonitor_v3_3()
  local l0
  l0 = self.box_VehicleMonitor_v3_3
  l0.Vehicle = self.SpyingVan
end
function export:OnEnter_box_OnceOnly_v3_44()
end
function export:OnEnter_box_MultipleOR_79()
end
function export:OnEnter_box_MultipleOR_7()
end
function export:OnEnter_box_ReinforcementSystemController_v2_68()
  local l0
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  l0.Target = nil
  l0.Affiliation = "AFI"
  l0.ReinforcementConfig = "ReinforcementConfig.9223372043023253486"
  l0.AgentList = nil
  l0.Center = nil
  l0.UnspawnOnStop = nil
  l0._graph = self
  l0._name = "box_ReinforcementSystemController_v2_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M010\\S10M010.domino|@S10M010_Main|1358976461"
  l0.Out = DummyFunction
  l0.ReinforcingStarted = self.f_box_ReinforcementSystemController_v2_68_ReinforcingStarted
  l0.ReinforcingStopped = self.f_box_ReinforcementSystemController_v2_68_ReinforcingStopped
  l0.ReinforcementLocationFixed = DummyFunction
  l0.ReinforcementLocationReleased = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
end
function export:OnEnter_box_MultipleOR_29()
end
function export:OnEnter_box_Download_Gameplay_85()
  local l0
  l0 = self.box_Download_Gameplay_85
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
function export:OnEnter_box_MissionZone_24()
  local l0
  l0 = self.box_MissionZone_24
  l0.MissionArea = "9223372058266851987"
  l0.MissionLayer = "S10M010_Main"
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
end
function export:OnEnter_box_MultipleOR_34()
end
function export:OnEnter_box_MultipleOR_55()
end
function export:OnEnter_box_Timer_v2_63()
  local l0
  l0 = self.box_Timer_v2_63
  l0.Seconds = 17
end
function export:OnEnter_box_MultipleOR_40()
end
function export:OnEnter_box_Mission_End_53()
  local l0
  l0 = self.box_Mission_End_53
  l0.Checkpoint = "CheckPoint_1"
  l0.MissionLayer = "S10M010_Main"
  l0.ShowMissionComplete = 1
end
function export:OnEnter_box_MultipleOR_9()
end
_compilerVersion = 4
