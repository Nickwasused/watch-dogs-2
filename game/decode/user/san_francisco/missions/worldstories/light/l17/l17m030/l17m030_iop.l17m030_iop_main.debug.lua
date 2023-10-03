export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AIAgentZoneController.lua")
  cbox:RegisterBox("domino/System/IOPController.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CollisionController.lua")
  cbox:RegisterBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/Library/common/IOP.IOP_CleanUp.debug.lua")
  cbox:RegisterBox("domino/Library/common/IOP.IOP_StartUp.debug.lua")
  cbox:RegisterBox("domino/System/IOPMonitor.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/RewardPhoneCallMonitor.lua")
  cbox:RegisterBox("domino/System/RewardComponentController_V3.lua")
  cbox:RegisterBox("domino/System/SecurityCameraMonitor.lua")
  cbox:RegisterBox("domino/System/SecurityCamController.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:LoadResource("soundbinary/2841013995.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1019517149.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3973683875.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/4175338337.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1222051932.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "L17M030_IOP_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main"
  self.PlayerEntity = nil
  self.Cameras = {}
  self.MainCharacter = nil
  self.Neighbor = nil
  self.GJemployee = nil
  self.SecurityCameraList = {}
  self.box_Security_Camera_Monitor_50 = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self.box_Security_Camera_Monitor_50
  l0._graph = self
  l0._name = "box_Security_Camera_Monitor_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|1487310"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Security_Camera_Monitor_50_Disabled
  l0.OnStartAccessCamera = DummyFunction
  l0.OnEndAccessCamera = self.f_box_Security_Camera_Monitor_50_OnEndAccessCamera
  l0.OnStartExitCamera = DummyFunction
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self.box_ListWriter_49 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_49
  l0._graph = self
  l0._name = "box_ListWriter_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|42361971"
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_box_ListWriter_49_Added
  l0.Removed = self.f_box_ListWriter_49_Removed
  l0.Out = self.f_box_ListWriter_49_Out
  self.box_HackableController_v2_27 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_27
  l0._graph = self
  l0._name = "box_HackableController_v2_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|124303892"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_27_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_DistanceBasedProgressBarController_v2_23 = cbox:CreateBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  l0 = self.box_DistanceBasedProgressBarController_v2_23
  l0._graph = self
  l0._name = "box_DistanceBasedProgressBarController_v2_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|169184242"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.WasReset = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = DummyFunction
  self.box_PlaySound_v2_44 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_44
  l0._graph = self
  l0._name = "box_PlaySound_v2_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|210652984"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_HackableController_v2_31 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_31
  l0._graph = self
  l0._name = "box_HackableController_v2_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|236832012"
  l0.Enabled = self.f_box_HackableController_v2_31_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_AI_IOPController_26 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_26
  l0._graph = self
  l0._name = "box_AI_IOPController_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|256145673"
  l0.Out = DummyFunction
  l0.StartCompleted = self.f_box_AI_IOPController_26_StartCompleted
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_MultipleOR_38 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_38
  l0._graph = self
  l0._name = "box_MultipleOR_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|299284506"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_38_Out
  self.box_CinematicPrep_30 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_30
  l0._graph = self
  l0._name = "box_CinematicPrep_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|313887870"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_30_PostOut
  self.box_IOPMonitor_48 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_48
  l0._graph = self
  l0._name = "box_IOPMonitor_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|468430984"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_box_IOPMonitor_48_EventOccurred
  l0.Out = DummyFunction
  self.box_Timer_v2_51 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_51
  l0._graph = self
  l0._name = "box_Timer_v2_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|486785139"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_51_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CLOController_13 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_13
  l0._graph = self
  l0._name = "box_CLOController_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|511495108"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_13_OnUserInPlace
  self.box_IOP_StartUp_6 = cbox:CreateBox("domino/Library/common/IOP.IOP_StartUp.debug.lua")
  l0 = self.box_IOP_StartUp_6
  l0._graph = self
  l0._name = "box_IOP_StartUp_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|520768465"
  l0.Out = self.f_box_IOP_StartUp_6_Out
  self.box_IOP_CleanUp_7 = cbox:CreateBox("domino/Library/common/IOP.IOP_CleanUp.debug.lua")
  l0 = self.box_IOP_CleanUp_7
  l0._graph = self
  l0._name = "box_IOP_CleanUp_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|552720734"
  l0.Completed = self.f_box_IOP_CleanUp_7_Completed
  l0.DisconnectedAnimationPlayed = self.f_box_IOP_CleanUp_7_DisconnectedAnimationPlayed
  l0.Out = DummyFunction
  self.box_HackableController_v2_19 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_19
  l0._graph = self
  l0._name = "box_HackableController_v2_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|583641586"
  l0.Enabled = self.f_box_HackableController_v2_19_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Timer_v2_55 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_55
  l0._graph = self
  l0._name = "box_Timer_v2_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|616329889"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_55_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_AI_IOPController_1 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_1
  l0._graph = self
  l0._name = "box_AI_IOPController_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|691379672"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_Timer_v2_10 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_10
  l0._graph = self
  l0._name = "box_Timer_v2_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|706846925"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_10_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionLayer_v2_33 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_33
  l0._graph = self
  l0._name = "box_MissionLayer_v2_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|747649577"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_33_Unloaded
  l0.Reseted = DummyFunction
  self.box_PhoneCommunicationController_41 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_41
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|753346401"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_41_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Timer_v2_53 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_53
  l0._graph = self
  l0._name = "box_Timer_v2_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|759101324"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_53_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CLOController_11 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_11
  l0._graph = self
  l0._name = "box_CLOController_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|810411640"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_11_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_MissionController_v4_34 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_34
  l0._graph = self
  l0._name = "box_MissionController_v4_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|861359243"
  self.box_DistanceBasedProgressBarController_v2_4 = cbox:CreateBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  l0 = self.box_DistanceBasedProgressBarController_v2_4
  l0._graph = self
  l0._name = "box_DistanceBasedProgressBarController_v2_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|899663961"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.WasReset = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = DummyFunction
  self.box_DistanceBasedProgressBarController_v2_5 = cbox:CreateBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  l0 = self.box_DistanceBasedProgressBarController_v2_5
  l0._graph = self
  l0._name = "box_DistanceBasedProgressBarController_v2_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|1037275882"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.WasReset = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = DummyFunction
  self.box_Multiple_AND_2 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_2
  l0._graph = self
  l0._name = "box_Multiple_AND_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|1049501552"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_2_Out
  self.box_RewardController_v3_40 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_40
  l0._graph = self
  l0._name = "box_RewardController_v3_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|1094769438"
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_box_RewardController_v3_40_RewardsExecuted
  self.box_IOPMonitor_14 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_14
  l0._graph = self
  l0._name = "box_IOPMonitor_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|1120444034"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = self.f_box_IOPMonitor_14_IOPComplete
  l0.EventOccurred = DummyFunction
  l0.Out = DummyFunction
  self.box_Hackable_Monitor_29 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_29
  l0._graph = self
  l0._name = "box_Hackable_Monitor_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|1126597748"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_29_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_PlaySound_v2_36 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_36
  l0._graph = self
  l0._name = "box_PlaySound_v2_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|1240219935"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_47 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_47
  l0._graph = self
  l0._name = "box_PlaySound_v2_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|1255257284"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PhoneCommunicationController_3 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_3
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|1270186979"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = self.f_box_PhoneCommunicationController_3_OnCommunicationStarted
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Hackable_Monitor_18 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_18
  l0._graph = self
  l0._name = "box_Hackable_Monitor_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|1305419076"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_18_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_Timer_v2_9 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_9
  l0._graph = self
  l0._name = "box_Timer_v2_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|1313811341"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_9_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Reward_Phone_Call_Monitor_42 = cbox:CreateBox("domino/System/RewardPhoneCallMonitor.lua")
  l0 = self.box_Reward_Phone_Call_Monitor_42
  l0._graph = self
  l0._name = "box_Reward_Phone_Call_Monitor_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|1432784307"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnPhoneCallEnded = self.f_box_Reward_Phone_Call_Monitor_42_OnPhoneCallEnded
  self.box_PhoneCommunicationController_32 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_32
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|1437732225"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_32_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_PlaySound_v2_43 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_43
  l0._graph = self
  l0._name = "box_PlaySound_v2_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|1531088094"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_HackableController_v2_21 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_21
  l0._graph = self
  l0._name = "box_HackableController_v2_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|1646736111"
  l0.Enabled = self.f_box_HackableController_v2_21_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Timer_v2_54 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_54
  l0._graph = self
  l0._name = "box_Timer_v2_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|1648386244"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_54_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_HackableController_v2_25 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_25
  l0._graph = self
  l0._name = "box_HackableController_v2_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|1689210365"
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
  self.box_PlaySound_v2_17 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_17
  l0._graph = self
  l0._name = "box_PlaySound_v2_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|1817079538"
  l0.Out = DummyFunction
  l0.Started = self.f_box_PlaySound_v2_17_Started
  l0.Finished = DummyFunction
  self.box_Hackable_Monitor_20 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_20
  l0._graph = self
  l0._name = "box_Hackable_Monitor_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|1915134547"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_20_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_AI_IOPController_35 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_35
  l0._graph = self
  l0._name = "box_AI_IOPController_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|1960058450"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_35_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_CLOController_8 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_8
  l0._graph = self
  l0._name = "box_CLOController_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|2062878543"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
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
  self:OnEnter_box_MultipleOR_38()
  l0 = self.box_MultipleOR_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|24805050", "24805050", "L17M030_IOP_Main", "CheckPoint_0", "box_MultipleOR_38.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_38()
  l0 = self.box_MultipleOR_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|1765247595", "1765247595", "L17M030_IOP_Main", "In", "box_MultipleOR_38.Input", self, l0)
  l0:Input(0)
end
function export:f_box_Security_Camera_Monitor_50_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_51
  l0.Seconds = 0.5
  l0 = self.box_Security_Camera_Monitor_50
  l1 = self.box_Timer_v2_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|1464799367", "1464799367", "L17M030_IOP_Main", "box_Security_Camera_Monitor_50.Disabled", "box_Timer_v2_51.Start", l0, l1)
  l1:Start()
end
function export:f_box_Security_Camera_Monitor_50_OnEndAccessCamera()
  local l0
  self = self._graph
  self:OnEnter_box_Security_Camera_Monitor_50()
  l0 = self.box_Security_Camera_Monitor_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|580025521", "580025521", "L17M030_IOP_Main", "box_Security_Camera_Monitor_50.OnEndAccessCamera", "box_Security_Camera_Monitor_50.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_37_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_25
  l0.HackableEntity = "9223372056381150833"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|1416435007", "1416435007", "L17M030_IOP_Main", "box_Ordered_Output_37.Out", "box_HackableController_v2_25.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_Ordered_Output_37_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOPMonitor_48
  l0.MonitoredEvent = "Stakeout.ChairImpact"
  l0.AutoDisableOnEventOccurred = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|963470778", "963470778", "L17M030_IOP_Main", "box_Ordered_Output_37.Out", "box_IOPMonitor_48.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_ListWriter_49_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_49
  self.SecurityCameraList = l0.Target
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372067115065302"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|390968109"
  l0.Out = self.f_box_AI_Agent_Zone_39_Out
  l0 = self.box_ListWriter_49
  l1 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|1601237805", "1601237805", "L17M030_IOP_Main", "box_ListWriter_49.Added", "box_AI_Agent_Zone_39.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_ListWriter_49_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_49
  self.SecurityCameraList = l0.Target
end
function export:f_box_ListWriter_49_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_49
  self.SecurityCameraList = l0.Target
end
function export:f_box_Ordered_Output_46_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_2()
  l0 = self.box_Multiple_AND_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|881332778", "881332778", "L17M030_IOP_Main", "box_Ordered_Output_46.Out", "box_Multiple_AND_2.Condition", clone, l0)
  l0:Condition(0)
end
function export:f_box_Ordered_Output_46_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_44
  l0.Entity = "9223372066113310695"
  l0.SoundId = "soundbinary/1019517149.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|106098435", "106098435", "L17M030_IOP_Main", "box_Ordered_Output_46.Out", "box_PlaySound_v2_44.Play", clone, l0)
  l0:Play()
