export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AIAgentZoneController.lua")
  cbox:RegisterBox("domino/System/IOPPropController.lua")
  cbox:RegisterBox("domino/System/IOPController.lua")
  cbox:RegisterBox("domino/System/Bind_v2.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CollisionController.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/Library/common/IOP.IOP_CleanUp.lua")
  cbox:RegisterBox("domino/Library/common/IOP.IOP_StartUp.lua")
  cbox:RegisterBox("domino/System/IOPMonitor.lua")
  cbox:RegisterBox("domino/System/IOPPropMonitor.lua")
  cbox:RegisterBox("domino/System/Lists/ListReader_SoundID.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter_SoundID.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MoveableEntityController.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/ParticleFxController_v2.lua")
  cbox:RegisterBox("domino/System/PlayDialogWithSubtitle.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/SecurityCameraMonitor.lua")
  cbox:RegisterBox("domino/System/SecurityCamController.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/SetInteger_v2.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
  cbox:LoadResource("soundbinary/2777267105.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3078544213.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3834351821.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3750256370.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/956491873.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2360353049.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/219946856.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1034427775.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2348956892.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/4221736248.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3708793768.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3805494361.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3023493147.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3728838874.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.Cameras = {}
  self.MainCharacter = nil
  self.NPCCharacters = {}
  self.Neighbor = nil
  self.HornList = {}
  self.BlockStage1RemSmoke = 0
  self.RolesList = {
    "GarageSuicide.John",
    "GarageSuicide.Neighbor"
  }
  self.Horn = "soundbinary/3834351821.bnk"
  self.SendDoorEvents = 0
  self.PhoneHacked = 0
  self.IgnitionHacked = 0
  self.VentilationHacked = 0
  self.HornDisabled = 0
  self.VentHacks = 8
  self.GuyDies = 0
  self.SecurityCameraList = {}
  self[66] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[66]
  l0._graph = self
  l0.Out = self.f_66_Out
  l0.SetTrue = self.f_66_SetTrue
  l0.SetFalse = self.f_66_SetFalse
  l0.Toggled = self.f_66_Toggled
  l0.SetFromBool = self.f_66_SetFromBool
  self[104] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[104]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = self.f_104_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_104_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[156] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[156]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_156_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[72] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[72]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_72_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[44] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[44]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_44_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[172] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[172]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_172_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[110] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[110]
  l0._graph = self
  l0.Out = self.f_110_Out
  l0.SetTrue = self.f_110_SetTrue
  l0.SetFalse = self.f_110_SetFalse
  l0.Toggled = self.f_110_Toggled
  l0.SetFromBool = self.f_110_SetFromBool
  self[169] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[169]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[93] = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self[93]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnStartAccessCamera = self.f_93_OnStartAccessCamera
  l0.OnEndAccessCamera = DummyFunction
  l0.OnStartExitCamera = self.f_93_OnStartExitCamera
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self[64] = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self[64]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_64_EventOccurred
  l0.Out = DummyFunction
  self[135] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[135]
  l0._graph = self
  l0.Out = self.f_135_Out
  l0.SetTrue = self.f_135_SetTrue
  l0.SetFalse = self.f_135_SetFalse
  l0.Toggled = self.f_135_Toggled
  l0.SetFromBool = self.f_135_SetFromBool
  self[10] = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self[10]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_10_EventOccurred
  l0.Out = DummyFunction
  self[20] = cbox:CreateBox("domino/Library/common/IOP.IOP_CleanUp.lua")
  l0 = self[20]
  l0._graph = self
  l0.Completed = self.f_20_Completed
  l0.DisconnectedAnimationPlayed = self.f_20_DisconnectedAnimationPlayed
  l0.Out = DummyFunction
  self[47] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[47]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_47_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[182] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[182]
  l0._graph = self
  l0._DynamicAnchors = {Data = 3}
  l0.Added = self.f_182_Added
  l0.Removed = self.f_182_Removed
  l0.Out = self.f_182_Out
  self[132] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[132]
  l0._graph = self
  l0.Out = self.f_132_Out
  l0.SetTrue = self.f_132_SetTrue
  l0.SetFalse = self.f_132_SetFalse
  l0.Toggled = self.f_132_Toggled
  l0.SetFromBool = self.f_132_SetFromBool
  self[2] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[2]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_2_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[14] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[14]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_14_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
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
  self[108] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[108]
  l0._graph = self
  l0.Out = self.f_108_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[91] = cbox:CreateBox("domino/System/Lists/ListWriter_SoundID.lua")
  l0 = self[91]
  l0._graph = self
  l0._DynamicAnchors = {SoundID = 4}
  l0.Added = self.f_91_Added
  l0.Removed = self.f_91_Removed
  l0.Out = self.f_91_Out
  self[95] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[95]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self[17] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[17]
  l0._graph = self
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_17_Added
  l0.Removed = self.f_17_Removed
  l0.Out = self.f_17_Out
  self[23] = cbox:CreateBox("domino/System/IOPPropController.lua")
  l0 = self[23]
  l0._graph = self
  l0.Out = self.f_23_Out
  self[154] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[154]
  l0._graph = self
  l0.Out = self.f_154_Out
  l0.SetTrue = self.f_154_SetTrue
  l0.SetFalse = self.f_154_SetFalse
  l0.Toggled = self.f_154_Toggled
  l0.SetFromBool = self.f_154_SetFromBool
  self[180] = cbox:CreateBox("domino/System/IOPPropMonitor.lua")
  l0 = self[180]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.PropSpawned = self.f_180_PropSpawned
  self[60] = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self[60]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_60_EventOccurred
  l0.Out = DummyFunction
  self[114] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[114]
  l0._graph = self
  l0.Out = self.f_114_Out
  l0.SetTrue = self.f_114_SetTrue
  l0.SetFalse = self.f_114_SetFalse
  l0.Toggled = self.f_114_Toggled
  l0.SetFromBool = self.f_114_SetFromBool
  self[101] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[101]
  l0._graph = self
  l0._DynamicAnchors = {Input = 5}
  l0.Out = self.f_101_Out
  self[45] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[45]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[130] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[130]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_130_Out
  self[115] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[115]
  l0._graph = self
  l0.Out = self.f_115_Out
  l0.SetTrue = self.f_115_SetTrue
  l0.SetFalse = self.f_115_SetFalse
  l0.Toggled = self.f_115_Toggled
  l0.SetFromBool = self.f_115_SetFromBool
  self[35] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[35]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_35_Out
  self[88] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[88]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_88_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[140] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[140]
  l0._graph = self
  l0.Out = self.f_140_Out
  l0.SetTrue = self.f_140_SetTrue
  l0.SetFalse = self.f_140_SetFalse
  l0.Toggled = self.f_140_Toggled
  l0.SetFromBool = self.f_140_SetFromBool
  self[96] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[96]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_96_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[36] = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self[36]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnStartAccessCamera = self.f_36_OnStartAccessCamera
  l0.OnEndAccessCamera = DummyFunction
  l0.OnStartExitCamera = self.f_36_OnStartExitCamera
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self[52] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[52]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_52_OnUserInPlace
  self[77] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[77]
  l0._graph = self
  l0.Out = self.f_77_Out
  l0.SetTrue = self.f_77_SetTrue
  l0.SetFalse = self.f_77_SetFalse
  l0.Toggled = self.f_77_Toggled
  l0.SetFromBool = self.f_77_SetFromBool
  self[46] = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self[46]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnStartAccessCamera = self.f_46_OnStartAccessCamera
  l0.OnEndAccessCamera = DummyFunction
  l0.OnStartExitCamera = self.f_46_OnStartExitCamera
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self[18] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[18]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = DummyFunction
  self[65] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[65]
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
  self[38] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[38]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_38_OnUserInPlace
  self[85] = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self[85]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnStartAccessCamera = self.f_85_OnStartAccessCamera
  l0.OnEndAccessCamera = DummyFunction
  l0.OnStartExitCamera = self.f_85_OnStartExitCamera
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self[49] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[49]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[146] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[146]
  l0._graph = self
  l0.Out = self.f_146_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[59] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[59]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[170] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[170]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_170_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[32] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[32]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_32_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[80] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[80]
  l0._graph = self
  self[177] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[177]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_177_Out
  self[143] = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self[143]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_143_EventOccurred
  l0.Out = DummyFunction
  self[123] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[123]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_123_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[92] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[92]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_92_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[99] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[99]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_99_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[137] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[137]
  l0._graph = self
  l0.Out = self.f_137_Out
  l0.SetTrue = self.f_137_SetTrue
  l0.SetFalse = self.f_137_SetFalse
  l0.Toggled = self.f_137_Toggled
  l0.SetFromBool = self.f_137_SetFromBool
  self[94] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[94]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = self.f_94_StartCompleted
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self[15] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[15]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_15_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[63] = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self[63]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_63_Disabled
  l0.OnStartAccessCamera = DummyFunction
  l0.OnEndAccessCamera = self.f_63_OnEndAccessCamera
  l0.OnStartExitCamera = DummyFunction
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self[43] = cbox:CreateBox("domino/System/PlayDialogWithSubtitle.lua")
  l0 = self[43]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[144] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[144]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[126] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[126]
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
  self[183] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[183]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_183_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[21] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[21]
  l0._graph = self
  l0._DynamicAnchors = {Data = 3}
  l0.Added = self.f_21_Added
  l0.Removed = self.f_21_Removed
  l0.Out = self.f_21_Out
  self[33] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[33]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_33_Finished
  self[109] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[109]
  l0._graph = self
  l0.Out = self.f_109_Out
  l0.SetTrue = self.f_109_SetTrue
  l0.SetFalse = self.f_109_SetFalse
  l0.Toggled = self.f_109_Toggled
  l0.SetFromBool = self.f_109_SetFromBool
  self[70] = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self[70]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = DummyFunction
  l0.Out = DummyFunction
  self[106] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[106]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_106_Out
  self[6] = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self[6]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = self.f_6_IOPComplete
  l0.EventOccurred = DummyFunction
  l0.Out = DummyFunction
  self[34] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[34]
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
  self[128] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[128]
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
  self[40] = cbox:CreateBox("domino/Library/common/IOP.IOP_StartUp.lua")
  l0 = self[40]
  l0._graph = self
  l0.Out = self.f_40_Out
  self[84] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[84]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[105] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[105]
  l0._graph = self
  l0.Out = self.f_105_Out
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self[7] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[7]
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
  self[113] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[113]
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
  self[131] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[131]
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
  self[133] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[133]
  l0._graph = self
  l0.Out = self.f_133_Out
  l0.SetTrue = self.f_133_SetTrue
  l0.SetFalse = self.f_133_SetFalse
  l0.Toggled = self.f_133_Toggled
  l0.SetFromBool = self.f_133_SetFromBool
  self[124] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[124]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_124_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[127] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[127]
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
  self[37] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[37]
  l0._graph = self
  l0.Out = self.f_37_Out
  l0.SetTrue = self.f_37_SetTrue
  l0.SetFalse = self.f_37_SetFalse
  l0.Toggled = self.f_37_Toggled
  l0.SetFromBool = self.f_37_SetFromBool
  self[73] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[73]
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
  self[134] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[134]
  l0._graph = self
  l0.Out = self.f_134_Out
  l0.SetTrue = self.f_134_SetTrue
  l0.SetFalse = self.f_134_SetFalse
  l0.Toggled = self.f_134_Toggled
  l0.SetFromBool = self.f_134_SetFromBool
  self[176] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[176]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_176_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[138] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[138]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_138_Unloaded
  l0.Reseted = DummyFunction
  self[12] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[12]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[81] = cbox:CreateBox("domino/System/Lists/ListReader_SoundID.lua")
  l0 = self[81]
  l0._graph = self
  l0.Out = self.f_81_Out
  l0.EndOfList = self.f_81_EndOfList
  self[9] = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self[9]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = DummyFunction
  l0.Out = DummyFunction
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
  self[55] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[55]
  l0._graph = self
  l0.Out = self.f_55_Out
  l0.StartCompleted = DummyFunction
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
  l0 = self[35]
  l0:Input(1)
end
function export:In()
  local l0
  l0 = self[35]
  l0:Input(0)
end
function export:f_100_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_54_Out_0
  l0.Out[1] = self.f_54_Out_1
  l0.Out[2] = DummyFunction
  l0:In()
end
function export:f_100_Out_1()
  local l0
  self = self._graph
  l0 = self[101]
  l0:Input(3)
end
function export:f_66_Out()
  local l0
  self = self._graph
  l0 = self[66]
  self.SendDoorEvents = l0.Target
  l0 = self[60]
  l0.MonitoredEvent = "GarageSuicide.ToggleOpenDoorChance"
  l0:Enable()
end
function export:f_66_SetFalse()
  local l0
  self = self._graph
  l0 = self[66]
  self.SendDoorEvents = l0.Target
end
function export:f_66_SetFromBool()
  local l0
  self = self._graph
  l0 = self[66]
  self.SendDoorEvents = l0.Target
end
function export:f_66_SetTrue()
  local l0
  self = self._graph
  l0 = self[66]
  self.SendDoorEvents = l0.Target
end
function export:f_66_Toggled()
  local l0
  self = self._graph
  l0 = self[66]
  self.SendDoorEvents = l0.Target
end
function export:f_104_Stopped()
  local l0
  self = self._graph
  l0 = self[106]
  l0:Input(1)
end
function export:f_104_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[177]
  l0:Input(0)
end
function export:f_53_Out_0()
  local l0
  self = self._graph
  l0 = self[183]
  l0.Seconds = 0.5
  l0:Start()
end
function export:f_53_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 13}
  l0.Out[0] = self.f_68_Out_0
  l0.Out[1] = DummyFunction
  l0.Out[2] = self.f_68_Out_2
  l0.Out[3] = self.f_68_Out_3
  l0.Out[4] = self.f_68_Out_4
  l0.Out[5] = self.f_68_Out_5
  l0.Out[6] = self.f_68_Out_6
  l0.Out[7] = self.f_68_Out_7
  l0.Out[8] = self.f_68_Out_8
  l0.Out[9] = self.f_68_Out_9
  l0.Out[10] = self.f_68_Out_10
  l0.Out[11] = self.f_68_Out_11
  l0.Out[12] = self.f_68_Out_12
  l0:In()
end
function export:f_156_TimeElapsed()
  local l0
  self = self._graph
  self:en_88()
  l0 = self[88]
  l0:EnableHack()
end
function export:f_72_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[124]
  l0.HackableEntity = "9223372062359598007"
  l0.AutoDisable = 1
  l0:Enable()
end
function export:f_44_UnspawnedUser()
  local l0
  self = self._graph
  l0 = self[45]
  l0.CLO = "9223372046411245347"
  l0:Deactivate()
end
function export:f_172_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060145351298"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_171_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_110_Out()
  local l0
  self = self._graph
  l0 = self[110]
  self.PhoneHacked = l0.Target
  l0 = self[114]
  l0:False()
end
function export:f_110_SetFalse()
  local l0
  self = self._graph
  l0 = self[110]
  self.PhoneHacked = l0.Target
end
function export:f_110_SetFromBool()
  local l0
  self = self._graph
  l0 = self[110]
  self.PhoneHacked = l0.Target
end
function export:f_110_SetTrue()
  local l0
  self = self._graph
  l0 = self[110]
  self.PhoneHacked = l0.Target
end
function export:f_110_Toggled()
  local l0
  self = self._graph
  l0 = self[110]
  self.PhoneHacked = l0.Target
end
function export:f_93_OnStartAccessCamera()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = DummyFunction
  l0.Out[1] = self.f_74_Out_1
  l0:In()
end
function export:f_93_OnStartExitCamera()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = DummyFunction
  l0.Out[1] = self.f_31_Out_1
  l0:In()
end
function export:f_64_EventOccurred()
  local l0
  self = self._graph
  l0 = self[59]
  l0.Entity = "9223372062359598005"
  l0.SoundId = "soundbinary/1034427775.bnk"
  l0:Play()
end
function export:f_135_Out()
  local l0
  self = self._graph
  l0 = self[135]
  self.HornDisabled = l0.Target
end
function export:f_135_SetFalse()
  local l0
  self = self._graph
  l0 = self[135]
  self.HornDisabled = l0.Target
end
function export:f_135_SetFromBool()
  local l0
  self = self._graph
  l0 = self[135]
  self.HornDisabled = l0.Target
end
function export:f_135_SetTrue()
  local l0
  self = self._graph
  l0 = self[135]
  self.HornDisabled = l0.Target
end
function export:f_135_Toggled()
  local l0
  self = self._graph
  l0 = self[135]
  self.HornDisabled = l0.Target
end
function export:f_10_EventOccurred()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372046909676676"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = self.f_57_Out
  l0:Hide()
end
function export:f_20_Completed()
  local l0
  self = self._graph
  l0 = self[138]
  l0.LayerName = "IOP05_Main"
  l0:Unload()
end
function export:f_20_DisconnectedAnimationPlayed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_26_Out_0
  l0.Out[1] = self.f_26_Out_1
  l0:In()
end
function export:f_47_UnspawnedUser()
  local l0
  self = self._graph
  l0 = self[12]
  l0.CLO = "9223372046411245346"
  l0:Deactivate()
end
function export:f_182_Added()
  local l0
  self = self._graph
  l0 = self[182]
  self.SecurityCameraList = l0.Target
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 10}
  l0.Out[0] = self.f_4_Out_0
  l0.Out[1] = self.f_4_Out_1
  l0.Out[2] = self.f_4_Out_2
  l0.Out[3] = self.f_4_Out_3
  l0.Out[4] = self.f_4_Out_4
  l0.Out[5] = self.f_4_Out_5
  l0.Out[6] = self.f_4_Out_6
  l0.Out[7] = self.f_4_Out_7
  l0.Out[8] = DummyFunction
  l0.Out[9] = self.f_4_Out_9
  l0:In()
