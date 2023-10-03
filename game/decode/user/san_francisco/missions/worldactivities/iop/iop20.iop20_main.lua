export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/IOPPropController.lua")
  cbox:RegisterBox("domino/System/IOPController.lua")
  cbox:RegisterBox("domino/System/Bind_v2.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
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
  cbox:RegisterBox("domino/Library/common/IOP.IOP_CleanUp.lua")
  cbox:RegisterBox("domino/Library/common/IOP.IOP_StartUp.lua")
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
  self[8] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[8]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = self.f_8_Out
  self[134] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[134]
  l0._graph = self
  l0.Out = self.f_134_Out
  l0.MessageCompleted = DummyFunction
  self[64] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[64]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_64_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[87] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[87]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_87_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[35] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[35]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = self.f_35_OverrideHackingTextSet
  self[132] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[132]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self[45] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[45]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_45_OnUserInPlace
  self[79] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[79]
  l0._graph = self
  l0.Enabled = self.f_79_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = self.f_79_ProfilingEnabled
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[115] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[115]
  l0._graph = self
  l0.Enabled = self.f_115_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = self.f_115_ProfilingEnabled
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[88] = cbox:CreateBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  l0 = self[88]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.WasReset = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = DummyFunction
  self[15] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[15]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[128] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[128]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[54] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[54]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_54_Started
  l0.Finished = DummyFunction
  self[49] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[49]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_49_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_49_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[113] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[113]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_113_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[34] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[34]
  l0._graph = self
  l0.Out = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[133] = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self[133]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_133_EventOccurred
  l0.Out = DummyFunction
  self[78] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[78]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self[5] = cbox:CreateBox("domino/Library/common/IOP.IOP_StartUp.lua")
  l0 = self[5]
  l0._graph = self
  l0.Out = self.f_5_Out
  self[4] = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self[4]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_4_Disabled
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_4_EventOccurred
  l0.Out = DummyFunction
  self[112] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[112]
  l0._graph = self
  l0.Enabled = self.f_112_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = self.f_112_ProfilingEnabled
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[61] = cbox:CreateBox("domino/System/IOPPropController.lua")
  l0 = self[61]
  l0._graph = self
  l0.Out = self.f_61_Out
  self[104] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[104]
  l0._graph = self
  l0.Out = self.f_104_Out
  l0.SetTrue = self.f_104_SetTrue
  l0.SetFalse = self.f_104_SetFalse
  l0.Toggled = self.f_104_Toggled
  l0.SetFromBool = self.f_104_SetFromBool
  self[41] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[41]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_41_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[6] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[6]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = self.f_6_OverrideHackingTextSet
  self[26] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[26]
  l0._graph = self
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
  self[90] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[90]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = self.f_90_HackStart
  l0.HackFailed = self.f_90_HackFailed
  l0.HackSuccess = self.f_90_HackSuccess
  l0.HackedOn = self.f_90_HackedOn
  l0.HackedOff = self.f_90_HackedOff
  l0.HackContextual = self.f_90_HackContextual
  l0.AllHacked = DummyFunction
  self[13] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[13]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[42] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[42]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[3] = cbox:CreateBox("domino/System/IOPPropController.lua")
  l0 = self[3]
  l0._graph = self
  l0.Out = self.f_3_Out
  self[62] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[62]
  l0._graph = self
  l0.Out = self.f_62_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[76] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[76]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_76_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[108] = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self[108]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = self.f_108_DeactivateHackables
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = DummyFunction
  l0.Out = DummyFunction
  self[52] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[52]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_52_OnUserInPlace
  self[63] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[63]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_63_Out
  self[106] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[106]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_106_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_106_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[122] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[122]
  l0._graph = self
  l0.Out = self.f_122_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[2] = cbox:CreateBox("domino/System/IOPPropController.lua")
  l0 = self[2]
  l0._graph = self
  l0.Out = self.f_2_Out
  self[12] = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self[12]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = self.f_12_IOPComplete
  l0.EventOccurred = DummyFunction
  l0.Out = DummyFunction
  self[85] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[85]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[43] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[43]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[130] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[130]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_130_Out
  self[114] = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self[114]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_114_Disabled
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_114_EventOccurred
  l0.Out = DummyFunction
  self[72] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[72]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_72_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[33] = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self[33]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_33_Disabled
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_33_EventOccurred
  l0.Out = DummyFunction
  self[98] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[98]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_98_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[17] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[17]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_17_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[145] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[145]
  l0._graph = self
  l0._DynamicAnchors = {Data = 4}
  l0.Added = self.f_145_Added
  l0.Removed = self.f_145_Removed
  l0.Out = self.f_145_Out
  self[24] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[24]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_24_Out
  self[73] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[73]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_73_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_73_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[14] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[14]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_14_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[38] = cbox:CreateBox("domino/System/IndexedOutput_v2.lua")
  l0 = self[38]
  l0._graph = self
  l0._DynamicAnchors = {Output = 2}
  l0.Output[0] = self.f_38_Output_0
  l0.Output[1] = self.f_38_Output_1
  l0.OutOfRange = DummyFunction
  self[124] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[124]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_124_Deactivated
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[96] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[96]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_96_Out
  self[99] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[99]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_99_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[119] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[119]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_119_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[77] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[77]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_77_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_77_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[37] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[37]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_37_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[123] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[123]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = DummyFunction
  self[111] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[111]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = self.f_111_OverrideHackingTextSet
  self[147] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[147]
  l0._graph = self
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
  self[125] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[125]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_125_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[71] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[71]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 3}
  l0.Out = self.f_71_Out
  self[74] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[74]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_74_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[82] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[82]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_82_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[40] = cbox:CreateBox("domino/System/IOPPropController.lua")
  l0 = self[40]
  l0._graph = self
  l0.Out = self.f_40_Out
  self[50] = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self[50]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_50_EventOccurred
  l0.Out = DummyFunction
  self[141] = cbox:CreateBox("domino/System/IOPPropMonitor.lua")
  l0 = self[141]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.PropSpawned = self.f_141_PropSpawned
  self[48] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[48]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_48_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[121] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[121]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[25] = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self[25]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_25_Disabled
  l0.ActivateHackables = self.f_25_ActivateHackables
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = DummyFunction
  l0.Out = DummyFunction
  self[97] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[97]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_97_Out
  self[27] = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self[27]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_27_Disabled
  l0.OnStartAccessCamera = DummyFunction
  l0.OnEndAccessCamera = self.f_27_OnEndAccessCamera
  l0.OnStartExitCamera = DummyFunction
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self[107] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[107]
  l0._graph = self
  l0.Out = self.f_107_Out
  l0.SetTrue = self.f_107_SetTrue
  l0.SetFalse = self.f_107_SetFalse
  l0.Toggled = self.f_107_Toggled
  l0.SetFromBool = self.f_107_SetFromBool
  self[9] = cbox:CreateBox("domino/Library/common/IOP.IOP_CleanUp.lua")
  l0 = self[9]
  l0._graph = self
  l0.Completed = self.f_9_Completed
  l0.DisconnectedAnimationPlayed = self.f_9_DisconnectedAnimationPlayed
  l0.Out = DummyFunction
  self[118] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[118]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_118_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[16] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[16]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_16_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[94] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[94]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_94_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[92] = cbox:CreateBox("domino/System/IOPPropController.lua")
  l0 = self[92]
  l0._graph = self
  l0.Out = self.f_92_Out
  self[103] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[103]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self[102] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[102]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = self.f_102_StartCompleted
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self[149] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[149]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_149_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[80] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[80]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_80_OnUserInPlace
  self[120] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[120]
  l0._graph = self
  self[109] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[109]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_109_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[30] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[30]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 4}
  l0.Out = self.f_30_Out
  self[84] = cbox:CreateBox("domino/System/ProfilerController.lua")
  l0 = self[84]
  l0._graph = self
  l0.ProfilerSetOn = DummyFunction
  l0.ProfilerSetOff = DummyFunction
  l0.ProfilerDisabled = DummyFunction
  l0.ProfilerReenabled = self.f_84_ProfilerReenabled
  l0.AutoActivationInCamerasDisabled = DummyFunction
  l0.AutoActivationInCamerasReenabled = DummyFunction
  self[11] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[11]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_11_Out
  self[83] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[83]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_83_Unloaded
  l0.Reseted = DummyFunction
  self[116] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[116]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_116_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[93] = cbox:CreateBox("domino/System/IOPPropController.lua")
  l0 = self[93]
  l0._graph = self
  l0.Out = self.f_93_Out
  self[7] = cbox:CreateBox("domino/System/IOPPropController.lua")
  l0 = self[7]
  l0._graph = self
  l0.Out = DummyFunction
  self[148] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[148]
  l0._graph = self
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
  self[137] = cbox:CreateBox("domino/System/IOPPropMonitor.lua")
  l0 = self[137]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.PropSpawned = self.f_137_PropSpawned
  self[23] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[23]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[66] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[66]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_66_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[28] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[28]
  l0._graph = self
  l0.Enabled = self.f_28_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = self.f_28_ProfilingEnabled
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[65] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[65]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_65_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self[105] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[105]
  l0._graph = self
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
  l0 = self[24]
  l0:Input(1)
