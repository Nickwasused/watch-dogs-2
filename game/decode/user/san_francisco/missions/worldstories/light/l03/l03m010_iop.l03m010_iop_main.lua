export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/IOPController.lua")
  cbox:RegisterBox("domino/System/BinkVideoPlayer_v3.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/System/IntelController.lua")
  cbox:RegisterBox("domino/Library/common/IOP.IOP_CleanUp.lua")
  cbox:RegisterBox("domino/Library/common/IOP.IOP_StartUp.lua")
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
  self[42] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[42]
  l0._graph = self
  l0.Out = self.f_42_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[58] = cbox:CreateBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  l0 = self[58]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.WasReset = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = DummyFunction
  self[9] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[9]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_9_OnUserInPlace
  self[70] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[70]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_70_Out
  self[30] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[30]
  l0._graph = self
  l0.Enabled = self.f_30_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[73] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[73]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[46] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[46]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[40] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[40]
  l0._graph = self
  l0.Out = self.f_40_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[31] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[31]
  l0._graph = self
  l0.Enabled = self.f_31_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[20] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[20]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_20_Started
  l0.Finished = DummyFunction
  self[65] = cbox:CreateBox("domino/System/LogicGate_v2.lua")
  l0 = self[65]
  l0._graph = self
  l0.Out = self.f_65_Out
  l0.Opened = DummyFunction
  l0.Closed = DummyFunction
  self[6] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[6]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = self.f_6_StopEmptyRoomCompleted
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self[59] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[59]
  l0._graph = self
  l0._DynamicAnchors = {Data = 9}
  l0.Added = self.f_59_Added
  l0.Removed = self.f_59_Removed
  l0.Out = self.f_59_Out
  self[53] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[53]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_53_Out
  self[38] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[38]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[74] = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self[74]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_74_Disabled
  l0.OnStartAccessCamera = DummyFunction
  l0.OnEndAccessCamera = self.f_74_OnEndAccessCamera
  l0.OnStartExitCamera = DummyFunction
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self[68] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[68]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = DummyFunction
  l0.HackedOn = self.f_68_HackedOn
  l0.HackedOff = self.f_68_HackedOff
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[21] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[21]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_21_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[28] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[28]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = self.f_28_Out
  self[19] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[19]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = DummyFunction
  l0.HackedOn = self.f_19_HackedOn
  l0.HackedOff = self.f_19_HackedOff
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[13] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[13]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_13_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[23] = cbox:CreateBox("domino/System/PlayDialogWithSubtitle.lua")
  l0 = self[23]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_23_Finished
  self[14] = cbox:CreateBox("domino/Library/common/IOP.IOP_CleanUp.lua")
  l0 = self[14]
  l0._graph = self
  l0.Completed = self.f_14_Completed
  l0.DisconnectedAnimationPlayed = self.f_14_DisconnectedAnimationPlayed
  l0.Out = DummyFunction
  self[72] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[72]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_72_Out
  self[54] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[54]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = DummyFunction
  l0.HackedOn = self.f_54_HackedOn
  l0.HackedOff = self.f_54_HackedOff
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
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
  self[44] = cbox:CreateBox("domino/System/LogicGate_v2.lua")
  l0 = self[44]
  l0._graph = self
  l0.Out = self.f_44_Out
  l0.Opened = DummyFunction
  l0.Closed = DummyFunction
  self[60] = cbox:CreateBox("domino/System/PlayDialogWithSubtitle.lua")
  l0 = self[60]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_60_Finished
  self[33] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[33]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = self.f_33_Out
  self[36] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[36]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_36_Out
  self[55] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[55]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[2] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[2]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = self.f_2_StartEmptyRoomCompleted
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self[50] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[50]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[47] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[47]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_47_Unloaded
  l0.Reseted = DummyFunction
  self[71] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[71]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_71_Out
  self[29] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[29]
  l0._graph = self
  l0.Enabled = self.f_29_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[66] = cbox:CreateBox("domino/System/PlayDialogWithSubtitle.lua")
  l0 = self[66]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[4] = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self[4]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_4_Disabled
  l0.OnStartAccessCamera = DummyFunction
  l0.OnEndAccessCamera = self.f_4_OnEndAccessCamera
  l0.OnStartExitCamera = DummyFunction
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self[69] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[69]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = DummyFunction
  l0.HackedOn = self.f_69_HackedOn
  l0.HackedOff = self.f_69_HackedOff
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[61] = cbox:CreateBox("domino/System/PlayDialogWithSubtitle.lua")
  l0 = self[61]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_61_Finished
  self[18] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[18]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_18_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[35] = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self[35]
  l0._graph = self
  l0.Enabled = self.f_35_Enabled
  l0.Disabled = DummyFunction
  self[63] = cbox:CreateBox("domino/System/LogicGate_v2.lua")
  l0 = self[63]
  l0._graph = self
  l0.Out = self.f_63_Out
  l0.Opened = DummyFunction
  l0.Closed = DummyFunction
  self[37] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[37]
  l0._graph = self
  l0.Out = self.f_37_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[5] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[5]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_5_OnUserInPlace
  self[34] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[34]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = DummyFunction
  self[16] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[16]
  l0._graph = self
  l0.Started = self.f_16_Started
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[62] = cbox:CreateBox("domino/System/LogicGate_v2.lua")
  l0 = self[62]
  l0._graph = self
  l0.Out = self.f_62_Out
  l0.Opened = DummyFunction
  l0.Closed = DummyFunction
  self[10] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[10]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_10_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[57] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[57]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[75] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[75]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_75_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[49] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[49]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[12] = cbox:CreateBox("domino/Library/common/IOP.IOP_StartUp.lua")
  l0 = self[12]
  l0._graph = self
  l0.Out = self.f_12_Out
  self[27] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[27]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_27_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[25] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[25]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_25_OnUserInPlace
  self[11] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[11]
  l0._graph = self
  self[52] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[52]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[64] = cbox:CreateBox("domino/System/PlayDialogWithSubtitle.lua")
  l0 = self[64]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_64_Finished
  self[3] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[3]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_3_Started
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
  l0 = self[36]
  l0:Input(1)