end
function export:f_182_Out()
  local l0
  self = self._graph
  l0 = self[182]
  self.SecurityCameraList = l0.Target
end
function export:f_182_Removed()
  local l0
  self = self._graph
  l0 = self[182]
  self.SecurityCameraList = l0.Target
end
function export:f_132_Out()
  local l0
  self = self._graph
  l0 = self[132]
  self.VentilationHacked = l0.Target
end
function export:f_132_SetFalse()
  local l0
  self = self._graph
  l0 = self[132]
  self.VentilationHacked = l0.Target
end
function export:f_132_SetFromBool()
  local l0
  self = self._graph
  l0 = self[132]
  self.VentilationHacked = l0.Target
end
function export:f_132_SetTrue()
  local l0
  self = self._graph
  l0 = self[132]
  self.VentilationHacked = l0.Target
end
function export:f_132_Toggled()
  local l0
  self = self._graph
  l0 = self[132]
  self.VentilationHacked = l0.Target
end
function export:f_179_Out()
  local l0, l1
  self = self._graph
  l0 = self[180]
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l1.Entity = l0.PropEntity
  l1.EntityList = nil
  l1.Visible = nil
  l1.AffectChildren = 0
  l1.EntitiesList = nil
  l1._graph = self
  l1.IsSet = DummyFunction
  l1.Shown = DummyFunction
  l1.Hidden = DummyFunction
  l1.Out = DummyFunction
  l1:Hide()