end
function export:f_box_HackableController_v2_27_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Security_Camera_Monitor_50()
  l0 = self.box_HackableController_v2_27
  l1 = self.box_Security_Camera_Monitor_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|1971697632", "1971697632", "L17M030_IOP_Main", "box_HackableController_v2_27.Disabled", "box_Security_Camera_Monitor_50.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Ordered_Output_16_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_DistanceBasedProgressBarController_v2_4
  l0.Text = {
    section = "HACKING.Interface Messages",
    item = "RetrievingData",
    id = "132264"
  }
  l0.TotalTime = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|1311003949", "1311003949", "L17M030_IOP_Main", "box_Ordered_Output_16.Out", "box_DistanceBasedProgressBarController_v2_4.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_16_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_21()
  l0 = self.box_HackableController_v2_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|1643838162", "1643838162", "L17M030_IOP_Main", "box_Ordered_Output_16.Out", "box_HackableController_v2_21.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_Ordered_Output_16_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_54
  l0.Seconds = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|749163269", "749163269", "L17M030_IOP_Main", "box_Ordered_Output_16.Out", "box_Timer_v2_54.Start", clone, l0)
  l0:Start()
end
function export:f_box_HackableController_v2_31_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Hackable_Monitor_29
  l0.HackableEntity = "9223372056381150833"
  l0 = self.box_HackableController_v2_31
  l1 = self.box_Hackable_Monitor_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|575909307", "575909307", "L17M030_IOP_Main", "box_HackableController_v2_31.Enabled", "box_Hackable_Monitor_29.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_AI_IOPController_26_StartCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SecurityCamController_12()
  l0 = self.box_AI_IOPController_26
  l1 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|941240441", "941240441", "L17M030_IOP_Main", "box_AI_IOPController_26.StartCompleted", "box_SecurityCamController_12.ForceEnter", l0, l1)
  l1:ForceEnter()