end
function export:In()
  local l0
  l0 = self[24]
  l0:Input(0)
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = self[65]
  l0.IopID = "ChildsPlay"
  l0.IopEvent = "Generic.TeamSpeakEnded"
  l0:SendEvent()
end
function export:f_134_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_126_Out_0
  l0.Out[1] = self.f_126_Out_1
  l0.Out[2] = self.f_126_Out_2
  l0.Out[3] = self.f_126_Out_3
  l0.Out[4] = self.f_126_Out_4
  l0:In()
end
function export:f_64_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[34]
  l0:ShowMissionComplete()
end
function export:f_101_Out_0()
  local l0
  self = self._graph
  l0 = self[105]
  l0.HackableEntity = self.Headset
  l0:EnableHack()
end
function export:f_101_Out_1()
  local l0
  self = self._graph
  l0 = self[26]
  l0.HackableEntity = self.HardDrive_Reader
  l0.ProfileLinkedToHack = 1
  l0:EnableHack()
end
function export:f_87_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "gfx_lenseffects 3"
  l0._graph = self
  l0.Executed = self.f_55_Executed
  l0:Execute()
end
function export:f_35_OverrideHackingTextSet()
  local l0
  self = self._graph
  l0 = self[3]
  l0.StateIndex = 2
  l0.PropEntity = self.iop_childsplay_animatedmonitors_0
  l0:SetStateIndex()
end
function export:f_29_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  self.HddSounds = l0.Target
  self:en_79()
  l0 = self[79]
  l0:EnableHack()
