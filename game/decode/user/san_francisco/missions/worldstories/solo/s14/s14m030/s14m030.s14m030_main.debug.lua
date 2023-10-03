export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/BreakableEntityMonitor_v2.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Escape_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Hack_Gameplay.debug.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/InteractionScriptController.lua")
  cbox:RegisterBox("domino/System/InteractionScriptMonitor_v2.lua")
  cbox:RegisterBox("domino/System/LMALayerController.lua")
  cbox:RegisterBox("domino/System/MaterialController.lua")
  cbox:RegisterBox("domino/System/MediaSystemCustomBroadcastController.lua")
  cbox:RegisterBox("domino/System/MediaSystemCustomBroadcastMonitor.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MissionMonitor.lua")
  cbox:RegisterBox("domino/System/MissionMusicController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PGTController_v2.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/RewardComponentController_V3.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S14/S14M030/s14_m030_cin_outsideinvite.S14_M030_CIN_OutsideInvite_Main.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S14/S14M030/S14M030_SCR.S14M030_SCR_Main.debug.lua")
  cbox:RegisterBox("domino/System/SecurityCameraMonitor.lua")
  cbox:RegisterBox("domino/System/SecurityCamController.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/StopMusic.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
  cbox:LoadResource("soundbinary/2286467389.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/532264204.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/81442961.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3552307770.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "S14M030_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main"
  self.PlayerEntity = nil
  self.PhoneHacked = 0
  self.IsBackdoorInstalled = 0
  self.OfficeCameras = {
    "9223372048313421358",
    "9223372055538195140"
  }
  self.BreakableMonitors = {
    "9223372067078639647",
    "9223372067078638501"
  }
  self.box_Multiple_AND_20 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_20
  l0._graph = self
  l0._name = "box_Multiple_AND_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|65109904"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_20_Out
  self.box_PlaySound_v2_88 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_88
  l0._graph = self
  l0._name = "box_PlaySound_v2_88"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|158028762"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_89 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_89
  l0._graph = self
  l0._name = "box_PlaySound_v2_89"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|207943063"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MultipleOR_27 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_27
  l0._graph = self
  l0._name = "box_MultipleOR_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|241394539"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_27_Out
  self.box_TriggerMonitor_v2_49 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_49
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|246442141"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TriggerMonitor_v2_49_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_49_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MultipleOR_60 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_60
  l0._graph = self
  l0._name = "box_MultipleOR_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|249725105"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_60_Out
  self.box_CinematicPrep_54 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_54
  l0._graph = self
  l0._name = "box_CinematicPrep_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|314332283"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_54_PostOut
  self.box_PhoneCommunicationController_3 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_3
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|318524699"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = self.f_box_PhoneCommunicationController_3_OnCommunicationStarted
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MultipleOR_82 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_82
  l0._graph = self
  l0._name = "box_MultipleOR_82"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|331135656"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_82_Out
  self.box_PlaySound_v2_102 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_102
  l0._graph = self
  l0._name = "box_PlaySound_v2_102"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|421478760"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Escape_Gameplay_14 = cbox:CreateBox("domino/Library/common/MissionIngredients.Escape_Gameplay.debug.lua")
  l0 = self.box_Escape_Gameplay_14
  l0._graph = self
  l0._name = "box_Escape_Gameplay_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|422888883"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Escaped = self.f_box_Escape_Gameplay_14_Escaped
  l0.LeftArea = self.f_box_Escape_Gameplay_14_LeftArea
  self.box_MultipleOR_6 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_6
  l0._graph = self
  l0._name = "box_MultipleOR_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|451839278"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_6_Out
  self.box_PlaySound_v2_81 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_81
  l0._graph = self
  l0._name = "box_PlaySound_v2_81"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|502435546"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_LMA_Layer_Controller_33 = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self.box_LMA_Layer_Controller_33
  l0._graph = self
  l0._name = "box_LMA_Layer_Controller_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|502916047"
  l0.Loaded = self.f_box_LMA_Layer_Controller_33_Loaded
  l0.Unloaded = DummyFunction
  self.box_S14_M030_CIN_OutsideInvite_Main_77 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S14/S14M030/s14_m030_cin_outsideinvite.S14_M030_CIN_OutsideInvite_Main.debug.lua")
  l0 = self.box_S14_M030_CIN_OutsideInvite_Main_77
  l0._graph = self
  l0._name = "box_S14_M030_CIN_OutsideInvite_Main_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|535400773"
  l0.Out = self.f_box_S14_M030_CIN_OutsideInvite_Main_77_Out
  self.box_PhoneCommunicationController_15 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_15
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|541859551"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_15_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionLayer_v2_65 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_65
  l0._graph = self
  l0._name = "box_MissionLayer_v2_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|544383719"
  l0.Loaded = self.f_box_MissionLayer_v2_65_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionMessageController_v3_22 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_22
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|568640144"
  l0.Out = self.f_box_MissionMessageController_v3_22_Out
  l0.MessageCompleted = DummyFunction
  self.box_PlaySound_v2_105 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_105
  l0._graph = self
  l0._name = "box_PlaySound_v2_105"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|576617123"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MultipleOR_12 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_12
  l0._graph = self
  l0._name = "box_MultipleOR_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|626910866"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_12_Out
  self.box_MissionMessageController_v3_23 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_23
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|700107717"
  l0.Out = self.f_box_MissionMessageController_v3_23_Out
  l0.MessageCompleted = DummyFunction
  self.box_MissionMessageController_v3_19 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_19
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|788057249"
  l0.Out = self.f_box_MissionMessageController_v3_19_Out
  l0.MessageCompleted = DummyFunction
  self.box_LMA_Layer_Controller_34 = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self.box_LMA_Layer_Controller_34
  l0._graph = self
  l0._name = "box_LMA_Layer_Controller_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|838282368"
  l0.Loaded = DummyFunction
  l0.Unloaded = DummyFunction
  self.box_Timer_v2_97 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_97
  l0._graph = self
  l0._name = "box_Timer_v2_97"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|838546643"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_97_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionMonitor_64 = cbox:CreateBox("domino/System/MissionMonitor.lua")
  l0 = self.box_MissionMonitor_64
  l0._graph = self
  l0._name = "box_MissionMonitor_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|926309546"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Tracked = DummyFunction
  l0.NotTracked = DummyFunction
  l0.Completed = DummyFunction
  l0.NotCompleted = DummyFunction
  l0.OnMissionSucceeded = DummyFunction
  l0.OnMissionFailed = self.f_box_MissionMonitor_64_OnMissionFailed
  l0.OnMissionAborted = DummyFunction
  self.box_PGTController_v2_63 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_63
  l0._graph = self
  l0._name = "box_PGTController_v2_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|940808238"
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_box_PGTController_v2_63_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_PGTController_v2_37 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_37
  l0._graph = self
  l0._name = "box_PGTController_v2_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1037290134"
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_box_PGTController_v2_37_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_MultipleOR_30 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_30
  l0._graph = self
  l0._name = "box_MultipleOR_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1105105474"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_30_Out
  self.box_RewardController_v3_68 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_68
  l0._graph = self
  l0._name = "box_RewardController_v3_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1106749991"
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_box_RewardController_v3_68_RewardsExecuted
  self.box_MissionZone_56 = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  l0 = self.box_MissionZone_56
  l0._graph = self
  l0._name = "box_MissionZone_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1138682045"
  l0.Enabled = self.f_box_MissionZone_56_Enabled
  l0.Disabled = DummyFunction
  l0.SoftQuitCompleted = DummyFunction
  self.box_MissionCheckpointReach_52 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_52
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1180002418"
  l0.Out = self.f_box_MissionCheckpointReach_52_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_PhoneCommunicationController_16 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_16
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1199768741"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_16_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Security_Camera_Monitor_11 = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self.box_Security_Camera_Monitor_11
  l0._graph = self
  l0._name = "box_Security_Camera_Monitor_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1262138462"
  l0.Enabled = self.f_box_Security_Camera_Monitor_11_Enabled
  l0.Disabled = DummyFunction
  l0.OnStartAccessCamera = DummyFunction
  l0.OnEndAccessCamera = DummyFunction
  l0.OnStartExitCamera = DummyFunction
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = self.f_box_Security_Camera_Monitor_11_OnEndExitAll
  self.box_Interact_Gameplay_9 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_9
  l0._graph = self
  l0._name = "box_Interact_Gameplay_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1266442647"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_box_Interact_Gameplay_9_Interacted
  self.box_PlaySound_v2_92 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_92
  l0._graph = self
  l0._name = "box_PlaySound_v2_92"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1323925931"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Interact_Gameplay_8 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_8
  l0._graph = self
  l0._name = "box_Interact_Gameplay_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1396402836"
  l0.Started = self.f_box_Interact_Gameplay_8_Started
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_box_Interact_Gameplay_8_Interacted
  self.box_MissionCheckpointReach_62 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_62
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1449095191"
  l0.Out = self.f_box_MissionCheckpointReach_62_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_BreakableEntityMonitor_v2_80 = cbox:CreateBox("domino/System/BreakableEntityMonitor_v2.lua")
  l0 = self.box_BreakableEntityMonitor_v2_80
  l0._graph = self
  l0._name = "box_BreakableEntityMonitor_v2_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1455395747"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Breaking = self.f_box_BreakableEntityMonitor_v2_80_Breaking
  l0.AllBroken = self.f_box_BreakableEntityMonitor_v2_80_AllBroken
  self.box_OnceOnly_v3_18 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_18
  l0._graph = self
  l0._name = "box_OnceOnly_v3_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1455540296"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_18_Out
  l0.ResetOut = DummyFunction
  self.box_PhoneCommunicationController_50 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_50
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1539655592"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_50_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_SetBoolean_v2_45 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_45
  l0._graph = self
  l0._name = "box_SetBoolean_v2_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1548610498"
  l0.Out = self.f_box_SetBoolean_v2_45_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_45_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_45_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_45_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_45_SetFromBool
  self.box_MissionLayer_v2_78 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_78
  l0._graph = self
  l0._name = "box_MissionLayer_v2_78"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1593496963"
  l0.Loaded = self.f_box_MissionLayer_v2_78_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_PhoneCommunicationController_35 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_35
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1597962920"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = self.f_box_PhoneCommunicationController_35_OnCommunicationStarted
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_InteractionScriptMonitor_v2_69 = cbox:CreateBox("domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self.box_InteractionScriptMonitor_v2_69
  l0._graph = self
  l0._name = "box_InteractionScriptMonitor_v2_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1611984497"
  l0.Out = self.f_box_InteractionScriptMonitor_v2_69_Out
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.InteractionStarted = DummyFunction
  l0.InteractionFailed = DummyFunction
  l0.InteractionFinished = DummyFunction
  l0.AnimationStarted = self.f_box_InteractionScriptMonitor_v2_69_AnimationStarted
  l0.AnimationFinished = DummyFunction
  self.box_MultipleOR_7 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_7
  l0._graph = self
  l0._name = "box_MultipleOR_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1614290544"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_7_Out
  self.box_PlaySound_v2_104 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_104
  l0._graph = self
  l0._name = "box_PlaySound_v2_104"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1630937728"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MultipleOR_32 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_32
  l0._graph = self
  l0._name = "box_MultipleOR_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1728982723"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_32_Out
  self.box_MissionCheckpointReach_28 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_28
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1735027670"
  l0.Out = self.f_box_MissionCheckpointReach_28_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MultipleOR_21 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_21
  l0._graph = self
  l0._name = "box_MultipleOR_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1795565236"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_21_Out
  self.box_Media_System_Custom_Broadcast_Monitor_94 = cbox:CreateBox("domino/System/MediaSystemCustomBroadcastMonitor.lua")
  l0 = self.box_Media_System_Custom_Broadcast_Monitor_94
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Monitor_94"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1829236852"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Media_System_Custom_Broadcast_Monitor_94_Disabled
  l0.CustomBroadcastResourceLoaded = self.f_box_Media_System_Custom_Broadcast_Monitor_94_CustomBroadcastResourceLoaded
  l0.ChannelGenericLoopedOnce = DummyFunction
  l0.ChannelShopLoopedOnce = DummyFunction
  l0.ChannelBarLoopedOnce = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionMessageController_v3_17 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_17
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1842809243"
  l0.Out = self.f_box_MissionMessageController_v3_17_Out
  l0.MessageCompleted = DummyFunction
  self.box_Timer_v2_72 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_72
  l0._graph = self
  l0._name = "box_Timer_v2_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1887902834"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_72_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_SetBoolean_v2_46 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_46
  l0._graph = self
  l0._name = "box_SetBoolean_v2_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1908133909"
  l0.Out = self.f_box_SetBoolean_v2_46_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_46_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_46_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_46_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_46_SetFromBool
  self.box_Mission_End_4 = cbox:CreateBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  l0 = self.box_Mission_End_4
  l0._graph = self
  l0._name = "box_Mission_End_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1993392951"
  self.box_PhoneCommunicationController_5 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_5
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|2015357733"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_5_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_CinematicPrep_53 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_53
  l0._graph = self
  l0._name = "box_CinematicPrep_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|2021954963"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_53_PostOut
  self.box_S14M030_SCR_Main_75 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S14/S14M030/S14M030_SCR.S14M030_SCR_Main.debug.lua")
  l0 = self.box_S14M030_SCR_Main_75
  l0._graph = self
  l0._name = "box_S14M030_SCR_Main_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|2061178487"
  l0.Out_Annotations = self.f_box_S14M030_SCR_Main_75_Out_Annotations
  self.box_Hack_Gameplay_10 = cbox:CreateBox("domino/Library/common/MissionIngredients.Hack_Gameplay.debug.lua")
  l0 = self.box_Hack_Gameplay_10
  l0._graph = self
  l0._name = "box_Hack_Gameplay_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|2135452647"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_box_Hack_Gameplay_10_Hacked
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
  self:OnEnter_box_MultipleOR_21()
  l0 = self.box_MultipleOR_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|755051547", "755051547", "S14M030_Main", "CheckPoint_0", "box_MultipleOR_21.Input", self, l0)
  l0:Input(1)
end
function export:CheckPoint_1()
  local l0
  l0 = self.box_MissionLayer_v2_78
  l0.LayerName = "S14M030_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|993800576", "993800576", "S14M030_Main", "CheckPoint_1", "box_MissionLayer_v2_78.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_2()
  local l0
  l0 = self.box_MissionLayer_v2_65
  l0.LayerName = "S14M030_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1069622301", "1069622301", "S14M030_Main", "CheckPoint_2", "box_MissionLayer_v2_65.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_3()
  local l0
  self:OnEnter_box_Mission_End_4()
  l0 = self.box_Mission_End_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|723352178", "723352178", "S14M030_Main", "CheckPoint_3", "box_Mission_End_4.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  l0 = self.box_LMA_Layer_Controller_33
  l0.LMALayerName = "SF_08_Invite_LMA"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|114554931", "114554931", "S14M030_Main", "In", "box_LMA_Layer_Controller_33.Load", self, l0)
  l0:Load()
end
function export:f_box_Ordered_Output_29_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hack_Gameplay_10()
  l0 = self.box_Hack_Gameplay_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|801990854", "801990854", "S14M030_Main", "box_Ordered_Output_29.Out", "box_Hack_Gameplay_10.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_29_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_7()
  l0 = self.box_MultipleOR_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|299602728", "299602728", "S14M030_Main", "box_Ordered_Output_29.Out", "box_MultipleOR_7.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_29_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_30()
  l0 = self.box_MultipleOR_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|2002378737", "2002378737", "S14M030_Main", "box_Ordered_Output_29.Out", "box_MultipleOR_30.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Multiple_AND_20_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_90"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1248164220"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_90_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_90_Out_1
  l0 = self.box_Multiple_AND_20
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1593564852", "1593564852", "S14M030_Main", "box_Multiple_AND_20.Out", "box_Ordered_Output_90.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_101_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_22
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S14.S14M030.Objectives.Objective010",
    item = "SubObjective1",
    id = "354151"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1316223811", "1316223811", "S14M030_Main", "box_Ordered_Output_101.Out", "box_MissionMessageController_v3_22.IncrementObjective", clone, l0)
  l0:IncrementObjective()
end
function export:f_box_Ordered_Output_101_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_88
  l0.SoundId = "soundbinary/3552307770.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|293251385", "293251385", "S14M030_Main", "box_Ordered_Output_101.Out", "box_PlaySound_v2_88.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_31_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_19
  l0.ObjectiveSub2 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S14.S14M030.Objectives.Objective010",
    item = "SubObjective2",
    id = "354152"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|395105794", "395105794", "S14M030_Main", "box_Ordered_Output_31.Out", "box_MissionMessageController_v3_19.IncrementObjective", clone, l0)
  l0:IncrementObjective()
end
function export:f_box_Ordered_Output_31_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_30()
  l0 = self.box_MultipleOR_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|731014993", "731014993", "S14M030_Main", "box_Ordered_Output_31.Out", "box_MultipleOR_30.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MissionLayer_v2_2
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1476740514", "1476740514", "S14M030_Main", "box_MissionLayer_v2_2.Loaded", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_27_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_20()
  l0 = self.box_MultipleOR_27
  l1 = self.box_Multiple_AND_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1979760572", "1979760572", "S14M030_Main", "box_MultipleOR_27.Out", "box_Multiple_AND_20.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_TriggerMonitor_v2_49_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372072548556766"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1369923940"
  l0.Activated = self.f_box_MissionMusicController_51_Activated
  l0.Deactivated = DummyFunction
  l0 = self.box_TriggerMonitor_v2_49
  l1 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1324253158", "1324253158", "S14M030_Main", "box_TriggerMonitor_v2_49.Disabled", "box_MissionMusicController_51.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_TriggerMonitor_v2_49_Enter()
  local l0
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_49()
  l0 = self.box_TriggerMonitor_v2_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1471313508", "1471313508", "S14M030_Main", "box_TriggerMonitor_v2_49.Enter", "box_TriggerMonitor_v2_49.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_MultipleOR_60_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_91"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1586145235"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_91_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_91_Out_1
  l0 = self.box_MultipleOR_60
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|534963786", "534963786", "S14M030_Main", "box_MultipleOR_60.Out", "box_Ordered_Output_91.In", l0, l1)
  l1:In()
end
function export:f_box_InteractionScriptController_47_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_101"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|126539846"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_101_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_101_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|391353680", "391353680", "S14M030_Main", "box_InteractionScriptController_47.Disabled", "box_Ordered_Output_101.In", clone, l0)
  l0:In()
end
function export:f_box_CinematicPrep_54_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_12()
  l0 = self.box_CinematicPrep_54
  l1 = self.box_MultipleOR_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|380741177", "380741177", "S14M030_Main", "box_CinematicPrep_54.PostOut", "box_MultipleOR_12.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_PhoneCommunicationController_3_OnCommunicationStarted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_60()
  l0 = self.box_PhoneCommunicationController_3
  l1 = self.box_MultipleOR_60
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1439409070", "1439409070", "S14M030_Main", "box_PhoneCommunicationController_3.OnCommunicationStarted", "box_MultipleOR_60.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MultipleOR_82_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_32()
  l0 = self.box_MultipleOR_82
  l1 = self.box_MultipleOR_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1361053335", "1361053335", "S14M030_Main", "box_MultipleOR_82.Out", "box_MultipleOR_32.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Ordered_Output_103_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_50
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421347574"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|832485611", "832485611", "S14M030_Main", "box_Ordered_Output_103.Out", "box_PhoneCommunicationController_50.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_Ordered_Output_103_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_102
  l0.SoundId = "soundbinary/2286467389.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|684685503", "684685503", "S14M030_Main", "box_Ordered_Output_103.Out", "box_PlaySound_v2_102.Play", clone, l0)
  l0:Play()
end
function export:f_box_Escape_Gameplay_14_Escaped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Mission_End_4()
  l0 = self.box_Escape_Gameplay_14
  l1 = self.box_Mission_End_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1488087465", "1488087465", "S14M030_Main", "box_Escape_Gameplay_14.Escaped", "box_Mission_End_4.End", l0, l1)
  l1:End()
end
function export:f_box_Escape_Gameplay_14_LeftArea()
  local l0, l1
  self = self._graph
  l0 = self.box_Escape_Gameplay_14
  l1 = self.box_OnceOnly_v3_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1666151780", "1666151780", "S14M030_Main", "box_Escape_Gameplay_14.LeftArea", "box_OnceOnly_v3_18.In", l0, l1)
  l1:In(0)
end
function export:f_box_Ordered_Output_70_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_BreakableEntityMonitor_v2_80
  l0.BreakableEntitiesList = self.BreakableMonitors
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1199565267", "1199565267", "S14M030_Main", "box_Ordered_Output_70.Out", "box_BreakableEntityMonitor_v2_80.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_70_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_82()
  l0 = self.box_MultipleOR_82
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1767002712", "1767002712", "S14M030_Main", "box_Ordered_Output_70.Out", "box_MultipleOR_82.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_70_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_104
  l0.SoundId = "soundbinary/3552307770.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|98410227", "98410227", "S14M030_Main", "box_Ordered_Output_70.Out", "box_PlaySound_v2_104.Play", clone, l0)
  l0:Play()
end
function export:f_box_MultipleOR_6_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_20()
  l0 = self.box_MultipleOR_6
  l1 = self.box_Multiple_AND_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|2032048285", "2032048285", "S14M030_Main", "box_MultipleOR_6.Out", "box_Multiple_AND_20.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_Simple_Node_57_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionZone_56()
  l0 = self.box_MissionZone_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1508664904", "1508664904", "S14M030_Main", "box_Simple_Node_57.Out", "box_MissionZone_56.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_InteractionScriptController_40_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_53
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1926941692", "1926941692", "S14M030_Main", "box_InteractionScriptController_40.Disabled", "box_CinematicPrep_53.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_LMA_Layer_Controller_33_Loaded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_21()
  l0 = self.box_LMA_Layer_Controller_33
  l1 = self.box_MultipleOR_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|418609517", "418609517", "S14M030_Main", "box_LMA_Layer_Controller_33.Loaded", "box_MultipleOR_21.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_S14_M030_CIN_OutsideInvite_Main_77_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_12()
  l0 = self.box_S14_M030_CIN_OutsideInvite_Main_77
  l1 = self.box_MultipleOR_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|275538975", "275538975", "S14M030_Main", "box_S14_M030_CIN_OutsideInvite_Main_77.Out", "box_MultipleOR_12.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_PhoneCommunicationController_15_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_68
  l0.ItemDB = "Items.9223372059960720112"
  l0 = self.box_PhoneCommunicationController_15
  l1 = self.box_RewardController_v3_68
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|774957262", "774957262", "S14M030_Main", "box_PhoneCommunicationController_15.OnCommunicationFinished", "box_RewardController_v3_68.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_MissionLayer_v2_65_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1702093023"
  l0.Out = self.f_box_Get_Player_ID_55_Out
  l0 = self.box_MissionLayer_v2_65
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1053967126", "1053967126", "S14M030_Main", "box_MissionLayer_v2_65.Loaded", "box_Get_Player_ID_55.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_v3_22_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_22
  l1 = self.box_SetBoolean_v2_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1177350771", "1177350771", "S14M030_Main", "box_MissionMessageController_v3_22.Out", "box_SetBoolean_v2_46.True", l0, l1)
  l1:True()
end
function export:f_box_Ordered_Output_13_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_7()
  l0 = self.box_MultipleOR_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1640919488", "1640919488", "S14M030_Main", "box_Ordered_Output_13.Out", "box_MultipleOR_7.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_13_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Interact_Gameplay_9
  l0.Entity = "9223372059781685841"
  l0.IsManagingInteraction = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|454487911", "454487911", "S14M030_Main", "box_Ordered_Output_13.Out", "box_Interact_Gameplay_9.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_13_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_49()
  l0 = self.box_TriggerMonitor_v2_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|2003924473", "2003924473", "S14M030_Main", "box_Ordered_Output_13.Out", "box_TriggerMonitor_v2_49.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MultipleOR_12_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MissionZone_56()
  l0 = self.box_MultipleOR_12
  l1 = self.box_MissionZone_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1377161463", "1377161463", "S14M030_Main", "box_MultipleOR_12.Out", "box_MissionZone_56.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MissionMessageController_v3_23_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|2042676727"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_59_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_59_Out_1
  l0 = self.box_MissionMessageController_v3_23
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1064121583", "1064121583", "S14M030_Main", "box_MissionMessageController_v3_23.Out", "box_Ordered_Output_59.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_v3_19_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_19
  l1 = self.box_SetBoolean_v2_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1818756399", "1818756399", "S14M030_Main", "box_MissionMessageController_v3_19.Out", "box_SetBoolean_v2_45.True", l0, l1)
  l1:True()
end
function export:f_box_Get_Player_ID_61_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_54
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1393255357", "1393255357", "S14M030_Main", "box_Get_Player_ID_61.Out", "box_CinematicPrep_54.PostCinematic", clone, l0)
  l0:PostCinematic()
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
  l0 = self.box_MissionCheckpointReach_62
  l0.Checkpoint = "CheckPoint_0"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|15449719", "15449719", "S14M030_Main", "box_Get_Player_ID_1.Out", "box_MissionCheckpointReach_62.In", clone, l0)
  l0:In()
end
function export:f_box_StopMusic_84_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/StopMusic.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_89
  l0.SoundId = "soundbinary/81442961.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1630955169", "1630955169", "S14M030_Main", "box_StopMusic_84.Out", "box_PlaySound_v2_89.Play", clone, l0)
  l0:Play()
