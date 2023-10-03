export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/IOPController.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CollisionController.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/System/CompareIntegers_v2.lua")
  cbox:RegisterBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/System/IntegerArithmetics.lua")
  cbox:RegisterBox("domino/Library/common/IOP.IOP_CleanUp.lua")
  cbox:RegisterBox("domino/Library/common/IOP.IOP_StartUp.lua")
  cbox:RegisterBox("domino/System/IOPMonitor.lua")
  cbox:RegisterBox("domino/System/LogicGate_v2.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/RewardComponentController_V3.lua")
  cbox:RegisterBox("domino/System/SecurityCameraMonitor.lua")
  cbox:RegisterBox("domino/System/SecurityCamController.lua")
  cbox:RegisterBox("domino/System/SendDamage.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/SwitchOutput_v3.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
  cbox:LoadResource("soundbinary/718819757.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3973683875.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1305362854.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3249668497.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.Cameras = {}
  self.MainCharacter = nil
  self.Neighbor = nil
  self.Whistleblower_CLO = "9223372049907832250"
  self.Phone_Hack = "9223372065309756202"
  self.Laptop_Hack = "9223372058737038432"
  self.Download_Time = 20
  self.Whistleblower_CLO_Sitting = "9223372055533122266"
  self.Phone_SoundEntity = "9223372055533122256"
  self.Switch_Phone = 0
  self.Whistleblower = nil
  self.Security_Camera = "9223372056705084940"
  self.Whistleblower_Alive = 0
  self.PostJump = nil
  self.During_Call = 0
  self.BadCalls = 0
  self[62] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[62]
  l0._graph = self
  l0.Out = self.f_62_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[56] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[56]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_56_RewardsExecuted
  self[52] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[52]
  l0._graph = self
  l0.StartCommunicationOut = self.f_52_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_52_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[65] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[65]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_65_Out
  self[43] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[43]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_43_OnUserInPlace
  self[21] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[21]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_21_Out
  self[29] = cbox:CreateBox("domino/System/SendDamage.lua")
  l0 = self[29]
  l0._graph = self
  l0.DamageSent = self.f_29_DamageSent
  self[85] = cbox:CreateBox("domino/System/LogicGate_v2.lua")
  l0 = self[85]
  l0._graph = self
  l0.Out = self.f_85_Out
  l0.Opened = DummyFunction
  l0.Closed = DummyFunction
  self[79] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[79]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_79_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[81] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[81]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_81_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[41] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[41]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = DummyFunction
  self[33] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[33]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_33_OnUserInPlace
  self[49] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[49]
  l0._graph = self
  l0.Out = DummyFunction
  l0.MessageCompleted = self.f_49_MessageCompleted
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
  self[60] = cbox:CreateBox("domino/System/SwitchOutput_v3.lua")
  l0 = self[60]
  l0._graph = self
  l0._DynamicAnchors = {Output = 4}
  l0.Out = DummyFunction
  l0.Output[0] = self.f_60_Output_0
  l0.Output[1] = self.f_60_Output_1
  l0.Output[2] = DummyFunction
  l0.Output[3] = self.f_60_Output_3
  l0.None = DummyFunction
  l0.WasReset = DummyFunction
  self[36] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[36]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_36_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[40] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[40]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_40_OnUserInPlace
  self[45] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[45]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_45_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[50] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[50]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_50_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[37] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[37]
  l0._graph = self
  l0._DynamicAnchors = {Input = 4}
  l0.Out = self.f_37_Out
  self[46] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[46]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_46_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[19] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[19]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_19_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_19_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[38] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[38]
  l0._graph = self
  l0.Enabled = self.f_38_Enabled
  l0.Disabled = self.f_38_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = self.f_38_ProfilingEnabled
  l0.ProfilingDisabled = self.f_38_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[48] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[48]
  l0._graph = self
  l0.Out = self.f_48_Out
  l0.SetTrue = self.f_48_SetTrue
  l0.SetFalse = self.f_48_SetFalse
  l0.Toggled = self.f_48_Toggled
  l0.SetFromBool = self.f_48_SetFromBool
  self[2] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[2]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_2_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self[78] = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self[78]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_78_Disabled
  l0.OnStartAccessCamera = DummyFunction
  l0.OnEndAccessCamera = self.f_78_OnEndAccessCamera
  l0.OnStartExitCamera = DummyFunction
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self[42] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[42]
  l0._graph = self
  self[70] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[70]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_70_Out
  l0.ResetOut = DummyFunction
  self[74] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[74]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_74_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[66] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[66]
  l0._graph = self
  l0.Out = self.f_66_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[63] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[63]
  l0._graph = self
  l0.Out = self.f_63_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[11] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[11]
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
  self[24] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[24]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_24_OnUserInPlace
  self[68] = cbox:CreateBox("domino/System/SwitchOutput_v3.lua")
  l0 = self[68]
  l0._graph = self
  l0._DynamicAnchors = {Output = 4}
  l0.Out = DummyFunction
  l0.Output[0] = self.f_68_Output_0
  l0.Output[1] = self.f_68_Output_1
  l0.Output[2] = self.f_68_Output_2
  l0.Output[3] = DummyFunction
  l0.None = DummyFunction
  l0.WasReset = DummyFunction
  self[8] = cbox:CreateBox("domino/Library/common/IOP.IOP_CleanUp.lua")
  l0 = self[8]
  l0._graph = self
  l0.Completed = self.f_8_Completed
  l0.DisconnectedAnimationPlayed = self.f_8_DisconnectedAnimationPlayed
  l0.Out = DummyFunction
  self[13] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[13]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = self.f_13_StartCompleted
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self[6] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[6]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_6_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self[72] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[72]
  l0._graph = self
  l0.Out = self.f_72_Out
  l0.SetTrue = self.f_72_SetTrue
  l0.SetFalse = self.f_72_SetFalse
  l0.Toggled = self.f_72_Toggled
  l0.SetFromBool = self.f_72_SetFromBool
  self[27] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[27]
  l0._graph = self
  l0.Enabled = self.f_27_Enabled
  l0.Disabled = self.f_27_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_27_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[77] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[77]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_77_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[51] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[51]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_51_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[10] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[10]
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
  self[55] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[55]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[54] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[54]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_54_OnUserInPlace
  self[5] = cbox:CreateBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  l0 = self[5]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.WasReset = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = DummyFunction
  self[12] = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self[12]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = self.f_12_ActivateHackables
  l0.DeactivateHackables = self.f_12_DeactivateHackables
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = DummyFunction
  l0.Out = DummyFunction
  self[16] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[16]
  l0._graph = self
  l0.StartCommunicationOut = self.f_16_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_16_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[44] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[44]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_44_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[20] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[20]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_20_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[14] = cbox:CreateBox("domino/Library/common/IOP.IOP_StartUp.lua")
  l0 = self[14]
  l0._graph = self
  l0.Out = self.f_14_Out
  self[30] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[30]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_30_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self[76] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[76]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_76_Out
  self[53] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[53]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_53_Out
  self[7] = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self[7]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = self.f_7_IOPComplete
  l0.EventOccurred = DummyFunction
  l0.Out = DummyFunction
  self[82] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[82]
  l0._graph = self
  l0.Enabled = self.f_82_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[31] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[31]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_31_OnUserInPlace
  self[23] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[23]
  l0._graph = self
  l0.Enabled = self.f_23_Enabled
  l0.Disabled = self.f_23_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_23_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[15] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[15]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_15_Unloaded
  l0.Reseted = DummyFunction
  self[18] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[18]
  l0._graph = self
  l0.Out = self.f_18_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[26] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[26]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_26_OnUserInPlace
  self[64] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[64]
  l0._graph = self
  l0.Out = self.f_64_Out
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self[35] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[35]
  l0._graph = self
  l0.Out = self.f_35_Out
  l0.SetTrue = self.f_35_SetTrue
  l0.SetFalse = self.f_35_SetFalse
  l0.Toggled = self.f_35_Toggled
  l0.SetFromBool = self.f_35_SetFromBool
  self[22] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[22]
  l0._graph = self
  l0.Out = self.f_22_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[3] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[3]
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
  self[61] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[61]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_61_Out
  self[47] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[47]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[4] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[4]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_4_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
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
  l0 = self[65]
  l0:Input(1)
end
function export:In()
  local l0
  l0 = self[65]
  l0:Input(0)
end
function export:f_1_CanExitSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_32_Out_0
  l0.Out[1] = self.f_32_Out_1
  l0:In()
end
function export:f_1_EnterForced()
  local l0
  self = self._graph
  self:en_1()
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0:SetCanExit()
end
function export:f_62_Out()
  local l0
  self = self._graph
  self:en_1()
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0:ForceEnter()
end
function export:f_56_RewardsExecuted()
  local l0
  self = self._graph
  l0 = self[57]
  l0.Seconds = 5
  l0:Start()
end
function export:f_52_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[53]
  l0:Input(1)
end
function export:f_52_StartCommunicationOut()
  local l0
  self = self._graph
  l0 = self[26]
  l0.CLO = "9223372059714400056"
  l0:Activate()
end
function export:f_65_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_25_Out
  l0:In()
end
function export:f_43_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[55]
  l0.CLO = "9223372065309726611"
  l0:Activate()
end
function export:f_58_Out_0()
  local l0
  self = self._graph
  l0 = self[37]
  l0:Input(0)
end
function export:f_58_Out_1()
  local l0
  self = self._graph
  l0 = self[12]
  l0:Enable()
end
function export:f_58_Out_2()
  local l0
  self = self._graph
  self:en_23()
  l0 = self[23]
  l0:EnableHack()
end
function export:f_21_Out()
  local l0
  self = self._graph
  l0 = self[72]
  l0:True()
end
function export:f_29_DamageSent()
  local l0
  self = self._graph
  l0 = self[24]
  l0.CLO = "9223372065309726460"
  l0:Activate()
end
function export:f_85_Out()
  local l0
  self = self._graph
  l0 = self[48]
  l0:True()
end
function export:f_79_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[81]
  l0.HackableEntity = self.Phone_Hack
  l0.ProfileLinkedToHack = 1
  l0:DisableHack()
end
function export:f_34_A_is_False()
  local l0
  self = self._graph
  l0 = self[4]
  l0.Seconds = 1
  l0:Start()
end
function export:f_34_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_39_Out_0
  l0.Out[1] = self.f_39_Out_1
  l0:In()
end
function export:f_81_Disabled()
  local l0
  self = self._graph
  l0 = self[35]
  l0:True()
end
function export:f_33_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[33]
  self.Whistleblower = l0.UserID
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.Whistleblower
  l0.Collisionable = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_9_CollisionsDisabled
  l0.Out = DummyFunction
  l0:DisableCollisions()
end
function export:f_32_Out_0()
  local l0
  self = self._graph
  self:en_78()
  l0 = self[78]
  l0:Enable()
end
function export:f_32_Out_1()
  local l0
  self = self._graph
  l0 = self[16]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357373731"
  l0:StartCommunication()
end
function export:f_49_MessageCompleted()
  local l0
  self = self._graph
  l0 = self[15]
  l0.LayerName = "L04M020_IOP_Main"
  l0:Unload()
end
function export:f_57_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[53]
  l0:Input(0)
end
function export:f_60_Output_0()
  local l0
  self = self._graph
  l0 = self[3]
  l0.HackableEntity = self.Phone_Hack
  l0.OasisHackingText = {
    section = "MISSIONS.WORLD MISSIONS.IOP.WHISTLEBLOWER.OBJECTS.WhistleblowerJumper",
    item = "Call Sister",
    id = "684999"
  }
  l0:SetOverrideHackingText()
end
function export:f_60_Output_1()
  local l0
  self = self._graph
  l0 = self[10]
  l0.HackableEntity = self.Phone_Hack
  l0.OasisHackingText = {
    section = "MISSIONS.WORLD MISSIONS.IOP.WHISTLEBLOWER.OBJECTS.WhistleblowerJumper",
    item = "Call Wife",
    id = "685000"
  }
  l0:SetOverrideHackingText()
end
function export:f_60_Output_3()
  local l0
  self = self._graph
  l0 = self[61]
  l0:Input(1)
end
function export:f_36_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[2]
  l0.IopID = "Whistleblower"
  l0.IopEvent = "WhistleBlower.ComputerHack"
  l0:SendEvent()
end
function export:f_40_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[54]
  l0.CLO = "9223372065309726610"
  l0:Activate()
end
function export:f_45_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[37]
  l0:Input(1)
end
function export:f_50_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[56]
  l0.ItemDB = "Items.9223372050357463260"
  l0:ExecuteRewards()
end
function export:f_37_Out()
  local l0
  self = self._graph
  l0 = self[72]
  l0:False()
end
function export:f_46_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[37]
  l0:Input(2)
end
function export:f_19_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_80_Out_0
  l0.Out[1] = self.f_80_Out_1
  l0:In()
end
function export:f_19_HackSuccess()
  local l0
  self = self._graph
  self:en_23()
  l0 = self[23]
  l0:DisableHack()
end
function export:f_38_Disabled()
  local l0
  self = self._graph
  self:en_27()
  l0 = self[27]
  l0:Disable()
end
function export:f_38_Enabled()
  local l0
  self = self._graph
  self:en_27()
  l0 = self[27]
  l0:Enable()
end
function export:f_38_ProfilingDisabled()
  local l0
  self = self._graph
  self:en_69()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0:Hide()
end
function export:f_38_ProfilingEnabled()
  local l0
  self = self._graph
  self:en_69()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0:Show()
end
function export:f_48_Out()
  local l0
  self = self._graph
  l0 = self[48]
  self.Whistleblower_Alive = l0.Target
end
function export:f_48_SetFalse()
  local l0
  self = self._graph
  l0 = self[48]
  self.Whistleblower_Alive = l0.Target
end
function export:f_48_SetFromBool()
  local l0
  self = self._graph
  l0 = self[48]
  self.Whistleblower_Alive = l0.Target
end
function export:f_48_SetTrue()
  local l0
  self = self._graph
  l0 = self[48]
  self.Whistleblower_Alive = l0.Target
end
function export:f_48_Toggled()
  local l0
  self = self._graph
  l0 = self[48]
  self.Whistleblower_Alive = l0.Target
end
function export:f_2_SendEventCompleted()
  local l0
  self = self._graph
  l0 = self[85]
  l0:In()
end
function export:f_78_Disabled()
  local l0
  self = self._graph
  l0 = self[77]
  l0.Seconds = 0.5
  l0:Start()
end
function export:f_78_OnEndAccessCamera()
  local l0
  self = self._graph
  self:en_78()
  l0 = self[78]
  l0:Disable()
end
function export:f_70_Out()
  local l0
  self = self._graph
  l0 = self[66]
  l0.Entity = self.Phone_SoundEntity
  l0.SoundId = "soundbinary/718819757.bnk"
  l0:Play()
end
function export:f_39_Out_0()
  local l0
  self = self._graph
  l0 = self[18]
  l0.Entity = self.Phone_SoundEntity
  l0:Play()
end
function export:f_39_Out_1()
  local l0
  self = self._graph
  l0 = self[21]
  l0:Input(1)
end
function export:f_74_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[82]
  l0.HackableEntity = self.Phone_Hack
  l0.ProfileLinkedToHack = 1
  l0:EnableHack()
end
function export:f_71_A_is_False()
  local l0
  self = self._graph
  l0 = self[68]
  l0:In()
end
function export:f_71_A_is_True()
  local l0
  self = self._graph
  l0 = self[44]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357373733"
  l0:StartCommunication()
end
function export:f_66_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Switch_Phone
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_34_A_is_True
  l0.A_is_False = self.f_34_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_63_Out()
  local l0
  self = self._graph
  l0 = self[64]
  l0.IopID = "Whistleblower"
  l0.PlayerEntity = self.PlayerEntity
  l0:HideChat()
end
function export:f_24_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[31]
  l0.CLO = "9223372065309726461"
  l0:Activate()
end
function export:f_68_Output_0()
  local l0
  self = self._graph
  l0 = self[45]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357373734"
  l0:StartCommunication()
end
function export:f_68_Output_1()
  local l0
  self = self._graph
  l0 = self[46]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357373735"
  l0:StartCommunication()
end
function export:f_68_Output_2()
  local l0
  self = self._graph
  l0 = self[47]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357373732"
  l0:StartCommunication()
end
function export:f_80_Out_0()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:Start()
end
function export:f_80_Out_1()
  local l0
  self = self._graph
  self:en_79()
  l0 = self[79]
  l0:Start()
end
function export:f_8_Completed()
  local l0
  self = self._graph
  l0 = self[63]
  l0.Entity = "9223372055533122268"
  l0.SoundId = "soundbinary/3249668497.bnk"
  l0:Play()
end
function export:f_8_DisconnectedAnimationPlayed()
  local l0
  self = self._graph
  self:en_20()
  l0 = self[20]
  l0:UnspawnUser()
end
function export:f_17_Out_0()
  local l0
  self = self._graph
  l0 = self[33]
  l0.CLO = self.Whistleblower_CLO_Sitting
  l0:Activate()
end
function export:f_17_Out_1()
  local l0
  self = self._graph
  l0 = self[7]
  l0:Enable()
end
function export:f_13_StartCompleted()
  local l0
  self = self._graph
  l0 = self[62]
  l0.Entity = "9223372055533122268"
  l0.SoundId = "soundbinary/1305362854.bnk"
  l0:Play()
end
function export:f_6_SendEventCompleted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_58_Out_0
  l0.Out[1] = self.f_58_Out_1
  l0.Out[2] = self.f_58_Out_2
  l0:In()
end
function export:f_72_Out()
  local l0
  self = self._graph
  l0 = self[72]
  self.During_Call = l0.Target
end
function export:f_72_SetFalse()
  local l0
  self = self._graph
  l0 = self[72]
  self.During_Call = l0.Target
  self:en_38()
  l0 = self[38]
  l0:EnableHack()
end
function export:f_72_SetFromBool()
  local l0
  self = self._graph
  l0 = self[72]
  self.During_Call = l0.Target
end
function export:f_72_SetTrue()
  local l0
  self = self._graph
  l0 = self[72]
  self.During_Call = l0.Target
  self:en_38()
  l0 = self[38]
  l0:DisableHack()
end
function export:f_72_Toggled()
  local l0
  self = self._graph
  l0 = self[72]
  self.During_Call = l0.Target
end
function export:f_67_Out_0()
  local l0
  self = self._graph
  l0 = self[21]
  l0:Input(2)
end
function export:f_67_Out_1()
  local l0
  self = self._graph
  l0 = self[60]
  l0:In()
end
function export:f_27_Disabled()
  local l0
  self = self._graph
  self:en_38()
  l0 = self[38]
  l0:DisableProfiling()
end
function export:f_27_Enabled()
  local l0
  self = self._graph
  self:en_38()
  l0 = self[38]
  l0:EnableProfiling()
end
function export:f_27_HackSuccess()
  local l0
  self = self._graph
  l0 = self[70]
  l0:In(0)
end
function export:f_77_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[41]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_51_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Whistleblower_Alive
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_28_A_is_True
  l0.A_is_False = self.f_28_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_84_A_ge_B()
  local l0
  self = self._graph
  l0 = self[85]
  l0:Close()
end
function export:f_54_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[43]
  l0.CLO = "9223372065309726609"
  l0:Activate()
end
function export:f_69_Shown()
  local l0
  self = self._graph
  l0 = self[70]
  l0:Reset()
end
function export:f_59_Out_0()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:Stop()
end
function export:f_59_Out_1()
  local l0
  self = self._graph
  l0 = self[51]
  l0.Seconds = 2
  l0:Start()
end
function export:f_59_Out_2()
  local l0
  self = self._graph
  self:en_79()
  l0 = self[79]
  l0:Stop()
end
function export:f_12_ActivateHackables()
  local l0
  self = self._graph
  l0 = self[61]
  l0:Input(0)
end
function export:f_12_DeactivateHackables()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_67_Out_0
  l0.Out[1] = self.f_67_Out_1
  l0:In()
end
function export:f_16_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[6]
  l0.IopID = "Whistleblower"
  l0.IopEvent = "Generic.TeamSpeakEnded"
  l0:SendEvent()
end
function export:f_16_StartCommunicationOut()
  local l0
  self = self._graph
  l0 = self[21]
  l0:Input(0)
end
function export:f_9_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = self[13]
  l0.IopID = "Whistleblower"
  l0.PlayerEntity = self.PlayerEntity
  l0.NpcEntity = self.Whistleblower
  l0.IopRole = "WhistleBlower.Guy"
  l0.OffscreenDialogPoint = "9223372055533122268"
  l0:Start()
end
function export:f_44_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[37]
  l0:Input(3)
end
function export:f_20_UnspawnedUser()
  local l0
  self = self._graph
  self:en_20()
  l0 = self[20]
  l0:Deactivate()
end
function export:f_14_Out()
  local l0
  self = self._graph
  l0 = self[22]
  l0.SoundId = "soundbinary/3973683875.bnk"
  l0:Play()
end
function export:f_30_SendEventCompleted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  l0.A = self.BadCalls
  l0.B = 1
  l0._graph = self
  l0.Out = self.f_83_Out
  l0:Add()
end
function export:f_76_Out()
  local l0
  self = self._graph
  l0 = self[11]
  l0.HackableEntity = self.Phone_Hack
  l0.OasisHackingText = {
    section = "MISSIONS.WORLD MISSIONS.IOP.WHISTLEBLOWER.OBJECTS.WhistleblowerJumper",
    item = "Call Reporter",
    id = "685001"
  }
  l0:SetOverrideHackingText()
end
function export:f_53_Out()
  local l0
  self = self._graph
  l0 = self[49]
  l0:ShowMissionComplete()
end
function export:f_7_IOPComplete()
  local l0
  self = self._graph
  l0 = self[8]
  l0:In()
end
function export:f_82_Enabled()
  local l0
  self = self._graph
  l0 = self[76]
  l0:Input(0)
end
function export:f_31_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[40]
  l0.CLO = "9223372065309726608"
  l0:Activate()
end
function export:f_23_Disabled()
  local l0
  self = self._graph
  self:en_23()
  l0 = self[23]
  l0:DisableProfiling()
end
function export:f_23_Enabled()
  local l0
  self = self._graph
  self:en_19()
  l0 = self[19]
  l0:Enable()
end
function export:f_23_ProfilingDisabled()
  local l0
  self = self._graph
  self:en_19()
  l0 = self[19]
  l0:Disable()
end
function export:f_15_Unloaded()
  local l0
  self = self._graph
  l0 = self[42]
  l0:Succeed()
end
function export:f_18_Out()
  local l0
  self = self._graph
  l0 = self[36]
  l0.Seconds = 1
  l0:Start()
end
function export:f_75_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.During_Call
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_73_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_75_Out_1()
  local l0
  self = self._graph
  l0 = self[76]
  l0:Input(1)
end
function export:f_26_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[26]
  self.PostJump = l0.UserID
  l0 = self[29]
  l0.PlayerEntity = self.PostJump
  l0.DamageLevel = 500
  l0.DamageType = "InstantKill"
  l0.DamageLocation = "Torso"
  l0:Send()
end
function export:f_73_A_is_False()
  local l0
  self = self._graph
  l0 = self[74]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357373733"
  l0:StartCommunication()
end
function export:f_64_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_59_Out_0
  l0.Out[1] = self.f_59_Out_1
  l0.Out[2] = self.f_59_Out_2
  l0:In()
end
function export:f_35_Out()
  local l0
  self = self._graph
  l0 = self[35]
  self.Switch_Phone = l0.Target
end
function export:f_35_SetFalse()
  local l0
  self = self._graph
  l0 = self[35]
  self.Switch_Phone = l0.Target
end
function export:f_35_SetFromBool()
  local l0
  self = self._graph
  l0 = self[35]
  self.Switch_Phone = l0.Target
end
function export:f_35_SetTrue()
  local l0
  self = self._graph
  l0 = self[35]
  self.Switch_Phone = l0.Target
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_75_Out_0
  l0.Out[1] = self.f_75_Out_1
  l0:In()
end
function export:f_35_Toggled()
  local l0
  self = self._graph
  l0 = self[35]
  self.Switch_Phone = l0.Target
end
function export:f_22_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_17_Out_0
  l0.Out[1] = self.f_17_Out_1
  l0:In()
end
function export:f_83_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  self.BadCalls = l0.Target
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = self.BadCalls
  l0.B = 3
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_lt_B = DummyFunction
  l0.A_le_B = DummyFunction
  l0.A_eq_B = DummyFunction
  l0.A_ge_B = self.f_84_A_ge_B
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  l0:In()
end
function export:f_61_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Switch_Phone
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_71_A_is_True
  l0.A_is_False = self.f_71_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_28_A_is_False()
  local l0
  self = self._graph
  l0 = self[52]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357367238"
  l0:StartCommunication()
end
function export:f_28_A_is_True()
  local l0
  self = self._graph
  l0 = self[50]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357367239"
  l0:StartCommunication()
end
function export:f_25_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[14]
  l0.MainLayer = "L04M020_IOP_Main"
  l0.CheckPoint = "CheckPoint_0"
  l0.CinemaZone = "9223372060001341263"
  l0:In()
end
function export:f_4_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[30]
  l0.IopID = "Whistleblower"
  l0.IopEvent = "WhistleBlower.PhoneHack"
  l0:SendEvent()
end
function export:en_1()
  local l0
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = self.Security_Camera
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
function export:en_79()
  local l0
  l0 = self[79]
  l0.Seconds = self.Download_Time
end
function export:en_19()
  local l0
  l0 = self[19]
  l0.HackableEntity = self.Laptop_Hack
end
function export:en_38()
  local l0
  l0 = self[38]
  l0.HackableEntity = self.Phone_Hack
end
function export:en_78()
  local l0
  l0 = self[78]
  l0.CameraEntity = self.Security_Camera
end
function export:en_27()
  local l0
  l0 = self[27]
  l0.HackableEntity = self.Phone_Hack
end
function export:en_69()
  local l0
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.Phone_Hack
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = self.f_69_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
end
function export:en_5()
  local l0
  l0 = self[5]
  l0.Text = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Download",
    id = "189898"
  }
  l0.TotalTime = self.Download_Time
end
function export:en_20()
  local l0
  l0 = self[20]
  l0.CLO = self.Whistleblower_CLO_Sitting
  l0.User = self.Whistleblower
end
function export:en_23()
  local l0
  l0 = self[23]
  l0.HackableEntity = self.Laptop_Hack
end
function export:Out()
end
_compilerVersion = 4
