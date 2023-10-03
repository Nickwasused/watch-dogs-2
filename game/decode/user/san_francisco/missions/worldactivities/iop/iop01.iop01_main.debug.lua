export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/IOPController.lua")
  cbox:RegisterBox("domino/System/Bind_v2.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CompareStrings_v2.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/Library/common/IOP.IOP_CleanUp.debug.lua")
  cbox:RegisterBox("domino/Library/common/IOP.IOP_StartUp.debug.lua")
  cbox:RegisterBox("domino/System/IOPMonitor.lua")
  cbox:RegisterBox("domino/System/IOPPropMonitor.lua")
  cbox:RegisterBox("domino/System/LightController.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/SecurityCameraMonitor.lua")
  cbox:RegisterBox("domino/System/SecurityCamController.lua")
  cbox:RegisterBox("domino/System/SetString.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
  cbox:LoadResource("soundbinary/86470880.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/222753305.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1663621747.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/527157958.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2456373634.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3780007033.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3242316079.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "IOP01_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main"
  self.PlayerEntity = nil
  self.Light_01 = "9223372059003416285"
  self.Music = "9223372043906472732"
  self.Hackable_Lightswitch = "9223372043906472728"
  self.Laptop = "9223372044537668953"
  self.Remote_Control = "9223372067130875680"
  self.Lightswitch = "9223372043906472728"
  self.Light4 = "9223372059003416287"
  self.DancingGirl = "9223372045652851233"
  self.Hackable_RemoteControl = "9223372067130875680"
  self.DanceFailLamp = nil
  self.box_HackableController_v2_78 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_78
  l0._graph = self
  l0._name = "box_HackableController_v2_78"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|11556923"
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
  self.box_IOP_StartUp_44 = cbox:CreateBox("domino/Library/common/IOP.IOP_StartUp.debug.lua")
  l0 = self.box_IOP_StartUp_44
  l0._graph = self
  l0._name = "box_IOP_StartUp_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|76674268"
  l0.Out = self.f_box_IOP_StartUp_44_Out
  self.box_PlaySound_v2_32 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_32
  l0._graph = self
  l0._name = "box_PlaySound_v2_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|153723201"
  l0.Out = DummyFunction
  l0.Started = self.f_box_PlaySound_v2_32_Started
  l0.Finished = DummyFunction
  self.box_Security_Camera_Monitor_17 = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self.box_Security_Camera_Monitor_17
  l0._graph = self
  l0._name = "box_Security_Camera_Monitor_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|229202731"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Security_Camera_Monitor_17_Disabled
  l0.OnStartAccessCamera = DummyFunction
  l0.OnEndAccessCamera = self.f_box_Security_Camera_Monitor_17_OnEndAccessCamera
  l0.OnStartExitCamera = DummyFunction
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self.box_Timer_v2_61 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_61
  l0._graph = self
  l0._name = "box_Timer_v2_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|231516424"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_61_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_HackableController_v2_7 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_7
  l0._graph = self
  l0._name = "box_HackableController_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|297216955"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_7_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_7_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_HackableController_v2_52 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_52
  l0._graph = self
  l0._name = "box_HackableController_v2_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|306702950"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_52_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_52_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_HackableController_v2_3 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_3
  l0._graph = self
  l0._name = "box_HackableController_v2_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|350916313"
  l0.Enabled = self.f_box_HackableController_v2_3_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = self.f_box_HackableController_v2_3_ProfilingEnabled
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_AI_IOPController_26 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_26
  l0._graph = self
  l0._name = "box_AI_IOPController_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|372084434"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_PlaySound_v2_1 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_1
  l0._graph = self
  l0._name = "box_PlaySound_v2_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|395178861"
  l0.Out = DummyFunction
  l0.Started = self.f_box_PlaySound_v2_1_Started
  l0.Finished = DummyFunction
  self.box_IOPMonitor_34 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_34
  l0._graph = self
  l0._name = "box_IOPMonitor_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|400387312"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_IOPMonitor_34_Disabled
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_box_IOPMonitor_34_EventOccurred
  l0.Out = DummyFunction
  self.box_HackableController_v2_35 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_35
  l0._graph = self
  l0._name = "box_HackableController_v2_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|448280717"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_35_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_PlaySound_v2_43 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_43
  l0._graph = self
  l0._name = "box_PlaySound_v2_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|453054501"
  l0.Out = self.f_box_PlaySound_v2_43_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_AI_IOPController_57 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_57
  l0._graph = self
  l0._name = "box_AI_IOPController_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|511431993"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_IOPMonitor_31 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_31
  l0._graph = self
  l0._name = "box_IOPMonitor_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|548390371"
  l0.Enabled = self.f_box_IOPMonitor_31_Enabled
  l0.Disabled = self.f_box_IOPMonitor_31_Disabled
  l0.ActivateHackables = self.f_box_IOPMonitor_31_ActivateHackables
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = DummyFunction
  l0.Out = DummyFunction
  self.box_IOPMonitor_15 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_15
  l0._graph = self
  l0._name = "box_IOPMonitor_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|591297535"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = self.f_box_IOPMonitor_15_DeactivateHackables
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = DummyFunction
  l0.Out = DummyFunction
  self.box_IOPPropMonitor_64 = cbox:CreateBox("domino/System/IOPPropMonitor.lua")
  l0 = self.box_IOPPropMonitor_64
  l0._graph = self
  l0._name = "box_IOPPropMonitor_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|610951073"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.PropSpawned = self.f_box_IOPPropMonitor_64_PropSpawned
  self.box_PhoneCommunicationController_39 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_39
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|732528804"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_39_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_PlaySound_v2_47 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_47
  l0._graph = self
  l0._name = "box_PlaySound_v2_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|752186286"
  l0.Out = self.f_box_PlaySound_v2_47_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Timer_v2_72 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_72
  l0._graph = self
  l0._name = "box_Timer_v2_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|780692644"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_72_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_59 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_59
  l0._graph = self
  l0._name = "box_PlaySound_v2_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|793781912"
  l0.Out = self.f_box_PlaySound_v2_59_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_50 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_50
  l0._graph = self
  l0._name = "box_PlaySound_v2_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|823135927"
  l0.Out = DummyFunction
  l0.Started = self.f_box_PlaySound_v2_50_Started
  l0.Finished = DummyFunction
  self.box_MultipleOR_6 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_6
  l0._graph = self
  l0._name = "box_MultipleOR_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|847506852"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_6_Out
  self.box_IOPMonitor_48 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_48
  l0._graph = self
  l0._name = "box_IOPMonitor_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|849836572"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_box_IOPMonitor_48_EventOccurred
  l0.Out = DummyFunction
  self.box_Timer_v2_85 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_85
  l0._graph = self
  l0._name = "box_Timer_v2_85"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|855260042"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_85_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CLOController_60 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_60
  l0._graph = self
  l0._name = "box_CLOController_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|927096939"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_IOP_CleanUp_19 = cbox:CreateBox("domino/Library/common/IOP.IOP_CleanUp.debug.lua")
  l0 = self.box_IOP_CleanUp_19
  l0._graph = self
  l0._name = "box_IOP_CleanUp_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|932211420"
  l0.Completed = self.f_box_IOP_CleanUp_19_Completed
  l0.DisconnectedAnimationPlayed = self.f_box_IOP_CleanUp_19_DisconnectedAnimationPlayed
  l0.Out = DummyFunction
  self.box_Timer_v2_71 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_71
  l0._graph = self
  l0._name = "box_Timer_v2_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1058832443"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_71_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CinematicPrep_54 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_54
  l0._graph = self
  l0._name = "box_CinematicPrep_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1073470611"
  l0.PreOut = DummyFunction
  l0.PostOut = DummyFunction
  self.box_HackableController_v2_82 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_82
  l0._graph = self
  l0._name = "box_HackableController_v2_82"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1116160748"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_82_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_PlaySound_v2_29 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_29
  l0._graph = self
  l0._name = "box_PlaySound_v2_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1216397344"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_box_PlaySound_v2_29_Finished
  self.box_Hackable_Monitor_18 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_18
  l0._graph = self
  l0._name = "box_Hackable_Monitor_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1257009047"
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
  self.box_HackableController_v2_83 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_83
  l0._graph = self
  l0._name = "box_HackableController_v2_83"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1260957373"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_83_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_IOPMonitor_62 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_62
  l0._graph = self
  l0._name = "box_IOPMonitor_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1278897741"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = self.f_box_IOPMonitor_62_IOPComplete
  l0.EventOccurred = DummyFunction
  l0.Out = DummyFunction
  self.box_CLOController_20 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_20
  l0._graph = self
  l0._name = "box_CLOController_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1286473773"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_CLOController_20_Deactivated
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_Timer_v2_86 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_86
  l0._graph = self
  l0._name = "box_Timer_v2_86"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1290853946"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_86_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CLOController_16 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_16
  l0._graph = self
  l0._name = "box_CLOController_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1358980291"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_16_OnUserInPlace
  self.box_AI_IOPController_68 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_68
  l0._graph = self
  l0._name = "box_AI_IOPController_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1372503672"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_68_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_Multiple_AND_56 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_56
  l0._graph = self
  l0._name = "box_Multiple_AND_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1379401310"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_56_Out
  self.box_Timer_v2_84 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_84
  l0._graph = self
  l0._name = "box_Timer_v2_84"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1390052392"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_84_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_14 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_14
  l0._graph = self
  l0._name = "box_Timer_v2_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1428739695"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_14_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_AI_IOPController_37 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_37
  l0._graph = self
  l0._name = "box_AI_IOPController_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1453483264"
  l0.Out = DummyFunction
  l0.StartCompleted = self.f_box_AI_IOPController_37_StartCompleted
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_PhoneCommunicationController_67 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_67
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1470539648"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_67_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_PlaySound_v2_81 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_81
  l0._graph = self
  l0._name = "box_PlaySound_v2_81"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1489674293"
  l0.Out = self.f_box_PlaySound_v2_81_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_IOPMonitor_30 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_30
  l0._graph = self
  l0._name = "box_IOPMonitor_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1513930712"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_box_IOPMonitor_30_EventOccurred
  l0.Out = DummyFunction
  self.box_HackableController_v2_10 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_10
  l0._graph = self
  l0._name = "box_HackableController_v2_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1648170941"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_10_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Multiple_AND_22 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_22
  l0._graph = self
  l0._name = "box_Multiple_AND_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1669208876"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_22_Out
  self.box_PlaySound_v2_27 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_27
  l0._graph = self
  l0._name = "box_PlaySound_v2_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1692964444"
  l0.Out = DummyFunction
  l0.Started = self.f_box_PlaySound_v2_27_Started
  l0.Finished = DummyFunction
  self.box_Hackable_Monitor_33 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_33
  l0._graph = self
  l0._name = "box_Hackable_Monitor_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1728976922"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_33_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_MissionLayer_v2_4 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_4
  l0._graph = self
  l0._name = "box_MissionLayer_v2_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1762315026"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_4_Unloaded
  l0.Reseted = DummyFunction
  self.box_MissionController_v4_41 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_41
  l0._graph = self
  l0._name = "box_MissionController_v4_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1768479674"
  self.box_Multiple_AND_36 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_36
  l0._graph = self
  l0._name = "box_Multiple_AND_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1857325992"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_36_Out
  self.box_IOPPropMonitor_76 = cbox:CreateBox("domino/System/IOPPropMonitor.lua")
  l0 = self.box_IOPPropMonitor_76
  l0._graph = self
  l0._name = "box_IOPPropMonitor_76"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1969761918"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.PropSpawned = self.f_box_IOPPropMonitor_76_PropSpawned
  self.box_HackableController_v2_55 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_55
  l0._graph = self
  l0._name = "box_HackableController_v2_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|2006222072"
  l0.Enabled = self.f_box_HackableController_v2_55_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = self.f_box_HackableController_v2_55_ProfilingEnabled
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
  self:OnEnter_box_MultipleOR_6()
  l0 = self.box_MultipleOR_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1573989394", "1573989394", "IOP01_Main", "CheckPoint_0", "box_MultipleOR_6.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_6()
  l0 = self.box_MultipleOR_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|241079061", "241079061", "IOP01_Main", "In", "box_MultipleOR_6.Input", self, l0)
  l0:Input(0)
end
function export:f_box_Bind_v2_65_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOPPropMonitor_64
  l1 = Boxes[PathID("domino/System/Bind_v2.lua")]
  l1.Parent = l0.PropEntity
  l1.Child = "9223372043906472728"
  l1.BoneName = nil
  l1.BoneNameStr = "int_pl_a_dancefail_lamp_01"
  l1.RemoveOffset = nil
  l1._graph = self
  l1._name = "box_Bind_v2_73"
  l1._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1215498409"
  l1.Bound = DummyFunction
  l1.UnBound = DummyFunction
  l1.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|534893758", "534893758", "IOP01_Main", "box_Bind_v2_65.Out", "box_Bind_v2_73.Bind", clone, l1)
  l1:Bind()
end
function export:f_box_IOP_StartUp_44_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1450229444"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_63_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_63_Out_1
  l0 = self.box_IOP_StartUp_44
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|746069092", "746069092", "IOP01_Main", "box_IOP_StartUp_44.Out", "box_Ordered_Output_63.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_53_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_35()
  l0 = self.box_HackableController_v2_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1482394115", "1482394115", "IOP01_Main", "box_Ordered_Output_53.Out", "box_HackableController_v2_35.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_Ordered_Output_53_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_10()
  l0 = self.box_HackableController_v2_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1394569201", "1394569201", "IOP01_Main", "box_Ordered_Output_53.Out", "box_HackableController_v2_10.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_PlaySound_v2_32_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetString.lua")]
  l0.String = "TaylorSwift"
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.Entity = nil
  l0.Player = nil
  l0._graph = self
  l0._name = "box_Set_String_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|665429030"
  l0.Out = self.f_box_Set_String_9_Out
  l0 = self.box_PlaySound_v2_32
  l1 = Boxes[PathID("domino/System/SetString.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|2110921179", "2110921179", "IOP01_Main", "box_PlaySound_v2_32.Started", "box_Set_String_9.FromString", l0, l1)
  l1:FromString()
end
function export:f_box_Bind_v2_74_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOPPropMonitor_76
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l1.Entity = l0.PropEntity
  l1.EntityList = nil
  l1.Visible = nil
  l1.AffectChildren = 0
  l1.EntitiesList = nil
  l1._graph = self
  l1._name = "box_VisibilityController_v2_77"
  l1._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1548597468"
  l1.IsSet = DummyFunction
  l1.Shown = DummyFunction
  l1.Hidden = DummyFunction
  l1.Out = self.f_box_VisibilityController_v2_77_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|859985977", "859985977", "IOP01_Main", "box_Bind_v2_74.Out", "box_VisibilityController_v2_77.Hide", clone, l1)
  l1:Hide()
end
function export:f_box_Ordered_Output_42_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOPMonitor_30
  l0.MonitoredEvent = "DanceFail.Lights"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|2143786190", "2143786190", "IOP01_Main", "box_Ordered_Output_42.Out", "box_IOPMonitor_30.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_42_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOPMonitor_48
  l0.MonitoredEvent = "DanceFail.Music"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1542497483", "1542497483", "IOP01_Main", "box_Ordered_Output_42.Out", "box_IOPMonitor_48.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Security_Camera_Monitor_17_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1835692195"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_38_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_38_Out_1
  l0 = self.box_Security_Camera_Monitor_17
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1039348474", "1039348474", "IOP01_Main", "box_Security_Camera_Monitor_17.Disabled", "box_Ordered_Output_38.In", l0, l1)
  l1:In()
end
function export:f_box_Security_Camera_Monitor_17_OnEndAccessCamera()
  local l0
  self = self._graph
  self:OnEnter_box_Security_Camera_Monitor_17()
  l0 = self.box_Security_Camera_Monitor_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1504295997", "1504295997", "IOP01_Main", "box_Security_Camera_Monitor_17.OnEndAccessCamera", "box_Security_Camera_Monitor_17.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Timer_v2_61_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_57
  l0.IopID = "DanceFail"
  l0.IopEvent = "DanceFail.Music"
  l0 = self.box_Timer_v2_61
  l1 = self.box_AI_IOPController_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|553248642", "553248642", "IOP01_Main", "box_Timer_v2_61.TimeElapsed", "box_AI_IOPController_57.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_Ordered_Output_66_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_20
  l0.CLO = "9223372045652851233"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1647579327", "1647579327", "IOP01_Main", "box_Ordered_Output_66.Out", "box_CLOController_20.Deactivate", clone, l0)
  l0:Deactivate()
end
function export:f_box_Ordered_Output_66_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOPPropMonitor_64
  l0.PropName = "iop_dancefail_lampstanding_01"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|450658519", "450658519", "IOP01_Main", "box_Ordered_Output_66.Out", "box_IOPPropMonitor_64.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_66_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOPPropMonitor_76
  l0.PropName = "tv_remote_01"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|743828734", "743828734", "IOP01_Main", "box_Ordered_Output_66.Out", "box_IOPPropMonitor_76.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_2_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_85
  l0.Seconds = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|126555312", "126555312", "IOP01_Main", "box_Ordered_Output_2.Out", "box_Timer_v2_85.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_2_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = self.Light_01
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|759719020"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = self.f_box_LightController_24_Toggled
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|24157066", "24157066", "IOP01_Main", "box_Ordered_Output_2.Out", "box_LightController_24.Toggle", clone, l0)
  l0:Toggle()
end
function export:f_box_Ordered_Output_2_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = self.Light4
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1576421902"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = self.f_box_LightController_58_Toggled
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1576269604", "1576269604", "IOP01_Main", "box_Ordered_Output_2.Out", "box_LightController_58.Toggle", clone, l0)
  l0:Toggle()
end
function export:f_box_HackableController_v2_7_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_22()
  l0 = self.box_HackableController_v2_7
  l1 = self.box_Multiple_AND_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|208212318", "208212318", "IOP01_Main", "box_HackableController_v2_7.Disabled", "box_Multiple_AND_22.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_HackableController_v2_7_ProfilingDisabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_7()
  l0 = self.box_HackableController_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1416381966", "1416381966", "IOP01_Main", "box_HackableController_v2_7.ProfilingDisabled", "box_HackableController_v2_7.DisableHack", l0, l0)
  l0:DisableHack()
end
function export:f_box_HackableController_v2_52_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_22()
  l0 = self.box_HackableController_v2_52
  l1 = self.box_Multiple_AND_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1395329031", "1395329031", "IOP01_Main", "box_HackableController_v2_52.Disabled", "box_Multiple_AND_22.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_HackableController_v2_52_ProfilingDisabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_52()
  l0 = self.box_HackableController_v2_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|421964551", "421964551", "IOP01_Main", "box_HackableController_v2_52.ProfilingDisabled", "box_HackableController_v2_52.DisableHack", l0, l0)
  l0:DisableHack()
end
function export:f_box_HackableController_v2_3_Enabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_3()
  l0 = self.box_HackableController_v2_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1368051230", "1368051230", "IOP01_Main", "box_HackableController_v2_3.Enabled", "box_HackableController_v2_3.EnableProfiling", l0, l0)
  l0:EnableProfiling()
end
function export:f_box_HackableController_v2_3_ProfilingEnabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Hackable_Monitor_33
  l0.HackableEntity = self.Hackable_RemoteControl
  l0 = self.box_HackableController_v2_3
  l1 = self.box_Hackable_Monitor_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1022950788", "1022950788", "IOP01_Main", "box_HackableController_v2_3.ProfilingEnabled", "box_Hackable_Monitor_33.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Ordered_Output_25_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_84
  l0.Seconds = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1177387783", "1177387783", "IOP01_Main", "box_Ordered_Output_25.Out", "box_Timer_v2_84.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_25_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareStrings_v2.lua")]
  l0.A = "TaylorSwift"
  l0.B = self.Music
  l0._graph = self
  l0._name = "box_Compare_Strings_v2_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1157649306"
  l0.Out = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Strings_v2_12_A_eq_B
  l0.A_neq_B = self.f_box_Compare_Strings_v2_12_A_neq_B
  l0.A_contains_B = DummyFunction
  l0.A_ncontains_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|2092641867", "2092641867", "IOP01_Main", "box_Ordered_Output_25.Out", "box_Compare_Strings_v2_12.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_25_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_61
  l0.Seconds = 0.5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|912115766", "912115766", "IOP01_Main", "box_Ordered_Output_25.Out", "box_Timer_v2_61.Start", clone, l0)
  l0:Start()
end
function export:f_box_PlaySound_v2_1_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_27
  l0.Entity = self.Laptop
  l0.SoundId = "soundbinary/3780007033.bnk"
  l0 = self.box_PlaySound_v2_1
  l1 = self.box_PlaySound_v2_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|540258385", "540258385", "IOP01_Main", "box_PlaySound_v2_1.Started", "box_PlaySound_v2_27.Play", l0, l1)
  l1:Play()
end
function export:f_box_Ordered_Output_51_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_7()
  l0 = self.box_HackableController_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1077471427", "1077471427", "IOP01_Main", "box_Ordered_Output_51.Out", "box_HackableController_v2_7.DisableProfiling", clone, l0)
  l0:DisableProfiling()
end
function export:f_box_Ordered_Output_51_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_52()
  l0 = self.box_HackableController_v2_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|292120836", "292120836", "IOP01_Main", "box_Ordered_Output_51.Out", "box_HackableController_v2_52.DisableProfiling", clone, l0)
  l0:DisableProfiling()
end
function export:f_box_IOPMonitor_34_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_59
  l0.Entity = self.Laptop
  l0.SoundId = "soundbinary/1663621747.bnk"
  l0 = self.box_IOPMonitor_34
  l1 = self.box_PlaySound_v2_59
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|761853252", "761853252", "IOP01_Main", "box_IOPMonitor_34.Disabled", "box_PlaySound_v2_59.Play", l0, l1)
  l1:Play()
end
function export:f_box_IOPMonitor_34_EventOccurred()
  local l0
  self = self._graph
  self:OnEnter_box_IOPMonitor_34()
  l0 = self.box_IOPMonitor_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|943504036", "943504036", "IOP01_Main", "box_IOPMonitor_34.EventOccurred", "box_IOPMonitor_34.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_HackableController_v2_35_Disabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_35()
  l0 = self.box_HackableController_v2_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|762813546", "762813546", "IOP01_Main", "box_HackableController_v2_35.Disabled", "box_HackableController_v2_35.DisableProfiling", l0, l0)
  l0:DisableProfiling()
end
function export:f_box_PlaySound_v2_43_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetString.lua")]
  l0.String = "Metal"
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.Entity = nil
  l0.Player = nil
  l0._graph = self
  l0._name = "box_Set_String_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|2048988563"
  l0.Out = self.f_box_Set_String_46_Out
  l0 = self.box_PlaySound_v2_43
  l1 = Boxes[PathID("domino/System/SetString.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1653864268", "1653864268", "IOP01_Main", "box_PlaySound_v2_43.Out", "box_Set_String_46.FromString", l0, l1)
  l1:FromString()
end
function export:f_box_LightController_23_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_56()
  l0 = self.box_Multiple_AND_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1844822953", "1844822953", "IOP01_Main", "box_LightController_23.Enabled", "box_Multiple_AND_56.Condition", clone, l0)
  l0:Condition(1)
end
function export:f_box_IOPMonitor_31_ActivateHackables()
  local l0
  self = self._graph
  self:OnEnter_box_IOPMonitor_31()
  l0 = self.box_IOPMonitor_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1872075847", "1872075847", "IOP01_Main", "box_IOPMonitor_31.ActivateHackables", "box_IOPMonitor_31.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_IOPMonitor_31_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|690629927"
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_box_Ordered_Output_21_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_21_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_21_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_21_Out_3
  l0.Out[4] = DummyFunction
  l0 = self.box_IOPMonitor_31
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1383123636", "1383123636", "IOP01_Main", "box_IOPMonitor_31.Disabled", "box_Ordered_Output_21.In", l0, l1)
  l1:In()
end
function export:f_box_IOPMonitor_31_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|220871523"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_42_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_42_Out_1
  l0 = self.box_IOPMonitor_31
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|2010512949", "2010512949", "IOP01_Main", "box_IOPMonitor_31.Enabled", "box_Ordered_Output_42.In", l0, l1)
  l1:In()
end
function export:f_box_IOPMonitor_15_DeactivateHackables()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|121723759"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_53_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_53_Out_1
  l0 = self.box_IOPMonitor_15
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1707524583", "1707524583", "IOP01_Main", "box_IOPMonitor_15.DeactivateHackables", "box_Ordered_Output_53.In", l0, l1)
  l1:In()
end
function export:f_box_IOPPropMonitor_64_PropSpawned()
  local l0, l1
  self = self._graph
  l0 = self.box_IOPPropMonitor_64
  l1 = Boxes[PathID("domino/System/Bind_v2.lua")]
  l1.Parent = l0.PropEntity
  l1.Child = "9223372059003416285"
  l1.BoneName = nil
  l1.BoneNameStr = "int_pl_a_dancefail_lamp_01"
  l1.RemoveOffset = nil
  l1._graph = self
  l1._name = "box_Bind_v2_65"
  l1._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|14933781"
  l1.Bound = DummyFunction
  l1.UnBound = DummyFunction
  l1.Out = self.f_box_Bind_v2_65_Out
  l0 = self.box_IOPPropMonitor_64
  l1 = Boxes[PathID("domino/System/Bind_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1723046845", "1723046845", "IOP01_Main", "box_IOPPropMonitor_64.PropSpawned", "box_Bind_v2_65.Bind", l0, l1)
  l1:Bind()
end
function export:f_box_Set_String_9_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetString.lua")]
  self.Music = l0.Target
end
function export:f_box_Ordered_Output_21_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_3()
  l0 = self.box_HackableController_v2_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|274678800", "274678800", "IOP01_Main", "box_Ordered_Output_21.Out", "box_HackableController_v2_3.EnableHack", clone, l0)
  l0:EnableHack()
end
function export:f_box_Ordered_Output_21_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_55()
  l0 = self.box_HackableController_v2_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|996032600", "996032600", "IOP01_Main", "box_Ordered_Output_21.Out", "box_HackableController_v2_55.EnableHack", clone, l0)
  l0:EnableHack()
end
function export:f_box_Ordered_Output_21_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOPMonitor_62
  l0.AutoDisableOnIOPComplete = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|2131405950", "2131405950", "IOP01_Main", "box_Ordered_Output_21.Out", "box_IOPMonitor_62.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_21_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOPMonitor_15
  l0.AutoDisableOnDeactivateHackables = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|999681206", "999681206", "IOP01_Main", "box_Ordered_Output_21.Out", "box_IOPMonitor_15.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_PhoneCommunicationController_39_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_68
  l0.IopID = "DanceFail"
  l0.IopEvent = "Generic.TeamSpeakEnded"
  l0 = self.box_PhoneCommunicationController_39
  l1 = self.box_AI_IOPController_68
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|449786673", "449786673", "IOP01_Main", "box_PhoneCommunicationController_39.OnCommunicationFinished", "box_AI_IOPController_68.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_PlaySound_v2_47_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_39
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357371169"
  l0 = self.box_PlaySound_v2_47
  l1 = self.box_PhoneCommunicationController_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|467829149", "467829149", "IOP01_Main", "box_PlaySound_v2_47.Out", "box_PhoneCommunicationController_39.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_LightController_24_Toggled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372067854828122"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|2119715707"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = self.f_box_LightController_80_Toggled
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|169185405", "169185405", "IOP01_Main", "box_LightController_24.Toggled", "box_LightController_80.Toggle", clone, l0)
  l0:Toggle()
end
function export:f_box_Timer_v2_72_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SecurityCamController_13()
  l0 = self.box_Timer_v2_72
  l1 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1016318309", "1016318309", "IOP01_Main", "box_Timer_v2_72.TimeElapsed", "box_SecurityCamController_13.SetCanExit", l0, l1)
  l1:SetCanExit()
end
function export:f_box_PlaySound_v2_59_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_1
  l0.Entity = self.Laptop
  l0.SoundId = "soundbinary/222753305.bnk"
  l0 = self.box_PlaySound_v2_59
  l1 = self.box_PlaySound_v2_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|2001173748", "2001173748", "IOP01_Main", "box_PlaySound_v2_59.Out", "box_PlaySound_v2_1.Play", l0, l1)
  l1:Play()
end
function export:f_box_PlaySound_v2_50_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetString.lua")]
  l0.String = "Metal"
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.Entity = nil
  l0.Player = nil
  l0._graph = self
  l0._name = "box_Set_String_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1449740618"
  l0.Out = self.f_box_Set_String_45_Out
  l0 = self.box_PlaySound_v2_50
  l1 = Boxes[PathID("domino/System/SetString.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1968093593", "1968093593", "IOP01_Main", "box_PlaySound_v2_50.Started", "box_Set_String_45.FromString", l0, l1)
  l1:FromString()
end
function export:f_box_MultipleOR_6_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1045832511"
  l0.Out = self.f_box_Get_Player_ID_8_Out
  l0 = self.box_MultipleOR_6
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|626848747", "626848747", "IOP01_Main", "box_MultipleOR_6.Out", "box_Get_Player_ID_8.In", l0, l1)
  l1:In()
end
function export:f_box_IOPMonitor_48_EventOccurred()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_43
  l0.Entity = self.Laptop
  l0.SoundId = "soundbinary/2456373634.bnk"
  l0 = self.box_IOPMonitor_48
  l1 = self.box_PlaySound_v2_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|349779635", "349779635", "IOP01_Main", "box_IOPMonitor_48.EventOccurred", "box_PlaySound_v2_43.Play", l0, l1)
  l1:Play()
end
function export:f_box_Timer_v2_85_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_82()
  l0 = self.box_Timer_v2_85
  l1 = self.box_HackableController_v2_82
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1795821264", "1795821264", "IOP01_Main", "box_Timer_v2_85.TimeElapsed", "box_HackableController_v2_82.EnableHack", l0, l1)
  l1:EnableHack()
end
function export:f_box_Ordered_Output_28_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = self.Light_01
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1681688100"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1892763454", "1892763454", "IOP01_Main", "box_Ordered_Output_28.Out", "box_LightController_49.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_28_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = self.Light4
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1171986187"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|164536571", "164536571", "IOP01_Main", "box_Ordered_Output_28.Out", "box_LightController_40.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_28_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372067854828122"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_79"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1682728893"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|65739705", "65739705", "IOP01_Main", "box_Ordered_Output_28.Out", "box_LightController_79.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_IOP_CleanUp_19_Completed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_29
  l0.Entity = "9223372044537668953"
  l0.SoundId = "soundbinary/3242316079.bnk"
  l0 = self.box_IOP_CleanUp_19
  l1 = self.box_PlaySound_v2_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1927082493", "1927082493", "IOP01_Main", "box_IOP_CleanUp_19.Completed", "box_PlaySound_v2_29.Play", l0, l1)
  l1:Play()
end
function export:f_box_IOP_CleanUp_19_DisconnectedAnimationPlayed()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_60
  l0.User = self.DancingGirl
  l0 = self.box_IOP_CleanUp_19
  l1 = self.box_CLOController_60
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1677574322", "1677574322", "IOP01_Main", "box_IOP_CleanUp_19.DisconnectedAnimationPlayed", "box_CLOController_60.UnspawnUser", l0, l1)
  l1:UnspawnUser()
end
function export:f_box_Get_Player_ID_8_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOP_StartUp_44
  l0.MainLayer = "IOP01_Main"
  l0.CheckPoint = "CheckPoint_0"
  l0.CinemaZone = "9223372059425049619"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1214861660", "1214861660", "IOP01_Main", "box_Get_Player_ID_8.Out", "box_IOP_StartUp_44.In", clone, l0)
  l0:In()
end
function export:f_box_Timer_v2_71_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_26
  l0.IopID = "DanceFail"
  l0.IopEvent = "DanceFail.Lights"
  l0 = self.box_Timer_v2_71
  l1 = self.box_AI_IOPController_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|282734935", "282734935", "IOP01_Main", "box_Timer_v2_71.TimeElapsed", "box_AI_IOPController_26.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_HackableController_v2_82_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|291922578"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_2_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_2_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_2_Out_2
  l0 = self.box_HackableController_v2_82
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|109515525", "109515525", "IOP01_Main", "box_HackableController_v2_82.Disabled", "box_Ordered_Output_2.In", l0, l1)
  l1:In()
end
function export:f_box_Compare_Strings_v2_12_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareStrings_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_50
  l0.Entity = self.Laptop
  l0.SoundId = "soundbinary/2456373634.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1959278936", "1959278936", "IOP01_Main", "box_Compare_Strings_v2_12.A_eq_B", "box_PlaySound_v2_50.Play", clone, l0)
  l0:Play()
end
function export:f_box_Compare_Strings_v2_12_A_neq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareStrings_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_32
  l0.Entity = self.Laptop
  l0.SoundId = "soundbinary/3780007033.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|258747192", "258747192", "IOP01_Main", "box_Compare_Strings_v2_12.A_neq_B", "box_PlaySound_v2_32.Play", clone, l0)
  l0:Play()
end
function export:f_box_PlaySound_v2_29_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_29
  l1 = self.box_Timer_v2_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1924260981", "1924260981", "IOP01_Main", "box_PlaySound_v2_29.Finished", "box_Timer_v2_14.Start", l0, l1)
  l1:Start()
end
function export:f_box_Hackable_Monitor_18_HackSuccess()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_82()
  l0 = self.box_Hackable_Monitor_18
  l1 = self.box_HackableController_v2_82
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|208788587", "208788587", "IOP01_Main", "box_Hackable_Monitor_18.HackSuccess", "box_HackableController_v2_82.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_HackableController_v2_83_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|381575745"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_25_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_25_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_25_Out_2
  l0 = self.box_HackableController_v2_83
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|969110493", "969110493", "IOP01_Main", "box_HackableController_v2_83.Disabled", "box_Ordered_Output_25.In", l0, l1)
  l1:In()
end
function export:f_box_IOPMonitor_62_IOPComplete()
  local l0, l1
  self = self._graph
  l0 = self.box_IOPMonitor_62
  l1 = self.box_IOP_CleanUp_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1146471815", "1146471815", "IOP01_Main", "box_IOPMonitor_62.IOPComplete", "box_IOP_CleanUp_19.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_20_Deactivated()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_37
  l0.IopID = "DanceFail"
  l0.PlayerEntity = self.PlayerEntity
  l0.NpcEntity = self.DancingGirl
  l0.IopRole = "DanceFail.Cindy"
  l0.OffscreenDialogPoint = "9223372044655948983"
  l0 = self.box_CLOController_20
  l1 = self.box_AI_IOPController_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|425654499", "425654499", "IOP01_Main", "box_CLOController_20.Deactivated", "box_AI_IOPController_37.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_86_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_54
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_Timer_v2_86
  l1 = self.box_CinematicPrep_54
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1130402720", "1130402720", "IOP01_Main", "box_Timer_v2_86.TimeElapsed", "box_CinematicPrep_54.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_CLOController_16_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_16
  self.DancingGirl = l0.UserID
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|270623608"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_66_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_66_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_66_Out_2
  l0 = self.box_CLOController_16
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1370293583", "1370293583", "IOP01_Main", "box_CLOController_16.OnUserInPlace", "box_Ordered_Output_66.In", l0, l1)
  l1:In()
end
function export:f_box_AI_IOPController_68_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_IOPMonitor_34()
  l0 = self.box_AI_IOPController_68
  l1 = self.box_IOPMonitor_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|104987141", "104987141", "IOP01_Main", "box_AI_IOPController_68.SendEventCompleted", "box_IOPMonitor_34.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Multiple_AND_56_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|396279622"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_51_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_51_Out_1
  l0 = self.box_Multiple_AND_56
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|476278560", "476278560", "IOP01_Main", "box_Multiple_AND_56.Out", "box_Ordered_Output_51.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_84_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_83()
  l0 = self.box_Timer_v2_84
  l1 = self.box_HackableController_v2_83
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|364848783", "364848783", "IOP01_Main", "box_Timer_v2_84.TimeElapsed", "box_HackableController_v2_83.EnableHack", l0, l1)
  l1:EnableHack()
end
function export:f_box_Timer_v2_14_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_67
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357370794"
  l0 = self.box_Timer_v2_14
  l1 = self.box_PhoneCommunicationController_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|678426313", "678426313", "IOP01_Main", "box_Timer_v2_14.TimeElapsed", "box_PhoneCommunicationController_67.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Set_String_45_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetString.lua")]
  self.Music = l0.Target
end
function export:f_box_Ordered_Output_63_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = self.Light_01
  l0.SetEnabled = 1
  l0._graph = self
  l0._name = "box_LightController_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1531585442"
  l0.Enabled = self.f_box_LightController_5_Enabled
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1647405010", "1647405010", "IOP01_Main", "box_Ordered_Output_63.Out", "box_LightController_5.Enable", clone, l0)
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
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = self.Light4
  l0.SetEnabled = 1
  l0._graph = self
  l0._name = "box_LightController_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|462372578"
  l0.Enabled = self.f_box_LightController_23_Enabled
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1165779030", "1165779030", "IOP01_Main", "box_Ordered_Output_63.Out", "box_LightController_23.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_AI_IOPController_37_StartCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_72
  l0.Seconds = 1.2
  l0 = self.box_AI_IOPController_37
  l1 = self.box_Timer_v2_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|400732654", "400732654", "IOP01_Main", "box_AI_IOPController_37.StartCompleted", "box_Timer_v2_72.Start", l0, l1)
  l1:Start()
end
function export:f_box_PhoneCommunicationController_67_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_4
  l0.LayerName = "IOP01_Main"
  l0 = self.box_PhoneCommunicationController_67
  l1 = self.box_MissionLayer_v2_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|66280219", "66280219", "IOP01_Main", "box_PhoneCommunicationController_67.OnCommunicationFinished", "box_MissionLayer_v2_4.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_PlaySound_v2_81_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_36()
  l0 = self.box_PlaySound_v2_81
  l1 = self.box_Multiple_AND_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1417236727", "1417236727", "IOP01_Main", "box_PlaySound_v2_81.Out", "box_Multiple_AND_36.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_IOPMonitor_30_EventOccurred()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|908169489"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_28_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_28_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_28_Out_2
  l0 = self.box_IOPMonitor_30
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1371103892", "1371103892", "IOP01_Main", "box_IOPMonitor_30.EventOccurred", "box_Ordered_Output_28.In", l0, l1)
  l1:In()
end
function export:f_box_LightController_5_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_56()
  l0 = self.box_Multiple_AND_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1083868784", "1083868784", "IOP01_Main", "box_LightController_5.Enabled", "box_Multiple_AND_56.Condition", clone, l0)
  l0:Condition(0)
end
function export:f_box_VisibilityController_v2_77_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_78
  l0.HackableEntity = "9223372067130875680"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1293976693", "1293976693", "IOP01_Main", "box_VisibilityController_v2_77.Out", "box_HackableController_v2_78.DisableProfiling", clone, l0)
  l0:DisableProfiling()
end
function export:f_box_LightController_58_Toggled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_81
  l0.Entity = "9223372043906472728"
  l0.SoundId = "soundbinary/86470880.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|808742005", "808742005", "IOP01_Main", "box_LightController_58.Toggled", "box_PlaySound_v2_81.Play", clone, l0)
  l0:Play()
end
function export:f_box_HackableController_v2_10_Disabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_10()
  l0 = self.box_HackableController_v2_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|106864427", "106864427", "IOP01_Main", "box_HackableController_v2_10.Disabled", "box_HackableController_v2_10.DisableProfiling", l0, l0)
  l0:DisableProfiling()
end
function export:f_box_Multiple_AND_22_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_16
  l0.CLO = "9223372045652851233"
  l0 = self.box_Multiple_AND_22
  l1 = self.box_CLOController_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1871272449", "1871272449", "IOP01_Main", "box_Multiple_AND_22.Out", "box_CLOController_16.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_PlaySound_v2_27_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetString.lua")]
  l0.String = "TaylorSwift"
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.Entity = nil
  l0.Player = nil
  l0._graph = self
  l0._name = "box_Set_String_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1820945080"
  l0.Out = self.f_box_Set_String_11_Out
  l0 = self.box_PlaySound_v2_27
  l1 = Boxes[PathID("domino/System/SetString.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|665961413", "665961413", "IOP01_Main", "box_PlaySound_v2_27.Started", "box_Set_String_11.FromString", l0, l1)
  l1:FromString()
end
function export:f_box_Hackable_Monitor_33_HackSuccess()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_83()
  l0 = self.box_Hackable_Monitor_33
  l1 = self.box_HackableController_v2_83
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|414496113", "414496113", "IOP01_Main", "box_Hackable_Monitor_33.HackSuccess", "box_HackableController_v2_83.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_MissionLayer_v2_4_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_4
  l1 = self.box_MissionController_v4_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|677387813", "677387813", "IOP01_Main", "box_MissionLayer_v2_4.Unloaded", "box_MissionController_v4_41.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_SecurityCamController_13_CanExitSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SecurityCamController_13()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1204309011", "1204309011", "IOP01_Main", "box_SecurityCamController_13.CanExitSet", "box_SecurityCamController_13.ForceEnter", clone, l0)
  l0:ForceEnter()
end
function export:f_box_SecurityCamController_13_EnterForced()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Security_Camera_Monitor_17()
  l0 = self.box_Security_Camera_Monitor_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|2032961961", "2032961961", "IOP01_Main", "box_SecurityCamController_13.EnterForced", "box_Security_Camera_Monitor_17.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Set_String_11_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetString.lua")]
  self.Music = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_IOPMonitor_31()
  l0 = self.box_IOPMonitor_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|927715507", "927715507", "IOP01_Main", "box_Set_String_11.Out", "box_IOPMonitor_31.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_38_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_86
  l0.Seconds = 0.5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|2054476232", "2054476232", "IOP01_Main", "box_Ordered_Output_38.Out", "box_Timer_v2_86.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_38_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_47
  l0.Entity = self.Laptop
  l0.SoundId = "soundbinary/527157958.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1192686295", "1192686295", "IOP01_Main", "box_Ordered_Output_38.Out", "box_PlaySound_v2_47.Play", clone, l0)
  l0:Play()
end
function export:f_box_Multiple_AND_36_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_71
  l0.Seconds = 0.2
  l0 = self.box_Multiple_AND_36
  l1 = self.box_Timer_v2_71
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1739757848", "1739757848", "IOP01_Main", "box_Multiple_AND_36.Out", "box_Timer_v2_71.Start", l0, l1)
  l1:Start()
end
function export:f_box_IOPPropMonitor_76_PropSpawned()
  local l0, l1
  self = self._graph
  l0 = self.box_IOPPropMonitor_76
  l1 = Boxes[PathID("domino/System/Bind_v2.lua")]
  l1.Parent = l0.PropEntity
  l1.Child = "9223372067130875680"
  l1.BoneName = nil
  l1.BoneNameStr = "tv_remote_01"
  l1.RemoveOffset = nil
  l1._graph = self
  l1._name = "box_Bind_v2_74"
  l1._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|188311000"
  l1.Bound = DummyFunction
  l1.UnBound = DummyFunction
  l1.Out = self.f_box_Bind_v2_74_Out
  l0 = self.box_IOPPropMonitor_76
  l1 = Boxes[PathID("domino/System/Bind_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|133463050", "133463050", "IOP01_Main", "box_IOPPropMonitor_76.PropSpawned", "box_Bind_v2_74.Bind", l0, l1)
  l1:Bind()
end
function export:f_box_HackableController_v2_55_Enabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_55()
  l0 = self.box_HackableController_v2_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|514155814", "514155814", "IOP01_Main", "box_HackableController_v2_55.Enabled", "box_HackableController_v2_55.EnableProfiling", l0, l0)
  l0:EnableProfiling()
end
function export:f_box_HackableController_v2_55_ProfilingEnabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Hackable_Monitor_18
  l0.HackableEntity = self.Hackable_Lightswitch
  l0 = self.box_HackableController_v2_55
  l1 = self.box_Hackable_Monitor_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|105641992", "105641992", "IOP01_Main", "box_HackableController_v2_55.ProfilingEnabled", "box_Hackable_Monitor_18.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Set_String_46_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetString.lua")]
  self.Music = l0.Target
end
function export:f_box_LightController_80_Toggled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_36()
  l0 = self.box_Multiple_AND_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|922406283", "922406283", "IOP01_Main", "box_LightController_80.Toggled", "box_Multiple_AND_36.Condition", clone, l0)
  l0:Condition(0)
end
function export:OnEnter_box_Security_Camera_Monitor_17()
  local l0
  l0 = self.box_Security_Camera_Monitor_17
  l0.CameraEntity = "9223372044537668953"
end
function export:OnEnter_box_HackableController_v2_7()
  local l0
  l0 = self.box_HackableController_v2_7
  l0.HackableEntity = self.Remote_Control
end
function export:OnEnter_box_HackableController_v2_52()
  local l0
  l0 = self.box_HackableController_v2_52
  l0.HackableEntity = self.Lightswitch
end
function export:OnEnter_box_HackableController_v2_3()
  local l0
  l0 = self.box_HackableController_v2_3
  l0.HackableEntity = self.Remote_Control
end
function export:OnEnter_box_IOPMonitor_34()
  local l0
  l0 = self.box_IOPMonitor_34
  l0.MonitoredEvent = "DanceFail.Music"
end
function export:OnEnter_box_HackableController_v2_35()
  local l0
  l0 = self.box_HackableController_v2_35
  l0.HackableEntity = self.Lightswitch
end
function export:OnEnter_box_IOPMonitor_31()
end
function export:OnEnter_box_MultipleOR_6()
end
function export:OnEnter_box_HackableController_v2_82()
  local l0
  l0 = self.box_HackableController_v2_82
  l0.HackableEntity = self.Hackable_Lightswitch
end
function export:OnEnter_box_HackableController_v2_83()
  local l0
  l0 = self.box_HackableController_v2_83
  l0.HackableEntity = self.Hackable_RemoteControl
end
function export:OnEnter_box_Multiple_AND_56()
end
function export:OnEnter_box_HackableController_v2_10()
  local l0
  l0 = self.box_HackableController_v2_10
  l0.HackableEntity = self.Hackable_RemoteControl
end
function export:OnEnter_box_Multiple_AND_22()
end
function export:OnEnter_box_SecurityCamController_13()
  local l0
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = "9223372044537668953"
  l0.CameraEntityList = nil
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = 0
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0._name = "box_SecurityCamController_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP01.domino|@IOP01_Main|1815351409"
  l0.EnterSet = DummyFunction
  l0.CanExitSet = self.f_box_SecurityCamController_13_CanExitSet
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = self.f_box_SecurityCamController_13_EnterForced
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
end
function export:OnEnter_box_Multiple_AND_36()
  local l0
  l0 = self.box_Multiple_AND_36
  l0.AutoReset = 1
end
function export:OnEnter_box_HackableController_v2_55()
  local l0
  l0 = self.box_HackableController_v2_55
  l0.HackableEntity = self.Lightswitch
end
_compilerVersion = 4
