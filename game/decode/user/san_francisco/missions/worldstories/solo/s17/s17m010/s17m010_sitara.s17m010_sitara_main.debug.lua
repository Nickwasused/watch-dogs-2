export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/IOPController.lua")
  cbox:RegisterBox("domino/System/ChangePlayerGkModelFromHumanConfig.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Hack_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/InventoryController_v2.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MissionMusicController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/NetworkSurfingController.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S17/S17M010/s17m010_sitara_scr.S17M010_Sitara_SCR_Main.debug.lua")
  cbox:RegisterBox("domino/System/SecurityCamController.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/SetTimeOfDay.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/SmartphoneAppController.lua")
  cbox:RegisterBox("domino/System/TeleportToSpawnPoint.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TimeScaleController.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:RegisterBox("domino/System/WaitQualitiesLoaded.lua")
  cbox:RegisterGlobals("domino/user/san_francisco/missions/WorldStories/Solo/S17/S17M010/S17M010.globals.lua")
  cbox:RegisterGlobals("domino/user/san_francisco/missions/WorldStories/Solo/S17/S17M010/s17m010_sitara.globals.lua")
  cbox:LoadResource("soundbinary/2286467389.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1465087397.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/338224551.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "S17M010_Sitara_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main"
  self.SitaraDone = DummyFunction
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.TimeOfDayMinutes = 30
  self.TimeOfDayHour = 18
  self.Catskills = nil
  self.box_PhoneCommunicationController_41 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_41
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|3246162"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_41_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_S17M010_Sitara_SCR_Main_17 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S17/S17M010/s17m010_sitara_scr.S17M010_Sitara_SCR_Main.debug.lua")
  l0 = self.box_S17M010_Sitara_SCR_Main_17
  l0._graph = self
  l0._name = "box_S17M010_Sitara_SCR_Main_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|182342134"
  l0.Out = self.f_box_S17M010_Sitara_SCR_Main_17_Out
  self.box_PhoneCommunicationController_32 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_32
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|197639880"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_32_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_AI_IOPController_62 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_62
  l0._graph = self
  l0._name = "box_AI_IOPController_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|282437026"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = self.f_box_AI_IOPController_62_IOPKickOutComplete
  self.box_HackableController_v2_25 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_25
  l0._graph = self
  l0._name = "box_HackableController_v2_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|456505078"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = self.f_box_HackableController_v2_25_ProfileAssigned
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_SetBoolean_v2_47 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_47
  l0._graph = self
  l0._name = "box_SetBoolean_v2_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|461408744"
  l0.Out = self.f_box_SetBoolean_v2_47_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_47_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_47_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_47_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_47_SetFromBool
  self.box_PhoneCommunicationController_43 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_43
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|509932724"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MultipleOR_1 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_1
  l0._graph = self
  l0._name = "box_MultipleOR_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|533969160"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_1_Out
  self.box_PlaySound_v2_49 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_49
  l0._graph = self
  l0._name = "box_PlaySound_v2_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|578615130"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_CLOController_55 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_55
  l0._graph = self
  l0._name = "box_CLOController_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|632645285"
  l0.Activated = self.f_box_CLOController_55_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_55_OnUserInPlace
  self.box_MissionZone_9 = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  l0 = self.box_MissionZone_9
  l0._graph = self
  l0._name = "box_MissionZone_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|651392842"
  l0.Enabled = self.f_box_MissionZone_9_Enabled
  l0.Disabled = DummyFunction
  l0.SoftQuitCompleted = DummyFunction
  self.box_CinematicPrep_66 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_66
  l0._graph = self
  l0._name = "box_CinematicPrep_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s17\\s17m010\\s17m010_sitara.domino|@S17M010_Sitara_Main|670062296"
  l0.PreOut = self.f_box_CinematicPrep_66_PreOut
  l0.PostOut = DummyFunction
  self.box_MissionCheckpointReach_19 = cbox:CreateBox("Domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_19
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|677592110"
  l0.Out = self.f_box_MissionCheckpointReach_19_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_Hackable_Monitor_23 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_23
  l0._graph = self
  l0._name = "box_Hackable_Monitor_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|738100823"
  l0.Enabled = self.f_box_Hackable_Monitor_23_Enabled
  l0.Disabled = self.f_box_Hackable_Monitor_23_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_23_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_Hack_Gameplay_44 = cbox:CreateBox("domino/Library/common/MissionIngredients.Hack_Gameplay.debug.lua")
  l0 = self.box_Hack_Gameplay_44
  l0._graph = self
  l0._name = "box_Hack_Gameplay_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|759180392"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_Hack_Gameplay_44_Stopped
  l0.Hacked = self.f_box_Hack_Gameplay_44_Hacked
  self.box_PhoneCommunicationController_30 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_30
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|795799919"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Network_Surfing_Controller_34 = cbox:CreateBox("domino/System/NetworkSurfingController.lua")
  l0 = self.box_Network_Surfing_Controller_34
  l0._graph = self
  l0._name = "box_Network_Surfing_Controller_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|830342111"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_Network_Surfing_Controller_34_Deactivated
  self.box_Multiple_AND_42 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_42
  l0._graph = self
  l0._name = "box_Multiple_AND_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|853928846"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_42_Out
  self.box_PhoneCommunicationController_31 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_31
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|929093383"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_31_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_31_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_PlaySound_v2_57 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_57
  l0._graph = self
  l0._name = "box_PlaySound_v2_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1126906143"
  l0.Out = self.f_box_PlaySound_v2_57_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Teleport_To_SpawnPoint_21 = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self.box_Teleport_To_SpawnPoint_21
  l0._graph = self
  l0._name = "box_Teleport_To_SpawnPoint_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1229788422"
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_box_Teleport_To_SpawnPoint_21_TeleportDone
  self.box_CLOController_60 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_60
  l0._graph = self
  l0._name = "box_CLOController_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1252364856"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = self.f_box_CLOController_60_OnQuit
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_Multiple_AND_13 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_13
  l0._graph = self
  l0._name = "box_Multiple_AND_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1253755861"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_13_Out
  self.box_Multiple_AND_15 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_15
  l0._graph = self
  l0._name = "box_Multiple_AND_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1258866459"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_15_Out
  self.box_Timer_v2_65 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_65
  l0._graph = self
  l0._name = "box_Timer_v2_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1300434155"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_65_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionMessageController_v3_5 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_5
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1339469663"
  l0.Out = self.f_box_MissionMessageController_v3_5_Out
  l0.MessageCompleted = DummyFunction
  self.box_Wait_Qualities_Loaded_64 = cbox:CreateBox("domino/System/WaitQualitiesLoaded.lua")
  l0 = self.box_Wait_Qualities_Loaded_64
  l0._graph = self
  l0._name = "box_Wait_Qualities_Loaded_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1369923622"
  l0.Out = DummyFunction
  l0.Loaded = self.f_box_Wait_Qualities_Loaded_64_Loaded
  self.box_Interact_Gameplay_45 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_45
  l0._graph = self
  l0._name = "box_Interact_Gameplay_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1451101741"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_Interact_Gameplay_45_Stopped
  l0.Interacted = self.f_box_Interact_Gameplay_45_Interacted
  self.box_Timer_v2_28 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_28
  l0._graph = self
  l0._name = "box_Timer_v2_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1466708100"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_28_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Multiple_AND_53 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_53
  l0._graph = self
  l0._name = "box_Multiple_AND_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1483977982"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_53_Out
  self.box_PlaySound_v2_50 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_50
  l0._graph = self
  l0._name = "box_PlaySound_v2_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1515293737"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_SetBoolean_v2_39 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_39
  l0._graph = self
  l0._name = "box_SetBoolean_v2_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1521593543"
  l0.Out = self.f_box_SetBoolean_v2_39_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_39_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_39_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_39_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_39_SetFromBool
  self.box_CLOController_6 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_6
  l0._graph = self
  l0._name = "box_CLOController_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1576592847"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_DistanceBasedProgressBarController_v2_11 = cbox:CreateBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  l0 = self.box_DistanceBasedProgressBarController_v2_11
  l0._graph = self
  l0._name = "box_DistanceBasedProgressBarController_v2_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1650325354"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.WasReset = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = self.f_box_DistanceBasedProgressBarController_v2_11_Completed
  self.box_TriggerMonitor_v2_33 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_33
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1898366853"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TriggerMonitor_v2_33_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_33_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MissionMessageController_v3_10 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_10
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1913666415"
  l0.Out = self.f_box_MissionMessageController_v3_10_Out
  l0.MessageCompleted = DummyFunction
  self.box_MissionZone_37 = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  l0 = self.box_MissionZone_37
  l0._graph = self
  l0._name = "box_MissionZone_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1927811565"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_MissionZone_37_Disabled
  l0.SoftQuitCompleted = DummyFunction
  self.box_PhoneCommunicationController_36 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_36
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1950771600"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_36_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_36_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MultipleOR_3 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_3
  l0._graph = self
  l0._name = "box_MultipleOR_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1978442386"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_3_Out
  self.box_MissionLayer_v2_16 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_16
  l0._graph = self
  l0._name = "box_MissionLayer_v2_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1990068123"
  l0.Loaded = self.f_box_MissionLayer_v2_16_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_Hack_Gameplay_4 = cbox:CreateBox("domino/Library/common/MissionIngredients.Hack_Gameplay.debug.lua")
  l0 = self.box_Hack_Gameplay_4
  l0._graph = self
  l0._name = "box_Hack_Gameplay_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|2113879379"
  l0.Started = self.f_box_Hack_Gameplay_4_Started
  l0.Stopped = self.f_box_Hack_Gameplay_4_Stopped
  l0.Hacked = self.f_box_Hack_Gameplay_4_Hacked
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
  l0 = self.box_SetBoolean_v2_39
  l0.Bool = Globals.S17M010.PlayFromCheckpoint
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|952581317", "952581317", "S17M010_Sitara_Main", "FromCheckPoint", "box_SetBoolean_v2_39.True", self, l0)
  l0:True()
end
function export:In()
  local l0
  l0 = self.box_Teleport_To_SpawnPoint_21
  l0.SpawnPoint = "9223372046882196939"
  l0.UseFadeToBlack = 0
  l0.KeepBlackScreenOnExit = 1
  l0.BinkLoadingScreen = "BinkLoadingScreenDatabase.9223372059809485448"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1901538366", "1901538366", "S17M010_Sitara_Main", "In", "box_Teleport_To_SpawnPoint_21.In", self, l0)
  l0:In()
end
function export:f_box_PhoneCommunicationController_41_StartCommunicationOut()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_19
  l0.Checkpoint = "CheckPoint_0"
  l0 = self.box_PhoneCommunicationController_41
  l1 = self.box_MissionCheckpointReach_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|113975310", "113975310", "S17M010_Sitara_Main", "box_PhoneCommunicationController_41.StartCommunicationOut", "box_MissionCheckpointReach_19.In", l0, l1)
  l1:In()
end
function export:f_box_Change_GraphicKit_Model_On_Player_From_Human_Config_40_Changed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ChangePlayerGkModelFromHumanConfig.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_25
  l0.HackableEntity = self.PlayerEntity
  l0.Hacker = self.PlayerEntity
  l0.OasisProfilerInfo = {
    section = "PROFILER_SPECIFIC.PEOPLE.MISSION.Main_Cast.Sitara",
    item = "",
    id = "4294980205"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1921733464", "1921733464", "S17M010_Sitara_Main", "box_Change_GraphicKit_Model_On_Player_From_Human_Config_40.Changed", "box_HackableController_v2_25.AssignProfile", clone, l0)
  l0:AssignProfile()
end
function export:f_box_SecurityCamController_20_CanExitSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_60
  l0.CLO = "9223372059638308304"
  l0.User = self.Catskills
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1876746826", "1876746826", "S17M010_Sitara_Main", "box_SecurityCamController_20.CanExitSet", "box_CLOController_60.Quit", clone, l0)
  l0:Quit()
end
function export:f_box_S17M010_Sitara_SCR_Main_17_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionZone_9
  l0.MissionArea = "9223372056767358885"
  l0.MissionLayer = "S17M010_Main"
  l0.HardFail = 1
  l0.InstantFailOnExit = 0
  l0 = self.box_S17M010_Sitara_SCR_Main_17
  l1 = self.box_MissionZone_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1703714190", "1703714190", "S17M010_Sitara_Main", "box_S17M010_Sitara_SCR_Main_17.Out", "box_MissionZone_9.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_PhoneCommunicationController_32_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/InventoryController_v2.lua")]
  l0.ItemDB = nil
  l0.ItemCount = nil
  l0.ReturnProjectilesToPlayer = nil
  l0.LoadoutItemListDB = nil
  l0.FullWeaponWheelMode = nil
  l0._graph = self
  l0._name = "box_InventoryController_v2_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1358094761"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = DummyFunction
  l0.Removed = DummyFunction
  l0.Switched = self.f_box_InventoryController_v2_27_Switched
  l0.UnspawnedReleasedProjectiles = DummyFunction
  l0.ItemEquipped = DummyFunction
  l0.WheelActionMapDisabled = DummyFunction
  l0.WheelActionMapEnabled = DummyFunction
  l0 = self.box_PhoneCommunicationController_32
  l1 = Boxes[PathID("domino/System/InventoryController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|381037629", "381037629", "S17M010_Sitara_Main", "box_PhoneCommunicationController_32.OnCommunicationFinished", "box_InventoryController_v2_27.SwitchLocalPlayerInventoryToNormal", l0, l1)
  l1:SwitchLocalPlayerInventoryToNormal()
end
function export:f_box_AI_IOPController_62_IOPKickOutComplete()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|649736290"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_48_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_48_Out_1
  l0 = self.box_AI_IOPController_62
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|493904661", "493904661", "S17M010_Sitara_Main", "box_AI_IOPController_62.IOPKickOutComplete", "box_Ordered_Output_48.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_56_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/InventoryController_v2.lua")]
  l0.ItemDB = nil
  l0.ItemCount = nil
  l0.ReturnProjectilesToPlayer = nil
  l0.LoadoutItemListDB = "ItemInventoryLists.9223372048560598127"
  l0.FullWeaponWheelMode = nil
  l0._graph = self
  l0._name = "box_InventoryController_v2_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|626631720"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = DummyFunction
  l0.Removed = DummyFunction
  l0.Switched = self.f_box_InventoryController_v2_26_Switched
  l0.UnspawnedReleasedProjectiles = DummyFunction
  l0.ItemEquipped = DummyFunction
  l0.WheelActionMapDisabled = DummyFunction
  l0.WheelActionMapEnabled = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1148563440", "1148563440", "S17M010_Sitara_Main", "box_Ordered_Output_56.Out", "box_InventoryController_v2_26.SwitchLocalPlayerInventory", clone, l0)
  l0:SwitchLocalPlayerInventory()
end
function export:f_box_Ordered_Output_56_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_65
  l0.Seconds = 5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1558298401", "1558298401", "S17M010_Sitara_Main", "box_Ordered_Output_56.Out", "box_Timer_v2_65.Start", clone, l0)
  l0:Start()
end
function export:f_box_HackableController_v2_25_ProfileAssigned()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = nil
  l0.OverrideSettings = "UISmartphoneSettingsDB.9223372051906098133"
  l0._graph = self
  l0._name = "box_SmartphoneAppController_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1595230941"
  l0.HiddenSet = DummyFunction
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = DummyFunction
  l0.OverrideActivated = self.f_box_SmartphoneAppController_67_OverrideActivated
  l0.OverrideCleared = DummyFunction
  l0 = self.box_HackableController_v2_25
  l1 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|2065401367", "2065401367", "S17M010_Sitara_Main", "box_HackableController_v2_25.ProfileAssigned", "box_SmartphoneAppController_67.ActivateOverride", l0, l1)
  l1:ActivateOverride()
end
function export:f_box_SmartphoneAppController_63_OverrideCleared()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionZone_37
  l0.MissionArea = "9223372056767358885"
  l0.MissionLayer = "S17M010_Main"
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|451741485", "451741485", "S17M010_Sitara_Main", "box_SmartphoneAppController_63.OverrideCleared", "box_MissionZone_37.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_SetBoolean_v2_47_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_47
  Globals.S17M010_SITARA.EndOfHack = l0.Target
end
function export:f_box_SetBoolean_v2_47_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_47
  Globals.S17M010_SITARA.EndOfHack = l0.Target
end
function export:f_box_SetBoolean_v2_47_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_47
  Globals.S17M010_SITARA.EndOfHack = l0.Target
end
function export:f_box_SetBoolean_v2_47_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_47
  Globals.S17M010_SITARA.EndOfHack = l0.Target
end
function export:f_box_SetBoolean_v2_47_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_47
  Globals.S17M010_SITARA.EndOfHack = l0.Target
end
function export:f_box_Simple_Node_59_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_53()
  l0 = self.box_Multiple_AND_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|755383696", "755383696", "S17M010_Sitara_Main", "box_Simple_Node_59.Out", "box_Multiple_AND_53.Condition", clone, l0)
  l0:Condition(1)
end
function export:f_box_MultipleOR_1_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_28
  l0.Seconds = 0.1
  l0 = self.box_MultipleOR_1
  l1 = self.box_Timer_v2_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|915731832", "915731832", "S17M010_Sitara_Main", "box_MultipleOR_1.Out", "box_Timer_v2_28.Start", l0, l1)
  l1:Start()
end
function export:f_box_MissionMusicController_29_Deactivated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_57
  l0.SoundId = "soundbinary/2286467389.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1613515450", "1613515450", "S17M010_Sitara_Main", "box_MissionMusicController_29.Deactivated", "box_PlaySound_v2_57.Play", clone, l0)
  l0:Play()
end
function export:f_box_InventoryController_v2_26_Switched()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InventoryController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hack_Gameplay_4()
  l0 = self.box_Hack_Gameplay_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|612175992", "612175992", "S17M010_Sitara_Main", "box_InventoryController_v2_26.Switched", "box_Hack_Gameplay_4.Start", clone, l0)
  l0:Start()
end
function export:f_box_CLOController_55_Activated()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_43
  l0.PlayerEntity = self.PlayerEntity
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053490873270"
  l0 = self.box_CLOController_55
  l1 = self.box_PhoneCommunicationController_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|2110765499", "2110765499", "S17M010_Sitara_Main", "box_CLOController_55.Activated", "box_PhoneCommunicationController_43.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_CLOController_55_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_55
  self.Catskills = l0.UserID
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|467261822"
  l0.Out = self.f_box_Simple_Node_59_Out
  l0 = self.box_CLOController_55
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|856995874", "856995874", "S17M010_Sitara_Main", "box_CLOController_55.OnUserInPlace", "box_Simple_Node_59.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_48_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_47
  l0.Bool = Globals.S17M010_SITARA.EndOfHack
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|2102806782", "2102806782", "S17M010_Sitara_Main", "box_Ordered_Output_48.Out", "box_SetBoolean_v2_47.True", clone, l0)
  l0:True()
end
function export:f_box_Ordered_Output_48_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Network_Surfing_Controller_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1165203108", "1165203108", "S17M010_Sitara_Main", "box_Ordered_Output_48.Out", "box_Network_Surfing_Controller_34.Deactivate", clone, l0)
  l0:Deactivate()
end
function export:f_box_MissionZone_9_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_5
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S17.S17M010.Objectives.Objective010",
    item = "Objective",
    id = "353060"
  }
  l0 = self.box_MissionZone_9
  l1 = self.box_MissionMessageController_v3_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1108343081", "1108343081", "S17M010_Sitara_Main", "box_MissionZone_9.Enabled", "box_MissionMessageController_v3_5.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_Get_Player_ID_38_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l1 = self.box_AI_IOPController_62
  l1.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOPController_62
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|578333102", "578333102", "S17M010_Sitara_Main", "box_Get_Player_ID_38.Out", "box_AI_IOPController_62.TriggerIOPDisconnectScreenAndKickOut", clone, l0)
  l0:TriggerIOPDisconnectScreenAndKickOut()
end
function export:f_box_CinematicPrep_66_PreOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s17\\s17m010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1740430981"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_46_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_46_Out_1
  l0 = self.box_CinematicPrep_66
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s17\\s17m010\\s17m010_sitara.domino|@S17M010_Sitara_Main|762930849", "762930849", "S17M010_Sitara_Main", "box_CinematicPrep_66.PreOut", "box_Ordered_Output_46.In", l0, l1)
  l1:In()
end
function export:f_box_MissionCheckpointReach_19_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|378035512"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_56_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_56_Out_1
  l0.Out[2] = DummyFunction
  l0 = self.box_MissionCheckpointReach_19
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|332083995", "332083995", "S17M010_Sitara_Main", "box_MissionCheckpointReach_19.Out", "box_Ordered_Output_56.In", l0, l1)
  l1:In()
end
function export:f_box_Hackable_Monitor_23_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_55
  l0.CLO = "9223372059638308304"
  l0 = self.box_Hackable_Monitor_23
  l1 = self.box_CLOController_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|321964126", "321964126", "S17M010_Sitara_Main", "box_Hackable_Monitor_23.Disabled", "box_CLOController_55.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Hackable_Monitor_23_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Interact_Gameplay_45()
  l0 = self.box_Hackable_Monitor_23
  l1 = self.box_Interact_Gameplay_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|2119875550", "2119875550", "S17M010_Sitara_Main", "box_Hackable_Monitor_23.Enabled", "box_Interact_Gameplay_45.Start", l0, l1)
  l1:Start()
end
function export:f_box_Hackable_Monitor_23_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|920843408"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_22_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_22_Out_1
  l0 = self.box_Hackable_Monitor_23
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|536600085", "536600085", "S17M010_Sitara_Main", "box_Hackable_Monitor_23.HackSuccess", "box_Ordered_Output_22.In", l0, l1)
  l1:In()
end
function export:f_box_Hack_Gameplay_44_Hacked()
  local l0
  self = self._graph
  self:OnEnter_box_Hack_Gameplay_44()
  l0 = self.box_Hack_Gameplay_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|2046209756", "2046209756", "S17M010_Sitara_Main", "box_Hack_Gameplay_44.Hacked", "box_Hack_Gameplay_44.Stop", l0, l0)
  l0:Stop()
end
function export:f_box_Hack_Gameplay_44_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_DistanceBasedProgressBarController_v2_11
  l0.Text = {
    section = "HACKING.HackingRewardProfilerTitle",
    item = "ExposeTraitorIntel",
    id = "251293"
  }
  l0.TotalTime = 30
  l0 = self.box_Hack_Gameplay_44
  l1 = self.box_DistanceBasedProgressBarController_v2_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1165660236", "1165660236", "S17M010_Sitara_Main", "box_Hack_Gameplay_44.Stopped", "box_DistanceBasedProgressBarController_v2_11.Start", l0, l1)
  l1:Start()
end
function export:f_box_TimeScale_Controller_8_Unlocked()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1574781198", "1574781198", "S17M010_Sitara_Main", "box_TimeScale_Controller_8.Unlocked", "SitaraDone", clone, self)
  self:SitaraDone()
end
function export:f_box_Network_Surfing_Controller_34_Deactivated()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_32
  l0.PlayerEntity = self.PlayerEntity
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053490873273"
  l0 = self.box_Network_Surfing_Controller_34
  l1 = self.box_PhoneCommunicationController_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|2068939263", "2068939263", "S17M010_Sitara_Main", "box_Network_Surfing_Controller_34.Deactivated", "box_PhoneCommunicationController_32.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Multiple_AND_42_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Multiple_AND_42
  l1 = self.box_Wait_Qualities_Loaded_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|2087689835", "2087689835", "S17M010_Sitara_Main", "box_Multiple_AND_42.Out", "box_Wait_Qualities_Loaded_64.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_22_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hackable_Monitor_23()
  l0 = self.box_Hackable_Monitor_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|569471517", "569471517", "S17M010_Sitara_Main", "box_Ordered_Output_22.Out", "box_Hackable_Monitor_23.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_22_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_50
  l0.SoundId = "soundbinary/338224551.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1583182820", "1583182820", "S17M010_Sitara_Main", "box_Ordered_Output_22.Out", "box_PlaySound_v2_50.Play", clone, l0)
  l0:Play()
end
function export:f_box_PhoneCommunicationController_31_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_49
  l0.SoundId = "soundbinary/1465087397.bnk"
  l0 = self.box_PhoneCommunicationController_31
  l1 = self.box_PlaySound_v2_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1069471487", "1069471487", "S17M010_Sitara_Main", "box_PhoneCommunicationController_31.OnCommunicationFinished", "box_PlaySound_v2_49.Play", l0, l1)
  l1:Play()
end
function export:f_box_PhoneCommunicationController_31_StartCommunicationOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_23()
  l0 = self.box_PhoneCommunicationController_31
  l1 = self.box_Hackable_Monitor_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1473809657", "1473809657", "S17M010_Sitara_Main", "box_PhoneCommunicationController_31.StartCommunicationOut", "box_Hackable_Monitor_23.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_PlaySound_v2_57_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669167"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|2113142872"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0 = self.box_PlaySound_v2_57
  l1 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1773164887", "1773164887", "S17M010_Sitara_Main", "box_PlaySound_v2_57.Out", "box_MissionMusicController_35.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Teleport_To_SpawnPoint_21_TeleportDone()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1998871421"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_2_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_2_Out_1
  l0 = self.box_Teleport_To_SpawnPoint_21
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|416051629", "416051629", "S17M010_Sitara_Main", "box_Teleport_To_SpawnPoint_21.TeleportDone", "box_Ordered_Output_2.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_60_OnQuit()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|654371195"
  l0.Out = self.f_box_Get_Player_ID_38_Out
  l0 = self.box_CLOController_60
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1991673504", "1991673504", "S17M010_Sitara_Main", "box_CLOController_60.OnQuit", "box_Get_Player_ID_38.In", l0, l1)
  l1:In()
end
function export:f_box_Multiple_AND_13_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = nil
  l0.CameraEntityList = {
    "9223372065000482506",
    "9223372065000482727"
  }
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = 1
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0._name = "box_SecurityCamController_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|173849837"
  l0.EnterSet = DummyFunction
  l0.CanExitSet = self.f_box_SecurityCamController_20_CanExitSet
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = DummyFunction
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
  l0 = self.box_Multiple_AND_13
  l1 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1786092933", "1786092933", "S17M010_Sitara_Main", "box_Multiple_AND_13.Out", "box_SecurityCamController_20.SetCanExit", l0, l1)
  l1:SetCanExit()
end
function export:f_box_Multiple_AND_15_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_6
  l0.CLO = "9223372059638308304"
  l0.User = self.Catskills
  l0 = self.box_Multiple_AND_15
  l1 = self.box_CLOController_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|50391861", "50391861", "S17M010_Sitara_Main", "box_Multiple_AND_15.Out", "box_CLOController_6.TriggerBhv", l0, l1)
  l1:TriggerBhv()
end
function export:f_box_Ordered_Output_18_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_53()
  l0 = self.box_Multiple_AND_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1700217377", "1700217377", "S17M010_Sitara_Main", "box_Ordered_Output_18.Out", "box_Multiple_AND_53.Condition", clone, l0)
  l0:Condition(0)
end
function export:f_box_Ordered_Output_18_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_13()
  l0 = self.box_Multiple_AND_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|306057934", "306057934", "S17M010_Sitara_Main", "box_Ordered_Output_18.Out", "box_Multiple_AND_13.Condition", clone, l0)
  l0:Condition(1)
end
function export:f_box_Timer_v2_65_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = nil
  l0.UseMusicScoreMode = nil
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|617413981"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_MissionMusicController_29_Deactivated
  l0 = self.box_Timer_v2_65
  l1 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1801239366", "1801239366", "S17M010_Sitara_Main", "box_Timer_v2_65.TimeElapsed", "box_MissionMusicController_29.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_MissionMessageController_v3_5_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_41
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372060828743557"
  l0 = self.box_MissionMessageController_v3_5
  l1 = self.box_PhoneCommunicationController_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|864168280", "864168280", "S17M010_Sitara_Main", "box_MissionMessageController_v3_5.Out", "box_PhoneCommunicationController_41.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_InventoryController_v2_27_Switched()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InventoryController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = nil
  l0.OverrideSettings = nil
  l0._graph = self
  l0._name = "box_SmartphoneAppController_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|459890671"
  l0.HiddenSet = DummyFunction
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = DummyFunction
  l0.OverrideActivated = DummyFunction
  l0.OverrideCleared = self.f_box_SmartphoneAppController_63_OverrideCleared
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1241475281", "1241475281", "S17M010_Sitara_Main", "box_InventoryController_v2_27.Switched", "box_SmartphoneAppController_63.ClearOverride", clone, l0)
  l0:ClearOverride()
end
function export:f_box_Wait_Qualities_Loaded_64_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_Wait_Qualities_Loaded_64
  l1 = self.box_S17M010_Sitara_SCR_Main_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1438716446", "1438716446", "S17M010_Sitara_Main", "box_Wait_Qualities_Loaded_64.Loaded", "box_S17M010_Sitara_SCR_Main_17.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_61_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = nil
  l0.CameraEntityList = {
    "9223372065000482506",
    "9223372065000482727"
  }
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = 0
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0._name = "box_SecurityCamController_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1615473241"
  l0.EnterSet = DummyFunction
  l0.CanExitSet = self.f_box_SecurityCamController_14_CanExitSet
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = DummyFunction
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1068097935", "1068097935", "S17M010_Sitara_Main", "box_Ordered_Output_61.Out", "box_SecurityCamController_14.SetCanExit", clone, l0)
  l0:SetCanExit()
end
function export:f_box_Ordered_Output_61_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_15()
  l0 = self.box_Multiple_AND_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1154781922", "1154781922", "S17M010_Sitara_Main", "box_Ordered_Output_61.Out", "box_Multiple_AND_15.Condition", clone, l0)
  l0:Condition(0)
end
function export:f_box_Get_Player_ID_12_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_66
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s17\\s17m010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1383372393", "1383372393", "S17M010_Sitara_Main", "box_Get_Player_ID_12.Out", "box_CinematicPrep_66.PreCinematic", clone, l0)
  l0:PreCinematic()
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1740430981"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_46_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_46_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|178909452", "178909452", "S17M010_Sitara_Main", "box_Get_Player_ID_12.Out", "box_Ordered_Output_46.In", clone, l0)
  l0:In()
