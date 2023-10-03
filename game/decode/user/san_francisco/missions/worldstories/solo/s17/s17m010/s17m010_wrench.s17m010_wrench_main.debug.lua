export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AIAgentZoneController.lua")
  cbox:RegisterBox("domino/System/ChangePlayerGkModelFromHumanConfig.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Download_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/InteractionScriptController.lua")
  cbox:RegisterBox("domino/System/InventoryController_v2.lua")
  cbox:RegisterBox("domino/System/LMALayerController.lua")
  cbox:RegisterBox("domino/System/LogicGate_v2.lua")
  cbox:RegisterBox("domino/System/MapPointController_v4.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  cbox:RegisterBox("domino/System/MoveableEntityMonitor.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Neutralize_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/ObjectiveMonitor_v2.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PerkController.lua")
  cbox:RegisterBox("domino/System/PGTController_v2.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S17/S17M010/s17m010_wrench_scr.S17M010_Wrench_SCR_Main.debug.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/SetTimeOfDay.lua")
  cbox:RegisterBox("domino/System/SmartphoneAppController.lua")
  cbox:RegisterBox("domino/System/TeleportToSpawnPoint.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TimeScaleController.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:RegisterGlobals("domino/user/san_francisco/missions/WorldStories/Solo/S17/S17M010/S17M010.globals.lua")
  cbox:LoadResource("soundbinary/417395271.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1956576177.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/338224551.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2227861272.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1271107571.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2290972761.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/4089360243.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "S17M010_Wrench_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main"
  self.WrenchDone = DummyFunction
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.S17M010_1stBombPlanted_Check = 0
  self.BarrelExplod_A = nil
  self.BarrelExplod_B = nil
  self.BarrelExplod_C = nil
  self.BarrelExplod_D = nil
  self.TBoneTruck = nil
  self.Search = "9223372059824359001"
  self.DataContainer = "9223372060006402705"
  self.ObjectiveDoor = "9223372052089156017"
  self.box_TriggerMonitor_v2_31 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_31
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|14905877"
  l0.Enabled = self.f_box_TriggerMonitor_v2_31_Enabled
  l0.Disabled = self.f_box_TriggerMonitor_v2_31_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_31_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_PGTController_v2_15 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_15
  l0._graph = self
  l0._name = "box_PGTController_v2_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|25963010"
  l0.Started = DummyFunction
  l0.Aborted = self.f_box_PGTController_v2_15_Aborted
  l0.AllSpawned = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_MissionLayer_v2_13 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_13
  l0._graph = self
  l0._name = "box_MissionLayer_v2_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|163464664"
  l0.Loaded = self.f_box_MissionLayer_v2_13_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_Timer_v2_27 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_27
  l0._graph = self
  l0._name = "box_Timer_v2_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|209527846"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_27_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Neutralize_Gameplay_82 = cbox:CreateBox("domino/Library/common/MissionIngredients.Neutralize_Gameplay.debug.lua")
  l0 = self.box_Neutralize_Gameplay_82
  l0._graph = self
  l0._name = "box_Neutralize_Gameplay_82"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|255303508"
  l0.Started = self.f_box_Neutralize_Gameplay_82_Started
  l0.Stopped = DummyFunction
  l0.Neutralized = self.f_box_Neutralize_Gameplay_82_Neutralized
  self.box_S17M010_Wrench_SCR_Main_46 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S17/S17M010/s17m010_wrench_scr.S17M010_Wrench_SCR_Main.debug.lua")
  l0 = self.box_S17M010_Wrench_SCR_Main_46
  l0._graph = self
  l0._name = "box_S17M010_Wrench_SCR_Main_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|268519564"
  l0.Out = DummyFunction
  l0.PlacingBombOut = DummyFunction
  l0.WallDestroyed = DummyFunction
  l0.FinishOutro = DummyFunction
  l0.StartedOutro = DummyFunction
  self.box_PGTController_v2_21 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_21
  l0._graph = self
  l0._name = "box_PGTController_v2_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|285651857"
  l0.Started = self.f_box_PGTController_v2_21_Started
  l0.Aborted = DummyFunction
  l0.AllSpawned = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_MissionZone_3 = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  l0 = self.box_MissionZone_3
  l0._graph = self
  l0._name = "box_MissionZone_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|288627097"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.SoftQuitCompleted = DummyFunction
  self.box_Interact_Gameplay_56 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_56
  l0._graph = self
  l0._name = "box_Interact_Gameplay_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|336751672"
  l0.Started = self.f_box_Interact_Gameplay_56_Started
  l0.Stopped = self.f_box_Interact_Gameplay_56_Stopped
  l0.Interacted = self.f_box_Interact_Gameplay_56_Interacted
  self.box_SetBoolean_v2_30 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_30
  l0._graph = self
  l0._name = "box_SetBoolean_v2_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|391237349"
  l0.Out = self.f_box_SetBoolean_v2_30_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_30_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_30_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_30_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_30_SetFromBool
  self.box_S17M010_Wrench_SCR_Main_51 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S17/S17M010/s17m010_wrench_scr.S17M010_Wrench_SCR_Main.debug.lua")
  l0 = self.box_S17M010_Wrench_SCR_Main_51
  l0._graph = self
  l0._name = "box_S17M010_Wrench_SCR_Main_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|434400581"
  l0.Out = DummyFunction
  l0.PlacingBombOut = self.f_box_S17M010_Wrench_SCR_Main_51_PlacingBombOut
  l0.WallDestroyed = DummyFunction
  l0.FinishOutro = DummyFunction
  l0.StartedOutro = DummyFunction
  self.box_MissionMessageController_v3_16 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_16
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|460508122"
  l0.Out = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_HackableController_v2_17 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_17
  l0._graph = self
  l0._name = "box_HackableController_v2_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|471257487"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = self.f_box_HackableController_v2_17_ProfileAssigned
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_CinematicPrep_40 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_40
  l0._graph = self
  l0._name = "box_CinematicPrep_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|490952487"
  l0.PreOut = self.f_box_CinematicPrep_40_PreOut
  l0.PostOut = DummyFunction
  self.box_PhoneCommunicationController_57 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_57
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|497002820"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_57_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Download_Gameplay_63 = cbox:CreateBox("domino/Library/common/MissionIngredients.Download_Gameplay.debug.lua")
  l0 = self.box_Download_Gameplay_63
  l0._graph = self
  l0._name = "box_Download_Gameplay_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|582550558"
  l0.Started = self.f_box_Download_Gameplay_63_Started
  l0.Stopped = DummyFunction
  l0.DownloadCompleted = self.f_box_Download_Gameplay_63_DownloadCompleted
  l0.Ratio1Reached = DummyFunction
  l0.Ratio1Reached_PostReset = DummyFunction
  l0.Ratio2Reached = DummyFunction
  l0.Ratio2Reached_PostReset = DummyFunction
  l0.CustomRatioReached = DummyFunction
  l0.CustomRatioReached_PostReset = DummyFunction
  l0.PauseRatioReached = DummyFunction
  l0.PauseRatioReached_PostReset = DummyFunction
  self.box_MapPointController_v4_8 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_8
  l0._graph = self
  l0._name = "box_MapPointController_v4_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|604921856"
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MultipleOR_12 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_12
  l0._graph = self
  l0._name = "box_MultipleOR_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|621606568"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_12_Out
  self.box_PlaySound_v2_75 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_75
  l0._graph = self
  l0._name = "box_PlaySound_v2_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|621859758"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MapPointController_v4_49 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_49
  l0._graph = self
  l0._name = "box_MapPointController_v4_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|653036895"
  l0.Shown = self.f_box_MapPointController_v4_49_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MissionCheckpointReach_11 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_11
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|677070992"
  l0.Out = self.f_box_MissionCheckpointReach_11_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MapPointController_v4_44 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_44
  l0._graph = self
  l0._name = "box_MapPointController_v4_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|725804056"
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_LogicGate_v2_62 = cbox:CreateBox("domino/System/LogicGate_v2.lua")
  l0 = self.box_LogicGate_v2_62
  l0._graph = self
  l0._name = "box_LogicGate_v2_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|781055849"
  l0.Out = self.f_box_LogicGate_v2_62_Out
  l0.Opened = DummyFunction
  l0.Closed = DummyFunction
  self.box_Moveable_Entity_Monitor_73 = cbox:CreateBox("domino/System/MoveableEntityMonitor.lua")
  l0 = self.box_Moveable_Entity_Monitor_73
  l0._graph = self
  l0._name = "box_Moveable_Entity_Monitor_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|786077390"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Moveable_Entity_Monitor_73_Disabled
  l0.OnMovementStarted = self.f_box_Moveable_Entity_Monitor_73_OnMovementStarted
  l0.OnMovementFinished = DummyFunction
  l0.OnFwdMovementStarted = DummyFunction
  l0.OnFwdMovementFinished = DummyFunction
  l0.OnBkwMovementStarted = DummyFunction
  l0.OnBkwMovementFinished = DummyFunction
  l0.OnMovementBlocked = DummyFunction
  l0.OnMovementUnblocked = DummyFunction
  l0.OnMovementPaused = DummyFunction
  l0.OnMovementUnpaused = DummyFunction
  self.box_Neutralize_Gameplay_83 = cbox:CreateBox("domino/Library/common/MissionIngredients.Neutralize_Gameplay.debug.lua")
  l0 = self.box_Neutralize_Gameplay_83
  l0._graph = self
  l0._name = "box_Neutralize_Gameplay_83"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|799560737"
  l0.Started = self.f_box_Neutralize_Gameplay_83_Started
  l0.Stopped = DummyFunction
  l0.Neutralized = self.f_box_Neutralize_Gameplay_83_Neutralized
  self.box_PhoneCommunicationController_22 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_22
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|825144799"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_HackableController_v2_2 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_2
  l0._graph = self
  l0._name = "box_HackableController_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|834515204"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = self.f_box_HackableController_v2_2_ProfileReset
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Timer_v2_43 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_43
  l0._graph = self
  l0._name = "box_Timer_v2_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|874475559"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_43_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PhoneCommunicationController_52 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_52
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|900304789"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_52_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_TriggerMonitor_v2_14 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_14
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|947971397"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TriggerMonitor_v2_14_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_14_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_PhoneCommunicationController_20 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_20
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1064778259"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_20_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_PlaySound_v2_18 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_18
  l0._graph = self
  l0._name = "box_PlaySound_v2_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1108938997"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Teleport_To_SpawnPoint_9 = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self.box_Teleport_To_SpawnPoint_9
  l0._graph = self
  l0._name = "box_Teleport_To_SpawnPoint_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1113051267"
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_box_Teleport_To_SpawnPoint_9_TeleportDone
  self.box_PlaySound_v2_54 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_54
  l0._graph = self
  l0._name = "box_PlaySound_v2_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1189667148"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_48 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_48
  l0._graph = self
  l0._name = "box_PlaySound_v2_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1199883265"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MissionZone_35 = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  l0 = self.box_MissionZone_35
  l0._graph = self
  l0._name = "box_MissionZone_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1211698447"
  l0.Enabled = self.f_box_MissionZone_35_Enabled
  l0.Disabled = DummyFunction
  l0.SoftQuitCompleted = DummyFunction
  self.box_ObjectiveMonitor_v2_19 = cbox:CreateBox("domino/System/ObjectiveMonitor_v2.lua")
  l0 = self.box_ObjectiveMonitor_v2_19
  l0._graph = self
  l0._name = "box_ObjectiveMonitor_v2_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1250377634"
  l0.Enabled = self.f_box_ObjectiveMonitor_v2_19_Enabled
  l0.Disabled = DummyFunction
  l0.GotIncrement = DummyFunction
  l0.ObjectiveCompleted = self.f_box_ObjectiveMonitor_v2_19_ObjectiveCompleted
  l0.ObjectiveMessageStarted = DummyFunction
  l0.ObjectiveMessageFinished = DummyFunction
  l0.IncrementReached = DummyFunction
  l0.IncrementNotReached = DummyFunction
  self.box_S17M010_Wrench_SCR_Main_5 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S17/S17M010/s17m010_wrench_scr.S17M010_Wrench_SCR_Main.debug.lua")
  l0 = self.box_S17M010_Wrench_SCR_Main_5
  l0._graph = self
  l0._name = "box_S17M010_Wrench_SCR_Main_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1319839447"
  l0.Out = self.f_box_S17M010_Wrench_SCR_Main_5_Out
  l0.PlacingBombOut = DummyFunction
  l0.WallDestroyed = DummyFunction
  l0.FinishOutro = DummyFunction
  l0.StartedOutro = DummyFunction
  self.box_Multiple_AND_67 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_67
  l0._graph = self
  l0._name = "box_Multiple_AND_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1335930862"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_67_Out
  self.box_MissionMessageController_v3_1 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_1
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1381470086"
  l0.Out = self.f_box_MissionMessageController_v3_1_Out
  l0.MessageCompleted = DummyFunction
  self.box_HackableController_v2_53 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_53
  l0._graph = self
  l0._name = "box_HackableController_v2_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1386193717"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_53_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_53_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_PlaySound_v2_6 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_6
  l0._graph = self
  l0._name = "box_PlaySound_v2_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1440423979"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Neutralize_Gameplay_80 = cbox:CreateBox("domino/Library/common/MissionIngredients.Neutralize_Gameplay.debug.lua")
  l0 = self.box_Neutralize_Gameplay_80
  l0._graph = self
  l0._name = "box_Neutralize_Gameplay_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1554448620"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Neutralized = self.f_box_Neutralize_Gameplay_80_Neutralized
  self.box_CinematicPrep_24 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_24
  l0._graph = self
  l0._name = "box_CinematicPrep_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1588888507"
  l0.PreOut = self.f_box_CinematicPrep_24_PreOut
  l0.PostOut = DummyFunction
  self.box_Perk_Controller_60 = cbox:CreateBox("domino/System/PerkController.lua")
  l0 = self.box_Perk_Controller_60
  l0._graph = self
  l0._name = "box_Perk_Controller_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1644144888"
  l0.PerkAdded = DummyFunction
  l0.PerkRemoved = DummyFunction
  l0.PerkListAdded = DummyFunction
  l0.PerkListRemoved = DummyFunction
  l0.PerkListReplaced = self.f_box_Perk_Controller_60_PerkListReplaced
  l0.PerkReseted = DummyFunction
  self.box_Interact_Gameplay_32 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_32
  l0._graph = self
  l0._name = "box_Interact_Gameplay_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1650299974"
  l0.Started = self.f_box_Interact_Gameplay_32_Started
  l0.Stopped = self.f_box_Interact_Gameplay_32_Stopped
  l0.Interacted = self.f_box_Interact_Gameplay_32_Interacted
  self.box_Multiple_AND_28 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_28
  l0._graph = self
  l0._name = "box_Multiple_AND_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1653832162"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_28_Out
  self.box_MissionMessageController_v3_64 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_64
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1756321701"
  l0.Out = self.f_box_MissionMessageController_v3_64_Out
  l0.MessageCompleted = DummyFunction
  self.box_MapPointController_v4_50 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_50
  l0._graph = self
  l0._name = "box_MapPointController_v4_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1783390724"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v4_50_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_S17M010_Wrench_SCR_Main_68 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S17/S17M010/s17m010_wrench_scr.S17M010_Wrench_SCR_Main.debug.lua")
  l0 = self.box_S17M010_Wrench_SCR_Main_68
  l0._graph = self
  l0._name = "box_S17M010_Wrench_SCR_Main_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1902133500"
  l0.Out = DummyFunction
  l0.PlacingBombOut = DummyFunction
  l0.WallDestroyed = DummyFunction
  l0.FinishOutro = self.f_box_S17M010_Wrench_SCR_Main_68_FinishOutro
  l0.StartedOutro = self.f_box_S17M010_Wrench_SCR_Main_68_StartedOutro
  self.box_MultipleOR_10 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_10
  l0._graph = self
  l0._name = "box_MultipleOR_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1909061203"
  l0._DynamicAnchors = {Input = 4}
  l0.Out = self.f_box_MultipleOR_10_Out
  self.box_PlaySound_v2_55 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_55
  l0._graph = self
  l0._name = "box_PlaySound_v2_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1929520564"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MultipleOR_34 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_34
  l0._graph = self
  l0._name = "box_MultipleOR_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|2011766901"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_34_Out
  self.box_LMA_Layer_Controller_25 = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self.box_LMA_Layer_Controller_25
  l0._graph = self
  l0._name = "box_LMA_Layer_Controller_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|2029844093"
  l0.Loaded = self.f_box_LMA_Layer_Controller_25_Loaded
  l0.Unloaded = DummyFunction
  self.box_LMA_Layer_Controller_26 = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self.box_LMA_Layer_Controller_26
  l0._graph = self
  l0._name = "box_LMA_Layer_Controller_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|2035286975"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_LMA_Layer_Controller_26_Unloaded
  self.box_Neutralize_Gameplay_81 = cbox:CreateBox("domino/Library/common/MissionIngredients.Neutralize_Gameplay.debug.lua")
  l0 = self.box_Neutralize_Gameplay_81
  l0._graph = self
  l0._name = "box_Neutralize_Gameplay_81"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|2080995510"
  l0.Started = self.f_box_Neutralize_Gameplay_81_Started
  l0.Stopped = DummyFunction
  l0.Neutralized = self.f_box_Neutralize_Gameplay_81_Neutralized
  self.box_PlaySound_v2_47 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_47
  l0._graph = self
  l0._name = "box_PlaySound_v2_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|2131702984"
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
function export:FromCheckPoint()
  local l0
  l0 = self.box_CinematicPrep_24
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|242595520", "242595520", "S17M010_Wrench_Main", "FromCheckPoint", "box_CinematicPrep_24.PreCinematic", self, l0)
  l0:PreCinematic()
end
function export:In()
  local l0
  l0 = self.box_CinematicPrep_40
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|2049888695", "2049888695", "S17M010_Wrench_Main", "In", "box_CinematicPrep_40.PreCinematic", self, l0)
  l0:PreCinematic()
end
function export:f_box_TriggerMonitor_v2_31_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_22
  l0.PlayerEntity = self.PlayerEntity
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053490873281"
  l0 = self.box_TriggerMonitor_v2_31
  l1 = self.box_PhoneCommunicationController_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|2054035193", "2054035193", "S17M010_Wrench_Main", "box_TriggerMonitor_v2_31.Disabled", "box_PhoneCommunicationController_22.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_TriggerMonitor_v2_31_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Moveable_Entity_Monitor_73()
  l0 = self.box_TriggerMonitor_v2_31
  l1 = self.box_Moveable_Entity_Monitor_73
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|59627465", "59627465", "S17M010_Wrench_Main", "box_TriggerMonitor_v2_31.Enabled", "box_Moveable_Entity_Monitor_73.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TriggerMonitor_v2_31_Enter()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1428842566"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_36_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_36_Out_1
  l0 = self.box_TriggerMonitor_v2_31
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|950662034", "950662034", "S17M010_Wrench_Main", "box_TriggerMonitor_v2_31.Enter", "box_Ordered_Output_36.In", l0, l1)
  l1:In()
end
function export:f_box_PGTController_v2_15_Aborted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372047921734151"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1330724048"
  l0.Out = self.f_box_AI_Agent_Zone_72_Out
  l0 = self.box_PGTController_v2_15
  l1 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|2137497631", "2137497631", "S17M010_Wrench_Main", "box_PGTController_v2_15.Aborted", "box_AI_Agent_Zone_72.Disable", l0, l1)
  l1:Disable()
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
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|357246492"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_33_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_33_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1475235886", "1475235886", "S17M010_Wrench_Main", "box_Get_Player_ID_7.Out", "box_Ordered_Output_33.In", clone, l0)
  l0:In()
end
function export:f_box_MissionLayer_v2_13_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|126679787"
  l0.Out = self.f_box_Get_Player_ID_7_Out
  l0 = self.box_MissionLayer_v2_13
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|2007887390", "2007887390", "S17M010_Wrench_Main", "box_MissionLayer_v2_13.Loaded", "box_Get_Player_ID_7.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_27_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ChangePlayerGkModelFromHumanConfig.lua")]
  l0.Model = "HumanConfig.9223372050789760492"
  l0.VoiceActorName = "dialogactors.dialogactors.wrench"
  l0._graph = self
  l0._name = "box_Change_GraphicKit_Model_On_Player_From_Human_Config_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|428129439"
  l0.Failed = DummyFunction
  l0.Changed = self.f_box_Change_GraphicKit_Model_On_Player_From_Human_Config_61_Changed
  l0.ResetDone = DummyFunction
  l0 = self.box_Timer_v2_27
  l1 = Boxes[PathID("domino/System/ChangePlayerGkModelFromHumanConfig.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1974820928", "1974820928", "S17M010_Wrench_Main", "box_Timer_v2_27.TimeElapsed", "box_Change_GraphicKit_Model_On_Player_From_Human_Config_61.Change", l0, l1)
  l1:Change()
end
function export:f_box_Neutralize_Gameplay_82_Neutralized()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1878485528"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_65_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_65_Out_1
  l0 = self.box_Neutralize_Gameplay_82
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1583456524", "1583456524", "S17M010_Wrench_Main", "box_Neutralize_Gameplay_82.Neutralized", "box_Ordered_Output_65.In", l0, l1)
  l1:In()
end
function export:f_box_Neutralize_Gameplay_82_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_Neutralize_Gameplay_80
  l0.Entity = "9223372055838634167"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Neutralize",
    id = "267208"
  }
  l0.BreakableSpawnedEffectsCount = 2
  l0 = self.box_Neutralize_Gameplay_82
  l1 = self.box_Neutralize_Gameplay_80
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|604057825", "604057825", "S17M010_Wrench_Main", "box_Neutralize_Gameplay_82.Started", "box_Neutralize_Gameplay_80.Start", l0, l1)
  l1:Start()
end
function export:f_box_PGTController_v2_21_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_PGTController_v2_21
  l1 = self.box_S17M010_Wrench_SCR_Main_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|465578840", "465578840", "S17M010_Wrench_Main", "box_PGTController_v2_21.Started", "box_S17M010_Wrench_SCR_Main_5.In", l0, l1)
  l1:In()
end
function export:f_box_Interact_Gameplay_56_Interacted()
  local l0
  self = self._graph
  self:OnEnter_box_Interact_Gameplay_56()
  l0 = self.box_Interact_Gameplay_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|2022930033", "2022930033", "S17M010_Wrench_Main", "box_Interact_Gameplay_56.Interacted", "box_Interact_Gameplay_56.Stop", l0, l0)
  l0:Stop()
end
function export:f_box_Interact_Gameplay_56_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_14()
  l0 = self.box_Interact_Gameplay_56
  l1 = self.box_TriggerMonitor_v2_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|898603886", "898603886", "S17M010_Wrench_Main", "box_Interact_Gameplay_56.Started", "box_TriggerMonitor_v2_14.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Interact_Gameplay_56_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_Download_Gameplay_63
  l0.TargetEntity = "9223372065377500839"
  l0.LinkedObjective = "Objective"
  l0.Duration = 70
  l0.DownloadRadiusPreset = "Exterior"
  l0.DownloadingText = {
    section = "HACKING.Interface Messages",
    item = "RetrievingData",
    id = "132264"
  }
  l0.DownloadingPausedText = {
    section = "HACKING.Interface Messages",
    item = "CoonnectionLost_NotMarcus",
    id = "698191"
  }
  l0.CustomRatio = 0.5
  l0.DetectionOnCustomRatio = 0
  l0.DownloadPauseRatio = 0.5
  l0.DownloadPauseDuration = -1
  l0.FleeOnDownloadDetected = 0
  l0.Affiliation = "UZulu"
  l0.ReinforcementConfig = "ReinforcementConfig.9223372063012128545"
  l0.AutoDetectDownload = 1
  l0 = self.box_Interact_Gameplay_56
  l1 = self.box_Download_Gameplay_63
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1656318023", "1656318023", "S17M010_Wrench_Main", "box_Interact_Gameplay_56.Stopped", "box_Download_Gameplay_63.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_33_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_34()
  l0 = self.box_MultipleOR_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|201720373", "201720373", "S17M010_Wrench_Main", "box_Ordered_Output_33.Out", "box_MultipleOR_34.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_33_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_12()
  l0 = self.box_MultipleOR_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|521603348", "521603348", "S17M010_Wrench_Main", "box_Ordered_Output_33.Out", "box_MultipleOR_12.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_SetBoolean_v2_30_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_30
  Globals.S17M010.PlayFromCheckpoint = l0.Target
end
function export:f_box_SetBoolean_v2_30_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_30
  Globals.S17M010.PlayFromCheckpoint = l0.Target
end
function export:f_box_SetBoolean_v2_30_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_30
  Globals.S17M010.PlayFromCheckpoint = l0.Target
end
function export:f_box_SetBoolean_v2_30_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_30
  Globals.S17M010.PlayFromCheckpoint = l0.Target
  l0 = self.box_MissionLayer_v2_13
  l0.LayerName = "S17M010_Main"
  l0 = self.box_SetBoolean_v2_30
  l1 = self.box_MissionLayer_v2_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|521302007", "521302007", "S17M010_Wrench_Main", "box_SetBoolean_v2_30.SetTrue", "box_MissionLayer_v2_13.Load", l0, l1)
  l1:Load()
end
function export:f_box_SetBoolean_v2_30_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_30
  Globals.S17M010.PlayFromCheckpoint = l0.Target
end
function export:f_box_Change_GraphicKit_Model_On_Player_From_Human_Config_61_Changed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ChangePlayerGkModelFromHumanConfig.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_28()
  l0 = self.box_Multiple_AND_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|444140540", "444140540", "S17M010_Wrench_Main", "box_Change_GraphicKit_Model_On_Player_From_Human_Config_61.Changed", "box_Multiple_AND_28.Condition", clone, l0)
  l0:Condition(0)
end
function export:f_box_S17M010_Wrench_SCR_Main_51_PlacingBombOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_67()
  l0 = self.box_S17M010_Wrench_SCR_Main_51
  l1 = self.box_Multiple_AND_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1459116956", "1459116956", "S17M010_Wrench_Main", "box_S17M010_Wrench_SCR_Main_51.PlacingBombOut", "box_Multiple_AND_67.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_HackableController_v2_17_ProfileAssigned()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/InventoryController_v2.lua")]
  l0.ItemDB = nil
  l0.ItemCount = nil
  l0.ReturnProjectilesToPlayer = nil
  l0.LoadoutItemListDB = "ItemInventoryLists.9223372048560598129"
  l0.FullWeaponWheelMode = 1
  l0._graph = self
  l0._name = "box_InventoryController_v2_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1910256019"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = DummyFunction
  l0.Removed = DummyFunction
  l0.Switched = self.f_box_InventoryController_v2_29_Switched
  l0.UnspawnedReleasedProjectiles = DummyFunction
  l0.ItemEquipped = DummyFunction
  l0.WheelActionMapDisabled = DummyFunction
  l0.WheelActionMapEnabled = DummyFunction
  l0 = self.box_HackableController_v2_17
  l1 = Boxes[PathID("domino/System/InventoryController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|631697914", "631697914", "S17M010_Wrench_Main", "box_HackableController_v2_17.ProfileAssigned", "box_InventoryController_v2_29.SwitchLocalPlayerInventory", l0, l1)
  l1:SwitchLocalPlayerInventory()
end
function export:f_box_CinematicPrep_40_PreOut()
  local l0, l1
  self = self._graph
  l0 = self.box_Teleport_To_SpawnPoint_9
  l0.SpawnPoint = "9223372046882200321"
  l0.UseFadeToBlack = 0
  l0.KeepBlackScreenOnExit = 1
  l0.BinkLoadingScreen = "BinkLoadingScreenDatabase.9223372059809485450"
  l0 = self.box_CinematicPrep_40
  l1 = self.box_Teleport_To_SpawnPoint_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1353220969", "1353220969", "S17M010_Wrench_Main", "box_CinematicPrep_40.PreOut", "box_Teleport_To_SpawnPoint_9.In", l0, l1)
  l1:In()
end
function export:f_box_PhoneCommunicationController_57_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_76"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1937064011"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_76_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_76_Out_1
  l0 = self.box_PhoneCommunicationController_57
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1204455728", "1204455728", "S17M010_Wrench_Main", "box_PhoneCommunicationController_57.OnCommunicationFinished", "box_Ordered_Output_76.In", l0, l1)
  l1:In()
end
function export:f_box_Download_Gameplay_63_DownloadCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372060398097128"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1325177789"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = self.f_box_InteractionScriptController_37_InteractionForced
  l0.Out = DummyFunction
  l0 = self.box_Download_Gameplay_63
  l1 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|890426815", "890426815", "S17M010_Wrench_Main", "box_Download_Gameplay_63.DownloadCompleted", "box_InteractionScriptController_37.ForceInteract", l0, l1)
  l1:ForceInteract()
end
function export:f_box_Download_Gameplay_63_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_52
  l0.PlayerEntity = self.PlayerEntity
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372060828744382"
  l0 = self.box_Download_Gameplay_63
  l1 = self.box_PhoneCommunicationController_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1313372738", "1313372738", "S17M010_Wrench_Main", "box_Download_Gameplay_63.Started", "box_PhoneCommunicationController_52.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_MultipleOR_12_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_28()
  l0 = self.box_MultipleOR_12
  l1 = self.box_Multiple_AND_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|491706956", "491706956", "S17M010_Wrench_Main", "box_MultipleOR_12.Out", "box_Multiple_AND_28.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_MapPointController_v4_49_Shown()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_31()
  l0 = self.box_MapPointController_v4_49
  l1 = self.box_TriggerMonitor_v2_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|723955150", "723955150", "S17M010_Wrench_Main", "box_MapPointController_v4_49.Shown", "box_TriggerMonitor_v2_31.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MissionCheckpointReach_11_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1246014433"
  l0._DynamicAnchors = {Out = 1}
  l0.Out[0] = self.f_box_Ordered_Output_77_Out_0
  l0 = self.box_MissionCheckpointReach_11
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|192319346", "192319346", "S17M010_Wrench_Main", "box_MissionCheckpointReach_11.Out", "box_Ordered_Output_77.In", l0, l1)
  l1:In()
end
function export:f_box_SmartphoneAppController_79_OverrideActivated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PGTController_v2_21
  l0.PGTMissionArea = "9223372047921734147"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1176318108", "1176318108", "S17M010_Wrench_Main", "box_SmartphoneAppController_79.OverrideActivated", "box_PGTController_v2_21.Start", clone, l0)
  l0:Start()
end
function export:f_box_LogicGate_v2_62_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v4_8
  l0.MapPoint = "9223372049130389101"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0 = self.box_LogicGate_v2_62
  l1 = self.box_MapPointController_v4_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1444420093", "1444420093", "S17M010_Wrench_Main", "box_LogicGate_v2_62.Out", "box_MapPointController_v4_8.Show", l0, l1)
  l1:Show()
end
function export:f_box_Moveable_Entity_Monitor_73_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v4_50
  l0.MapPoint = "9223372055838637030"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Destroy",
    id = "169179"
  }
  l0 = self.box_Moveable_Entity_Monitor_73
  l1 = self.box_MapPointController_v4_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|2091948246", "2091948246", "S17M010_Wrench_Main", "box_Moveable_Entity_Monitor_73.Disabled", "box_MapPointController_v4_50.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Moveable_Entity_Monitor_73_OnMovementStarted()
  local l0
  self = self._graph
  self:OnEnter_box_Moveable_Entity_Monitor_73()
  l0 = self.box_Moveable_Entity_Monitor_73
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|2084705209", "2084705209", "S17M010_Wrench_Main", "box_Moveable_Entity_Monitor_73.OnMovementStarted", "box_Moveable_Entity_Monitor_73.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Neutralize_Gameplay_83_Neutralized()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1991940456"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_58_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_58_Out_1
  l0 = self.box_Neutralize_Gameplay_83
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1625476833", "1625476833", "S17M010_Wrench_Main", "box_Neutralize_Gameplay_83.Neutralized", "box_Ordered_Output_58.In", l0, l1)
  l1:In()
end
function export:f_box_Neutralize_Gameplay_83_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_Neutralize_Gameplay_81
  l0.Entity = "9223372055838634163"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Neutralize",
    id = "267208"
  }
  l0.BreakableSpawnedEffectsCount = 2
  l0 = self.box_Neutralize_Gameplay_83
  l1 = self.box_Neutralize_Gameplay_81
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1250134517", "1250134517", "S17M010_Wrench_Main", "box_Neutralize_Gameplay_83.Started", "box_Neutralize_Gameplay_81.Start", l0, l1)
  l1:Start()
end
function export:f_box_HackableController_v2_2_ProfileReset()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_17
  l0.HackableEntity = self.PlayerEntity
  l0.Hacker = self.PlayerEntity
  l0.OasisProfilerInfo = {
    section = "PROFILER_SPECIFIC.PEOPLE.MISSION.Main_Cast.Wrench",
    item = "",
    id = "4294980209"
  }
  l0 = self.box_HackableController_v2_2
  l1 = self.box_HackableController_v2_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|698919631", "698919631", "S17M010_Wrench_Main", "box_HackableController_v2_2.ProfileReset", "box_HackableController_v2_17.AssignProfile", l0, l1)
  l1:AssignProfile()
end
function export:f_box_Ordered_Output_42_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_10()
  l0 = self.box_MultipleOR_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1101769613", "1101769613", "S17M010_Wrench_Main", "box_Ordered_Output_42.Out", "box_MultipleOR_10.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_42_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_43
  l0.Seconds = 6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1012395110", "1012395110", "S17M010_Wrench_Main", "box_Ordered_Output_42.Out", "box_Timer_v2_43.Start", clone, l0)
  l0:Start()
end
function export:f_box_Timer_v2_43_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_18
  l0.SoundId = "soundbinary/1956576177.bnk"
  l0 = self.box_Timer_v2_43
  l1 = self.box_PlaySound_v2_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|806156887", "806156887", "S17M010_Wrench_Main", "box_Timer_v2_43.TimeElapsed", "box_PlaySound_v2_18.Play", l0, l1)
  l1:Play()
end
function export:f_box_PhoneCommunicationController_52_StartCommunicationOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_LogicGate_v2_62()
  l0 = self.box_PhoneCommunicationController_52
  l1 = self.box_LogicGate_v2_62
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|410736654", "410736654", "S17M010_Wrench_Main", "box_PhoneCommunicationController_52.StartCommunicationOut", "box_LogicGate_v2_62.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_14_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_78"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|2028820018"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_78_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_78_Out_1
  l0 = self.box_TriggerMonitor_v2_14
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|257858148", "257858148", "S17M010_Wrench_Main", "box_TriggerMonitor_v2_14.Disabled", "box_Ordered_Output_78.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_14_Enter()
  local l0
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_14()
  l0 = self.box_TriggerMonitor_v2_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|372436618", "372436618", "S17M010_Wrench_Main", "box_TriggerMonitor_v2_14.Enter", "box_TriggerMonitor_v2_14.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_PhoneCommunicationController_20_StartCommunicationOut()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v4_44
  l0.MapPoint = "9223372049130389101"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0 = self.box_PhoneCommunicationController_20
  l1 = self.box_MapPointController_v4_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|274284601", "274284601", "S17M010_Wrench_Main", "box_PhoneCommunicationController_20.StartCommunicationOut", "box_MapPointController_v4_44.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Ordered_Output_41_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_34()
  l0 = self.box_MultipleOR_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1506746769", "1506746769", "S17M010_Wrench_Main", "box_Ordered_Output_41.Out", "box_MultipleOR_34.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_41_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_12()
  l0 = self.box_MultipleOR_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1035212292", "1035212292", "S17M010_Wrench_Main", "box_Ordered_Output_41.Out", "box_MultipleOR_12.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Teleport_To_SpawnPoint_9_TeleportDone()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1087590732"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_41_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_41_Out_1
  l0 = self.box_Teleport_To_SpawnPoint_9
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|517311607", "517311607", "S17M010_Wrench_Main", "box_Teleport_To_SpawnPoint_9.TeleportDone", "box_Ordered_Output_41.In", l0, l1)
  l1:In()
end
function export:f_box_MissionZone_35_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_53()
  l0 = self.box_MissionZone_35
  l1 = self.box_HackableController_v2_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1362751409", "1362751409", "S17M010_Wrench_Main", "box_MissionZone_35.Enabled", "box_HackableController_v2_53.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_Ordered_Output_77_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Interact_Gameplay_56()
  l0 = self.box_Interact_Gameplay_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|2016542361", "2016542361", "S17M010_Wrench_Main", "box_Ordered_Output_77.Out", "box_Interact_Gameplay_56.Start", clone, l0)
  l0:Start()
end
function export:f_box_ObjectiveMonitor_v2_19_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_67()
  l0 = self.box_ObjectiveMonitor_v2_19
  l1 = self.box_Multiple_AND_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|2072124852", "2072124852", "S17M010_Wrench_Main", "box_ObjectiveMonitor_v2_19.Enabled", "box_Multiple_AND_67.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_ObjectiveMonitor_v2_19_ObjectiveCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1890483179"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_23_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_23_Out_1
  l0 = self.box_ObjectiveMonitor_v2_19
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|986849446", "986849446", "S17M010_Wrench_Main", "box_ObjectiveMonitor_v2_19.ObjectiveCompleted", "box_Ordered_Output_23.In", l0, l1)
  l1:In()
end
function export:f_box_S17M010_Wrench_SCR_Main_5_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_LMA_Layer_Controller_25
  l0.LMALayerName = "SF_06_ServerFarms_LMA"
  l0 = self.box_S17M010_Wrench_SCR_Main_5
  l1 = self.box_LMA_Layer_Controller_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|742345525", "742345525", "S17M010_Wrench_Main", "box_S17M010_Wrench_SCR_Main_5.Out", "box_LMA_Layer_Controller_25.Load", l0, l1)
  l1:Load()
end
function export:f_box_InteractionScriptController_37_InteractionForced()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_1
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S17.S17M010.Objectives.Objective050",
    item = "Objective",
    id = "353064"
  }
  l0.IncrementalObjectiveTotal = 4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|690034570", "690034570", "S17M010_Wrench_Main", "box_InteractionScriptController_37.InteractionForced", "box_MissionMessageController_v3_1.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_AI_Agent_Zone_72_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionZone_3
  l0.MissionArea = "9223372048316855535"
  l0.MissionLayer = "S17M010_Main"
  l0.HardFail = 1
  l0.InstantFailOnExit = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1816652750", "1816652750", "S17M010_Wrench_Main", "box_AI_Agent_Zone_72.Out", "box_MissionZone_3.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Multiple_AND_67_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v4_49
  l0.MapPoint = "9223372055838637030"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Destroy",
    id = "169179"
  }
  l0 = self.box_Multiple_AND_67
  l1 = self.box_MapPointController_v4_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|832804356", "832804356", "S17M010_Wrench_Main", "box_Multiple_AND_67.Out", "box_MapPointController_v4_49.Show", l0, l1)
  l1:Show()
