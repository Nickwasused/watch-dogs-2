export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/IOPController.lua")
  cbox:RegisterBox("domino/System/Bind_v2.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CollisionController.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/System/IndexedOutput_v2.lua")
  cbox:RegisterBox("domino/System/IOPMonitor.lua")
  cbox:RegisterBox("domino/System/LightController.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/LMALayerController.lua")
  cbox:RegisterBox("domino/System/LookAtTriggerMonitor.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/SecurityCameraMonitor.lua")
  cbox:RegisterBox("domino/System/SecurityCamController.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/SwitchOutput_v3.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
  cbox:LoadResource("soundbinary/934358356.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3973683875.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3750291630.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2918364508.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3179538684.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3358214408.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2911131890.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/96816711.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/4065522176.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/627478928.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1927502775.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3563038995.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.Out = DummyFunction
  self.IOP_Loaded = DummyFunction
  self.PlayerEntity = nil
  self.Cameras = {}
  self.MainCharacter = nil
  self.Neighbor = nil
  self.Door = "9223372048509353869"
  self.Conference_Phone = "9223372064423648279"
  self.Nudle_Toy = "9223372064440935415"
  self.Horatio = nil
  self.TV_Cam = "9223372048509353863"
  self.Characters = {}
  self.Light_Hack = "9223372064440763326"
  self.NPCRoles = {
    "LimpNudle.Brody",
    "LimpNudle.Horatio",
    "LimpNudle.Yasmine"
  }
  self.CapsuleLight_2 = "9223372048509353878"
  self.CapsuleLight_1 = "9223372048509353880"
  self.Increment = 0
  self.Camera = "9223372048509353859"
  self.Hall_Cam = "9223372048509353873"
  self.Start_Camera = "9223372048509353875"
  self.Brody = nil
  self.Speaker_Hack = "9223372058438551696"
  self.HR = nil
  self.BarkSoundEntity_0 = "9223372049125592826"
  self.Speakers_SoundEntity = "9223372049658022211"
  self.Toy_SoundEntity = "9223372049658022210"
  self.Phone_SoundEntity = "9223372049658022213"
  self.Lights_SoundEntity = "9223372049658022213"
  self.Bool = 0
  self.Tablet_HackableEntity_23 = "9223372052247297181"
  self.IOP_InvisibleGeo_0 = "9223372053748361571"
  self.Light_OnOff = 0
  self.InCam = 0
  self.Light_On_Off = "9223372057846990704"
  self.S08M010_LookAtBoard = "9223372058100386297"
  self.LookAt = 0
  self.Ambience_SoundEntity = "9223372059539414815"
  self.GarbageCam = "9223372050349538733"
  self[109] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[109]
  l0._graph = self
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_109_Out
  l0.ResetOut = DummyFunction
  self[34] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[34]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_34_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self[80] = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self[80]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_80_Unloaded
  self[23] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[23]
  l0._graph = self
  l0.Enabled = self.f_23_Enabled
  l0.Disabled = self.f_23_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[73] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[73]
  l0._graph = self
  l0.Out = self.f_73_Out
  l0.MessageCompleted = DummyFunction
  self[93] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[93]
  l0._graph = self
  l0.Out = self.f_93_Out
  l0.SetTrue = self.f_93_SetTrue
  l0.SetFalse = self.f_93_SetFalse
  l0.Toggled = self.f_93_Toggled
  l0.SetFromBool = self.f_93_SetFromBool
  self[57] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[57]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_57_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[46] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[46]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_46_OnUserInPlace
  self[26] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[26]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_26_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self[82] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[82]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_82_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self[84] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[84]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_84_Out
  self[104] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[104]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_104_Out
  self[2] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Enabled = self.f_2_Enabled
  l0.Disabled = self.f_2_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[102] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[102]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_102_Out
  l0.ResetOut = DummyFunction
  self[42] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[42]
  l0._graph = self
  l0.Out = self.f_42_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[49] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[49]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_49_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self[52] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[52]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_52_Out
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
  self[21] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[21]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_21_Deactivated
  l0.UnspawnedUser = self.f_21_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[105] = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self[105]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnStartAccessCamera = self.f_105_OnStartAccessCamera
  l0.OnEndAccessCamera = DummyFunction
  l0.OnStartExitCamera = self.f_105_OnStartExitCamera
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self[39] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[39]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = self.f_39_IOPKickOutComplete
  self[44] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[44]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_44_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self[28] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[28]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_28_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self[53] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[53]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_53_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[15] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[15]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_15_Out
  l0.ResetOut = DummyFunction
  self[35] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[35]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_35_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[63] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[63]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_63_Out
  self[19] = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self[19]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = self.f_19_IOPComplete
  l0.EventOccurred = DummyFunction
  l0.Out = DummyFunction
  self[5] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[5]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = self.f_5_StartCompleted
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self[90] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[90]
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
  self[22] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[22]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = self.f_22_HackForced
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[50] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[50]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_50_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_50_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[56] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[56]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_56_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self[18] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[18]
  l0._graph = self
  l0.Out = self.f_18_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[47] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[47]
  l0._graph = self
  l0._DynamicAnchors = {Data = 3}
  l0.Added = self.f_47_Added
  l0.Removed = self.f_47_Removed
  l0.Out = self.f_47_Out
  self[74] = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self[74]
  l0._graph = self
  l0.Loaded = self.f_74_Loaded
  l0.Unloaded = DummyFunction
  self[77] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[77]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_77_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self[91] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[91]
  l0._graph = self
  l0.Out = self.f_91_Out
  l0.SetTrue = self.f_91_SetTrue
  l0.SetFalse = self.f_91_SetFalse
  l0.Toggled = self.f_91_Toggled
  l0.SetFromBool = self.f_91_SetFromBool
  self[107] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[107]
  l0._graph = self
  l0.Out = self.f_107_Out
  l0.MessageCompleted = DummyFunction
  self[30] = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self[30]
  l0._graph = self
  l0.Enabled = self.f_30_Enabled
  l0.Disabled = self.f_30_Disabled
  l0.OnStartAccessCamera = self.f_30_OnStartAccessCamera
  l0.OnEndAccessCamera = DummyFunction
  l0.OnStartExitCamera = self.f_30_OnStartExitCamera
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self[9] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[9]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_9_PostOut
  self[12] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[12]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_12_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[60] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[60]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_60_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[10] = cbox:CreateBox("domino/System/LookAtTriggerMonitor.lua")
  l0 = self[10]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnterFOV = self.f_10_EnterFOV
  l0.LeaveFOV = DummyFunction
  l0.InsideFOV = self.f_10_InsideFOV
  l0.OutsideFOV = self.f_10_OutsideFOV
  self[59] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[59]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 3}
  l0.Out = self.f_59_Out
  self[7] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[7]
  l0._graph = self
  l0.Out = self.f_7_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[13] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[13]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_13_OnUserInPlace
  self[66] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[66]
  l0._graph = self
  l0.Out = self.f_66_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[86] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[86]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_86_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self[111] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[111]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[6] = cbox:CreateBox("domino/System/SwitchOutput_v3.lua")
  l0 = self[6]
  l0._graph = self
  l0._DynamicAnchors = {Output = 3}
  l0.Out = DummyFunction
  l0.Output[0] = DummyFunction
  l0.Output[1] = DummyFunction
  l0.Output[2] = self.f_6_Output_2
  l0.None = DummyFunction
  l0.WasReset = DummyFunction
  self[69] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[69]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_69_Deactivated
  l0.UnspawnedUser = self.f_69_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[76] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[76]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_76_Unloaded
  l0.Reseted = DummyFunction
  self[97] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[97]
  l0._graph = self
  l0.Out = self.f_97_Out
  l0.SetTrue = self.f_97_SetTrue
  l0.SetFalse = self.f_97_SetFalse
  l0.Toggled = self.f_97_Toggled
  l0.SetFromBool = self.f_97_SetFromBool
  self[8] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[8]
  l0._graph = self
  l0.Out = self.f_8_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[54] = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self[54]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_54_Disabled
  l0.OnStartAccessCamera = DummyFunction
  l0.OnEndAccessCamera = self.f_54_OnEndAccessCamera
  l0.OnStartExitCamera = DummyFunction
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self[92] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[92]
  l0._graph = self
  l0.Out = self.f_92_Out
  l0.SetTrue = self.f_92_SetTrue
  l0.SetFalse = self.f_92_SetFalse
  l0.Toggled = self.f_92_Toggled
  l0.SetFromBool = self.f_92_SetFromBool
  self[81] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[81]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_81_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[78] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[78]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 3}
  l0.Out = self.f_78_Out
  self[68] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[68]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_68_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_68_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[14] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[14]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_14_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self[41] = cbox:CreateBox("domino/System/IndexedOutput_v2.lua")
  l0 = self[41]
  l0._graph = self
  l0._DynamicAnchors = {Output = 6}
  l0.Output[0] = self.f_41_Output_0
  l0.Output[1] = self.f_41_Output_1
  l0.Output[2] = self.f_41_Output_2
  l0.Output[3] = self.f_41_Output_3
  l0.Output[4] = self.f_41_Output_4
  l0.Output[5] = self.f_41_Output_5
  l0.OutOfRange = self.f_41_OutOfRange
  self[31] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[31]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_31_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[55] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[55]
  l0._graph = self
  l0.Enabled = self.f_55_Enabled
  l0.Disabled = self.f_55_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = self.f_55_ProfilingEnabled
  l0.ProfilingDisabled = self.f_55_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[71] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[71]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_71_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[17] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[17]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_17_Started
  l0.Finished = DummyFunction
  self[20] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[20]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_20_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_20_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[4] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[4]
  l0._graph = self
  l0.Out = self.f_4_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[58] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[58]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_58_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[33] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[33]
  l0._graph = self
  l0.Out = self.f_33_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[103] = cbox:CreateBox("domino/System/SwitchOutput_v3.lua")
  l0 = self[103]
  l0._graph = self
  l0._DynamicAnchors = {Output = 2}
  l0.Out = DummyFunction
  l0.Output[0] = DummyFunction
  l0.Output[1] = self.f_103_Output_1
  l0.None = DummyFunction
  l0.WasReset = DummyFunction
  self[29] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[29]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_29_Out
  self[43] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[43]
  l0._graph = self
  l0.Out = self.f_43_Out
  l0.Started = self.f_43_Started
  l0.Stopped = self.f_43_Stopped
  l0.Paused = self.f_43_Paused
  l0.Resumed = self.f_43_Resumed
  l0.TimeElapsed = self.f_43_TimeElapsed
  l0.LoopingEnded = self.f_43_LoopingEnded
  l0.GotTime = DummyFunction
  self[3] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[3]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_3_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_3_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[37] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[37]
  l0._graph = self
  l0.Out = self.f_37_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[67] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[67]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_67_Deactivated
  l0.UnspawnedUser = self.f_67_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[24] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[24]
  l0._graph = self
  l0.Enabled = self.f_24_Enabled
  l0.Disabled = self.f_24_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[64] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[64]
  l0._graph = self
  l0.Loaded = self.f_64_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[65] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[65]
  l0._graph = self
  l0.Out = self.f_65_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[25] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[25]
  l0._graph = self
  l0.Out = self.f_25_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[61] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[61]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_61_OnUserInPlace
  self[51] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[51]
  l0._graph = self
  l0.Out = self.f_51_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[88] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[88]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self[48] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[48]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_48_Out
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:In()
  local l0
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_36_Out
  l0:In()