end
function export:f_box_Timer_v2_97_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372067078638501"
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_96"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1673815505"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  l0 = self.box_Timer_v2_97
  l1 = Boxes[PathID("domino/System/MaterialController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1826559300", "1826559300", "S14M030_Main", "box_Timer_v2_97.TimeElapsed", "box_MaterialController_96.SetByIndex", l0, l1)
  l1:SetByIndex()
end
function export:f_box_StopMusic_79_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/StopMusic.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_81
  l0.SoundId = "soundbinary/532264204.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1462302159", "1462302159", "S14M030_Main", "box_StopMusic_79.Out", "box_PlaySound_v2_81.Play", clone, l0)
  l0:Play()
end
function export:f_box_MissionMonitor_64_OnMissionFailed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/StopMusic.lua")]
  l0.FadeOutTime = 4
  l0._graph = self
  l0._name = "box_StopMusic_79"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|906618727"
  l0.Out = self.f_box_StopMusic_79_Out
  l0 = self.box_MissionMonitor_64
  l1 = Boxes[PathID("domino/System/StopMusic.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|926833273", "926833273", "S14M030_Main", "box_MissionMonitor_64.OnMissionFailed", "box_StopMusic_79.In", l0, l1)
  l1:In()
end
function export:f_box_Media_System_Custom_Broadcast_Controller_95_LoadAndPlayRequested()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Media_System_Custom_Broadcast_Monitor_94()
  l0 = self.box_Media_System_Custom_Broadcast_Monitor_94
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|874295091", "874295091", "S14M030_Main", "box_Media_System_Custom_Broadcast_Controller_95.LoadAndPlayRequested", "box_Media_System_Custom_Broadcast_Monitor_94.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_PGTController_v2_63_AllSpawned()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372054257154181"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1722475721"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_43_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_PGTController_v2_63
  l1 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1944400883", "1944400883", "S14M030_Main", "box_PGTController_v2_63.AllSpawned", "box_InteractionScriptController_43.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_PGTController_v2_37_AllSpawned()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372054257154181"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|501928663"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_40_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_PGTController_v2_37
  l1 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1946223251", "1946223251", "S14M030_Main", "box_PGTController_v2_37.AllSpawned", "box_InteractionScriptController_40.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Ordered_Output_106_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = "CustomBroadcasts.9223372067028647817"
  l0.OnGenericChannel = nil
  l0.OnShopChannel = nil
  l0.OnBarChannel = 1
  l0.PlayOnLoad = nil
  l0.ApplyOnLoad = nil
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Controller_95"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|927106381"
  l0.LoadAndPlayRequested = self.f_box_Media_System_Custom_Broadcast_Controller_95_LoadAndPlayRequested
  l0.EndedAllCustomMediaBroadcasts = DummyFunction
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|698528984", "698528984", "S14M030_Main", "box_Ordered_Output_106.Out", "box_Media_System_Custom_Broadcast_Controller_95.LoadAndPlayCustomBroadcast", clone, l0)
  l0:LoadAndPlayCustomBroadcast()
end
function export:f_box_Ordered_Output_106_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_105
  l0.SoundId = "soundbinary/2286467389.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|515826807", "515826807", "S14M030_Main", "box_Ordered_Output_106.Out", "box_PlaySound_v2_105.Play", clone, l0)
  l0:Play()