end
function export:f_box_MultipleOR_38_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|409777907"
  l0.Out = self.f_box_Get_Player_ID_24_Out
  l0 = self.box_MultipleOR_38
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|2129743099", "2129743099", "L17M030_IOP_Main", "box_MultipleOR_38.Out", "box_Get_Player_ID_24.In", l0, l1)
  l1:In()
end
function export:f_box_CinematicPrep_30_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_3
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357367622"
  l0 = self.box_CinematicPrep_30
  l1 = self.box_PhoneCommunicationController_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|1170502050", "1170502050", "L17M030_IOP_Main", "box_CinematicPrep_30.PostOut", "box_PhoneCommunicationController_3.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_SecurityCamController_12_CanExitSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|835155619"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_28_Out_0
  l0.Out[1] = DummyFunction
  l0.Out[2] = self.f_box_Ordered_Output_28_Out_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|828613200", "828613200", "L17M030_IOP_Main", "box_SecurityCamController_12.CanExitSet", "box_Ordered_Output_28.In", clone, l0)
  l0:In()
end
function export:f_box_SecurityCamController_12_EnterForced()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SecurityCamController_12()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|270028066", "270028066", "L17M030_IOP_Main", "box_SecurityCamController_12.EnterForced", "box_SecurityCamController_12.SetCanExit", clone, l0)
  l0:SetCanExit()