end
function export:f_109_Out()
  local l0
  self = self._graph
  l0 = self[111]
  l0.SoundId = "soundbinary/96816711.bnk"
  l0.UseFacial = 0
  l0:Start()
end
function export:f_85_Bound()
  local l0
  self = self._graph
  l0 = self[42]
  l0.Entity = self.Lights_SoundEntity
  l0.SoundId = "soundbinary/4065522176.bnk"
  l0:Play()
end
function export:f_34_SendEventCompleted()
  local l0
  self = self._graph
  l0 = self[73]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective050",
    item = "Objective4",
    id = "359140"
  }
  l0.ShowPreviousObjectiveComplete = 0
  l0:ShowNewObjective()
end
function export:f_80_Unloaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_75_Out_0
  l0.Out[1] = self.f_75_Out_1
  l0:In()
end
function export:f_23_Disabled()
  local l0
  self = self._graph
  self:en_68()
  l0 = self[68]
  l0:Disable()
end
function export:f_23_Enabled()
  local l0
  self = self._graph
  self:en_68()
  l0 = self[68]
  l0:Enable()
end
function export:f_73_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_62_Out_0
  l0.Out[1] = self.f_62_Out_1
  l0.Out[2] = self.f_62_Out_2
  l0.Out[3] = self.f_62_Out_3
  l0:In()
