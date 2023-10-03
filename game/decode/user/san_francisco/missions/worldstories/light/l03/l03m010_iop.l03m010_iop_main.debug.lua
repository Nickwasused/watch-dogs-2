export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/IOPController.lua")
  cbox:RegisterBox("domino/System/BinkVideoPlayer_v3.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/System/IntelController.lua")
  cbox:RegisterBox("domino/Library/common/IOP.IOP_CleanUp.debug.lua")
  cbox:RegisterBox("domino/Library/common/IOP.IOP_StartUp.debug.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/LogicGate_v2.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/System/PlayDialogWithSubtitle.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/SecurityCameraMonitor.lua")
  cbox:RegisterBox("domino/System/SecurityCamController.lua")
  cbox:RegisterBox("domino/System/ShowOrHideAllUI.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:LoadResource("soundbinary/225637632.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/416194221.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2442748611.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3677513328.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3973683875.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/477958559.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2993216076.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2033963785.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1549650036.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2422823228.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2137140386.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2743351303.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3035919121.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3651191950.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3977174080.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "L03M010_IOP_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main"
  self.PlayerEntity = nil
  self.Cameras = {}
  self.MainCharacter = nil
  self.Neighbor = nil
  self.PatPlourde = nil
  self.MaleEmpl = nil
  self.FemaleEmp = nil
  self.MeetingDialogue = {}
  self.SecurityCameraList = {}
  self.BarkSoundEntity_MeetingChatter = "9223372059710467576"
  self.box_PlaySound_v2_42 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_42
  l0._graph = self
  l0._name = "box_PlaySound_v2_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|23901044"
  l0.Out = self.f_box_PlaySound_v2_42_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_DistanceBasedProgressBarController_v2_58 = cbox:CreateBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  l0 = self.box_DistanceBasedProgressBarController_v2_58
  l0._graph = self
  l0._name = "box_DistanceBasedProgressBarController_v2_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|40732714"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.WasReset = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = DummyFunction
  self.box_CLOController_9 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_9
  l0._graph = self
  l0._name = "box_CLOController_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|96112750"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_9_OnUserInPlace
  self.box_MultipleOR_70 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_70
  l0._graph = self
  l0._name = "box_MultipleOR_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|115788404"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_70_Out
  self.box_HackableController_v2_30 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_30
  l0._graph = self
  l0._name = "box_HackableController_v2_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|172614435"
  l0.Enabled = self.f_box_HackableController_v2_30_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_PlaySound_v2_73 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_73
  l0._graph = self
  l0._name = "box_PlaySound_v2_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|177037532"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_CLOController_46 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_46
  l0._graph = self
  l0._name = "box_CLOController_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|200924689"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_PlaySound_v2_40 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_40
  l0._graph = self
  l0._name = "box_PlaySound_v2_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|207933754"
  l0.Out = self.f_box_PlaySound_v2_40_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_HackableController_v2_31 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_31
  l0._graph = self
  l0._name = "box_HackableController_v2_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|239290753"
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
  self.box_PlaySound_v2_20 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_20
  l0._graph = self
  l0._name = "box_PlaySound_v2_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|304453219"
  l0.Out = DummyFunction
  l0.Started = self.f_box_PlaySound_v2_20_Started
  l0.Finished = DummyFunction
  self.box_LogicGate_v2_65 = cbox:CreateBox("domino/System/LogicGate_v2.lua")
  l0 = self.box_LogicGate_v2_65
  l0._graph = self
  l0._name = "box_LogicGate_v2_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|311429803"
  l0.Out = self.f_box_LogicGate_v2_65_Out
  l0.Opened = DummyFunction
  l0.Closed = DummyFunction
  self.box_AI_IOPController_6 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_6
  l0._graph = self
  l0._name = "box_AI_IOPController_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|376744800"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = self.f_box_AI_IOPController_6_StopEmptyRoomCompleted
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_ListWriter_59 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_59
  l0._graph = self
  l0._name = "box_ListWriter_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|394250959"
  l0._DynamicAnchors = {Data = 9}
  l0.Added = self.f_box_ListWriter_59_Added
  l0.Removed = self.f_box_ListWriter_59_Removed
  l0.Out = self.f_box_ListWriter_59_Out
  self.box_MultipleOR_53 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_53
  l0._graph = self
  l0._name = "box_MultipleOR_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|426211133"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_53_Out
  self.box_PlaySound_v2_38 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_38
  l0._graph = self
  l0._name = "box_PlaySound_v2_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|611468534"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Security_Camera_Monitor_74 = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self.box_Security_Camera_Monitor_74
  l0._graph = self
  l0._name = "box_Security_Camera_Monitor_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|684409779"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Security_Camera_Monitor_74_Disabled
  l0.OnStartAccessCamera = DummyFunction
  l0.OnEndAccessCamera = self.f_box_Security_Camera_Monitor_74_OnEndAccessCamera
  l0.OnStartExitCamera = DummyFunction
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self.box_Hackable_Monitor_68 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_68
  l0._graph = self
  l0._name = "box_Hackable_Monitor_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|704593020"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = DummyFunction
  l0.HackedOn = self.f_box_Hackable_Monitor_68_HackedOn
  l0.HackedOff = self.f_box_Hackable_Monitor_68_HackedOff
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_Timer_v2_21 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_21
  l0._graph = self
  l0._name = "box_Timer_v2_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|706846925"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_21_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PhoneCommunicationController_28 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_28
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|748245172"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = self.f_box_PhoneCommunicationController_28_Out
  self.box_Hackable_Monitor_19 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_19
  l0._graph = self
  l0._name = "box_Hackable_Monitor_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|751922020"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = DummyFunction
  l0.HackedOn = self.f_box_Hackable_Monitor_19_HackedOn
  l0.HackedOff = self.f_box_Hackable_Monitor_19_HackedOff
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_Hackable_Monitor_13 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_13
  l0._graph = self
  l0._name = "box_Hackable_Monitor_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|831591437"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_13_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_PlayDialogOnSoundPoint_23 = cbox:CreateBox("domino/System/PlayDialogWithSubtitle.lua")
  l0 = self.box_PlayDialogOnSoundPoint_23
  l0._graph = self
  l0._name = "box_PlayDialogOnSoundPoint_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|854389995"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_box_PlayDialogOnSoundPoint_23_Finished
  self.box_IOP_CleanUp_14 = cbox:CreateBox("domino/Library/common/IOP.IOP_CleanUp.debug.lua")
  l0 = self.box_IOP_CleanUp_14
  l0._graph = self
  l0._name = "box_IOP_CleanUp_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|877421826"
  l0.Completed = self.f_box_IOP_CleanUp_14_Completed
  l0.DisconnectedAnimationPlayed = self.f_box_IOP_CleanUp_14_DisconnectedAnimationPlayed
  l0.Out = DummyFunction
  self.box_MultipleOR_72 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_72
  l0._graph = self
  l0._name = "box_MultipleOR_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|888585544"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_72_Out
  self.box_Hackable_Monitor_54 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_54
  l0._graph = self
  l0._name = "box_Hackable_Monitor_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|911808841"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = DummyFunction
  l0.HackedOn = self.f_box_Hackable_Monitor_54_HackedOn
  l0.HackedOff = self.f_box_Hackable_Monitor_54_HackedOff
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_Hackable_Monitor_15 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_15
  l0._graph = self
  l0._name = "box_Hackable_Monitor_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|942555530"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_15_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_LogicGate_v2_44 = cbox:CreateBox("domino/System/LogicGate_v2.lua")
  l0 = self.box_LogicGate_v2_44
  l0._graph = self
  l0._name = "box_LogicGate_v2_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|943463891"
  l0.Out = self.f_box_LogicGate_v2_44_Out
  l0.Opened = DummyFunction
  l0.Closed = DummyFunction
  self.box_PlayDialogOnSoundPoint_60 = cbox:CreateBox("domino/System/PlayDialogWithSubtitle.lua")
  l0 = self.box_PlayDialogOnSoundPoint_60
  l0._graph = self
  l0._name = "box_PlayDialogOnSoundPoint_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|944728624"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_box_PlayDialogOnSoundPoint_60_Finished
  self.box_PhoneCommunicationController_33 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_33
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|959688029"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = self.f_box_PhoneCommunicationController_33_Out
  self.box_MultipleOR_36 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_36
  l0._graph = self
  l0._name = "box_MultipleOR_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|969479742"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_36_Out
  self.box_PlaySound_v2_55 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_55
  l0._graph = self
  l0._name = "box_PlaySound_v2_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|972144500"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_AI_IOPController_2 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_2
  l0._graph = self
  l0._name = "box_AI_IOPController_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|982126551"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = self.f_box_AI_IOPController_2_StartEmptyRoomCompleted
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_CLOController_50 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_50
  l0._graph = self
  l0._name = "box_CLOController_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1031957263"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_MissionLayer_v2_47 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_47
  l0._graph = self
  l0._name = "box_MissionLayer_v2_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1079809671"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_47_Unloaded
  l0.Reseted = DummyFunction
  self.box_MultipleOR_71 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_71
  l0._graph = self
  l0._name = "box_MultipleOR_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1101222389"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_71_Out
  self.box_HackableController_v2_29 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_29
  l0._graph = self
  l0._name = "box_HackableController_v2_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1138841365"
  l0.Enabled = self.f_box_HackableController_v2_29_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_PlayDialogOnSoundPoint_66 = cbox:CreateBox("domino/System/PlayDialogWithSubtitle.lua")
  l0 = self.box_PlayDialogOnSoundPoint_66
  l0._graph = self
  l0._name = "box_PlayDialogOnSoundPoint_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1147159772"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Security_Camera_Monitor_4 = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self.box_Security_Camera_Monitor_4
  l0._graph = self
  l0._name = "box_Security_Camera_Monitor_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1196848091"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Security_Camera_Monitor_4_Disabled
  l0.OnStartAccessCamera = DummyFunction
  l0.OnEndAccessCamera = self.f_box_Security_Camera_Monitor_4_OnEndAccessCamera
  l0.OnStartExitCamera = DummyFunction
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self.box_Hackable_Monitor_69 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_69
  l0._graph = self
  l0._name = "box_Hackable_Monitor_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1226507917"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = DummyFunction
  l0.HackedOn = self.f_box_Hackable_Monitor_69_HackedOn
  l0.HackedOff = self.f_box_Hackable_Monitor_69_HackedOff
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_PlayDialogOnSoundPoint_61 = cbox:CreateBox("domino/System/PlayDialogWithSubtitle.lua")
  l0 = self.box_PlayDialogOnSoundPoint_61
  l0._graph = self
  l0._name = "box_PlayDialogOnSoundPoint_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1345740538"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_box_PlayDialogOnSoundPoint_61_Finished
  self.box_Timer_v2_18 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_18
  l0._graph = self
  l0._name = "box_Timer_v2_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1370582361"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_18_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Intel_Controller_35 = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self.box_Intel_Controller_35
  l0._graph = self
  l0._name = "box_Intel_Controller_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1528519922"
  l0.Enabled = self.f_box_Intel_Controller_35_Enabled
  l0.Disabled = DummyFunction
  self.box_LogicGate_v2_63 = cbox:CreateBox("domino/System/LogicGate_v2.lua")
  l0 = self.box_LogicGate_v2_63
  l0._graph = self
  l0._name = "box_LogicGate_v2_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1626249182"
  l0.Out = self.f_box_LogicGate_v2_63_Out
  l0.Opened = DummyFunction
  l0.Closed = DummyFunction
  self.box_PlaySound_v2_37 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_37
  l0._graph = self
  l0._name = "box_PlaySound_v2_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1642016989"
  l0.Out = self.f_box_PlaySound_v2_37_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_CLOController_5 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_5
  l0._graph = self
  l0._name = "box_CLOController_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1658507315"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_5_OnUserInPlace
  self.box_CinematicPrep_34 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_34
  l0._graph = self
  l0._name = "box_CinematicPrep_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1713257710"
  l0.PreOut = DummyFunction
  l0.PostOut = DummyFunction
  self.box_PlayDialog_v2_16 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_16
  l0._graph = self
  l0._name = "box_PlayDialog_v2_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1719132958"
  l0.Started = self.f_box_PlayDialog_v2_16_Started
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_LogicGate_v2_62 = cbox:CreateBox("domino/System/LogicGate_v2.lua")
  l0 = self.box_LogicGate_v2_62
  l0._graph = self
  l0._name = "box_LogicGate_v2_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1740464885"
  l0.Out = self.f_box_LogicGate_v2_62_Out
  l0.Opened = DummyFunction
  l0.Closed = DummyFunction
  self.box_Hackable_Monitor_10 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_10
  l0._graph = self
  l0._name = "box_Hackable_Monitor_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1820299249"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_10_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_PlaySound_v2_57 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_57
  l0._graph = self
  l0._name = "box_PlaySound_v2_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1820551145"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Timer_v2_75 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_75
  l0._graph = self
  l0._name = "box_Timer_v2_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1929484893"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_75_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CLOController_49 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_49
  l0._graph = self
  l0._name = "box_CLOController_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1934087734"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_IOP_StartUp_12 = cbox:CreateBox("domino/Library/common/IOP.IOP_StartUp.debug.lua")
  l0 = self.box_IOP_StartUp_12
  l0._graph = self
  l0._name = "box_IOP_StartUp_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1941913140"
  l0.Out = self.f_box_IOP_StartUp_12_Out
  self.box_Timer_v2_27 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_27
  l0._graph = self
  l0._name = "box_Timer_v2_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1960949096"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_27_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CLOController_25 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_25
  l0._graph = self
  l0._name = "box_CLOController_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|2037089363"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_25_OnUserInPlace
  self.box_MissionController_v4_11 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_11
  l0._graph = self
  l0._name = "box_MissionController_v4_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|2073234918"
  self.box_PlaySound_v2_52 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_52
  l0._graph = self
  l0._name = "box_PlaySound_v2_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|2086498704"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlayDialogOnSoundPoint_64 = cbox:CreateBox("domino/System/PlayDialogWithSubtitle.lua")
  l0 = self.box_PlayDialogOnSoundPoint_64
  l0._graph = self
  l0._name = "box_PlayDialogOnSoundPoint_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|2089568261"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_box_PlayDialogOnSoundPoint_64_Finished
  self.box_PlaySound_v2_3 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_3
  l0._graph = self
  l0._name = "box_PlaySound_v2_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|2147189478"
  l0.Out = DummyFunction
  l0.Started = self.f_box_PlaySound_v2_3_Started
  l0.Finished = DummyFunction
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:Checkpoint_0()
  local l0
  self:OnEnter_box_MultipleOR_36()
  l0 = self.box_MultipleOR_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|908568841", "908568841", "L03M010_IOP_Main", "Checkpoint_0", "box_MultipleOR_36.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_36()
  l0 = self.box_MultipleOR_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|944023506", "944023506", "L03M010_IOP_Main", "In", "box_MultipleOR_36.Input", self, l0)
  l0:Input(0)
end
function export:f_box_Simple_Node_67_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_LogicGate_v2_65()
  l0 = self.box_LogicGate_v2_65
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1665281585", "1665281585", "L03M010_IOP_Main", "box_Simple_Node_67.Out", "box_LogicGate_v2_65.Close", clone, l0)
  l0:Close()
  self:OnEnter_box_LogicGate_v2_44()
  l0 = self.box_LogicGate_v2_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|651812692", "651812692", "L03M010_IOP_Main", "box_Simple_Node_67.Out", "box_LogicGate_v2_44.Close", clone, l0)
  l0:Close()
  self:OnEnter_box_LogicGate_v2_63()
  l0 = self.box_LogicGate_v2_63
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|520259724", "520259724", "L03M010_IOP_Main", "box_Simple_Node_67.Out", "box_LogicGate_v2_63.Close", clone, l0)
  l0:Close()
  self:OnEnter_box_LogicGate_v2_62()
  l0 = self.box_LogicGate_v2_62
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|406804796", "406804796", "L03M010_IOP_Main", "box_Simple_Node_67.Out", "box_LogicGate_v2_62.Close", clone, l0)
  l0:Close()
end
function export:f_box_PlaySound_v2_42_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|257104213"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_8_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_8_Out_1
  l0 = self.box_PlaySound_v2_42
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|186385761", "186385761", "L03M010_IOP_Main", "box_PlaySound_v2_42.Out", "box_Ordered_Output_8.In", l0, l1)
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
  l0 = self.box_Hackable_Monitor_68
  l0.HackableEntity = "9223372068204167239"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1574134929", "1574134929", "L03M010_IOP_Main", "box_Ordered_Output_56.Out", "box_Hackable_Monitor_68.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_56_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_19
  l0.HackableEntity = "9223372068204167242"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|499642935", "499642935", "L03M010_IOP_Main", "box_Ordered_Output_56.Out", "box_Hackable_Monitor_19.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_56_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_54
  l0.HackableEntity = "9223372068204167082"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|555077871", "555077871", "L03M010_IOP_Main", "box_Ordered_Output_56.Out", "box_Hackable_Monitor_54.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_56_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_69
  l0.HackableEntity = "9223372068204167086"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1210083940", "1210083940", "L03M010_IOP_Main", "box_Ordered_Output_56.Out", "box_Hackable_Monitor_69.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_CLOController_9_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_9
  self.PatPlourde = l0.UserID
  l0 = self.box_CLOController_25
  l0.CLO = "9223372056381150784"
  l0 = self.box_CLOController_9
  l1 = self.box_CLOController_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|509020960", "509020960", "L03M010_IOP_Main", "box_CLOController_9.OnUserInPlace", "box_CLOController_25.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_MultipleOR_70_Out()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: Play AMB", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlaySound_v2')-- Comment: Play AMB")
  l0 = self.box_PlaySound_v2_55
  l0.Entity = "9223372066393554740"
  l0.SoundId = "soundbinary/2993216076.bnk"
  l0 = self.box_MultipleOR_70
  l1 = self.box_PlaySound_v2_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|2012528011", "2012528011", "L03M010_IOP_Main", "box_MultipleOR_70.Out", "box_PlaySound_v2_55.Play", l0, l1)
  l1:Play()
