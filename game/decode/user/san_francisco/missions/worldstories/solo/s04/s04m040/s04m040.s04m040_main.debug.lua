export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Download_Gameplay.debug.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Escape_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Hack_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/LaneRestrictionsControl.lua")
  cbox:RegisterBox("domino/System/LMALayerController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MissionMusicController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PGTController_v2.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PhysZoneCleanup.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/ProfilingPathController_v2.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S04/S04M040/S04M040_SCR.S04M040_SCR_Main.debug.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/TutorialController.lua")
  cbox:LoadResource("soundbinary/1465622631.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "S04M040_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main"
  self.PlayerEntity = nil
  self._2 = 2
  self.CheckPoint_0IsActivated = 0
  self.box_Escape_Gameplay_12 = cbox:CreateBox("domino/Library/common/MissionIngredients.Escape_Gameplay.debug.lua")
  l0 = self.box_Escape_Gameplay_12
  l0._graph = self
  l0._name = "box_Escape_Gameplay_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|11698199"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Escaped = self.f_box_Escape_Gameplay_12_Escaped
  l0.LeftArea = self.f_box_Escape_Gameplay_12_LeftArea
  self.box_S04M040_SCR_Main_27 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S04/S04M040/S04M040_SCR.S04M040_SCR_Main.debug.lua")
  l0 = self.box_S04M040_SCR_Main_27
  l0._graph = self
  l0._name = "box_S04M040_SCR_Main_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|136661280"
  l0.Out = DummyFunction
  l0.OutStopBlackOut = self.f_box_S04M040_SCR_Main_27_OutStopBlackOut
  l0.OutStartBlackOut = DummyFunction
  self.box_HackableController_v2_46 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_46
  l0._graph = self
  l0._name = "box_HackableController_v2_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|141554277"
  l0.Enabled = self.f_box_HackableController_v2_46_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_PGTController_v2_6 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_6
  l0._graph = self
  l0._name = "box_PGTController_v2_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|147731477"
  l0.Started = self.f_box_PGTController_v2_6_Started
  l0.Aborted = DummyFunction
  l0.AllSpawned = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_MissionMessageController_v3_22 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_22
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|377804257"
  l0.Out = self.f_box_MissionMessageController_v3_22_Out
  l0.MessageCompleted = DummyFunction
  self.box_LMA_Layer_Controller_53 = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self.box_LMA_Layer_Controller_53
  l0._graph = self
  l0._name = "box_LMA_Layer_Controller_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|469185433"
  l0.Loaded = self.f_box_LMA_Layer_Controller_53_Loaded
  l0.Unloaded = DummyFunction
  self.box_MissionMessageController_v3_50 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_50
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|473522698"
  l0.Out = self.f_box_MissionMessageController_v3_50_Out
  l0.MessageCompleted = DummyFunction
  self.box_SetBoolean_v2_26 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_26
  l0._graph = self
  l0._name = "box_SetBoolean_v2_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|600777341"
  l0.Out = self.f_box_SetBoolean_v2_26_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_26_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_26_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_26_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_26_SetFromBool
  self.box_MissionMessageController_v3_25 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_25
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|616570647"
  l0.Out = self.f_box_MissionMessageController_v3_25_Out
  l0.MessageCompleted = DummyFunction
  self.box_S04M040_SCR_Main_31 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S04/S04M040/S04M040_SCR.S04M040_SCR_Main.debug.lua")
  l0 = self.box_S04M040_SCR_Main_31
  l0._graph = self
  l0._name = "box_S04M040_SCR_Main_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|626334136"
  l0.Out = self.f_box_S04M040_SCR_Main_31_Out
  l0.OutStopBlackOut = DummyFunction
  l0.OutStartBlackOut = self.f_box_S04M040_SCR_Main_31_OutStartBlackOut
  self.box_PlaySound_v2_33 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_33
  l0._graph = self
  l0._name = "box_PlaySound_v2_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|775918189"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MissionCheckpointReach_47 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_47
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|883699991"
  l0.Out = self.f_box_MissionCheckpointReach_47_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_HackableController_v2_51 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_51
  l0._graph = self
  l0._name = "box_HackableController_v2_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|1017748186"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = self.f_box_HackableController_v2_51_ProfilingEnabled
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_HackableController_v2_7 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_7
  l0._graph = self
  l0._name = "box_HackableController_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|1120328102"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_7_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_LMA_Layer_Controller_36 = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self.box_LMA_Layer_Controller_36
  l0._graph = self
  l0._name = "box_LMA_Layer_Controller_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|1191859413"
  l0.Loaded = DummyFunction
  l0.Unloaded = DummyFunction
  self.box_MultipleOR_49 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_49
  l0._graph = self
  l0._name = "box_MultipleOR_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|1220808044"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_49_Out
  self.box_TutorialController_29 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_29
  l0._graph = self
  l0._name = "box_TutorialController_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|1278410576"
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_Interact_Gameplay_19 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_19
  l0._graph = self
  l0._name = "box_Interact_Gameplay_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|1337200945"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_box_Interact_Gameplay_19_Interacted
  self.box_MultipleOR_23 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_23
  l0._graph = self
  l0._name = "box_MultipleOR_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|1482301086"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_23_Out
  self.box_HackableController_v2_32 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_32
  l0._graph = self
  l0._name = "box_HackableController_v2_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|1500698651"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_32_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_PhoneCommunicationController_11 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_11
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|1536515047"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_11_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_11_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionLayer_v2_5 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_5
  l0._graph = self
  l0._name = "box_MissionLayer_v2_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|1585500371"
  l0.Loaded = self.f_box_MissionLayer_v2_5_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_OnceOnly_v3_37 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_37
  l0._graph = self
  l0._name = "box_OnceOnly_v3_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|1613228116"
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_box_OnceOnly_v3_37_Out
  l0.ResetOut = DummyFunction
  self.box_Mission_End_38 = cbox:CreateBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  l0 = self.box_Mission_End_38
  l0._graph = self
  l0._name = "box_Mission_End_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|1623942898"
  self.box_Download_Gameplay_17 = cbox:CreateBox("domino/Library/common/MissionIngredients.Download_Gameplay.debug.lua")
  l0 = self.box_Download_Gameplay_17
  l0._graph = self
  l0._name = "box_Download_Gameplay_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|1649289944"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.DownloadCompleted = self.f_box_Download_Gameplay_17_DownloadCompleted
  l0.Ratio1Reached = DummyFunction
  l0.Ratio1Reached_PostReset = DummyFunction
  l0.Ratio2Reached = DummyFunction
  l0.Ratio2Reached_PostReset = DummyFunction
  l0.CustomRatioReached = DummyFunction
  l0.CustomRatioReached_PostReset = DummyFunction
  l0.PauseRatioReached = DummyFunction
  l0.PauseRatioReached_PostReset = DummyFunction
  self.box_MissionZone_10 = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  l0 = self.box_MissionZone_10
  l0._graph = self
  l0._name = "box_MissionZone_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|1714416242"
  l0.Enabled = self.f_box_MissionZone_10_Enabled
  l0.Disabled = DummyFunction
  l0.SoftQuitCompleted = DummyFunction
  self.box_HackableController_v2_52 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_52
  l0._graph = self
  l0._name = "box_HackableController_v2_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|1816921297"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = self.f_box_HackableController_v2_52_ProfilingEnabled
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_HackableController_v2_43 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_43
  l0._graph = self
  l0._name = "box_HackableController_v2_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|1847389038"
  l0.Enabled = self.f_box_HackableController_v2_43_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_HackableController_v2_8 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_8
  l0._graph = self
  l0._name = "box_HackableController_v2_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|1970894317"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_8_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_HackableController_v2_45 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_45
  l0._graph = self
  l0._name = "box_HackableController_v2_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|1995635945"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_45_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Hack_Gameplay_9 = cbox:CreateBox("domino/Library/common/MissionIngredients.Hack_Gameplay.debug.lua")
  l0 = self.box_Hack_Gameplay_9
  l0._graph = self
  l0._name = "box_Hack_Gameplay_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|2087335011"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_box_Hack_Gameplay_9_Hacked
  self.box_CinematicPrep_20 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_20
  l0._graph = self
  l0._name = "box_CinematicPrep_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|2134399659"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_20_PostOut
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
  l0 = self.box_SetBoolean_v2_26
  l0.Bool = self.CheckPoint_0IsActivated
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|370692726", "370692726", "S04M040_Main", "CheckPoint_0", "box_SetBoolean_v2_26.True", self, l0)
  l0:True()
end
function export:CheckPoint_1()
  local l0
  self:OnEnter_box_Mission_End_38()
  l0 = self.box_Mission_End_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|1424071258", "1424071258", "S04M040_Main", "CheckPoint_1", "box_Mission_End_38.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  l0 = self.box_LMA_Layer_Controller_53
  l0.LMALayerName = "SF_06_SmartHouses_LMA"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|614586917", "614586917", "S04M040_Main", "In", "box_LMA_Layer_Controller_53.Load", self, l0)
  l0:Load()
end
function export:f_box_Escape_Gameplay_12_Escaped()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|1662176491"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_35_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_35_Out_1
  l0 = self.box_Escape_Gameplay_12
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|1770859444", "1770859444", "S04M040_Main", "box_Escape_Gameplay_12.Escaped", "box_Ordered_Output_35.In", l0, l1)
  l1:In()
end
function export:f_box_Escape_Gameplay_12_LeftArea()
  local l0, l1
  self = self._graph
  l0 = self.box_Escape_Gameplay_12
  l1 = self.box_OnceOnly_v3_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|394122166", "394122166", "S04M040_Main", "box_Escape_Gameplay_12.LeftArea", "box_OnceOnly_v3_37.In", l0, l1)
  l1:In(0)
end
function export:f_box_S04M040_SCR_Main_27_OutStopBlackOut()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_43
  l0.HackableEntity = "9223372050335506544"
  l0 = self.box_S04M040_SCR_Main_27
  l1 = self.box_HackableController_v2_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|1935076541", "1935076541", "S04M040_Main", "box_S04M040_SCR_Main_27.OutStopBlackOut", "box_HackableController_v2_43.EnableHack", l0, l1)
  l1:EnableHack()
end
function export:f_box_HackableController_v2_46_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_50
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S04.S04M040.Objectives.Objective030",
    item = "Objective",
    id = "341449"
  }
  l0 = self.box_HackableController_v2_46
  l1 = self.box_MissionMessageController_v3_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|1125263034", "1125263034", "S04M040_Main", "box_HackableController_v2_46.Enabled", "box_MissionMessageController_v3_50.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_PGTController_v2_6_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MissionZone_10()
  l0 = self.box_PGTController_v2_6
  l1 = self.box_MissionZone_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|1446810031", "1446810031", "S04M040_Main", "box_PGTController_v2_6.Started", "box_MissionZone_10.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Lanes_Restrictions_Control_28_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PGTController_v2_6
  l0.PGTMissionArea = "9223372046521836653"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|1335137454", "1335137454", "S04M040_Main", "box_Lanes_Restrictions_Control_28.Out", "box_PGTController_v2_6.Start", clone, l0)
  l0:Start()
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
  l0 = Boxes[PathID("domino/System/PhysZoneCleanup.lua")]
  l0.TargetZone = "9223372059723112924"
  l0._graph = self
  l0._name = "box_Phys_Zone_Cleanup_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|1291674846"
  l0.Out = self.f_box_Phys_Zone_Cleanup_30_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|1680350645", "1680350645", "S04M040_Main", "box_Get_Player_ID_2.Out", "box_Phys_Zone_Cleanup_30.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_MissionMessageController_v3_22_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Interact_Gameplay_19
  l0.Entity = "9223372048160889220"
  l0.IsManagingInteraction = 1
  l0 = self.box_MissionMessageController_v3_22
  l1 = self.box_Interact_Gameplay_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|1909223233", "1909223233", "S04M040_Main", "box_MissionMessageController_v3_22.Out", "box_Interact_Gameplay_19.Start", l0, l1)
  l1:Start()