end
function export:f_45_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[45]
  self.PostIOP_Freaked_Cole = l0.UserID
  l0 = Boxes[PathID("domino/System/FleeBehaviorController.lua")]
  l0.Target = self.PostIOP_Freaked_Cole
  l0.TargetList = nil
  l0.Destination = nil
  l0.Threat = self.PlayerEntity
  l0.Config = "FleeBehaviorDescriptor.9223372049386602250"
  l0.Vehicle = nil
  l0._graph = self
  l0.Started = self.f_70_Started
  l0.Updated = DummyFunction
  l0.Stopped = DummyFunction
  l0:Start()
end
function export:f_126_Out_0()
  local l0
  self = self._graph
  self:en_77()
  l0 = self[77]
  l0:DisableHack()
end
function export:f_126_Out_1()
  local l0
  self = self._graph
  self:en_106()
  l0 = self[106]
  l0:DisableHack()
end
function export:f_126_Out_2()
  local l0
  self = self._graph
  self:en_73()
  l0 = self[73]
  l0:DisableHack()
end
function export:f_126_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = "CustomBroadcasts.9223372048466242831"
  l0.OnGenericChannel = nil
  l0.OnShopChannel = nil
  l0.OnBarChannel = nil
  l0.PlayOnLoad = nil
  l0.ApplyOnLoad = nil
  l0._graph = self
  l0.LoadAndPlayRequested = self.f_68_LoadAndPlayRequested
  l0.EndedAllCustomMediaBroadcasts = DummyFunction
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  l0:LoadAndPlayCustomBroadcast()
end
function export:f_126_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "gfx_lenseffects 2"
  l0._graph = self
  l0.Executed = DummyFunction
  l0:Execute()
end
function export:f_79_Enabled()
  local l0
  self = self._graph
  self:en_79()
  l0 = self[79]
  l0:EnableProfiling()
end
function export:f_79_ProfilingEnabled()
  local l0
  self = self._graph
  l0 = self[66]
  l0.HackableEntity = self.HardDrive_Reader
  l0:Enable()
end
function export:f_115_Enabled()
  local l0
  self = self._graph
  l0 = self[90]
  l0.HackableEntity = self.Toy_Rabbit
  l0:Enable()
end
function export:f_115_ProfilingEnabled()
  local l0
  self = self._graph
  self:en_115()
  l0 = self[115]
  l0:EnableHack()
end
function export:f_138_Out_0()
  local l0
  self = self._graph
  l0 = self[17]
  l0.Seconds = 0.3
  l0:Start()
end
function export:f_36_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  self.HddSounds = l0.Target
  l0 = self[38]
  l0.Index = self.HddSounds
  l0:In()
end
function export:f_54_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372065360312451"
  l0.SetEnabled = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = self.f_136_Out
  l0:Disable()
end
function export:f_49_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_44_Out_0
  l0.Out[1] = self.f_44_Out_1
  l0:In()
end
function export:f_49_HackSuccess()
  local l0
  self = self._graph
  l0 = self[62]
  l0.Entity = self.Headset
  l0.SoundId = "soundbinary/258765896.bnk"
  l0:Play()
end
function export:f_113_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.Headset
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0:Hide()
end
function export:f_133_EventOccurred()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_135_Out_0
  l0.Out[1] = self.f_135_Out_1
  l0:In()
end
function export:f_31_Out_0()
  local l0
  self = self._graph
  self:en_88()
  l0 = self[88]
  l0:Start()
end
function export:f_31_Out_1()
  local l0
  self = self._graph
  l0 = self[14]
  l0.Seconds = 3
  l0:Start()
end
function export:f_58_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_19_Out
  l0:In()
end
function export:f_5_Out()
  local l0
  self = self._graph
  l0 = self[145]
  l0.Input = self.SecurityCameraList
  l0.Data[0] = "9223372044537728750"
  l0.Data[1] = "9223372044537728752"
  l0.Data[2] = "9223372044368782269"
  l0.Data[3] = "9223372044368782271"
  l0:Add()
end
function export:f_4_Disabled()
  local l0
  self = self._graph
  l0 = self[113]
  l0.HackableEntity = self.Headset
  l0.ProfileLinkedToHack = 1
  l0:DisableHack()
end
function export:f_4_EventOccurred()
  local l0
  self = self._graph
  self:en_4()
  l0 = self[4]
  l0:Disable()
end
function export:f_112_Enabled()
  local l0
  self = self._graph
  self:en_112()
  l0 = self[112]
  l0:EnableProfiling()
end
function export:f_112_ProfilingEnabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_89_Out_0
  l0.Out[1] = self.f_89_Out_1
  l0:In()
end
function export:f_61_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  l0.Integer = 0
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0.Out = self.f_51_Out
  l0:FromInteger()
end
function export:f_69_Out_0()
  local l0
  self = self._graph
  l0 = self[64]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357367176"
  l0:StartCommunication()
end
function export:f_69_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.ColeIsFreaked
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_39_A_is_True
  l0.A_is_False = self.f_39_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_104_Out()
  local l0
  self = self._graph
  l0 = self[104]
  self.ColeIsFreaked = l0.Target
end
function export:f_104_SetFalse()
  local l0
  self = self._graph
  l0 = self[104]
  self.ColeIsFreaked = l0.Target
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_127_Out
  l0:In()
end
function export:f_104_SetFromBool()
  local l0
  self = self._graph
  l0 = self[104]
  self.ColeIsFreaked = l0.Target
end
function export:f_104_SetTrue()
  local l0
  self = self._graph
  l0 = self[104]
  self.ColeIsFreaked = l0.Target
end
function export:f_104_Toggled()
  local l0
  self = self._graph
  l0 = self[104]
  self.ColeIsFreaked = l0.Target