end
function export:f_93_Out()
  local l0
  self = self._graph
  l0 = self[93]
  self.InCam = l0.Target
end
function export:f_93_SetFalse()
  local l0
  self = self._graph
  l0 = self[93]
  self.InCam = l0.Target
end
function export:f_93_SetFromBool()
  local l0
  self = self._graph
  l0 = self[93]
  self.InCam = l0.Target
end
function export:f_93_SetTrue()
  local l0
  self = self._graph
  l0 = self[93]
  self.InCam = l0.Target
end
function export:f_93_Toggled()
  local l0
  self = self._graph
  l0 = self[93]
  self.InCam = l0.Target
end
function export:f_108_DisconnectedAnimationHidden()
  self = self._graph
  self:Out()
end
function export:f_57_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[9]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_46_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[46]
  self.Brody = l0.UserID
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.Brody
  l0.Collisionable = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_11_CollisionsDisabled
  l0.Out = DummyFunction
  l0:DisableCollisions()
end
function export:f_26_SendEventCompleted()
  local l0
  self = self._graph
  l0 = self[43]
  l0.Seconds = 0.5
  l0.Loop = 1
  l0.nbLoop = 7
  l0:Start()
end
function export:f_82_SendEventCompleted()
  local l0
  self = self._graph
  l0 = self[4]
  l0.Entity = self.Speakers_SoundEntity
  l0.SoundId = "soundbinary/3750291630.bnk"
  l0:Play()
end
function export:f_84_Out()
  local l0
  self = self._graph
  l0 = self[107]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective050",
    item = "SubObjective2",
    id = "359137"
  }
  l0:ShowNewObjective()
end
function export:f_36_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[80]
  l0.LMALayerName = self.NudleUpperLMA
  l0:Unload()
end
function export:f_27_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = self[78]
  l0:Condition(0)