end
function export:f_box_MissionMessageController_v3_1_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ObjectiveMonitor_v2_19
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S17.S17M010.Objectives.Objective050",
    item = "Objective",
    id = "353064"
  }
  l0 = self.box_MissionMessageController_v3_1
  l1 = self.box_ObjectiveMonitor_v2_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|548642530", "548642530", "S17M010_Wrench_Main", "box_MissionMessageController_v3_1.Out", "box_ObjectiveMonitor_v2_19.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_HackableController_v2_53_Disabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_53()
  l0 = self.box_HackableController_v2_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|64230337", "64230337", "S17M010_Wrench_Main", "box_HackableController_v2_53.Disabled", "box_HackableController_v2_53.DisableProfiling", l0, l0)
  l0:DisableProfiling()
end
function export:f_box_HackableController_v2_53_ProfilingDisabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_64
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S17.S17M010.Objectives.Objective020",
    item = "Objective",
    id = "353061"
  }
  l0 = self.box_HackableController_v2_53
  l1 = self.box_MissionMessageController_v3_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|651851070", "651851070", "S17M010_Wrench_Main", "box_HackableController_v2_53.ProfilingDisabled", "box_MissionMessageController_v3_64.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_Ordered_Output_36_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_31()
  l0 = self.box_TriggerMonitor_v2_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|51886847", "51886847", "S17M010_Wrench_Main", "box_Ordered_Output_36.Out", "box_TriggerMonitor_v2_31.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_36_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_6
  l0.SoundId = "soundbinary/4089360243.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1778888941", "1778888941", "S17M010_Wrench_Main", "box_Ordered_Output_36.Out", "box_PlaySound_v2_6.Play", clone, l0)
  l0:Play()