end
function export:f_box_Interact_Gameplay_45_Interacted()
  local l0
  self = self._graph
  self:OnEnter_box_Interact_Gameplay_45()
  l0 = self.box_Interact_Gameplay_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1385551740", "1385551740", "S17M010_Sitara_Main", "box_Interact_Gameplay_45.Interacted", "box_Interact_Gameplay_45.Stop", l0, l0)
  l0:Stop()
end
function export:f_box_Interact_Gameplay_45_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_36
  l0.PlayerEntity = self.PlayerEntity
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053490873272"
  l0 = self.box_Interact_Gameplay_45
  l1 = self.box_PhoneCommunicationController_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1096939993", "1096939993", "S17M010_Sitara_Main", "box_Interact_Gameplay_45.Stopped", "box_PhoneCommunicationController_36.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Timer_v2_28_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ChangePlayerGkModelFromHumanConfig.lua")]
  l0.Model = "HumanConfig.9223372049751415851"
  l0.VoiceActorName = "dialogactors.dialogactors.sitara"
  l0._graph = self
  l0._name = "box_Change_GraphicKit_Model_On_Player_From_Human_Config_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|27750775"
  l0.Failed = DummyFunction
  l0.Changed = self.f_box_Change_GraphicKit_Model_On_Player_From_Human_Config_40_Changed
  l0.ResetDone = DummyFunction
  l0 = self.box_Timer_v2_28
  l1 = Boxes[PathID("domino/System/ChangePlayerGkModelFromHumanConfig.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|956160924", "956160924", "S17M010_Sitara_Main", "box_Timer_v2_28.TimeElapsed", "box_Change_GraphicKit_Model_On_Player_From_Human_Config_40.Change", l0, l1)
  l1:Change()
end
function export:f_box_Multiple_AND_53_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_15()
  l0 = self.box_Multiple_AND_53
  l1 = self.box_Multiple_AND_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1508604574", "1508604574", "S17M010_Sitara_Main", "box_Multiple_AND_53.Out", "box_Multiple_AND_15.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_SetBoolean_v2_39_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_39
  Globals.S17M010.PlayFromCheckpoint = l0.Target
end
function export:f_box_SetBoolean_v2_39_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_39
  Globals.S17M010.PlayFromCheckpoint = l0.Target
end
function export:f_box_SetBoolean_v2_39_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_39
  Globals.S17M010.PlayFromCheckpoint = l0.Target
end
function export:f_box_SetBoolean_v2_39_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_39
  Globals.S17M010.PlayFromCheckpoint = l0.Target
  l0 = self.box_MissionLayer_v2_16
  l0.LayerName = "S17M010_Main"
  l0 = self.box_SetBoolean_v2_39
  l1 = self.box_MissionLayer_v2_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|214661511", "214661511", "S17M010_Sitara_Main", "box_SetBoolean_v2_39.SetTrue", "box_MissionLayer_v2_16.Load", l0, l1)
  l1:Load()
end
function export:f_box_SetBoolean_v2_39_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_39
  Globals.S17M010.PlayFromCheckpoint = l0.Target
end
function export:f_box_SmartphoneAppController_67_OverrideActivated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  l0.Hour = self.TimeOfDayHour
  l0.Minute = self.TimeOfDayMinutes
  l0._graph = self
  l0._name = "box_SetTimeOfDay_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1796223857"
  l0.Out = self.f_box_SetTimeOfDay_7_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|353793939", "353793939", "S17M010_Sitara_Main", "box_SmartphoneAppController_67.OverrideActivated", "box_SetTimeOfDay_7.SetTimeOfDay", clone, l0)
  l0:SetTimeOfDay()
end
function export:f_box_SecurityCamController_14_CanExitSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hack_Gameplay_44()
  l0 = self.box_Hack_Gameplay_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|2094450707", "2094450707", "S17M010_Sitara_Main", "box_SecurityCamController_14.CanExitSet", "box_Hack_Gameplay_44.Start", clone, l0)
  l0:Start()
end
function export:f_box_DistanceBasedProgressBarController_v2_11_Completed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_13()
  l0 = self.box_DistanceBasedProgressBarController_v2_11
  l1 = self.box_Multiple_AND_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1120189713", "1120189713", "S17M010_Sitara_Main", "box_DistanceBasedProgressBarController_v2_11.Completed", "box_Multiple_AND_13.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_TimeScale_Controller_24_Locked()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_42()
  l0 = self.box_Multiple_AND_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|719696600", "719696600", "S17M010_Sitara_Main", "box_TimeScale_Controller_24.Locked", "box_Multiple_AND_42.Condition", clone, l0)
  l0:Condition(0)
end
function export:f_box_Ordered_Output_46_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_1()
  l0 = self.box_MultipleOR_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|593435932", "593435932", "S17M010_Sitara_Main", "box_Ordered_Output_46.Out", "box_MultipleOR_1.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_46_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_3()
  l0 = self.box_MultipleOR_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1808358445", "1808358445", "S17M010_Sitara_Main", "box_Ordered_Output_46.Out", "box_MultipleOR_3.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_SetTimeOfDay_7_Out()
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
  l0._name = "box_TimeScale_Controller_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1660475986"
  l0.WasSet = DummyFunction
  l0.WasReset = DummyFunction
  l0.Locked = self.f_box_TimeScale_Controller_24_Locked
  l0.Unlocked = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1413282518", "1413282518", "S17M010_Sitara_Main", "box_SetTimeOfDay_7.Out", "box_TimeScale_Controller_24.Lock", clone, l0)
  l0:Lock()
end
function export:f_box_TriggerMonitor_v2_33_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_30
  l0.PlayerEntity = self.PlayerEntity
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053490873269"
  l0 = self.box_TriggerMonitor_v2_33
  l1 = self.box_PhoneCommunicationController_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1576052652", "1576052652", "S17M010_Sitara_Main", "box_TriggerMonitor_v2_33.Disabled", "box_PhoneCommunicationController_30.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_TriggerMonitor_v2_33_Enter()
  local l0
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_33()
  l0 = self.box_TriggerMonitor_v2_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1393804900", "1393804900", "S17M010_Sitara_Main", "box_TriggerMonitor_v2_33.Enter", "box_TriggerMonitor_v2_33.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_MissionMessageController_v3_10_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1419469826"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_61_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_61_Out_1
  l0 = self.box_MissionMessageController_v3_10
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1620146731", "1620146731", "S17M010_Sitara_Main", "box_MissionMessageController_v3_10.Out", "box_Ordered_Output_61.In", l0, l1)
  l1:In()
end
function export:f_box_MissionZone_37_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  l0.TimeScale = nil
  l0._graph = self
  l0._name = "box_TimeScale_Controller_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|803462280"
  l0.WasSet = DummyFunction
  l0.WasReset = DummyFunction
  l0.Locked = DummyFunction
  l0.Unlocked = self.f_box_TimeScale_Controller_8_Unlocked
  l0.Out = DummyFunction
  l0 = self.box_MissionZone_37
  l1 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1750996270", "1750996270", "S17M010_Sitara_Main", "box_MissionZone_37.Disabled", "box_TimeScale_Controller_8.Unlock", l0, l1)
  l1:Unlock()
end
function export:f_box_PhoneCommunicationController_36_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1281061340"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_18_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_18_Out_1
  l0 = self.box_PhoneCommunicationController_36
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|599070081", "599070081", "S17M010_Sitara_Main", "box_PhoneCommunicationController_36.OnCommunicationFinished", "box_Ordered_Output_18.In", l0, l1)
  l1:In()
end
function export:f_box_PhoneCommunicationController_36_StartCommunicationOut()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_10
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S17.S17M010.Objectives.Objective015",
    item = "Objective",
    id = "688546"
  }
  l0 = self.box_PhoneCommunicationController_36
  l1 = self.box_MissionMessageController_v3_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|992964179", "992964179", "S17M010_Sitara_Main", "box_PhoneCommunicationController_36.StartCommunicationOut", "box_MissionMessageController_v3_10.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_MultipleOR_3_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_42()
  l0 = self.box_MultipleOR_3
  l1 = self.box_Multiple_AND_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|19653052", "19653052", "S17M010_Sitara_Main", "box_MultipleOR_3.Out", "box_Multiple_AND_42.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_MissionLayer_v2_16_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1423125298"
  l0.Out = self.f_box_Get_Player_ID_12_Out
  l0 = self.box_MissionLayer_v2_16
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1620169338", "1620169338", "S17M010_Sitara_Main", "box_MissionLayer_v2_16.Loaded", "box_Get_Player_ID_12.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_2_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_1()
  l0 = self.box_MultipleOR_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1647499530", "1647499530", "S17M010_Sitara_Main", "box_Ordered_Output_2.Out", "box_MultipleOR_1.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_2_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_3()
  l0 = self.box_MultipleOR_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|2112457313", "2112457313", "S17M010_Sitara_Main", "box_Ordered_Output_2.Out", "box_MultipleOR_3.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Hack_Gameplay_4_Hacked()
  local l0
  self = self._graph
  self:OnEnter_box_Hack_Gameplay_4()
  l0 = self.box_Hack_Gameplay_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|916242729", "916242729", "S17M010_Sitara_Main", "box_Hack_Gameplay_4.Hacked", "box_Hack_Gameplay_4.Stop", l0, l0)
  l0:Stop()
