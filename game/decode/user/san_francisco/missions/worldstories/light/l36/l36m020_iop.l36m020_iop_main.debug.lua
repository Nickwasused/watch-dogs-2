export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/IOPController.lua")
  cbox:RegisterBox("domino/System/Bind_v2.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/Library/common/IOP.IOP_CleanUp.debug.lua")
  cbox:RegisterBox("domino/Library/common/IOP.IOP_StartUp.debug.lua")
  cbox:RegisterBox("domino/System/IOPMonitor.lua")
  cbox:RegisterBox("domino/System/IOPPropMonitor.lua")
  cbox:RegisterBox("domino/System/LightController.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/SecurityCameraMonitor.lua")
  cbox:RegisterBox("domino/System/SecurityCamController.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
  cbox:LoadResource("soundbinary/2422823228.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/4006058457.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1167814481.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3661462182.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2375199940.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3973683875.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1392244399.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "L36M020_IOP_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main"
  self.PlayerEntity = nil
  self.Cameras = {}
  self.MainCharacter = nil
  self.Neighbor = nil
  self.Krowski = nil
  self.DedSecScreens = {}
  self.SecurityCameraList = {}
  self.box_MissionController_v4_36 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_36
  l0._graph = self
  l0._name = "box_MissionController_v4_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|78844107"
  self.box_HackableController_v2_62 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_62
  l0._graph = self
  l0._name = "box_HackableController_v2_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|233389836"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_62_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_HackableController_v2_25 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_25
  l0._graph = self
  l0._name = "box_HackableController_v2_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|254232646"
  l0.Enabled = self.f_box_HackableController_v2_25_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_PlaySound_v2_44 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_44
  l0._graph = self
  l0._name = "box_PlaySound_v2_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|273259390"
  l0.Out = self.f_box_PlaySound_v2_44_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_10 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_10
  l0._graph = self
  l0._name = "box_PlaySound_v2_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|304453219"
  l0.Out = DummyFunction
  l0.Started = self.f_box_PlaySound_v2_10_Started
  l0.Finished = DummyFunction
  self.box_IOP_CleanUp_6 = cbox:CreateBox("domino/Library/common/IOP.IOP_CleanUp.debug.lua")
  l0 = self.box_IOP_CleanUp_6
  l0._graph = self
  l0._name = "box_IOP_CleanUp_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|329506903"
  l0.Completed = self.f_box_IOP_CleanUp_6_Completed
  l0.DisconnectedAnimationPlayed = self.f_box_IOP_CleanUp_6_DisconnectedAnimationPlayed
  l0.Out = DummyFunction
  self.box_AI_IOPController_3 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_3
  l0._graph = self
  l0._name = "box_AI_IOPController_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|375374616"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_3_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_Timer_v2_73 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_73
  l0._graph = self
  l0._name = "box_Timer_v2_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|381988724"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_73_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_AI_IOPController_42 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_42
  l0._graph = self
  l0._name = "box_AI_IOPController_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|511601978"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_42_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_PhoneCommunicationController_28 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_28
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|601289239"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_28_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MultipleOR_37 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_37
  l0._graph = self
  l0._name = "box_MultipleOR_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|616040877"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_37_Out
  self.box_Timer_v2_77 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_77
  l0._graph = self
  l0._name = "box_Timer_v2_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|694316092"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_77_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_11 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_11
  l0._graph = self
  l0._name = "box_Timer_v2_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|706846925"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_11_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Security_Camera_Monitor_76 = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self.box_Security_Camera_Monitor_76
  l0._graph = self
  l0._name = "box_Security_Camera_Monitor_76"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|724272603"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Security_Camera_Monitor_76_Disabled
  l0.OnStartAccessCamera = DummyFunction
  l0.OnEndAccessCamera = self.f_box_Security_Camera_Monitor_76_OnEndAccessCamera
  l0.OnStartExitCamera = DummyFunction
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self.box_CinematicPrep_51 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_51
  l0._graph = self
  l0._name = "box_CinematicPrep_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|794847286"
  l0.PreOut = DummyFunction
  l0.PostOut = DummyFunction
  self.box_CLOController_13 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_13
  l0._graph = self
  l0._name = "box_CLOController_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|810411640"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_13_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_Timer_v2_57 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_57
  l0._graph = self
  l0._name = "box_Timer_v2_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|837505220"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_57_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_34 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_34
  l0._graph = self
  l0._name = "box_PlaySound_v2_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|848838151"
  l0.Out = self.f_box_PlaySound_v2_34_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_53 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_53
  l0._graph = self
  l0._name = "box_PlaySound_v2_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|853593070"
  l0.Out = self.f_box_PlaySound_v2_53_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Timer_v2_24 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_24
  l0._graph = self
  l0._name = "box_Timer_v2_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|855964072"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_24_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_HackableController_v2_40 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_40
  l0._graph = self
  l0._name = "box_HackableController_v2_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|908923466"
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
  self.box_PlaySound_v2_21 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_21
  l0._graph = self
  l0._name = "box_PlaySound_v2_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|979055363"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_ListWriter_23 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_23
  l0._graph = self
  l0._name = "box_ListWriter_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|979531542"
  l0._DynamicAnchors = {Data = 3}
  l0.Added = self.f_box_ListWriter_23_Added
  l0.Removed = self.f_box_ListWriter_23_Removed
  l0.Out = self.f_box_ListWriter_23_Out
  self.box_DistanceBasedProgressBarController_v2_20 = cbox:CreateBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  l0 = self.box_DistanceBasedProgressBarController_v2_20
  l0._graph = self
  l0._name = "box_DistanceBasedProgressBarController_v2_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1040836263"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.WasReset = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = DummyFunction
  self.box_DistanceBasedProgressBarController_v2_30 = cbox:CreateBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  l0 = self.box_DistanceBasedProgressBarController_v2_30
  l0._graph = self
  l0._name = "box_DistanceBasedProgressBarController_v2_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1059356465"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.WasReset = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = DummyFunction
  self.box_HackableController_v2_39 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_39
  l0._graph = self
  l0._name = "box_HackableController_v2_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1093430070"
  l0.Enabled = self.f_box_HackableController_v2_39_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Hackable_Monitor_26 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_26
  l0._graph = self
  l0._name = "box_Hackable_Monitor_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1138279678"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_26_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_Hackable_Monitor_4 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_4
  l0._graph = self
  l0._name = "box_Hackable_Monitor_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1149407900"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_4_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_MissionMessageController_v3_38 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_38
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1298527024"
  l0.Out = self.f_box_MissionMessageController_v3_38_Out
  l0.MessageCompleted = DummyFunction
  self.box_CLOController_14 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_14
  l0._graph = self
  l0._name = "box_CLOController_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1314558766"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_14_OnUserInPlace
  self.box_HackableController_v2_58 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_58
  l0._graph = self
  l0._name = "box_HackableController_v2_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1325325431"
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
  self.box_Timer_v2_75 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_75
  l0._graph = self
  l0._name = "box_Timer_v2_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1399995292"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_75_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_74 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_74
  l0._graph = self
  l0._name = "box_Timer_v2_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1419588337"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_74_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Multiple_AND_5 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_5
  l0._graph = self
  l0._name = "box_Multiple_AND_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1432243431"
  l0._DynamicAnchors = {Condition = 3}
  l0.Out = self.f_box_Multiple_AND_5_Out
  self.box_PhoneCommunicationController_49 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_49
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1453681251"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = self.f_box_PhoneCommunicationController_49_Out
  self.box_IOPPropMonitor_47 = cbox:CreateBox("domino/System/IOPPropMonitor.lua")
  l0 = self.box_IOPPropMonitor_47
  l0._graph = self
  l0._name = "box_IOPPropMonitor_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1470885475"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.PropSpawned = self.f_box_IOPPropMonitor_47_PropSpawned
  self.box_IOPMonitor_32 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_32
  l0._graph = self
  l0._name = "box_IOPMonitor_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1538977878"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_box_IOPMonitor_32_EventOccurred
  l0.Out = DummyFunction
  self.box_IOP_StartUp_7 = cbox:CreateBox("domino/Library/common/IOP.IOP_StartUp.debug.lua")
  l0 = self.box_IOP_StartUp_7
  l0._graph = self
  l0._name = "box_IOP_StartUp_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1571271542"
  l0.Out = self.f_box_IOP_StartUp_7_Out
  self.box_PlaySound_v2_35 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_35
  l0._graph = self
  l0._name = "box_PlaySound_v2_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1573016098"
  l0.Out = self.f_box_PlaySound_v2_35_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_HackableController_v2_50 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_50
  l0._graph = self
  l0._name = "box_HackableController_v2_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1608390483"
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
  self.box_Timer_v2_45 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_45
  l0._graph = self
  l0._name = "box_Timer_v2_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1640068917"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_45_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Hackable_Monitor_19 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_19
  l0._graph = self
  l0._name = "box_Hackable_Monitor_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1689320489"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Hackable_Monitor_19_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_19_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_HackableController_v2_63 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_63
  l0._graph = self
  l0._name = "box_HackableController_v2_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1697189967"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_63_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_IOPMonitor_12 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_12
  l0._graph = self
  l0._name = "box_IOPMonitor_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1722827479"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = self.f_box_IOPMonitor_12_IOPComplete
  l0.EventOccurred = DummyFunction
  l0.Out = DummyFunction
  self.box_HackableController_v2_59 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_59
  l0._graph = self
  l0._name = "box_HackableController_v2_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1725691013"
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
  self.box_PlaySound_v2_1 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_1
  l0._graph = self
  l0._name = "box_PlaySound_v2_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1807668207"
  l0.Out = DummyFunction
  l0.Started = self.f_box_PlaySound_v2_1_Started
  l0.Finished = DummyFunction
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1830739996"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_2_Unloaded
  l0.Reseted = DummyFunction
  self.box_AI_IOPController_27 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_27
  l0._graph = self
  l0._name = "box_AI_IOPController_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1863001475"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_HackableController_v2_54 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_54
  l0._graph = self
  l0._name = "box_HackableController_v2_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1863947108"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = self.f_box_HackableController_v2_54_ProfilingEnabled
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_DistanceBasedProgressBarController_v2_15 = cbox:CreateBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  l0 = self.box_DistanceBasedProgressBarController_v2_15
  l0._graph = self
  l0._name = "box_DistanceBasedProgressBarController_v2_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1950069880"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.WasReset = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = DummyFunction
  self.box_CLOController_8 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_8
  l0._graph = self
  l0._name = "box_CLOController_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|2062878543"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_AI_IOPController_22 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_22
  l0._graph = self
  l0._name = "box_AI_IOPController_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|2144794878"
  l0.Out = DummyFunction
  l0.StartCompleted = self.f_box_AI_IOPController_22_StartCompleted
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
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
  self:OnEnter_box_MultipleOR_37()
  l0 = self.box_MultipleOR_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|2065755169", "2065755169", "L36M020_IOP_Main", "CheckPoint_0", "box_MultipleOR_37.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_37()
  l0 = self.box_MultipleOR_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1041229594", "1041229594", "L36M020_IOP_Main", "In", "box_MultipleOR_37.Input", self, l0)
  l0:Input(0)
end
function export:f_box_VisibilityController_v2_67_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_78"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|2130924549"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_78_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_78_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1416062654", "1416062654", "L36M020_IOP_Main", "box_VisibilityController_v2_67.Shown", "box_Ordered_Output_78.In", clone, l0)
  l0:In()
end
function export:f_box_HackableController_v2_62_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VisibilityController_v2_67()
  l0 = self.box_HackableController_v2_62
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1552766629", "1552766629", "L36M020_IOP_Main", "box_HackableController_v2_62.Disabled", "box_VisibilityController_v2_67.Show", l0, l1)
  l1:Show()
end
function export:f_box_VisibilityController_v2_69_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_79"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1907930867"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_79_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_79_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1750785872", "1750785872", "L36M020_IOP_Main", "box_VisibilityController_v2_69.Shown", "box_Ordered_Output_79.In", clone, l0)
  l0:In()
end
function export:f_box_HackableController_v2_25_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|635874409"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_43_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_43_Out_1
  l0 = self.box_HackableController_v2_25
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1826751258", "1826751258", "L36M020_IOP_Main", "box_HackableController_v2_25.Enabled", "box_Ordered_Output_43.In", l0, l1)
  l1:In()
end
function export:f_box_PlaySound_v2_44_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_21
  l0.Entity = "9223372058622423046"
  l0.SoundId = "soundbinary/3661462182.bnk"
  l0 = self.box_PlaySound_v2_44
  l1 = self.box_PlaySound_v2_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1854718318", "1854718318", "L36M020_IOP_Main", "box_PlaySound_v2_44.Out", "box_PlaySound_v2_21.Play", l0, l1)
  l1:Play()
end
function export:f_box_Ordered_Output_48_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_45
  l0.Seconds = 1.5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1828899607", "1828899607", "L36M020_IOP_Main", "box_Ordered_Output_48.Out", "box_Timer_v2_45.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_48_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_23
  l0.Input = self.DedSecScreens
  l0.Data[0] = "9223372060145352378"
  l0.Data[1] = "9223372060145352380"
  l0.Data[2] = "9223372060145352382"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|188598156", "188598156", "L36M020_IOP_Main", "box_Ordered_Output_48.Out", "box_ListWriter_23.Add", clone, l0)
  l0:Add()
end
function export:f_box_PlaySound_v2_10_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_49
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050495846439"
  l0 = self.box_PlaySound_v2_10
  l1 = self.box_PhoneCommunicationController_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1070267088", "1070267088", "L36M020_IOP_Main", "box_PlaySound_v2_10.Started", "box_PhoneCommunicationController_49.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_IOP_CleanUp_6_Completed()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_11
  l0.Seconds = 1
  l0 = self.box_IOP_CleanUp_6
  l1 = self.box_Timer_v2_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1145891614", "1145891614", "L36M020_IOP_Main", "box_IOP_CleanUp_6.Completed", "box_Timer_v2_11.Start", l0, l1)
  l1:Start()
end
function export:f_box_IOP_CleanUp_6_DisconnectedAnimationPlayed()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_13
  l0.User = self.Krowski
  l0 = self.box_IOP_CleanUp_6
  l1 = self.box_CLOController_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|839658746", "839658746", "L36M020_IOP_Main", "box_IOP_CleanUp_6.DisconnectedAnimationPlayed", "box_CLOController_13.UnspawnUser", l0, l1)
  l1:UnspawnUser()
end
function export:f_box_Ordered_Output_52_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Security_Camera_Monitor_76()
  l0 = self.box_Security_Camera_Monitor_76
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1156552253", "1156552253", "L36M020_IOP_Main", "box_Ordered_Output_52.Out", "box_Security_Camera_Monitor_76.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_52_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1543559783"
  l0._DynamicAnchors = {Out = 7}
  l0.Out[0] = self.f_box_Ordered_Output_16_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_16_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_16_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_16_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_16_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_16_Out_5
  l0.Out[6] = self.f_box_Ordered_Output_16_Out_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|793605483", "793605483", "L36M020_IOP_Main", "box_Ordered_Output_52.Out", "box_Ordered_Output_16.In", clone, l0)
  l0:In()
end
function export:f_box_AI_IOPController_3_SendEventCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|2104730264"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_61_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_61_Out_1
  l0 = self.box_AI_IOPController_3
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1245644456", "1245644456", "L36M020_IOP_Main", "box_AI_IOPController_3.SendEventCompleted", "box_Ordered_Output_61.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_73_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|758849396"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_68_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_68_Out_1
  l0 = self.box_Timer_v2_73
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1954315808", "1954315808", "L36M020_IOP_Main", "box_Timer_v2_73.TimeElapsed", "box_Ordered_Output_68.In", l0, l1)
  l1:In()
end
function export:f_box_SecurityCamController_17_CanExitSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|340080978"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_52_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_52_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1677997664", "1677997664", "L36M020_IOP_Main", "box_SecurityCamController_17.CanExitSet", "box_Ordered_Output_52.In", clone, l0)
  l0:In()
end
function export:f_box_SecurityCamController_17_EnterForced()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SecurityCamController_17()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1566715083", "1566715083", "L36M020_IOP_Main", "box_SecurityCamController_17.EnterForced", "box_SecurityCamController_17.SetCanExit", clone, l0)
  l0:SetCanExit()
end
function export:f_box_AI_IOPController_42_SendEventCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_24
  l0.Seconds = 10.5
  l0 = self.box_AI_IOPController_42
  l1 = self.box_Timer_v2_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|2063661476", "2063661476", "L36M020_IOP_Main", "box_AI_IOPController_42.SendEventCompleted", "box_Timer_v2_24.Start", l0, l1)
  l1:Start()
end
function export:f_box_PhoneCommunicationController_28_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1105350897"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_46_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_46_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_46_Out_2
  l0 = self.box_PhoneCommunicationController_28
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1274311011", "1274311011", "L36M020_IOP_Main", "box_PhoneCommunicationController_28.OnCommunicationFinished", "box_Ordered_Output_46.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_37_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|802220643"
  l0.Out = self.f_box_Get_Player_ID_18_Out
  l0 = self.box_MultipleOR_37
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|339494490", "339494490", "L36M020_IOP_Main", "box_MultipleOR_37.Out", "box_Get_Player_ID_18.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_43_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hackable_Monitor_19()
  l0 = self.box_Hackable_Monitor_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1406402337", "1406402337", "L36M020_IOP_Main", "box_Ordered_Output_43.Out", "box_Hackable_Monitor_19.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_43_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_50
  l0.HackableEntity = self.Krowski
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1207643543", "1207643543", "L36M020_IOP_Main", "box_Ordered_Output_43.Out", "box_HackableController_v2_50.DisableProfiling", clone, l0)
  l0:DisableProfiling()
end
function export:f_box_Timer_v2_77_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_51
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_Timer_v2_77
  l1 = self.box_CinematicPrep_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|838992673", "838992673", "L36M020_IOP_Main", "box_Timer_v2_77.TimeElapsed", "box_CinematicPrep_51.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_Timer_v2_11_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_10
  l0.SoundId = "soundbinary/2422823228.bnk"
  l0 = self.box_Timer_v2_11
  l1 = self.box_PlaySound_v2_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|828779709", "828779709", "L36M020_IOP_Main", "box_Timer_v2_11.TimeElapsed", "box_PlaySound_v2_10.Play", l0, l1)
  l1:Play()
end
function export:f_box_Security_Camera_Monitor_76_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_77
  l0.Seconds = 0.5
  l0 = self.box_Security_Camera_Monitor_76
  l1 = self.box_Timer_v2_77
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|77672184", "77672184", "L36M020_IOP_Main", "box_Security_Camera_Monitor_76.Disabled", "box_Timer_v2_77.Start", l0, l1)
  l1:Start()
end
function export:f_box_Security_Camera_Monitor_76_OnEndAccessCamera()
  local l0
  self = self._graph
  self:OnEnter_box_Security_Camera_Monitor_76()
  l0 = self.box_Security_Camera_Monitor_76
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1326467382", "1326467382", "L36M020_IOP_Main", "box_Security_Camera_Monitor_76.OnEndAccessCamera", "box_Security_Camera_Monitor_76.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_80_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_DistanceBasedProgressBarController_v2_20
  l0.Text = {
    section = "HACKING.Interface Messages",
    item = "HackingCellPhone",
    id = "111151"
  }
  l0.TotalTime = 2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1938945631", "1938945631", "L36M020_IOP_Main", "box_Ordered_Output_80.Out", "box_DistanceBasedProgressBarController_v2_20.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_80_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_75
  l0.Seconds = 2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|2063713450", "2063713450", "L36M020_IOP_Main", "box_Ordered_Output_80.Out", "box_Timer_v2_75.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_68_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_5()
  l0 = self.box_Multiple_AND_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|152421605", "152421605", "L36M020_IOP_Main", "box_Ordered_Output_68.Out", "box_Multiple_AND_5.Condition", clone, l0)
  l0:Condition(0)
end
function export:f_box_Ordered_Output_68_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VisibilityController_v2_67()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|2096345791", "2096345791", "L36M020_IOP_Main", "box_Ordered_Output_68.Out", "box_VisibilityController_v2_67.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Get_Player_ID_18_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOP_StartUp_7
  l0.MainLayer = "L36M020_Main_IOP"
  l0.CheckPoint = "CheckPoint_0"
  l0.CinemaZone = "9223372057880995960"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|179075704", "179075704", "L36M020_IOP_Main", "box_Get_Player_ID_18.Out", "box_IOP_StartUp_7.In", clone, l0)
  l0:In()
end
function export:f_box_CLOController_13_UnspawnedUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_8
  l0.CLO = "9223372056381150877"
  l0 = self.box_CLOController_13
  l1 = self.box_CLOController_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|2048983099", "2048983099", "L36M020_IOP_Main", "box_CLOController_13.UnspawnedUser", "box_CLOController_8.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_Timer_v2_57_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|2122962312"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_60_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_60_Out_1
  l0 = self.box_Timer_v2_57
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|889999672", "889999672", "L36M020_IOP_Main", "box_Timer_v2_57.TimeElapsed", "box_Ordered_Output_60.In", l0, l1)
  l1:In()
end
function export:f_box_PlaySound_v2_34_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372058622423048"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|888799313"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = self.f_box_LightController_33_Out
  l0 = self.box_PlaySound_v2_34
  l1 = Boxes[PathID("domino/System/LightController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1480002249", "1480002249", "L36M020_IOP_Main", "box_PlaySound_v2_34.Out", "box_LightController_33.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_PlaySound_v2_53_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|749261666"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_80_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_80_Out_1
  l0 = self.box_PlaySound_v2_53
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|96418329", "96418329", "L36M020_IOP_Main", "box_PlaySound_v2_53.Out", "box_Ordered_Output_80.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_24_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_25()
  l0 = self.box_Timer_v2_24
  l1 = self.box_HackableController_v2_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1395124135", "1395124135", "L36M020_IOP_Main", "box_Timer_v2_24.TimeElapsed", "box_HackableController_v2_25.EnableHack", l0, l1)
  l1:EnableHack()
end
function export:f_box_LightController_33_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.DedSecScreens
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|932419958"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|669853885", "669853885", "L36M020_IOP_Main", "box_LightController_33.Out", "box_VisibilityController_v2_29.Show", clone, l0)
  l0:Show()
end
function export:f_box_VisibilityController_v2_64_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372069921001981"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1992274269"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = self.f_box_VisibilityController_v2_65_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|637316455", "637316455", "L36M020_IOP_Main", "box_VisibilityController_v2_64.Out", "box_VisibilityController_v2_65.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_ListWriter_23_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_23
  self.DedSecScreens = l0.Target
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.DedSecScreens
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1983596906"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = self.f_box_VisibilityController_v2_9_Out
  l0 = self.box_ListWriter_23
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1084302758", "1084302758", "L36M020_IOP_Main", "box_ListWriter_23.Added", "box_VisibilityController_v2_9.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_ListWriter_23_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_23
  self.DedSecScreens = l0.Target
end
function export:f_box_ListWriter_23_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_23
  self.DedSecScreens = l0.Target
end
function export:f_box_Ordered_Output_55_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  DrawTextToScreen("Comment: Stop BG Music", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlaySound_v2')-- Comment: Stop BG Music")
  l0 = self.box_PlaySound_v2_53
  l0.Entity = "9223372058622423046"
  l0.SoundId = "soundbinary/2375199940.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|946686723", "946686723", "L36M020_IOP_Main", "box_Ordered_Output_55.Out", "box_PlaySound_v2_53.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_55_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_54
  l0.HackableEntity = self.Krowski
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|32127246", "32127246", "L36M020_IOP_Main", "box_Ordered_Output_55.Out", "box_HackableController_v2_54.EnableProfiling", clone, l0)
  l0:EnableProfiling()
end
function export:f_box_Ordered_Output_55_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_25()
  l0 = self.box_HackableController_v2_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|93782112", "93782112", "L36M020_IOP_Main", "box_Ordered_Output_55.Out", "box_HackableController_v2_25.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_Ordered_Output_55_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VisibilityController_v2_56()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|508412058", "508412058", "L36M020_IOP_Main", "box_Ordered_Output_55.Out", "box_VisibilityController_v2_56.Show", clone, l0)
  l0:Show()
end
function export:f_box_HackableController_v2_39_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_40
  l0.HackableEntity = "9223372056701611940"
  l0 = self.box_HackableController_v2_39
  l1 = self.box_HackableController_v2_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|88759007", "88759007", "L36M020_IOP_Main", "box_HackableController_v2_39.Enabled", "box_HackableController_v2_40.EnableHack", l0, l1)
  l1:EnableHack()
end
function export:f_box_Ordered_Output_46_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOPPropMonitor_47
  l0.PropName = "cell_phone_01"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1035130589", "1035130589", "L36M020_IOP_Main", "box_Ordered_Output_46.Out", "box_IOPPropMonitor_47.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_46_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_39
  l0.HackableEntity = "9223372056701611942"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1634210983", "1634210983", "L36M020_IOP_Main", "box_Ordered_Output_46.Out", "box_HackableController_v2_39.EnableHack", clone, l0)
  l0:EnableHack()
end
function export:f_box_Ordered_Output_46_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOPController_42
  l0.IopID = "HighPrice"
  l0.IopEvent = "Generic.TeamSpeakEnded"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1053021740", "1053021740", "L36M020_IOP_Main", "box_Ordered_Output_46.Out", "box_AI_IOPController_42.SendEvent", clone, l0)
  l0:SendEvent()
end
function export:f_box_Hackable_Monitor_26_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_62
  l0.HackableEntity = "9223372056701611942"
  l0.ProfileLinkedToHack = 1
  l0 = self.box_Hackable_Monitor_26
  l1 = self.box_HackableController_v2_62
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|799178340", "799178340", "L36M020_IOP_Main", "box_Hackable_Monitor_26.HackSuccess", "box_HackableController_v2_62.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_Hackable_Monitor_4_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_63
  l0.HackableEntity = "9223372056701611940"
  l0.ProfileLinkedToHack = 1
  l0 = self.box_Hackable_Monitor_4
  l1 = self.box_HackableController_v2_63
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|224021777", "224021777", "L36M020_IOP_Main", "box_Hackable_Monitor_4.HackSuccess", "box_HackableController_v2_63.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_MissionMessageController_v3_38_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_1
  l0.SoundId = "soundbinary/3973683875.bnk"
  l0 = self.box_MissionMessageController_v3_38
  l1 = self.box_PlaySound_v2_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1276043014", "1276043014", "L36M020_IOP_Main", "box_MissionMessageController_v3_38.Out", "box_PlaySound_v2_1.Play", l0, l1)
  l1:Play()
end
function export:f_box_CLOController_14_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_14
  self.Krowski = l0.UserID
  l0 = self.box_AI_IOPController_22
  l0.IopID = "HighPrice"
  l0.PlayerEntity = self.PlayerEntity
  l0.NpcEntity = self.Krowski
  l0.IopRole = "HighPrice.Guy"
  l0 = self.box_CLOController_14
  l1 = self.box_AI_IOPController_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1678806765", "1678806765", "L36M020_IOP_Main", "box_CLOController_14.OnUserInPlace", "box_AI_IOPController_22.Start", l0, l1)
  l1:Start()
end
function export:f_box_Bind_v2_41_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VisibilityController_v2_56()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1869160792", "1869160792", "L36M020_IOP_Main", "box_Bind_v2_41.Out", "box_VisibilityController_v2_56.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Timer_v2_75_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_3
  l0.IopID = "HighPrice"
  l0.IopEvent = "HighPrice.PhoneHack"
  l0 = self.box_Timer_v2_75
  l1 = self.box_AI_IOPController_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|2032670309", "2032670309", "L36M020_IOP_Main", "box_Timer_v2_75.TimeElapsed", "box_AI_IOPController_3.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_Timer_v2_74_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1742629041"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_71_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_71_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_71_Out_2
  l0 = self.box_Timer_v2_74
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1472132364", "1472132364", "L36M020_IOP_Main", "box_Timer_v2_74.TimeElapsed", "box_Ordered_Output_71.In", l0, l1)
  l1:In()
end
function export:f_box_Multiple_AND_5_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_27
  l0.IopID = "HighPrice"
  l0.IopEvent = "HighPrice.AllHacksEnd"
  l0 = self.box_Multiple_AND_5
  l1 = self.box_AI_IOPController_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1588785294", "1588785294", "L36M020_IOP_Main", "box_Multiple_AND_5.Out", "box_AI_IOPController_27.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_PhoneCommunicationController_49_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "L36M020_Main_IOP"
  l0 = self.box_PhoneCommunicationController_49
  l1 = self.box_MissionLayer_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1993166179", "1993166179", "L36M020_IOP_Main", "box_PhoneCommunicationController_49.Out", "box_MissionLayer_v2_2.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_IOPPropMonitor_47_PropSpawned()
  local l0, l1
  self = self._graph
  l0 = self.box_IOPPropMonitor_47
  l1 = Boxes[PathID("domino/System/Bind_v2.lua")]
  l1.Parent = l0.PropEntity
  l1.Child = "9223372056381150879"
  l1.BoneName = nil
  l1.BoneNameStr = "cell_phone_01"
  l1.RemoveOffset = 1
  l1._graph = self
  l1._name = "box_Bind_v2_41"
  l1._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1375064037"
  l1.Bound = DummyFunction
  l1.UnBound = DummyFunction
  l1.Out = self.f_box_Bind_v2_41_Out
  l0 = self.box_IOPPropMonitor_47
  l1 = Boxes[PathID("domino/System/Bind_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1271175119", "1271175119", "L36M020_IOP_Main", "box_IOPPropMonitor_47.PropSpawned", "box_Bind_v2_41.Bind", l0, l1)
  l1:Bind()
end
function export:f_box_IOPMonitor_32_EventOccurred()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_34
  l0.Entity = "9223372058622423046"
  l0.SoundId = "soundbinary/1392244399.bnk"
  l0 = self.box_IOPMonitor_32
  l1 = self.box_PlaySound_v2_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|747045492", "747045492", "L36M020_IOP_Main", "box_IOPMonitor_32.EventOccurred", "box_PlaySound_v2_34.Play", l0, l1)
  l1:Play()
end
function export:f_box_Ordered_Output_16_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_28
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357373740"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|211674436", "211674436", "L36M020_IOP_Main", "box_Ordered_Output_16.Out", "box_PhoneCommunicationController_28.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_Ordered_Output_16_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_26
  l0.HackableEntity = "9223372056701611942"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1280230252", "1280230252", "L36M020_IOP_Main", "box_Ordered_Output_16.Out", "box_Hackable_Monitor_26.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_16_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_4
  l0.HackableEntity = "9223372056701611940"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|370730786", "370730786", "L36M020_IOP_Main", "box_Ordered_Output_16.Out", "box_Hackable_Monitor_4.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_16_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOPMonitor_12
  l0.AutoDisableOnIOPComplete = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|735598499", "735598499", "L36M020_IOP_Main", "box_Ordered_Output_16.Out", "box_IOPMonitor_12.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_16_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOPMonitor_32
  l0.MonitoredEvent = "HighPrice.TriggerFinale"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1395042712", "1395042712", "L36M020_IOP_Main", "box_Ordered_Output_16.Out", "box_IOPMonitor_32.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_16_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372069921001979"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|929102961"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = self.f_box_VisibilityController_v2_64_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1145747125", "1145747125", "L36M020_IOP_Main", "box_Ordered_Output_16.Out", "box_VisibilityController_v2_64.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Ordered_Output_16_Out_6()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_44
  l0.Entity = "9223372058622423046"
  l0.SoundId = "soundbinary/1167814481.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1212094447", "1212094447", "L36M020_IOP_Main", "box_Ordered_Output_16.Out", "box_PlaySound_v2_44.Play", clone, l0)
  l0:Play()
end
function export:f_box_IOP_StartUp_7_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_38
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L36.L36M020.Objectives.Objective010",
    item = "Objective",
    id = "552697"
  }
  l0 = self.box_IOP_StartUp_7
  l1 = self.box_MissionMessageController_v3_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1883320369", "1883320369", "L36M020_IOP_Main", "box_IOP_StartUp_7.Out", "box_MissionMessageController_v3_38.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_PlaySound_v2_35_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_35
  l1 = self.box_IOP_CleanUp_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1079553022", "1079553022", "L36M020_IOP_Main", "box_PlaySound_v2_35.Out", "box_IOP_CleanUp_6.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_45_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SecurityCamController_17()
  l0 = self.box_Timer_v2_45
  l1 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1810242970", "1810242970", "L36M020_IOP_Main", "box_Timer_v2_45.TimeElapsed", "box_SecurityCamController_17.ForceEnter", l0, l1)
  l1:ForceEnter()
end
function export:f_box_Hackable_Monitor_19_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1029257372"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_55_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_55_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_55_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_55_Out_3
  l0 = self.box_Hackable_Monitor_19
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1988953723", "1988953723", "L36M020_IOP_Main", "box_Hackable_Monitor_19.Disabled", "box_Ordered_Output_55.In", l0, l1)
  l1:In()
end
function export:f_box_Hackable_Monitor_19_HackSuccess()
  local l0
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_19()
  l0 = self.box_Hackable_Monitor_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1661979815", "1661979815", "L36M020_IOP_Main", "box_Hackable_Monitor_19.HackSuccess", "box_Hackable_Monitor_19.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_HackableController_v2_63_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VisibilityController_v2_70()
  l0 = self.box_HackableController_v2_63
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|404302746", "404302746", "L36M020_IOP_Main", "box_HackableController_v2_63.Disabled", "box_VisibilityController_v2_70.Show", l0, l1)
  l1:Show()
end
function export:f_box_IOPMonitor_12_IOPComplete()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_35
  l0.Entity = "9223372058622423046"
  l0.SoundId = "soundbinary/4006058457.bnk"
  l0 = self.box_IOPMonitor_12
  l1 = self.box_PlaySound_v2_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|757643102", "757643102", "L36M020_IOP_Main", "box_IOPMonitor_12.IOPComplete", "box_PlaySound_v2_35.Play", l0, l1)
  l1:Play()
end
function export:f_box_Ordered_Output_71_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_5()
  l0 = self.box_Multiple_AND_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1136201250", "1136201250", "L36M020_IOP_Main", "box_Ordered_Output_71.Out", "box_Multiple_AND_5.Condition", clone, l0)
  l0:Condition(1)
end
function export:f_box_Ordered_Output_71_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VisibilityController_v2_69()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|588672910", "588672910", "L36M020_IOP_Main", "box_Ordered_Output_71.Out", "box_VisibilityController_v2_69.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Ordered_Output_71_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VisibilityController_v2_70()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|105418677", "105418677", "L36M020_IOP_Main", "box_Ordered_Output_71.Out", "box_VisibilityController_v2_70.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_PlaySound_v2_1_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_14
  l0.CLO = "9223372056381150877"
  l0 = self.box_PlaySound_v2_1
  l1 = self.box_CLOController_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1914251879", "1914251879", "L36M020_IOP_Main", "box_PlaySound_v2_1.Started", "box_CLOController_14.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_MissionLayer_v2_2_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_2
  l1 = self.box_MissionController_v4_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1817109772", "1817109772", "L36M020_IOP_Main", "box_MissionLayer_v2_2.Unloaded", "box_MissionController_v4_36.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_VisibilityController_v2_70_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VisibilityController_v2_69()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|940829885", "940829885", "L36M020_IOP_Main", "box_VisibilityController_v2_70.Shown", "box_VisibilityController_v2_69.Show", clone, l0)
  l0:Show()
end
function export:f_box_HackableController_v2_54_ProfilingEnabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372056381150879"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1077268678"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_HackableController_v2_54
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1593581271", "1593581271", "L36M020_IOP_Main", "box_HackableController_v2_54.ProfilingEnabled", "box_VisibilityController_v2_72.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Ordered_Output_79_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_DistanceBasedProgressBarController_v2_30
  l0.Text = {
    section = "HACKING.Interface Messages",
    item = "UploadingVirus",
    id = "171882"
  }
  l0.TotalTime = 5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|530975148", "530975148", "L36M020_IOP_Main", "box_Ordered_Output_79.Out", "box_DistanceBasedProgressBarController_v2_30.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_79_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_74
  l0.Seconds = 5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1659526193", "1659526193", "L36M020_IOP_Main", "box_Ordered_Output_79.Out", "box_Timer_v2_74.Start", clone, l0)
  l0:Start()
end
function export:f_box_VisibilityController_v2_9_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372057424388835"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1467865828"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1119162523", "1119162523", "L36M020_IOP_Main", "box_VisibilityController_v2_9.Out", "box_LightController_31.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_VisibilityController_v2_65_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372069921001983"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1742935103"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1957544710", "1957544710", "L36M020_IOP_Main", "box_VisibilityController_v2_65.Out", "box_VisibilityController_v2_66.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Ordered_Output_61_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_5()
  l0 = self.box_Multiple_AND_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1753358373", "1753358373", "L36M020_IOP_Main", "box_Ordered_Output_61.Out", "box_Multiple_AND_5.Condition", clone, l0)
  l0:Condition(2)
end
function export:f_box_Ordered_Output_61_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_57
  l0.Seconds = 81
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|11059659", "11059659", "L36M020_IOP_Main", "box_Ordered_Output_61.Out", "box_Timer_v2_57.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_60_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_58
  l0.HackableEntity = "9223372056701611940"
  l0.ProfileLinkedToHack = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|746006593", "746006593", "L36M020_IOP_Main", "box_Ordered_Output_60.Out", "box_HackableController_v2_58.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_Ordered_Output_60_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_59
  l0.HackableEntity = "9223372056701611942"
  l0.ProfileLinkedToHack = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|510176982", "510176982", "L36M020_IOP_Main", "box_Ordered_Output_60.Out", "box_HackableController_v2_59.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_Ordered_Output_78_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_DistanceBasedProgressBarController_v2_15
  l0.Text = {
    section = "HACKING.Interface Messages",
    item = "UploadingVirus",
    id = "171882"
  }
  l0.TotalTime = 5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1524496758", "1524496758", "L36M020_IOP_Main", "box_Ordered_Output_78.Out", "box_DistanceBasedProgressBarController_v2_15.Start", clone, l0)
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
  l0 = self.box_Timer_v2_73
  l0.Seconds = 5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1274425272", "1274425272", "L36M020_IOP_Main", "box_Ordered_Output_78.Out", "box_Timer_v2_73.Start", clone, l0)
  l0:Start()
end
function export:f_box_AI_IOPController_22_StartCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|287843751"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_48_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_48_Out_1
  l0 = self.box_AI_IOPController_22
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|2135492807", "2135492807", "L36M020_IOP_Main", "box_AI_IOPController_22.StartCompleted", "box_Ordered_Output_48.In", l0, l1)
  l1:In()
end
function export:OnEnter_box_VisibilityController_v2_67()
  local l0
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372069921001979"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|89019359"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_67_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_VisibilityController_v2_69()
  local l0
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372069921001983"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|248615193"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_69_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_HackableController_v2_25()
  local l0
  l0 = self.box_HackableController_v2_25
  l0.HackableEntity = "9223372056381150879"
  l0.ProfileLinkedToHack = 1
end
function export:OnEnter_box_SecurityCamController_17()
  local l0
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = "9223372056381150876"
  l0.CameraEntityList = nil
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = 0
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0._name = "box_SecurityCamController_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|503635678"
  l0.EnterSet = DummyFunction
  l0.CanExitSet = self.f_box_SecurityCamController_17_CanExitSet
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = self.f_box_SecurityCamController_17_EnterForced
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
end
function export:OnEnter_box_MultipleOR_37()
end
function export:OnEnter_box_Security_Camera_Monitor_76()
  local l0
  l0 = self.box_Security_Camera_Monitor_76
  l0.CameraEntity = "9223372056381150876"
end
function export:OnEnter_box_VisibilityController_v2_56()
  local l0, l1
  l0 = self.box_IOPPropMonitor_47
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l1.Entity = l0.PropEntity
  l1.EntityList = nil
  l1.Visible = nil
  l1.AffectChildren = 0
  l1.EntitiesList = nil
  l1._graph = self
  l1._name = "box_VisibilityController_v2_56"
  l1._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1027199807"
  l1.IsSet = DummyFunction
  l1.Shown = DummyFunction
  l1.Hidden = DummyFunction
  l1.Out = DummyFunction
end
function export:OnEnter_box_Multiple_AND_5()
end
function export:OnEnter_box_Hackable_Monitor_19()
  local l0
  l0 = self.box_Hackable_Monitor_19
  l0.HackableEntity = "9223372056381150879"
end
function export:OnEnter_box_VisibilityController_v2_70()
  local l0
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372069921001981"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M020_IOP.domino|@L36M020_IOP_Main|1840338591"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_70_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
end
_compilerVersion = 4
