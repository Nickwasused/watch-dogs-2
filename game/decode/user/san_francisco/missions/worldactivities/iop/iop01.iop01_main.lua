export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/IOPController.lua")
  cbox:RegisterBox("domino/System/Bind_v2.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CompareStrings_v2.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/Library/common/IOP.IOP_CleanUp.lua")
  cbox:RegisterBox("domino/Library/common/IOP.IOP_StartUp.lua")
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
  self[78] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[78]
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
  self[44] = cbox:CreateBox("domino/Library/common/IOP.IOP_StartUp.lua")
  l0 = self[44]
  l0._graph = self
  l0.Out = self.f_44_Out
  self[32] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[32]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_32_Started
  l0.Finished = DummyFunction
  self[17] = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self[17]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_17_Disabled
  l0.OnStartAccessCamera = DummyFunction
  l0.OnEndAccessCamera = self.f_17_OnEndAccessCamera
  l0.OnStartExitCamera = DummyFunction
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self[61] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[61]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_61_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[7] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[7]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_7_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_7_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[52] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[52]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_52_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_52_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[3] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[3]
  l0._graph = self
  l0.Enabled = self.f_3_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = self.f_3_ProfilingEnabled
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[26] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[26]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self[1] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[1]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_1_Started
  l0.Finished = DummyFunction
  self[34] = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self[34]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_34_Disabled
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_34_EventOccurred
  l0.Out = DummyFunction
  self[35] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[35]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_35_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[43] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[43]
  l0._graph = self
  l0.Out = self.f_43_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[57] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[57]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self[31] = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self[31]
  l0._graph = self
  l0.Enabled = self.f_31_Enabled
  l0.Disabled = self.f_31_Disabled
  l0.ActivateHackables = self.f_31_ActivateHackables
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = DummyFunction
  l0.Out = DummyFunction
  self[15] = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self[15]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = self.f_15_DeactivateHackables
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = DummyFunction
  l0.Out = DummyFunction
  self[64] = cbox:CreateBox("domino/System/IOPPropMonitor.lua")
  l0 = self[64]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.PropSpawned = self.f_64_PropSpawned
  self[39] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[39]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_39_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[47] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[47]
  l0._graph = self
  l0.Out = self.f_47_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
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
  self[59] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[59]
  l0._graph = self
  l0.Out = self.f_59_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[50] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[50]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_50_Started
  l0.Finished = DummyFunction
  self[6] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[6]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_6_Out
  self[48] = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self[48]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_48_EventOccurred
  l0.Out = DummyFunction
  self[85] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[85]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_85_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[60] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[60]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[19] = cbox:CreateBox("domino/Library/common/IOP.IOP_CleanUp.lua")
  l0 = self[19]
  l0._graph = self
  l0.Completed = self.f_19_Completed
  l0.DisconnectedAnimationPlayed = self.f_19_DisconnectedAnimationPlayed
  l0.Out = DummyFunction
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
  self[54] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[54]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = DummyFunction
  self[82] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[82]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_82_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[29] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[29]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_29_Finished
  self[18] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[18]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_18_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[83] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[83]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_83_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[62] = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self[62]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = self.f_62_IOPComplete
  l0.EventOccurred = DummyFunction
  l0.Out = DummyFunction
  self[20] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[20]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_20_Deactivated
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[86] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[86]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_86_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[16] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[16]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_16_OnUserInPlace
  self[68] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[68]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_68_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self[56] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[56]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_56_Out
  self[84] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[84]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_84_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
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
  self[37] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[37]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = self.f_37_StartCompleted
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self[67] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[67]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_67_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[81] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[81]
  l0._graph = self
  l0.Out = self.f_81_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[30] = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self[30]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_30_EventOccurred
  l0.Out = DummyFunction
  self[10] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[10]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_10_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[22] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[22]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_22_Out
  self[27] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[27]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_27_Started
  l0.Finished = DummyFunction
  self[33] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[33]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_33_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[4] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[4]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_4_Unloaded
  l0.Reseted = DummyFunction
  self[41] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[41]
  l0._graph = self
  self[36] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[36]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_36_Out
  self[76] = cbox:CreateBox("domino/System/IOPPropMonitor.lua")
  l0 = self[76]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.PropSpawned = self.f_76_PropSpawned
  self[55] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[55]
  l0._graph = self
  l0.Enabled = self.f_55_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = self.f_55_ProfilingEnabled
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
  l0 = self[6]
  l0:Input(1)
end
function export:In()
  local l0
  l0 = self[6]
  l0:Input(0)