end
function export:f_box_Neutralize_Gameplay_80_Neutralized()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1972516900"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_66_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_66_Out_1
  l0 = self.box_Neutralize_Gameplay_80
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1979564921", "1979564921", "S17M010_Wrench_Main", "box_Neutralize_Gameplay_80.Neutralized", "box_Ordered_Output_66.In", l0, l1)
  l1:In()
end
function export:f_box_CinematicPrep_24_PreOut()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_30
  l0.Bool = Globals.S17M010.PlayFromCheckpoint
  l0 = self.box_CinematicPrep_24
  l1 = self.box_SetBoolean_v2_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|852148495", "852148495", "S17M010_Wrench_Main", "box_CinematicPrep_24.PreOut", "box_SetBoolean_v2_30.True", l0, l1)
  l1:True()
end
function export:f_box_TimeScale_Controller_45_Unlocked()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|831231112", "831231112", "S17M010_Wrench_Main", "box_TimeScale_Controller_45.Unlocked", "WrenchDone", clone, self)
  self:WrenchDone()
end
function export:f_box_Perk_Controller_60_PerkListReplaced()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = nil
  l0.OverrideSettings = "UISmartphoneSettingsDB.9223372051906098134"
  l0._graph = self
  l0._name = "box_SmartphoneAppController_79"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|724882165"
  l0.HiddenSet = DummyFunction
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = DummyFunction
  l0.OverrideActivated = self.f_box_SmartphoneAppController_79_OverrideActivated
  l0.OverrideCleared = DummyFunction
  l0 = self.box_Perk_Controller_60
  l1 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|701492860", "701492860", "S17M010_Wrench_Main", "box_Perk_Controller_60.PerkListReplaced", "box_SmartphoneAppController_79.ActivateOverride", l0, l1)
  l1:ActivateOverride()