end
function export:f_152_Out()
  local l0
  self = self._graph
  l0 = self[154]
  l0:False()
end
function export:f_2_HackSuccess()
  local l0
  self = self._graph
  self:en_88()
  l0 = self[88]
  l0:DisableHack()
end
function export:f_14_HackSuccess()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_102_Out_0
  l0.Out[1] = self.f_102_Out_1
  l0.Out[2] = self.f_102_Out_2
  l0:In()
end
function export:f_125_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372047388999903"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0.Moved = DummyFunction
  l0.MovedForward = DummyFunction
  l0.MovedBackward = DummyFunction
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = self.f_69_Out
  l0:Move()
end
function export:f_108_Out()
  local l0
  self = self._graph
  l0 = self[170]
  l0:Start()
end
function export:f_74_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.PhoneHacked
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_111_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_91_Added()
  local l0
  self = self._graph
  l0 = self[91]
  self.HornList = l0.Target
  l0 = self[81]
  l0.Input = self.HornList
  l0:Read()
end
function export:f_91_Out()
  local l0
  self = self._graph
  l0 = self[91]
  self.HornList = l0.Target
end
function export:f_91_Removed()
  local l0
  self = self._graph
  l0 = self[91]
  self.HornList = l0.Target
end
function export:f_17_Added()
  local l0
  self = self._graph
  l0 = self[17]
  self.NPCCharacters = l0.Target
  l0 = self[94]
  l0.IopID = "GarageSuicide"
  l0.PlayerEntity = self.PlayerEntity
  l0.IopRole = "GarageSuicide.John"
  l0.NpcEntityList = self.NPCCharacters
  l0.IopRoleList = self.RolesList
  l0.OffscreenDialogPoint = "9223372046411330288"
  l0:Start()