end
function export:f_box_Hack_Gameplay_4_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_33()
  l0 = self.box_Hack_Gameplay_4
  l1 = self.box_TriggerMonitor_v2_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|1837836885", "1837836885", "S17M010_Sitara_Main", "box_Hack_Gameplay_4.Started", "box_TriggerMonitor_v2_33.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Hack_Gameplay_4_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_31
  l0.PlayerEntity = self.PlayerEntity
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053490873271"
  l0 = self.box_Hack_Gameplay_4
  l1 = self.box_PhoneCommunicationController_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara.domino|@S17M010_Sitara_Main|46172015", "46172015", "S17M010_Sitara_Main", "box_Hack_Gameplay_4.Stopped", "box_PhoneCommunicationController_31.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:OnEnter_box_MultipleOR_1()
end
function export:OnEnter_box_Hackable_Monitor_23()
  local l0
  l0 = self.box_Hackable_Monitor_23
  l0.HackableEntity = "9223372047626801393"
end
function export:OnEnter_box_Hack_Gameplay_44()
  local l0
  l0 = self.box_Hack_Gameplay_44
  l0.Entity = "9223372049321186776"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0.DisplayObjectiveDistance = 1
end
function export:OnEnter_box_Multiple_AND_42()
end
function export:OnEnter_box_Multiple_AND_13()
end
function export:OnEnter_box_Multiple_AND_15()
end
function export:OnEnter_box_Interact_Gameplay_45()
  local l0
  l0 = self.box_Interact_Gameplay_45
  l0.Entity = "9223372053490722538"
  l0.IsManagingInteraction = 1
end
function export:OnEnter_box_Multiple_AND_53()
end
function export:OnEnter_box_TriggerMonitor_v2_33()
  local l0
  l0 = self.box_TriggerMonitor_v2_33
  l0.Trigger = "9223372055689543365"
end
function export:OnEnter_box_MultipleOR_3()
end
function export:OnEnter_box_Hack_Gameplay_4()
  local l0
  l0 = self.box_Hack_Gameplay_4
  l0.Entity = "9223372047626801411"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0.DisplayObjectiveDistance = 1
end
function export:SitaraDone()
end
function export:Out()
end
_compilerVersion = 4