end
function export:f_box_Interact_Gameplay_32_Interacted()
  local l0
  self = self._graph
  self:OnEnter_box_Interact_Gameplay_32()
  l0 = self.box_Interact_Gameplay_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|163876038", "163876038", "S17M010_Wrench_Main", "box_Interact_Gameplay_32.Interacted", "box_Interact_Gameplay_32.Stop", l0, l0)
  l0:Stop()
end
function export:f_box_Interact_Gameplay_32_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_20
  l0.PlayerEntity = self.PlayerEntity
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053490873280"
  l0 = self.box_Interact_Gameplay_32
  l1 = self.box_PhoneCommunicationController_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1508814142", "1508814142", "S17M010_Wrench_Main", "box_Interact_Gameplay_32.Started", "box_PhoneCommunicationController_20.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Interact_Gameplay_32_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_Interact_Gameplay_32
  l1 = self.box_S17M010_Wrench_SCR_Main_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|16331361", "16331361", "S17M010_Wrench_Main", "box_Interact_Gameplay_32.Stopped", "box_S17M010_Wrench_SCR_Main_51.StartPlacingBomb", l0, l1)
  l1:StartPlacingBomb()
end
function export:f_box_Multiple_AND_28_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  l0.Hour = 22
  l0.Minute = nil
  l0._graph = self
  l0._name = "box_SetTimeOfDay_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1656889207"
  l0.Out = self.f_box_SetTimeOfDay_38_Out
  l0 = self.box_Multiple_AND_28
  l1 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1548141443", "1548141443", "S17M010_Wrench_Main", "box_Multiple_AND_28.Out", "box_SetTimeOfDay_38.SetTimeOfDay", l0, l1)
  l1:SetTimeOfDay()
