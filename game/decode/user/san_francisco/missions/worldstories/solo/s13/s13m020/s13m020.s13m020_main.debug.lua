export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AISquadStateMonitor.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Escape_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/InteractionScriptController.lua")
  cbox:RegisterBox("domino/System/InteractionScriptMonitor_v2.lua")
  cbox:RegisterBox("domino/System/LMALayerController.lua")
  cbox:RegisterBox("domino/System/MediaSystemCustomBroadcastController.lua")
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
  cbox:RegisterBox("domino/System/PlayerConflictMonitor.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/ProximityMonitor.lua")
  cbox:RegisterBox("domino/Library/common/Cinematic.QuickPlayerDeath.debug.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
  cbox:LoadResource("soundbinary/81442961.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/4234733278.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1465087397.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3552307770.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "S13M020_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main"
  self.PlayerEntity = nil
  self.Lobby_security_hub = "9223372047723836629"
  self.RocketPuzzle_VR_AccessNode = "9223372048043319968"
  self.MissionTarget_AccessCleanRoom = "9223372048555633585"
  self.SecurityGlass_TriggerVolume = "9223372048632140257"
  self.Rocket_Temp_AccessPanel = "9223372049699745892"
  self.RocketPuzzle_ExitNode = "9223372048043478335"
  self.MissionTarget_InstallBackdoor_VR = "9223372050077588241"
  self._5Bollards = "9223372050778938156"
  self._3Bollards = "9223372050778938136"
  self.CleanRoom_MissionArea = "9223372051177745484"
  self.RC_CleanRoom_Trigger = "9223372055825162673"
  self.camhackable = "9223372056616453233"
  self.hackableCam = "9223372056616453287"
  self.LobbyEntry_MissionArea = "9223372060851526412"
  self.RC = 0
  self.RcId = nil
  self.Marcus_CleanRoom_Trigger = "9223372068943615286"
  self.box_Proximity_Monitor_102 = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self.box_Proximity_Monitor_102
  l0._graph = self
  l0._name = "box_Proximity_Monitor_102"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|119144549"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnterRadius = self.f_box_Proximity_Monitor_102_EnterRadius
  l0.ExitRadius = DummyFunction
  self.box_MissionLayer_v2_8 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_8
  l0._graph = self
  l0._name = "box_MissionLayer_v2_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|153336279"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_8_Unloaded
  l0.Reseted = DummyFunction
  self.box_PhoneCommunicationController_56 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_56
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|213268382"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = self.f_box_PhoneCommunicationController_56_OnCommunicationStarted
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_PlaySound_v2_36 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_36
  l0._graph = self
  l0._name = "box_PlaySound_v2_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|217799986"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionLayer_v2_16 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_16
  l0._graph = self
  l0._name = "box_MissionLayer_v2_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|245782971"
  l0.Loaded = self.f_box_MissionLayer_v2_16_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_HackableController_v2_52 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_52
  l0._graph = self
  l0._name = "box_HackableController_v2_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|251178573"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_52_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_PhoneCommunicationController_95 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_95
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_95"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|297094746"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = self.f_box_PhoneCommunicationController_95_StopCommunicationOut
  l0.OnCommunicationStarted = self.f_box_PhoneCommunicationController_95_OnCommunicationStarted
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_95_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_TriggerMonitor_v2_43 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_43
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|318269042"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TriggerMonitor_v2_43_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_43_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_TriggerMonitor_v2_7 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_7
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|335308829"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_7_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MultipleOR_80 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_80
  l0._graph = self
  l0._name = "box_MultipleOR_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|341100884"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_80_Out
  self.box_AISquadStateMonitor_100 = cbox:CreateBox("domino/System/AISquadStateMonitor.lua")
  l0 = self.box_AISquadStateMonitor_100
  l0._graph = self
  l0._name = "box_AISquadStateMonitor_100"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|387352717"
  l0.Enabled = self.f_box_AISquadStateMonitor_100_Enabled
  l0.Disabled = self.f_box_AISquadStateMonitor_100_Disabled
  l0.ArrestState = DummyFunction
  l0.ArrestStateAnyTarget = DummyFunction
  l0.CombatState = self.f_box_AISquadStateMonitor_100_CombatState
  l0.CombatStateAnyTarget = DummyFunction
  l0.SearchState = DummyFunction
  l0.SearchStateAnyTarget = DummyFunction
  l0.VanishState = DummyFunction
  l0.None = DummyFunction
  self.box_MultipleOR_93 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_93
  l0._graph = self
  l0._name = "box_MultipleOR_93"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|419105353"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_93_Out
  self.box_MissionLayer_v2_31 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_31
  l0._graph = self
  l0._name = "box_MissionLayer_v2_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|442451655"
  l0.Loaded = self.f_box_MissionLayer_v2_31_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_QuickPlayerDeath_101 = cbox:CreateBox("domino/Library/common/Cinematic.QuickPlayerDeath.debug.lua")
  l0 = self.box_QuickPlayerDeath_101
  l0._graph = self
  l0._name = "box_QuickPlayerDeath_101"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|446220160"
  l0.Enabled = self.f_box_QuickPlayerDeath_101_Enabled
  l0.Disabled = self.f_box_QuickPlayerDeath_101_Disabled
  l0.PlayerDead = DummyFunction
  self.box_PlaySound_v2_29 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_29
  l0._graph = self
  l0._name = "box_PlaySound_v2_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|478731414"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MissionMessageController_v3_78 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_78
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_78"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|517103300"
  l0.Out = self.f_box_MissionMessageController_v3_78_Out
  l0.MessageCompleted = DummyFunction
  self.box_CinematicPrep_17 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_17
  l0._graph = self
  l0._name = "box_CinematicPrep_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|521131357"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_17_PostOut
  self.box_PhoneCommunicationController_72 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_72
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|533550712"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_72_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_CinematicPrep_32 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_32
  l0._graph = self
  l0._name = "box_CinematicPrep_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|559907345"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_32_PostOut
  self.box_MultipleOR_35 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_35
  l0._graph = self
  l0._name = "box_MultipleOR_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|570146407"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_35_Out
  self.box_MissionCheckpointReach_34 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_34
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|628439470"
  l0.Out = self.f_box_MissionCheckpointReach_34_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MissionController_v4_12 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_12
  l0._graph = self
  l0._name = "box_MissionController_v4_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|653220257"
  self.box_PhoneCommunicationController_60 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_60
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|655091995"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Interact_Gameplay_10 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_10
  l0._graph = self
  l0._name = "box_Interact_Gameplay_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|687717687"
  l0.Started = self.f_box_Interact_Gameplay_10_Started
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_box_Interact_Gameplay_10_Interacted
  self.box_PhoneCommunicationController_65 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_65
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|718488346"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_PhoneCommunicationController_6 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_6
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|855699258"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = self.f_box_PhoneCommunicationController_6_OnCommunicationStarted
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Timer_v2_9 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_9
  l0._graph = self
  l0._name = "box_Timer_v2_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|904093927"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_9_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_98 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_98
  l0._graph = self
  l0._name = "box_Timer_v2_98"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|918578393"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_98_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Player_Conflict_Monitor_46 = cbox:CreateBox("domino/System/PlayerConflictMonitor.lua")
  l0 = self.box_Player_Conflict_Monitor_46
  l0._graph = self
  l0._name = "box_Player_Conflict_Monitor_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|953450720"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.InConflict = self.f_box_Player_Conflict_Monitor_46_InConflict
  l0.NOTInConflict = self.f_box_Player_Conflict_Monitor_46_NOTInConflict
  self.box_TriggerMonitor_v2_25 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_25
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1002317578"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TriggerMonitor_v2_25_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_25_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MissionZone_19 = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  l0 = self.box_MissionZone_19
  l0._graph = self
  l0._name = "box_MissionZone_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1006553656"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_MissionZone_19_Disabled
  l0.SoftQuitCompleted = DummyFunction
  self.box_PlaySound_v2_53 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_53
  l0._graph = self
  l0._name = "box_PlaySound_v2_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1033395726"
  l0.Out = DummyFunction
  l0.Started = self.f_box_PlaySound_v2_53_Started
  l0.Finished = DummyFunction
  self.box_MultipleOR_89 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_89
  l0._graph = self
  l0._name = "box_MultipleOR_89"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1051422973"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_89_Out
  self.box_Escape_Gameplay_20 = cbox:CreateBox("domino/Library/common/MissionIngredients.Escape_Gameplay.debug.lua")
  l0 = self.box_Escape_Gameplay_20
  l0._graph = self
  l0._name = "box_Escape_Gameplay_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1062151694"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Escaped = self.f_box_Escape_Gameplay_20_Escaped
  l0.LeftArea = DummyFunction
  self.box_PGTController_v2_30 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_30
  l0._graph = self
  l0._name = "box_PGTController_v2_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1128188826"
  l0.Started = self.f_box_PGTController_v2_30_Started
  l0.Aborted = DummyFunction
  l0.AllSpawned = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_MissionMessageController_v3_107 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_107
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_107"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1199470776"
  l0.Out = self.f_box_MissionMessageController_v3_107_Out
  l0.MessageCompleted = DummyFunction
  self.box_MultipleOR_15 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_15
  l0._graph = self
  l0._name = "box_MultipleOR_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1201096681"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_15_Out
  self.box_TriggerMonitor_v2_26 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_26
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1237662022"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TriggerMonitor_v2_26_Disabled
  l0.Enter = DummyFunction
  l0.Leave = self.f_box_TriggerMonitor_v2_26_Leave
  l0.Use = DummyFunction
  self.box_LMA_Layer_Controller_62 = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self.box_LMA_Layer_Controller_62
  l0._graph = self
  l0._name = "box_LMA_Layer_Controller_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1246539500"
  l0.Loaded = self.f_box_LMA_Layer_Controller_62_Loaded
  l0.Unloaded = DummyFunction
  self.box_TriggerMonitor_v2_58 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_58
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1284674359"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_58_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_AISquadStateMonitor_87 = cbox:CreateBox("domino/System/AISquadStateMonitor.lua")
  l0 = self.box_AISquadStateMonitor_87
  l0._graph = self
  l0._name = "box_AISquadStateMonitor_87"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1341955136"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ArrestState = DummyFunction
  l0.ArrestStateAnyTarget = DummyFunction
  l0.CombatState = self.f_box_AISquadStateMonitor_87_CombatState
  l0.CombatStateAnyTarget = DummyFunction
  l0.SearchState = DummyFunction
  l0.SearchStateAnyTarget = DummyFunction
  l0.VanishState = DummyFunction
  l0.None = DummyFunction
  self.box_PlaySound_v2_44 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_44
  l0._graph = self
  l0._name = "box_PlaySound_v2_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1343268769"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PhoneCommunicationController_61 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_61
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1452435962"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Interact_Gameplay_13 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_13
  l0._graph = self
  l0._name = "box_Interact_Gameplay_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1462437443"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_Interact_Gameplay_13_Stopped
  l0.Interacted = DummyFunction
  self.box_MissionMessageController_v3_21 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_21
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1467696598"
  l0.Out = self.f_box_MissionMessageController_v3_21_Out
  l0.MessageCompleted = DummyFunction
  self.box_PhoneCommunicationController_64 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_64
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1485236208"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_64_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_PhoneCommunicationController_3 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_3
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1515585800"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_OnceOnly_v3_66 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_66
  l0._graph = self
  l0._name = "box_OnceOnly_v3_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1599664424"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_66_Out
  l0.ResetOut = DummyFunction
  self.box_InteractionScriptMonitor_v2_97 = cbox:CreateBox("domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self.box_InteractionScriptMonitor_v2_97
  l0._graph = self
  l0._name = "box_InteractionScriptMonitor_v2_97"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1656088141"
  l0.Out = DummyFunction
  l0.Enabled = self.f_box_InteractionScriptMonitor_v2_97_Enabled
  l0.Disabled = self.f_box_InteractionScriptMonitor_v2_97_Disabled
  l0.InteractionStarted = self.f_box_InteractionScriptMonitor_v2_97_InteractionStarted
  l0.InteractionFailed = DummyFunction
  l0.InteractionFinished = self.f_box_InteractionScriptMonitor_v2_97_InteractionFinished
  l0.AnimationStarted = DummyFunction
  l0.AnimationFinished = DummyFunction
  self.box_MissionCheckpointReach_75 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_75
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1656941272"
  l0.Out = self.f_box_MissionCheckpointReach_75_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_CinematicPrep_120 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_120
  l0._graph = self
  l0._name = "box_CinematicPrep_120"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1670885962"
  l0.PreOut = self.f_box_CinematicPrep_120_PreOut
  l0.PostOut = DummyFunction
  self.box_Player_Conflict_Monitor_69 = cbox:CreateBox("domino/System/PlayerConflictMonitor.lua")
  l0 = self.box_Player_Conflict_Monitor_69
  l0._graph = self
  l0._name = "box_Player_Conflict_Monitor_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1690713544"
  l0.Enabled = self.f_box_Player_Conflict_Monitor_69_Enabled
  l0.Disabled = DummyFunction
  l0.InConflict = self.f_box_Player_Conflict_Monitor_69_InConflict
  l0.NOTInConflict = self.f_box_Player_Conflict_Monitor_69_NOTInConflict
  self.box_Timer_v2_57 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_57
  l0._graph = self
  l0._name = "box_Timer_v2_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1814410666"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_57_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PhoneCommunicationController_27 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_27
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1851644124"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_27_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_OnceOnly_v3_116 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_116
  l0._graph = self
  l0._name = "box_OnceOnly_v3_116"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1862470536"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_116_Out
  l0.ResetOut = DummyFunction
  self.box_PlaySound_v2_49 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_49
  l0._graph = self
  l0._name = "box_PlaySound_v2_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1872797193"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Hackable_Monitor_24 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_24
  l0._graph = self
  l0._name = "box_Hackable_Monitor_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1883472305"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_24_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_MissionMessageController_v3_70 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_70
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1916473591"
  l0.Out = self.f_box_MissionMessageController_v3_70_Out
  l0.MessageCompleted = DummyFunction
  self.box_PGTController_v2_23 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_23
  l0._graph = self
  l0._name = "box_PGTController_v2_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1919416699"
  l0.Started = self.f_box_PGTController_v2_23_Started
  l0.Aborted = DummyFunction
  l0.AllSpawned = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_MultipleOR_128 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_128
  l0._graph = self
  l0._name = "box_MultipleOR_128"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1925563485"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_128_Out
  self.box_PhoneCommunicationController_51 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_51
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1934961812"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_LMA_Layer_Controller_67 = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self.box_LMA_Layer_Controller_67
  l0._graph = self
  l0._name = "box_LMA_Layer_Controller_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1975413664"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_LMA_Layer_Controller_67_Unloaded
  self.box_PlaySequence_v5_108 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_108
  l0._graph = self
  l0._name = "box_PlaySequence_v5_108"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1981001711"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_108_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_108_Finished
  self.box_TriggerMonitor_v2_48 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_48
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|2017900560"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_48_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MissionMessageController_v3_5 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_5
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|2034193610"
  l0.Out = self.f_box_MissionMessageController_v3_5_Out
  l0.MessageCompleted = DummyFunction
  self.box_CinematicPrep_109 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_109
  l0._graph = self
  l0._name = "box_CinematicPrep_109"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|2062048296"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_109_PostOut
  self.box_PlaySound_v2_50 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_50
  l0._graph = self
  l0._name = "box_PlaySound_v2_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|2079369687"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MissionMessageController_v3_4 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_4
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|2086203986"
  l0.Out = self.f_box_MissionMessageController_v3_4_Out
  l0.MessageCompleted = DummyFunction
  self.box_CinematicPrep_76 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_76
  l0._graph = self
  l0._name = "box_CinematicPrep_76"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|2095818468"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_76_PostOut
  self.box_PhoneCommunicationController_96 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_96
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_96"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|2097398935"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_96_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionCheckpointReach_18 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_18
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|2117684196"
  l0.Out = self.f_box_MissionCheckpointReach_18_Out
  l0.AllCheckpointsDisabled = DummyFunction
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
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|347479771"
  l0.Out = self.f_box_Get_Player_ID_39_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|506140625", "506140625", "S13M020_Main", "CheckPoint_0", "box_Get_Player_ID_39.In", self, l0)
  l0:In()
end
function export:CheckPoint_1()
  local l0
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|688542477"
  l0.Out = self.f_box_Get_Player_ID_33_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|694567553", "694567553", "S13M020_Main", "CheckPoint_1", "box_Get_Player_ID_33.In", self, l0)
  l0:In()
end
function export:CheckPoint_2()
  local l0
  l0 = self.box_CinematicPrep_76
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|418310157", "418310157", "S13M020_Main", "CheckPoint_2", "box_CinematicPrep_76.PostCinematic", self, l0)
  l0:PostCinematic()
end
function export:In()
  local l0
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1078389692", "1078389692", "S13M020_Main", "In", "box_Get_Player_ID_1.In", self, l0)
  l0:In()
end
function export:f_box_Simple_Node_79_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hackable_Monitor_24()
  l0 = self.box_Hackable_Monitor_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1742631023", "1742631023", "S13M020_Main", "box_Simple_Node_79.Out", "box_Hackable_Monitor_24.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_59_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_72
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421347109"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|716234464", "716234464", "S13M020_Main", "box_Ordered_Output_59.Out", "box_PhoneCommunicationController_72.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_Ordered_Output_59_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_15()
  l0 = self.box_MultipleOR_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|609869964", "609869964", "S13M020_Main", "box_Ordered_Output_59.Out", "box_MultipleOR_15.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Proximity_Monitor_102_EnterRadius()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_103"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1091151209"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_103_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_103_Out_1
  l0 = self.box_Proximity_Monitor_102
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1558424317", "1558424317", "S13M020_Main", "box_Proximity_Monitor_102.EnterRadius", "box_Ordered_Output_103.In", l0, l1)
  l1:In()
end
function export:f_box_MissionLayer_v2_8_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_LMA_Layer_Controller_67
  l0.LMALayerName = "SV_02_DivisionX_LMA_HangarFloor"
  l0 = self.box_MissionLayer_v2_8
  l1 = self.box_LMA_Layer_Controller_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1342103277", "1342103277", "S13M020_Main", "box_MissionLayer_v2_8.Unloaded", "box_LMA_Layer_Controller_67.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_PhoneCommunicationController_56_OnCommunicationStarted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MissionZone_19()
  l0 = self.box_PhoneCommunicationController_56
  l1 = self.box_MissionZone_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1935573766", "1935573766", "S13M020_Main", "box_PhoneCommunicationController_56.OnCommunicationStarted", "box_MissionZone_19.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|64318160"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_59_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_59_Out_1
  l0 = self.box_MissionLayer_v2_2
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1170330231", "1170330231", "S13M020_Main", "box_MissionLayer_v2_2.Loaded", "box_Ordered_Output_59.In", l0, l1)
  l1:In()
end
function export:f_box_MissionLayer_v2_16_Loaded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_15()
  l0 = self.box_MissionLayer_v2_16
  l1 = self.box_MultipleOR_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1059310654", "1059310654", "S13M020_Main", "box_MissionLayer_v2_16.Loaded", "box_MultipleOR_15.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_HackableController_v2_52_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_4
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S13.S13M020",
    item = "Objective",
    id = "693240"
  }
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S13.S13M020.Objectives.Objective011",
    item = "Objective",
    id = "551690"
  }
  l0 = self.box_HackableController_v2_52
  l1 = self.box_MissionMessageController_v3_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|551593224", "551593224", "S13M020_Main", "box_HackableController_v2_52.Disabled", "box_MissionMessageController_v3_4.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_Ordered_Output_22_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_25()
  l0 = self.box_TriggerMonitor_v2_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|180036613", "180036613", "S13M020_Main", "box_Ordered_Output_22.Out", "box_TriggerMonitor_v2_25.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_22_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669163"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|527419294"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|810463185", "810463185", "S13M020_Main", "box_Ordered_Output_22.Out", "box_MissionMusicController_42.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_PhoneCommunicationController_95_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_128()
  l0 = self.box_PhoneCommunicationController_95
  l1 = self.box_MultipleOR_128
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|548607766", "548607766", "S13M020_Main", "box_PhoneCommunicationController_95.OnCommunicationFinished", "box_MultipleOR_128.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_PhoneCommunicationController_95_OnCommunicationStarted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_InteractionScriptController_127()
  l0 = self.box_PhoneCommunicationController_95
  l1 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1724900855", "1724900855", "S13M020_Main", "box_PhoneCommunicationController_95.OnCommunicationStarted", "box_InteractionScriptController_127.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_PhoneCommunicationController_95_StopCommunicationOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_128()
  l0 = self.box_PhoneCommunicationController_95
  l1 = self.box_MultipleOR_128
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1229491121", "1229491121", "S13M020_Main", "box_PhoneCommunicationController_95.StopCommunicationOut", "box_MultipleOR_128.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_TriggerMonitor_v2_43_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|277520806"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_22_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_22_Out_1
  l0 = self.box_TriggerMonitor_v2_43
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1640524911", "1640524911", "S13M020_Main", "box_TriggerMonitor_v2_43.Disabled", "box_Ordered_Output_22.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_43_Enter()
  local l0
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_43()
  l0 = self.box_TriggerMonitor_v2_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|176183119", "176183119", "S13M020_Main", "box_TriggerMonitor_v2_43.Enter", "box_TriggerMonitor_v2_43.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_TriggerMonitor_v2_7_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_3
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372056366647540"
  l0 = self.box_TriggerMonitor_v2_7
  l1 = self.box_PhoneCommunicationController_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|151664388", "151664388", "S13M020_Main", "box_TriggerMonitor_v2_7.Enter", "box_PhoneCommunicationController_3.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_MultipleOR_80_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MultipleOR_80
  l1 = self.box_MissionController_v4_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1436543486", "1436543486", "S13M020_Main", "box_MultipleOR_80.Out", "box_MissionController_v4_12.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_Get_Player_ID_39_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionLayer_v2_16
  l0.LayerName = "S13M020_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|515298489", "515298489", "S13M020_Main", "box_Get_Player_ID_39.Out", "box_MissionLayer_v2_16.Load", clone, l0)
  l0:Load()
