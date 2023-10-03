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
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/System/IOPPropMonitor.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/playerphonecommunicationmonitor.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/RewardComponentController_V3.lua")
  cbox:RegisterBox("domino/System/SecurityCamController.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:LoadResource("soundbinary/3036195927.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3877280754.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3855211162.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1133574819.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3297307015.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3973683875.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2229907720.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1868746992.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3124046932.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/772214752.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.PasswordStolen = 0
  self.CamerasHTP1 = {}
  self.Characters = {}
  self.NPCRoles = {
    "HackThePlanet1.Engineer",
    "HackThePlanet1.Supervisor"
  }
  self.Supervisor = nil
  self.Engineer = nil
  self.Test = ""
  self.Staff1 = nil
  self.HTP3Cameras = {}
  self.Emir = nil
  self.Tech2 = nil
  self.Tech1 = nil
  self.ComputerHackFail = 0
  self.Hackables = {}
  self.Prop = nil
  self[77] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[77]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_77_Deactivated
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[49] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[49]
  l0._graph = self
  l0._DynamicAnchors = {Data = 3}
  l0.Added = self.f_49_Added
  l0.Removed = self.f_49_Removed
  l0.Out = self.f_49_Out
  self[70] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[70]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self[10] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[10]
  l0._graph = self
  l0.Out = self.f_10_Out
  l0.SetTrue = self.f_10_SetTrue
  l0.SetFalse = self.f_10_SetFalse
  l0.Toggled = self.f_10_Toggled
  l0.SetFromBool = self.f_10_SetFromBool
  self[25] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[25]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_25_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self[85] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[85]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_85_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[2] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_2_Started
  l0.Finished = DummyFunction
  self[56] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[56]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_56_PostOut
  self[15] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[15]
  l0._graph = self
  l0._DynamicAnchors = {Data = 3}
  l0.Added = self.f_15_Added
  l0.Removed = self.f_15_Removed
  l0.Out = self.f_15_Out
  self[8] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[8]
  l0._graph = self
  l0.Out = self.f_8_Out
  l0.SetTrue = self.f_8_SetTrue
  l0.SetFalse = self.f_8_SetFalse
  l0.Toggled = self.f_8_Toggled
  l0.SetFromBool = self.f_8_SetFromBool
  self[65] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[65]
  l0._graph = self
  l0.Out = self.f_65_Out
  l0.MessageCompleted = DummyFunction
  self[71] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[71]
  l0._graph = self
  l0.Out = self.f_71_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
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
  self[62] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[62]
  l0._graph = self
  l0.Out = self.f_62_Out
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
  l0.Disabled = self.f_54_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[58] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[58]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_58_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self[9] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[9]
  l0._graph = self
  l0.Out = self.f_9_Out
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = self.f_9_IOPKickOutComplete
  self[82] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[82]
  l0._graph = self
  l0.Out = self.f_82_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self[22] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[22]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_22_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[59] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[59]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_59_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[60] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[60]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_60_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[76] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[76]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_76_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[20] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[20]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_20_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
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
  self[7] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[7]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[69] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[69]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self[84] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[84]
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
  self[23] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[23]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_23_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[31] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[31]
  l0._graph = self
  l0.Out = self.f_31_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[53] = cbox:CreateBox("domino/System/IOPPropMonitor.lua")
  l0 = self[53]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.PropSpawned = self.f_53_PropSpawned
  self[44] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[44]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_44_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[75] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[75]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_75_Deactivated
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[68] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[68]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_68_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[12] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[12]
  l0._graph = self
  l0.Enabled = self.f_12_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[21] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[21]
  l0._graph = self
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_21_Added
  l0.Removed = self.f_21_Removed
  l0.Out = self.f_21_Out
  self[57] = cbox:CreateBox("domino/System/playerphonecommunicationmonitor.lua")
  l0 = self[57]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_57_Disabled
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_57_OnCommunicationFinished
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
  self[34] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[34]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_34_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[78] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[78]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = self.f_78_EndForced
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self[72] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[72]
  l0._graph = self
  l0.Out = self.f_72_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[66] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[66]
  l0._graph = self
  l0.Out = self.f_66_Out
  l0.MessageCompleted = DummyFunction
  self[83] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[83]
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
  self[48] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[48]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[38] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[38]
  l0._graph = self
  l0.Out = self.f_38_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
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
  self[74] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[74]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_74_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[16] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[16]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_16_OnUserInPlace
  self[19] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[19]
  l0._graph = self
  l0.Out = self.f_19_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[24] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[24]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_24_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[3] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[3]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_3_OnUserInPlace
  self[61] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[61]
  l0._graph = self
  l0.Out = self.f_61_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[55] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[55]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_55_Out
  self[50] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[50]
  l0._graph = self
  l0.Enabled = self.f_50_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[63] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[63]
  l0._graph = self
  l0.Out = self.f_63_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self[67] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[67]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_67_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[17] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[17]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_17_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[46] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[46]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[80] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[80]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = DummyFunction
  self[4] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[4]
  l0._graph = self
  l0.Out = self.f_4_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
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
  l0.Out = self.f_6_Out
  l0:In()
end
function export:f_77_Deactivated()
  local l0
  self = self._graph
  l0 = self[80]
  l0:Condition(1)
end
function export:f_49_Added()
  local l0
  self = self._graph
  l0 = self[49]
  self.Hackables = l0.Target
end
function export:f_49_Out()
  local l0
  self = self._graph
  l0 = self[49]
  self.Hackables = l0.Target
end
function export:f_49_Removed()
  local l0
  self = self._graph
  l0 = self[49]
  self.Hackables = l0.Target
end
function export:f_11_Out_0()
  local l0
  self = self._graph
  l0 = self[20]
  l0.HackableEntity = "9223372047710334649"
  l0.AutoDisable = 1
  l0:Enable()
end
function export:f_11_Out_1()
  local l0
  self = self._graph
  l0 = self[22]
  l0.HackableEntity = "9223372047710334655"
  l0:Enable()
end
function export:f_11_Out_2()
  local l0
  self = self._graph
  l0 = self[24]
  l0.HackableEntity = "9223372047710334653"
  l0:Enable()
end
function export:f_11_Out_3()
  local l0
  self = self._graph
  l0 = self[59]
  l0.HackableEntity = "9223372056074991414"
  l0:Enable()
end
function export:f_11_Out_4()
  local l0
  self = self._graph
  l0 = self[60]
  l0.HackableEntity = "9223372056074991416"
  l0:Enable()
end
function export:f_10_Out()
  local l0
  self = self._graph
  l0 = self[10]
  self.PasswordStolen = l0.Target
  l0 = self[34]
  l0.HackableEntity = "9223372047710334653"
  l0:DisableProfiling()
end
function export:f_10_SetFalse()
  local l0
  self = self._graph
  l0 = self[10]
  self.PasswordStolen = l0.Target
end
function export:f_10_SetFromBool()
  local l0
  self = self._graph
  l0 = self[10]
  self.PasswordStolen = l0.Target
end
function export:f_10_SetTrue()
  local l0
  self = self._graph
  l0 = self[10]
  self.PasswordStolen = l0.Target
end
function export:f_10_Toggled()
  local l0
  self = self._graph
  l0 = self[10]
  self.PasswordStolen = l0.Target
end
function export:f_25_SendEventCompleted()
  local l0
  self = self._graph
  l0 = self[23]
  l0.Seconds = 24
  l0:Start()
end
function export:f_14_Out_0()
  local l0
  self = self._graph
  l0 = self[62]
  l0.ChatLineNum = 0
  l0:TriggerChatLine()
end
function export:f_14_Out_1()
  local l0
  self = self._graph
  l0 = self[7]
  l0.SoundId = "soundbinary/3855211162.bnk"
  l0:Play()
end
function export:f_30_Out_0()
  local l0
  self = self._graph
  self:en_53()
  l0 = self[53]
  l0:Enable()
end
function export:f_30_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.Engineer
  l0.Collisionable = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = DummyFunction
  l0.Out = self.f_32_Out
  l0:DisableCollisions()
end
function export:f_85_Disabled()
  local l0
  self = self._graph
  l0 = self[9]
  l0.PlayerEntity = self.PlayerEntity
  l0:TriggerIOPDisconnectScreenAndKickOut()
end
function export:f_2_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_13_Out_0
  l0.Out[1] = self.f_13_Out_1
  l0.Out[2] = DummyFunction
  l0.Out[3] = self.f_13_Out_3
  l0:In()
end
function export:f_56_PostOut()
  local l0
  self = self._graph
  l0 = self[65]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S13.S13M040.Objectives.Objective020",
    item = "Objective",
    id = "560730"
  }
  l0.ShowPreviousObjectiveComplete = 0
  l0.HasObjectiveMarker = 0
  l0:ShowNewObjective()