end
function export:In()
  local l0
  l0 = self[36]
  l0:Input(0)
end
function export:f_67_Out()
  local l0
  self = self._graph
  l0 = self[65]
  l0:Close()
  l0 = self[44]
  l0:Close()
  l0 = self[63]
  l0:Close()
  l0 = self[62]
  l0:Close()
end
function export:f_42_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_8_Out_0
  l0.Out[1] = self.f_8_Out_1
  l0:In()
end
function export:f_56_Out_0()
  local l0
  self = self._graph
  l0 = self[68]
  l0.HackableEntity = "9223372068204167239"
  l0:Enable()
end
function export:f_56_Out_1()
  local l0
  self = self._graph
  l0 = self[19]
  l0.HackableEntity = "9223372068204167242"
  l0:Enable()
end
function export:f_56_Out_2()
  local l0
  self = self._graph
  l0 = self[54]
  l0.HackableEntity = "9223372068204167082"
  l0:Enable()
end
function export:f_56_Out_3()
  local l0
  self = self._graph
  l0 = self[69]
  l0.HackableEntity = "9223372068204167086"
  l0:Enable()
end
function export:f_9_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[9]
  self.PatPlourde = l0.UserID
  l0 = self[25]
  l0.CLO = "9223372056381150784"
  l0:Activate()
end
function export:f_70_Out()
  local l0
  self = self._graph
  l0 = self[55]
  l0.Entity = "9223372066393554740"
  l0.SoundId = "soundbinary/2993216076.bnk"
  l0:Play()
end
function export:f_30_Enabled()
  local l0
  self = self._graph
  l0 = self[15]
  l0.HackableEntity = "9223372064475970149"
  l0:Enable()
end
function export:f_40_Out()
  local l0
  self = self._graph
  l0 = self[16]
  l0.Entity = "9223372059710467576"
  l0.SoundId = "soundbinary/3651191950.bnk"
  l0:Start()
end
function export:f_31_Enabled()
  local l0
  self = self._graph
  l0 = self[10]
  l0.HackableEntity = "9223372064475970165"
  l0:Enable()
end
function export:f_41_Out()
  local l0
  self = self._graph
  l0 = self[6]
  l0.EmptyRoomName = "L03M010_UbiSanFrancisco"
  l0.PlayerEntity = self.PlayerEntity
  l0:StopEmptyRoomIOP()