end
function export:f_41_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[103]
  l0.IopID = "ChildsPlay"
  l0.IopEvent = "ChildsPlay.HDD"
  l0:SendEvent()
end
function export:f_47_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_138_Out_0
  l0.Out[1] = DummyFunction
  l0:In()
end
function export:f_6_OverrideHackingTextSet()
  local l0
  self = self._graph
  l0 = self[74]
  l0.Seconds = 0.2
  l0:Start()
end
function export:f_91_Out_0()
  local l0
  self = self._graph
  l0 = self[92]
  l0.StateIndex = 3
  l0.PropEntity = self.iop_childsplay_animatedmonitors_0
  l0:SetStateIndex()
end
function export:f_91_Out_1()
  local l0
  self = self._graph
  l0 = self[40]
  l0.StateIndex = 1
  l0.PropEntity = "9223372044478735729"
  l0:SetStateIndex()
end
function export:f_91_Out_2()
  local l0
  self = self._graph
  l0 = self[107]
  l0.Bool = 1
  l0:True()
end
function export:f_91_Out_3()
  local l0
  self = self._graph
  l0 = self[121]
  l0.Entity = "9223372044759809990"
  l0.SoundId = "soundbinary/2930849636.bnk"
  l0:Play()
end
function export:f_90_HackContextual()
  local l0
  self = self._graph
  l0 = self[90]
  self.Toy_Rabbit = l0.HackedEntity
end
function export:f_90_HackedOff()
  local l0
  self = self._graph
  l0 = self[90]
  self.Toy_Rabbit = l0.HackedEntity
end
function export:f_90_HackedOn()
  local l0
  self = self._graph
  l0 = self[90]
  self.Toy_Rabbit = l0.HackedEntity
end
function export:f_90_HackFailed()
  local l0
  self = self._graph
  l0 = self[90]
  self.Toy_Rabbit = l0.HackedEntity
end
function export:f_90_HackStart()
  local l0
  self = self._graph
  l0 = self[90]
  self.Toy_Rabbit = l0.HackedEntity
end
function export:f_90_HackSuccess()
  local l0
  self = self._graph
  l0 = self[90]
  self.Toy_Rabbit = l0.HackedEntity
  l0 = self[13]
  l0.Entity = self.Rabbit_SoundPoint
  l0.SoundId = "soundbinary/4283624238.bnk"
  l0:Play()
end
function export:f_129_Out_0()
  local l0
  self = self._graph
  l0 = self[25]
  l0:Enable()
end
function export:f_129_Out_1()
  local l0
  self = self._graph
  self:en_115()
  l0 = self[115]
  l0:EnableProfiling()
end
function export:f_3_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  l0.Integer = 1
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0.Out = self.f_117_Out
  l0:FromInteger()
end
function export:f_62_Out()
  local l0
  self = self._graph
  self:en_49()
  l0 = self[49]
  l0:Disable()
end
function export:f_59_Out_0()
  local l0
  self = self._graph
  l0 = self[15]
  l0.Entity = self.HardDrive_Reader
  l0.SoundId = "soundbinary/740598824.bnk"
  l0:Play()
end
function export:f_59_Out_1()
  local l0
  self = self._graph
  l0 = self[48]
  l0.Seconds = 0.2
  l0:Start()
end
function export:f_76_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[96]
  l0:Input(1)
end
function export:f_108_DeactivateHackables()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_57_Out_0
  l0.Out[1] = self.f_57_Out_1
  l0:In()
end
function export:f_70_Started()
  local l0
  self = self._graph
  l0 = self[76]
  l0.Seconds = 7
  l0:Start()
end
function export:f_140_Out_0()
  local l0
  self = self._graph
  l0 = self[124]
  l0.CLO = "9223372045652851523"
  l0:Deactivate()
end
function export:f_140_Out_1()
  local l0
  self = self._graph
  l0 = self[141]
  l0.PropName = "headset_01"
  l0:Enable()
end
function export:f_140_Out_2()
  local l0
  self = self._graph
  l0 = self[137]
  l0.PropName = "iop_childsplay_drivedock_01"
  l0:Enable()
end
function export:f_140_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.Cole
  l0.Collisionable = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = DummyFunction
  l0.Out = DummyFunction
  l0:DisableCollisions()
end
function export:f_52_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[52]
  self.PostIOP_Cole = l0.UserID
  l0 = self[119]
  l0.Seconds = 7
  l0:Start()
end
function export:f_63_Out()
  local l0
  self = self._graph
  l0 = self[6]
  l0.HackableEntity = self.Headset
  l0.OasisHackingText = {
    section = "MISSIONS.WORLD MISSIONS.IOP.CHILDS_PLAY.OBJECTS.Hackables",
    item = "Headset2",
    id = "317677"
  }
  l0:SetOverrideHackingText()
end
function export:f_57_Out_0()
  local l0
  self = self._graph
  self:en_98()
  l0 = self[98]
  l0:DisableHack()
end
function export:f_57_Out_1()
  local l0
  self = self._graph
  self:en_116()
  l0 = self[116]
  l0:DisableHack()
end
function export:f_19_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_56_Out_0
  l0.Out[1] = self.f_56_Out_1
  l0:In()
end
function export:f_106_Disabled()
  local l0
  self = self._graph
  self:en_106()
  l0 = self[106]
  l0:DisableProfiling()
end
function export:f_106_ProfilingDisabled()
  local l0
  self = self._graph
  self:en_30()
  l0 = self[30]
  l0:Condition(1)
