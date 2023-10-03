export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/IOPPropController.lua")
  cbox:RegisterBox("domino/System/IOPController.lua")
  cbox:RegisterBox("domino/System/Bind_v2.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CollisionController.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/System/CompareIntegers_v2.lua")
  cbox:RegisterBox("domino/System/ProfilerController.lua")
  cbox:RegisterBox("domino/System/DebugExecuteConsole_v2.lua")
  cbox:RegisterBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/System/IndexedOutput_v2.lua")
  cbox:RegisterBox("domino/System/IntegerArithmetics.lua")
  cbox:RegisterBox("domino/Library/common/IOP.IOP_CleanUp.debug.lua")
  cbox:RegisterBox("domino/Library/common/IOP.IOP_StartUp.debug.lua")
  cbox:RegisterBox("domino/System/IOPMonitor.lua")
  cbox:RegisterBox("domino/System/IOPPropMonitor.lua")
  cbox:RegisterBox("domino/System/LightController.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/MediaSystemCustomBroadcastController.lua")
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
  cbox:RegisterBox("domino/System/SetActionMap_v2.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/SetInteger_v2.lua")
  cbox:RegisterBox("domino/System/FleeBehaviorController.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
  cbox:LoadResource("soundbinary/935004165.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/923207234.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/4283624238.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2930849636.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3255868609.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2881901905.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/258765896.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/740598824.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/4061762572.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/702073974.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "IOP20_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main"
  self.PlayerEntity = nil
  self.Cameras = {}
  self.MainCharacter = nil
  self.Neighbor = nil
  self.Toy_Rabbit = "9223372043763416680"
  self.ChildsPlay_StartCamera = "9223372044368782269"
  self.PostIOP_Freaked_Cole = nil
  self.AccessID_FP_IOP_01_ChildsPlay_0 = "9223372043845271987"
  self.Cole = "731403337530798950"
  self.HardDrive_Reader = "9223372043763416684"
  self.PostIOP_Cole = "8460869558197632768"
  self.MonitorState = 0
  self.Hackable_Router = "9223372049412868611"
  self.ColeIsFreaked = 0
  self.Rabbit_SoundPoint = "9223372044759809990"
  self.StaticOverride = 0
  self.HddSounds = 0
  self.Headset = "9223372044368741592"
  self.iop_childsplay_animatedmonitors_0 = "9223372044167946069"
  self.HeadsetProp = nil
  self.SecurityCameraList = {}
  self.box_PhoneCommunicationController_8 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_8
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1513176"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = self.f_box_PhoneCommunicationController_8_Out
  self.box_MissionMessageController_v3_134 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_134
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_134"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|8872693"
  l0.Out = self.f_box_MissionMessageController_v3_134_Out
  l0.MessageCompleted = DummyFunction
  self.box_PhoneCommunicationController_64 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_64
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|23352194"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_64_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Timer_v2_87 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_87
  l0._graph = self
  l0._name = "box_Timer_v2_87"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|27431719"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_87_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_HackableController_v2_35 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_35
  l0._graph = self
  l0._name = "box_HackableController_v2_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|87084912"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = self.f_box_HackableController_v2_35_OverrideHackingTextSet
  self.box_AI_IOPController_132 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_132
  l0._graph = self
  l0._name = "box_AI_IOPController_132"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|102340291"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_CLOController_45 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_45
  l0._graph = self
  l0._name = "box_CLOController_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|133955189"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_45_OnUserInPlace
  self.box_HackableController_v2_79 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_79
  l0._graph = self
  l0._name = "box_HackableController_v2_79"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|143552598"
  l0.Enabled = self.f_box_HackableController_v2_79_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = self.f_box_HackableController_v2_79_ProfilingEnabled
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_HackableController_v2_115 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_115
  l0._graph = self
  l0._name = "box_HackableController_v2_115"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|177267649"
  l0.Enabled = self.f_box_HackableController_v2_115_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = self.f_box_HackableController_v2_115_ProfilingEnabled
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_DistanceBasedProgressBarController_v2_88 = cbox:CreateBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  l0 = self.box_DistanceBasedProgressBarController_v2_88
  l0._graph = self
  l0._name = "box_DistanceBasedProgressBarController_v2_88"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|201536415"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.WasReset = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = DummyFunction
  self.box_PlaySound_v2_15 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_15
  l0._graph = self
  l0._name = "box_PlaySound_v2_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|214978011"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_128 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_128
  l0._graph = self
  l0._name = "box_PlaySound_v2_128"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|225251921"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_54 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_54
  l0._graph = self
  l0._name = "box_PlaySound_v2_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|243725877"
  l0.Out = DummyFunction
  l0.Started = self.f_box_PlaySound_v2_54_Started
  l0.Finished = DummyFunction
  self.box_Hackable_Monitor_49 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_49
  l0._graph = self
  l0._name = "box_Hackable_Monitor_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|248228436"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Hackable_Monitor_49_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_49_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_HackableController_v2_113 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_113
  l0._graph = self
  l0._name = "box_HackableController_v2_113"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|254532601"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_113_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_MissionMessageController_v3_34 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_34
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|317257442"
  l0.Out = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_IOPMonitor_133 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_133
  l0._graph = self
  l0._name = "box_IOPMonitor_133"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|318610639"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_box_IOPMonitor_133_EventOccurred
  l0.Out = DummyFunction
  self.box_AI_IOPController_78 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_78
  l0._graph = self
  l0._name = "box_AI_IOPController_78"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|349509190"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_IOP_StartUp_5 = cbox:CreateBox("domino/Library/common/IOP.IOP_StartUp.debug.lua")
  l0 = self.box_IOP_StartUp_5
  l0._graph = self
  l0._name = "box_IOP_StartUp_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|361722945"
  l0.Out = self.f_box_IOP_StartUp_5_Out
  self.box_IOPMonitor_4 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_4
  l0._graph = self
  l0._name = "box_IOPMonitor_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|381494320"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_IOPMonitor_4_Disabled
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_box_IOPMonitor_4_EventOccurred
  l0.Out = DummyFunction
  self.box_HackableController_v2_112 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_112
  l0._graph = self
  l0._name = "box_HackableController_v2_112"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|388327921"
  l0.Enabled = self.f_box_HackableController_v2_112_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = self.f_box_HackableController_v2_112_ProfilingEnabled
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_AI_IOP_Prop_Controller_61 = cbox:CreateBox("domino/System/IOPPropController.lua")
  l0 = self.box_AI_IOP_Prop_Controller_61
  l0._graph = self
  l0._name = "box_AI_IOP_Prop_Controller_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|410716021"
  l0.Out = self.f_box_AI_IOP_Prop_Controller_61_Out
  self.box_SetBoolean_v2_104 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_104
  l0._graph = self
  l0._name = "box_SetBoolean_v2_104"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|428540515"
  l0.Out = self.f_box_SetBoolean_v2_104_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_104_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_104_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_104_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_104_SetFromBool
  self.box_Timer_v2_41 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_41
  l0._graph = self
  l0._name = "box_Timer_v2_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|431896311"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_41_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_HackableController_v2_6 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_6
  l0._graph = self
  l0._name = "box_HackableController_v2_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|450561274"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = self.f_box_HackableController_v2_6_OverrideHackingTextSet
  self.box_HackableController_v2_26 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_26
  l0._graph = self
  l0._name = "box_HackableController_v2_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|466396751"
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
  self.box_Hackable_Monitor_90 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_90
  l0._graph = self
  l0._name = "box_Hackable_Monitor_90"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|551545382"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = self.f_box_Hackable_Monitor_90_HackStart
  l0.HackFailed = self.f_box_Hackable_Monitor_90_HackFailed
  l0.HackSuccess = self.f_box_Hackable_Monitor_90_HackSuccess
  l0.HackedOn = self.f_box_Hackable_Monitor_90_HackedOn
  l0.HackedOff = self.f_box_Hackable_Monitor_90_HackedOff
  l0.HackContextual = self.f_box_Hackable_Monitor_90_HackContextual
  l0.AllHacked = DummyFunction
  self.box_PlaySound_v2_13 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_13
  l0._graph = self
  l0._name = "box_PlaySound_v2_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|588319750"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_CLOController_42 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_42
  l0._graph = self
  l0._name = "box_CLOController_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|590395290"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_AI_IOP_Prop_Controller_3 = cbox:CreateBox("domino/System/IOPPropController.lua")
  l0 = self.box_AI_IOP_Prop_Controller_3
  l0._graph = self
  l0._name = "box_AI_IOP_Prop_Controller_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|593957248"
  l0.Out = self.f_box_AI_IOP_Prop_Controller_3_Out
  self.box_PlaySound_v2_62 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_62
  l0._graph = self
  l0._name = "box_PlaySound_v2_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|596655766"
  l0.Out = self.f_box_PlaySound_v2_62_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Timer_v2_76 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_76
  l0._graph = self
  l0._name = "box_Timer_v2_76"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|606583216"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_76_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_IOPMonitor_108 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_108
  l0._graph = self
  l0._name = "box_IOPMonitor_108"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|617314584"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = self.f_box_IOPMonitor_108_DeactivateHackables
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = DummyFunction
  l0.Out = DummyFunction
  self.box_CLOController_52 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_52
  l0._graph = self
  l0._name = "box_CLOController_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|680173293"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_52_OnUserInPlace
  self.box_MultipleOR_63 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_63
  l0._graph = self
  l0._name = "box_MultipleOR_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|687175798"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_63_Out
  self.box_HackableController_v2_106 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_106
  l0._graph = self
  l0._name = "box_HackableController_v2_106"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|733729408"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_106_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_106_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_PlaySound_v2_122 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_122
  l0._graph = self
  l0._name = "box_PlaySound_v2_122"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|749605882"
  l0.Out = self.f_box_PlaySound_v2_122_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_AI_IOP_Prop_Controller_2 = cbox:CreateBox("domino/System/IOPPropController.lua")
  l0 = self.box_AI_IOP_Prop_Controller_2
  l0._graph = self
  l0._name = "box_AI_IOP_Prop_Controller_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|749979644"
  l0.Out = self.f_box_AI_IOP_Prop_Controller_2_Out
  self.box_IOPMonitor_12 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_12
  l0._graph = self
  l0._name = "box_IOPMonitor_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|752991931"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = self.f_box_IOPMonitor_12_IOPComplete
  l0.EventOccurred = DummyFunction
  l0.Out = DummyFunction
  self.box_PlaySound_v2_85 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_85
  l0._graph = self
  l0._name = "box_PlaySound_v2_85"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|771864916"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_43 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_43
  l0._graph = self
  l0._name = "box_PlaySound_v2_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|811704061"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MultipleOR_130 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_130
  l0._graph = self
  l0._name = "box_MultipleOR_130"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|836022201"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_130_Out
  self.box_IOPMonitor_114 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_114
  l0._graph = self
  l0._name = "box_IOPMonitor_114"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|845657424"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_IOPMonitor_114_Disabled
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_box_IOPMonitor_114_EventOccurred
  l0.Out = DummyFunction
  self.box_Hackable_Monitor_72 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_72
  l0._graph = self
  l0._name = "box_Hackable_Monitor_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|900111190"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_72_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_IOPMonitor_33 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_33
  l0._graph = self
  l0._name = "box_IOPMonitor_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|903180993"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_IOPMonitor_33_Disabled
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_box_IOPMonitor_33_EventOccurred
  l0.Out = DummyFunction
  self.box_HackableController_v2_98 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_98
  l0._graph = self
  l0._name = "box_HackableController_v2_98"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|912060602"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_98_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Timer_v2_17 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_17
  l0._graph = self
  l0._name = "box_Timer_v2_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|919845227"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_17_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_ListWriter_145 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_145
  l0._graph = self
  l0._name = "box_ListWriter_145"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|930564579"
  l0._DynamicAnchors = {Data = 4}
  l0.Added = self.f_box_ListWriter_145_Added
  l0.Removed = self.f_box_ListWriter_145_Removed
  l0.Out = self.f_box_ListWriter_145_Out
  self.box_MultipleOR_24 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_24
  l0._graph = self
  l0._name = "box_MultipleOR_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|950336162"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_24_Out
  self.box_HackableController_v2_73 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_73
  l0._graph = self
  l0._name = "box_HackableController_v2_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|954060499"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_73_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_73_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Timer_v2_14 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_14
  l0._graph = self
  l0._name = "box_Timer_v2_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|961710186"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_14_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_IndexedOutput_V2_38 = cbox:CreateBox("domino/System/IndexedOutput_v2.lua")
  l0 = self.box_IndexedOutput_V2_38
  l0._graph = self
  l0._name = "box_IndexedOutput_V2_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1031199217"
  l0._DynamicAnchors = {Output = 2}
  l0.Output[0] = self.f_box_IndexedOutput_V2_38_Output_0
  l0.Output[1] = self.f_box_IndexedOutput_V2_38_Output_1
  l0.OutOfRange = DummyFunction
  self.box_CLOController_124 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_124
  l0._graph = self
  l0._name = "box_CLOController_124"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1031984217"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_CLOController_124_Deactivated
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_MultipleOR_96 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_96
  l0._graph = self
  l0._name = "box_MultipleOR_96"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1036662538"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_96_Out
  self.box_Hackable_Monitor_99 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_99
  l0._graph = self
  l0._name = "box_Hackable_Monitor_99"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1058993225"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_99_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_Timer_v2_119 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_119
  l0._graph = self
  l0._name = "box_Timer_v2_119"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1065981195"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_119_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_HackableController_v2_77 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_77
  l0._graph = self
  l0._name = "box_HackableController_v2_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1076468114"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_77_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_77_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Timer_v2_37 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_37
  l0._graph = self
  l0._name = "box_Timer_v2_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1078337928"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_37_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CinematicPrep_123 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_123
  l0._graph = self
  l0._name = "box_CinematicPrep_123"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1099603158"
  l0.PreOut = DummyFunction
  l0.PostOut = DummyFunction
  self.box_HackableController_v2_111 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_111
  l0._graph = self
  l0._name = "box_HackableController_v2_111"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1150692030"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = self.f_box_HackableController_v2_111_OverrideHackingTextSet
  self.box_HackableController_v2_147 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_147
  l0._graph = self
  l0._name = "box_HackableController_v2_147"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1190201225"
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
  self.box_HackableController_v2_125 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_125
  l0._graph = self
  l0._name = "box_HackableController_v2_125"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1197711170"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_125_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Multiple_AND_71 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_71
  l0._graph = self
  l0._name = "box_Multiple_AND_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1207038247"
  l0._DynamicAnchors = {Condition = 3}
  l0.Out = self.f_box_Multiple_AND_71_Out
  self.box_Timer_v2_74 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_74
  l0._graph = self
  l0._name = "box_Timer_v2_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1248944264"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_74_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_82 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_82
  l0._graph = self
  l0._name = "box_Timer_v2_82"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1306595612"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_82_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_AI_IOP_Prop_Controller_40 = cbox:CreateBox("domino/System/IOPPropController.lua")
  l0 = self.box_AI_IOP_Prop_Controller_40
  l0._graph = self
  l0._name = "box_AI_IOP_Prop_Controller_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1311332429"
  l0.Out = self.f_box_AI_IOP_Prop_Controller_40_Out
  self.box_IOPMonitor_50 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_50
  l0._graph = self
  l0._name = "box_IOPMonitor_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1347069472"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_box_IOPMonitor_50_EventOccurred
  l0.Out = DummyFunction
  self.box_IOPPropMonitor_141 = cbox:CreateBox("domino/System/IOPPropMonitor.lua")
  l0 = self.box_IOPPropMonitor_141
  l0._graph = self
  l0._name = "box_IOPPropMonitor_141"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1392078760"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.PropSpawned = self.f_box_IOPPropMonitor_141_PropSpawned
  self.box_Timer_v2_48 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_48
  l0._graph = self
  l0._name = "box_Timer_v2_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1398338616"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_48_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_121 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_121
  l0._graph = self
  l0._name = "box_PlaySound_v2_121"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1430753208"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_IOPMonitor_25 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_25
  l0._graph = self
  l0._name = "box_IOPMonitor_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1481661568"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_IOPMonitor_25_Disabled
  l0.ActivateHackables = self.f_box_IOPMonitor_25_ActivateHackables
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = DummyFunction
  l0.Out = DummyFunction
  self.box_Multiple_AND_97 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_97
  l0._graph = self
  l0._name = "box_Multiple_AND_97"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1495010430"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_97_Out
  self.box_Security_Camera_Monitor_27 = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self.box_Security_Camera_Monitor_27
  l0._graph = self
  l0._name = "box_Security_Camera_Monitor_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1508329584"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Security_Camera_Monitor_27_Disabled
  l0.OnStartAccessCamera = DummyFunction
  l0.OnEndAccessCamera = self.f_box_Security_Camera_Monitor_27_OnEndAccessCamera
  l0.OnStartExitCamera = DummyFunction
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self.box_SetBoolean_v2_107 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_107
  l0._graph = self
  l0._name = "box_SetBoolean_v2_107"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1513524224"
  l0.Out = self.f_box_SetBoolean_v2_107_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_107_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_107_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_107_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_107_SetFromBool
  self.box_IOP_CleanUp_9 = cbox:CreateBox("domino/Library/common/IOP.IOP_CleanUp.debug.lua")
  l0 = self.box_IOP_CleanUp_9
  l0._graph = self
  l0._name = "box_IOP_CleanUp_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1586266675"
  l0.Completed = self.f_box_IOP_CleanUp_9_Completed
  l0.DisconnectedAnimationPlayed = self.f_box_IOP_CleanUp_9_DisconnectedAnimationPlayed
  l0.Out = DummyFunction
  self.box_HackableController_v2_118 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_118
  l0._graph = self
  l0._name = "box_HackableController_v2_118"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1611534364"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_118_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_HackableController_v2_16 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_16
  l0._graph = self
  l0._name = "box_HackableController_v2_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1634527520"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_16_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_HackableController_v2_94 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_94
  l0._graph = self
  l0._name = "box_HackableController_v2_94"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1678950358"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_94_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_AI_IOP_Prop_Controller_92 = cbox:CreateBox("domino/System/IOPPropController.lua")
  l0 = self.box_AI_IOP_Prop_Controller_92
  l0._graph = self
  l0._name = "box_AI_IOP_Prop_Controller_92"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1693880076"
  l0.Out = self.f_box_AI_IOP_Prop_Controller_92_Out
  self.box_AI_IOPController_103 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_103
  l0._graph = self
  l0._name = "box_AI_IOPController_103"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1703738831"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_AI_IOPController_102 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_102
  l0._graph = self
  l0._name = "box_AI_IOPController_102"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1714869708"
  l0.Out = DummyFunction
  l0.StartCompleted = self.f_box_AI_IOPController_102_StartCompleted
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_Timer_v2_149 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_149
  l0._graph = self
  l0._name = "box_Timer_v2_149"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1740737594"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_149_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CLOController_80 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_80
  l0._graph = self
  l0._name = "box_CLOController_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1742898960"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_80_OnUserInPlace
  self.box_MissionController_v4_120 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_120
  l0._graph = self
  l0._name = "box_MissionController_v4_120"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1782724255"
  self.box_HackableController_v2_109 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_109
  l0._graph = self
  l0._name = "box_HackableController_v2_109"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1851285227"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_109_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Multiple_AND_30 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_30
  l0._graph = self
  l0._name = "box_Multiple_AND_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1863586109"
  l0._DynamicAnchors = {Condition = 4}
  l0.Out = self.f_box_Multiple_AND_30_Out
  self.box_Control_the_profiling_capabilities_of_a_player_84 = cbox:CreateBox("domino/System/ProfilerController.lua")
  l0 = self.box_Control_the_profiling_capabilities_of_a_player_84
  l0._graph = self
  l0._name = "box_Control_the_profiling_capabilities_of_a_player_84"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1891915081"
  l0.ProfilerSetOn = DummyFunction
  l0.ProfilerSetOff = DummyFunction
  l0.ProfilerDisabled = DummyFunction
  l0.ProfilerReenabled = self.f_box_Control_the_profiling_capabilities_of_a_player_84_ProfilerReenabled
  l0.AutoActivationInCamerasDisabled = DummyFunction
  l0.AutoActivationInCamerasReenabled = DummyFunction
  self.box_Multiple_AND_11 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_11
  l0._graph = self
  l0._name = "box_Multiple_AND_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1918807921"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_11_Out
  self.box_MissionLayer_v2_83 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_83
  l0._graph = self
  l0._name = "box_MissionLayer_v2_83"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1924739027"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_83_Unloaded
  l0.Reseted = DummyFunction
  self.box_HackableController_v2_116 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_116
  l0._graph = self
  l0._name = "box_HackableController_v2_116"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1927305835"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_116_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_AI_IOP_Prop_Controller_93 = cbox:CreateBox("domino/System/IOPPropController.lua")
  l0 = self.box_AI_IOP_Prop_Controller_93
  l0._graph = self
  l0._name = "box_AI_IOP_Prop_Controller_93"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1939048949"
  l0.Out = self.f_box_AI_IOP_Prop_Controller_93_Out
  self.box_AI_IOP_Prop_Controller_7 = cbox:CreateBox("domino/System/IOPPropController.lua")
  l0 = self.box_AI_IOP_Prop_Controller_7
  l0._graph = self
  l0._name = "box_AI_IOP_Prop_Controller_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1956409934"
  l0.Out = DummyFunction
  self.box_HackableController_v2_148 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_148
  l0._graph = self
  l0._name = "box_HackableController_v2_148"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|2032162210"
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
  self.box_IOPPropMonitor_137 = cbox:CreateBox("domino/System/IOPPropMonitor.lua")
  l0 = self.box_IOPPropMonitor_137
  l0._graph = self
  l0._name = "box_IOPPropMonitor_137"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|2050119442"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.PropSpawned = self.f_box_IOPPropMonitor_137_PropSpawned
  self.box_PlaySound_v2_23 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_23
  l0._graph = self
  l0._name = "box_PlaySound_v2_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|2079494619"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Hackable_Monitor_66 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_66
  l0._graph = self
  l0._name = "box_Hackable_Monitor_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|2080905005"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_66_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_HackableController_v2_28 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_28
  l0._graph = self
  l0._name = "box_HackableController_v2_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|2112728451"
  l0.Enabled = self.f_box_HackableController_v2_28_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = self.f_box_HackableController_v2_28_ProfilingEnabled
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_AI_IOPController_65 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_65
  l0._graph = self
  l0._name = "box_AI_IOPController_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|2122581529"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_65_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_HackableController_v2_105 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_105
  l0._graph = self
  l0._name = "box_HackableController_v2_105"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|2129885184"
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
  self:OnEnter_box_MultipleOR_24()
  l0 = self.box_MultipleOR_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|85280668", "85280668", "IOP20_Main", "CheckPoint_0", "box_MultipleOR_24.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_24()
  l0 = self.box_MultipleOR_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|522595210", "522595210", "IOP20_Main", "In", "box_MultipleOR_24.Input", self, l0)
  l0:Input(0)
end
function export:f_box_PhoneCommunicationController_8_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_65
  l0.IopID = "ChildsPlay"
  l0.IopEvent = "Generic.TeamSpeakEnded"
  l0 = self.box_PhoneCommunicationController_8
  l1 = self.box_AI_IOPController_65
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1681312981", "1681312981", "IOP20_Main", "box_PhoneCommunicationController_8.Out", "box_AI_IOPController_65.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_MissionMessageController_v3_134_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_126"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|136123403"
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_box_Ordered_Output_126_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_126_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_126_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_126_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_126_Out_4
  l0 = self.box_MissionMessageController_v3_134
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1043079859", "1043079859", "IOP20_Main", "box_MissionMessageController_v3_134.Out", "box_Ordered_Output_126.In", l0, l1)
  l1:In()
end
function export:f_box_PhoneCommunicationController_64_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_64
  l1 = self.box_MissionMessageController_v3_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1954189489", "1954189489", "IOP20_Main", "box_PhoneCommunicationController_64.OnCommunicationFinished", "box_MissionMessageController_v3_34.ShowMissionComplete", l0, l1)
  l1:ShowMissionComplete()
end
function export:f_box_Ordered_Output_101_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_105
  l0.HackableEntity = self.Headset
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|761118958", "761118958", "IOP20_Main", "box_Ordered_Output_101.Out", "box_HackableController_v2_105.EnableHack", clone, l0)
  l0:EnableHack()
end
function export:f_box_Ordered_Output_101_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_26
  l0.HackableEntity = self.HardDrive_Reader
  l0.ProfileLinkedToHack = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1435195349", "1435195349", "IOP20_Main", "box_Ordered_Output_101.Out", "box_HackableController_v2_26.EnableHack", clone, l0)
  l0:EnableHack()
end
function export:f_box_Timer_v2_87_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "gfx_lenseffects 3"
  l0._graph = self
  l0._name = "box_DebugExecuteConsole_v2_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|799128925"
  l0.Executed = self.f_box_DebugExecuteConsole_v2_55_Executed
  l0 = self.box_Timer_v2_87
  l1 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|193329422", "193329422", "IOP20_Main", "box_Timer_v2_87.TimeElapsed", "box_DebugExecuteConsole_v2_55.Execute", l0, l1)
  l1:Execute()
end
function export:f_box_HackableController_v2_35_OverrideHackingTextSet()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOP_Prop_Controller_3
  l0.StateIndex = 2
  l0.PropEntity = self.iop_childsplay_animatedmonitors_0
  l0 = self.box_HackableController_v2_35
  l1 = self.box_AI_IOP_Prop_Controller_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|990763423", "990763423", "IOP20_Main", "box_HackableController_v2_35.OverrideHackingTextSet", "box_AI_IOP_Prop_Controller_3.SetStateIndex", l0, l1)
  l1:SetStateIndex()
end
function export:f_box_SetInteger_v2_29_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  self.HddSounds = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_79()
  l0 = self.box_HackableController_v2_79
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|827015718", "827015718", "IOP20_Main", "box_SetInteger_v2_29.Out", "box_HackableController_v2_79.EnableHack", clone, l0)
  l0:EnableHack()
end
function export:f_box_CLOController_45_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_45
  self.PostIOP_Freaked_Cole = l0.UserID
  l0 = Boxes[PathID("domino/System/FleeBehaviorController.lua")]
  l0.Target = self.PostIOP_Freaked_Cole
  l0.TargetList = nil
  l0.Destination = nil
  l0.Threat = self.PlayerEntity
  l0.Config = "FleeBehaviorDescriptor.9223372049386602250"
  l0.Vehicle = nil
  l0._graph = self
  l0._name = "box_Start_Update_Stop_flee_behavior_on_an_AI_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|654130242"
  l0.Started = self.f_box_Start_Update_Stop_flee_behavior_on_an_AI_70_Started
  l0.Updated = DummyFunction
  l0.Stopped = DummyFunction
  l0 = self.box_CLOController_45
  l1 = Boxes[PathID("domino/System/FleeBehaviorController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|2118115002", "2118115002", "IOP20_Main", "box_CLOController_45.OnUserInPlace", "box_Start_Update_Stop_flee_behavior_on_an_AI_70.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_126_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_77()
  l0 = self.box_HackableController_v2_77
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|990586489", "990586489", "IOP20_Main", "box_Ordered_Output_126.Out", "box_HackableController_v2_77.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_Ordered_Output_126_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_106()
  l0 = self.box_HackableController_v2_106
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|319190144", "319190144", "IOP20_Main", "box_Ordered_Output_126.Out", "box_HackableController_v2_106.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_Ordered_Output_126_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_73()
  l0 = self.box_HackableController_v2_73
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|53005152", "53005152", "IOP20_Main", "box_Ordered_Output_126.Out", "box_HackableController_v2_73.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_Ordered_Output_126_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = "CustomBroadcasts.9223372048466242831"
  l0.OnGenericChannel = nil
  l0.OnShopChannel = nil
  l0.OnBarChannel = nil
  l0.PlayOnLoad = nil
  l0.ApplyOnLoad = nil
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Controller_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1719023488"
  l0.LoadAndPlayRequested = self.f_box_Media_System_Custom_Broadcast_Controller_68_LoadAndPlayRequested
  l0.EndedAllCustomMediaBroadcasts = DummyFunction
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|535800328", "535800328", "IOP20_Main", "box_Ordered_Output_126.Out", "box_Media_System_Custom_Broadcast_Controller_68.LoadAndPlayCustomBroadcast", clone, l0)
  l0:LoadAndPlayCustomBroadcast()
end
function export:f_box_Ordered_Output_126_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "gfx_lenseffects 2"
  l0._graph = self
  l0._name = "box_DebugExecuteConsole_v2_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|497623474"
  l0.Executed = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|811806405", "811806405", "IOP20_Main", "box_Ordered_Output_126.Out", "box_DebugExecuteConsole_v2_18.Execute", clone, l0)
  l0:Execute()
end
function export:f_box_HackableController_v2_79_Enabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_79()
  l0 = self.box_HackableController_v2_79
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1763485385", "1763485385", "IOP20_Main", "box_HackableController_v2_79.Enabled", "box_HackableController_v2_79.EnableProfiling", l0, l0)
  l0:EnableProfiling()
end
function export:f_box_HackableController_v2_79_ProfilingEnabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Hackable_Monitor_66
  l0.HackableEntity = self.HardDrive_Reader
  l0 = self.box_HackableController_v2_79
  l1 = self.box_Hackable_Monitor_66
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|252713865", "252713865", "IOP20_Main", "box_HackableController_v2_79.ProfilingEnabled", "box_Hackable_Monitor_66.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_HackableController_v2_115_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Hackable_Monitor_90
  l0.HackableEntity = self.Toy_Rabbit
  l0 = self.box_HackableController_v2_115
  l1 = self.box_Hackable_Monitor_90
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|354273711", "354273711", "IOP20_Main", "box_HackableController_v2_115.Enabled", "box_Hackable_Monitor_90.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_HackableController_v2_115_ProfilingEnabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_115()
  l0 = self.box_HackableController_v2_115
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|97150880", "97150880", "IOP20_Main", "box_HackableController_v2_115.ProfilingEnabled", "box_HackableController_v2_115.EnableHack", l0, l0)
  l0:EnableHack()
end
function export:f_box_Ordered_Output_138_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_17
  l0.Seconds = 0.3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|262439751", "262439751", "IOP20_Main", "box_Ordered_Output_138.Out", "box_Timer_v2_17.Start", clone, l0)
  l0:Start()
end
function export:f_box_Integer_Arithmetics_36_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  self.HddSounds = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IndexedOutput_V2_38
  l0.Index = self.HddSounds
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|2060791133", "2060791133", "IOP20_Main", "box_Integer_Arithmetics_36.Out", "box_IndexedOutput_V2_38.In", clone, l0)
  l0:In()
end
function export:f_box_PlaySound_v2_54_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372065360312451"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_136"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1337877798"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = self.f_box_LightController_136_Out
  l0 = self.box_PlaySound_v2_54
  l1 = Boxes[PathID("domino/System/LightController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1512500471", "1512500471", "IOP20_Main", "box_PlaySound_v2_54.Started", "box_LightController_136.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Hackable_Monitor_49_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|855960845"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_44_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_44_Out_1
  l0 = self.box_Hackable_Monitor_49
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|510586945", "510586945", "IOP20_Main", "box_Hackable_Monitor_49.Disabled", "box_Ordered_Output_44.In", l0, l1)
  l1:In()
end
function export:f_box_Hackable_Monitor_49_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_62
  l0.Entity = self.Headset
  l0.SoundId = "soundbinary/258765896.bnk"
  l0 = self.box_Hackable_Monitor_49
  l1 = self.box_PlaySound_v2_62
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1183830321", "1183830321", "IOP20_Main", "box_Hackable_Monitor_49.HackSuccess", "box_PlaySound_v2_62.Play", l0, l1)
  l1:Play()
end
function export:f_box_HackableController_v2_113_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.Headset
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_144"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|608990019"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_HackableController_v2_113
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|501233863", "501233863", "IOP20_Main", "box_HackableController_v2_113.Disabled", "box_VisibilityController_v2_144.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_IOPMonitor_133_EventOccurred()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_135"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|992297165"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_135_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_135_Out_1
  l0 = self.box_IOPMonitor_133
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1384261180", "1384261180", "IOP20_Main", "box_IOPMonitor_133.EventOccurred", "box_Ordered_Output_135.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_31_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_DistanceBasedProgressBarController_v2_88()
  l0 = self.box_DistanceBasedProgressBarController_v2_88
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1520568377", "1520568377", "IOP20_Main", "box_Ordered_Output_31.Out", "box_DistanceBasedProgressBarController_v2_88.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_31_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_14
  l0.Seconds = 3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|2021178862", "2021178862", "IOP20_Main", "box_Ordered_Output_31.Out", "box_Timer_v2_14.Start", clone, l0)
  l0:Start()
end
function export:f_box_Bind_v2_58_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|721706319"
  l0.Out = self.f_box_Get_Player_ID_19_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|181357518", "181357518", "IOP20_Main", "box_Bind_v2_58.Out", "box_Get_Player_ID_19.In", clone, l0)
  l0:In()
end
function export:f_box_IOP_StartUp_5_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_145
  l0.Input = self.SecurityCameraList
  l0.Data[0] = "9223372044537728750"
  l0.Data[1] = "9223372044537728752"
  l0.Data[2] = "9223372044368782269"
  l0.Data[3] = "9223372044368782271"
  l0 = self.box_IOP_StartUp_5
  l1 = self.box_ListWriter_145
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|529506582", "529506582", "IOP20_Main", "box_IOP_StartUp_5.Out", "box_ListWriter_145.Add", l0, l1)
  l1:Add()
end
function export:f_box_IOPMonitor_4_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_113
  l0.HackableEntity = self.Headset
  l0.ProfileLinkedToHack = 1
  l0 = self.box_IOPMonitor_4
  l1 = self.box_HackableController_v2_113
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|210488791", "210488791", "IOP20_Main", "box_IOPMonitor_4.Disabled", "box_HackableController_v2_113.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_IOPMonitor_4_EventOccurred()
  local l0
  self = self._graph
  self:OnEnter_box_IOPMonitor_4()
  l0 = self.box_IOPMonitor_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1584455360", "1584455360", "IOP20_Main", "box_IOPMonitor_4.EventOccurred", "box_IOPMonitor_4.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_HackableController_v2_112_Enabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_112()
  l0 = self.box_HackableController_v2_112
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1812780604", "1812780604", "IOP20_Main", "box_HackableController_v2_112.Enabled", "box_HackableController_v2_112.EnableProfiling", l0, l0)
  l0:EnableProfiling()
end
function export:f_box_HackableController_v2_112_ProfilingEnabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_89"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|926568416"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_89_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_89_Out_1
  l0 = self.box_HackableController_v2_112
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|2098235144", "2098235144", "IOP20_Main", "box_HackableController_v2_112.ProfilingEnabled", "box_Ordered_Output_89.In", l0, l1)
  l1:In()
end
function export:f_box_AI_IOP_Prop_Controller_61_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  l0.Integer = 0
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0._name = "box_SetInteger_v2_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1463674559"
  l0.Out = self.f_box_SetInteger_v2_51_Out
  l0 = self.box_AI_IOP_Prop_Controller_61
  l1 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|609237774", "609237774", "IOP20_Main", "box_AI_IOP_Prop_Controller_61.Out", "box_SetInteger_v2_51.FromInteger", l0, l1)
  l1:FromInteger()
end
function export:f_box_Ordered_Output_69_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_64
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357367176"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|7090529", "7090529", "IOP20_Main", "box_Ordered_Output_69.Out", "box_PhoneCommunicationController_64.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_Ordered_Output_69_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.ColeIsFreaked
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1171025156"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_39_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_39_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|796918382", "796918382", "IOP20_Main", "box_Ordered_Output_69.Out", "box_Compare_Boolean_v2_39.In", clone, l0)
  l0:In()
end
function export:f_box_SetBoolean_v2_104_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_104
  self.ColeIsFreaked = l0.Target
end
function export:f_box_SetBoolean_v2_104_SetFalse()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_104
  self.ColeIsFreaked = l0.Target
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_127"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1606348686"
  l0.Out = self.f_box_Get_Player_ID_127_Out
  l0 = self.box_SetBoolean_v2_104
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|2033070258", "2033070258", "IOP20_Main", "box_SetBoolean_v2_104.SetFalse", "box_Get_Player_ID_127.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_104_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_104
  self.ColeIsFreaked = l0.Target
end
function export:f_box_SetBoolean_v2_104_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_104
  self.ColeIsFreaked = l0.Target
end
function export:f_box_SetBoolean_v2_104_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_104
  self.ColeIsFreaked = l0.Target
end
function export:f_box_Timer_v2_41_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_103
  l0.IopID = "ChildsPlay"
  l0.IopEvent = "ChildsPlay.HDD"
  l0 = self.box_Timer_v2_41
  l1 = self.box_AI_IOPController_103
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|670190020", "670190020", "IOP20_Main", "box_Timer_v2_41.TimeElapsed", "box_AI_IOPController_103.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_LightController_47_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_138"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|194655605"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_138_Out_0
  l0.Out[1] = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|482021506", "482021506", "IOP20_Main", "box_LightController_47.Enabled", "box_Ordered_Output_138.In", clone, l0)
  l0:In()
end
function export:f_box_HackableController_v2_6_OverrideHackingTextSet()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_74
  l0.Seconds = 0.2
  l0 = self.box_HackableController_v2_6
  l1 = self.box_Timer_v2_74
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|2067107334", "2067107334", "IOP20_Main", "box_HackableController_v2_6.OverrideHackingTextSet", "box_Timer_v2_74.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_91_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOP_Prop_Controller_92
  l0.StateIndex = 3
  l0.PropEntity = self.iop_childsplay_animatedmonitors_0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1936485085", "1936485085", "IOP20_Main", "box_Ordered_Output_91.Out", "box_AI_IOP_Prop_Controller_92.SetStateIndex", clone, l0)
  l0:SetStateIndex()
end
function export:f_box_Ordered_Output_91_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOP_Prop_Controller_40
  l0.StateIndex = 1
  l0.PropEntity = "9223372044478735729"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1825262672", "1825262672", "IOP20_Main", "box_Ordered_Output_91.Out", "box_AI_IOP_Prop_Controller_40.SetStateIndex", clone, l0)
  l0:SetStateIndex()
end
function export:f_box_Ordered_Output_91_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_107
  l0.Bool = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1593723921", "1593723921", "IOP20_Main", "box_Ordered_Output_91.Out", "box_SetBoolean_v2_107.True", clone, l0)
  l0:True()
end
function export:f_box_Ordered_Output_91_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_121
  l0.Entity = "9223372044759809990"
  l0.SoundId = "soundbinary/2930849636.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|393284442", "393284442", "IOP20_Main", "box_Ordered_Output_91.Out", "box_PlaySound_v2_121.Play", clone, l0)
  l0:Play()
end
function export:f_box_Hackable_Monitor_90_HackContextual()
  local l0
  self = self._graph
  l0 = self.box_Hackable_Monitor_90
  self.Toy_Rabbit = l0.HackedEntity
end
function export:f_box_Hackable_Monitor_90_HackedOff()
  local l0
  self = self._graph
  l0 = self.box_Hackable_Monitor_90
  self.Toy_Rabbit = l0.HackedEntity
end
function export:f_box_Hackable_Monitor_90_HackedOn()
  local l0
  self = self._graph
  l0 = self.box_Hackable_Monitor_90
  self.Toy_Rabbit = l0.HackedEntity
end
function export:f_box_Hackable_Monitor_90_HackFailed()
  local l0
  self = self._graph
  l0 = self.box_Hackable_Monitor_90
  self.Toy_Rabbit = l0.HackedEntity
end
function export:f_box_Hackable_Monitor_90_HackStart()
  local l0
  self = self._graph
  l0 = self.box_Hackable_Monitor_90
  self.Toy_Rabbit = l0.HackedEntity
end
function export:f_box_Hackable_Monitor_90_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = self.box_Hackable_Monitor_90
  self.Toy_Rabbit = l0.HackedEntity
  l0 = self.box_PlaySound_v2_13
  l0.Entity = self.Rabbit_SoundPoint
  l0.SoundId = "soundbinary/4283624238.bnk"
  l0 = self.box_Hackable_Monitor_90
  l1 = self.box_PlaySound_v2_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|621267073", "621267073", "IOP20_Main", "box_Hackable_Monitor_90.HackSuccess", "box_PlaySound_v2_13.Play", l0, l1)
  l1:Play()
end
function export:f_box_Ordered_Output_129_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_IOPMonitor_25()
  l0 = self.box_IOPMonitor_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|977323966", "977323966", "IOP20_Main", "box_Ordered_Output_129.Out", "box_IOPMonitor_25.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_129_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_115()
  l0 = self.box_HackableController_v2_115
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1747851894", "1747851894", "IOP20_Main", "box_Ordered_Output_129.Out", "box_HackableController_v2_115.EnableProfiling", clone, l0)
  l0:EnableProfiling()
end
function export:f_box_AI_IOP_Prop_Controller_3_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  l0.Integer = 1
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0._name = "box_SetInteger_v2_117"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|874622186"
  l0.Out = self.f_box_SetInteger_v2_117_Out
  l0 = self.box_AI_IOP_Prop_Controller_3
  l1 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|64709657", "64709657", "IOP20_Main", "box_AI_IOP_Prop_Controller_3.Out", "box_SetInteger_v2_117.FromInteger", l0, l1)
  l1:FromInteger()
end
function export:f_box_PlaySound_v2_62_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_49()
  l0 = self.box_PlaySound_v2_62
  l1 = self.box_Hackable_Monitor_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|376470694", "376470694", "IOP20_Main", "box_PlaySound_v2_62.Out", "box_Hackable_Monitor_49.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Ordered_Output_59_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_15
  l0.Entity = self.HardDrive_Reader
  l0.SoundId = "soundbinary/740598824.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|197897910", "197897910", "IOP20_Main", "box_Ordered_Output_59.Out", "box_PlaySound_v2_15.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_59_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_48
  l0.Seconds = 0.2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1869158087", "1869158087", "IOP20_Main", "box_Ordered_Output_59.Out", "box_Timer_v2_48.Start", clone, l0)
  l0:Start()
end
function export:f_box_Timer_v2_76_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_96()
  l0 = self.box_Timer_v2_76
  l1 = self.box_MultipleOR_96
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1186562546", "1186562546", "IOP20_Main", "box_Timer_v2_76.TimeElapsed", "box_MultipleOR_96.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_IOPMonitor_108_DeactivateHackables()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|705344641"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_57_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_57_Out_1
  l0 = self.box_IOPMonitor_108
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1574718882", "1574718882", "IOP20_Main", "box_IOPMonitor_108.DeactivateHackables", "box_Ordered_Output_57.In", l0, l1)
  l1:In()
end
function export:f_box_Start_Update_Stop_flee_behavior_on_an_AI_70_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FleeBehaviorController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_76
  l0.Seconds = 7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1657471620", "1657471620", "IOP20_Main", "box_Start_Update_Stop_flee_behavior_on_an_AI_70.Started", "box_Timer_v2_76.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_140_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_124
  l0.CLO = "9223372045652851523"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1096036592", "1096036592", "IOP20_Main", "box_Ordered_Output_140.Out", "box_CLOController_124.Deactivate", clone, l0)
  l0:Deactivate()
end
function export:f_box_Ordered_Output_140_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOPPropMonitor_141
  l0.PropName = "headset_01"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|499312425", "499312425", "IOP20_Main", "box_Ordered_Output_140.Out", "box_IOPPropMonitor_141.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_140_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOPPropMonitor_137
  l0.PropName = "iop_childsplay_drivedock_01"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1288879362", "1288879362", "IOP20_Main", "box_Ordered_Output_140.Out", "box_IOPPropMonitor_137.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_140_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.Cole
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_142"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1069909367"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|2112363767", "2112363767", "IOP20_Main", "box_Ordered_Output_140.Out", "box_CollisionController_142.DisableCollisions", clone, l0)
  l0:DisableCollisions()
end
function export:f_box_CLOController_52_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_52
  self.PostIOP_Cole = l0.UserID
  l0 = self.box_Timer_v2_119
  l0.Seconds = 7
  l0 = self.box_CLOController_52
  l1 = self.box_Timer_v2_119
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|945714028", "945714028", "IOP20_Main", "box_CLOController_52.OnUserInPlace", "box_Timer_v2_119.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_63_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_6
  l0.HackableEntity = self.Headset
  l0.OasisHackingText = {
    section = "MISSIONS.WORLD MISSIONS.IOP.CHILDS_PLAY.OBJECTS.Hackables",
    item = "Headset2",
    id = "317677"
  }
  l0 = self.box_MultipleOR_63
  l1 = self.box_HackableController_v2_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|942680524", "942680524", "IOP20_Main", "box_MultipleOR_63.Out", "box_HackableController_v2_6.SetOverrideHackingText", l0, l1)
  l1:SetOverrideHackingText()
end
function export:f_box_Ordered_Output_57_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_98()
  l0 = self.box_HackableController_v2_98
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1218180925", "1218180925", "IOP20_Main", "box_Ordered_Output_57.Out", "box_HackableController_v2_98.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_Ordered_Output_57_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_116()
  l0 = self.box_HackableController_v2_116
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|169474927", "169474927", "IOP20_Main", "box_Ordered_Output_57.Out", "box_HackableController_v2_116.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_Get_Player_ID_19_Out()
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
  l0._name = "box_Ordered_Output_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|788164563"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_56_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_56_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1494977102", "1494977102", "IOP20_Main", "box_Get_Player_ID_19.Out", "box_Ordered_Output_56.In", clone, l0)
  l0:In()
end
function export:f_box_HackableController_v2_106_Disabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_106()
  l0 = self.box_HackableController_v2_106
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|423447961", "423447961", "IOP20_Main", "box_HackableController_v2_106.Disabled", "box_HackableController_v2_106.DisableProfiling", l0, l0)
  l0:DisableProfiling()
end
function export:f_box_HackableController_v2_106_ProfilingDisabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_30()
  l0 = self.box_HackableController_v2_106
  l1 = self.box_Multiple_AND_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1509069116", "1509069116", "IOP20_Main", "box_HackableController_v2_106.ProfilingDisabled", "box_Multiple_AND_30.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_SetInteger_v2_21_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  self.StaticOverride = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1546666810"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_46_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_46_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_46_Out_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1698875504", "1698875504", "IOP20_Main", "box_SetInteger_v2_21.Out", "box_Ordered_Output_46.In", clone, l0)
  l0:In()
end
function export:f_box_PlaySound_v2_122_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_54
  l0.Entity = "9223372044759809990"
  l0.SoundId = "soundbinary/702073974.bnk"
  l0 = self.box_PlaySound_v2_122
  l1 = self.box_PlaySound_v2_54
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1366097134", "1366097134", "IOP20_Main", "box_PlaySound_v2_122.Out", "box_PlaySound_v2_54.Play", l0, l1)
  l1:Play()
end
function export:f_box_AI_IOP_Prop_Controller_2_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_71()
  l0 = self.box_AI_IOP_Prop_Controller_2
  l1 = self.box_Multiple_AND_71
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|238877732", "238877732", "IOP20_Main", "box_AI_IOP_Prop_Controller_2.Out", "box_Multiple_AND_71.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_IOPMonitor_12_IOPComplete()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_81"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1644357439"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_box_SetActionMap_v2_81_Pushed
  l0.Popped = DummyFunction
  l0 = self.box_IOPMonitor_12
  l1 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|367464917", "367464917", "IOP20_Main", "box_IOPMonitor_12.IOPComplete", "box_SetActionMap_v2_81.Push", l0, l1)
  l1:Push()
end
function export:f_box_Ordered_Output_56_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOPController_102
  l0.IopID = "ChildsPlay"
  l0.PlayerEntity = self.PlayerEntity
  l0.NpcEntity = self.Cole
  l0.IopRole = "ChildsPlay.Cole"
  l0.OffscreenDialogPoint = "9223372044656142498"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|2114759079", "2114759079", "IOP20_Main", "box_Ordered_Output_56.Out", "box_AI_IOPController_102.Start", clone, l0)
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
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = self.ChildsPlay_StartCamera
  l0.CameraEntityList = {
    "IOPCam_ChildsPlay_WebCamera",
    "IOPCam_ChildsPlay_ShelfCamera",
    "IOPCam_ChildsPlay_StartCamera",
    "IOPCam_ChildsPlay_BoxCamera"
  }
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = nil
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0._name = "box_SecurityCamController_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1046766285"
  l0.EnterSet = DummyFunction
  l0.CanExitSet = DummyFunction
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = self.f_box_SecurityCamController_75_EnterForced
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|708745962", "708745962", "IOP20_Main", "box_Ordered_Output_56.Out", "box_SecurityCamController_75.ForceEnter", clone, l0)
  l0:ForceEnter()
end
function export:f_box_DebugExecuteConsole_v2_55_Executed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|2096507325"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_box_SetActionMap_v2_67_Popped
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|943884389", "943884389", "IOP20_Main", "box_DebugExecuteConsole_v2_55.Executed", "box_SetActionMap_v2_67.Pop", clone, l0)
  l0:Pop()
end
function export:f_box_MultipleOR_130_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1017948874"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_60_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_60_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_60_Out_2
  l0 = self.box_MultipleOR_130
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|358230919", "358230919", "IOP20_Main", "box_MultipleOR_130.Out", "box_Ordered_Output_60.In", l0, l1)
  l1:In()
end
function export:f_box_IOPMonitor_114_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  l0.Integer = 1
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0._name = "box_SetInteger_v2_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|916455286"
  l0.Out = self.f_box_SetInteger_v2_20_Out
  l0 = self.box_IOPMonitor_114
  l1 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|182808360", "182808360", "IOP20_Main", "box_IOPMonitor_114.Disabled", "box_SetInteger_v2_20.FromInteger", l0, l1)
  l1:FromInteger()
end
function export:f_box_IOPMonitor_114_EventOccurred()
  local l0
  self = self._graph
  self:OnEnter_box_IOPMonitor_114()
  l0 = self.box_IOPMonitor_114
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1336855652", "1336855652", "IOP20_Main", "box_IOPMonitor_114.EventOccurred", "box_IOPMonitor_114.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_44_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_63()
  l0 = self.box_MultipleOR_63
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1695827274", "1695827274", "IOP20_Main", "box_Ordered_Output_44.Out", "box_MultipleOR_63.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_44_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_99
  l0.HackableEntity = self.Headset
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|789391576", "789391576", "IOP20_Main", "box_Ordered_Output_44.Out", "box_Hackable_Monitor_99.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_SetInteger_v2_117_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  self.StaticOverride = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_41
  l0.Seconds = 0.3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|497267320", "497267320", "IOP20_Main", "box_SetInteger_v2_117.Out", "box_Timer_v2_41.Start", clone, l0)
  l0:Start()
end
function export:f_box_Hackable_Monitor_72_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_16
  l0.HackableEntity = self.Hackable_Router
  l0.ProfileLinkedToHack = 1
  l0 = self.box_Hackable_Monitor_72
  l1 = self.box_HackableController_v2_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1857450287", "1857450287", "IOP20_Main", "box_Hackable_Monitor_72.HackSuccess", "box_HackableController_v2_16.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_IOPMonitor_33_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_112()
  l0 = self.box_IOPMonitor_33
  l1 = self.box_HackableController_v2_112
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|752240486", "752240486", "IOP20_Main", "box_IOPMonitor_33.Disabled", "box_HackableController_v2_112.EnableHack", l0, l1)
  l1:EnableHack()
end
function export:f_box_IOPMonitor_33_EventOccurred()
  local l0
  self = self._graph
  self:OnEnter_box_IOPMonitor_33()
  l0 = self.box_IOPMonitor_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1085275454", "1085275454", "IOP20_Main", "box_IOPMonitor_33.EventOccurred", "box_IOPMonitor_33.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_HackableController_v2_98_Disabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_98()
  l0 = self.box_HackableController_v2_98
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|601422869", "601422869", "IOP20_Main", "box_HackableController_v2_98.Disabled", "box_HackableController_v2_98.DisableProfiling", l0, l0)
  l0:DisableProfiling()
end
function export:f_box_SetInteger_v2_20_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  self.MonitorState = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = self.StaticOverride
  l0.B = 0
  l0._graph = self
  l0._name = "box_Compare_Integers_v2_110"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|2125578793"
  l0.Out = DummyFunction
  l0.A_lt_B = DummyFunction
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_110_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|547463381", "547463381", "IOP20_Main", "box_SetInteger_v2_20.Out", "box_Compare_Integers_v2_110.In", clone, l0)
  l0:In()
end
function export:f_box_Timer_v2_17_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_78
  l0.IopID = "ChildsPlay"
  l0.IopEvent = "ChildsPlay.Router"
  l0 = self.box_Timer_v2_17
  l1 = self.box_AI_IOPController_78
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|790376690", "790376690", "IOP20_Main", "box_Timer_v2_17.TimeElapsed", "box_AI_IOPController_78.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_Ordered_Output_89_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_72
  l0.HackableEntity = self.Hackable_Router
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1661879107", "1661879107", "IOP20_Main", "box_Ordered_Output_89.Out", "box_Hackable_Monitor_72.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_89_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOPMonitor_133
  l0.MonitoredEvent = "ChildsPlay.Cabinet"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1085054473", "1085054473", "IOP20_Main", "box_Ordered_Output_89.Out", "box_IOPMonitor_133.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_ListWriter_145_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_145
  self.SecurityCameraList = l0.Target
  l0 = self.box_MissionMessageController_v3_134
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L18.L18M020.Objectives.Objective010",
    item = "Objective",
    id = "641499"
  }
  l0 = self.box_ListWriter_145
  l1 = self.box_MissionMessageController_v3_134
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1217059820", "1217059820", "IOP20_Main", "box_ListWriter_145.Added", "box_MissionMessageController_v3_134.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_ListWriter_145_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_145
  self.SecurityCameraList = l0.Target
end
function export:f_box_ListWriter_145_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_145
  self.SecurityCameraList = l0.Target
end
function export:f_box_MultipleOR_24_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MultipleOR_24
  l1 = self.box_SetBoolean_v2_104
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|505658111", "505658111", "IOP20_Main", "box_MultipleOR_24.Out", "box_SetBoolean_v2_104.False", l0, l1)
  l1:False()
end
function export:f_box_HackableController_v2_73_Disabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_73()
  l0 = self.box_HackableController_v2_73
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|730389050", "730389050", "IOP20_Main", "box_HackableController_v2_73.Disabled", "box_HackableController_v2_73.DisableProfiling", l0, l0)
  l0:DisableProfiling()
end
function export:f_box_HackableController_v2_73_ProfilingDisabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_30()
  l0 = self.box_HackableController_v2_73
  l1 = self.box_Multiple_AND_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|943609244", "943609244", "IOP20_Main", "box_HackableController_v2_73.ProfilingDisabled", "box_Multiple_AND_30.Condition", l0, l1)
  l1:Condition(2)
end
function export:f_box_Timer_v2_14_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|603022868"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_59_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_59_Out_1
  l0 = self.box_Timer_v2_14
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1030235747", "1030235747", "IOP20_Main", "box_Timer_v2_14.TimeElapsed", "box_Ordered_Output_59.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_135_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_94()
  l0 = self.box_HackableController_v2_94
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|695503026", "695503026", "IOP20_Main", "box_Ordered_Output_135.Out", "box_HackableController_v2_94.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_Ordered_Output_135_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_DistanceBasedProgressBarController_v2_88()
  l0 = self.box_DistanceBasedProgressBarController_v2_88
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1115915339", "1115915339", "IOP20_Main", "box_Ordered_Output_135.Out", "box_DistanceBasedProgressBarController_v2_88.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_60_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Security_Camera_Monitor_27()
  l0 = self.box_Security_Camera_Monitor_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1521453197", "1521453197", "IOP20_Main", "box_Ordered_Output_60.Out", "box_Security_Camera_Monitor_27.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_60_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_8
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357372610"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1851244179", "1851244179", "IOP20_Main", "box_Ordered_Output_60.Out", "box_PhoneCommunicationController_8.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_Ordered_Output_60_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_23
  l0.Entity = "9223372044759809990"
  l0.SoundId = "soundbinary/3255868609.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|803796", "803796", "IOP20_Main", "box_Ordered_Output_60.Out", "box_PlaySound_v2_23.Play", clone, l0)
  l0:Play()
end
function export:f_box_IndexedOutput_V2_38_Output_0()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_85
  l0.Entity = self.HardDrive_Reader
  l0.SoundId = "soundbinary/4061762572.bnk"
  l0 = self.box_IndexedOutput_V2_38
  l1 = self.box_PlaySound_v2_85
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1723761899", "1723761899", "IOP20_Main", "box_IndexedOutput_V2_38.Output", "box_PlaySound_v2_85.Play", l0, l1)
  l1:Play()
end
function export:f_box_IndexedOutput_V2_38_Output_1()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_43
  l0.Entity = self.HardDrive_Reader
  l0.SoundId = "soundbinary/923207234.bnk"
  l0 = self.box_IndexedOutput_V2_38
  l1 = self.box_PlaySound_v2_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1930504156", "1930504156", "IOP20_Main", "box_IndexedOutput_V2_38.Output", "box_PlaySound_v2_43.Play", l0, l1)
  l1:Play()
end
function export:f_box_CLOController_124_Deactivated()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_118
  l0.HackableEntity = self.Cole
  l0 = self.box_CLOController_124
  l1 = self.box_HackableController_v2_118
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1713208452", "1713208452", "IOP20_Main", "box_CLOController_124.Deactivated", "box_HackableController_v2_118.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_MultipleOR_96_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_83
  l0.LayerName = "IOP20_Main"
  l0 = self.box_MultipleOR_96
  l1 = self.box_MissionLayer_v2_83
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1867018221", "1867018221", "IOP20_Main", "box_MultipleOR_96.Out", "box_MissionLayer_v2_83.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_SecurityCamController_75_EnterForced()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MultipleOR_130
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|602193297", "602193297", "IOP20_Main", "box_SecurityCamController_75.EnterForced", "box_MultipleOR_130.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Hackable_Monitor_99_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_86"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1206782442"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_86_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_86_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_86_Out_2
  l0 = self.box_Hackable_Monitor_99
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1824529212", "1824529212", "IOP20_Main", "box_Hackable_Monitor_99.HackSuccess", "box_Ordered_Output_86.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_119_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_96()
  l0 = self.box_Timer_v2_119
  l1 = self.box_MultipleOR_96
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|31482884", "31482884", "IOP20_Main", "box_Timer_v2_119.TimeElapsed", "box_MultipleOR_96.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_HackableController_v2_77_Disabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_77()
  l0 = self.box_HackableController_v2_77
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1769627987", "1769627987", "IOP20_Main", "box_HackableController_v2_77.Disabled", "box_HackableController_v2_77.DisableProfiling", l0, l0)
  l0:DisableProfiling()
end
function export:f_box_HackableController_v2_77_ProfilingDisabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_30()
  l0 = self.box_HackableController_v2_77
  l1 = self.box_Multiple_AND_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|897980854", "897980854", "IOP20_Main", "box_HackableController_v2_77.ProfilingDisabled", "box_Multiple_AND_30.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_Timer_v2_37_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOP_Prop_Controller_61
  l0.StateIndex = self.MonitorState
  l0.PropEntity = self.iop_childsplay_animatedmonitors_0
  l0 = self.box_Timer_v2_37
  l1 = self.box_AI_IOP_Prop_Controller_61
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1453292709", "1453292709", "IOP20_Main", "box_Timer_v2_37.TimeElapsed", "box_AI_IOP_Prop_Controller_61.SetStateIndex", l0, l1)
  l1:SetStateIndex()
end
function export:f_box_HackableController_v2_111_OverrideHackingTextSet()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_63()
  l0 = self.box_HackableController_v2_111
  l1 = self.box_MultipleOR_63
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1268958889", "1268958889", "IOP20_Main", "box_HackableController_v2_111.OverrideHackingTextSet", "box_MultipleOR_63.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Compare_Boolean_v2_39_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_52
  l0.CLO = "9223372045652851522"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1926823082", "1926823082", "IOP20_Main", "box_Compare_Boolean_v2_39.A_is_False", "box_CLOController_52.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Compare_Boolean_v2_39_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_45
  l0.CLO = "9223372045652851524"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|22375943", "22375943", "IOP20_Main", "box_Compare_Boolean_v2_39.A_is_True", "box_CLOController_45.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_HackableController_v2_125_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_11()
  l0 = self.box_HackableController_v2_125
  l1 = self.box_Multiple_AND_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1218863572", "1218863572", "IOP20_Main", "box_HackableController_v2_125.Disabled", "box_Multiple_AND_11.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_Ordered_Output_86_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_128
  l0.Entity = self.Headset
  l0.SoundId = "soundbinary/935004165.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1676290256", "1676290256", "IOP20_Main", "box_Ordered_Output_86.Out", "box_PlaySound_v2_128.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_86_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_111
  l0.HackableEntity = self.HardDrive_Reader
  l0.OasisHackingText = {
    section = "MISSIONS.WORLD MISSIONS.IOP.CHILDS_PLAY.OBJECTS.Hackables",
    item = "HDD Reader2",
    id = "317678"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|429388104", "429388104", "IOP20_Main", "box_Ordered_Output_86.Out", "box_HackableController_v2_111.SetOverrideHackingText", clone, l0)
  l0:SetOverrideHackingText()
end
function export:f_box_Ordered_Output_86_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_148
  l0.HackableEntity = self.Cole
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1344608972", "1344608972", "IOP20_Main", "box_Ordered_Output_86.Out", "box_HackableController_v2_148.EnableProfiling", clone, l0)
  l0:EnableProfiling()
end
function export:f_box_Multiple_AND_71_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_80
  l0.CLO = "9223372045652851523"
  l0 = self.box_Multiple_AND_71
  l1 = self.box_CLOController_80
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|869352755", "869352755", "IOP20_Main", "box_Multiple_AND_71.Out", "box_CLOController_80.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Timer_v2_74_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_132
  l0.IopID = "ChildsPlay"
  l0.IopEvent = "ChildsPlay.Headset"
  l0 = self.box_Timer_v2_74
  l1 = self.box_AI_IOPController_132
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|113285711", "113285711", "IOP20_Main", "box_Timer_v2_74.TimeElapsed", "box_AI_IOPController_132.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_Ordered_Output_131_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  l0.A = 1
  l0.B = self.HddSounds
  l0._graph = self
  l0._name = "box_Integer_Arithmetics_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|207065067"
  l0.Out = self.f_box_Integer_Arithmetics_36_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1524363789", "1524363789", "IOP20_Main", "box_Ordered_Output_131.Out", "box_Integer_Arithmetics_36.Add", clone, l0)
  l0:Add()
end
function export:f_box_Ordered_Output_131_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_125
  l0.HackableEntity = self.Headset
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|811015994", "811015994", "IOP20_Main", "box_Ordered_Output_131.Out", "box_HackableController_v2_125.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_Ordered_Output_131_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_109
  l0.HackableEntity = self.HardDrive_Reader
  l0.ProfileLinkedToHack = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1845463095", "1845463095", "IOP20_Main", "box_Ordered_Output_131.Out", "box_HackableController_v2_109.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_SetInteger_v2_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  self.MonitorState = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  l0.Integer = 0
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0._name = "box_SetInteger_v2_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|734330662"
  l0.Out = self.f_box_SetInteger_v2_21_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1493469132", "1493469132", "IOP20_Main", "box_SetInteger_v2_1.Out", "box_SetInteger_v2_21.FromInteger", clone, l0)
  l0:FromInteger()
end
function export:f_box_Timer_v2_82_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_35
  l0.HackableEntity = self.HardDrive_Reader
  l0.OasisHackingText = {
    section = "MISSIONS.WORLD MISSIONS.IOP.CHILDS_PLAY.OBJECTS.Hackables",
    item = "HDD Reader2",
    id = "317678"
  }
  l0 = self.box_Timer_v2_82
  l1 = self.box_HackableController_v2_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1910654354", "1910654354", "IOP20_Main", "box_Timer_v2_82.TimeElapsed", "box_HackableController_v2_35.SetOverrideHackingText", l0, l1)
  l1:SetOverrideHackingText()
end
function export:f_box_AI_IOP_Prop_Controller_40_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_97()
  l0 = self.box_AI_IOP_Prop_Controller_40
  l1 = self.box_Multiple_AND_97
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1281572439", "1281572439", "IOP20_Main", "box_AI_IOP_Prop_Controller_40.Out", "box_Multiple_AND_97.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_LightController_136_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_87
  l0.Seconds = 2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1546896883", "1546896883", "IOP20_Main", "box_LightController_136.Out", "box_Timer_v2_87.Start", clone, l0)
  l0:Start()
end
function export:f_box_IOPMonitor_50_EventOccurred()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_37
  l0.Seconds = 0.7
  l0 = self.box_IOPMonitor_50
  l1 = self.box_Timer_v2_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1177339867", "1177339867", "IOP20_Main", "box_IOPMonitor_50.EventOccurred", "box_Timer_v2_37.Start", l0, l1)
  l1:Start()
end
function export:f_box_LightController_100_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_71()
  l0 = self.box_Multiple_AND_71
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|595312892", "595312892", "IOP20_Main", "box_LightController_100.Disabled", "box_Multiple_AND_71.Condition", clone, l0)
  l0:Condition(2)
end
function export:f_box_IOPPropMonitor_141_PropSpawned()
  local l0, l1
  self = self._graph
  l0 = self.box_IOPPropMonitor_141
  l1 = Boxes[PathID("domino/System/Bind_v2.lua")]
  l1.Parent = l0.PropEntity
  l1.Child = self.Headset
  l1.BoneName = nil
  l1.BoneNameStr = "headset_01"
  l1.RemoveOffset = 1
  l1._graph = self
  l1._name = "box_Bind_v2_139"
  l1._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1360239196"
  l1.Bound = DummyFunction
  l1.UnBound = DummyFunction
  l1.Out = DummyFunction
  l0 = self.box_IOPPropMonitor_141
  l1 = Boxes[PathID("domino/System/Bind_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1505617779", "1505617779", "IOP20_Main", "box_IOPPropMonitor_141.PropSpawned", "box_Bind_v2_139.Bind", l0, l1)
  l1:Bind()
end
function export:f_box_Timer_v2_48_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_91"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|474356348"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_91_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_91_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_91_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_91_Out_3
  l0 = self.box_Timer_v2_48
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1919140807", "1919140807", "IOP20_Main", "box_Timer_v2_48.TimeElapsed", "box_Ordered_Output_91.In", l0, l1)
  l1:In()
end
function export:f_box_SetInteger_v2_51_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  self.StaticOverride = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_101"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|27176493"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_101_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_101_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1796209553", "1796209553", "IOP20_Main", "box_SetInteger_v2_51.Out", "box_Ordered_Output_101.In", clone, l0)
  l0:In()
end
function export:f_box_IOPMonitor_25_ActivateHackables()
  local l0
  self = self._graph
  self:OnEnter_box_IOPMonitor_25()
  l0 = self.box_IOPMonitor_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1265779854", "1265779854", "IOP20_Main", "box_IOPMonitor_25.ActivateHackables", "box_IOPMonitor_25.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_IOPMonitor_25_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|2017632014"
  l0._DynamicAnchors = {Out = 9}
  l0.Out[0] = self.f_box_Ordered_Output_32_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_32_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_32_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_32_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_32_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_32_Out_5
  l0.Out[6] = self.f_box_Ordered_Output_32_Out_6
  l0.Out[7] = self.f_box_Ordered_Output_32_Out_7
  l0.Out[8] = self.f_box_Ordered_Output_32_Out_8
  l0 = self.box_IOPMonitor_25
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1021071987", "1021071987", "IOP20_Main", "box_IOPMonitor_25.Disabled", "box_Ordered_Output_32.In", l0, l1)
  l1:In()
end
function export:f_box_Multiple_AND_97_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372065360312451"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|440504543"
  l0.Enabled = self.f_box_LightController_47_Enabled
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Multiple_AND_97
  l1 = Boxes[PathID("domino/System/LightController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|2122160465", "2122160465", "IOP20_Main", "box_Multiple_AND_97.Out", "box_LightController_47.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Security_Camera_Monitor_27_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_149
  l0.Seconds = 0.5
  l0 = self.box_Security_Camera_Monitor_27
  l1 = self.box_Timer_v2_149
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|198623485", "198623485", "IOP20_Main", "box_Security_Camera_Monitor_27.Disabled", "box_Timer_v2_149.Start", l0, l1)
  l1:Start()
end
function export:f_box_Security_Camera_Monitor_27_OnEndAccessCamera()
  local l0
  self = self._graph
  self:OnEnter_box_Security_Camera_Monitor_27()
  l0 = self.box_Security_Camera_Monitor_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|401620309", "401620309", "IOP20_Main", "box_Security_Camera_Monitor_27.OnEndAccessCamera", "box_Security_Camera_Monitor_27.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_SetBoolean_v2_107_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_107
  self.ColeIsFreaked = l0.Target
end
function export:f_box_SetBoolean_v2_107_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_107
  self.ColeIsFreaked = l0.Target
end
function export:f_box_SetBoolean_v2_107_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_107
  self.ColeIsFreaked = l0.Target
end
function export:f_box_SetBoolean_v2_107_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_107
  self.ColeIsFreaked = l0.Target
end
function export:f_box_SetBoolean_v2_107_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_107
  self.ColeIsFreaked = l0.Target
end
function export:f_box_Ordered_Output_46_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOP_Prop_Controller_93
  l0.StateIndex = self.MonitorState
  l0.PropEntity = self.iop_childsplay_animatedmonitors_0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|214755558", "214755558", "IOP20_Main", "box_Ordered_Output_46.Out", "box_AI_IOP_Prop_Controller_93.SetStateIndex", clone, l0)
  l0:SetStateIndex()
end
function export:f_box_Ordered_Output_46_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOP_Prop_Controller_2
  l0.StateIndex = 0
  l0.PropEntity = "9223372044478713573"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|187651994", "187651994", "IOP20_Main", "box_Ordered_Output_46.Out", "box_AI_IOP_Prop_Controller_2.SetStateIndex", clone, l0)
  l0:SetStateIndex()
end
function export:f_box_Ordered_Output_46_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372065360312451"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_100"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1382867711"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_LightController_100_Disabled
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1601635034", "1601635034", "IOP20_Main", "box_Ordered_Output_46.Out", "box_LightController_100.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_IOP_CleanUp_9_Completed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_122
  l0.Entity = "9223372044759809990"
  l0.SoundId = "soundbinary/2881901905.bnk"
  l0 = self.box_IOP_CleanUp_9
  l1 = self.box_PlaySound_v2_122
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1615171594", "1615171594", "IOP20_Main", "box_IOP_CleanUp_9.Completed", "box_PlaySound_v2_122.Play", l0, l1)
  l1:Play()
end
function export:f_box_IOP_CleanUp_9_DisconnectedAnimationPlayed()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_42
  l0.User = self.Cole
  l0 = self.box_IOP_CleanUp_9
  l1 = self.box_CLOController_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|271603609", "271603609", "IOP20_Main", "box_IOP_CleanUp_9.DisconnectedAnimationPlayed", "box_CLOController_42.UnspawnUser", l0, l1)
  l1:UnspawnUser()
end
function export:f_box_Get_Player_ID_127_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOP_StartUp_5
  l0.MainLayer = "IOP20_Main"
  l0.CheckPoint = "CheckPoint_0"
  l0.CinemaZone = "9223372059805863979"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1528017605", "1528017605", "IOP20_Main", "box_Get_Player_ID_127.Out", "box_IOP_StartUp_5.In", clone, l0)
  l0:In()
end
function export:f_box_HackableController_v2_118_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  l0.Parent = self.Cole
  l0.Child = self.Headset
  l0.BoneName = "Head"
  l0.BoneNameStr = nil
  l0.RemoveOffset = nil
  l0._graph = self
  l0._name = "box_Bind_v2_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|359131248"
  l0.Bound = DummyFunction
  l0.UnBound = DummyFunction
  l0.Out = self.f_box_Bind_v2_58_Out
  l0 = self.box_HackableController_v2_118
  l1 = Boxes[PathID("domino/System/Bind_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|783819560", "783819560", "IOP20_Main", "box_HackableController_v2_118.Disabled", "box_Bind_v2_58.Bind", l0, l1)
  l1:Bind()
end
function export:f_box_HackableController_v2_16_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|330884412"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_31_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_31_Out_1
  l0 = self.box_HackableController_v2_16
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1030851144", "1030851144", "IOP20_Main", "box_HackableController_v2_16.Disabled", "box_Ordered_Output_31.In", l0, l1)
  l1:In()
end
function export:f_box_SetActionMap_v2_81_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOP_CleanUp_9
  l0.SecurityCameraList = self.SecurityCameraList
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1067837576", "1067837576", "IOP20_Main", "box_SetActionMap_v2_81.Pushed", "box_IOP_CleanUp_9.In", clone, l0)
  l0:In()
end
function export:f_box_HackableController_v2_94_Disabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_94()
  l0 = self.box_HackableController_v2_94
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1205170891", "1205170891", "IOP20_Main", "box_HackableController_v2_94.Disabled", "box_HackableController_v2_94.DisableProfiling", l0, l0)
  l0:DisableProfiling()
end
function export:f_box_AI_IOP_Prop_Controller_92_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_97()
  l0 = self.box_AI_IOP_Prop_Controller_92
  l1 = self.box_Multiple_AND_97
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|41794494", "41794494", "IOP20_Main", "box_AI_IOP_Prop_Controller_92.Out", "box_Multiple_AND_97.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_AI_IOPController_102_StartCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = nil
  l0.CameraEntityList = {
    "IOPCam_ChildsPlay_ShelfCamera",
    "IOPCam_ChildsPlay_StartCamera",
    "IOPCam_ChildsPlay_BoxCamera",
    "IOPCam_ChildsPlay_WebCamera"
  }
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = 0
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0._name = "box_SecurityCamController_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1218951898"
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
  l0 = self.box_AI_IOPController_102
  l1 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|904587665", "904587665", "IOP20_Main", "box_AI_IOPController_102.StartCompleted", "box_SecurityCamController_22.SetCanExit", l0, l1)
  l1:SetCanExit()
end
function export:f_box_Media_System_Custom_Broadcast_Controller_68_LoadAndPlayRequested()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_30()
  l0 = self.box_Multiple_AND_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1480412248", "1480412248", "IOP20_Main", "box_Media_System_Custom_Broadcast_Controller_68.LoadAndPlayRequested", "box_Multiple_AND_30.Condition", clone, l0)
  l0:Condition(3)
end
function export:f_box_Timer_v2_149_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_123
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_Timer_v2_149
  l1 = self.box_CinematicPrep_123
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|16326158", "16326158", "IOP20_Main", "box_Timer_v2_149.TimeElapsed", "box_CinematicPrep_123.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_CLOController_80_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_80
  self.Cole = l0.UserID
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_140"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|676880555"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_140_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_140_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_140_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_140_Out_3
  l0 = self.box_CLOController_80
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|2073515274", "2073515274", "IOP20_Main", "box_CLOController_80.OnUserInPlace", "box_Ordered_Output_140.In", l0, l1)
  l1:In()
end
function export:f_box_HackableController_v2_109_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_11()
  l0 = self.box_HackableController_v2_109
  l1 = self.box_Multiple_AND_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|268682153", "268682153", "IOP20_Main", "box_HackableController_v2_109.Disabled", "box_Multiple_AND_11.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_Multiple_AND_30_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  l0.Integer = 0
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0._name = "box_SetInteger_v2_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1304950639"
  l0.Out = self.f_box_SetInteger_v2_1_Out
  l0 = self.box_Multiple_AND_30
  l1 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|2096770260", "2096770260", "IOP20_Main", "box_Multiple_AND_30.Out", "box_SetInteger_v2_1.FromInteger", l0, l1)
  l1:FromInteger()
end
function export:f_box_Control_the_profiling_capabilities_of_a_player_84_ProfilerReenabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|426246566"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_69_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_69_Out_1
  l0 = self.box_Control_the_profiling_capabilities_of_a_player_84
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|492891882", "492891882", "IOP20_Main", "box_Control_the_profiling_capabilities_of_a_player_84.ProfilerReenabled", "box_Ordered_Output_69.In", l0, l1)
  l1:In()
end
function export:f_box_Multiple_AND_11_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_82
  l0.Seconds = 0.7
  l0 = self.box_Multiple_AND_11
  l1 = self.box_Timer_v2_82
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|654798902", "654798902", "IOP20_Main", "box_Multiple_AND_11.Out", "box_Timer_v2_82.Start", l0, l1)
  l1:Start()
end
function export:f_box_MissionLayer_v2_83_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_83
  l1 = self.box_MissionController_v4_120
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|407576693", "407576693", "IOP20_Main", "box_MissionLayer_v2_83.Unloaded", "box_MissionController_v4_120.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_HackableController_v2_116_Disabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_116()
  l0 = self.box_HackableController_v2_116
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|16332113", "16332113", "IOP20_Main", "box_HackableController_v2_116.Disabled", "box_HackableController_v2_116.DisableProfiling", l0, l0)
  l0:DisableProfiling()
end
function export:f_box_AI_IOP_Prop_Controller_93_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_71()
  l0 = self.box_AI_IOP_Prop_Controller_93
  l1 = self.box_Multiple_AND_71
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|2004063538", "2004063538", "IOP20_Main", "box_AI_IOP_Prop_Controller_93.Out", "box_Multiple_AND_71.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_Ordered_Output_32_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_28()
  l0 = self.box_HackableController_v2_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1665532893", "1665532893", "IOP20_Main", "box_Ordered_Output_32.Out", "box_HackableController_v2_28.EnableHack", clone, l0)
  l0:EnableHack()
end
function export:f_box_Ordered_Output_32_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_IOPMonitor_4()
  l0 = self.box_IOPMonitor_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|807861106", "807861106", "IOP20_Main", "box_Ordered_Output_32.Out", "box_IOPMonitor_4.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_32_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  l0.Integer = 0
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0._name = "box_SetInteger_v2_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|103292252"
  l0.Out = self.f_box_SetInteger_v2_29_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|115389130", "115389130", "IOP20_Main", "box_Ordered_Output_32.Out", "box_SetInteger_v2_29.FromInteger", clone, l0)
  l0:FromInteger()
end
function export:f_box_Ordered_Output_32_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOPMonitor_50
  l0.MonitoredEvent = "ChildsPlay.HDD"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1646403357", "1646403357", "IOP20_Main", "box_Ordered_Output_32.Out", "box_IOPMonitor_50.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_32_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_IOPMonitor_33()
  l0 = self.box_IOPMonitor_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1037484390", "1037484390", "IOP20_Main", "box_Ordered_Output_32.Out", "box_IOPMonitor_33.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_32_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOPMonitor_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1561130082", "1561130082", "IOP20_Main", "box_Ordered_Output_32.Out", "box_IOPMonitor_12.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_32_Out_6()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_IOPMonitor_114()
  l0 = self.box_IOPMonitor_114
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|390930483", "390930483", "IOP20_Main", "box_Ordered_Output_32.Out", "box_IOPMonitor_114.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_32_Out_7()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOPMonitor_108
  l0.AutoDisableOnDeactivateHackables = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|2075233105", "2075233105", "IOP20_Main", "box_Ordered_Output_32.Out", "box_IOPMonitor_108.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_32_Out_8()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_147
  l0.HackableEntity = self.Cole
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|175406816", "175406816", "IOP20_Main", "box_Ordered_Output_32.Out", "box_HackableController_v2_147.DisableProfiling", clone, l0)
  l0:DisableProfiling()
end
function export:f_box_IOPPropMonitor_137_PropSpawned()
  local l0, l1
  self = self._graph
  l0 = self.box_IOPPropMonitor_137
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l1.Entity = l0.PropEntity
  l1.EntityList = nil
  l1.Visible = nil
  l1.AffectChildren = nil
  l1.EntitiesList = nil
  l1._graph = self
  l1._name = "box_VisibilityController_v2_146"
  l1._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1130585936"
  l1.IsSet = DummyFunction
  l1.Shown = DummyFunction
  l1.Hidden = DummyFunction
  l1.Out = DummyFunction
  l0 = self.box_IOPPropMonitor_137
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1116313201", "1116313201", "IOP20_Main", "box_IOPPropMonitor_137.PropSpawned", "box_VisibilityController_v2_146.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Hackable_Monitor_66_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_131"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1279981046"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_131_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_131_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_131_Out_2
  l0 = self.box_Hackable_Monitor_66
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|133086145", "133086145", "IOP20_Main", "box_Hackable_Monitor_66.HackSuccess", "box_Ordered_Output_131.In", l0, l1)
  l1:In()
end
function export:f_box_SetActionMap_v2_67_Popped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Control_the_profiling_capabilities_of_a_player_84
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1408119741", "1408119741", "IOP20_Main", "box_SetActionMap_v2_67.Popped", "box_Control_the_profiling_capabilities_of_a_player_84.ReenableProfiler", clone, l0)
  l0:ReenableProfiler()
end
function export:f_box_HackableController_v2_28_Enabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_28()
  l0 = self.box_HackableController_v2_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1726255597", "1726255597", "IOP20_Main", "box_HackableController_v2_28.Enabled", "box_HackableController_v2_28.EnableProfiling", l0, l0)
  l0:EnableProfiling()
end
function export:f_box_HackableController_v2_28_ProfilingEnabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_49()
  l0 = self.box_HackableController_v2_28
  l1 = self.box_Hackable_Monitor_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|1640632890", "1640632890", "IOP20_Main", "box_HackableController_v2_28.ProfilingEnabled", "box_Hackable_Monitor_49.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_AI_IOPController_65_SendEventCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_129"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|558167929"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_129_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_129_Out_1
  l0 = self.box_AI_IOPController_65
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|920980870", "920980870", "IOP20_Main", "box_AI_IOPController_65.SendEventCompleted", "box_Ordered_Output_129.In", l0, l1)
  l1:In()
end
function export:f_box_Compare_Integers_v2_110_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOP_Prop_Controller_7
  l0.StateIndex = self.MonitorState
  l0.PropEntity = self.iop_childsplay_animatedmonitors_0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Main|768791405", "768791405", "IOP20_Main", "box_Compare_Integers_v2_110.A_eq_B", "box_AI_IOP_Prop_Controller_7.SetStateIndex", clone, l0)
  l0:SetStateIndex()
end
function export:OnEnter_box_HackableController_v2_79()
  local l0
  l0 = self.box_HackableController_v2_79
  l0.HackableEntity = self.HardDrive_Reader
end
function export:OnEnter_box_HackableController_v2_115()
  local l0
  l0 = self.box_HackableController_v2_115
  l0.HackableEntity = self.Toy_Rabbit
end
function export:OnEnter_box_DistanceBasedProgressBarController_v2_88()
  local l0
  l0 = self.box_DistanceBasedProgressBarController_v2_88
  l0.Text = {
    section = "MISSIONS.WORLD MISSIONS.IOP.CHILDS_PLAY.OBJECTS.Hackables",
    item = "Router",
    id = "316615"
  }
  l0.TotalTime = 3
end
function export:OnEnter_box_Hackable_Monitor_49()
  local l0
  l0 = self.box_Hackable_Monitor_49
  l0.HackableEntity = self.Headset
end
function export:OnEnter_box_IOPMonitor_4()
  local l0
  l0 = self.box_IOPMonitor_4
  l0.MonitoredEvent = "ChildsPlay.Headset"
end
function export:OnEnter_box_HackableController_v2_112()
  local l0
  l0 = self.box_HackableController_v2_112
  l0.HackableEntity = self.Hackable_Router
end
function export:OnEnter_box_MultipleOR_63()
end
function export:OnEnter_box_HackableController_v2_106()
  local l0
  l0 = self.box_HackableController_v2_106
  l0.HackableEntity = self.Hackable_Router
end
function export:OnEnter_box_IOPMonitor_114()
  local l0
  l0 = self.box_IOPMonitor_114
  l0.MonitoredEvent = "ChildsPlay.Chair"
end
function export:OnEnter_box_IOPMonitor_33()
  local l0
  l0 = self.box_IOPMonitor_33
  l0.MonitoredEvent = "ChildsPlay.Cabinet"
end
function export:OnEnter_box_HackableController_v2_98()
  local l0
  l0 = self.box_HackableController_v2_98
  l0.HackableEntity = self.Headset
  l0.ProfileLinkedToHack = 1
end
function export:OnEnter_box_MultipleOR_24()
end
function export:OnEnter_box_HackableController_v2_73()
  local l0
  l0 = self.box_HackableController_v2_73
  l0.HackableEntity = self.HardDrive_Reader
end
function export:OnEnter_box_MultipleOR_96()
end
function export:OnEnter_box_HackableController_v2_77()
  local l0
  l0 = self.box_HackableController_v2_77
  l0.HackableEntity = self.Headset
end
function export:OnEnter_box_Multiple_AND_71()
end
function export:OnEnter_box_IOPMonitor_25()
end
function export:OnEnter_box_Multiple_AND_97()
end
function export:OnEnter_box_Security_Camera_Monitor_27()
  local l0
  l0 = self.box_Security_Camera_Monitor_27
  l0.CameraEntity = self.ChildsPlay_StartCamera
end
function export:OnEnter_box_HackableController_v2_94()
  local l0
  l0 = self.box_HackableController_v2_94
  l0.HackableEntity = self.Hackable_Router
end
function export:OnEnter_box_Multiple_AND_30()
  local l0
  l0 = self.box_Multiple_AND_30
  l0.AutoReset = 1
end
function export:OnEnter_box_Multiple_AND_11()
  local l0
  l0 = self.box_Multiple_AND_11
  l0.AutoReset = 1
end
function export:OnEnter_box_HackableController_v2_116()
  local l0
  l0 = self.box_HackableController_v2_116
  l0.HackableEntity = self.HardDrive_Reader
  l0.ProfileLinkedToHack = 1
end
function export:OnEnter_box_HackableController_v2_28()
  local l0
  l0 = self.box_HackableController_v2_28
  l0.HackableEntity = self.Headset
  l0.ProfileLinkedToHack = 1
end
_compilerVersion = 4