end
function export:f_8_Out_0()
  local l0
  self = self._graph
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
  l0.Started = self.f_22_Started
  l0.TimeElapsed = DummyFunction
  l0.Stopped = DummyFunction
  l0.Finished = self.f_22_Finished
  l0:Start()
end
function export:f_8_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_67_Out
  l0:In()
end
function export:f_20_Started()
  local l0
  self = self._graph
  l0 = self[33]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357367229"
  l0:StartCommunication()
end
function export:f_65_Out()
  local l0
  self = self._graph
  l0 = self[66]
  l0.Entity = self.BarkSoundEntity_MeetingChatter
  l0.SoundId = "soundbinary/2033963785.bnk"
  l0:Play()
end
function export:f_6_StopEmptyRoomCompleted()
  local l0
  self = self._graph
  l0 = self[14]
  l0.SecurityCameraList = self.SecurityCameraList
  l0:In()
end
function export:f_59_Added()
  local l0
  self = self._graph
  l0 = self[59]
  self.SecurityCameraList = l0.Target
  l0 = self[3]
  l0.SoundId = "soundbinary/3973683875.bnk"
  l0:Play()
end
function export:f_59_Out()
  local l0
  self = self._graph
  l0 = self[59]
  self.SecurityCameraList = l0.Target
end
function export:f_59_Removed()
  local l0
  self = self._graph
  l0 = self[59]
  self.SecurityCameraList = l0.Target
end
function export:f_53_Out()
  local l0
  self = self._graph
  l0 = self[73]
  l0.Entity = "9223372066393554907"
  l0.SoundId = "soundbinary/2137140386.bnk"
  l0:Play()
end
function export:f_24_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[12]
  l0.MainLayer = "L03M010_Main_IOP"
  l0.CheckPoint = "Checkpoint_0"
  l0.CinemaZone = "9223372060001341228"
  l0:In()
end
function export:f_74_Disabled()
  local l0
  self = self._graph
  l0 = self[75]
  l0.Seconds = 0.5
  l0:Start()
end
function export:f_74_OnEndAccessCamera()
  local l0
  self = self._graph
  self:en_74()
  l0 = self[74]
  l0:Disable()
end
function export:f_68_HackedOff()
  local l0
  self = self._graph
  l0 = self[70]
  l0:Input(0)
end
function export:f_68_HackedOn()
  local l0
  self = self._graph
  l0 = self[72]
  l0:Input(0)
end
function export:f_21_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[20]
  l0.SoundId = "soundbinary/2422823228.bnk"
  l0:Play()
end
function export:f_28_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_39_Out_0
  l0.Out[1] = self.f_39_Out_1
  l0.Out[2] = self.f_39_Out_2
  l0:In()
end
function export:f_19_HackedOff()
  local l0
  self = self._graph
  l0 = self[70]
  l0:Input(1)
end
function export:f_19_HackedOn()
  local l0
  self = self._graph
  l0 = self[72]
  l0:Input(1)
end
function export:f_13_HackSuccess()
  local l0
  self = self._graph
  self:en_29()
  l0 = self[29]
  l0:DisableHack()
end
function export:f_23_Finished()
  local l0
  self = self._graph
  l0 = self[44]
  l0:In()
end
function export:f_14_Completed()
  local l0
  self = self._graph
  l0 = self[47]
  l0.LayerName = "L03M010_Main_IOP"
  l0:Unload()
end
function export:f_14_DisconnectedAnimationPlayed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_51_Out_0
  l0.Out[1] = self.f_51_Out_1
  l0.Out[2] = self.f_51_Out_2
  l0:In()
end
function export:f_72_Out()
  local l0
  self = self._graph
  l0 = self[52]
  l0.Entity = "9223372066393554740"
  l0.SoundId = "soundbinary/2137140386.bnk"
  l0:Play()
end
function export:f_54_HackedOff()
  local l0
  self = self._graph
  l0 = self[71]
  l0:Input(0)
end
function export:f_54_HackedOn()
  local l0
  self = self._graph
  l0 = self[53]
  l0:Input(0)
end
function export:f_15_HackSuccess()
  local l0
  self = self._graph
  self:en_30()
  l0 = self[30]
  l0:DisableHack()
end
function export:f_44_Out()
  local l0
  self = self._graph
  l0 = self[64]
  l0.Entity = self.BarkSoundEntity_MeetingChatter
  l0.SoundId = "soundbinary/225637632.bnk"
  l0:Play()