end
function export:f_box_AI_Agent_Zone_39_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_17
  l0.SoundId = "soundbinary/3973683875.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|877373846", "877373846", "L17M030_IOP_Main", "box_AI_Agent_Zone_39.Out", "box_PlaySound_v2_17.Play", clone, l0)
  l0:Play()
end
function export:f_box_Get_Player_ID_24_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOP_StartUp_6
  l0.MainLayer = "L17M030_Main_IOP"
  l0.CheckPoint = "CheckPoint_0"
  l0.CinemaZone = "9223372060001341285"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|1976992188", "1976992188", "L17M030_IOP_Main", "box_Get_Player_ID_24.Out", "box_IOP_StartUp_6.In", clone, l0)
  l0:In()
end
function export:f_box_IOPMonitor_48_EventOccurred()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_47
  l0.Entity = "9223372066113310697"
  l0.SoundId = "soundbinary/1222051932.bnk"
  l0 = self.box_IOPMonitor_48
  l1 = self.box_PlaySound_v2_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|639137103", "639137103", "L17M030_IOP_Main", "box_IOPMonitor_48.EventOccurred", "box_PlaySound_v2_47.Play", l0, l1)
  l1:Play()
end
function export:f_box_Timer_v2_51_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_30
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_Timer_v2_51
  l1 = self.box_CinematicPrep_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|979173901", "979173901", "L17M030_IOP_Main", "box_Timer_v2_51.TimeElapsed", "box_CinematicPrep_30.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_CLOController_13_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_13
  self.GJemployee = l0.UserID
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.GJemployee
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|1460109956"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_52_CollisionsDisabled
  l0.Out = DummyFunction
  l0 = self.box_CLOController_13
  l1 = Boxes[PathID("domino/System/CollisionController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|1059101534", "1059101534", "L17M030_IOP_Main", "box_CLOController_13.OnUserInPlace", "box_CollisionController_52.DisableCollisions", l0, l1)
  l1:DisableCollisions()
end
function export:f_box_IOP_StartUp_6_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_49
  l0.Input = self.SecurityCameraList
  l0.Data[0] = "9223372056381150828"
  l0.Data[1] = "9223372056381150830"
  l0 = self.box_IOP_StartUp_6
  l1 = self.box_ListWriter_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|1906208298", "1906208298", "L17M030_IOP_Main", "box_IOP_StartUp_6.Out", "box_ListWriter_49.Add", l0, l1)
  l1:Add()
end
function export:f_box_IOP_CleanUp_7_Completed()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_10
  l0.Seconds = 1
  l0 = self.box_IOP_CleanUp_7
  l1 = self.box_Timer_v2_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|1390973144", "1390973144", "L17M030_IOP_Main", "box_IOP_CleanUp_7.Completed", "box_Timer_v2_10.Start", l0, l1)
  l1:Start()
end
function export:f_box_IOP_CleanUp_7_DisconnectedAnimationPlayed()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_11
  l0.User = self.GJemployee
  l0 = self.box_IOP_CleanUp_7
  l1 = self.box_CLOController_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|1204759643", "1204759643", "L17M030_IOP_Main", "box_IOP_CleanUp_7.DisconnectedAnimationPlayed", "box_CLOController_11.UnspawnUser", l0, l1)
  l1:UnspawnUser()
end
function export:f_box_HackableController_v2_19_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Hackable_Monitor_20
  l0.HackableEntity = "9223372056381150835"
  l0 = self.box_HackableController_v2_19
  l1 = self.box_Hackable_Monitor_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|361605538", "361605538", "L17M030_IOP_Main", "box_HackableController_v2_19.Enabled", "box_Hackable_Monitor_20.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Timer_v2_55_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|807565527"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_45_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_45_Out_1
  l0 = self.box_Timer_v2_55
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|163206488", "163206488", "L17M030_IOP_Main", "box_Timer_v2_55.TimeElapsed", "box_Ordered_Output_45.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_10_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_32
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372051775436201"
  l0 = self.box_Timer_v2_10
  l1 = self.box_PhoneCommunicationController_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|884609405", "884609405", "L17M030_IOP_Main", "box_Timer_v2_10.TimeElapsed", "box_PhoneCommunicationController_32.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_MissionLayer_v2_33_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_33
  l1 = self.box_MissionController_v4_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|109987608", "109987608", "L17M030_IOP_Main", "box_MissionLayer_v2_33.Unloaded", "box_MissionController_v4_34.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_PhoneCommunicationController_41_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_33
  l0.LayerName = "L17M030_Main_IOP"
  l0 = self.box_PhoneCommunicationController_41
  l1 = self.box_MissionLayer_v2_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|528722621", "528722621", "L17M030_IOP_Main", "box_PhoneCommunicationController_41.OnCommunicationFinished", "box_MissionLayer_v2_33.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_Timer_v2_53_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|1044889888"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_15_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_15_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_15_Out_2
  l0 = self.box_Timer_v2_53
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|713380967", "713380967", "L17M030_IOP_Main", "box_Timer_v2_53.TimeElapsed", "box_Ordered_Output_15.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_45_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_2()
  l0 = self.box_Multiple_AND_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|1578093455", "1578093455", "L17M030_IOP_Main", "box_Ordered_Output_45.Out", "box_Multiple_AND_2.Condition", clone, l0)
  l0:Condition(1)
end
function export:f_box_Ordered_Output_45_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_43
  l0.Entity = "9223372066113310695"
  l0.SoundId = "soundbinary/2841013995.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|1112237321", "1112237321", "L17M030_IOP_Main", "box_Ordered_Output_45.Out", "box_PlaySound_v2_43.Play", clone, l0)
  l0:Play()