end
function export:f_box_HackableController_v2_30_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Hackable_Monitor_15
  l0.HackableEntity = "9223372064475970149"
  l0 = self.box_HackableController_v2_30
  l1 = self.box_Hackable_Monitor_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|949239349", "949239349", "L03M010_IOP_Main", "box_HackableController_v2_30.Enabled", "box_Hackable_Monitor_15.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_PlaySound_v2_40_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_16
  l0.Entity = "9223372059710467576"
  l0.SoundId = "soundbinary/3651191950.bnk"
  l0 = self.box_PlaySound_v2_40
  l1 = self.box_PlayDialog_v2_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|228722311", "228722311", "L03M010_IOP_Main", "box_PlaySound_v2_40.Out", "box_PlayDialog_v2_16.Start", l0, l1)
  l1:Start()
end
function export:f_box_HackableController_v2_31_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Hackable_Monitor_10
  l0.HackableEntity = "9223372064475970165"
  l0 = self.box_HackableController_v2_31
  l1 = self.box_Hackable_Monitor_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1015049572", "1015049572", "L03M010_IOP_Main", "box_HackableController_v2_31.Enabled", "box_Hackable_Monitor_10.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Show_Or_Hide_All_UI_41_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOPController_6
  l0.EmptyRoomName = "L03M010_UbiSanFrancisco"
  l0.PlayerEntity = self.PlayerEntity
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1975104741", "1975104741", "L03M010_IOP_Main", "box_Show_Or_Hide_All_UI_41.Out", "box_AI_IOPController_6.StopEmptyRoomIOP", clone, l0)
  l0:StopEmptyRoomIOP()