end
function export:f_60_Finished()
  local l0
  self = self._graph
  l0 = self[63]
  l0:In()
end
function export:f_33_Out()
  local l0
  self = self._graph
  l0 = self[11]
  l0:Succeed()
end
function export:f_32_Out_0()
  local l0
  self = self._graph
  l0 = self[35]
  l0.Entity = "9223372064475970165"
  l0:Enable()
end
function export:f_32_Out_1()
  local l0
  self = self._graph
  self:en_29()
  l0 = self[29]
  l0:EnableHack()
end
function export:f_32_Out_2()
  local l0
  self = self._graph
  self:en_30()
  l0 = self[30]
  l0:EnableHack()
end
function export:f_32_Out_3()
  local l0
  self = self._graph
  self:en_4()
  l0 = self[4]
  l0:Enable()
end
function export:f_36_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_24_Out
  l0:In()
end
function export:f_2_StartEmptyRoomCompleted()
  local l0
  self = self._graph
  self:en_26()
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0:ForceEnter()
end
function export:f_48_Out_0()
  local l0
  self = self._graph
  self:en_74()
  l0 = self[74]
  l0:Enable()
end
function export:f_48_Out_1()
  local l0
  self = self._graph
  l0 = self[28]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357372609"
  l0:StartCommunication()
end
function export:f_7_Out_0()
  local l0
  self = self._graph
  l0 = self[9]
  l0.CLO = "9223372056381150805"
  l0:Activate()
end
function export:f_47_Unloaded()
  local l0
  self = self._graph
  l0 = self[21]
  l0.Seconds = 1
  l0:Start()
end
function export:f_71_Out()
  local l0
  self = self._graph
  l0 = self[57]
  l0.Entity = "9223372066393554907"
  l0.SoundId = "soundbinary/2993216076.bnk"
  l0:Play()
end
function export:f_29_Enabled()
  local l0
  self = self._graph
  l0 = self[13]
  l0.HackableEntity = "9223372064475970163"
  l0:Enable()
end
function export:f_22_Finished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0.Out = self.f_41_Out
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0:Show()
end
function export:f_22_Started()
  local l0
  self = self._graph
  l0 = self[40]
  l0.SoundId = "soundbinary/3977174080.bnk"
  l0:Play()
end
function export:f_4_Disabled()
  local l0
  self = self._graph
  l0 = self[60]
  l0.Entity = self.BarkSoundEntity_MeetingChatter
  l0.SoundId = "soundbinary/3677513328.bnk"
  l0:Play()
end
function export:f_4_OnEndAccessCamera()
  local l0
  self = self._graph
  self:en_4()
  l0 = self[4]
  l0:Disable()
end
function export:f_69_HackedOff()
  local l0
  self = self._graph
  l0 = self[71]
  l0:Input(1)
end
function export:f_69_HackedOn()
  local l0
  self = self._graph
  l0 = self[53]
  l0:Input(1)
end
function export:f_26_CanExitSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_48_Out_0
  l0.Out[1] = self.f_48_Out_1
  l0:In()
end
function export:f_26_EnterForced()
  local l0
  self = self._graph
  self:en_26()
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0:SetCanExit()
end
function export:f_51_Out_0()
  local l0
  self = self._graph
  l0 = self[46]
  l0.User = self.PatPlourde
  l0:UnspawnUser()
end
function export:f_51_Out_1()
  local l0
  self = self._graph
  l0 = self[49]
  l0.User = self.FemaleEmp
  l0:UnspawnUser()
end
function export:f_51_Out_2()
  local l0
  self = self._graph
  l0 = self[50]
  l0.User = self.MaleEmpl
  l0:UnspawnUser()
end
function export:f_61_Finished()
  local l0
  self = self._graph
  l0 = self[62]
  l0:In()
end
function export:f_18_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0.Out = self.f_45_Out
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0:Hide()
end
function export:f_17_Out_0()
  local l0
  self = self._graph
  l0 = self[58]
  l0.Text = {
    section = "HACKING.Interface Messages",
    item = "Downloading",
    id = "550990"
  }
  l0.TotalTime = 3
  l0:Start()
end
function export:f_17_Out_1()
  local l0
  self = self._graph
  self:en_31()
  l0 = self[31]
  l0:DisableHack()