end
function export:f_17_Out()
  local l0
  self = self._graph
  l0 = self[17]
  self.NPCCharacters = l0.Target
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372046411245317"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = self.f_152_Out
  l0:Hide()
end
function export:f_17_Removed()
  local l0
  self = self._graph
  l0 = self[17]
  self.NPCCharacters = l0.Target
end
function export:f_103_Out_0()
  local l0
  self = self._graph
  l0 = self[33]
  l0.Entity = "9223372046411245339"
  l0.SoundId = "soundbinary/2777267105.bnk"
  l0:Play()
end
function export:f_11_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  self.VentHacks = l0.Target
end
function export:f_39_Started()
  local l0
  self = self._graph
  l0 = self[110]
  l0:False()
end
function export:f_23_Out()
  local l0
  self = self._graph
  l0 = self[84]
  l0.Entity = "9223372046411330288"
  l0.SoundId = "soundbinary/3750256370.bnk"
  l0:Play()
end
function export:f_154_Out()
  local l0
  self = self._graph
  l0 = self[154]
  self.GuyDies = l0.Target
end
function export:f_154_SetFalse()
  local l0
  self = self._graph
  l0 = self[154]
  self.GuyDies = l0.Target
end
function export:f_154_SetFromBool()
  local l0
  self = self._graph
  l0 = self[154]
  self.GuyDies = l0.Target
end
function export:f_154_SetTrue()
  local l0
  self = self._graph
  l0 = self[154]
  self.GuyDies = l0.Target
end
function export:f_154_Toggled()
  local l0
  self = self._graph
  l0 = self[154]
  self.GuyDies = l0.Target
end
function export:f_180_PropSpawned()
  local l0, l1
  self = self._graph
  l0 = self[180]
  l1 = Boxes[PathID("domino/System/Bind_v2.lua")]
  l1.Parent = l0.PropEntity
  l1.Child = "9223372046411398857"
  l1.BoneName = nil
  l1.BoneNameStr = "cell_phone_01"
  l1.RemoveOffset = 1
  l1._graph = self
  l1.Bound = DummyFunction
  l1.UnBound = DummyFunction
  l1.Out = self.f_179_Out
  l1:Bind()
end
function export:f_60_EventOccurred()
  local l0
  self = self._graph
  l0 = self[37]
  l0.Bool = self.SendDoorEvents
  l0:Toggle()
end
function export:f_114_Out()
  local l0
  self = self._graph
  l0 = self[114]
  self.IgnitionHacked = l0.Target
  l0 = self[115]
  l0:False()
end
function export:f_114_SetFalse()
  local l0
  self = self._graph
  l0 = self[114]
  self.IgnitionHacked = l0.Target
end
function export:f_114_SetFromBool()
  local l0
  self = self._graph
  l0 = self[114]
  self.IgnitionHacked = l0.Target
end
function export:f_114_SetTrue()
  local l0
  self = self._graph
  l0 = self[114]
  self.IgnitionHacked = l0.Target