end
function export:f_box_CLOController_11_UnspawnedUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_8
  l0.CLO = "9223372056381150831"
  l0 = self.box_CLOController_11
  l1 = self.box_CLOController_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|2048983099", "2048983099", "L17M030_IOP_Main", "box_CLOController_11.UnspawnedUser", "box_CLOController_8.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_Ordered_Output_28_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_27
  l0.HackableEntity = "9223372056381150833"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|410494453", "410494453", "L17M030_IOP_Main", "box_Ordered_Output_28.Out", "box_HackableController_v2_27.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_Ordered_Output_28_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOPMonitor_14
  l0.AutoDisableOnIOPComplete = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|943372681", "943372681", "L17M030_IOP_Main", "box_Ordered_Output_28.Out", "box_IOPMonitor_14.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_15_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_21()
  l0 = self.box_HackableController_v2_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|597203485", "597203485", "L17M030_IOP_Main", "box_Ordered_Output_15.Out", "box_HackableController_v2_21.EnableHack", clone, l0)
  l0:EnableHack()
end
function export:f_box_Ordered_Output_15_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_19()
  l0 = self.box_HackableController_v2_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|1022392202", "1022392202", "L17M030_IOP_Main", "box_Ordered_Output_15.Out", "box_HackableController_v2_19.EnableHack", clone, l0)
  l0:EnableHack()