end
function export:f_89_Hidden()
  local l0
  self = self._graph
  l0 = self[35]
  l0:Start()
end
function export:f_104_Out()
  local l0
  self = self._graph
  l0 = self[86]
  l0.IopID = "LimpNudle"
  l0.IopEvent = "LimpNudle.PlayerIsLooking"
  l0:SendEvent()
end
function export:f_2_Disabled()
  local l0
  self = self._graph
  self:en_20()
  l0 = self[20]
  l0:Disable()
end
function export:f_2_Enabled()
  local l0
  self = self._graph
  self:en_20()
  l0 = self[20]
  l0:Enable()
end
function export:f_102_Out()
  local l0
  self = self._graph
  self:en_10()
  l0 = self[10]
  l0:Enable()
end
function export:f_42_Out()
  local l0
  self = self._graph
  l0 = self[25]
  l0.Entity = self.Ambience_SoundEntity
  l0.SoundId = "soundbinary/1927502775.bnk"
  l0:Play()
end
function export:f_49_SendEventCompleted()
  local l0
  self = self._graph
  l0 = self[92]
  l0:True()
end
function export:f_75_Out_0()
  local l0
  self = self._graph
  l0 = self[64]
  l0.LayerName = "S08M010_IOP"
  l0:Load()
end
function export:f_75_Out_1()
  local l0
  self = self._graph
  l0 = self[74]
  l0.LMALayerName = self.NudleLowerLMA
  l0:Load()
end
function export:f_52_Out()
  local l0
  self = self._graph
  self:en_55()
  l0 = self[55]
  l0:DisableHack()
end
function export:f_72_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_106_Out_0
  l0.Out[1] = self.f_106_Out_1
  l0:In()
end
function export:f_21_Deactivated()
  local l0
  self = self._graph
  l0 = self[59]
  l0:Condition(1)
end
function export:f_21_UnspawnedUser()
  local l0
  self = self._graph
  self:en_21()
  l0 = self[21]
  l0:Deactivate()
end
function export:f_105_OnStartAccessCamera()
  local l0
  self = self._graph
  self:en_90()
  l0 = self[90]
  l0:DisableProfiling()
end
function export:f_105_OnStartExitCamera()
  local l0
  self = self._graph
  self:en_90()
  l0 = self[90]
  l0:EnableProfiling()
end
function export:f_39_IOPKickOutComplete()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_32_Out_0
  l0.Out[1] = self.f_32_Out_1
  l0.Out[2] = self.f_32_Out_2
  l0:In()
end
function export:f_98_Out()
  local l0
  self = self._graph
  l0 = self[102]
  l0:In(0)
end
function export:f_32_Out_0()
  local l0
  self = self._graph
  self:en_67()
  l0 = self[67]
  l0:UnspawnUser()
end
function export:f_32_Out_1()
  local l0
  self = self._graph
  self:en_21()
  l0 = self[21]
  l0:UnspawnUser()
end
function export:f_32_Out_2()
  local l0
  self = self._graph
  self:en_69()
  l0 = self[69]
  l0:UnspawnUser()
end
function export:f_44_SendEventCompleted()
  local l0
  self = self._graph
  l0 = self[29]
  l0:Input(1)
end
function export:f_28_SendEventCompleted()
  local l0
  self = self._graph
  l0 = self[29]
  l0:Input(0)
end
function export:f_53_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[14]
  l0.IopID = "LimpNudle"
  l0.IopEvent = "LimpNudle.Hack2"
  l0:SendEvent()
end
function export:f_15_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_110_Out_0
  l0.Out[1] = self.f_110_Out_1
  l0:In()
end
function export:f_35_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[44]
  l0.IopID = "LimpNudle"
  l0.IopEvent = "LimpNudle.Hack3"
  l0:SendEvent()
end
function export:f_101_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_98_Out
  l0:In()
end
function export:f_63_Out()
  local l0
  self = self._graph
  l0 = self[33]
  l0.Entity = self.Lights_SoundEntity
  l0.SoundId = "soundbinary/3179538684.bnk"
  l0:Play()
end
function export:f_19_IOPComplete()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_96_Out_0
  l0.Out[1] = self.f_96_Out_1
  l0:In()
end
function export:f_5_StartCompleted()
  local l0
  self = self._graph
  l0 = self[72]
  l0:Start()
end
function export:f_40_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_95_Out
  l0:In()
end
function export:f_22_HackForced()
  local l0
  self = self._graph
  l0 = self[39]
  l0.PlayerEntity = self.PlayerEntity
  l0:TriggerIOPDisconnectScreenAndKickOut()
end
function export:f_50_Disabled()
  local l0
  self = self._graph
  l0 = self[71]
  l0:Start()
end
function export:f_50_HackSuccess()
  local l0
  self = self._graph
  self:en_24()
  l0 = self[24]
  l0:DisableHack()