end
function export:f_box_Ordered_Output_8_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/BinkVideoPlayer_v3.lua")]
  l0.BinkFileName = nil
  l0.VideoDbObject = "Videos.9223372060408971602"
  l0.ExternalSoundId = "soundbinary/477958559.bnk"
  l0.OnSkipSoundId = "soundbinary/2743351303.bnk"
  l0.Seconds = nil
  l0.CanBeSkip = 1
  l0.NoActionMap = nil
  l0.EnableAlpha = nil
  l0.UseSubtitle = nil
  l0.PlayEmbeddedAudio = nil
  l0.PauseGame = nil
  l0.OverrideSubtitle = nil
  l0._graph = self
  l0._name = "box_BinkVideoPlayer_v3_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1153537470"
  l0.Started = self.f_box_BinkVideoPlayer_v3_22_Started
  l0.TimeElapsed = DummyFunction
  l0.Stopped = DummyFunction
  l0.Finished = self.f_box_BinkVideoPlayer_v3_22_Finished
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|676260250", "676260250", "L03M010_IOP_Main", "box_Ordered_Output_8.Out", "box_BinkVideoPlayer_v3_22.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_8_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|@StopDialog"
  l0.Out = self.f_box_Simple_Node_67_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1707077156", "1707077156", "L03M010_IOP_Main", "box_Ordered_Output_8.Out", "box_Simple_Node_67.In", clone, l0)
  l0:In()