end
function export:f_box_MultipleOR_30_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Security_Camera_Monitor_11()
  l0 = self.box_MultipleOR_30
  l1 = self.box_Security_Camera_Monitor_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|574199362", "574199362", "S14M030_Main", "box_MultipleOR_30.Out", "box_Security_Camera_Monitor_11.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_RewardController_v3_68_RewardsExecuted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_6()
  l0 = self.box_RewardController_v3_68
  l1 = self.box_MultipleOR_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1536327326", "1536327326", "S14M030_Main", "box_RewardController_v3_68.RewardsExecuted", "box_MultipleOR_6.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MissionZone_56_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PGTController_v2_63
  l0.PGTMissionArea = "9223372046887636151"
  l0 = self.box_MissionZone_56
  l1 = self.box_PGTController_v2_63
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1320590252", "1320590252", "S14M030_Main", "box_MissionZone_56.Enabled", "box_PGTController_v2_63.Start", l0, l1)
  l1:Start()
end
function export:f_box_MissionCheckpointReach_52_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_17
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S14.S14M030.Objectives.Objective010",
    item = "Objective",
    id = "354148"
  }
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S14.S14M030.Objectives.Objective010",
    item = "SubObjective1",
    id = "354151"
  }
  l0.ObjectiveSub2 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S14.S14M030.Objectives.Objective010",
    item = "SubObjective2",
    id = "354152"
  }
  l0.ShowPreviousObjectiveComplete = 1
  l0 = self.box_MissionCheckpointReach_52
  l1 = self.box_MissionMessageController_v3_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1944180342", "1944180342", "S14M030_Main", "box_MissionCheckpointReach_52.Out", "box_MissionMessageController_v3_17.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_PhoneCommunicationController_16_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_27()
  l0 = self.box_PhoneCommunicationController_16
  l1 = self.box_MultipleOR_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1707664885", "1707664885", "S14M030_Main", "box_PhoneCommunicationController_16.OnCommunicationFinished", "box_MultipleOR_27.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Ordered_Output_90_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_3
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421346285"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|896792329", "896792329", "S14M030_Main", "box_Ordered_Output_90.Out", "box_PhoneCommunicationController_3.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_Ordered_Output_90_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/StopMusic.lua")]
  l0.FadeOutTime = nil
  l0._graph = self
  l0._name = "box_StopMusic_84"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|822525410"
  l0.Out = self.f_box_StopMusic_84_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1114557353", "1114557353", "S14M030_Main", "box_Ordered_Output_90.Out", "box_StopMusic_84.In", clone, l0)
  l0:In()