end
function export:f_21_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  self.StaticOverride = l0.Target
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_46_Out_0
  l0.Out[1] = self.f_46_Out_1
  l0.Out[2] = self.f_46_Out_2
  l0:In()
end
function export:f_122_Out()
  local l0
  self = self._graph
  l0 = self[54]
  l0.Entity = "9223372044759809990"
  l0.SoundId = "soundbinary/702073974.bnk"
  l0:Play()
end
function export:f_2_Out()
  local l0
  self = self._graph
  l0 = self[71]
  l0:Condition(1)
end
function export:f_12_IOPComplete()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_81_Pushed
  l0.Popped = DummyFunction
  l0:Push()
end
function export:f_56_Out_0()
  local l0
  self = self._graph
  l0 = self[102]
  l0.IopID = "ChildsPlay"
  l0.PlayerEntity = self.PlayerEntity
  l0.NpcEntity = self.Cole
  l0.IopRole = "ChildsPlay.Cole"
  l0.OffscreenDialogPoint = "9223372044656142498"
  l0:Start()
end
function export:f_56_Out_1()
  local l0
  self = self._graph
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
  l0.EnterSet = DummyFunction
  l0.CanExitSet = DummyFunction
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = self.f_75_EnterForced
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
  l0:ForceEnter()
end
function export:f_55_Executed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_67_Popped
  l0:Pop()
end
function export:f_130_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_60_Out_0
  l0.Out[1] = self.f_60_Out_1
  l0.Out[2] = self.f_60_Out_2
  l0:In()
end
function export:f_114_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  l0.Integer = 1
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0.Out = self.f_20_Out
  l0:FromInteger()
end
function export:f_114_EventOccurred()
  local l0
  self = self._graph
  self:en_114()
  l0 = self[114]
  l0:Disable()
end
function export:f_44_Out_0()
  local l0
  self = self._graph
  l0 = self[63]
  l0:Input(0)
end
function export:f_44_Out_1()
  local l0
  self = self._graph
  l0 = self[99]
  l0.HackableEntity = self.Headset
  l0:Enable()
end
function export:f_117_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  self.StaticOverride = l0.Target
  l0 = self[41]
  l0.Seconds = 0.3
  l0:Start()
end
function export:f_72_HackSuccess()
  local l0
  self = self._graph
  l0 = self[16]
  l0.HackableEntity = self.Hackable_Router
  l0.ProfileLinkedToHack = 1
  l0:DisableHack()
end
function export:f_33_Disabled()
  local l0
  self = self._graph
  self:en_112()
  l0 = self[112]
  l0:EnableHack()
end
function export:f_33_EventOccurred()
  local l0
  self = self._graph
  self:en_33()
  l0 = self[33]
  l0:Disable()
end
function export:f_98_Disabled()
  local l0
  self = self._graph
  self:en_98()
  l0 = self[98]
  l0:DisableProfiling()
end
function export:f_20_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  self.MonitorState = l0.Target
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = self.StaticOverride
  l0.B = 0
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_lt_B = DummyFunction
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_110_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  l0:In()
end
function export:f_17_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[78]
  l0.IopID = "ChildsPlay"
  l0.IopEvent = "ChildsPlay.Router"
  l0:SendEvent()
end
function export:f_89_Out_0()
  local l0
  self = self._graph
  l0 = self[72]
  l0.HackableEntity = self.Hackable_Router
  l0:Enable()
end
function export:f_89_Out_1()
  local l0
  self = self._graph
  l0 = self[133]
  l0.MonitoredEvent = "ChildsPlay.Cabinet"
  l0:Enable()
end
function export:f_145_Added()
  local l0
  self = self._graph
  l0 = self[145]
  self.SecurityCameraList = l0.Target
  l0 = self[134]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L18.L18M020.Objectives.Objective010",
    item = "Objective",
    id = "641499"
  }
  l0:ShowNewObjective()
end
function export:f_145_Out()
  local l0
  self = self._graph
  l0 = self[145]
  self.SecurityCameraList = l0.Target
end
function export:f_145_Removed()
  local l0
  self = self._graph
  l0 = self[145]
  self.SecurityCameraList = l0.Target
end
function export:f_24_Out()
  local l0
  self = self._graph
  l0 = self[104]
  l0:False()
end
function export:f_73_Disabled()
  local l0
  self = self._graph
  self:en_73()
  l0 = self[73]
  l0:DisableProfiling()
end
function export:f_73_ProfilingDisabled()
  local l0
  self = self._graph
  self:en_30()
  l0 = self[30]
  l0:Condition(2)
end
function export:f_14_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_59_Out_0
  l0.Out[1] = self.f_59_Out_1
  l0:In()
end
function export:f_135_Out_0()
  local l0
  self = self._graph
  self:en_94()
  l0 = self[94]
  l0:DisableHack()
end
function export:f_135_Out_1()
  local l0
  self = self._graph
  self:en_88()
  l0 = self[88]
  l0:Stop()
end
function export:f_60_Out_0()
  local l0
  self = self._graph
  self:en_27()
  l0 = self[27]
  l0:Enable()
end
function export:f_60_Out_1()
  local l0
  self = self._graph
  l0 = self[8]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357372610"
  l0:StartCommunication()
end
function export:f_60_Out_2()
  local l0
  self = self._graph
  l0 = self[23]
  l0.Entity = "9223372044759809990"
  l0.SoundId = "soundbinary/3255868609.bnk"
  l0:Play()