end
function export:f_box_PlaySound_v2_20_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_33
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357367229"
  l0 = self.box_PlaySound_v2_20
  l1 = self.box_PhoneCommunicationController_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1576395618", "1576395618", "L03M010_IOP_Main", "box_PlaySound_v2_20.Started", "box_PhoneCommunicationController_33.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_LogicGate_v2_65_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialogOnSoundPoint_66
  l0.Entity = self.BarkSoundEntity_MeetingChatter
  l0.SoundId = "soundbinary/2033963785.bnk"
  l0 = self.box_LogicGate_v2_65
  l1 = self.box_PlayDialogOnSoundPoint_66
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1239362252", "1239362252", "L03M010_IOP_Main", "box_LogicGate_v2_65.Out", "box_PlayDialogOnSoundPoint_66.Play", l0, l1)
  l1:Play()
end
function export:f_box_AI_IOPController_6_StopEmptyRoomCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_IOP_CleanUp_14
  l0.SecurityCameraList = self.SecurityCameraList
  l0 = self.box_AI_IOPController_6
  l1 = self.box_IOP_CleanUp_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1414109462", "1414109462", "L03M010_IOP_Main", "box_AI_IOPController_6.StopEmptyRoomCompleted", "box_IOP_CleanUp_14.In", l0, l1)
  l1:In()
end
function export:f_box_ListWriter_59_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_59
  self.SecurityCameraList = l0.Target
  l0 = self.box_PlaySound_v2_3
  l0.SoundId = "soundbinary/3973683875.bnk"
  l0 = self.box_ListWriter_59
  l1 = self.box_PlaySound_v2_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1392212470", "1392212470", "L03M010_IOP_Main", "box_ListWriter_59.Added", "box_PlaySound_v2_3.Play", l0, l1)
  l1:Play()
end
function export:f_box_ListWriter_59_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_59
  self.SecurityCameraList = l0.Target
end
function export:f_box_ListWriter_59_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_59
  self.SecurityCameraList = l0.Target
end
function export:f_box_MultipleOR_53_Out()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: Play AMB", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlaySound_v2')-- Comment: Play AMB")
  l0 = self.box_PlaySound_v2_73
  l0.Entity = "9223372066393554907"
  l0.SoundId = "soundbinary/2137140386.bnk"
  l0 = self.box_MultipleOR_53
  l1 = self.box_PlaySound_v2_73
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|2140581744", "2140581744", "L03M010_IOP_Main", "box_MultipleOR_53.Out", "box_PlaySound_v2_73.Play", l0, l1)
  l1:Play()
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
  l0 = self.box_IOP_StartUp_12
  l0.MainLayer = "L03M010_Main_IOP"
  l0.CheckPoint = "Checkpoint_0"
  l0.CinemaZone = "9223372060001341228"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1528255257", "1528255257", "L03M010_IOP_Main", "box_Get_Player_ID_24.Out", "box_IOP_StartUp_12.In", clone, l0)
  l0:In()
end
function export:f_box_Security_Camera_Monitor_74_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_75
  l0.Seconds = 0.5
  l0 = self.box_Security_Camera_Monitor_74
  l1 = self.box_Timer_v2_75
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|906808561", "906808561", "L03M010_IOP_Main", "box_Security_Camera_Monitor_74.Disabled", "box_Timer_v2_75.Start", l0, l1)
  l1:Start()