end
function export:f_56_SendEventCompleted()
  local l0
  self = self._graph
  l0 = self[7]
  l0.Entity = self.Toy_SoundEntity
  l0.SoundId = "soundbinary/3563038995.bnk"
  l0:Play()
end
function export:f_18_Out()
  local l0
  self = self._graph
  l0 = self[53]
  l0:Start()
end
function export:f_83_Out()
  local l0
  self = self._graph
  l0 = self[84]
  l0:Condition(1)
end
function export:f_100_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Light_OnOff
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_40_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_100_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.LookAt
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_101_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_11_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = self[78]
  l0:Condition(2)
end
function export:f_47_Added()
  local l0
  self = self._graph
  l0 = self[47]
  self.Characters = l0.Target
  l0 = self[5]
  l0.IopID = "LimpNudle"
  l0.PlayerEntity = self.PlayerEntity
  l0.NpcEntityList = self.Characters
  l0.IopRoleList = self.NPCRoles
  l0.OffscreenDialogPoint = self.BarkSoundEntity_0
  l0:Start()
end
function export:f_47_Out()
  local l0
  self = self._graph
  l0 = self[47]
  self.Characters = l0.Target
end
function export:f_47_Removed()
  local l0
  self = self._graph
  l0 = self[47]
  self.Characters = l0.Target
end
function export:f_74_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_83_Out
  l0:In()
end
function export:f_77_SendEventCompleted()
  local l0
  self = self._graph
  l0 = self[93]
  l0:False()
end
function export:f_91_Out()
  local l0
  self = self._graph
  l0 = self[91]
  self.Light_OnOff = l0.Target
end
function export:f_91_SetFalse()
  local l0
  self = self._graph
  l0 = self[91]
  self.Light_OnOff = l0.Target
end
function export:f_91_SetFromBool()
  local l0
  self = self._graph
  l0 = self[91]
  self.Light_OnOff = l0.Target
end
function export:f_91_SetTrue()
  local l0
  self = self._graph
  l0 = self[91]
  self.Light_OnOff = l0.Target
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.InCam
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_94_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_91_Toggled()
  local l0
  self = self._graph
  l0 = self[91]
  self.Light_OnOff = l0.Target
end
function export:f_107_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = nil
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
  l0.EnterForced = DummyFunction
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = self.f_108_DisconnectedAnimationHidden
  l0.FriendlySet = DummyFunction
  l0:HideDisconnectedAnimation()
end
function export:f_45_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = self[78]
  l0:Condition(1)
end
function export:f_30_Disabled()
  local l0
  self = self._graph
  self:en_105()
  l0 = self[105]
  l0:Disable()
end
function export:f_30_Enabled()
  local l0
  self = self._graph
  self:en_1()
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0:ForceEnter()
end
function export:f_30_OnStartAccessCamera()
  local l0
  self = self._graph
  l0 = self[49]
  l0.IopID = "LimpNudle"
  l0.IopEvent = "LimpNudle.CameraIn"
  l0:SendEvent()
end
function export:f_30_OnStartExitCamera()
  local l0
  self = self._graph
  l0 = self[77]
  l0.IopID = "LimpNudle"
  l0.IopEvent = "LimpNudle.CameraOut"
  l0:SendEvent()
end
function export:f_9_PostOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = self.TV_Cam
  l0.CameraEntityList = nil
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = 0
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0.EnterSet = DummyFunction
  l0.CanExitSet = self.f_38_CanExitSet
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
function export:f_12_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[91]
  l0:True()
end
function export:f_60_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[56]
  l0.IopID = "LimpNudle"
  l0.IopEvent = "LimpNudle.StartRobotAnim"
  l0:SendEvent()
end
function export:f_10_EnterFOV()
  local l0
  self = self._graph
  l0 = self[104]
  l0:Input(0)
end
function export:f_10_InsideFOV()
  local l0
  self = self._graph
  l0 = self[104]
  l0:Input(1)
end
function export:f_10_OutsideFOV()
  local l0
  self = self._graph
  l0 = self[88]
  l0.IopID = "LimpNudle"
  l0.IopEvent = "LimpNudle.PlayerIsNotLooking"
  l0:SendEvent()
end
function export:f_59_Out()
  local l0
  self = self._graph
  l0 = self[37]
  l0.Entity = self.Ambience_SoundEntity
  l0.SoundId = "soundbinary/934358356.bnk"
  l0:Play()
end
function export:f_7_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.Nudle_Toy
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_89_Hidden
  l0.Out = DummyFunction
  l0:Hide()
end
function export:f_87_Out()
  local l0
  self = self._graph
  l0 = self[97]
  l0:True()
end
function export:f_13_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[13]
  self.HR = l0.UserID
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.HR
  l0.Collisionable = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_45_CollisionsDisabled
  l0.Out = DummyFunction
  l0:DisableCollisions()
end
function export:f_66_Out()
  local l0
  self = self._graph
  l0 = self[12]
  l0.Seconds = 14
  l0:Start()
end
function export:f_86_SendEventCompleted()
  local l0
  self = self._graph
  self:en_10()
  l0 = self[10]
  l0:Disable()
