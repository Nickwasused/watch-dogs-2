export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/IOPController.lua")
  cbox:RegisterBox("domino/System/Bind_v2.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/Library/common/IOP.IOP_CleanUp.lua")
  cbox:RegisterBox("domino/Library/common/IOP.IOP_StartUp.lua")
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
  self.PlayerEntity = nil
  self.Cameras = {}
  self.MainCharacter = nil
  self.Neighbor = nil
  self.Krowski = nil
  self.DedSecScreens = {}
  self.SecurityCameraList = {}
  self[36] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[36]
  l0._graph = self
  self[62] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[62]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_62_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[25] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[25]
  l0._graph = self
  l0.Enabled = self.f_25_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[44] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[44]
  l0._graph = self
  l0.Out = self.f_44_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[10] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[10]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_10_Started
  l0.Finished = DummyFunction
  self[6] = cbox:CreateBox("domino/Library/common/IOP.IOP_CleanUp.lua")
  l0 = self[6]
  l0._graph = self
  l0.Completed = self.f_6_Completed
  l0.DisconnectedAnimationPlayed = self.f_6_DisconnectedAnimationPlayed
  l0.Out = DummyFunction
  self[3] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[3]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_3_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self[73] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[73]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_73_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[42] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[42]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_42_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self[28] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[28]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_28_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[37] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[37]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_37_Out
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
  self[11] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[11]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_11_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[76] = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self[76]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_76_Disabled
  l0.OnStartAccessCamera = DummyFunction
  l0.OnEndAccessCamera = self.f_76_OnEndAccessCamera
  l0.OnStartExitCamera = DummyFunction
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self[51] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[51]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = DummyFunction
  self[13] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[13]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_13_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
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
  self[34] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[34]
  l0._graph = self
  l0.Out = self.f_34_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[53] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[53]
  l0._graph = self
  l0.Out = self.f_53_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[24] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[24]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_24_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[40] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[40]
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
  self[21] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[21]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[23] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[23]
  l0._graph = self
  l0._DynamicAnchors = {Data = 3}
  l0.Added = self.f_23_Added
  l0.Removed = self.f_23_Removed
  l0.Out = self.f_23_Out
  self[20] = cbox:CreateBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  l0 = self[20]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.WasReset = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = DummyFunction
  self[30] = cbox:CreateBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  l0 = self[30]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.WasReset = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = DummyFunction
  self[39] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[39]
  l0._graph = self
  l0.Enabled = self.f_39_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[26] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[26]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_26_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[4] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[4]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_4_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[38] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[38]
  l0._graph = self
  l0.Out = self.f_38_Out
  l0.MessageCompleted = DummyFunction
  self[14] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[14]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_14_OnUserInPlace
  self[58] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[58]
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
  self[5] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[5]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 3}
  l0.Out = self.f_5_Out
  self[49] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[49]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = self.f_49_Out
  self[47] = cbox:CreateBox("domino/System/IOPPropMonitor.lua")
  l0 = self[47]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.PropSpawned = self.f_47_PropSpawned
  self[32] = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self[32]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_32_EventOccurred
  l0.Out = DummyFunction
  self[7] = cbox:CreateBox("domino/Library/common/IOP.IOP_StartUp.lua")
  l0 = self[7]
  l0._graph = self
  l0.Out = self.f_7_Out
  self[35] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[35]
  l0._graph = self
  l0.Out = self.f_35_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[50] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[50]
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
  self[45] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[45]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_45_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
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
  self[63] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[63]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_63_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
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
  self[59] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[59]
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
  self[1] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[1]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_1_Started
  l0.Finished = DummyFunction
  self[2] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_2_Unloaded
  l0.Reseted = DummyFunction
  self[27] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[27]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self[54] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[54]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = self.f_54_ProfilingEnabled
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[15] = cbox:CreateBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  l0 = self[15]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.WasReset = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = DummyFunction
  self[8] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[8]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[22] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[22]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = self.f_22_StartCompleted
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
  l0 = self[37]
  l0:Input(1)