end
function export:f_box_SetTimeOfDay_38_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  l0.TimeScale = nil
  l0._graph = self
  l0._name = "box_TimeScale_Controller_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1692141501"
  l0.WasSet = DummyFunction
  l0.WasReset = DummyFunction
  l0.Locked = self.f_box_TimeScale_Controller_4_Locked
  l0.Unlocked = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1842900337", "1842900337", "S17M010_Wrench_Main", "box_SetTimeOfDay_38.Out", "box_TimeScale_Controller_4.Lock", clone, l0)
  l0:Lock()
end
function export:f_box_TimeScale_Controller_4_Locked()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_2
  l0.HackableEntity = self.PlayerEntity
  l0.Hacker = self.PlayerEntity
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1381198702", "1381198702", "S17M010_Wrench_Main", "box_TimeScale_Controller_4.Locked", "box_HackableController_v2_2.ResetProfile", clone, l0)
  l0:ResetProfile()
end
function export:f_box_MissionMessageController_v3_64_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_11
  l0.Checkpoint = "CheckPoint_2"
  l0 = self.box_MissionMessageController_v3_64
  l1 = self.box_MissionCheckpointReach_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|31993863", "31993863", "S17M010_Wrench_Main", "box_MissionMessageController_v3_64.Out", "box_MissionCheckpointReach_11.In", l0, l1)
  l1:In()