end
function export:f_62_Out_0()
  local l0
  self = self._graph
  self:en_24()
  l0 = self[24]
  l0:EnableHack()
end
function export:f_62_Out_1()
  local l0
  self = self._graph
  self:en_2()
  l0 = self[2]
  l0:EnableHack()
end
function export:f_62_Out_2()
  local l0
  self = self._graph
  self:en_23()
  l0 = self[23]
  l0:EnableHack()
end
function export:f_62_Out_3()
  local l0
  self = self._graph
  l0 = self[52]
  l0:Input(1)
end
function export:f_6_Output_2()
  local l0
  self = self._graph
  l0 = self[81]
  l0.Seconds = 13
  l0:Start()
end
function export:f_69_Deactivated()
  local l0
  self = self._graph
  l0 = self[59]
  l0:Condition(2)
end
function export:f_69_UnspawnedUser()
  local l0
  self = self._graph
  self:en_69()
  l0 = self[69]
  l0:Deactivate()
end
function export:f_76_Unloaded()
  local l0
  self = self._graph
  l0 = self[84]
  l0:Condition(0)
end
function export:f_38_CanExitSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  l0.Parent = self.Horatio
  l0.Child = self.IOP_InvisibleGeo_0
  l0.BoneName = "Spine2"
  l0.BoneNameStr = nil
  l0.RemoveOffset = nil
  l0._graph = self
  l0.Bound = self.f_85_Bound
  l0.UnBound = DummyFunction
  l0.Out = DummyFunction
  l0:Bind()
end
function export:f_97_Out()
  local l0
  self = self._graph
  l0 = self[97]
  self.LookAt = l0.Target
end
function export:f_97_SetFalse()
  local l0
  self = self._graph
  l0 = self[97]
  self.LookAt = l0.Target
end
function export:f_97_SetFromBool()
  local l0
  self = self._graph
  l0 = self[97]
  self.LookAt = l0.Target
end
function export:f_97_SetTrue()
  local l0
  self = self._graph
  l0 = self[97]
  self.LookAt = l0.Target
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.InCam
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_99_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_97_Toggled()
  local l0
  self = self._graph
  l0 = self[97]
  self.LookAt = l0.Target
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = self[31]
  l0:Start()
end
function export:f_54_Disabled()
  local l0
  self = self._graph
  l0 = self[57]
  l0.Seconds = 0.5
  l0:Start()
end
function export:f_54_OnEndAccessCamera()
  local l0
  self = self._graph
  self:en_54()
  l0 = self[54]
  l0:Disable()
end
function export:f_96_Out_0()
  local l0
  self = self._graph
  self:en_30()
  l0 = self[30]
  l0:Disable()
end
function export:f_96_Out_1()
  local l0
  self = self._graph
  l0 = self[22]
  l0.HackableEntity = self.Tablet_HackableEntity_23
  l0:ForceHack()
end
function export:f_92_Out()
  local l0
  self = self._graph
  l0 = self[92]
  self.InCam = l0.Target
end
function export:f_92_SetFalse()
  local l0
  self = self._graph
  l0 = self[92]
  self.InCam = l0.Target
end
function export:f_92_SetFromBool()
  local l0
  self = self._graph
  l0 = self[92]
  self.InCam = l0.Target
end
function export:f_92_SetTrue()
  local l0
  self = self._graph
  l0 = self[92]
  self.InCam = l0.Target
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_100_Out_0
  l0.Out[1] = self.f_100_Out_1
  l0:In()
end
function export:f_92_Toggled()
  local l0
  self = self._graph
  l0 = self[92]
  self.InCam = l0.Target
end
function export:f_81_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[82]
  l0.IopID = "LimpNudle"
  l0.IopEvent = "LimpNudle.EndRobotAnim"
  l0:SendEvent()
end
function export:f_78_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_70_Out_0
  l0.Out[1] = self.f_70_Out_1
  l0:In()
end
function export:f_68_Disabled()
  local l0
  self = self._graph
  l0 = self[58]
  l0:Start()
end
function export:f_68_HackSuccess()
  local l0
  self = self._graph
  self:en_23()
  l0 = self[23]
  l0:DisableHack()
end
function export:f_94_A_is_True()
  local l0
  self = self._graph
  l0 = self[15]
  l0:In(1)
end
function export:f_14_SendEventCompleted()
  local l0
  self = self._graph
  l0 = self[29]
  l0:Input(2)
end
function export:f_41_OutOfRange()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.HR
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = self.f_87_Out
  l0:Show()
end
function export:f_41_Output_0()
  local l0
  self = self._graph
  l0 = self[63]
  l0:Input(0)
end
function export:f_41_Output_1()
  local l0
  self = self._graph
  l0 = self[48]
  l0:Input(0)
end
function export:f_41_Output_2()
  local l0
  self = self._graph
  l0 = self[63]
  l0:Input(1)