end
function export:f_114_Toggled()
  local l0
  self = self._graph
  l0 = self[114]
  self.IgnitionHacked = l0.Target
end
function export:f_101_Out()
  local l0
  self = self._graph
  self:en_104()
  l0 = self[104]
  l0:Stop()
end
function export:f_102_Out_0()
  local l0
  self = self._graph
  l0 = self[101]
  l0:Input(2)
end
function export:f_102_Out_1()
  local l0
  self = self._graph
  l0 = self[43]
  l0.Entity = "9223372046411368364"
  l0.SoundId = "soundbinary/956491873.bnk"
  l0:Play()
end
function export:f_102_Out_2()
  local l0
  self = self._graph
  l0 = self[109]
  l0.Bool = 1
  l0:True()
end
function export:f_130_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 9}
  l0.Out[0] = self.f_129_Out_0
  l0.Out[1] = self.f_129_Out_1
  l0.Out[2] = DummyFunction
  l0.Out[3] = self.f_129_Out_3
  l0.Out[4] = self.f_129_Out_4
  l0.Out[5] = self.f_129_Out_5
  l0.Out[6] = self.f_129_Out_6
  l0.Out[7] = self.f_129_Out_7
  l0.Out[8] = self.f_129_Out_8
  l0:In()
end
function export:f_129_Out_0()
  local l0
  self = self._graph
  l0 = self[126]
  l0.HackableEntity = "9223372062359598005"
  l0:DisableHack()
end
function export:f_129_Out_1()
  local l0
  self = self._graph
  l0 = self[127]
  l0.HackableEntity = "9223372062359598003"
  l0:DisableHack()
end
function export:f_129_Out_3()
  local l0
  self = self._graph
  l0 = self[128]
  l0.HackableEntity = "9223372062359598007"
  l0:DisableHack()
end
function export:f_129_Out_4()
  local l0
  self = self._graph
  l0 = self[131]
  l0.HackableEntity = "9223372046411398857"
  l0:DisableHack()
end
function export:f_129_Out_5()
  local l0
  self = self._graph
  l0 = self[132]
  l0:True()
end
function export:f_129_Out_6()
  local l0
  self = self._graph
  l0 = self[134]
  l0:True()
end
function export:f_129_Out_7()
  local l0
  self = self._graph
  l0 = self[133]
  l0:True()
end
function export:f_129_Out_8()
  local l0
  self = self._graph
  l0 = self[137]
  l0:True()
end
function export:f_115_Out()
  local l0
  self = self._graph
  l0 = self[115]
  self.VentilationHacked = l0.Target
  l0 = self[135]
  l0:False()
end
function export:f_115_SetFalse()
  local l0
  self = self._graph
  l0 = self[115]
  self.VentilationHacked = l0.Target
end
function export:f_115_SetFromBool()
  local l0
  self = self._graph
  l0 = self[115]
  self.VentilationHacked = l0.Target
end
function export:f_115_SetTrue()
  local l0
  self = self._graph
  l0 = self[115]
  self.VentilationHacked = l0.Target
end
function export:f_115_Toggled()
  local l0
  self = self._graph
  l0 = self[115]
  self.VentilationHacked = l0.Target
end
function export:f_35_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_41_Out
  l0:In()
end
function export:f_67_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  l0.Integer = 0
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0.Out = self.f_11_Out
  l0:FromInteger()
end
function export:f_88_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_184_Out_0
  l0.Out[1] = self.f_184_Out_1
  l0:In()
end
function export:f_140_Out()
  local l0
  self = self._graph
  l0 = self[140]
  self.GuyDies = l0.Target
end
function export:f_140_SetFalse()
  local l0
  self = self._graph
  l0 = self[140]
  self.GuyDies = l0.Target
end
function export:f_140_SetFromBool()
  local l0
  self = self._graph
  l0 = self[140]
  self.GuyDies = l0.Target
end
function export:f_140_SetTrue()
  local l0
  self = self._graph
  l0 = self[140]
  self.GuyDies = l0.Target
end
function export:f_140_Toggled()
  local l0
  self = self._graph
  l0 = self[140]
  self.GuyDies = l0.Target
end
function export:f_96_HackSuccess()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_103_Out_0
  l0.Out[1] = DummyFunction
  l0:In()
end
function export:f_117_A_is_False()
  local l0
  self = self._graph
  self:en_7()
  l0 = self[7]
  l0:EnableHack()
end
function export:f_36_OnStartAccessCamera()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_79_Out_0
  l0.Out[1] = self.f_79_Out_1
  l0:In()
end
function export:f_36_OnStartExitCamera()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_51_Out_0
  l0.Out[1] = self.f_51_Out_1
  l0:In()
end
function export:f_52_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[52]
  self.MainCharacter = l0.UserID
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_181_Out_0
  l0.Out[1] = self.f_181_Out_1
  l0:In()
end
function export:f_77_Out()
  local l0
  self = self._graph
  l0 = self[77]
  self.BlockStage1RemSmoke = l0.Target
  l0 = self[21]
  l0.Input = self.Cameras
  l0.Data[0] = "9223372047346295135"
  l0.Data[1] = "9223372047346295132"
  l0.Data[2] = "9223372047259739537"
  l0:Add()
end
function export:f_77_SetFalse()
  local l0
  self = self._graph
  l0 = self[77]
  self.BlockStage1RemSmoke = l0.Target
end
function export:f_77_SetFromBool()
  local l0
  self = self._graph
  l0 = self[77]
  self.BlockStage1RemSmoke = l0.Target
end
function export:f_77_SetTrue()
  local l0
  self = self._graph
  l0 = self[77]
  self.BlockStage1RemSmoke = l0.Target
end
function export:f_77_Toggled()
  local l0
  self = self._graph
  l0 = self[77]
  self.BlockStage1RemSmoke = l0.Target
end
function export:f_171_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066890091114"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_136_A_is_False()
  local l0
  self = self._graph
  self:en_73()
  l0 = self[73]
  l0:EnableHack()