end
function export:f_box_LMA_Layer_Controller_53_Loaded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_49()
  l0 = self.box_LMA_Layer_Controller_53
  l1 = self.box_MultipleOR_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|1928782492", "1928782492", "S04M040_Main", "box_LMA_Layer_Controller_53.Loaded", "box_MultipleOR_49.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MissionMessageController_v3_50_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Hack_Gameplay_9
  l0.Entity = "9223372055816713705"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0.DisplayObjectiveDistance = 1
  l0 = self.box_MissionMessageController_v3_50
  l1 = self.box_Hack_Gameplay_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|285965732", "285965732", "S04M040_Main", "box_MissionMessageController_v3_50.Out", "box_Hack_Gameplay_9.Start", l0, l1)
  l1:Start()
end
function export:f_box_SetBoolean_v2_26_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_26
  self.CheckPoint_0IsActivated = l0.Target
end
function export:f_box_SetBoolean_v2_26_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_26
  self.CheckPoint_0IsActivated = l0.Target
end
function export:f_box_SetBoolean_v2_26_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_26
  self.CheckPoint_0IsActivated = l0.Target
end
function export:f_box_SetBoolean_v2_26_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_26
  self.CheckPoint_0IsActivated = l0.Target
  self:OnEnter_box_MultipleOR_49()
  l1 = self.box_MultipleOR_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|1948043812", "1948043812", "S04M040_Main", "box_SetBoolean_v2_26.SetTrue", "box_MultipleOR_49.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_SetBoolean_v2_26_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_26
  self.CheckPoint_0IsActivated = l0.Target