end
function export:f_box_Media_System_Custom_Broadcast_Controller_14_LoadAndPlayRequested()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_18
  l0.Checkpoint = "CheckPoint_0"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1044758853", "1044758853", "S13M020_Main", "box_Media_System_Custom_Broadcast_Controller_14.LoadAndPlayRequested", "box_MissionCheckpointReach_18.In", clone, l0)
  l0:In()
end
function export:f_box_AISquadStateMonitor_100_CombatState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_93()
  l0 = self.box_AISquadStateMonitor_100
  l1 = self.box_MultipleOR_93
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|838261390", "838261390", "S13M020_Main", "box_AISquadStateMonitor_100.CombatState", "box_MultipleOR_93.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_AISquadStateMonitor_100_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_93()
  l0 = self.box_AISquadStateMonitor_100
  l1 = self.box_MultipleOR_93
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1588444633", "1588444633", "S13M020_Main", "box_AISquadStateMonitor_100.Disabled", "box_MultipleOR_93.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_AISquadStateMonitor_100_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Proximity_Monitor_102()
  l0 = self.box_AISquadStateMonitor_100
  l1 = self.box_Proximity_Monitor_102
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|575671106", "575671106", "S13M020_Main", "box_AISquadStateMonitor_100.Enabled", "box_Proximity_Monitor_102.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_InteractionScriptController_38_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_9
  l0.Seconds = 0.5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1645199870", "1645199870", "S13M020_Main", "box_InteractionScriptController_38.Disabled", "box_Timer_v2_9.Start", clone, l0)
  l0:Start()