end
function export:f_17_Out_2()
  local l0
  self = self._graph
  self:en_31()
  l0 = self[31]
  l0:DisableProfiling()
end
function export:f_17_Out_3()
  local l0
  self = self._graph
  l0 = self[18]
  l0.Seconds = 3
  l0:Start()
end
function export:f_35_Enabled()
  local l0
  self = self._graph
  self:en_31()
  l0 = self[31]
  l0:EnableHack()
end
function export:f_63_Out()
  local l0
  self = self._graph
  l0 = self[61]
  l0.Entity = self.BarkSoundEntity_MeetingChatter
  l0.SoundId = "soundbinary/416194221.bnk"
  l0:Play()
end
function export:f_37_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_7_Out_0
  l0.Out[1] = DummyFunction
  l0:In()
end
function export:f_5_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[5]
  self.FemaleEmp = l0.UserID
  l0 = self[2]
  l0.EmptyRoomName = "L03M010_UbiSanFrancisco"
  l0.PlayerEntity = self.PlayerEntity
  l0:StartEmptyRoomIOP()
end
function export:f_16_Started()
  local l0
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
  l0:ForceUserOutOfCamera()
end
function export:f_62_Out()
  local l0
  self = self._graph
  l0 = self[23]
  l0.Entity = self.BarkSoundEntity_MeetingChatter
  l0.SoundId = "soundbinary/2442748611.bnk"
  l0:Play()
end
function export:f_39_Out_0()
  local l0
  self = self._graph
  l0 = self[27]
  l0.Seconds = 3
  l0:Start()
end
function export:f_39_Out_1()
  local l0
  self = self._graph
  l0 = self[38]
  l0.SoundId = "soundbinary/1549650036.bnk"
  l0:Play()
end
function export:f_39_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_56_Out_0
  l0.Out[1] = self.f_56_Out_1
  l0.Out[2] = self.f_56_Out_2
  l0.Out[3] = self.f_56_Out_3
  l0:In()
end
function export:f_10_HackSuccess()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_17_Out_0
  l0.Out[1] = self.f_17_Out_1
  l0.Out[2] = self.f_17_Out_2
  l0.Out[3] = self.f_17_Out_3
  l0:In()
end
function export:f_75_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[34]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_12_Out()
  local l0
  self = self._graph
  l0 = self[59]
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
  l0:Add()
end
function export:f_27_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 6}
  l0.Out[0] = self.f_32_Out_0
  l0.Out[1] = self.f_32_Out_1
  l0.Out[2] = self.f_32_Out_2
  l0.Out[3] = self.f_32_Out_3
  l0.Out[4] = DummyFunction
  l0.Out[5] = DummyFunction
  l0:In()
end
function export:f_25_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[25]
  self.MaleEmpl = l0.UserID
  l0 = self[5]
  l0.CLO = "9223372056381150785"
  l0:Activate()
end
function export:f_45_Out()
  local l0
  self = self._graph
  l0 = self[42]
  l0.Entity = "9223372059710467576"
  l0.SoundId = "soundbinary/3651191950.bnk"
  l0:Play()
end
function export:f_64_Finished()
  local l0
  self = self._graph
  l0 = self[65]
  l0:In()
end
function export:f_3_Started()
  local l0
  self = self._graph
  l0 = self[37]
  l0.SoundId = "soundbinary/3035919121.bnk"
  l0:Play()
end
function export:en_30()
  local l0
  l0 = self[30]
  l0.HackableEntity = "9223372064475970149"
  l0.ProfileLinkedToHack = 1
end
function export:en_31()
  local l0
  l0 = self[31]
  l0.HackableEntity = "9223372064475970165"
end
function export:en_74()
  local l0
  l0 = self[74]
  l0.CameraEntity = "9223372064358453925"
end
function export:en_29()
  local l0
  l0 = self[29]
  l0.HackableEntity = "9223372064475970163"
  l0.ProfileLinkedToHack = 1
end
function export:en_4()
  local l0
  l0 = self[4]
  l0.CameraEntity = "9223372056381150793"
end
function export:en_26()
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
  l0.EnterSet = DummyFunction
  l0.CanExitSet = self.f_26_CanExitSet
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = self.f_26_EnterForced
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
end
_compilerVersion = 4