end
function export:f_65_Out()
  local l0, l1
  self = self._graph
  l0 = self[64]
  l1 = Boxes[PathID("domino/System/Bind_v2.lua")]
  l1.Parent = l0.PropEntity
  l1.Child = "9223372043906472728"
  l1.BoneName = nil
  l1.BoneNameStr = "int_pl_a_dancefail_lamp_01"
  l1.RemoveOffset = nil
  l1._graph = self
  l1.Bound = DummyFunction
  l1.UnBound = DummyFunction
  l1.Out = DummyFunction
  l1:Bind()
end
function export:f_44_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_63_Out_0
  l0.Out[1] = self.f_63_Out_1
  l0:In()
end
function export:f_53_Out_0()
  local l0
  self = self._graph
  self:en_35()
  l0 = self[35]
  l0:DisableHack()
end
function export:f_53_Out_1()
  local l0
  self = self._graph
  self:en_10()
  l0 = self[10]
  l0:DisableHack()
end
function export:f_32_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetString.lua")]
  l0.String = "TaylorSwift"
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.Entity = nil
  l0.Player = nil
  l0._graph = self
  l0.Out = self.f_9_Out
  l0:FromString()
end
function export:f_74_Out()
  local l0, l1
  self = self._graph
  l0 = self[76]
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
  l1.Out = self.f_77_Out
  l1:Hide()
end
function export:f_42_Out_0()
  local l0
  self = self._graph
  l0 = self[30]
  l0.MonitoredEvent = "DanceFail.Lights"
  l0:Enable()
end
function export:f_42_Out_1()
  local l0
  self = self._graph
  l0 = self[48]
  l0.MonitoredEvent = "DanceFail.Music"
  l0:Enable()
end
function export:f_17_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_38_Out_0
  l0.Out[1] = self.f_38_Out_1
  l0:In()
end
function export:f_17_OnEndAccessCamera()
  local l0
  self = self._graph
  self:en_17()
  l0 = self[17]
  l0:Disable()
end
function export:f_61_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[57]
  l0.IopID = "DanceFail"
  l0.IopEvent = "DanceFail.Music"
  l0:SendEvent()
end
function export:f_66_Out_0()
  local l0
  self = self._graph
  l0 = self[20]
  l0.CLO = "9223372045652851233"
  l0:Deactivate()
end
function export:f_66_Out_1()
  local l0
  self = self._graph
  l0 = self[64]
  l0.PropName = "iop_dancefail_lampstanding_01"
  l0:Enable()
end
function export:f_66_Out_2()
  local l0
  self = self._graph
  l0 = self[76]
  l0.PropName = "tv_remote_01"
  l0:Enable()
end
function export:f_2_Out_0()
  local l0
  self = self._graph
  l0 = self[85]
  l0.Seconds = 1
  l0:Start()
end
function export:f_2_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = self.Light_01
  l0.SetEnabled = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = self.f_24_Toggled
  l0.Out = DummyFunction
  l0:Toggle()
end
function export:f_2_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = self.Light4
  l0.SetEnabled = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = self.f_58_Toggled
  l0.Out = DummyFunction
  l0:Toggle()
end
function export:f_7_Disabled()
  local l0
  self = self._graph
  l0 = self[22]
  l0:Condition(0)
end
function export:f_7_ProfilingDisabled()
  local l0
  self = self._graph
  self:en_7()
  l0 = self[7]
  l0:DisableHack()
end
function export:f_52_Disabled()
  local l0
  self = self._graph
  l0 = self[22]
  l0:Condition(1)
end
function export:f_52_ProfilingDisabled()
  local l0
  self = self._graph
  self:en_52()
  l0 = self[52]
  l0:DisableHack()
end
function export:f_3_Enabled()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:EnableProfiling()
end
function export:f_3_ProfilingEnabled()
  local l0
  self = self._graph
  l0 = self[33]
  l0.HackableEntity = self.Hackable_RemoteControl
  l0:Enable()
end
function export:f_25_Out_0()
  local l0
  self = self._graph
  l0 = self[84]
  l0.Seconds = 1
  l0:Start()
end
function export:f_25_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareStrings_v2.lua")]
  l0.A = "TaylorSwift"
  l0.B = self.Music
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_eq_B = self.f_12_A_eq_B
  l0.A_neq_B = self.f_12_A_neq_B
  l0.A_contains_B = DummyFunction
  l0.A_ncontains_B = DummyFunction
  l0:In()
end
function export:f_25_Out_2()
  local l0
  self = self._graph
  l0 = self[61]
  l0.Seconds = 0.5
  l0:Start()