end
function export:f_box_InteractionScriptController_44_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|155521982"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_31_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_31_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1943056493", "1943056493", "S14M030_Main", "box_InteractionScriptController_44.Disabled", "box_Ordered_Output_31.In", clone, l0)
  l0:In()
end
function export:f_box_Security_Camera_Monitor_11_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hack_Gameplay_10()
  l0 = self.box_Security_Camera_Monitor_11
  l1 = self.box_Hack_Gameplay_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|67686959", "67686959", "S14M030_Main", "box_Security_Camera_Monitor_11.Enabled", "box_Hack_Gameplay_10.Start", l0, l1)
  l1:Start()
end
function export:f_box_Security_Camera_Monitor_11_OnEndExitAll()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|31462926"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_29_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_29_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_29_Out_2
  l0 = self.box_Security_Camera_Monitor_11
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|691400539", "691400539", "S14M030_Main", "box_Security_Camera_Monitor_11.OnEndExitAll", "box_Ordered_Output_29.In", l0, l1)
  l1:In()
end
function export:f_box_Interact_Gameplay_9_Interacted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372047840480264"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|268850005"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_47_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Interact_Gameplay_9
  l1 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1718514722", "1718514722", "S14M030_Main", "box_Interact_Gameplay_9.Interacted", "box_InteractionScriptController_47.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Ordered_Output_98_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Security_Camera_Monitor_11()
  l0 = self.box_Security_Camera_Monitor_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|2037562964", "2037562964", "S14M030_Main", "box_Ordered_Output_98.Out", "box_Security_Camera_Monitor_11.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_98_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372067078638501"
  l0.Index = 2
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_99"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1632042147"
  l0.ByIndexSet = self.f_box_MaterialController_99_ByIndexSet
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1869652803", "1869652803", "S14M030_Main", "box_Ordered_Output_98.Out", "box_MaterialController_99.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_StopMusic_93_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/StopMusic.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_92
  l0.SoundId = "soundbinary/81442961.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1807299640", "1807299640", "S14M030_Main", "box_StopMusic_93.Out", "box_PlaySound_v2_92.Play", clone, l0)
  l0:Play()