end
function export:f_15_Added()
  local l0
  self = self._graph
  l0 = self[15]
  self.CamerasHTP1 = l0.Target
end
function export:f_15_Out()
  local l0
  self = self._graph
  l0 = self[15]
  self.CamerasHTP1 = l0.Target
  l0 = self[49]
  l0.Input = self.Hackables
  l0.Data[0] = "9223372047710334649"
  l0.Data[1] = "9223372056074991414"
  l0.Data[2] = "9223372056074991416"
  l0:Add()
end
function export:f_15_Removed()
  local l0
  self = self._graph
  l0 = self[15]
  self.CamerasHTP1 = l0.Target
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = self[8]
  self.PasswordStolen = l0.Target
end
function export:f_8_SetFalse()
  local l0
  self = self._graph
  l0 = self[8]
  self.PasswordStolen = l0.Target
end
function export:f_8_SetFromBool()
  local l0
  self = self._graph
  l0 = self[8]
  self.PasswordStolen = l0.Target
end
function export:f_8_SetTrue()
  local l0
  self = self._graph
  l0 = self[8]
  self.PasswordStolen = l0.Target
  l0 = self[70]
  l0.ItemDB = "Items.9223372055848075278"
  l0:ExecuteRewards()
end
function export:f_8_Toggled()
  local l0
  self = self._graph
  l0 = self[8]
  self.PasswordStolen = l0.Target