end
function export:f_38_Output_0()
  local l0
  self = self._graph
  l0 = self[85]
  l0.Entity = self.HardDrive_Reader
  l0.SoundId = "soundbinary/4061762572.bnk"
  l0:Play()
end
function export:f_38_Output_1()
  local l0
  self = self._graph
  l0 = self[43]
  l0.Entity = self.HardDrive_Reader
  l0.SoundId = "soundbinary/923207234.bnk"
  l0:Play()
end
function export:f_124_Deactivated()
  local l0
  self = self._graph
  l0 = self[118]
  l0.HackableEntity = self.Cole
  l0:DisableHack()
end
function export:f_96_Out()
  local l0
  self = self._graph
  l0 = self[83]
  l0.LayerName = "IOP20_Main"
  l0:Unload()
end
function export:f_75_EnterForced()
  local l0
  self = self._graph
  l0 = self[130]
  l0:Input(0)
end
function export:f_99_HackSuccess()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_86_Out_0
  l0.Out[1] = self.f_86_Out_1
  l0.Out[2] = self.f_86_Out_2
  l0:In()
end
function export:f_119_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[96]
  l0:Input(0)
end
function export:f_77_Disabled()
  local l0
  self = self._graph
  self:en_77()
  l0 = self[77]
  l0:DisableProfiling()
end
function export:f_77_ProfilingDisabled()
  local l0
  self = self._graph
  self:en_30()
  l0 = self[30]
  l0:Condition(0)
end
function export:f_37_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[61]
  l0.StateIndex = self.MonitorState
  l0.PropEntity = self.iop_childsplay_animatedmonitors_0
  l0:SetStateIndex()
end
function export:f_111_OverrideHackingTextSet()
  local l0
  self = self._graph
  l0 = self[63]
  l0:Input(1)
end
function export:f_39_A_is_False()
  local l0
  self = self._graph
  l0 = self[52]
  l0.CLO = "9223372045652851522"
  l0:Activate()
end
function export:f_39_A_is_True()
  local l0
  self = self._graph
  l0 = self[45]
  l0.CLO = "9223372045652851524"
  l0:Activate()
end
function export:f_125_Disabled()
  local l0
  self = self._graph
  self:en_11()
  l0 = self[11]
  l0:Condition(0)
end
function export:f_86_Out_0()
  local l0
  self = self._graph
  l0 = self[128]
  l0.Entity = self.Headset
  l0.SoundId = "soundbinary/935004165.bnk"
  l0:Play()
end
function export:f_86_Out_1()
  local l0
  self = self._graph
  l0 = self[111]
  l0.HackableEntity = self.HardDrive_Reader
  l0.OasisHackingText = {
    section = "MISSIONS.WORLD MISSIONS.IOP.CHILDS_PLAY.OBJECTS.Hackables",
    item = "HDD Reader2",
    id = "317678"
  }
  l0:SetOverrideHackingText()
end
function export:f_86_Out_2()
  local l0
  self = self._graph
  l0 = self[148]
  l0.HackableEntity = self.Cole
  l0:EnableProfiling()
end
function export:f_71_Out()
  local l0
  self = self._graph
  l0 = self[80]
  l0.CLO = "9223372045652851523"
  l0:Activate()
end
function export:f_74_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[132]
  l0.IopID = "ChildsPlay"
  l0.IopEvent = "ChildsPlay.Headset"
  l0:SendEvent()
end
function export:f_131_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  l0.A = 1
  l0.B = self.HddSounds
  l0._graph = self
  l0.Out = self.f_36_Out
  l0:Add()
end
function export:f_131_Out_1()
  local l0
  self = self._graph
  l0 = self[125]
  l0.HackableEntity = self.Headset
  l0:DisableHack()
end
function export:f_131_Out_2()
  local l0
  self = self._graph
  l0 = self[109]
  l0.HackableEntity = self.HardDrive_Reader
  l0.ProfileLinkedToHack = 1
  l0:DisableHack()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  self.MonitorState = l0.Target
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  l0.Integer = 0
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0.Out = self.f_21_Out
  l0:FromInteger()
end
function export:f_82_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[35]
  l0.HackableEntity = self.HardDrive_Reader
  l0.OasisHackingText = {
    section = "MISSIONS.WORLD MISSIONS.IOP.CHILDS_PLAY.OBJECTS.Hackables",
    item = "HDD Reader2",
    id = "317678"
  }
  l0:SetOverrideHackingText()
end
function export:f_40_Out()
  local l0
  self = self._graph
  l0 = self[97]
  l0:Condition(1)
end
function export:f_136_Out()
  local l0
  self = self._graph
  l0 = self[87]
  l0.Seconds = 2
  l0:Start()
end
function export:f_50_EventOccurred()
  local l0
  self = self._graph
  l0 = self[37]
  l0.Seconds = 0.7
  l0:Start()
end
function export:f_100_Disabled()
  local l0
  self = self._graph
  l0 = self[71]
  l0:Condition(2)
end
function export:f_141_PropSpawned()
  local l0, l1
  self = self._graph
  l0 = self[141]
  l1 = Boxes[PathID("domino/System/Bind_v2.lua")]
  l1.Parent = l0.PropEntity
  l1.Child = self.Headset
  l1.BoneName = nil
  l1.BoneNameStr = "headset_01"
  l1.RemoveOffset = 1
  l1._graph = self
  l1.Bound = DummyFunction
  l1.UnBound = DummyFunction
  l1.Out = DummyFunction
  l1:Bind()