end
function export:In()
  local l0
  l0 = self[37]
  l0:Input(0)
end
function export:f_67_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_78_Out_0
  l0.Out[1] = self.f_78_Out_1
  l0:In()
end
function export:f_62_Disabled()
  local l0
  self = self._graph
  self:en_67()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0:Show()
end
function export:f_69_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_79_Out_0
  l0.Out[1] = self.f_79_Out_1
  l0:In()
end
function export:f_25_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_43_Out_0
  l0.Out[1] = self.f_43_Out_1
  l0:In()
end
function export:f_44_Out()
  local l0
  self = self._graph
  l0 = self[21]
  l0.Entity = "9223372058622423046"
  l0.SoundId = "soundbinary/3661462182.bnk"
  l0:Play()
end
function export:f_48_Out_0()
  local l0
  self = self._graph
  l0 = self[45]
  l0.Seconds = 1.5
  l0:Start()
end
function export:f_48_Out_1()
  local l0
  self = self._graph
  l0 = self[23]
  l0.Input = self.DedSecScreens
  l0.Data[0] = "9223372060145352378"
  l0.Data[1] = "9223372060145352380"
  l0.Data[2] = "9223372060145352382"
  l0:Add()
end
function export:f_10_Started()
  local l0
  self = self._graph
  l0 = self[49]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050495846439"
  l0:StartCommunication()
end
function export:f_6_Completed()
  local l0
  self = self._graph
  l0 = self[11]
  l0.Seconds = 1
  l0:Start()
end
function export:f_6_DisconnectedAnimationPlayed()
  local l0
  self = self._graph
  l0 = self[13]
  l0.User = self.Krowski
  l0:UnspawnUser()
end
function export:f_52_Out_0()
  local l0
  self = self._graph
  self:en_76()
  l0 = self[76]
  l0:Enable()
end
function export:f_52_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 7}
  l0.Out[0] = self.f_16_Out_0
  l0.Out[1] = self.f_16_Out_1
  l0.Out[2] = self.f_16_Out_2
  l0.Out[3] = self.f_16_Out_3
  l0.Out[4] = self.f_16_Out_4
  l0.Out[5] = self.f_16_Out_5
  l0.Out[6] = self.f_16_Out_6
  l0:In()
end
function export:f_3_SendEventCompleted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_61_Out_0
  l0.Out[1] = self.f_61_Out_1
  l0:In()
end
function export:f_73_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_68_Out_0
  l0.Out[1] = self.f_68_Out_1
  l0:In()
end
function export:f_17_CanExitSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_52_Out_0
  l0.Out[1] = self.f_52_Out_1
  l0:In()
end
function export:f_17_EnterForced()
  local l0
  self = self._graph
  self:en_17()
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0:SetCanExit()
end
function export:f_42_SendEventCompleted()
  local l0
  self = self._graph
  l0 = self[24]
  l0.Seconds = 10.5
  l0:Start()
end
function export:f_28_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_46_Out_0
  l0.Out[1] = self.f_46_Out_1
  l0.Out[2] = self.f_46_Out_2
  l0:In()
end
function export:f_37_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_18_Out
  l0:In()
end
function export:f_43_Out_0()
  local l0
  self = self._graph
  self:en_19()
  l0 = self[19]
  l0:Enable()
end
function export:f_43_Out_1()
  local l0
  self = self._graph
  l0 = self[50]
  l0.HackableEntity = self.Krowski
  l0:DisableProfiling()
end
function export:f_77_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[51]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_11_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[10]
  l0.SoundId = "soundbinary/2422823228.bnk"
  l0:Play()
end
function export:f_76_Disabled()
  local l0
  self = self._graph
  l0 = self[77]
  l0.Seconds = 0.5
  l0:Start()
end
function export:f_76_OnEndAccessCamera()
  local l0
  self = self._graph
  self:en_76()
  l0 = self[76]
  l0:Disable()