end
function export:f_65_Out()
  local l0
  self = self._graph
  self:en_57()
  l0 = self[57]
  l0:Enable()
end
function export:f_71_Out()
  local l0
  self = self._graph
  l0 = self[72]
  l0.Entity = "9223372060518248888"
  l0.SoundId = "soundbinary/3877280754.bnk"
  l0:Play()
end
function export:f_51_TimeElapsed()
  local l0
  self = self._graph
  self:en_1()
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0:ForceEnter()
end
function export:f_62_Out()
  local l0
  self = self._graph
  l0 = self[68]
  l0.Seconds = 9
  l0:Start()
end
function export:f_54_Disabled()
  local l0
  self = self._graph
  l0 = self[17]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053490873270"
  l0:StartCommunication()
end
function export:f_58_SendEventCompleted()
  local l0
  self = self._graph
  l0 = self[50]
  l0.HackableEntityList = self.Hackables
  l0:EnableHack()
end
function export:f_6_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[2]
  l0.SoundId = "soundbinary/3973683875.bnk"
  l0:Play()
end
function export:f_9_IOPKickOutComplete()
  local l0
  self = self._graph
  l0 = self[78]
  l0.IopID = "HackThePlanet1"
  l0:ForceEnd()
end
function export:f_9_Out()
  local l0
  self = self._graph
  l0 = self[38]
  l0.Entity = "9223372060092560189"
  l0.SoundId = "soundbinary/3124046932.bnk"
  l0:Play()
end
function export:f_32_Out()
  local l0
  self = self._graph
  l0 = self[55]
  l0:Condition(0)
end
function export:f_82_Out()
  local l0
  self = self._graph
  l0 = self[83]
  l0.HackableEntity = "9223372056074991416"
  l0.ProfileLinkedToHack = 1
  l0:DisableHack()
end
function export:f_33_Out()
  local l0
  self = self._graph
  l0 = self[55]
  l0:Condition(1)
end
function export:f_22_HackSuccess()
  local l0
  self = self._graph
  l0 = self[54]
  l0.HackableEntity = "9223372047710334655"
  l0:DisableHack()
end
function export:f_59_HackSuccess()
  local l0
  self = self._graph
  l0 = self[63]
  l0.ItemDB = "Items.9223372059263899072"
  l0:ExecuteRewards()
end
function export:f_52_Bound()
  local l0
  self = self._graph
  self:en_53()
  l0 = self[53]
  l0:Disable()
end
function export:f_60_HackSuccess()
  local l0
  self = self._graph
  l0 = self[4]
  l0.SoundId = "soundbinary/3855211162.bnk"
  l0:Play()
end
function export:f_76_UnspawnedUser()
  local l0
  self = self._graph
  l0 = self[77]
  l0.CLO = "9223372047710334656"
  l0:Deactivate()