end
function export:f_box_MultipleOR_93_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Proximity_Monitor_102()
  l0 = self.box_MultipleOR_93
  l1 = self.box_Proximity_Monitor_102
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1552182291", "1552182291", "S13M020_Main", "box_MultipleOR_93.Out", "box_Proximity_Monitor_102.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MissionLayer_v2_31_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = "CustomBroadcasts.9223372062677476431"
  l0.OnGenericChannel = nil
  l0.OnShopChannel = nil
  l0.OnBarChannel = 1
  l0.PlayOnLoad = 1
  l0.ApplyOnLoad = 1
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Controller_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1188719936"
  l0.LoadAndPlayRequested = self.f_box_Media_System_Custom_Broadcast_Controller_28_LoadAndPlayRequested
  l0.EndedAllCustomMediaBroadcasts = DummyFunction
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_MissionLayer_v2_31
  l1 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|592894664", "592894664", "S13M020_Main", "box_MissionLayer_v2_31.Loaded", "box_Media_System_Custom_Broadcast_Controller_28.LoadAndPlayCustomBroadcast", l0, l1)
  l1:LoadAndPlayCustomBroadcast()
end
function export:f_box_QuickPlayerDeath_101_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_InteractionScriptMonitor_v2_97()
  l0 = self.box_QuickPlayerDeath_101
  l1 = self.box_InteractionScriptMonitor_v2_97
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|239848409", "239848409", "S13M020_Main", "box_QuickPlayerDeath_101.Disabled", "box_InteractionScriptMonitor_v2_97.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_QuickPlayerDeath_101_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_96
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372060874250264"
  l0 = self.box_QuickPlayerDeath_101
  l1 = self.box_PhoneCommunicationController_96
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1141978880", "1141978880", "S13M020_Main", "box_QuickPlayerDeath_101.Enabled", "box_PhoneCommunicationController_96.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_MissionMessageController_v3_78_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_107
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S13.S13M020.Objectives.Objective011",
    item = "Objective",
    id = "551690"
  }
  l0 = self.box_MissionMessageController_v3_78
  l1 = self.box_MissionMessageController_v3_107
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1038320733", "1038320733", "S13M020_Main", "box_MissionMessageController_v3_78.Out", "box_MissionMessageController_v3_107.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_CinematicPrep_17_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1517259535"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_77_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_77_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_77_Out_2
  l0 = self.box_CinematicPrep_17
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|293249134", "293249134", "S13M020_Main", "box_CinematicPrep_17.PostOut", "box_Ordered_Output_77.In", l0, l1)
  l1:In()