end
function export:f_41_Output_3()
  local l0
  self = self._graph
  l0 = self[48]
  l0:Input(1)
end
function export:f_41_Output_4()
  local l0
  self = self._graph
  l0 = self[63]
  l0:Input(2)
end
function export:f_41_Output_5()
  local l0
  self = self._graph
  l0 = self[48]
  l0:Input(2)
end
function export:f_31_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[28]
  l0.IopID = "LimpNudle"
  l0.IopEvent = "LimpNudle.Hack1"
  l0:SendEvent()
end
function export:f_55_Disabled()
  local l0
  self = self._graph
  self:en_55()
  l0 = self[55]
  l0:DisableProfiling()
end
function export:f_55_Enabled()
  local l0
  self = self._graph
  self:en_55()
  l0 = self[55]
  l0:EnableProfiling()
end
function export:f_55_ProfilingDisabled()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:Disable()
end
function export:f_55_ProfilingEnabled()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:Enable()
end
function export:f_71_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[8]
  l0.Entity = self.Speakers_SoundEntity
  l0.SoundId = "soundbinary/2918364508.bnk"
  l0:Play()
end
function export:f_17_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_79_Out_0
  l0.Out[1] = self.f_79_Out_1
  l0.Out[2] = self.f_79_Out_2
  l0:In()
end
function export:f_20_Disabled()
  local l0
  self = self._graph
  l0 = self[60]
  l0:Start()
end
function export:f_20_HackSuccess()
  local l0
  self = self._graph
  self:en_2()
  l0 = self[2]
  l0:DisableHack()
end
function export:f_4_Out()
  local l0
  self = self._graph
  l0 = self[65]
  l0.Entity = self.Phone_SoundEntity
  l0.SoundId = "soundbinary/2911131890.bnk"
  l0:Play()
end
function export:f_58_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[18]
  l0.Entity = self.Phone_SoundEntity
  l0.SoundId = "soundbinary/3358214408.bnk"
  l0:Play()
end
function export:f_33_Out()
  local l0
  self = self._graph
  self:en_16()
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0:Disable()
end
function export:f_103_Output_1()
  local l0
  self = self._graph
  l0 = self[26]
  l0.IopID = "LimpNudle"
  l0.IopEvent = "LimpNudle.LightSwitch"
  l0:SendEvent()
end
function export:f_29_Out()
  local l0
  self = self._graph
  l0 = self[6]
  l0:In()
end
function export:f_70_Out_0()
  local l0
  self = self._graph
  l0 = self[47]
  l0.Input = self.Characters
  l0.Data[0] = self.Brody
  l0.Data[1] = self.Horatio
  l0.Data[2] = self.HR
  l0:Add()
end
function export:f_70_Out_1()
  local l0
  self = self._graph
  l0 = self[19]
  l0:Enable()
end
function export:f_43_LoopingEnded()
  local l0, l1
  self = self._graph
  l0 = self[43]
  l1 = self[41]
  l1.Index = l0.currentLoop
end
function export:f_43_Out()
  local l0, l1
  self = self._graph
  l0 = self[43]
  l1 = self[41]
  l1.Index = l0.currentLoop
end
function export:f_43_Paused()
  local l0, l1
  self = self._graph
  l0 = self[43]
  l1 = self[41]
  l1.Index = l0.currentLoop
end
function export:f_43_Resumed()
  local l0, l1
  self = self._graph
  l0 = self[43]
  l1 = self[41]
  l1.Index = l0.currentLoop
end
function export:f_43_Started()
  local l0, l1
  self = self._graph
  l0 = self[43]
  l1 = self[41]
  l1.Index = l0.currentLoop
end
function export:f_43_Stopped()
  local l0, l1
  self = self._graph
  l0 = self[43]
  l1 = self[41]
  l1.Index = l0.currentLoop
end
function export:f_43_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self[43]
  l1 = self[41]
  l1.Index = l0.currentLoop
  l1:In()
end
function export:f_3_Disabled()
  local l0
  self = self._graph
  l0 = self[103]
  l0:In()
end
function export:f_3_HackSuccess()
  local l0
  self = self._graph
  l0 = self[52]
  l0:Input(0)
end
function export:f_99_A_is_True()
  local l0
  self = self._graph
  l0 = self[102]
  l0:In(1)
end
function export:f_37_Out()
  local l0
  self = self._graph
  l0 = self[76]
  l0.LayerName = "S08M010_IOP"
  l0:Unload()
end
function export:f_67_Deactivated()
  local l0
  self = self._graph
  l0 = self[59]
  l0:Condition(0)
end
function export:f_67_UnspawnedUser()
  local l0
  self = self._graph
  self:en_67()
  l0 = self[67]
  l0:Deactivate()
end
function export:f_24_Disabled()
  local l0
  self = self._graph
  self:en_50()
  l0 = self[50]
  l0:Disable()
end
function export:f_24_Enabled()
  local l0
  self = self._graph
  self:en_50()
  l0 = self[50]
  l0:Enable()