end
function export:f_73_Out_0()
  local l0
  self = self._graph
  l0 = self[74]
  l0.User = self.Engineer
  l0:UnspawnUser()
end
function export:f_73_Out_1()
  local l0
  self = self._graph
  l0 = self[76]
  l0.User = self.Supervisor
  l0:UnspawnUser()
end
function export:f_20_HackSuccess()
  local l0
  self = self._graph
  l0 = self[31]
  l0.Entity = "9223372048824442512"
  l0.SoundId = "soundbinary/3036195927.bnk"
  l0:Play()
end
function export:f_27_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[81]
  l0.Seconds = 0.5
  l0:Start()
end
function export:f_23_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_35_Out_0
  l0.Out[1] = self.f_35_Out_1
  l0.Out[2] = self.f_35_Out_2
  l0:In()
end
function export:f_31_Out()
  local l0
  self = self._graph
  l0 = self[25]
  l0.IopID = "HackThePlanet1"
  l0.IopEvent = "HackThePlanet1.Hack1"
  l0:SendEvent()
end
function export:f_53_PropSpawned()
  local l0, l1
  self = self._graph
  l0 = self[53]
  l1 = Boxes[PathID("domino/System/Bind_v2.lua")]
  l1.Parent = l0.PropEntity
  l1.Child = "9223372047710334653"
  l1.BoneName = nil
  l1.BoneNameStr = "cell_phone_01"
  l1.RemoveOffset = nil
  l1._graph = self
  l1.Bound = self.f_52_Bound
  l1.UnBound = DummyFunction
  l1.Out = DummyFunction
  l1:Bind()
end
function export:f_44_Disabled()
  local l0
  self = self._graph
  l0 = self[8]
  l0:True()
end
function export:f_75_Deactivated()
  local l0
  self = self._graph
  l0 = self[80]
  l0:Condition(0)
end
function export:f_35_Out_0()
  local l0
  self = self._graph
  self:en_12()
  l0 = self[12]
  l0:EnableHack()
end
function export:f_35_Out_1()
  local l0
  self = self._graph
  self:en_12()
  l0 = self[12]
  l0:EnableProfiling()
end
function export:f_35_Out_2()
  local l0
  self = self._graph
  l0 = self[46]
  l0.Entity = "9223372048824442512"
  l0.SoundId = "soundbinary/1868746992.bnk"
  l0:Play()
end
function export:f_68_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[69]
  l0.ChatLineNum = 0
  l0:HideChat()
end
function export:f_12_Enabled()
  local l0
  self = self._graph
  l0 = self[84]
  l0.HackableEntity = self.Engineer
  l0:DisableProfiling()
end
function export:f_21_Added()
  local l0
  self = self._graph
  l0 = self[21]
  self.Characters = l0.Target
  l0 = self[5]
  l0.IopID = "HackThePlanet1"
  l0.PlayerEntity = self.PlayerEntity
  l0.NpcEntityList = self.Characters
  l0.IopRoleList = self.NPCRoles
  l0:Start()
end
function export:f_21_Out()
  local l0
  self = self._graph
  l0 = self[21]
  self.Characters = l0.Target
end
function export:f_21_Removed()
  local l0
  self = self._graph
  l0 = self[21]
  self.Characters = l0.Target
end
function export:f_57_Disabled()
  local l0
  self = self._graph
  l0 = self[58]
  l0.IopID = "HackThePlanet1"
  l0.IopEvent = "Generic.TeamSpeakEnded"
  l0:SendEvent()
end
function export:f_57_OnCommunicationFinished()
  local l0
  self = self._graph
  self:en_57()
  l0 = self[57]
  l0:Disable()
end
function export:f_79_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[56]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_34_ProfilingDisabled()
  local l0
  self = self._graph
  l0 = self[19]
  l0.Entity = "9223372060092560189"
  l0.SoundId = "soundbinary/1133574819.bnk"
  l0:Play()
end
function export:f_78_EndForced()
  self = self._graph
  self:Out()
end
function export:f_72_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_73_Out_0
  l0.Out[1] = self.f_73_Out_1
  l0:In()
end
function export:f_66_Out()
  local l0
  self = self._graph
  l0 = self[27]
  l0.Seconds = 2.5
  l0:Start()