end
function export:f_80_Out_0()
  local l0
  self = self._graph
  l0 = self[20]
  l0.Text = {
    section = "HACKING.Interface Messages",
    item = "HackingCellPhone",
    id = "111151"
  }
  l0.TotalTime = 2
  l0:Start()
end
function export:f_80_Out_1()
  local l0
  self = self._graph
  l0 = self[75]
  l0.Seconds = 2
  l0:Start()
end
function export:f_68_Out_0()
  local l0
  self = self._graph
  l0 = self[5]
  l0:Condition(0)
end
function export:f_68_Out_1()
  local l0
  self = self._graph
  self:en_67()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0:Hide()
end
function export:f_18_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[7]
  l0.MainLayer = "L36M020_Main_IOP"
  l0.CheckPoint = "CheckPoint_0"
  l0.CinemaZone = "9223372057880995960"
  l0:In()
end
function export:f_13_UnspawnedUser()
  local l0
  self = self._graph
  l0 = self[8]
  l0.CLO = "9223372056381150877"
  l0:Deactivate()
end
function export:f_57_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_60_Out_0
  l0.Out[1] = self.f_60_Out_1
  l0:In()
end
function export:f_34_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372058622423048"
  l0.SetEnabled = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = self.f_33_Out
  l0:Enable()
end
function export:f_53_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_80_Out_0
  l0.Out[1] = self.f_80_Out_1
  l0:In()
end
function export:f_24_TimeElapsed()
  local l0
  self = self._graph
  self:en_25()
  l0 = self[25]
  l0:EnableHack()
end
function export:f_33_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.DedSecScreens
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0:Show()
end
function export:f_64_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372069921001981"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = self.f_65_Out
  l0:Hide()
end
function export:f_23_Added()
  local l0
  self = self._graph
  l0 = self[23]
  self.DedSecScreens = l0.Target
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.DedSecScreens
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = self.f_9_Out
  l0:Hide()
end
function export:f_23_Out()
  local l0
  self = self._graph
  l0 = self[23]
  self.DedSecScreens = l0.Target
end
function export:f_23_Removed()
  local l0
  self = self._graph
  l0 = self[23]
  self.DedSecScreens = l0.Target
end
function export:f_55_Out_0()
  local l0
  self = self._graph
  l0 = self[53]
  l0.Entity = "9223372058622423046"
  l0.SoundId = "soundbinary/2375199940.bnk"
  l0:Play()
end
function export:f_55_Out_1()
  local l0
  self = self._graph
  l0 = self[54]
  l0.HackableEntity = self.Krowski
  l0:EnableProfiling()
end
function export:f_55_Out_2()
  local l0
  self = self._graph
  self:en_25()
  l0 = self[25]
  l0:DisableHack()
end
function export:f_55_Out_3()
  local l0
  self = self._graph
  self:en_56()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0:Show()
end
function export:f_39_Enabled()
  local l0
  self = self._graph
  l0 = self[40]
  l0.HackableEntity = "9223372056701611940"
  l0:EnableHack()
end
function export:f_46_Out_0()
  local l0
  self = self._graph
  l0 = self[47]
  l0.PropName = "cell_phone_01"
  l0:Enable()
end
function export:f_46_Out_1()
  local l0
  self = self._graph
  l0 = self[39]
  l0.HackableEntity = "9223372056701611942"
  l0:EnableHack()
end
function export:f_46_Out_2()
  local l0
  self = self._graph
  l0 = self[42]
  l0.IopID = "HighPrice"
  l0.IopEvent = "Generic.TeamSpeakEnded"
  l0:SendEvent()
end
function export:f_26_HackSuccess()
  local l0
  self = self._graph
  l0 = self[62]
  l0.HackableEntity = "9223372056701611942"
  l0.ProfileLinkedToHack = 1
  l0:DisableHack()
end
function export:f_4_HackSuccess()
  local l0
  self = self._graph
  l0 = self[63]
  l0.HackableEntity = "9223372056701611940"
  l0.ProfileLinkedToHack = 1
  l0:DisableHack()