end
function export:f_box_MissionMusicController_51_Activated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMonitor_64
  l0.Mission = "MissionList.9223372046811300298"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1657199372", "1657199372", "S14M030_Main", "box_MissionMusicController_51.Activated", "box_MissionMonitor_64.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Interact_Gameplay_8_Interacted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = "9223372048313421358"
  l0.CameraEntityList = nil
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = nil
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0._name = "box_SecurityCamController_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1438902210"
  l0.EnterSet = DummyFunction
  l0.CanExitSet = DummyFunction
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = self.f_box_SecurityCamController_67_EnterForced
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
  l0 = self.box_Interact_Gameplay_8
  l1 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1468688915", "1468688915", "S14M030_Main", "box_Interact_Gameplay_8.Interacted", "box_SecurityCamController_67.ForceEnter", l0, l1)
  l1:ForceEnter()
end
function export:f_box_Interact_Gameplay_8_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|429037339"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_70_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_70_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_70_Out_2
  l0 = self.box_Interact_Gameplay_8
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1154943985", "1154943985", "S14M030_Main", "box_Interact_Gameplay_8.Started", "box_Ordered_Output_70.In", l0, l1)
  l1:In()
end
function export:f_box_SecurityCamController_67_EnterForced()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_98"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1267035036"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_98_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_98_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|636155022", "636155022", "S14M030_Main", "box_SecurityCamController_67.EnterForced", "box_Ordered_Output_98.In", clone, l0)
  l0:In()