end
function export:f_box_Ordered_Output_15_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_36
  l0.Entity = "9223372066113310695"
  l0.SoundId = "soundbinary/4175338337.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|1217246862", "1217246862", "L17M030_IOP_Main", "box_Ordered_Output_15.Out", "box_PlaySound_v2_36.Play", clone, l0)
  l0:Play()
end
function export:f_box_Multiple_AND_2_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_1
  l0.IopID = "Stakeout"
  l0.IopEvent = "Stakeout.ComputerHack"
  l0 = self.box_Multiple_AND_2
  l1 = self.box_AI_IOPController_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|200049086", "200049086", "L17M030_IOP_Main", "box_Multiple_AND_2.Out", "box_AI_IOPController_1.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_RewardController_v3_40_RewardsExecuted()
  local l0, l1
  self = self._graph
  l0 = self.box_Reward_Phone_Call_Monitor_42
  l0.ItemDb = "Items.9223372050357367610"
  l0 = self.box_RewardController_v3_40
  l1 = self.box_Reward_Phone_Call_Monitor_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|1593759260", "1593759260", "L17M030_IOP_Main", "box_RewardController_v3_40.RewardsExecuted", "box_Reward_Phone_Call_Monitor_42.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_IOPMonitor_14_IOPComplete()
  local l0, l1
  self = self._graph
  l0 = self.box_IOP_CleanUp_7
  l0.SecurityCameraList = self.SecurityCameraList
  l0 = self.box_IOPMonitor_14
  l1 = self.box_IOP_CleanUp_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|645159327", "645159327", "L17M030_IOP_Main", "box_IOPMonitor_14.IOPComplete", "box_IOP_CleanUp_7.In", l0, l1)
  l1:In()