end
function export:f_box_MissionMessageController_v3_25_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|1233937932"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_1_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_1_Out_1
  l0.Out[2] = DummyFunction
  l0 = self.box_MissionMessageController_v3_25
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|1246939320", "1246939320", "S04M040_Main", "box_MissionMessageController_v3_25.Out", "box_Ordered_Output_1.In", l0, l1)
  l1:In()
end
function export:f_box_S04M040_SCR_Main_31_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_23()
  l0 = self.box_S04M040_SCR_Main_31
  l1 = self.box_MultipleOR_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|105345367", "105345367", "S04M040_Main", "box_S04M040_SCR_Main_31.Out", "box_MultipleOR_23.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_S04M040_SCR_Main_31_OutStartBlackOut()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_20
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_S04M040_SCR_Main_31
  l1 = self.box_CinematicPrep_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|178777379", "178777379", "S04M040_Main", "box_S04M040_SCR_Main_31.OutStartBlackOut", "box_CinematicPrep_20.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_MissionCheckpointReach_47_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_7
  l0.HackableEntity = "9223372055816713705"
  l0 = self.box_MissionCheckpointReach_47
  l1 = self.box_HackableController_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|652395273", "652395273", "S04M040_Main", "box_MissionCheckpointReach_47.Out", "box_HackableController_v2_7.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_HackableController_v2_51_ProfilingEnabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372049886804265"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|1867858350"
  l0.Out = DummyFunction
  l0.Shown = self.f_box_ProfilingPathController_v2_15_Shown
  l0.Hidden = DummyFunction
  l0 = self.box_HackableController_v2_51
  l1 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|2138731470", "2138731470", "S04M040_Main", "box_HackableController_v2_51.ProfilingEnabled", "box_ProfilingPathController_v2_15.ShowPath", l0, l1)
  l1:ShowPath()