end
function export:f_box_Security_Camera_Monitor_74_OnEndAccessCamera()
  local l0
  self = self._graph
  self:OnEnter_box_Security_Camera_Monitor_74()
  l0 = self.box_Security_Camera_Monitor_74
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|674133288", "674133288", "L03M010_IOP_Main", "box_Security_Camera_Monitor_74.OnEndAccessCamera", "box_Security_Camera_Monitor_74.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Hackable_Monitor_68_HackedOff()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_70()
  l0 = self.box_Hackable_Monitor_68
  l1 = self.box_MultipleOR_70
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1348113132", "1348113132", "L03M010_IOP_Main", "box_Hackable_Monitor_68.HackedOff", "box_MultipleOR_70.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Hackable_Monitor_68_HackedOn()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_72()
  l0 = self.box_Hackable_Monitor_68
  l1 = self.box_MultipleOR_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1380250977", "1380250977", "L03M010_IOP_Main", "box_Hackable_Monitor_68.HackedOn", "box_MultipleOR_72.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Timer_v2_21_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_20
  l0.SoundId = "soundbinary/2422823228.bnk"
  l0 = self.box_Timer_v2_21
  l1 = self.box_PlaySound_v2_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1849816821", "1849816821", "L03M010_IOP_Main", "box_Timer_v2_21.TimeElapsed", "box_PlaySound_v2_20.Play", l0, l1)
  l1:Play()
end
function export:f_box_PhoneCommunicationController_28_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1792513643"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_39_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_39_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_39_Out_2
  l0 = self.box_PhoneCommunicationController_28
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|889966206", "889966206", "L03M010_IOP_Main", "box_PhoneCommunicationController_28.Out", "box_Ordered_Output_39.In", l0, l1)
  l1:In()
end
function export:f_box_Hackable_Monitor_19_HackedOff()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_70()
  l0 = self.box_Hackable_Monitor_19
  l1 = self.box_MultipleOR_70
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1806252543", "1806252543", "L03M010_IOP_Main", "box_Hackable_Monitor_19.HackedOff", "box_MultipleOR_70.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Hackable_Monitor_19_HackedOn()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_72()
  l0 = self.box_Hackable_Monitor_19
  l1 = self.box_MultipleOR_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|103248421", "103248421", "L03M010_IOP_Main", "box_Hackable_Monitor_19.HackedOn", "box_MultipleOR_72.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Hackable_Monitor_13_HackSuccess()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_29()
  l0 = self.box_Hackable_Monitor_13
  l1 = self.box_HackableController_v2_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1667540088", "1667540088", "L03M010_IOP_Main", "box_Hackable_Monitor_13.HackSuccess", "box_HackableController_v2_29.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_PlayDialogOnSoundPoint_23_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_LogicGate_v2_44()
  l0 = self.box_PlayDialogOnSoundPoint_23
  l1 = self.box_LogicGate_v2_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1417426567", "1417426567", "L03M010_IOP_Main", "box_PlayDialogOnSoundPoint_23.Finished", "box_LogicGate_v2_44.In", l0, l1)
  l1:In()
end
function export:f_box_IOP_CleanUp_14_Completed()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_47
  l0.LayerName = "L03M010_Main_IOP"
  l0 = self.box_IOP_CleanUp_14
  l1 = self.box_MissionLayer_v2_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1939629494", "1939629494", "L03M010_IOP_Main", "box_IOP_CleanUp_14.Completed", "box_MissionLayer_v2_47.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_IOP_CleanUp_14_DisconnectedAnimationPlayed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1293519995"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_51_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_51_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_51_Out_2
  l0 = self.box_IOP_CleanUp_14
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|550412378", "550412378", "L03M010_IOP_Main", "box_IOP_CleanUp_14.DisconnectedAnimationPlayed", "box_Ordered_Output_51.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_72_Out()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: Play AMB", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlaySound_v2')-- Comment: Play AMB")
  l0 = self.box_PlaySound_v2_52
  l0.Entity = "9223372066393554740"
  l0.SoundId = "soundbinary/2137140386.bnk"
  l0 = self.box_MultipleOR_72
  l1 = self.box_PlaySound_v2_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|323110633", "323110633", "L03M010_IOP_Main", "box_MultipleOR_72.Out", "box_PlaySound_v2_52.Play", l0, l1)
  l1:Play()
end
function export:f_box_Hackable_Monitor_54_HackedOff()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_71()
  l0 = self.box_Hackable_Monitor_54
  l1 = self.box_MultipleOR_71
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1488102354", "1488102354", "L03M010_IOP_Main", "box_Hackable_Monitor_54.HackedOff", "box_MultipleOR_71.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Hackable_Monitor_54_HackedOn()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_53()
  l0 = self.box_Hackable_Monitor_54
  l1 = self.box_MultipleOR_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|2061830197", "2061830197", "L03M010_IOP_Main", "box_Hackable_Monitor_54.HackedOn", "box_MultipleOR_53.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Hackable_Monitor_15_HackSuccess()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_30()
  l0 = self.box_Hackable_Monitor_15
  l1 = self.box_HackableController_v2_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|986543257", "986543257", "L03M010_IOP_Main", "box_Hackable_Monitor_15.HackSuccess", "box_HackableController_v2_30.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_LogicGate_v2_44_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialogOnSoundPoint_64
  l0.Entity = self.BarkSoundEntity_MeetingChatter
  l0.SoundId = "soundbinary/225637632.bnk"
  l0 = self.box_LogicGate_v2_44
  l1 = self.box_PlayDialogOnSoundPoint_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|2066617644", "2066617644", "L03M010_IOP_Main", "box_LogicGate_v2_44.Out", "box_PlayDialogOnSoundPoint_64.Play", l0, l1)
  l1:Play()
end
function export:f_box_PlayDialogOnSoundPoint_60_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_LogicGate_v2_63()
  l0 = self.box_PlayDialogOnSoundPoint_60
  l1 = self.box_LogicGate_v2_63
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|439412339", "439412339", "L03M010_IOP_Main", "box_PlayDialogOnSoundPoint_60.Finished", "box_LogicGate_v2_63.In", l0, l1)
  l1:In()