end
function export:f_box_PhoneCommunicationController_72_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_57
  l0.Seconds = 4
  l0 = self.box_PhoneCommunicationController_72
  l1 = self.box_Timer_v2_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1171960534", "1171960534", "S13M020_Main", "box_PhoneCommunicationController_72.OnCommunicationFinished", "box_Timer_v2_57.Start", l0, l1)
  l1:Start()
end
function export:f_box_CinematicPrep_32_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_35()
  l0 = self.box_CinematicPrep_32
  l1 = self.box_MultipleOR_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|270884384", "270884384", "S13M020_Main", "box_CinematicPrep_32.PostOut", "box_MultipleOR_35.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MultipleOR_35_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_34
  l0.Checkpoint = "CheckPoint_1"
  l0 = self.box_MultipleOR_35
  l1 = self.box_MissionCheckpointReach_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|878108911", "878108911", "S13M020_Main", "box_MultipleOR_35.Out", "box_MissionCheckpointReach_34.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_63_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_InteractionScriptController_127()
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|2115202583", "2115202583", "S13M020_Main", "box_Ordered_Output_63.Out", "box_InteractionScriptController_127.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_63_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_36
  l0.Entity = "9223372072010077191"
  l0.SoundId = "soundbinary/4234733278.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|214817557", "214817557", "S13M020_Main", "box_Ordered_Output_63.Out", "box_PlaySound_v2_36.Play", clone, l0)
  l0:Play()
end
function export:f_box_MissionCheckpointReach_34_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|2121195813"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_74_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_74_Out_1
  l0 = self.box_MissionCheckpointReach_34
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|2126110359", "2126110359", "S13M020_Main", "box_MissionCheckpointReach_34.Out", "box_Ordered_Output_74.In", l0, l1)
  l1:In()
end
function export:f_box_Interact_Gameplay_10_Interacted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_85"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1197545818"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_85_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_85_Out_1
  l0.Out[2] = DummyFunction
  l0 = self.box_Interact_Gameplay_10
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|34685572", "34685572", "S13M020_Main", "box_Interact_Gameplay_10.Interacted", "box_Ordered_Output_85.In", l0, l1)
  l1:In()
end
function export:f_box_Interact_Gameplay_10_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372063771896633"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_104"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|975847717"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Interact_Gameplay_10
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|80808179", "80808179", "S13M020_Main", "box_Interact_Gameplay_10.Started", "box_VisibilityController_v2_104.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Get_Player_ID_33_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionLayer_v2_31
  l0.LayerName = "S13M020_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1571569444", "1571569444", "S13M020_Main", "box_Get_Player_ID_33.Out", "box_MissionLayer_v2_31.Load", clone, l0)
  l0:Load()