end
function export:f_box_MapPointController_v4_50_Hidden()
  local l0, l1
  self = self._graph
  l0 = self.box_Neutralize_Gameplay_83
  l0.Entity = "9223372055838634161"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Neutralize",
    id = "267208"
  }
  l0.BreakableSpawnedEffectsCount = 2
  l0 = self.box_MapPointController_v4_50
  l1 = self.box_Neutralize_Gameplay_83
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|619101854", "619101854", "S17M010_Wrench_Main", "box_MapPointController_v4_50.Hidden", "box_Neutralize_Gameplay_83.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_65_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_10()
  l0 = self.box_MultipleOR_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1527113637", "1527113637", "S17M010_Wrench_Main", "box_Ordered_Output_65.Out", "box_MultipleOR_10.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_65_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_54
  l0.SoundId = "soundbinary/1271107571.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|84450730", "84450730", "S17M010_Wrench_Main", "box_Ordered_Output_65.Out", "box_PlaySound_v2_54.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_23_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S17M010_Wrench_SCR_Main_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|489129477", "489129477", "S17M010_Wrench_Main", "box_Ordered_Output_23.Out", "box_S17M010_Wrench_SCR_Main_46.InExplosion", clone, l0)
  l0:InExplosion()
end
function export:f_box_Ordered_Output_23_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_57
  l0.PlayerEntity = self.PlayerEntity
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372061187500538"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|27427842", "27427842", "S17M010_Wrench_Main", "box_Ordered_Output_23.Out", "box_PhoneCommunicationController_57.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_S17M010_Wrench_SCR_Main_68_FinishOutro()
  local l0, l1
  self = self._graph
  l0 = self.box_LMA_Layer_Controller_26
  l0.LMALayerName = "SF_06_ServerFarms_LMA"
  l0 = self.box_S17M010_Wrench_SCR_Main_68
  l1 = self.box_LMA_Layer_Controller_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1545363045", "1545363045", "S17M010_Wrench_Main", "box_S17M010_Wrench_SCR_Main_68.FinishOutro", "box_LMA_Layer_Controller_26.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_S17M010_Wrench_SCR_Main_68_StartedOutro()
  local l0, l1
  self = self._graph
  l0 = self.box_PGTController_v2_15
  l0.PGTMissionArea = "9223372047921734147"
  l0 = self.box_S17M010_Wrench_SCR_Main_68
  l1 = self.box_PGTController_v2_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|578803923", "578803923", "S17M010_Wrench_Main", "box_S17M010_Wrench_SCR_Main_68.StartedOutro", "box_PGTController_v2_15.Abort", l0, l1)
  l1:Abort()