end
function export:f_box_Hackable_Monitor_29_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|39479288"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_37_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_37_Out_1
  l0 = self.box_Hackable_Monitor_29
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|713766481", "713766481", "L17M030_IOP_Main", "box_Hackable_Monitor_29.HackSuccess", "box_Ordered_Output_37.In", l0, l1)
  l1:In()
end
function export:f_box_PhoneCommunicationController_3_OnCommunicationStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_9
  l0.Seconds = 6
  l0 = self.box_PhoneCommunicationController_3
  l1 = self.box_Timer_v2_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|1891643281", "1891643281", "L17M030_IOP_Main", "box_PhoneCommunicationController_3.OnCommunicationStarted", "box_Timer_v2_9.Start", l0, l1)
  l1:Start()
end
function export:f_box_Hackable_Monitor_18_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|217493903"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_16_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_16_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_16_Out_2
  l0.Out[3] = DummyFunction
  l0 = self.box_Hackable_Monitor_18
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|1644918098", "1644918098", "L17M030_IOP_Main", "box_Hackable_Monitor_18.HackSuccess", "box_Ordered_Output_16.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_9_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_35
  l0.IopID = "Stakeout"
  l0.IopEvent = "Generic.TeamSpeakEnded"
  l0 = self.box_Timer_v2_9
  l1 = self.box_AI_IOPController_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|1968585291", "1968585291", "L17M030_IOP_Main", "box_Timer_v2_9.TimeElapsed", "box_AI_IOPController_35.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_Reward_Phone_Call_Monitor_42_OnPhoneCallEnded()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_41
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357373374"
  l0 = self.box_Reward_Phone_Call_Monitor_42
  l1 = self.box_PhoneCommunicationController_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|40588469", "40588469", "L17M030_IOP_Main", "box_Reward_Phone_Call_Monitor_42.OnPhoneCallEnded", "box_PhoneCommunicationController_41.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_PhoneCommunicationController_32_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_40
  l0.ItemDB = "Items.9223372050357367610"
  l0 = self.box_PhoneCommunicationController_32
  l1 = self.box_RewardController_v3_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|674555148", "674555148", "L17M030_IOP_Main", "box_PhoneCommunicationController_32.OnCommunicationFinished", "box_RewardController_v3_40.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_CollisionController_52_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOPController_26
  l0.IopID = "Stakeout"
  l0.PlayerEntity = self.PlayerEntity
  l0.NpcEntity = self.GJemployee
  l0.IopRole = "Stakeout.Guy"
  l0.OffscreenDialogPoint = "9223372061277588938"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|569036167", "569036167", "L17M030_IOP_Main", "box_CollisionController_52.CollisionsDisabled", "box_AI_IOPController_26.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_56_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_DistanceBasedProgressBarController_v2_23
  l0.Text = {
    section = "HACKING.Interface Messages",
    item = "Deactivating",
    id = "684780"
  }
  l0.TotalTime = 3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|254854091", "254854091", "L17M030_IOP_Main", "box_Ordered_Output_56.Out", "box_DistanceBasedProgressBarController_v2_23.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_56_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_53
  l0.Seconds = 3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|2101504891", "2101504891", "L17M030_IOP_Main", "box_Ordered_Output_56.Out", "box_Timer_v2_53.Start", clone, l0)
  l0:Start()