end
function export:f_31_Out_1()
  local l0
  self = self._graph
  self:en_65()
  l0 = self[65]
  l0:DisableHack()
end
function export:f_46_OnStartAccessCamera()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.HornDisabled
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_136_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_46_OnStartExitCamera()
  local l0
  self = self._graph
  self:en_73()
  l0 = self[73]
  l0:DisableHack()
end
function export:f_38_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[38]
  self.Neighbor = l0.UserID
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.Neighbor
  l0.Collisionable = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_48_CollisionsDisabled
  l0.Out = DummyFunction
  l0:DisableCollisions()
end
function export:f_57_Out()
  local l0
  self = self._graph
  l0 = self[113]
  l0.HackableEntity = "9223372046411398857"
  l0:DisableHack()
end
function export:f_85_OnStartAccessCamera()
  local l0
  self = self._graph
  self:en_58()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0:Show()
end
function export:f_85_OnStartExitCamera()
  local l0
  self = self._graph
  self:en_58()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0:Hide()
end
function export:f_146_Out()
  local l0
  self = self._graph
  l0 = self[72]
  l0:Start()
end
function export:f_75_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = self[17]
  l0.Input = self.NPCCharacters
  l0.Data[0] = self.MainCharacter
  l0.Data[1] = self.Neighbor
  l0:Add()
end
function export:f_4_Out_0()
  local l0
  self = self._graph
  l0 = self[99]
  l0.Seconds = 1
  l0:Start()
end
function export:f_4_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372046411245335"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_39_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_4_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372046411245333"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_4_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372046411245321"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_78_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_4_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372046411245319"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_4_Out_5()
  local l0
  self = self._graph
  l0 = self[10]
  l0.MonitoredEvent = "GarageSuicide.HideGarageDoor"
  l0:Enable()
end
function export:f_4_Out_6()
  local l0
  self = self._graph
  l0 = self[91]
  l0.Input = self.HornList
  l0.SoundID[0] = "soundbinary/4221736248.bnk"
  l0.SoundID[1] = "soundbinary/219946856.bnk"
  l0.SoundID[2] = "soundbinary/2348956892.bnk"
  l0.SoundID[3] = "soundbinary/3805494361.bnk"
  l0:Add()
end
function export:f_4_Out_7()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372045064707467"
  l0.Collisionable = 0
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = DummyFunction
  l0.Out = self.f_67_Out
  l0:DisableCollisions()
end
function export:f_4_Out_9()
  local l0
  self = self._graph
  l0 = self[66]
  l0:False()
end
function export:f_51_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.VentilationHacked
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_117_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_51_Out_1()
  local l0
  self = self._graph
  self:en_34()
  l0 = self[34]
  l0:EnableHack()
end
function export:f_175_A_is_False()
  local l0
  self = self._graph
  l0 = self[176]
  l0.Seconds = 20
  l0:Start()
end
function export:f_147_Out()
  local l0
  self = self._graph
  l0 = self[146]
  l0.Entity = "9223372046411245317"
  l0.SoundId = "soundbinary/3728838874.bnk"
  l0:Play()
end
function export:f_26_Out_0()
  local l0
  self = self._graph
  l0 = self[47]
  l0.User = self.MainCharacter
  l0:UnspawnUser()
end
function export:f_26_Out_1()
  local l0
  self = self._graph
  l0 = self[44]
  l0.User = self.Neighbor
  l0:UnspawnUser()
end
function export:f_170_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_174_Out_0
  l0.Out[1] = self.f_174_Out_1
  l0:In()
end
function export:f_142_Out_0()
  local l0
  self = self._graph
  l0 = self[130]
  l0:Input(1)
end
function export:f_142_Out_1()
  local l0
  self = self._graph
  l0 = self[140]
  l0:True()
end
function export:f_111_A_is_False()
  local l0
  self = self._graph
  self:en_65()
  l0 = self[65]
  l0:EnableHack()
end
function export:f_32_Disabled()
  local l0
  self = self._graph
  l0 = self[123]
  l0.HackableEntity = "9223372047346295132"
  l0:DisableHack()
end
function export:f_41_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[40]
  l0.MainLayer = "IOP05_Main"
  l0.CheckPoint = "CheckPoint_0"
  l0.CinemaZone = "9223372059425049658"
  l0:In()
end
function export:f_177_Out()
  local l0
  self = self._graph
  l0 = self[105]
  l0.IopID = "GarageSuicide"
  l0.IopEvent = "GarageSuicide.Timeout"
  l0:SendEvent()
end
function export:f_143_EventOccurred()
  local l0
  self = self._graph
  l0 = self[144]
  l0.Entity = "9223372062359598005"
  l0.SoundId = "soundbinary/3708793768.bnk"
  l0:Play()
end
function export:f_69_Out()
  local l0
  self = self._graph
  l0 = self[108]
  l0.Entity = "9223372046411245317"
  l0.SoundId = "soundbinary/3078544213.bnk"
  l0:Play()
end
function export:f_123_Disabled()
  local l0
  self = self._graph
  l0 = self[92]
  l0.HackableEntity = "9223372047259739537"
  l0:DisableHack()
end
function export:f_92_Disabled()
  local l0
  self = self._graph
  l0 = self[20]
  l0.SecurityCameraList = self.SecurityCameraList
  l0:In()
end
function export:f_99_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[38]
  l0.CLO = "9223372046411245347"
  l0:Activate()
end
function export:f_137_Out()
  local l0
  self = self._graph
  l0 = self[137]
  self.HornDisabled = l0.Target
end
function export:f_137_SetFalse()
  local l0
  self = self._graph
  l0 = self[137]
  self.HornDisabled = l0.Target
end
function export:f_137_SetFromBool()
  local l0
  self = self._graph
  l0 = self[137]
  self.HornDisabled = l0.Target
end
function export:f_137_SetTrue()
  local l0
  self = self._graph
  l0 = self[137]
  self.HornDisabled = l0.Target
end
function export:f_137_Toggled()
  local l0
  self = self._graph
  l0 = self[137]
  self.HornDisabled = l0.Target