end
function export:f_box_Ordered_Output_99_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_InteractionScriptMonitor_v2_97()
  l0 = self.box_InteractionScriptMonitor_v2_97
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|893704838", "893704838", "S13M020_Main", "box_Ordered_Output_99.Out", "box_InteractionScriptMonitor_v2_97.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_99_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_AISquadStateMonitor_100()
  l0 = self.box_AISquadStateMonitor_100
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1324776969", "1324776969", "S13M020_Main", "box_Ordered_Output_99.Out", "box_AISquadStateMonitor_100.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MissionMusicController_68_Deactivated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1779480426", "1779480426", "S13M020_Main", "box_MissionMusicController_68.Deactivated", "box_MissionMessageController_v3_21.ShowMissionComplete", clone, l0)
  l0:ShowMissionComplete()
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
  l0 = self.box_LMA_Layer_Controller_62
  l0.LMALayerName = "SV_02_DivisionX_LMA_HangarFloor"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1211084835", "1211084835", "S13M020_Main", "box_Get_Player_ID_1.Out", "box_LMA_Layer_Controller_62.Load", clone, l0)
  l0:Load()
end
function export:f_box_PhoneCommunicationController_6_OnCommunicationStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_78
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S13.S13M020",
    item = "Objective",
    id = "693240"
  }
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S13.S13M020.Objectives.Objective011",
    item = "Objective",
    id = "551690"
  }
  l0.ObjectiveSub2 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S13.S13M020.Objectives.Objective012",
    item = "Objective",
    id = "551691"
  }
  l0.ShowPreviousObjectiveComplete = 0
  l0 = self.box_PhoneCommunicationController_6
  l1 = self.box_MissionMessageController_v3_78
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1386093600", "1386093600", "S13M020_Main", "box_PhoneCommunicationController_6.OnCommunicationStarted", "box_MissionMessageController_v3_78.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_Timer_v2_9_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PGTController_v2_30
  l0.PGTMissionArea = "9223372046892760472"
  l0 = self.box_Timer_v2_9
  l1 = self.box_PGTController_v2_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1900206195", "1900206195", "S13M020_Main", "box_Timer_v2_9.TimeElapsed", "box_PGTController_v2_30.Start", l0, l1)
  l1:Start()
end
function export:f_box_InteractionScriptController_55_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Interact_Gameplay_13()
  l0 = self.box_Interact_Gameplay_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1163891263", "1163891263", "S13M020_Main", "box_InteractionScriptController_55.Enabled", "box_Interact_Gameplay_13.Start", clone, l0)
  l0:Start()
end
function export:f_box_Timer_v2_98_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1884831413"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_54_Out_0
  l0.Out[1] = DummyFunction
  l0 = self.box_Timer_v2_98
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1654829293", "1654829293", "S13M020_Main", "box_Timer_v2_98.TimeElapsed", "box_Ordered_Output_54.In", l0, l1)
  l1:In()
end
function export:f_box_Player_Conflict_Monitor_46_InConflict()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_29
  l0.SoundId = "soundbinary/3552307770.bnk"
  l0 = self.box_Player_Conflict_Monitor_46
  l1 = self.box_PlaySound_v2_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|379488126", "379488126", "S13M020_Main", "box_Player_Conflict_Monitor_46.InConflict", "box_PlaySound_v2_29.Play", l0, l1)
  l1:Play()
end
function export:f_box_Player_Conflict_Monitor_46_NOTInConflict()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_44
  l0.SoundId = "soundbinary/1465087397.bnk"
  l0 = self.box_Player_Conflict_Monitor_46
  l1 = self.box_PlaySound_v2_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|4203203", "4203203", "S13M020_Main", "box_Player_Conflict_Monitor_46.NOTInConflict", "box_PlaySound_v2_44.Play", l0, l1)
  l1:Play()
end
function export:f_box_InteractionScriptController_37_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372046566095244"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|412647020"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_38_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1727832005", "1727832005", "S13M020_Main", "box_InteractionScriptController_37.Disabled", "box_InteractionScriptController_38.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_TriggerMonitor_v2_25_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Player_Conflict_Monitor_46()
  l0 = self.box_TriggerMonitor_v2_25
  l1 = self.box_Player_Conflict_Monitor_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1281094870", "1281094870", "S13M020_Main", "box_TriggerMonitor_v2_25.Disabled", "box_Player_Conflict_Monitor_46.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TriggerMonitor_v2_25_Enter()
  local l0
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_25()
  l0 = self.box_TriggerMonitor_v2_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|2119002931", "2119002931", "S13M020_Main", "box_TriggerMonitor_v2_25.Enter", "box_TriggerMonitor_v2_25.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_MissionZone_19_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_5
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S13.S13M020.Objectives.Objective013",
    item = "Objective",
    id = "551692"
  }
  l0.ShowPreviousObjectiveComplete = 1
  l0.HasObjectiveMarker = 0
  l0 = self.box_MissionZone_19
  l1 = self.box_MissionMessageController_v3_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|754650263", "754650263", "S13M020_Main", "box_MissionZone_19.Disabled", "box_MissionMessageController_v3_5.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_Ordered_Output_41_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_51
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372051292474588"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1430605993", "1430605993", "S13M020_Main", "box_Ordered_Output_41.Out", "box_PhoneCommunicationController_51.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_PlaySound_v2_53_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Player_Conflict_Monitor_69()
  l0 = self.box_PlaySound_v2_53
  l1 = self.box_Player_Conflict_Monitor_69
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|112748247", "112748247", "S13M020_Main", "box_PlaySound_v2_53.Started", "box_Player_Conflict_Monitor_69.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MultipleOR_89_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_86"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1100524978"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_86_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_86_Out_1
  l0 = self.box_MultipleOR_89
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|2136464310", "2136464310", "S13M020_Main", "box_MultipleOR_89.Out", "box_Ordered_Output_86.In", l0, l1)
  l1:In()