end
function export:f_38_Out()
  local l0
  self = self._graph
  l0 = self[1]
  l0.SoundId = "soundbinary/3973683875.bnk"
  l0:Play()
end
function export:f_14_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[14]
  self.Krowski = l0.UserID
  l0 = self[22]
  l0.IopID = "HighPrice"
  l0.PlayerEntity = self.PlayerEntity
  l0.NpcEntity = self.Krowski
  l0.IopRole = "HighPrice.Guy"
  l0:Start()
end
function export:f_41_Out()
  local l0
  self = self._graph
  self:en_56()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0:Hide()
end
function export:f_75_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[3]
  l0.IopID = "HighPrice"
  l0.IopEvent = "HighPrice.PhoneHack"
  l0:SendEvent()
end
function export:f_74_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_71_Out_0
  l0.Out[1] = self.f_71_Out_1
  l0.Out[2] = self.f_71_Out_2
  l0:In()
end
function export:f_5_Out()
  local l0
  self = self._graph
  l0 = self[27]
  l0.IopID = "HighPrice"
  l0.IopEvent = "HighPrice.AllHacksEnd"
  l0:SendEvent()
end
function export:f_49_Out()
  local l0
  self = self._graph
  l0 = self[2]
  l0.LayerName = "L36M020_Main_IOP"
  l0:Unload()
end
function export:f_47_PropSpawned()
  local l0, l1
  self = self._graph
  l0 = self[47]
  l1 = Boxes[PathID("domino/System/Bind_v2.lua")]
  l1.Parent = l0.PropEntity
  l1.Child = "9223372056381150879"
  l1.BoneName = nil
  l1.BoneNameStr = "cell_phone_01"
  l1.RemoveOffset = 1
  l1._graph = self
  l1.Bound = DummyFunction
  l1.UnBound = DummyFunction
  l1.Out = self.f_41_Out
  l1:Bind()
end
function export:f_32_EventOccurred()
  local l0
  self = self._graph
  l0 = self[34]
  l0.Entity = "9223372058622423046"
  l0.SoundId = "soundbinary/1392244399.bnk"
  l0:Play()
end
function export:f_16_Out_0()
  local l0
  self = self._graph
  l0 = self[28]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357373740"
  l0:StartCommunication()
end
function export:f_16_Out_1()
  local l0
  self = self._graph
  l0 = self[26]
  l0.HackableEntity = "9223372056701611942"
  l0:Enable()
end
function export:f_16_Out_2()
  local l0
  self = self._graph
  l0 = self[4]
  l0.HackableEntity = "9223372056701611940"
  l0:Enable()
end
function export:f_16_Out_3()
  local l0
  self = self._graph
  l0 = self[12]
  l0.AutoDisableOnIOPComplete = 1
  l0:Enable()
end
function export:f_16_Out_4()
  local l0
  self = self._graph
  l0 = self[32]
  l0.MonitoredEvent = "HighPrice.TriggerFinale"
  l0:Enable()
end
function export:f_16_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372069921001979"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = self.f_64_Out
  l0:Hide()
end
function export:f_16_Out_6()
  local l0
  self = self._graph
  l0 = self[44]
  l0.Entity = "9223372058622423046"
  l0.SoundId = "soundbinary/1167814481.bnk"
  l0:Play()
end
function export:f_7_Out()
  local l0
  self = self._graph
  l0 = self[38]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L36.L36M020.Objectives.Objective010",
    item = "Objective",
    id = "552697"
  }
  l0:ShowNewObjective()
end
function export:f_35_Out()
  local l0
  self = self._graph
  l0 = self[6]
  l0:In()
end
function export:f_45_TimeElapsed()
  local l0
  self = self._graph
  self:en_17()
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0:ForceEnter()
end
function export:f_19_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_55_Out_0
  l0.Out[1] = self.f_55_Out_1
  l0.Out[2] = self.f_55_Out_2
  l0.Out[3] = self.f_55_Out_3
  l0:In()