end
function export:f_64_Loaded()
  local l0
  self = self._graph
  l0 = self[17]
  l0.SoundId = "soundbinary/3973683875.bnk"
  l0:Play()
end
function export:f_65_Out()
  local l0
  self = self._graph
  l0 = self[66]
  l0.Entity = self.Toy_SoundEntity
  l0.SoundId = "soundbinary/627478928.bnk"
  l0:Play()
end
function export:f_79_Out_0()
  local l0
  self = self._graph
  l0 = self[61]
  l0.CLO = "9223372048509353883"
  l0:Activate()
end
function export:f_79_Out_1()
  local l0
  self = self._graph
  l0 = self[13]
  l0.CLO = "9223372048509353876"
  l0:Activate()
end
function export:f_79_Out_2()
  local l0
  self = self._graph
  l0 = self[46]
  l0.CLO = "9223372048509353884"
  l0:Activate()
end
function export:f_25_Out()
  local l0
  self = self._graph
  l0 = self[34]
  l0.IopID = "LimpNudle"
  l0.IopEvent = "LimpNudle.Intro"
  l0:SendEvent()
end
function export:f_110_Out_0()
  local l0
  self = self._graph
  self:en_55()
  l0 = self[55]
  l0:EnableHack()
end
function export:f_110_Out_1()
  local l0
  self = self._graph
  l0 = self[109]
  l0:In(0)
end
function export:f_61_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[61]
  self.Horatio = l0.UserID
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.Horatio
  l0.Collisionable = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_27_CollisionsDisabled
  l0.Out = DummyFunction
  l0:DisableCollisions()
end
function export:f_51_Out()
  local l0
  self = self._graph
  self:en_16()
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0:Enable()
end
function export:f_95_Out()
  local l0
  self = self._graph
  l0 = self[15]
  l0:In(0)
end
function export:f_106_Out_0()
  local l0
  self = self._graph
  self:en_30()
  l0 = self[30]
  l0:Enable()
end
function export:f_106_Out_1()
  local l0
  self = self._graph
  self:en_105()
  l0 = self[105]
  l0:Enable()
end
function export:f_1_CanExitSet()
  local l0
  self = self._graph
  self:en_54()
  l0 = self[54]
  l0:Enable()
end
function export:f_1_EnterForced()
  local l0
  self = self._graph
  self:en_1()
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0:SetCanExit()
end
function export:f_48_Out()
  local l0
  self = self._graph
  l0 = self[51]
  l0.Entity = self.Lights_SoundEntity
  l0.SoundId = "soundbinary/4065522176.bnk"
  l0:Play()
end
function export:en_23()
  local l0
  l0 = self[23]
  l0.HackableEntity = self.Conference_Phone
end
function export:en_2()
  local l0
  l0 = self[2]
  l0.HackableEntity = self.Nudle_Toy
end
function export:en_21()
  local l0
  l0 = self[21]
  l0.CLO = "9223372048509353884"
  l0.User = self.Brody
end
function export:en_105()
  local l0
  l0 = self[105]
  l0.CameraEntity = self.TV_Cam
end
function export:en_90()
  local l0
  l0 = self[90]
  l0.HackableEntity = self.Horatio
end
function export:en_50()
  local l0
  l0 = self[50]
  l0.HackableEntity = self.Speaker_Hack
end
function export:en_30()
  local l0
  l0 = self[30]
  l0.CameraEntity = self.Camera
end
function export:en_10()
  local l0
  l0 = self[10]
  l0.Trigger = "9223372058438550650"
end
function export:en_69()
  local l0
  l0 = self[69]
  l0.CLO = "9223372048509353876"
  l0.User = self.HR
end
function export:en_54()
  local l0
  l0 = self[54]
  l0.CameraEntity = self.Camera
end
function export:en_68()
  local l0
  l0 = self[68]
  l0.HackableEntity = self.Conference_Phone
end
function export:en_55()
  local l0
  l0 = self[55]
  l0.HackableEntity = self.Light_Hack
end
function export:en_20()
  local l0
  l0 = self[20]
  l0.HackableEntity = self.Nudle_Toy
end
function export:en_3()
  local l0
  l0 = self[3]
  l0.HackableEntity = self.Light_Hack
end
function export:en_67()
  local l0
  l0 = self[67]
  l0.CLO = "9223372048509353883"
  l0.User = self.Horatio
end
function export:en_24()
  local l0
  l0 = self[24]
  l0.HackableEntity = self.Speaker_Hack
end
function export:en_16()
  local l0
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = self.Light_On_Off
  l0.SetEnabled = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
end
function export:en_1()
  local l0
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = self.Camera
  l0.CameraEntityList = nil
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = 0
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0.EnterSet = DummyFunction
  l0.CanExitSet = self.f_1_CanExitSet
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = self.f_1_EnterForced
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
end
function export:Out()
end
function export:IOP_Loaded()
end
_compilerVersion = 4