end
function export:f_box_MultipleOR_10_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_16
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S17.S17M010.Objectives.Objective050",
    item = "Objective",
    id = "353064"
  }
  l0 = self.box_MultipleOR_10
  l1 = self.box_MissionMessageController_v3_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|2010697234", "2010697234", "S17M010_Wrench_Main", "box_MultipleOR_10.Out", "box_MissionMessageController_v3_16.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_InventoryController_v2_29_Switched()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InventoryController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Perk_Controller_60
  l0.PerkListDB = "PerksList.9223372059973323582"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|6673891", "6673891", "S17M010_Wrench_Main", "box_InventoryController_v2_29.Switched", "box_Perk_Controller_60.ReplacePerkList", clone, l0)
  l0:ReplacePerkList()
end
function export:f_box_Ordered_Output_59_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_10()
  l0 = self.box_MultipleOR_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1583841101", "1583841101", "S17M010_Wrench_Main", "box_Ordered_Output_59.Out", "box_MultipleOR_10.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_Ordered_Output_59_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_48
  l0.SoundId = "soundbinary/2290972761.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1431203213", "1431203213", "S17M010_Wrench_Main", "box_Ordered_Output_59.Out", "box_PlaySound_v2_48.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_76_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S17M010_Wrench_SCR_Main_68
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|321133076", "321133076", "S17M010_Wrench_Main", "box_Ordered_Output_76.Out", "box_S17M010_Wrench_SCR_Main_68.StartOutro", clone, l0)
  l0:StartOutro()