end
function export:f_box_HackableController_v2_7_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_8
  l0.HackableEntity = "9223372055816713705"
  l0 = self.box_HackableController_v2_7
  l1 = self.box_HackableController_v2_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|753377286", "753377286", "S04M040_Main", "box_HackableController_v2_7.Disabled", "box_HackableController_v2_8.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_ProfilingPathController_v2_21_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372046521836653"
  l0.RestrictTraffic = nil
  l0.RestrictPedestrians = nil
  l0.RestrictParking = nil
  l0.ResetLivingCity = 1
  l0.ResetMissionWithLivingCity = 1
  l0.CivilianDensityDbObject = nil
  l0.ParkedCarsDensityDbObject = nil
  l0.TrafficDensityScale = nil
  l0.ApplyToEnticers = nil
  l0.ApplyToRoadNetwork = nil
  l0.RestrictHumanOnFoot = nil
  l0.RestrictHumanPassenger = nil
  l0.RestrictAnimal = nil
  l0.RestrictRobot = nil
  l0.RestrictRoadVehicle = nil
  l0.RestrictRail = nil
  l0.RestrictBoat = nil
  l0.RestrictParkedCar = nil
  l0.RestrictParkedBoat = nil
  l0.RestrictWorldAI = nil
  l0.RestrictReinforcementAI = nil
  l0.RestrictMissionAI = nil
  l0.RestrictCityObject = nil
  l0.RestrictMissionObject = nil
  l0._graph = self
  l0._name = "box_Lanes_Restrictions_Control_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|251817484"
  l0.Out = self.f_box_Lanes_Restrictions_Control_28_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|1384773985", "1384773985", "S04M040_Main", "box_ProfilingPathController_v2_21.Hidden", "box_Lanes_Restrictions_Control_28.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_49_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_5
  l0.LayerName = "S04M040_Main"
  l0 = self.box_MultipleOR_49
  l1 = self.box_MissionLayer_v2_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|16961891", "16961891", "S04M040_Main", "box_MultipleOR_49.Out", "box_MissionLayer_v2_5.Load", l0, l1)
  l1:Load()