end
function export:f_box_MissionCheckpointReach_62_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_62
  l1 = self.box_S14_M030_CIN_OutsideInvite_Main_77
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|626355690", "626355690", "S14M030_Main", "box_MissionCheckpointReach_62.Out", "box_S14_M030_CIN_OutsideInvite_Main_77.In", l0, l1)
  l1:In()
end
function export:f_box_BreakableEntityMonitor_v2_80_AllBroken()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_82()
  l0 = self.box_BreakableEntityMonitor_v2_80
  l1 = self.box_MultipleOR_82
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1618721304", "1618721304", "S14M030_Main", "box_BreakableEntityMonitor_v2_80.AllBroken", "box_MultipleOR_82.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_BreakableEntityMonitor_v2_80_Breaking()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_32()
  l0 = self.box_BreakableEntityMonitor_v2_80
  l1 = self.box_MultipleOR_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|352027004", "352027004", "S14M030_Main", "box_BreakableEntityMonitor_v2_80.Breaking", "box_MultipleOR_32.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_OnceOnly_v3_18_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_LMA_Layer_Controller_34
  l0.LMALayerName = "SF_08_Invite_LMA"
  l0 = self.box_OnceOnly_v3_18
  l1 = self.box_LMA_Layer_Controller_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1637788048", "1637788048", "S14M030_Main", "box_OnceOnly_v3_18.Out", "box_LMA_Layer_Controller_34.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_Compare_Boolean_v2_25_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_15
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421346284"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|893860893", "893860893", "S14M030_Main", "box_Compare_Boolean_v2_25.A_is_False", "box_PhoneCommunicationController_15.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_Compare_Boolean_v2_25_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_6()
  l0 = self.box_MultipleOR_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1608976074", "1608976074", "S14M030_Main", "box_Compare_Boolean_v2_25.A_is_True", "box_MultipleOR_6.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_PhoneCommunicationController_50_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.PhoneHacked
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|2102090015"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_26_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_26_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_PhoneCommunicationController_50
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1666444803", "1666444803", "S14M030_Main", "box_PhoneCommunicationController_50.OnCommunicationFinished", "box_Compare_Boolean_v2_26.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_45_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_45
  self.PhoneHacked = l0.Target
end
function export:f_box_SetBoolean_v2_45_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_45
  self.PhoneHacked = l0.Target