end
function export:f_94_StartCompleted()
  local l0
  self = self._graph
  l0 = self[76]
  l0.Seconds = 0.6
  l0:Start()
end
function export:f_15_HackSuccess()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372047388999903"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0.Moved = DummyFunction
  l0.MovedForward = DummyFunction
  l0.MovedBackward = DummyFunction
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = self.f_147_Out
  l0:Move()
end
function export:f_63_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_53_Out_0
  l0.Out[1] = self.f_53_Out_1
  l0:In()
end
function export:f_63_OnEndAccessCamera()
  local l0
  self = self._graph
  self:en_63()
  l0 = self[63]
  l0:Disable()
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = self[182]
  l0.Input = self.SecurityCameraList
  l0.Data[0] = "9223372047346295132"
  l0.Data[1] = "9223372047346295135"
  l0.Data[2] = "9223372047259739537"
  l0:Add()
end
function export:f_183_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[18]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_21_Added()
  local l0
  self = self._graph
  l0 = self[21]
  self.Cameras = l0.Target
end
function export:f_21_Out()
  local l0
  self = self._graph
  l0 = self[21]
  self.Cameras = l0.Target
end
function export:f_21_Removed()
  local l0
  self = self._graph
  l0 = self[21]
  self.Cameras = l0.Target
end
function export:f_33_Finished()
  local l0
  self = self._graph
  l0 = self[95]
  l0.IopID = "GarageSuicide"
  l0.IopEvent = "GarageSuicide.HornHack"
  l0:SendEvent()
end
function export:f_109_Out()
  local l0
  self = self._graph
  l0 = self[109]
  self.PhoneHacked = l0.Target
end
function export:f_109_SetFalse()
  local l0
  self = self._graph
  l0 = self[109]
  self.PhoneHacked = l0.Target
end
function export:f_109_SetFromBool()
  local l0
  self = self._graph
  l0 = self[109]
  self.PhoneHacked = l0.Target
end
function export:f_109_SetTrue()
  local l0
  self = self._graph
  l0 = self[109]
  self.PhoneHacked = l0.Target
end
function export:f_109_Toggled()
  local l0
  self = self._graph
  l0 = self[109]
  self.PhoneHacked = l0.Target
end
function export:f_106_Out()
  local l0
  self = self._graph
  self:en_104()
  l0 = self[104]
  l0:Start()
end
function export:f_54_Out_0()
  local l0
  self = self._graph
  l0 = self[55]
  l0.IopID = "GarageSuicide"
  l0.IopEvent = "GarageSuicide.DoorHack"
  l0:SendEvent()
end
function export:f_54_Out_1()
  local l0
  self = self._graph
  self:en_2()
  l0 = self[2]
  l0:Disable()
end
function export:f_6_IOPComplete()
  local l0
  self = self._graph
  l0 = self[32]
  l0.HackableEntity = "9223372047346295135"
  l0:DisableHack()
end
function export:f_40_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372067303896615"
  l0.NPC = nil
  l0._graph = self
  l0.Out = self.f_8_Out
  l0:Enable()
end
function export:f_141_Started()
  local l0
  self = self._graph
  l0 = self[172]
  l0:Start()
end
function export:f_181_Out_0()
  local l0
  self = self._graph
  l0 = self[180]
  l0.PropName = "cell_phone_01"
  l0:Enable()
end
function export:f_181_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.MainCharacter
  l0.Collisionable = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_75_CollisionsDisabled
  l0.Out = DummyFunction
  l0:DisableCollisions()
end
function export:f_105_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_142_Out_0
  l0.Out[1] = self.f_142_Out_1
  l0:In()
end
function export:f_107_CanExitSet()
  local l0
  self = self._graph
  self:en_63()
  l0 = self[63]
  l0:Enable()
end
function export:f_48_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = self[52]
  l0.CLO = "9223372046411245346"
  l0:Activate()
end
function export:f_78_Started()
  local l0
  self = self._graph
  l0 = self[77]
  l0:False()
end
function export:f_133_Out()
  local l0
  self = self._graph
  l0 = self[133]
  self.PhoneHacked = l0.Target
end
function export:f_133_SetFalse()
  local l0
  self = self._graph
  l0 = self[133]
  self.PhoneHacked = l0.Target
end
function export:f_133_SetFromBool()
  local l0
  self = self._graph
  l0 = self[133]
  self.PhoneHacked = l0.Target
end
function export:f_133_SetTrue()
  local l0
  self = self._graph
  l0 = self[133]
  self.PhoneHacked = l0.Target
end
function export:f_133_Toggled()
  local l0
  self = self._graph
  l0 = self[133]
  self.PhoneHacked = l0.Target
end
function export:f_174_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060145351298"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_141_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_174_Out_1()
  local l0
  self = self._graph
  l0 = self[169]
  l0.Entity = "9223372046411245317"
  l0.SoundId = "soundbinary/2360353049.bnk"
  l0:Play()
end
function export:f_124_HackSuccess()
  local l0
  self = self._graph
  l0 = self[125]
  l0.HackableEntity = "9223372062359598007"
  l0.ProfileLinkedToHack = 1
  l0:DisableHack()
end
function export:f_5_EnterForced()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = nil
  l0.CameraEntityList = self.Cameras
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = 0
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0.EnterSet = DummyFunction
  l0.CanExitSet = self.f_107_CanExitSet
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
function export:f_37_Out()
  local l0
  self = self._graph
  l0 = self[37]
  self.SendDoorEvents = l0.Target
end
function export:f_37_SetFalse()
  local l0
  self = self._graph
  l0 = self[37]
  self.SendDoorEvents = l0.Target
end
function export:f_37_SetFromBool()
  local l0
  self = self._graph
  l0 = self[37]
  self.SendDoorEvents = l0.Target
end
function export:f_37_SetTrue()
  local l0
  self = self._graph
  l0 = self[37]
  self.SendDoorEvents = l0.Target
end
function export:f_37_Toggled()
  local l0
  self = self._graph
  l0 = self[37]
  self.SendDoorEvents = l0.Target
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.SendDoorEvents
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_175_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_50_A_is_False()
  local l0
  self = self._graph
  l0 = self[23]
  l0.StateIndex = 0
  l0.PropEntity = "9223372046909676676"
  l0:SetStateIndex()