end
function export:f_box_Escape_Gameplay_20_Escaped()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1944279325"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_73_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_73_Out_1
  l0 = self.box_Escape_Gameplay_20
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1568017578", "1568017578", "S13M020_Main", "box_Escape_Gameplay_20.Escaped", "box_Ordered_Output_73.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_103_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_AISquadStateMonitor_100()
  l0 = self.box_AISquadStateMonitor_100
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|628795708", "628795708", "S13M020_Main", "box_Ordered_Output_103.Out", "box_AISquadStateMonitor_100.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_103_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_95
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372060874250263"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1741082190", "1741082190", "S13M020_Main", "box_Ordered_Output_103.Out", "box_PhoneCommunicationController_95.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_Ordered_Output_86_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_48()
  l0 = self.box_TriggerMonitor_v2_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|454409989", "454409989", "S13M020_Main", "box_Ordered_Output_86.Out", "box_TriggerMonitor_v2_48.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_86_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hackable_Monitor_24()
  l0 = self.box_Hackable_Monitor_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1840523572", "1840523572", "S13M020_Main", "box_Ordered_Output_86.Out", "box_Hackable_Monitor_24.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_PGTController_v2_30_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_32
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_PGTController_v2_30
  l1 = self.box_CinematicPrep_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1316900446", "1316900446", "S13M020_Main", "box_PGTController_v2_30.Started", "box_CinematicPrep_32.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_Simple_Node_40_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionZone_19()
  l0 = self.box_MissionZone_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1770049916", "1770049916", "S13M020_Main", "box_Simple_Node_40.Out", "box_MissionZone_19.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Media_System_Custom_Broadcast_Controller_28_LoadAndPlayRequested()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372046566095242"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|990393376"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_37_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|626232823", "626232823", "S13M020_Main", "box_Media_System_Custom_Broadcast_Controller_28.LoadAndPlayRequested", "box_InteractionScriptController_37.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_85_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_6
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050222327018"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|591118027", "591118027", "S13M020_Main", "box_Ordered_Output_85.Out", "box_PhoneCommunicationController_6.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_Ordered_Output_85_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_89()
  l0 = self.box_MultipleOR_89
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|547966730", "547966730", "S13M020_Main", "box_Ordered_Output_85.Out", "box_MultipleOR_89.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_MissionMessageController_v3_107_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_99"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|734473740"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_99_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_99_Out_1
  l0 = self.box_MissionMessageController_v3_107
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|753449664", "753449664", "S13M020_Main", "box_MissionMessageController_v3_107.Out", "box_Ordered_Output_99.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_15_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = "CustomBroadcasts.9223372062677476431"
  l0.OnGenericChannel = nil
  l0.OnShopChannel = nil
  l0.OnBarChannel = 1
  l0.PlayOnLoad = 1
  l0.ApplyOnLoad = 1
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Controller_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|371159936"
  l0.LoadAndPlayRequested = self.f_box_Media_System_Custom_Broadcast_Controller_14_LoadAndPlayRequested
  l0.EndedAllCustomMediaBroadcasts = DummyFunction
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_MultipleOR_15
  l1 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1520642354", "1520642354", "S13M020_Main", "box_MultipleOR_15.Out", "box_Media_System_Custom_Broadcast_Controller_14.LoadAndPlayCustomBroadcast", l0, l1)
  l1:LoadAndPlayCustomBroadcast()
end
function export:f_box_TriggerMonitor_v2_26_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_70
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S13.S13M020.Objectives.Objective013",
    item = "Objective",
    id = "551692"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_TriggerMonitor_v2_26
  l1 = self.box_MissionMessageController_v3_70
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1031223176", "1031223176", "S13M020_Main", "box_TriggerMonitor_v2_26.Disabled", "box_MissionMessageController_v3_70.ShowLastObjectiveComplete", l0, l1)
  l1:ShowLastObjectiveComplete()
end
function export:f_box_TriggerMonitor_v2_26_Leave()
  local l0
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_26()
  l0 = self.box_TriggerMonitor_v2_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|2057291955", "2057291955", "S13M020_Main", "box_TriggerMonitor_v2_26.Leave", "box_TriggerMonitor_v2_26.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_LMA_Layer_Controller_62_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "S13M020_Main"
  l0 = self.box_LMA_Layer_Controller_62
  l1 = self.box_MissionLayer_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|981267483", "981267483", "S13M020_Main", "box_LMA_Layer_Controller_62.Loaded", "box_MissionLayer_v2_2.Load", l0, l1)
  l1:Load()
end
function export:f_box_TriggerMonitor_v2_58_Enter()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|2141031003"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_11_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_11_Out_1
  l0 = self.box_TriggerMonitor_v2_58
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1912637167", "1912637167", "S13M020_Main", "box_TriggerMonitor_v2_58.Enter", "box_Ordered_Output_11.In", l0, l1)
  l1:In()
end
function export:f_box_AISquadStateMonitor_87_CombatState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_89()
  l0 = self.box_AISquadStateMonitor_87
  l1 = self.box_MultipleOR_89
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1508891596", "1508891596", "S13M020_Main", "box_AISquadStateMonitor_87.CombatState", "box_MultipleOR_89.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_InteractionScriptController_47_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_17
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1971280428", "1971280428", "S13M020_Main", "box_InteractionScriptController_47.Disabled", "box_CinematicPrep_17.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_Interact_Gameplay_13_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_35()
  l0 = self.box_Interact_Gameplay_13
  l1 = self.box_MultipleOR_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1909661468", "1909661468", "S13M020_Main", "box_Interact_Gameplay_13.Stopped", "box_MultipleOR_35.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MissionMessageController_v3_21_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_8
  l0.LayerName = "S13M020_Main"
  l0 = self.box_MissionMessageController_v3_21
  l1 = self.box_MissionLayer_v2_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1317778791", "1317778791", "S13M020_Main", "box_MissionMessageController_v3_21.Out", "box_MissionLayer_v2_8.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_PhoneCommunicationController_64_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_26()
  l0 = self.box_PhoneCommunicationController_64
  l1 = self.box_TriggerMonitor_v2_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|747596655", "747596655", "S13M020_Main", "box_PhoneCommunicationController_64.OnCommunicationFinished", "box_TriggerMonitor_v2_26.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Ordered_Output_77_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Interact_Gameplay_10
  l0.Entity = "9223372046566095242"
  l0.IsManagingInteraction = 1
  l0.PlayerOnly = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|2116109293", "2116109293", "S13M020_Main", "box_Ordered_Output_77.Out", "box_Interact_Gameplay_10.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_77_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TriggerMonitor_v2_58
  l0.Trigger = self.Marcus_CleanRoom_Trigger
  l0.AutoDisable = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1674622204", "1674622204", "S13M020_Main", "box_Ordered_Output_77.Out", "box_TriggerMonitor_v2_58.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_77_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_7()
  l0 = self.box_TriggerMonitor_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1617894740", "1617894740", "S13M020_Main", "box_Ordered_Output_77.Out", "box_TriggerMonitor_v2_7.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_OnceOnly_v3_66_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_65
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048268127948"
  l0 = self.box_OnceOnly_v3_66
  l1 = self.box_PhoneCommunicationController_65
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1643881688", "1643881688", "S13M020_Main", "box_OnceOnly_v3_66.Out", "box_PhoneCommunicationController_65.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_InteractionScriptMonitor_v2_97_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_InteractionScriptController_55()
  l0 = self.box_InteractionScriptMonitor_v2_97
  l1 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|758725912", "758725912", "S13M020_Main", "box_InteractionScriptMonitor_v2_97.Disabled", "box_InteractionScriptController_55.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_InteractionScriptMonitor_v2_97_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_InteractionScriptController_55()
  l0 = self.box_InteractionScriptMonitor_v2_97
  l1 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1014646736", "1014646736", "S13M020_Main", "box_InteractionScriptMonitor_v2_97.Enabled", "box_InteractionScriptController_55.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_InteractionScriptMonitor_v2_97_InteractionFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_QuickPlayerDeath_101()
  l0 = self.box_InteractionScriptMonitor_v2_97
  l1 = self.box_QuickPlayerDeath_101
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1979767227", "1979767227", "S13M020_Main", "box_InteractionScriptMonitor_v2_97.InteractionFinished", "box_QuickPlayerDeath_101.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_InteractionScriptMonitor_v2_97_InteractionStarted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_QuickPlayerDeath_101()
  l0 = self.box_InteractionScriptMonitor_v2_97
  l1 = self.box_QuickPlayerDeath_101
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|798232448", "798232448", "S13M020_Main", "box_InteractionScriptMonitor_v2_97.InteractionStarted", "box_QuickPlayerDeath_101.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MissionCheckpointReach_75_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_64
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048268129355"
  l0 = self.box_MissionCheckpointReach_75
  l1 = self.box_PhoneCommunicationController_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1126138315", "1126138315", "S13M020_Main", "box_MissionCheckpointReach_75.Out", "box_PhoneCommunicationController_64.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Simple_Node_71_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_48()
  l0 = self.box_TriggerMonitor_v2_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|300848229", "300848229", "S13M020_Main", "box_Simple_Node_71.Out", "box_TriggerMonitor_v2_48.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_CinematicPrep_120_PreOut()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_98
  l0.Seconds = 2
  l0 = self.box_CinematicPrep_120
  l1 = self.box_Timer_v2_98
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1122098944", "1122098944", "S13M020_Main", "box_CinematicPrep_120.PreOut", "box_Timer_v2_98.Start", l0, l1)
  l1:Start()