end
function export:f_48_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_91_Out_0
  l0.Out[1] = self.f_91_Out_1
  l0.Out[2] = self.f_91_Out_2
  l0.Out[3] = self.f_91_Out_3
  l0:In()
end
function export:f_51_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  self.StaticOverride = l0.Target
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_101_Out_0
  l0.Out[1] = self.f_101_Out_1
  l0:In()
end
function export:f_25_ActivateHackables()
  local l0
  self = self._graph
  l0 = self[25]
  l0:Disable()
end
function export:f_25_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 9}
  l0.Out[0] = self.f_32_Out_0
  l0.Out[1] = self.f_32_Out_1
  l0.Out[2] = self.f_32_Out_2
  l0.Out[3] = self.f_32_Out_3
  l0.Out[4] = self.f_32_Out_4
  l0.Out[5] = self.f_32_Out_5
  l0.Out[6] = self.f_32_Out_6
  l0.Out[7] = self.f_32_Out_7
  l0.Out[8] = self.f_32_Out_8
  l0:In()
end
function export:f_97_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372065360312451"
  l0.SetEnabled = nil
  l0._graph = self
  l0.Enabled = self.f_47_Enabled
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  l0:Enable()
end
function export:f_27_Disabled()
  local l0
  self = self._graph
  l0 = self[149]
  l0.Seconds = 0.5
  l0:Start()
end
function export:f_27_OnEndAccessCamera()
  local l0
  self = self._graph
  self:en_27()
  l0 = self[27]
  l0:Disable()
end
function export:f_107_Out()
  local l0
  self = self._graph
  l0 = self[107]
  self.ColeIsFreaked = l0.Target
end
function export:f_107_SetFalse()
  local l0
  self = self._graph
  l0 = self[107]
  self.ColeIsFreaked = l0.Target
end
function export:f_107_SetFromBool()
  local l0
  self = self._graph
  l0 = self[107]
  self.ColeIsFreaked = l0.Target
end
function export:f_107_SetTrue()
  local l0
  self = self._graph
  l0 = self[107]
  self.ColeIsFreaked = l0.Target
end
function export:f_107_Toggled()
  local l0
  self = self._graph
  l0 = self[107]
  self.ColeIsFreaked = l0.Target
end
function export:f_46_Out_0()
  local l0
  self = self._graph
  l0 = self[93]
  l0.StateIndex = self.MonitorState
  l0.PropEntity = self.iop_childsplay_animatedmonitors_0
  l0:SetStateIndex()
end
function export:f_46_Out_1()
  local l0
  self = self._graph
  l0 = self[2]
  l0.StateIndex = 0
  l0.PropEntity = "9223372044478713573"
  l0:SetStateIndex()
end
function export:f_46_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372065360312451"
  l0.SetEnabled = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_100_Disabled
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  l0:Disable()
end
function export:f_9_Completed()
  local l0
  self = self._graph
  l0 = self[122]
  l0.Entity = "9223372044759809990"
  l0.SoundId = "soundbinary/2881901905.bnk"
  l0:Play()
end
function export:f_9_DisconnectedAnimationPlayed()
  local l0
  self = self._graph
  l0 = self[42]
  l0.User = self.Cole
  l0:UnspawnUser()
end
function export:f_127_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[5]
  l0.MainLayer = "IOP20_Main"
  l0.CheckPoint = "CheckPoint_0"
  l0.CinemaZone = "9223372059805863979"
  l0:In()
end
function export:f_118_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  l0.Parent = self.Cole
  l0.Child = self.Headset
  l0.BoneName = "Head"
  l0.BoneNameStr = nil
  l0.RemoveOffset = nil
  l0._graph = self
  l0.Bound = DummyFunction
  l0.UnBound = DummyFunction
  l0.Out = self.f_58_Out
  l0:Bind()
end
function export:f_16_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_31_Out_0
  l0.Out[1] = self.f_31_Out_1
  l0:In()
end
function export:f_81_Pushed()
  local l0
  self = self._graph
  l0 = self[9]
  l0.SecurityCameraList = self.SecurityCameraList
  l0:In()
end
function export:f_94_Disabled()
  local l0
  self = self._graph
  self:en_94()
  l0 = self[94]
  l0:DisableProfiling()
end
function export:f_92_Out()
  local l0
  self = self._graph
  l0 = self[97]
  l0:Condition(0)
end
function export:f_102_StartCompleted()
  local l0
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
  l0:SetCanExit()
end
function export:f_68_LoadAndPlayRequested()
  local l0
  self = self._graph
  self:en_30()
  l0 = self[30]
  l0:Condition(3)
end
function export:f_149_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[123]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_80_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[80]
  self.Cole = l0.UserID
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_140_Out_0
  l0.Out[1] = self.f_140_Out_1
  l0.Out[2] = self.f_140_Out_2
  l0.Out[3] = self.f_140_Out_3
  l0:In()
end
function export:f_109_Disabled()
  local l0
  self = self._graph
  self:en_11()
  l0 = self[11]
  l0:Condition(1)
end
function export:f_30_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  l0.Integer = 0
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:FromInteger()
end
function export:f_84_ProfilerReenabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_69_Out_0
  l0.Out[1] = self.f_69_Out_1
  l0:In()
end
function export:f_11_Out()
  local l0
  self = self._graph
  l0 = self[82]
  l0.Seconds = 0.7
  l0:Start()
end
function export:f_83_Unloaded()
  local l0
  self = self._graph
  l0 = self[120]
  l0:Succeed()