end
function export:f_5_StartCompleted()
  local l0
  self = self._graph
  l0 = self[51]
  l0.Seconds = 0.5
  l0:Start()
end
function export:f_38_Out()
  local l0
  self = self._graph
  l0 = self[71]
  l0.Entity = "9223372060092560189"
  l0.SoundId = "soundbinary/2229907720.bnk"
  l0:Play()
end
function export:f_81_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[85]
  l0.HackableEntityList = self.CamerasHTP1
  l0:DisableHack()
end
function export:f_13_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_18_Out_0
  l0.Out[1] = self.f_18_Out_1
  l0:In()
end
function export:f_13_Out_1()
  local l0
  self = self._graph
  l0 = self[10]
  l0:False()
end
function export:f_13_Out_3()
  local l0
  self = self._graph
  l0 = self[15]
  l0.Input = self.CamerasHTP1
  l0.Data[0] = "9223372047710334661"
  l0.Data[1] = "9223372047710334659"
  l0.Data[2] = "9223372047710334651"
  l0:Add()
end
function export:f_74_UnspawnedUser()
  local l0
  self = self._graph
  l0 = self[75]
  l0.CLO = "9223372047710334657"
  l0:Deactivate()
end
function export:f_16_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[16]
  self.Engineer = l0.UserID
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_30_Out_0
  l0.Out[1] = self.f_30_Out_1
  l0:In()
end
function export:f_1_CanExitSet()
  local l0
  self = self._graph
  l0 = self[79]
  l0.Seconds = 0.5
  l0:Start()
end
function export:f_1_EnterForced()
  local l0
  self = self._graph
  self:en_1()
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0:SetCanExit()
end
function export:f_19_Out()
  local l0
  self = self._graph
  l0 = self[61]
  l0.Entity = "9223372060092560189"
  l0.SoundId = "soundbinary/772214752.bnk"
  l0:Play()
end
function export:f_24_HackSuccess()
  local l0
  self = self._graph
  l0 = self[44]
  l0.HackableEntity = "9223372047710334653"
  l0:DisableHack()
end
function export:f_3_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[3]
  self.Supervisor = l0.UserID
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.Supervisor
  l0.Collisionable = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = DummyFunction
  l0.Out = self.f_33_Out
  l0:DisableCollisions()
end
function export:f_61_Out()
  local l0
  self = self._graph
  l0 = self[48]
  l0.Entity = "9223372060518248888"
  l0.SoundId = "soundbinary/3297307015.bnk"
  l0:Play()
end
function export:f_55_Out()
  local l0
  self = self._graph
  l0 = self[21]
  l0.Input = self.Characters
  l0.Data[0] = self.Engineer
  l0.Data[1] = self.Supervisor
  l0:Add()
end
function export:f_50_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_11_Out_0
  l0.Out[1] = self.f_11_Out_1
  l0.Out[2] = self.f_11_Out_2
  l0.Out[3] = self.f_11_Out_3
  l0.Out[4] = self.f_11_Out_4
  l0:In()
end
function export:f_63_Out()
  local l0
  self = self._graph
  l0 = self[67]
  l0.Seconds = 1
  l0:Start()
end
function export:f_67_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_14_Out_0
  l0.Out[1] = self.f_14_Out_1
  l0:In()
end
function export:f_18_Out_0()
  local l0
  self = self._graph
  l0 = self[16]
  l0.CLO = "9223372047710334657"
  l0:Activate()
end
function export:f_18_Out_1()
  local l0
  self = self._graph
  l0 = self[3]
  l0.CLO = "9223372047710334656"
  l0:Activate()
end
function export:f_17_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[66]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S13.S13M040.Objectives.Objective020",
    item = "Objective",
    id = "560730"
  }
  l0:ShowLastObjectiveComplete()
end
function export:f_4_Out()
  local l0
  self = self._graph
  l0 = self[82]
  l0.ItemDB = "Items.9223372059251142461"
  l0:ExecuteRewards()
end
function export:en_53()
  local l0
  l0 = self[53]
  l0.PropName = "cell_phone_01"
end
function export:en_12()
  local l0
  l0 = self[12]
  l0.HackableEntity = "9223372047710334653"
end
function export:en_57()
  local l0
  l0 = self[57]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372049406437033"
end
function export:en_1()
  local l0
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = "9223372047710334661"
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
_compilerVersion = 4