end
function export:f_box_Ordered_Output_76_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_75
  l0.SoundId = "soundbinary/338224551.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1836218336", "1836218336", "S17M010_Wrench_Main", "box_Ordered_Output_76.Out", "box_PlaySound_v2_75.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_66_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|857707204"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_42_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_42_Out_1
  l0.Out[2] = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1366089109", "1366089109", "S17M010_Wrench_Main", "box_Ordered_Output_66.Out", "box_Ordered_Output_42.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_66_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_55
  l0.SoundId = "soundbinary/417395271.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|2056645845", "2056645845", "S17M010_Wrench_Main", "box_Ordered_Output_66.Out", "box_PlaySound_v2_55.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_58_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_10()
  l0 = self.box_MultipleOR_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1034140774", "1034140774", "S17M010_Wrench_Main", "box_Ordered_Output_58.Out", "box_MultipleOR_10.Input", clone, l0)
  l0:Input(3)
end
function export:f_box_Ordered_Output_58_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_47
  l0.SoundId = "soundbinary/2227861272.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1466693082", "1466693082", "S17M010_Wrench_Main", "box_Ordered_Output_58.Out", "box_PlaySound_v2_47.Play", clone, l0)
  l0:Play()
end
function export:f_box_MultipleOR_34_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_27
  l0.Seconds = 0.1
  l0 = self.box_MultipleOR_34
  l1 = self.box_Timer_v2_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1481641176", "1481641176", "S17M010_Wrench_Main", "box_MultipleOR_34.Out", "box_Timer_v2_27.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_78_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Interact_Gameplay_32()
  l0 = self.box_Interact_Gameplay_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|300492408", "300492408", "S17M010_Wrench_Main", "box_Ordered_Output_78.Out", "box_Interact_Gameplay_32.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_78_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_LogicGate_v2_62()
  l0 = self.box_LogicGate_v2_62
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|739746150", "739746150", "S17M010_Wrench_Main", "box_Ordered_Output_78.Out", "box_LogicGate_v2_62.Close", clone, l0)
  l0:Close()
end
function export:f_box_LMA_Layer_Controller_25_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionZone_35
  l0.MissionArea = "9223372048316855535"
  l0.MissionLayer = "S17M010_Main"
  l0.HardFail = 1
  l0.InstantFailOnExit = 0
  l0 = self.box_LMA_Layer_Controller_25
  l1 = self.box_MissionZone_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1004476637", "1004476637", "S17M010_Wrench_Main", "box_LMA_Layer_Controller_25.Loaded", "box_MissionZone_35.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_LMA_Layer_Controller_26_Unloaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  l0.TimeScale = nil
  l0._graph = self
  l0._name = "box_TimeScale_Controller_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1595087233"
  l0.WasSet = DummyFunction
  l0.WasReset = DummyFunction
  l0.Locked = DummyFunction
  l0.Unlocked = self.f_box_TimeScale_Controller_45_Unlocked
  l0.Out = DummyFunction
  l0 = self.box_LMA_Layer_Controller_26
  l1 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1292932747", "1292932747", "S17M010_Wrench_Main", "box_LMA_Layer_Controller_26.Unloaded", "box_TimeScale_Controller_45.Unlock", l0, l1)
  l1:Unlock()
end
function export:f_box_Neutralize_Gameplay_81_Neutralized()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|1935212992"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_59_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_59_Out_1
  l0 = self.box_Neutralize_Gameplay_81
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|136000502", "136000502", "S17M010_Wrench_Main", "box_Neutralize_Gameplay_81.Neutralized", "box_Ordered_Output_59.In", l0, l1)
  l1:In()
end
function export:f_box_Neutralize_Gameplay_81_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_Neutralize_Gameplay_82
  l0.Entity = "9223372055838634165"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Neutralize",
    id = "267208"
  }
  l0.BreakableSpawnedEffectsCount = 2
  l0 = self.box_Neutralize_Gameplay_81
  l1 = self.box_Neutralize_Gameplay_82
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench.domino|@S17M010_Wrench_Main|900027768", "900027768", "S17M010_Wrench_Main", "box_Neutralize_Gameplay_81.Started", "box_Neutralize_Gameplay_82.Start", l0, l1)
  l1:Start()
end
function export:OnEnter_box_TriggerMonitor_v2_31()
  local l0
  l0 = self.box_TriggerMonitor_v2_31
  l0.Trigger = "9223372053490877210"
end
function export:OnEnter_box_Interact_Gameplay_56()
  local l0
  l0 = self.box_Interact_Gameplay_56
  l0.Entity = "9223372065377500839"
  l0.IsManagingInteraction = 1
end
function export:OnEnter_box_MultipleOR_12()
end
function export:OnEnter_box_LogicGate_v2_62()
end
function export:OnEnter_box_Moveable_Entity_Monitor_73()
  local l0
  l0 = self.box_Moveable_Entity_Monitor_73
  l0.MoveableEntity = "9223372063174923612"
end
function export:OnEnter_box_TriggerMonitor_v2_14()
  local l0
  l0 = self.box_TriggerMonitor_v2_14
  l0.Trigger = "9223372053490873659"
end
function export:OnEnter_box_Multiple_AND_67()
end
function export:OnEnter_box_HackableController_v2_53()
  local l0
  l0 = self.box_HackableController_v2_53
  l0.HackableEntity = "9223372060398097128"
end
function export:OnEnter_box_Interact_Gameplay_32()
  local l0
  l0 = self.box_Interact_Gameplay_32
  l0.Entity = "9223372046934185270"
  l0.MarkerLocId = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S17.S17M010.EXTRA.OBJECTIVELABEL",
    item = "Label_Breach",
    id = "675026"
  }
  l0.IsManagingInteraction = 1
end
function export:OnEnter_box_Multiple_AND_28()
end
function export:OnEnter_box_MultipleOR_10()
end
function export:OnEnter_box_MultipleOR_34()
end
function export:WrenchDone()
end
function export:Out()
end
_compilerVersion = 4