end
function export:f_1_Started()
  local l0
  self = self._graph
  l0 = self[27]
  l0.Entity = self.Laptop
  l0.SoundId = "soundbinary/3780007033.bnk"
  l0:Play()
end
function export:f_51_Out_0()
  local l0
  self = self._graph
  self:en_7()
  l0 = self[7]
  l0:DisableProfiling()
end
function export:f_51_Out_1()
  local l0
  self = self._graph
  self:en_52()
  l0 = self[52]
  l0:DisableProfiling()
end
function export:f_34_Disabled()
  local l0
  self = self._graph
  l0 = self[59]
  l0.Entity = self.Laptop
  l0.SoundId = "soundbinary/1663621747.bnk"
  l0:Play()
end
function export:f_34_EventOccurred()
  local l0
  self = self._graph
  self:en_34()
  l0 = self[34]
  l0:Disable()
end
function export:f_35_Disabled()
  local l0
  self = self._graph
  self:en_35()
  l0 = self[35]
  l0:DisableProfiling()
end
function export:f_43_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetString.lua")]
  l0.String = "Metal"
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.Entity = nil
  l0.Player = nil
  l0._graph = self
  l0.Out = self.f_46_Out
  l0:FromString()
end
function export:f_23_Enabled()
  local l0
  self = self._graph
  l0 = self[56]
  l0:Condition(1)
end
function export:f_31_ActivateHackables()
  local l0
  self = self._graph
  l0 = self[31]
  l0:Disable()
end
function export:f_31_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_21_Out_0
  l0.Out[1] = self.f_21_Out_1
  l0.Out[2] = self.f_21_Out_2
  l0.Out[3] = self.f_21_Out_3
  l0.Out[4] = DummyFunction
  l0:In()
end
function export:f_31_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_42_Out_0
  l0.Out[1] = self.f_42_Out_1
  l0:In()
end
function export:f_15_DeactivateHackables()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_53_Out_0
  l0.Out[1] = self.f_53_Out_1
  l0:In()
end
function export:f_64_PropSpawned()
  local l0, l1
  self = self._graph
  l0 = self[64]
  l1 = Boxes[PathID("domino/System/Bind_v2.lua")]
  l1.Parent = l0.PropEntity
  l1.Child = "9223372059003416285"
  l1.BoneName = nil
  l1.BoneNameStr = "int_pl_a_dancefail_lamp_01"
  l1.RemoveOffset = nil
  l1._graph = self
  l1.Bound = DummyFunction
  l1.UnBound = DummyFunction
  l1.Out = self.f_65_Out
  l1:Bind()
end
function export:f_9_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetString.lua")]
  self.Music = l0.Target
end
function export:f_21_Out_0()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:EnableHack()
end
function export:f_21_Out_1()
  local l0
  self = self._graph
  self:en_55()
  l0 = self[55]
  l0:EnableHack()
end
function export:f_21_Out_2()
  local l0
  self = self._graph
  l0 = self[62]
  l0.AutoDisableOnIOPComplete = 1
  l0:Enable()
end
function export:f_21_Out_3()
  local l0
  self = self._graph
  l0 = self[15]
  l0.AutoDisableOnDeactivateHackables = 1
  l0:Enable()
end
function export:f_39_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[68]
  l0.IopID = "DanceFail"
  l0.IopEvent = "Generic.TeamSpeakEnded"
  l0:SendEvent()
end
function export:f_47_Out()
  local l0
  self = self._graph
  l0 = self[39]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357371169"
  l0:StartCommunication()
end
function export:f_24_Toggled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372067854828122"
  l0.SetEnabled = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = self.f_80_Toggled
  l0.Out = DummyFunction
  l0:Toggle()
end
function export:f_72_TimeElapsed()
  local l0
  self = self._graph
  self:en_13()
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0:SetCanExit()
end
function export:f_59_Out()
  local l0
  self = self._graph
  l0 = self[1]
  l0.Entity = self.Laptop
  l0.SoundId = "soundbinary/222753305.bnk"
  l0:Play()
end
function export:f_50_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetString.lua")]
  l0.String = "Metal"
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.Entity = nil
  l0.Player = nil
  l0._graph = self
  l0.Out = self.f_45_Out
  l0:FromString()
end
function export:f_6_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_8_Out
  l0:In()
end
function export:f_48_EventOccurred()
  local l0
  self = self._graph
  l0 = self[43]
  l0.Entity = self.Laptop
  l0.SoundId = "soundbinary/2456373634.bnk"
  l0:Play()