end
function export:f_box_SetBoolean_v2_45_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_45
  self.PhoneHacked = l0.Target
end
function export:f_box_SetBoolean_v2_45_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_45
  self.PhoneHacked = l0.Target
  l0 = self.box_PhoneCommunicationController_5
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421346283"
  l0 = self.box_SetBoolean_v2_45
  l1 = self.box_PhoneCommunicationController_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|889193185", "889193185", "S14M030_Main", "box_SetBoolean_v2_45.SetTrue", "box_PhoneCommunicationController_5.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_SetBoolean_v2_45_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_45
  self.PhoneHacked = l0.Target
end
function export:f_box_Ordered_Output_91_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_28
  l0.Checkpoint = "CheckPoint_2"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|2005301272", "2005301272", "S14M030_Main", "box_Ordered_Output_91.Out", "box_MissionCheckpointReach_28.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_91_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/StopMusic.lua")]
  l0.FadeOutTime = nil
  l0._graph = self
  l0._name = "box_StopMusic_93"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1269801469"
  l0.Out = self.f_box_StopMusic_93_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|540160747", "540160747", "S14M030_Main", "box_Ordered_Output_91.Out", "box_StopMusic_93.In", clone, l0)
  l0:In()
end
function export:f_box_MissionLayer_v2_78_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|810111926"
  l0.Out = self.f_box_Get_Player_ID_61_Out
  l0 = self.box_MissionLayer_v2_78
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|246834346", "246834346", "S14M030_Main", "box_MissionLayer_v2_78.Loaded", "box_Get_Player_ID_61.In", l0, l1)
  l1:In()
end
function export:f_box_PhoneCommunicationController_35_OnCommunicationStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_52
  l0.Checkpoint = "CheckPoint_1"
  l0 = self.box_PhoneCommunicationController_35
  l1 = self.box_MissionCheckpointReach_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1380922734", "1380922734", "S14M030_Main", "box_PhoneCommunicationController_35.OnCommunicationStarted", "box_MissionCheckpointReach_52.In", l0, l1)
  l1:In()
end
function export:f_box_InteractionScriptMonitor_v2_69_AnimationStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_InteractionScriptMonitor_v2_69
  l1 = self.box_Timer_v2_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|313459244", "313459244", "S14M030_Main", "box_InteractionScriptMonitor_v2_69.AnimationStarted", "box_Timer_v2_72.Start", l0, l1)
  l1:Start()