end
function export:f_116_Disabled()
  local l0
  self = self._graph
  self:en_116()
  l0 = self[116]
  l0:DisableProfiling()
end
function export:f_93_Out()
  local l0
  self = self._graph
  l0 = self[71]
  l0:Condition(0)
end
function export:f_32_Out_0()
  local l0
  self = self._graph
  self:en_28()
  l0 = self[28]
  l0:EnableHack()
end
function export:f_32_Out_1()
  local l0
  self = self._graph
  self:en_4()
  l0 = self[4]
  l0:Enable()
end
function export:f_32_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  l0.Integer = 0
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0.Out = self.f_29_Out
  l0:FromInteger()
end
function export:f_32_Out_3()
  local l0
  self = self._graph
  l0 = self[50]
  l0.MonitoredEvent = "ChildsPlay.HDD"
  l0:Enable()
end
function export:f_32_Out_4()
  local l0
  self = self._graph
  self:en_33()
  l0 = self[33]
  l0:Enable()
end
function export:f_32_Out_5()
  local l0
  self = self._graph
  l0 = self[12]
  l0:Enable()
end
function export:f_32_Out_6()
  local l0
  self = self._graph
  self:en_114()
  l0 = self[114]
  l0:Enable()
end
function export:f_32_Out_7()
  local l0
  self = self._graph
  l0 = self[108]
  l0.AutoDisableOnDeactivateHackables = 1
  l0:Enable()
end
function export:f_32_Out_8()
  local l0
  self = self._graph
  l0 = self[147]
  l0.HackableEntity = self.Cole
  l0:DisableProfiling()
end
function export:f_137_PropSpawned()
  local l0, l1
  self = self._graph
  l0 = self[137]
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l1.Entity = l0.PropEntity
  l1.EntityList = nil
  l1.Visible = nil
  l1.AffectChildren = nil
  l1.EntitiesList = nil
  l1._graph = self
  l1.IsSet = DummyFunction
  l1.Shown = DummyFunction
  l1.Hidden = DummyFunction
  l1.Out = DummyFunction
  l1:Hide()
end
function export:f_66_HackSuccess()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_131_Out_0
  l0.Out[1] = self.f_131_Out_1
  l0.Out[2] = self.f_131_Out_2
  l0:In()
end
function export:f_67_Popped()
  local l0
  self = self._graph
  l0 = self[84]
  l0:ReenableProfiler()
end
function export:f_28_Enabled()
  local l0
  self = self._graph
  self:en_28()
  l0 = self[28]
  l0:EnableProfiling()
end
function export:f_28_ProfilingEnabled()
  local l0
  self = self._graph
  self:en_49()
  l0 = self[49]
  l0:Enable()
end
function export:f_65_SendEventCompleted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_129_Out_0
  l0.Out[1] = self.f_129_Out_1
  l0:In()
end
function export:f_110_A_eq_B()
  local l0
  self = self._graph
  l0 = self[7]
  l0.StateIndex = self.MonitorState
  l0.PropEntity = self.iop_childsplay_animatedmonitors_0
  l0:SetStateIndex()
end
function export:en_79()
  local l0
  l0 = self[79]
  l0.HackableEntity = self.HardDrive_Reader
end
function export:en_115()
  local l0
  l0 = self[115]
  l0.HackableEntity = self.Toy_Rabbit
end
function export:en_88()
  local l0
  l0 = self[88]
  l0.Text = {
    section = "MISSIONS.WORLD MISSIONS.IOP.CHILDS_PLAY.OBJECTS.Hackables",
    item = "Router",
    id = "316615"
  }
  l0.TotalTime = 3
end
function export:en_49()
  local l0
  l0 = self[49]
  l0.HackableEntity = self.Headset
end
function export:en_4()
  local l0
  l0 = self[4]
  l0.MonitoredEvent = "ChildsPlay.Headset"
end
function export:en_112()
  local l0
  l0 = self[112]
  l0.HackableEntity = self.Hackable_Router
end
function export:en_106()
  local l0
  l0 = self[106]
  l0.HackableEntity = self.Hackable_Router
end
function export:en_114()
  local l0
  l0 = self[114]
  l0.MonitoredEvent = "ChildsPlay.Chair"
end
function export:en_33()
  local l0
  l0 = self[33]
  l0.MonitoredEvent = "ChildsPlay.Cabinet"
end
function export:en_98()
  local l0
  l0 = self[98]
  l0.HackableEntity = self.Headset
  l0.ProfileLinkedToHack = 1
end
function export:en_73()
  local l0
  l0 = self[73]
  l0.HackableEntity = self.HardDrive_Reader
end
function export:en_77()
  local l0
  l0 = self[77]
  l0.HackableEntity = self.Headset
end
function export:en_27()
  local l0
  l0 = self[27]
  l0.CameraEntity = self.ChildsPlay_StartCamera
end
function export:en_94()
  local l0
  l0 = self[94]
  l0.HackableEntity = self.Hackable_Router
end
function export:en_30()
  local l0
  l0 = self[30]
  l0.AutoReset = 1
end
function export:en_11()
  local l0
  l0 = self[11]
  l0.AutoReset = 1
end
function export:en_116()
  local l0
  l0 = self[116]
  l0.HackableEntity = self.HardDrive_Reader
  l0.ProfileLinkedToHack = 1
end
function export:en_28()
  local l0
  l0 = self[28]
  l0.HackableEntity = self.Headset
  l0.ProfileLinkedToHack = 1
end
_compilerVersion = 4