end
function export:f_box_Ordered_Output_1_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|1608553835"
  l0.Out = self.f_box_Simple_Node_14_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|882566041", "882566041", "S04M040_Main", "box_Ordered_Output_1.Out", "box_Simple_Node_14.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_1_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Escape_Gameplay_12
  l0.Entity_AreaRadius = 0
  l0.MissionArea = "9223372049287673750"
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|1295129884", "1295129884", "S04M040_Main", "box_Ordered_Output_1.Out", "box_Escape_Gameplay_12.Start", clone, l0)
  l0:Start()
end
function export:f_box_Phys_Zone_Cleanup_30_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PhysZoneCleanup.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.CheckPoint_0IsActivated
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|2112460787"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_24_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_24_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|328633474", "328633474", "S04M040_Main", "box_Phys_Zone_Cleanup_30.Out", "box_Compare_Boolean_v2_24.In", clone, l0)
  l0:In()
end
function export:f_box_Interact_Gameplay_19_Interacted()
  local l0, l1
  self = self._graph
  l0 = self.box_Interact_Gameplay_19
  l1 = self.box_S04M040_SCR_Main_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|112788619", "112788619", "S04M040_Main", "box_Interact_Gameplay_19.Interacted", "box_S04M040_SCR_Main_27.INStopBlackOut", l0, l1)
  l1:INStopBlackOut()
end
function export:f_box_MissionMusicController_18_Activated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TutorialController_29
  l0.SurvivalGuideItemDB = "Items.9223372053993007711"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|1136162417", "1136162417", "S04M040_Main", "box_MissionMusicController_18.Activated", "box_TutorialController_29.Display", clone, l0)
  l0:Display()