end
function export:f_box_PhoneCommunicationController_33_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_33
  l1 = self.box_MissionController_v4_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1764489992", "1764489992", "L03M010_IOP_Main", "box_PhoneCommunicationController_33.Out", "box_MissionController_v4_11.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_Ordered_Output_32_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Intel_Controller_35
  l0.Entity = "9223372064475970165"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1197362577", "1197362577", "L03M010_IOP_Main", "box_Ordered_Output_32.Out", "box_Intel_Controller_35.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_32_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_29()
  l0 = self.box_HackableController_v2_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|406287587", "406287587", "L03M010_IOP_Main", "box_Ordered_Output_32.Out", "box_HackableController_v2_29.EnableHack", clone, l0)
  l0:EnableHack()
end
function export:f_box_Ordered_Output_32_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_30()
  l0 = self.box_HackableController_v2_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|881112835", "881112835", "L03M010_IOP_Main", "box_Ordered_Output_32.Out", "box_HackableController_v2_30.EnableHack", clone, l0)
  l0:EnableHack()
end
function export:f_box_Ordered_Output_32_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Security_Camera_Monitor_4()
  l0 = self.box_Security_Camera_Monitor_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|48651471", "48651471", "L03M010_IOP_Main", "box_Ordered_Output_32.Out", "box_Security_Camera_Monitor_4.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MultipleOR_36_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|589583248"
  l0.Out = self.f_box_Get_Player_ID_24_Out
  l0 = self.box_MultipleOR_36
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|144547745", "144547745", "L03M010_IOP_Main", "box_MultipleOR_36.Out", "box_Get_Player_ID_24.In", l0, l1)
  l1:In()
end
function export:f_box_AI_IOPController_2_StartEmptyRoomCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SecurityCamController_26()
  l0 = self.box_AI_IOPController_2
  l1 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1057752533", "1057752533", "L03M010_IOP_Main", "box_AI_IOPController_2.StartEmptyRoomCompleted", "box_SecurityCamController_26.ForceEnter", l0, l1)
  l1:ForceEnter()
end
function export:f_box_Ordered_Output_48_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Security_Camera_Monitor_74()
  l0 = self.box_Security_Camera_Monitor_74
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1886148305", "1886148305", "L03M010_IOP_Main", "box_Ordered_Output_48.Out", "box_Security_Camera_Monitor_74.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_48_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_28
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357372609"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1795975190", "1795975190", "L03M010_IOP_Main", "box_Ordered_Output_48.Out", "box_PhoneCommunicationController_28.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_Ordered_Output_7_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_9
  l0.CLO = "9223372056381150805"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|974906032", "974906032", "L03M010_IOP_Main", "box_Ordered_Output_7.Out", "box_CLOController_9.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_MissionLayer_v2_47_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_21
  l0.Seconds = 1
  l0 = self.box_MissionLayer_v2_47
  l1 = self.box_Timer_v2_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1314298360", "1314298360", "L03M010_IOP_Main", "box_MissionLayer_v2_47.Unloaded", "box_Timer_v2_21.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_71_Out()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: Play AMB", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlaySound_v2')-- Comment: Play AMB")
  l0 = self.box_PlaySound_v2_57
  l0.Entity = "9223372066393554907"
  l0.SoundId = "soundbinary/2993216076.bnk"
  l0 = self.box_MultipleOR_71
  l1 = self.box_PlaySound_v2_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|608314602", "608314602", "L03M010_IOP_Main", "box_MultipleOR_71.Out", "box_PlaySound_v2_57.Play", l0, l1)
  l1:Play()
end
function export:f_box_HackableController_v2_29_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Hackable_Monitor_13
  l0.HackableEntity = "9223372064475970163"
  l0 = self.box_HackableController_v2_29
  l1 = self.box_Hackable_Monitor_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|442935984", "442935984", "L03M010_IOP_Main", "box_HackableController_v2_29.Enabled", "box_Hackable_Monitor_13.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_BinkVideoPlayer_v3_22_Finished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/BinkVideoPlayer_v3.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|247362429"
  l0.Out = self.f_box_Show_Or_Hide_All_UI_41_Out
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1560972706", "1560972706", "L03M010_IOP_Main", "box_BinkVideoPlayer_v3_22.Finished", "box_Show_Or_Hide_All_UI_41.Show", clone, l0)
  l0:Show()
end
function export:f_box_BinkVideoPlayer_v3_22_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/BinkVideoPlayer_v3.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  DrawTextToScreen("Comment: Stop AMB", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlaySound_v2')-- Comment: Stop AMB")
  l0 = self.box_PlaySound_v2_40
  l0.SoundId = "soundbinary/3977174080.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1012830263", "1012830263", "L03M010_IOP_Main", "box_BinkVideoPlayer_v3_22.Started", "box_PlaySound_v2_40.Play", clone, l0)
  l0:Play()
end
function export:f_box_Security_Camera_Monitor_4_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialogOnSoundPoint_60
  l0.Entity = self.BarkSoundEntity_MeetingChatter
  l0.SoundId = "soundbinary/3677513328.bnk"
  l0 = self.box_Security_Camera_Monitor_4
  l1 = self.box_PlayDialogOnSoundPoint_60
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|30265530", "30265530", "L03M010_IOP_Main", "box_Security_Camera_Monitor_4.Disabled", "box_PlayDialogOnSoundPoint_60.Play", l0, l1)
  l1:Play()
end
function export:f_box_Security_Camera_Monitor_4_OnEndAccessCamera()
  local l0
  self = self._graph
  self:OnEnter_box_Security_Camera_Monitor_4()
  l0 = self.box_Security_Camera_Monitor_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|263716502", "263716502", "L03M010_IOP_Main", "box_Security_Camera_Monitor_4.OnEndAccessCamera", "box_Security_Camera_Monitor_4.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Hackable_Monitor_69_HackedOff()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_71()
  l0 = self.box_Hackable_Monitor_69
  l1 = self.box_MultipleOR_71
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|656496138", "656496138", "L03M010_IOP_Main", "box_Hackable_Monitor_69.HackedOff", "box_MultipleOR_71.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Hackable_Monitor_69_HackedOn()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_53()
  l0 = self.box_Hackable_Monitor_69
  l1 = self.box_MultipleOR_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|157887132", "157887132", "L03M010_IOP_Main", "box_Hackable_Monitor_69.HackedOn", "box_MultipleOR_53.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_SecurityCamController_26_CanExitSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1022436899"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_48_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_48_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|73069455", "73069455", "L03M010_IOP_Main", "box_SecurityCamController_26.CanExitSet", "box_Ordered_Output_48.In", clone, l0)
  l0:In()