end
function export:f_box_Player_Conflict_Monitor_69_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Player_Conflict_Monitor_46()
  l0 = self.box_Player_Conflict_Monitor_69
  l1 = self.box_Player_Conflict_Monitor_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1977118301", "1977118301", "S13M020_Main", "box_Player_Conflict_Monitor_69.Enabled", "box_Player_Conflict_Monitor_46.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Player_Conflict_Monitor_69_InConflict()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_50
  l0.SoundId = "soundbinary/3552307770.bnk"
  l0 = self.box_Player_Conflict_Monitor_69
  l1 = self.box_PlaySound_v2_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1051387372", "1051387372", "S13M020_Main", "box_Player_Conflict_Monitor_69.InConflict", "box_PlaySound_v2_50.Play", l0, l1)
  l1:Play()
end
function export:f_box_Player_Conflict_Monitor_69_NOTInConflict()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_49
  l0.SoundId = "soundbinary/1465087397.bnk"
  l0 = self.box_Player_Conflict_Monitor_69
  l1 = self.box_PlaySound_v2_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|527604819", "527604819", "S13M020_Main", "box_Player_Conflict_Monitor_69.NOTInConflict", "box_PlaySound_v2_49.Play", l0, l1)
  l1:Play()
end
function export:f_box_Ordered_Output_45_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_52
  l0.HackableEntity = self.Rocket_Temp_AccessPanel
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|773451626", "773451626", "S13M020_Main", "box_Ordered_Output_45.Out", "box_HackableController_v2_52.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_Ordered_Output_45_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1155598965"
  l0.Out = self.f_box_Simple_Node_40_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|2086362394", "2086362394", "S13M020_Main", "box_Ordered_Output_45.Out", "box_Simple_Node_40.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_45_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_43()
  l0 = self.box_TriggerMonitor_v2_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|729551649", "729551649", "S13M020_Main", "box_Ordered_Output_45.Out", "box_TriggerMonitor_v2_43.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_45_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1666409559"
  l0.Out = self.f_box_Simple_Node_71_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|183089845", "183089845", "S13M020_Main", "box_Ordered_Output_45.Out", "box_Simple_Node_71.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_45_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_79"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|15023959"
  l0.Out = self.f_box_Simple_Node_79_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|267122788", "267122788", "S13M020_Main", "box_Ordered_Output_45.Out", "box_Simple_Node_79.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_45_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_88"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|2012140950"
  l0.Out = self.f_box_Simple_Node_88_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|93416402", "93416402", "S13M020_Main", "box_Ordered_Output_45.Out", "box_Simple_Node_88.In", clone, l0)
  l0:In()
end
function export:f_box_Timer_v2_57_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_60
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048268129352"
  l0 = self.box_Timer_v2_57
  l1 = self.box_PhoneCommunicationController_60
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1739001061", "1739001061", "S13M020_Main", "box_Timer_v2_57.TimeElapsed", "box_PhoneCommunicationController_60.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_PhoneCommunicationController_27_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_80()
  l0 = self.box_PhoneCommunicationController_27
  l1 = self.box_MultipleOR_80
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|820260956", "820260956", "S13M020_Main", "box_PhoneCommunicationController_27.OnCommunicationFinished", "box_MultipleOR_80.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_OnceOnly_v3_116_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_109
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_OnceOnly_v3_116
  l1 = self.box_CinematicPrep_109
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|246382857", "246382857", "S13M020_Main", "box_OnceOnly_v3_116.Out", "box_CinematicPrep_109.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_Hackable_Monitor_24_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = self.box_Hackable_Monitor_24
  l1 = self.box_OnceOnly_v3_66
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1604918358", "1604918358", "S13M020_Main", "box_Hackable_Monitor_24.HackSuccess", "box_OnceOnly_v3_66.In", l0, l1)
  l1:In(0)
end
function export:f_box_Ordered_Output_54_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_108
  l0.SceneEntity = "9223372061188736934"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S13/S13_M020_SCR_InstallBackdoor/s13_m020_scr_installbackdoor.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|507875694", "507875694", "S13M020_Main", "box_Ordered_Output_54.Out", "box_PlaySequence_v5_108.Start", clone, l0)
  l0:Start()
end
function export:f_box_MissionMessageController_v3_70_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669163"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = 55
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|788790809"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_MissionMusicController_68_Deactivated
  l0 = self.box_MissionMessageController_v3_70
  l1 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1618445099", "1618445099", "S13M020_Main", "box_MissionMessageController_v3_70.Out", "box_MissionMusicController_68.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_PGTController_v2_23_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372046566095244"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1441605974"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_47_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_PGTController_v2_23
  l1 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|383713225", "383713225", "S13M020_Main", "box_PGTController_v2_23.Started", "box_InteractionScriptController_47.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MultipleOR_128_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|574146727"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_63_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_63_Out_1
  l0 = self.box_MultipleOR_128
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|296602556", "296602556", "S13M020_Main", "box_MultipleOR_128.Out", "box_Ordered_Output_63.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_73_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_75
  l0.CheckpointList = "CheckPoint_2"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|91396623", "91396623", "S13M020_Main", "box_Ordered_Output_73.Out", "box_MissionCheckpointReach_75.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_73_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_53
  l0.SoundId = "soundbinary/81442961.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|797471839", "797471839", "S13M020_Main", "box_Ordered_Output_73.Out", "box_PlaySound_v2_53.Play", clone, l0)
  l0:Play()
end
function export:f_box_LMA_Layer_Controller_67_Unloaded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_80()
  l0 = self.box_LMA_Layer_Controller_67
  l1 = self.box_MultipleOR_80
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|760256921", "760256921", "S13M020_Main", "box_LMA_Layer_Controller_67.Unloaded", "box_MultipleOR_80.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_PlaySequence_v5_108_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_116()
  l0 = self.box_PlaySequence_v5_108
  l1 = self.box_OnceOnly_v3_116
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1363364093", "1363364093", "S13M020_Main", "box_PlaySequence_v5_108.Finished", "box_OnceOnly_v3_116.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_108_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_116()
  l0 = self.box_PlaySequence_v5_108
  l1 = self.box_OnceOnly_v3_116
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|456074614", "456074614", "S13M020_Main", "box_PlaySequence_v5_108.Skipped", "box_OnceOnly_v3_116.In", l0, l1)
  l1:In(0)