end
function export:f_box_MultipleOR_23_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_47
  l0.Checkpoint = "CheckPoint_0"
  l0 = self.box_MultipleOR_23
  l1 = self.box_MissionCheckpointReach_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|1766218580", "1766218580", "S04M040_Main", "box_MultipleOR_23.Out", "box_MissionCheckpointReach_47.In", l0, l1)
  l1:In()
end
function export:f_box_HackableController_v2_32_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_45
  l0.HackableEntity = "9223372050335506544"
  l0 = self.box_HackableController_v2_32
  l1 = self.box_HackableController_v2_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|752177856", "752177856", "S04M040_Main", "box_HackableController_v2_32.Disabled", "box_HackableController_v2_45.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_PhoneCommunicationController_11_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372064354972903"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|1445523616"
  l0.Activated = self.f_box_MissionMusicController_18_Activated
  l0.Deactivated = DummyFunction
  l0 = self.box_PhoneCommunicationController_11
  l1 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|1809633700", "1809633700", "S04M040_Main", "box_PhoneCommunicationController_11.OnCommunicationFinished", "box_MissionMusicController_18.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_PhoneCommunicationController_11_StartCommunicationOut()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_22
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S04.S04M040.Objectives.Objective010",
    item = "Objective",
    id = "341447"
  }
  l0 = self.box_PhoneCommunicationController_11
  l1 = self.box_MissionMessageController_v3_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|292875916", "292875916", "S04M040_Main", "box_PhoneCommunicationController_11.StartCommunicationOut", "box_MissionMessageController_v3_22.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_MissionLayer_v2_5_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|281914910"
  l0.Out = self.f_box_Get_Player_ID_2_Out
  l0 = self.box_MissionLayer_v2_5
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|916736484", "916736484", "S04M040_Main", "box_MissionLayer_v2_5.Loaded", "box_Get_Player_ID_2.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_14_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionZone_10()
  l0 = self.box_MissionZone_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|1717477412", "1717477412", "S04M040_Main", "box_Simple_Node_14.Out", "box_MissionZone_10.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_OnceOnly_v3_37_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_LMA_Layer_Controller_36
  l0.LMALayerName = "SF_06_SmartHouses_LMA"
  l0 = self.box_OnceOnly_v3_37
  l1 = self.box_LMA_Layer_Controller_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|1421772925", "1421772925", "S04M040_Main", "box_OnceOnly_v3_37.Out", "box_LMA_Layer_Controller_36.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_Download_Gameplay_17_DownloadCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_25
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S04.S04M040.Objectives.Objective040",
    item = "Objective",
    id = "496583"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_Download_Gameplay_17
  l1 = self.box_MissionMessageController_v3_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|250333614", "250333614", "S04M040_Main", "box_Download_Gameplay_17.DownloadCompleted", "box_MissionMessageController_v3_25.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_Ordered_Output_35_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Mission_End_38()
  l0 = self.box_Mission_End_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|1898105516", "1898105516", "S04M040_Main", "box_Ordered_Output_35.Out", "box_Mission_End_38.End", clone, l0)
  l0:End()
end
function export:f_box_Ordered_Output_35_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_33
  l0.SoundId = "soundbinary/1465622631.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|1242834994", "1242834994", "S04M040_Main", "box_Ordered_Output_35.Out", "box_PlaySound_v2_33.Play", clone, l0)
  l0:Play()
end
function export:f_box_MissionZone_10_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_11
  l0.PlayerEntity = self.PlayerEntity
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421347582"
  l0 = self.box_MissionZone_10
  l1 = self.box_PhoneCommunicationController_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|1833008717", "1833008717", "S04M040_Main", "box_MissionZone_10.Enabled", "box_PhoneCommunicationController_11.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_HackableController_v2_52_ProfilingEnabled()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_46
  l0.HackableEntity = "9223372055816713705"
  l0 = self.box_HackableController_v2_52
  l1 = self.box_HackableController_v2_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|761418793", "761418793", "S04M040_Main", "box_HackableController_v2_52.ProfilingEnabled", "box_HackableController_v2_46.EnableHack", l0, l1)
  l1:EnableHack()