end
function export:f_box_SecurityCamController_26_EnterForced()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SecurityCamController_26()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1251014114", "1251014114", "L03M010_IOP_Main", "box_SecurityCamController_26.EnterForced", "box_SecurityCamController_26.SetCanExit", clone, l0)
  l0:SetCanExit()
end
function export:f_box_Ordered_Output_51_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_46
  l0.User = self.PatPlourde
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1712676032", "1712676032", "L03M010_IOP_Main", "box_Ordered_Output_51.Out", "box_CLOController_46.UnspawnUser", clone, l0)
  l0:UnspawnUser()
end
function export:f_box_Ordered_Output_51_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_49
  l0.User = self.FemaleEmp
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|320525256", "320525256", "L03M010_IOP_Main", "box_Ordered_Output_51.Out", "box_CLOController_49.UnspawnUser", clone, l0)
  l0:UnspawnUser()
end
function export:f_box_Ordered_Output_51_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_50
  l0.User = self.MaleEmpl
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|2090818876", "2090818876", "L03M010_IOP_Main", "box_Ordered_Output_51.Out", "box_CLOController_50.UnspawnUser", clone, l0)
  l0:UnspawnUser()
end
function export:f_box_PlayDialogOnSoundPoint_61_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_LogicGate_v2_62()
  l0 = self.box_PlayDialogOnSoundPoint_61
  l1 = self.box_LogicGate_v2_62
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|928419453", "928419453", "L03M010_IOP_Main", "box_PlayDialogOnSoundPoint_61.Finished", "box_LogicGate_v2_62.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_18_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|2063955994"
  l0.Out = self.f_box_Show_Or_Hide_All_UI_45_Out
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0 = self.box_Timer_v2_18
  l1 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1889802450", "1889802450", "L03M010_IOP_Main", "box_Timer_v2_18.TimeElapsed", "box_Show_Or_Hide_All_UI_45.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Ordered_Output_17_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_DistanceBasedProgressBarController_v2_58
  l0.Text = {
    section = "HACKING.Interface Messages",
    item = "Downloading",
    id = "550990"
  }
  l0.TotalTime = 3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|431425420", "431425420", "L03M010_IOP_Main", "box_Ordered_Output_17.Out", "box_DistanceBasedProgressBarController_v2_58.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_17_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_31()
  l0 = self.box_HackableController_v2_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|2054901267", "2054901267", "L03M010_IOP_Main", "box_Ordered_Output_17.Out", "box_HackableController_v2_31.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_Ordered_Output_17_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_31()
  l0 = self.box_HackableController_v2_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1089025606", "1089025606", "L03M010_IOP_Main", "box_Ordered_Output_17.Out", "box_HackableController_v2_31.DisableProfiling", clone, l0)
  l0:DisableProfiling()
end
function export:f_box_Ordered_Output_17_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_18
  l0.Seconds = 3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1482598396", "1482598396", "L03M010_IOP_Main", "box_Ordered_Output_17.Out", "box_Timer_v2_18.Start", clone, l0)
  l0:Start()
end
function export:f_box_Intel_Controller_35_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_31()
  l0 = self.box_Intel_Controller_35
  l1 = self.box_HackableController_v2_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|2070071063", "2070071063", "L03M010_IOP_Main", "box_Intel_Controller_35.Enabled", "box_HackableController_v2_31.EnableHack", l0, l1)
  l1:EnableHack()
end
function export:f_box_LogicGate_v2_63_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialogOnSoundPoint_61
  l0.Entity = self.BarkSoundEntity_MeetingChatter
  l0.SoundId = "soundbinary/416194221.bnk"
  l0 = self.box_LogicGate_v2_63
  l1 = self.box_PlayDialogOnSoundPoint_61
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|246375168", "246375168", "L03M010_IOP_Main", "box_LogicGate_v2_63.Out", "box_PlayDialogOnSoundPoint_61.Play", l0, l1)
  l1:Play()
end
function export:f_box_PlaySound_v2_37_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1076902701"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_7_Out_0
  l0.Out[1] = DummyFunction
  l0 = self.box_PlaySound_v2_37
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|2121479140", "2121479140", "L03M010_IOP_Main", "box_PlaySound_v2_37.Out", "box_Ordered_Output_7.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_5_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_5
  self.FemaleEmp = l0.UserID
  l0 = self.box_AI_IOPController_2
  l0.EmptyRoomName = "L03M010_UbiSanFrancisco"
  l0.PlayerEntity = self.PlayerEntity
  l0 = self.box_CLOController_5
  l1 = self.box_AI_IOPController_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1388820379", "1388820379", "L03M010_IOP_Main", "box_CLOController_5.OnUserInPlace", "box_AI_IOPController_2.StartEmptyRoomIOP", l0, l1)
  l1:StartEmptyRoomIOP()
end
function export:f_box_PlayDialog_v2_16_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = "9223372056381150804"
  l0.CameraEntityList = nil
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = nil
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0._name = "box_SecurityCamController_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|26359320"
  l0.EnterSet = DummyFunction
  l0.CanExitSet = DummyFunction
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = DummyFunction
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
  l0 = self.box_PlayDialog_v2_16
  l1 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|230571554", "230571554", "L03M010_IOP_Main", "box_PlayDialog_v2_16.Started", "box_SecurityCamController_43.ForceUserOutOfCamera", l0, l1)
  l1:ForceUserOutOfCamera()
end
function export:f_box_LogicGate_v2_62_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialogOnSoundPoint_23
  l0.Entity = self.BarkSoundEntity_MeetingChatter
  l0.SoundId = "soundbinary/2442748611.bnk"
  l0 = self.box_LogicGate_v2_62
  l1 = self.box_PlayDialogOnSoundPoint_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|983297674", "983297674", "L03M010_IOP_Main", "box_LogicGate_v2_62.Out", "box_PlayDialogOnSoundPoint_23.Play", l0, l1)
  l1:Play()