end
function export:f_box_InteractionScriptMonitor_v2_69_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372067078638501"
  l0.Index = 2
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_83"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|2023055371"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  l0 = self.box_InteractionScriptMonitor_v2_69
  l1 = Boxes[PathID("domino/System/MaterialController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1365528611", "1365528611", "S14M030_Main", "box_InteractionScriptMonitor_v2_69.Out", "box_MaterialController_83.SetByIndex", l0, l1)
  l1:SetByIndex()
end
function export:f_box_MultipleOR_7_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Interact_Gameplay_8
  l0.Entity = "9223372064412697582"
  l0.IsManagingInteraction = 0
  l0 = self.box_MultipleOR_7
  l1 = self.box_Interact_Gameplay_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|2034374739", "2034374739", "S14M030_Main", "box_MultipleOR_7.Out", "box_Interact_Gameplay_8.Start", l0, l1)
  l1:Start()
end
function export:f_box_MaterialController_99_ByIndexSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = nil
  l0.OnGenericChannel = nil
  l0.OnShopChannel = nil
  l0.OnBarChannel = nil
  l0.PlayOnLoad = nil
  l0.ApplyOnLoad = nil
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Controller_100"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|874126225"
  l0.LoadAndPlayRequested = DummyFunction
  l0.EndedAllCustomMediaBroadcasts = DummyFunction
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1573744823", "1573744823", "S14M030_Main", "box_MaterialController_99.ByIndexSet", "box_Media_System_Custom_Broadcast_Controller_100.EndAllCustomMediaBroadcasts", clone, l0)
  l0:EndAllCustomMediaBroadcasts()
end
function export:f_box_Ordered_Output_85_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S14M030_SCR_Main_75
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1052469306", "1052469306", "S14M030_Main", "box_Ordered_Output_85.Out", "box_S14M030_SCR_Main_75.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_85_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372067078639647"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|622535371"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1109215951", "1109215951", "S14M030_Main", "box_Ordered_Output_85.Out", "box_VisibilityController_v2_73.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Get_Player_ID_55_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PGTController_v2_37
  l0.PGTMissionArea = "9223372046887636151"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|2096191097", "2096191097", "S14M030_Main", "box_Get_Player_ID_55.Out", "box_PGTController_v2_37.Start", clone, l0)
  l0:Start()
end
function export:f_box_InteractionScriptController_43_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_85"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1658897097"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_85_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_85_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|790147366", "790147366", "S14M030_Main", "box_InteractionScriptController_43.Disabled", "box_Ordered_Output_85.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_32_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_InteractionScriptMonitor_v2_69
  l0.InteractionScriptEntity = "9223372064412697582"
  l0.AutoDisable = 1
  l0 = self.box_MultipleOR_32
  l1 = self.box_InteractionScriptMonitor_v2_69
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1286316246", "1286316246", "S14M030_Main", "box_MultipleOR_32.Out", "box_InteractionScriptMonitor_v2_69.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MissionCheckpointReach_28_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_23
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S14.S14M030.Objectives.Objective020",
    item = "Objective",
    id = "354153"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_MissionCheckpointReach_28
  l1 = self.box_MissionMessageController_v3_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|328259894", "328259894", "S14M030_Main", "box_MissionCheckpointReach_28.Out", "box_MissionMessageController_v3_23.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_MultipleOR_21_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "S14M030_Main"
  l0 = self.box_MultipleOR_21
  l1 = self.box_MissionLayer_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|2028644828", "2028644828", "S14M030_Main", "box_MultipleOR_21.Out", "box_MissionLayer_v2_2.Load", l0, l1)
  l1:Load()
end
function export:f_box_Media_System_Custom_Broadcast_Monitor_94_CustomBroadcastResourceLoaded()
  local l0
  self = self._graph
  self:OnEnter_box_Media_System_Custom_Broadcast_Monitor_94()
  l0 = self.box_Media_System_Custom_Broadcast_Monitor_94
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1018087911", "1018087911", "S14M030_Main", "box_Media_System_Custom_Broadcast_Monitor_94.CustomBroadcastResourceLoaded", "box_Media_System_Custom_Broadcast_Monitor_94.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Media_System_Custom_Broadcast_Monitor_94_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_97
  l0.Seconds = 2
  l0 = self.box_Media_System_Custom_Broadcast_Monitor_94
  l1 = self.box_Timer_v2_97
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1975468893", "1975468893", "S14M030_Main", "box_Media_System_Custom_Broadcast_Monitor_94.Disabled", "box_Timer_v2_97.Start", l0, l1)
  l1:Start()
end
function export:f_box_MissionMessageController_v3_17_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|625046238"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_13_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_13_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_13_Out_2
  l0 = self.box_MissionMessageController_v3_17
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|158685820", "158685820", "S14M030_Main", "box_MissionMessageController_v3_17.Out", "box_Ordered_Output_13.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_72_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_106"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1049900875"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_106_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_106_Out_1
  l0 = self.box_Timer_v2_72
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|506752321", "506752321", "S14M030_Main", "box_Timer_v2_72.TimeElapsed", "box_Ordered_Output_106.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_46_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_46
  self.IsBackdoorInstalled = l0.Target
end
function export:f_box_SetBoolean_v2_46_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_46
  self.IsBackdoorInstalled = l0.Target
end
function export:f_box_SetBoolean_v2_46_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_46
  self.IsBackdoorInstalled = l0.Target
end
function export:f_box_SetBoolean_v2_46_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_46
  self.IsBackdoorInstalled = l0.Target
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_103"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|413329574"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_103_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_103_Out_1
  l0 = self.box_SetBoolean_v2_46
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1831083081", "1831083081", "S14M030_Main", "box_SetBoolean_v2_46.SetTrue", "box_Ordered_Output_103.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_46_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_46
  self.IsBackdoorInstalled = l0.Target
end
function export:f_box_Simple_Node_58_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|495196011"
  l0.Out = self.f_box_Simple_Node_57_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1130996212", "1130996212", "S14M030_Main", "box_Simple_Node_58.Out", "box_Simple_Node_57.In", clone, l0)
  l0:In()
end
function export:f_box_PhoneCommunicationController_5_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsBackdoorInstalled
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1518921250"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_25_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_25_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_PhoneCommunicationController_5
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|275673657", "275673657", "S14M030_Main", "box_PhoneCommunicationController_5.OnCommunicationFinished", "box_Compare_Boolean_v2_25.In", l0, l1)
  l1:In()
end
function export:f_box_CinematicPrep_53_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_60()
  l0 = self.box_CinematicPrep_53
  l1 = self.box_MultipleOR_60
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1309012021", "1309012021", "S14M030_Main", "box_CinematicPrep_53.PostOut", "box_MultipleOR_60.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Ordered_Output_59_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Escape_Gameplay_14
  l0.Entity_AreaRadius = 0
  l0.MissionArea = "9223372047969939832"
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1913066869", "1913066869", "S14M030_Main", "box_Ordered_Output_59.Out", "box_Escape_Gameplay_14.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_59_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1976762182"
  l0.Out = self.f_box_Simple_Node_58_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1781464326", "1781464326", "S14M030_Main", "box_Ordered_Output_59.Out", "box_Simple_Node_58.In", clone, l0)
  l0:In()
end
function export:f_box_S14M030_SCR_Main_75_Out_Annotations()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_35
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053055916840"
  l0 = self.box_S14M030_SCR_Main_75
  l1 = self.box_PhoneCommunicationController_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|272530309", "272530309", "S14M030_Main", "box_S14M030_SCR_Main_75.Out Annotations", "box_PhoneCommunicationController_35.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Compare_Boolean_v2_26_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_16
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421346282"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1688508592", "1688508592", "S14M030_Main", "box_Compare_Boolean_v2_26.A_is_False", "box_PhoneCommunicationController_16.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_Compare_Boolean_v2_26_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_27()
  l0 = self.box_MultipleOR_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|334674915", "334674915", "S14M030_Main", "box_Compare_Boolean_v2_26.A_is_True", "box_MultipleOR_27.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Hack_Gameplay_10_Hacked()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372064412697582"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|1259736267"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_44_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Hack_Gameplay_10
  l1 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M030\\S14M030.domino|@S14M030_Main|291240023", "291240023", "S14M030_Main", "box_Hack_Gameplay_10.Hacked", "box_InteractionScriptController_44.Disable", l0, l1)
  l1:Disable()
end
function export:OnEnter_box_Multiple_AND_20()
end
function export:OnEnter_box_MultipleOR_27()
end
function export:OnEnter_box_TriggerMonitor_v2_49()
  local l0
  l0 = self.box_TriggerMonitor_v2_49
  l0.Trigger = "9223372068246843399"
end
function export:OnEnter_box_MultipleOR_60()
end
function export:OnEnter_box_MultipleOR_82()
end
function export:OnEnter_box_MultipleOR_6()
end
function export:OnEnter_box_MultipleOR_12()
end
function export:OnEnter_box_MultipleOR_30()
end
function export:OnEnter_box_MissionZone_56()
  local l0
  l0 = self.box_MissionZone_56
  l0.MissionArea = "9223372047969939830"
  l0.MissionLayer = "S14M030_Main"
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
end
function export:OnEnter_box_Security_Camera_Monitor_11()
  local l0
  l0 = self.box_Security_Camera_Monitor_11
  l0.CameraEntityList = self.OfficeCameras
end
function export:OnEnter_box_MultipleOR_7()
end
function export:OnEnter_box_MultipleOR_32()
end
function export:OnEnter_box_MultipleOR_21()
end
function export:OnEnter_box_Media_System_Custom_Broadcast_Monitor_94()
end
function export:OnEnter_box_Mission_End_4()
  local l0
  l0 = self.box_Mission_End_4
  l0.Checkpoint = "CheckPoint_3"
  l0.MissionLayer = "S14M030_Main"
  l0.ShowMissionComplete = 1
end
function export:OnEnter_box_Hack_Gameplay_10()
  local l0
  l0 = self.box_Hack_Gameplay_10
  l0.Entity = "9223372055957737236"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0.DisplayObjectiveDistance = 1
end
_compilerVersion = 4