end
function export:f_50_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_100_Out_0
  l0.Out[1] = self.f_100_Out_1
  l0:In()
end
function export:f_134_Out()
  local l0
  self = self._graph
  l0 = self[134]
  self.IgnitionHacked = l0.Target
end
function export:f_134_SetFalse()
  local l0
  self = self._graph
  l0 = self[134]
  self.IgnitionHacked = l0.Target
end
function export:f_134_SetFromBool()
  local l0
  self = self._graph
  l0 = self[134]
  self.IgnitionHacked = l0.Target
end
function export:f_134_SetTrue()
  local l0
  self = self._graph
  l0 = self[134]
  self.IgnitionHacked = l0.Target
end
function export:f_134_Toggled()
  local l0
  self = self._graph
  l0 = self[134]
  self.IgnitionHacked = l0.Target
end
function export:f_79_Out_0()
  local l0
  self = self._graph
  self:en_7()
  l0 = self[7]
  l0:DisableHack()
end
function export:f_79_Out_1()
  local l0
  self = self._graph
  self:en_34()
  l0 = self[34]
  l0:DisableHack()
end
function export:f_176_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[177]
  l0:Input(1)
end
function export:f_138_Unloaded()
  local l0
  self = self._graph
  l0 = self[80]
  l0:Succeed()
end
function export:f_184_Out_0()
  local l0
  self = self._graph
  l0 = self[156]
  l0:Start()
end
function export:f_184_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.SendDoorEvents
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_50_A_is_True
  l0.A_is_False = self.f_50_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_81_EndOfList()
  local l0
  self = self._graph
  l0 = self[81]
  self.Horn = l0.SoundID
end
function export:f_81_Out()
  local l0
  self = self._graph
  l0 = self[81]
  self.Horn = l0.SoundID
  l0 = self[49]
  l0.Entity = "9223372046411245339"
  l0.SoundId = "soundbinary/3023493147.bnk"
  l0:Play()
end
function export:f_76_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = "9223372047346295135"
  l0.CameraEntityList = nil
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
  l0.EnterForced = self.f_5_EnterForced
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
  l0:ForceEnter()
end
function export:f_68_Out_0()
  local l0
  self = self._graph
  l0 = self[15]
  l0.HackableEntity = "9223372062359598007"
  l0.AutoDisable = 1
  l0:Enable()
end
function export:f_68_Out_2()
  local l0
  self = self._graph
  l0 = self[70]
  l0.MonitoredEvent = "GarageSuicide.RemoveSmoke"
  l0:Enable()
end
function export:f_68_Out_3()
  local l0
  self = self._graph
  l0 = self[9]
  l0.MonitoredEvent = "GarageSuicide.RemoveSmokeFinal"
  l0:Enable()
end
function export:f_68_Out_4()
  local l0
  self = self._graph
  l0 = self[14]
  l0.HackableEntity = "9223372046411398857"
  l0:Enable()
end
function export:f_68_Out_5()
  local l0
  self = self._graph
  l0 = self[96]
  l0.HackableEntity = "9223372062359598005"
  l0:Enable()
end
function export:f_68_Out_6()
  local l0
  self = self._graph
  self:en_2()
  l0 = self[2]
  l0:Enable()
end
function export:f_68_Out_7()
  local l0
  self = self._graph
  l0 = self[85]
  l0.CameraEntity = "9223372045064675520"
  l0:Enable()
end
function export:f_68_Out_8()
  local l0
  self = self._graph
  l0 = self[6]
  l0:Enable()
end
function export:f_68_Out_9()
  local l0
  self = self._graph
  l0 = self[106]
  l0:Input(0)
end
function export:f_68_Out_10()
  local l0
  self = self._graph
  l0 = self[64]
  l0.MonitoredEvent = "GarageSuicide.SFX_CarDoor_Bell"
  l0.AutoDisableOnEventOccurred = 1
  l0:Enable()
end
function export:f_68_Out_11()
  local l0
  self = self._graph
  l0 = self[143]
  l0.MonitoredEvent = "GarageSuicide.SFX_GarageDoor_PryOpen"
  l0.AutoDisableOnEventOccurred = 1
  l0:Enable()
end
function export:f_68_Out_12()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_25_Out_0
  l0.Out[1] = self.f_25_Out_1
  l0.Out[2] = self.f_25_Out_2
  l0:In()
end
function export:f_25_Out_0()
  local l0
  self = self._graph
  l0 = self[93]
  l0.CameraEntity = "9223372047346295132"
  l0:Enable()
end
function export:f_25_Out_1()
  local l0
  self = self._graph
  l0 = self[36]
  l0.CameraEntity = "9223372047346295135"
  l0:Enable()
end
function export:f_25_Out_2()
  local l0
  self = self._graph
  l0 = self[46]
  l0.CameraEntity = "9223372047259739537"
  l0:Enable()
end
function export:f_55_Out()
  local l0
  self = self._graph
  l0 = self[130]
  l0:Input(2)
end
function export:en_104()
  local l0
  l0 = self[104]
  l0.Seconds = 90
end
function export:en_2()
  local l0
  l0 = self[2]
  l0.HackableEntity = "9223372062359598003"
end
function export:en_88()
  local l0
  l0 = self[88]
  l0.HackableEntity = "9223372062359598003"
end
function export:en_65()
  local l0
  l0 = self[65]
  l0.HackableEntity = "9223372046411398857"
end
function export:en_58()
  local l0
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372044913044434"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
end
function export:en_63()
  local l0
  l0 = self[63]
  l0.CameraEntity = "9223372047346295135"
end
function export:en_34()
  local l0
  l0 = self[34]
  l0.HackableEntity = "9223372047259739537"
end
function export:en_7()
  local l0
  l0 = self[7]
  l0.HackableEntity = "9223372062359598007"
end
function export:en_73()
  local l0
  l0 = self[73]
  l0.HackableEntity = "9223372062359598005"
end
_compilerVersion = 4