end
function export:f_box_HackableController_v2_43_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_51
  l0.HackableEntity = "9223372050335506544"
  l0 = self.box_HackableController_v2_43
  l1 = self.box_HackableController_v2_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|495784716", "495784716", "S04M040_Main", "box_HackableController_v2_43.Enabled", "box_HackableController_v2_51.EnableProfiling", l0, l1)
  l1:EnableProfiling()
end
function export:f_box_ProfilingPathController_v2_15_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_52
  l0.HackableEntity = "9223372055816713705"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|1506891003", "1506891003", "S04M040_Main", "box_ProfilingPathController_v2_15.Shown", "box_HackableController_v2_52.EnableProfiling", clone, l0)
  l0:EnableProfiling()
end
function export:f_box_HackableController_v2_8_ProfilingDisabled()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_32
  l0.HackableEntity = "9223372050335506544"
  l0 = self.box_HackableController_v2_8
  l1 = self.box_HackableController_v2_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|1569290277", "1569290277", "S04M040_Main", "box_HackableController_v2_8.ProfilingDisabled", "box_HackableController_v2_32.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_HackableController_v2_45_ProfilingDisabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372049886804265"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|1158937102"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_ProfilingPathController_v2_21_Hidden
  l0 = self.box_HackableController_v2_45
  l1 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|910210694", "910210694", "S04M040_Main", "box_HackableController_v2_45.ProfilingDisabled", "box_ProfilingPathController_v2_21.HidePath", l0, l1)
  l1:HidePath()
end
function export:f_box_Hack_Gameplay_9_Hacked()
  local l0, l1
  self = self._graph
  l0 = self.box_Download_Gameplay_17
  l0.TargetEntity = "9223372055816713705"
  l0.LinkedObjective = "Objective"
  l0.Duration = 10
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
  l0 = self.box_Hack_Gameplay_9
  l1 = self.box_Download_Gameplay_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|1378400757", "1378400757", "S04M040_Main", "box_Hack_Gameplay_9.Hacked", "box_Download_Gameplay_17.Start", l0, l1)
  l1:Start()
end
function export:f_box_Compare_Boolean_v2_24_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S04M040_SCR_Main_31()
  l0 = self.box_S04M040_SCR_Main_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|1652548021", "1652548021", "S04M040_Main", "box_Compare_Boolean_v2_24.A_is_False", "box_S04M040_SCR_Main_31.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_24_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S04M040_SCR_Main_31()
  l0 = self.box_S04M040_SCR_Main_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|549355138", "549355138", "S04M040_Main", "box_Compare_Boolean_v2_24.A_is_True", "box_S04M040_SCR_Main_31.InStartBlackOut", clone, l0)
  l0:InStartBlackOut()
end
function export:f_box_CinematicPrep_20_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_23()
  l0 = self.box_CinematicPrep_20
  l1 = self.box_MultipleOR_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040.domino|@S04M040_Main|2066445189", "2066445189", "S04M040_Main", "box_CinematicPrep_20.PostOut", "box_MultipleOR_23.Input", l0, l1)
  l1:Input(1)
end
function export:OnEnter_box_S04M040_SCR_Main_31()
end
function export:OnEnter_box_MultipleOR_49()
end
function export:OnEnter_box_MultipleOR_23()
end
function export:OnEnter_box_Mission_End_38()
  local l0
  l0 = self.box_Mission_End_38
  l0.Checkpoint = "CheckPoint_1"
  l0.MissionLayer = "S04M040_Main"
  l0.ShowMissionComplete = 1
end
function export:OnEnter_box_MissionZone_10()
  local l0
  l0 = self.box_MissionZone_10
  l0.MissionArea = "9223372048360719109"
  l0.MissionLayer = "S04M040_Main"
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
end
_compilerVersion = 4