end
function export:f_box_Ordered_Output_39_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_27
  l0.Seconds = 3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1441141752", "1441141752", "L03M010_IOP_Main", "box_Ordered_Output_39.Out", "box_Timer_v2_27.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_39_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  DrawTextToScreen("Comment: Play AMB", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlaySound_v2')-- Comment: Play AMB")
  l0 = self.box_PlaySound_v2_38
  l0.SoundId = "soundbinary/1549650036.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|613378519", "613378519", "L03M010_IOP_Main", "box_Ordered_Output_39.Out", "box_PlaySound_v2_38.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_39_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|95425882"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_56_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_56_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_56_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_56_Out_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|154167142", "154167142", "L03M010_IOP_Main", "box_Ordered_Output_39.Out", "box_Ordered_Output_56.In", clone, l0)
  l0:In()
end
function export:f_box_Hackable_Monitor_10_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1402263572"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_17_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_17_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_17_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_17_Out_3
  l0 = self.box_Hackable_Monitor_10
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|147093080", "147093080", "L03M010_IOP_Main", "box_Hackable_Monitor_10.HackSuccess", "box_Ordered_Output_17.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_75_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_34
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_Timer_v2_75
  l1 = self.box_CinematicPrep_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1098787479", "1098787479", "L03M010_IOP_Main", "box_Timer_v2_75.TimeElapsed", "box_CinematicPrep_34.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_IOP_StartUp_12_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_59
  l0.Input = self.SecurityCameraList
  l0.Data[0] = "9223372056381150793"
  l0.Data[1] = "9223372056381150800"
  l0.Data[2] = "9223372056381150815"
  l0.Data[3] = "9223372056381150809"
  l0.Data[4] = "9223372056381150817"
  l0.Data[5] = "9223372056381150791"
  l0.Data[6] = "9223372056381150804"
  l0.Data[7] = "9223372056381150807"
  l0.Data[8] = "9223372064358453925"
  l0 = self.box_IOP_StartUp_12
  l1 = self.box_ListWriter_59
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|497440195", "497440195", "L03M010_IOP_Main", "box_IOP_StartUp_12.Out", "box_ListWriter_59.Add", l0, l1)
  l1:Add()
end
function export:f_box_Timer_v2_27_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|960973140"
  l0._DynamicAnchors = {Out = 6}
  l0.Out[0] = self.f_box_Ordered_Output_32_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_32_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_32_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_32_Out_3
  l0.Out[4] = DummyFunction
  l0.Out[5] = DummyFunction
  l0 = self.box_Timer_v2_27
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1620851575", "1620851575", "L03M010_IOP_Main", "box_Timer_v2_27.TimeElapsed", "box_Ordered_Output_32.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_25_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_25
  self.MaleEmpl = l0.UserID
  l0 = self.box_CLOController_5
  l0.CLO = "9223372056381150785"
  l0 = self.box_CLOController_25
  l1 = self.box_CLOController_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|94254812", "94254812", "L03M010_IOP_Main", "box_CLOController_25.OnUserInPlace", "box_CLOController_5.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Show_Or_Hide_All_UI_45_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_42
  l0.Entity = "9223372059710467576"
  l0.SoundId = "soundbinary/3651191950.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1603319061", "1603319061", "L03M010_IOP_Main", "box_Show_Or_Hide_All_UI_45.Out", "box_PlaySound_v2_42.Play", clone, l0)
  l0:Play()
end
function export:f_box_PlayDialogOnSoundPoint_64_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_LogicGate_v2_65()
  l0 = self.box_PlayDialogOnSoundPoint_64
  l1 = self.box_LogicGate_v2_65
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|934452133", "934452133", "L03M010_IOP_Main", "box_PlayDialogOnSoundPoint_64.Finished", "box_LogicGate_v2_65.In", l0, l1)
  l1:In()
end
function export:f_box_PlaySound_v2_3_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_37
  l0.SoundId = "soundbinary/3035919121.bnk"
  l0 = self.box_PlaySound_v2_3
  l1 = self.box_PlaySound_v2_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1781381619", "1781381619", "L03M010_IOP_Main", "box_PlaySound_v2_3.Started", "box_PlaySound_v2_37.Play", l0, l1)
  l1:Play()
end
function export:OnEnter_box_MultipleOR_70()
end
function export:OnEnter_box_HackableController_v2_30()
  local l0
  l0 = self.box_HackableController_v2_30
  l0.HackableEntity = "9223372064475970149"
  l0.ProfileLinkedToHack = 1
end
function export:OnEnter_box_HackableController_v2_31()
  local l0
  l0 = self.box_HackableController_v2_31
  l0.HackableEntity = "9223372064475970165"
end
function export:OnEnter_box_LogicGate_v2_65()
end
function export:OnEnter_box_MultipleOR_53()
end
function export:OnEnter_box_Security_Camera_Monitor_74()
  local l0
  l0 = self.box_Security_Camera_Monitor_74
  l0.CameraEntity = "9223372064358453925"
end
function export:OnEnter_box_MultipleOR_72()
end
function export:OnEnter_box_LogicGate_v2_44()
end
function export:OnEnter_box_MultipleOR_36()
end
function export:OnEnter_box_MultipleOR_71()
end
function export:OnEnter_box_HackableController_v2_29()
  local l0
  l0 = self.box_HackableController_v2_29
  l0.HackableEntity = "9223372064475970163"
  l0.ProfileLinkedToHack = 1
end
function export:OnEnter_box_Security_Camera_Monitor_4()
  local l0
  l0 = self.box_Security_Camera_Monitor_4
  l0.CameraEntity = "9223372056381150793"
end
function export:OnEnter_box_SecurityCamController_26()
  local l0
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = "9223372064358453925"
  l0.CameraEntityList = nil
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = 0
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0._name = "box_SecurityCamController_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M010_IOP.domino|@L03M010_IOP_Main|1243644825"
  l0.EnterSet = DummyFunction
  l0.CanExitSet = self.f_box_SecurityCamController_26_CanExitSet
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = self.f_box_SecurityCamController_26_EnterForced
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
end
function export:OnEnter_box_LogicGate_v2_63()
end
function export:OnEnter_box_LogicGate_v2_62()
end
_compilerVersion = 4