end
function export:f_box_Simple_Node_88_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AISquadStateMonitor_87
  l0.Affiliation = "UZulu"
  l0.Target = self.PlayerEntity
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1632140046", "1632140046", "S13M020_Main", "box_Simple_Node_88.Out", "box_AISquadStateMonitor_87.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_TriggerMonitor_v2_48_Enter()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1011449956"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_41_Out_0
  l0.Out[1] = DummyFunction
  l0 = self.box_TriggerMonitor_v2_48
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|976932880", "976932880", "S13M020_Main", "box_TriggerMonitor_v2_48.Enter", "box_Ordered_Output_41.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_v3_5_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Escape_Gameplay_20
  l0.Entity = "9223372055320046987"
  l0.Entity_AreaRadius = 150
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
  l0 = self.box_MissionMessageController_v3_5
  l1 = self.box_Escape_Gameplay_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|910651437", "910651437", "S13M020_Main", "box_MissionMessageController_v3_5.Out", "box_Escape_Gameplay_20.Start", l0, l1)
  l1:Start()
end
function export:f_box_CinematicPrep_109_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Interact_Gameplay_13()
  l0 = self.box_CinematicPrep_109
  l1 = self.box_Interact_Gameplay_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|840834239", "840834239", "S13M020_Main", "box_CinematicPrep_109.PostOut", "box_Interact_Gameplay_13.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_MissionMessageController_v3_4_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PGTController_v2_23
  l0.PGTMissionArea = "9223372046892760472"
  l0 = self.box_MissionMessageController_v3_4
  l1 = self.box_PGTController_v2_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|374991268", "374991268", "S13M020_Main", "box_MissionMessageController_v3_4.Out", "box_PGTController_v2_23.Start", l0, l1)
  l1:Start()
end
function export:f_box_CinematicPrep_76_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_27
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048268129355"
  l0 = self.box_CinematicPrep_76
  l1 = self.box_PhoneCommunicationController_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1298109576", "1298109576", "S13M020_Main", "box_CinematicPrep_76.PostOut", "box_PhoneCommunicationController_27.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_PhoneCommunicationController_96_StartCommunicationOut()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_120
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_PhoneCommunicationController_96
  l1 = self.box_CinematicPrep_120
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1017316574", "1017316574", "S13M020_Main", "box_PhoneCommunicationController_96.StartCommunicationOut", "box_CinematicPrep_120.PreCinematic", l0, l1)
  l1:PreCinematic()
end
function export:f_box_MissionCheckpointReach_18_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1736318225"
  l0._DynamicAnchors = {Out = 6}
  l0.Out[0] = self.f_box_Ordered_Output_45_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_45_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_45_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_45_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_45_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_45_Out_5
  l0 = self.box_MissionCheckpointReach_18
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|857386649", "857386649", "S13M020_Main", "box_MissionCheckpointReach_18.Out", "box_Ordered_Output_45.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_74_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_56
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048268129354"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|744240094", "744240094", "S13M020_Main", "box_Ordered_Output_74.Out", "box_PhoneCommunicationController_56.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_Ordered_Output_74_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Player_Conflict_Monitor_69()
  l0 = self.box_Player_Conflict_Monitor_69
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1971231241", "1971231241", "S13M020_Main", "box_Ordered_Output_74.Out", "box_Player_Conflict_Monitor_69.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_11_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_61
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048268129357"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|412703393", "412703393", "S13M020_Main", "box_Ordered_Output_11.Out", "box_PhoneCommunicationController_61.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_Ordered_Output_11_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_7()
  l0 = self.box_TriggerMonitor_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|1468824100", "1468824100", "S13M020_Main", "box_Ordered_Output_11.Out", "box_TriggerMonitor_v2_7.Disable", clone, l0)
  l0:Disable()
end
function export:OnEnter_box_Proximity_Monitor_102()
  local l0
  l0 = self.box_Proximity_Monitor_102
  l0.Entity1 = self.PlayerEntity
  l0.Entity2 = "9223372046566095244"
  l0.Radius = 54
end
function export:OnEnter_box_TriggerMonitor_v2_43()
  local l0
  l0 = self.box_TriggerMonitor_v2_43
  l0.Trigger = "9223372068903581033"
end
function export:OnEnter_box_TriggerMonitor_v2_7()
  local l0
  l0 = self.box_TriggerMonitor_v2_7
  l0.Trigger = self.RC_CleanRoom_Trigger
  l0.AutoDisable = 1
end
function export:OnEnter_box_MultipleOR_80()
end
function export:OnEnter_box_AISquadStateMonitor_100()
  local l0
  l0 = self.box_AISquadStateMonitor_100
  l0.Affiliation = "UZulu"
  l0.Target = self.PlayerEntity
end
function export:OnEnter_box_MultipleOR_93()
end
function export:OnEnter_box_QuickPlayerDeath_101()
end
function export:OnEnter_box_MultipleOR_35()
end
function export:OnEnter_box_InteractionScriptController_55()
  local l0
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372046566095244"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|904435206"
  l0.Enabled = self.f_box_InteractionScriptController_55_Enabled
  l0.Disabled = DummyFunction
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_Player_Conflict_Monitor_46()
end
function export:OnEnter_box_TriggerMonitor_v2_25()
  local l0
  l0 = self.box_TriggerMonitor_v2_25
  l0.Trigger = "9223372071492607318"
end
function export:OnEnter_box_MissionZone_19()
  local l0
  l0 = self.box_MissionZone_19
  l0.MissionArea = "9223372047176016453"
  l0.MissionLayer = "S13M020_Main"
  l0.LmaLayer = "SV_02_DivisionX_LMA_HangarFloor"
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
end
function export:OnEnter_box_MultipleOR_89()
end
function export:OnEnter_box_MultipleOR_15()
end
function export:OnEnter_box_TriggerMonitor_v2_26()
  local l0
  l0 = self.box_TriggerMonitor_v2_26
  l0.Trigger = "9223372071676751794"
  l0.CheckNow = 1
end
function export:OnEnter_box_Interact_Gameplay_13()
  local l0
  l0 = self.box_Interact_Gameplay_13
  l0.Entity = "9223372046566095244"
  l0.IsManagingInteraction = 1
  l0.PlayerOnly = 1
end
function export:OnEnter_box_InteractionScriptMonitor_v2_97()
  local l0
  l0 = self.box_InteractionScriptMonitor_v2_97
  l0.InteractionScriptEntity = "9223372046566095244"
  l0.AutoDisable = 1
end
function export:OnEnter_box_Player_Conflict_Monitor_69()
end
function export:OnEnter_box_OnceOnly_v3_116()
end
function export:OnEnter_box_Hackable_Monitor_24()
  local l0
  l0 = self.box_Hackable_Monitor_24
  l0.HackableEntity = "9223372049296409951"
  l0.AutoDisable = 1
end
function export:OnEnter_box_MultipleOR_128()
end
function export:OnEnter_box_TriggerMonitor_v2_48()
  local l0
  l0 = self.box_TriggerMonitor_v2_48
  l0.Trigger = self.SecurityGlass_TriggerVolume
  l0.AutoDisable = 1
end
function export:OnEnter_box_InteractionScriptController_127()
  local l0
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372046566095244"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_127"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Main|2118611455"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
end
_compilerVersion = 4