end
function export:f_box_HackableController_v2_21_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Hackable_Monitor_18
  l0.HackableEntity = "9223372066889897670"
  l0 = self.box_HackableController_v2_21
  l1 = self.box_Hackable_Monitor_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|1612800892", "1612800892", "L17M030_IOP_Main", "box_HackableController_v2_21.Enabled", "box_Hackable_Monitor_18.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Timer_v2_54_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|110804850"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_46_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_46_Out_1
  l0 = self.box_Timer_v2_54
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|186072066", "186072066", "L17M030_IOP_Main", "box_Timer_v2_54.TimeElapsed", "box_Ordered_Output_46.In", l0, l1)
  l1:In()
end
function export:f_box_HackableController_v2_25_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|1631809810"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_56_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_56_Out_1
  l0 = self.box_HackableController_v2_25
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|1517196870", "1517196870", "L17M030_IOP_Main", "box_HackableController_v2_25.Disabled", "box_Ordered_Output_56.In", l0, l1)
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
  l0 = self.box_DistanceBasedProgressBarController_v2_5
  l0.Text = {
    section = "HACKING.Interface Messages",
    item = "UploadingVirus",
    id = "171882"
  }
  l0.TotalTime = 3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|1391911708", "1391911708", "L17M030_IOP_Main", "box_Ordered_Output_22.Out", "box_DistanceBasedProgressBarController_v2_5.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_22_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_19()
  l0 = self.box_HackableController_v2_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|1407215068", "1407215068", "L17M030_IOP_Main", "box_Ordered_Output_22.Out", "box_HackableController_v2_19.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_Ordered_Output_22_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_55
  l0.Seconds = 3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|1184033577", "1184033577", "L17M030_IOP_Main", "box_Ordered_Output_22.Out", "box_Timer_v2_55.Start", clone, l0)
  l0:Start()
end
function export:f_box_PlaySound_v2_17_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_13
  l0.CLO = "9223372056381150831"
  l0 = self.box_PlaySound_v2_17
  l1 = self.box_CLOController_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|39445495", "39445495", "L17M030_IOP_Main", "box_PlaySound_v2_17.Started", "box_CLOController_13.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Hackable_Monitor_20_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|1765256494"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_22_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_22_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_22_Out_2
  l0 = self.box_Hackable_Monitor_20
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|1851696723", "1851696723", "L17M030_IOP_Main", "box_Hackable_Monitor_20.HackSuccess", "box_Ordered_Output_22.In", l0, l1)
  l1:In()
end
function export:f_box_AI_IOPController_35_SendEventCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_31
  l0.HackableEntity = "9223372056381150833"
  l0 = self.box_AI_IOPController_35
  l1 = self.box_HackableController_v2_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|161830188", "161830188", "L17M030_IOP_Main", "box_AI_IOPController_35.SendEventCompleted", "box_HackableController_v2_31.EnableHack", l0, l1)
  l1:EnableHack()
end
function export:OnEnter_box_Security_Camera_Monitor_50()
  local l0
  l0 = self.box_Security_Camera_Monitor_50
  l0.CameraEntity = "9223372056381150830"
end
function export:OnEnter_box_MultipleOR_38()
end
function export:OnEnter_box_SecurityCamController_12()
  local l0
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = "9223372056381150830"
  l0.CameraEntityList = nil
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = 0
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0._name = "box_SecurityCamController_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M030\\L17M030_IOP.domino|@L17M030_IOP_Main|333507664"
  l0.EnterSet = DummyFunction
  l0.CanExitSet = self.f_box_SecurityCamController_12_CanExitSet
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = self.f_box_SecurityCamController_12_EnterForced
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
end
function export:OnEnter_box_HackableController_v2_19()
  local l0
  l0 = self.box_HackableController_v2_19
  l0.HackableEntity = "9223372056381150835"
  l0.ProfileLinkedToHack = 1
end
function export:OnEnter_box_Multiple_AND_2()
end
function export:OnEnter_box_HackableController_v2_21()
  local l0
  l0 = self.box_HackableController_v2_21
  l0.HackableEntity = "9223372066889897670"
  l0.ProfileLinkedToHack = 1
end
_compilerVersion = 4