end
function export:f_19_HackSuccess()
  local l0
  self = self._graph
  self:en_19()
  l0 = self[19]
  l0:Disable()
end
function export:f_63_Disabled()
  local l0
  self = self._graph
  self:en_70()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0:Show()
end
function export:f_12_IOPComplete()
  local l0
  self = self._graph
  l0 = self[35]
  l0.Entity = "9223372058622423046"
  l0.SoundId = "soundbinary/4006058457.bnk"
  l0:Play()
end
function export:f_71_Out_0()
  local l0
  self = self._graph
  l0 = self[5]
  l0:Condition(1)
end
function export:f_71_Out_1()
  local l0
  self = self._graph
  self:en_69()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0:Hide()
end
function export:f_71_Out_2()
  local l0
  self = self._graph
  self:en_70()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0:Hide()
end
function export:f_1_Started()
  local l0
  self = self._graph
  l0 = self[14]
  l0.CLO = "9223372056381150877"
  l0:Activate()
end
function export:f_2_Unloaded()
  local l0
  self = self._graph
  l0 = self[36]
  l0:Succeed()
end
function export:f_70_Shown()
  local l0
  self = self._graph
  self:en_69()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0:Show()
end
function export:f_54_ProfilingEnabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372056381150879"
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
function export:f_79_Out_0()
  local l0
  self = self._graph
  l0 = self[30]
  l0.Text = {
    section = "HACKING.Interface Messages",
    item = "UploadingVirus",
    id = "171882"
  }
  l0.TotalTime = 5
  l0:Start()
end
function export:f_79_Out_1()
  local l0
  self = self._graph
  l0 = self[74]
  l0.Seconds = 5
  l0:Start()
end
function export:f_9_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372057424388835"
  l0.SetEnabled = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  l0:Disable()
end
function export:f_65_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372069921001983"
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
function export:f_61_Out_0()
  local l0
  self = self._graph
  l0 = self[5]
  l0:Condition(2)
end
function export:f_61_Out_1()
  local l0
  self = self._graph
  l0 = self[57]
  l0.Seconds = 81
  l0:Start()
end
function export:f_60_Out_0()
  local l0
  self = self._graph
  l0 = self[58]
  l0.HackableEntity = "9223372056701611940"
  l0.ProfileLinkedToHack = 1
  l0:DisableHack()
end
function export:f_60_Out_1()
  local l0
  self = self._graph
  l0 = self[59]
  l0.HackableEntity = "9223372056701611942"
  l0.ProfileLinkedToHack = 1
  l0:DisableHack()
end
function export:f_78_Out_0()
  local l0
  self = self._graph
  l0 = self[15]
  l0.Text = {
    section = "HACKING.Interface Messages",
    item = "UploadingVirus",
    id = "171882"
  }
  l0.TotalTime = 5
  l0:Start()
end
function export:f_78_Out_1()
  local l0
  self = self._graph
  l0 = self[73]
  l0.Seconds = 5
  l0:Start()
end
function export:f_22_StartCompleted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_48_Out_0
  l0.Out[1] = self.f_48_Out_1
  l0:In()
end
function export:en_67()
  local l0
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372069921001979"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = self.f_67_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
end
function export:en_69()
  local l0
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372069921001983"
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
function export:en_25()
  local l0
  l0 = self[25]
  l0.HackableEntity = "9223372056381150879"
  l0.ProfileLinkedToHack = 1
end
function export:en_17()
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
  l0.EnterSet = DummyFunction
  l0.CanExitSet = self.f_17_CanExitSet
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = self.f_17_EnterForced
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
end
function export:en_76()
  local l0
  l0 = self[76]
  l0.CameraEntity = "9223372056381150876"
end
function export:en_56()
  local l0, l1
  l0 = self[47]
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
end
function export:en_19()
  local l0
  l0 = self[19]
  l0.HackableEntity = "9223372056381150879"
end
function export:en_70()
  local l0
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372069921001981"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = self.f_70_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
end
_compilerVersion = 4