end
function export:f_85_TimeElapsed()
  local l0
  self = self._graph
  self:en_82()
  l0 = self[82]
  l0:EnableHack()
end
function export:f_28_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = self.Light_01
  l0.SetEnabled = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  l0:Enable()
end
function export:f_28_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = self.Light4
  l0.SetEnabled = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  l0:Enable()
end
function export:f_28_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372067854828122"
  l0.SetEnabled = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  l0:Enable()
end
function export:f_19_Completed()
  local l0
  self = self._graph
  l0 = self[29]
  l0.Entity = "9223372044537668953"
  l0.SoundId = "soundbinary/3242316079.bnk"
  l0:Play()
end
function export:f_19_DisconnectedAnimationPlayed()
  local l0
  self = self._graph
  l0 = self[60]
  l0.User = self.DancingGirl
  l0:UnspawnUser()
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[44]
  l0.MainLayer = "IOP01_Main"
  l0.CheckPoint = "CheckPoint_0"
  l0.CinemaZone = "9223372059425049619"
  l0:In()
end
function export:f_71_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[26]
  l0.IopID = "DanceFail"
  l0.IopEvent = "DanceFail.Lights"
  l0:SendEvent()
end
function export:f_82_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_2_Out_0
  l0.Out[1] = self.f_2_Out_1
  l0.Out[2] = self.f_2_Out_2
  l0:In()
end
function export:f_12_A_eq_B()
  local l0
  self = self._graph
  l0 = self[50]
  l0.Entity = self.Laptop
  l0.SoundId = "soundbinary/2456373634.bnk"
  l0:Play()
end
function export:f_12_A_neq_B()
  local l0
  self = self._graph
  l0 = self[32]
  l0.Entity = self.Laptop
  l0.SoundId = "soundbinary/3780007033.bnk"
  l0:Play()
end
function export:f_29_Finished()
  local l0
  self = self._graph
  l0 = self[14]
  l0:Start()
end
function export:f_18_HackSuccess()
  local l0
  self = self._graph
  self:en_82()
  l0 = self[82]
  l0:DisableHack()
end
function export:f_83_Disabled()
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
function export:f_62_IOPComplete()
  local l0
  self = self._graph
  l0 = self[19]
  l0:In()
end
function export:f_20_Deactivated()
  local l0
  self = self._graph
  l0 = self[37]
  l0.IopID = "DanceFail"
  l0.PlayerEntity = self.PlayerEntity
  l0.NpcEntity = self.DancingGirl
  l0.IopRole = "DanceFail.Cindy"
  l0.OffscreenDialogPoint = "9223372044655948983"
  l0:Start()
end
function export:f_86_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[54]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_16_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[16]
  self.DancingGirl = l0.UserID
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_66_Out_0
  l0.Out[1] = self.f_66_Out_1
  l0.Out[2] = self.f_66_Out_2
  l0:In()
end
function export:f_68_SendEventCompleted()
  local l0
  self = self._graph
  self:en_34()
  l0 = self[34]
  l0:Enable()
end
function export:f_56_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_51_Out_0
  l0.Out[1] = self.f_51_Out_1
  l0:In()
end
function export:f_84_TimeElapsed()
  local l0
  self = self._graph
  self:en_83()
  l0 = self[83]
  l0:EnableHack()
end
function export:f_14_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[67]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357370794"
  l0:StartCommunication()
end
function export:f_45_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetString.lua")]
  self.Music = l0.Target
end
function export:f_63_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = self.Light_01
  l0.SetEnabled = 1
  l0._graph = self
  l0.Enabled = self.f_5_Enabled
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  l0:Enable()
end
function export:f_63_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = self.Light4
  l0.SetEnabled = 1
  l0._graph = self
  l0.Enabled = self.f_23_Enabled
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  l0:Enable()
end
function export:f_37_StartCompleted()
  local l0
  self = self._graph
  l0 = self[72]
  l0.Seconds = 1.2
  l0:Start()
end
function export:f_67_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[4]
  l0.LayerName = "IOP01_Main"
  l0:Unload()
end
function export:f_81_Out()
  local l0
  self = self._graph
  self:en_36()
  l0 = self[36]
  l0:Condition(1)
end
function export:f_30_EventOccurred()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_28_Out_0
  l0.Out[1] = self.f_28_Out_1
  l0.Out[2] = self.f_28_Out_2
  l0:In()
end
function export:f_5_Enabled()
  local l0
  self = self._graph
  l0 = self[56]
  l0:Condition(0)
end
function export:f_77_Out()
  local l0
  self = self._graph
  l0 = self[78]
  l0.HackableEntity = "9223372067130875680"
  l0:DisableProfiling()
end
function export:f_58_Toggled()
  local l0
  self = self._graph
  l0 = self[81]
  l0.Entity = "9223372043906472728"
  l0.SoundId = "soundbinary/86470880.bnk"
  l0:Play()
end
function export:f_10_Disabled()
  local l0
  self = self._graph
  self:en_10()
  l0 = self[10]
  l0:DisableProfiling()
end
function export:f_22_Out()
  local l0
  self = self._graph
  l0 = self[16]
  l0.CLO = "9223372045652851233"
  l0:Activate()
end
function export:f_27_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetString.lua")]
  l0.String = "TaylorSwift"
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.Entity = nil
  l0.Player = nil
  l0._graph = self
  l0.Out = self.f_11_Out
  l0:FromString()
end
function export:f_33_HackSuccess()
  local l0
  self = self._graph
  self:en_83()
  l0 = self[83]
  l0:DisableHack()
end
function export:f_4_Unloaded()
  local l0
  self = self._graph
  l0 = self[41]
  l0:Succeed()
end
function export:f_13_CanExitSet()
  local l0
  self = self._graph
  self:en_13()
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0:ForceEnter()
end
function export:f_13_EnterForced()
  local l0
  self = self._graph
  self:en_17()
  l0 = self[17]
  l0:Enable()
end
function export:f_11_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetString.lua")]
  self.Music = l0.Target
  l0 = self[31]
  l0:Enable()
end
function export:f_38_Out_0()
  local l0
  self = self._graph
  l0 = self[86]
  l0.Seconds = 0.5
  l0:Start()
end
function export:f_38_Out_1()
  local l0
  self = self._graph
  l0 = self[47]
  l0.Entity = self.Laptop
  l0.SoundId = "soundbinary/527157958.bnk"
  l0:Play()
end
function export:f_36_Out()
  local l0
  self = self._graph
  l0 = self[71]
  l0.Seconds = 0.2
  l0:Start()
end
function export:f_76_PropSpawned()
  local l0, l1
  self = self._graph
  l0 = self[76]
  l1 = Boxes[PathID("domino/System/Bind_v2.lua")]
  l1.Parent = l0.PropEntity
  l1.Child = "9223372067130875680"
  l1.BoneName = nil
  l1.BoneNameStr = "tv_remote_01"
  l1.RemoveOffset = nil
  l1._graph = self
  l1.Bound = DummyFunction
  l1.UnBound = DummyFunction
  l1.Out = self.f_74_Out
  l1:Bind()
end
function export:f_55_Enabled()
  local l0
  self = self._graph
  self:en_55()
  l0 = self[55]
  l0:EnableProfiling()
end
function export:f_55_ProfilingEnabled()
  local l0
  self = self._graph
  l0 = self[18]
  l0.HackableEntity = self.Hackable_Lightswitch
  l0:Enable()
end
function export:f_46_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetString.lua")]
  self.Music = l0.Target
end
function export:f_80_Toggled()
  local l0
  self = self._graph
  self:en_36()
  l0 = self[36]
  l0:Condition(0)
end
function export:en_17()
  local l0
  l0 = self[17]
  l0.CameraEntity = "9223372044537668953"
end
function export:en_7()
  local l0
  l0 = self[7]
  l0.HackableEntity = self.Remote_Control
end
function export:en_52()
  local l0
  l0 = self[52]
  l0.HackableEntity = self.Lightswitch
end
function export:en_3()
  local l0
  l0 = self[3]
  l0.HackableEntity = self.Remote_Control
end
function export:en_34()
  local l0
  l0 = self[34]
  l0.MonitoredEvent = "DanceFail.Music"
end
function export:en_35()
  local l0
  l0 = self[35]
  l0.HackableEntity = self.Lightswitch
end
function export:en_82()
  local l0
  l0 = self[82]
  l0.HackableEntity = self.Hackable_Lightswitch
end
function export:en_83()
  local l0
  l0 = self[83]
  l0.HackableEntity = self.Hackable_RemoteControl
end
function export:en_10()
  local l0
  l0 = self[10]
  l0.HackableEntity = self.Hackable_RemoteControl
end
function export:en_13()
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
  l0.EnterSet = DummyFunction
  l0.CanExitSet = self.f_13_CanExitSet
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = self.f_13_EnterForced
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
end
function export:en_36()
  local l0
  l0 = self[36]
  l0.AutoReset = 1
end
function export:en_55()
  local l0
  l0 = self[55]
  l0.HackableEntity = self.Lightswitch
end
_compilerVersion = 4
