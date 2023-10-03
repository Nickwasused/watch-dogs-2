export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CLOController.lua")
  cbox:RegisterBox("Domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/ConsoleCommand_v2.lua")
  cbox:RegisterBox("Domino/System/DynamicMediaController.lua")
  cbox:RegisterBox("Domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Interact_Gameplay.lua")
  cbox:RegisterBox("Domino/System/MediaSystemCustomBroadcastController.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("Domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("Domino/System/RandomOutput_v2.lua")
  cbox:RegisterBox("Domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/SimpleNode.lua")
  cbox:RegisterBox("Domino/System/Timer_v2.lua")
  cbox:LoadResource("soundbinary/2490052741.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/277817987.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/506957169.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1514561593.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/715823344.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3146719970.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3471451663.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/926335069.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2729054434.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/780570596.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2090895693.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3737346209.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1159630574.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3027465958.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3855984516.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2091766170.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3573137938.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3569225223.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1492278381.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/441953762.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2007099087.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2619656982.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/4041528868.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3382224679.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2067434334.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1090532945.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1218943957.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1817971329.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2811921759.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2186590273.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/471655363.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3583853970.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2202863721.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3810367185.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1307252910.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.Out_Annotations = DummyFunction
  self.Out_Wedding = DummyFunction
  self.Out_Thunderdome = DummyFunction
  self.SCR_Cryptobelisk_Out = DummyFunction
  self.AmbianceVid_Out = DummyFunction
  self.DedSecClueLoopStopOut = DummyFunction
  self.PlayerEntity = nil
  self.Horatio = nil
  self.P8_Male01 = nil
  self.P8_Male02 = nil
  self.P8_Female01 = nil
  self.Man01 = nil
  self.Man02 = nil
  self.Man03 = nil
  self.Man04 = nil
  self.Female01 = nil
  self.Female02 = nil
  self.Female03 = nil
  self.Warrior = nil
  self.Tobias = nil
  self.IsContestGoing = 0
  self[83] = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self[83]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_83_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[64] = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self[64]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_64_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[50] = cbox:CreateBox("Domino/System/RandomOutput_v2.lua")
  l0 = self[50]
  l0._graph = self
  l0._DynamicAnchors = {Probability = 5, Output = 5}
  l0.Out = DummyFunction
  l0.ResetOut = DummyFunction
  l0.None = DummyFunction
  l0.Output[0] = self.f_50_Output_0
  l0.Output[1] = self.f_50_Output_1
  l0.Output[2] = self.f_50_Output_2
  l0.Output[3] = self.f_50_Output_3
  l0.Output[4] = self.f_50_Output_4
  self[52] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[52]
  l0._graph = self
  l0._DynamicAnchors = {Input = 5}
  l0.Out = self.f_52_Out
  self[54] = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self[54]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_54_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[68] = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self[68]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_68_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[98] = cbox:CreateBox("Domino/System/HackableController_v2.lua")
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
  self[78] = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self[78]
  l0._graph = self
  l0.Activated = self.f_78_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_78_OnUserInPlace
  self[29] = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self[29]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[99] = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self[99]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_99_OnUserInPlace
  self[26] = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self[26]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[66] = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self[66]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_66_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[41] = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self[41]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_41_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[36] = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self[36]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_36_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[40] = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self[40]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_40_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[33] = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self[33]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_33_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[57] = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self[57]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_57_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[35] = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self[35]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_35_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[10] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[10]
  l0._graph = self
  l0.Out = self.f_10_Out
  l0.SetTrue = self.f_10_SetTrue
  l0.SetFalse = self.f_10_SetFalse
  l0.Toggled = self.f_10_Toggled
  l0.SetFromBool = self.f_10_SetFromBool
  self[69] = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self[69]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_69_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[21] = cbox:CreateBox("Domino/System/Timer_v2.lua")
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
  self[84] = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self[84]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_84_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[58] = cbox:CreateBox("Domino/System/RandomOutput_v2.lua")
  l0 = self[58]
  l0._graph = self
  l0._DynamicAnchors = {Probability = 4, Output = 4}
  l0.Out = DummyFunction
  l0.ResetOut = DummyFunction
  l0.None = DummyFunction
  l0.Output[0] = self.f_58_Output_0
  l0.Output[1] = self.f_58_Output_1
  l0.Output[2] = self.f_58_Output_2
  l0.Output[3] = self.f_58_Output_3
  self[27] = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self[27]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[73] = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self[73]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_73_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[31] = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self[31]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_31_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[71] = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self[71]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_71_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[37] = cbox:CreateBox("Domino/System/Timer_v2.lua")
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
  self[8] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[8]
  l0._graph = self
  l0.Out = self.f_8_Out
  l0.SetTrue = self.f_8_SetTrue
  l0.SetFalse = self.f_8_SetFalse
  l0.Toggled = self.f_8_Toggled
  l0.SetFromBool = self.f_8_SetFromBool
  self[87] = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self[87]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_87_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[46] = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self[46]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_46_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[28] = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self[28]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[97] = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self[97]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_97_OnUserInPlace
  self[20] = cbox:CreateBox("Domino/System/RandomOutput_v2.lua")
  l0 = self[20]
  l0._graph = self
  l0._DynamicAnchors = {Probability = 3, Output = 3}
  l0.Out = DummyFunction
  l0.ResetOut = DummyFunction
  l0.None = DummyFunction
  l0.Output[0] = self.f_20_Output_0
  l0.Output[1] = self.f_20_Output_1
  l0.Output[2] = self.f_20_Output_2
  self[80] = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self[80]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_80_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[81] = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self[81]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_81_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[86] = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self[86]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_86_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[34] = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self[34]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_34_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[23] = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self[23]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[100] = cbox:CreateBox("Domino/System/HackableController_v2.lua")
  l0 = self[100]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_100_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[19] = cbox:CreateBox("Domino/System/PlaySound_v2.lua")
  l0 = self[19]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_19_Finished
  self[56] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[56]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_56_Out
  self[11] = cbox:CreateBox("Domino/System/Timer_v2.lua")
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
  self[1] = cbox:CreateBox("Domino/System/ConsoleCommand_v2.lua")
  l0 = self[1]
  l0._graph = self
  l0.Enabled = self.f_1_Enabled
  l0.Disabled = DummyFunction
  l0.Executed = DummyFunction
  self[77] = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self[77]
  l0._graph = self
  l0.Activated = self.f_77_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_77_OnUserInPlace
  self[70] = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self[70]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_70_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[74] = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self[74]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = self.f_74_ListFinished
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[24] = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self[24]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[38] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[38]
  l0._graph = self
  l0._DynamicAnchors = {Input = 5}
  l0.Out = self.f_38_Out
  self[60] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[60]
  l0._graph = self
  l0._DynamicAnchors = {Input = 4}
  l0.Out = self.f_60_Out
  self[79] = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self[79]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_79_OnUserInPlace
  self[22] = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.lua")
  l0 = self[22]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_22_Stopped
  l0.Interacted = self.f_22_Interacted
  self[5] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[5]
  l0._graph = self
  l0._DynamicAnchors = {Input = 5}
  l0.Out = self.f_5_Out
  self[44] = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self[44]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_44_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[75] = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self[75]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_75_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[53] = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self[53]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_53_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[65] = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self[65]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_65_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[67] = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self[67]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_67_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[61] = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self[61]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_61_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[47] = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self[47]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_47_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[82] = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self[82]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_82_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[32] = cbox:CreateBox("Domino/System/RandomOutput_v2.lua")
  l0 = self[32]
  l0._graph = self
  l0._DynamicAnchors = {Probability = 5, Output = 5}
  l0.Out = DummyFunction
  l0.ResetOut = DummyFunction
  l0.None = DummyFunction
  l0.Output[0] = self.f_32_Output_0
  l0.Output[1] = self.f_32_Output_1
  l0.Output[2] = self.f_32_Output_2
  l0.Output[3] = self.f_32_Output_3
  l0.Output[4] = self.f_32_Output_4
  self[59] = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self[59]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_59_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[72] = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self[72]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_72_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:BikerWedding()
  local l0
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_25_Out
  l0:In()
end
function export:DedsecClueLoop_IN()
  local l0
  l0 = self[8]
  l0:True()
end
function export:DedsecClueLoopStop()
  local l0
  l0 = self[10]
  l0:False()
end
function export:DJMusic_IN()
  local l0
  self:en_22()
  l0 = self[22]
  l0:Start()
end
function export:In()
  local l0
  l0 = self[1]
  l0.Command = "Narrative"
  l0:Enable()
end
function export:JabberwockyVid()
  local l0
  l0 = Boxes[PathID("Domino/System/DynamicMediaController.lua")]
  l0.EntityId = nil
  l0.Channel = "Bar"
  l0._graph = self
  l0.ChannelChanged = self.f_42_ChannelChanged
  l0.Out = DummyFunction
  l0:ChangeBroadcastChannelOnEntity()
end
function export:SCR_Cryptobelisk()
  local l0
  l0 = self[19]
  l0.SoundId = "soundbinary/1218943957.bnk"
  l0:Play()
end
function export:Thunderdome()
  local l0
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 10}
  l0.Out[0] = DummyFunction
  l0.Out[1] = DummyFunction
  l0.Out[2] = DummyFunction
  l0.Out[3] = DummyFunction
  l0.Out[4] = DummyFunction
  l0.Out[5] = DummyFunction
  l0.Out[6] = DummyFunction
  l0.Out[7] = DummyFunction
  l0.Out[8] = self.f_55_Out_8
  l0.Out[9] = self.f_55_Out_9
  l0:In()
end
function export:f_15_A_is_True()
  local l0
  self = self._graph
  l0 = self[84]
  l0.Entity = self.P8_Female01
  l0.SoundId = "soundbinary/926335069.bnk"
  l0:Start()
end
function export:f_83_Finished()
  local l0
  self = self._graph
  l0 = self[60]
  l0:Input(3)
end
function export:f_115_A_is_True()
  local l0
  self = self._graph
  l0 = self[66]
  l0.Entity = self.Josh_Clue
  l0.SoundId = "soundbinary/3027465958.bnk"
  l0:Start()
end
function export:f_64_Finished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsContestGoing
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_114_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_50_Output_0()
  local l0
  self = self._graph
  l0 = self[40]
  l0.Entity = self.Wrench_Clue
  l0.SoundId = "soundbinary/2490052741.bnk"
  l0:Start()
end
function export:f_50_Output_1()
  local l0
  self = self._graph
  l0 = self[41]
  l0.Entity = self.Wrench_Clue
  l0.SoundId = "soundbinary/471655363.bnk"
  l0:Start()
end
function export:f_50_Output_2()
  local l0
  self = self._graph
  l0 = self[44]
  l0.Entity = self.Wrench_Clue
  l0.SoundId = "soundbinary/1090532945.bnk"
  l0:Start()
end
function export:f_50_Output_3()
  local l0
  self = self._graph
  l0 = self[46]
  l0.Entity = self.Wrench_Clue
  l0.SoundId = "soundbinary/1307252910.bnk"
  l0:Start()
end
function export:f_50_Output_4()
  local l0
  self = self._graph
  l0 = self[47]
  l0.Entity = self.Wrench_Clue
  l0.SoundId = "soundbinary/3737346209.bnk"
  l0:Start()
end
function export:f_52_Out()
  local l0
  self = self._graph
  l0 = self[5]
  l0:Input(2)
end
function export:f_54_Finished()
  local l0
  self = self._graph
  l0 = self[60]
  l0:Input(1)
end
function export:f_68_Finished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsContestGoing
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_110_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_9_A_is_True()
  local l0
  self = self._graph
  l0 = self[20]
  l0.AutoReset = 1
  l0:In()
end
function export:f_42_ChannelChanged()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = "CustomBroadcasts.9223372047457491197"
  l0.OnGenericChannel = nil
  l0.OnShopChannel = nil
  l0.OnBarChannel = 1
  l0.PlayOnLoad = nil
  l0.ApplyOnLoad = nil
  l0._graph = self
  l0.LoadAndPlayRequested = DummyFunction
  l0.EndedAllCustomMediaBroadcasts = DummyFunction
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  l0:LoadAndPlayCustomBroadcast()
end
function export:f_114_A_is_True()
  local l0
  self = self._graph
  l0 = self[53]
  l0.Entity = self.Josh_Clue
  l0.SoundId = "soundbinary/2091766170.bnk"
  l0:Start()
end
function export:f_98_Disabled()
  local l0
  self = self._graph
  self:en_98()
  l0 = self[98]
  l0:DisableProfiling()
end
function export:f_78_Activated()
  local l0
  self = self._graph
  l0 = self[79]
  l0.CLO = "9223372055352992434"
  l0:Activate()
end
function export:f_78_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[78]
  self.P8_Male02 = l0.UserID
end
function export:f_102_A_is_True()
  local l0
  self = self._graph
  l0 = self[87]
  l0.Entity = self.Horatio_Clue
  l0.SoundId = "soundbinary/506957169.bnk"
  l0:Start()
end
function export:f_99_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[99]
  self.Tobias = l0.UserID
  self:en_100()
  l0 = self[100]
  l0:DisableHack()
end
function export:f_13_A_is_True()
  local l0
  self = self._graph
  l0 = self[81]
  l0.Entity = self.P8_Female01
  l0.SoundId = "soundbinary/2067434334.bnk"
  l0:Start()
end
function export:f_66_Finished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsContestGoing
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_116_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_25_Out()
  self = self._graph
  self:Out_Wedding()
end
function export:f_12_A_is_True()
  local l0
  self = self._graph
  l0 = self[80]
  l0.Entity = self.P8_Male01
  l0.SoundId = "soundbinary/3810367185.bnk"
  l0:Start()
end
function export:f_103_A_is_True()
  local l0
  self = self._graph
  l0 = self[83]
  l0.Entity = self.Horatio_Clue
  l0.SoundId = "soundbinary/2090895693.bnk"
  l0:Start()
end
function export:f_111_A_is_True()
  local l0
  self = self._graph
  l0 = self[59]
  l0.Entity = self.Josh_Clue
  l0.SoundId = "soundbinary/2007099087.bnk"
  l0:Start()
end
function export:f_41_Finished()
  local l0
  self = self._graph
  l0 = self[52]
  l0:Input(1)
end
function export:f_36_Finished()
  local l0
  self = self._graph
  l0 = self[38]
  l0:Input(4)
end
function export:f_40_Finished()
  local l0
  self = self._graph
  l0 = self[52]
  l0:Input(0)
end
function export:f_33_Finished()
  local l0
  self = self._graph
  l0 = self[38]
  l0:Input(1)
end
function export:f_57_Finished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsContestGoing
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_113_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_35_Finished()
  local l0
  self = self._graph
  l0 = self[38]
  l0:Input(3)
end
function export:f_10_Out()
  local l0
  self = self._graph
  l0 = self[10]
  self.IsContestGoing = l0.Target
end
function export:f_10_SetFalse()
  local l0
  self = self._graph
  l0 = self[10]
  self.IsContestGoing = l0.Target
  l0 = self[11]
  l0:Start()
end
function export:f_10_SetFromBool()
  local l0
  self = self._graph
  l0 = self[10]
  self.IsContestGoing = l0.Target
end
function export:f_10_SetTrue()
  local l0
  self = self._graph
  l0 = self[10]
  self.IsContestGoing = l0.Target
end
function export:f_10_Toggled()
  local l0
  self = self._graph
  l0 = self[10]
  self.IsContestGoing = l0.Target
end
function export:f_69_Finished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsContestGoing
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_109_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_107_A_is_True()
  local l0
  self = self._graph
  l0 = self[75]
  l0.Entity = self.Josh_Clue
  l0.SoundId = "soundbinary/1492278381.bnk"
  l0.UseFacial = 0
  l0:Start()
end
function export:f_21_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsContestGoing
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_12_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_84_Finished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsContestGoing
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
function export:f_58_Output_0()
  local l0
  self = self._graph
  l0 = self[64]
  l0.Entity = self.Josh_Clue
  l0.SoundId = "soundbinary/3573137938.bnk"
  l0.UseFacial = 0
  l0:Start()
end
function export:f_58_Output_1()
  local l0
  self = self._graph
  l0 = self[61]
  l0.Entity = self.Josh_Clue
  l0.SoundId = "soundbinary/3146719970.bnk"
  l0.UseFacial = 0
  l0:Start()
end
function export:f_58_Output_2()
  local l0
  self = self._graph
  l0 = self[70]
  l0.Entity = self.Josh_Clue
  l0.SoundId = "soundbinary/3382224679.bnk"
  l0.UseFacial = 0
  l0:Start()
end
function export:f_58_Output_3()
  local l0
  self = self._graph
  l0 = self[73]
  l0.Entity = self.Josh_Clue
  l0.SoundId = "soundbinary/2729054434.bnk"
  l0.UseFacial = 0
  l0:Start()
end
function export:f_101_A_is_True()
  local l0
  self = self._graph
  l0 = self[86]
  l0.Entity = self.P8_Male01
  l0.SoundId = "soundbinary/3569225223.bnk"
  l0:Start()
end
function export:f_106_A_is_True()
  local l0
  self = self._graph
  l0 = self[74]
  l0.Entity = self.Josh_Clue
  l0.SoundId = "soundbinary/715823344.bnk"
  l0:Start()
end
function export:f_73_Finished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsContestGoing
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_104_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_55_Out_8()
  local l0
  self = self._graph
  l0 = self[97]
  l0.CLO = "9223372056242261389"
  l0:Activate()
end
function export:f_55_Out_9()
  local l0
  self = self._graph
  l0 = self[99]
  l0.CLO = "9223372056242261390"
  l0:Activate()
end
function export:f_113_A_is_True()
  local l0
  self = self._graph
  l0 = self[54]
  l0.Entity = self.Josh_Clue
  l0.SoundId = "soundbinary/1514561593.bnk"
  l0.UseFacial = 0
  l0:Start()
end
function export:f_31_Finished()
  local l0
  self = self._graph
  l0 = self[38]
  l0:Input(0)
end
function export:f_71_Finished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsContestGoing
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_106_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_37_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsContestGoing
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_9_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = self[8]
  self.IsContestGoing = l0.Target
end
function export:f_8_SetFalse()
  local l0
  self = self._graph
  l0 = self[8]
  self.IsContestGoing = l0.Target
end
function export:f_8_SetFromBool()
  local l0
  self = self._graph
  l0 = self[8]
  self.IsContestGoing = l0.Target
end
function export:f_8_SetTrue()
  local l0
  self = self._graph
  l0 = self[8]
  self.IsContestGoing = l0.Target
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_39_Out_0
  l0.Out[1] = self.f_39_Out_1
  l0:In()
end
function export:f_8_Toggled()
  local l0
  self = self._graph
  l0 = self[8]
  self.IsContestGoing = l0.Target
end
function export:f_87_Finished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsContestGoing
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_103_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_46_Finished()
  local l0
  self = self._graph
  l0 = self[52]
  l0:Input(3)
end
function export:f_30_Out_0()
  local l0
  self = self._graph
  l0 = self[23]
  l0.CLO = "9223372055648681260"
  l0:TriggerBhv()
end
function export:f_30_Out_1()
  local l0
  self = self._graph
  l0 = self[24]
  l0.CLO = "9223372055648681259"
  l0:TriggerBhv()
end
function export:f_30_Out_2()
  local l0
  self = self._graph
  l0 = self[26]
  l0.CLO = "9223372055648681261"
  l0:TriggerBhv()
end
function export:f_30_Out_3()
  local l0
  self = self._graph
  l0 = self[27]
  l0.CLO = "9223372055648681263"
  l0:TriggerBhv()
end
function export:f_30_Out_4()
  local l0
  self = self._graph
  l0 = self[28]
  l0.CLO = "9223372055648681262"
  l0:TriggerBhv()
end
function export:f_30_Out_5()
  local l0
  self = self._graph
  l0 = self[29]
  l0.CLO = "9223372055648681252"
  l0:TriggerBhv()
end
function export:f_97_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[97]
  self.Warrior = l0.UserID
  self:en_98()
  l0 = self[98]
  l0:DisableHack()
end
function export:f_20_Output_0()
  local l0
  self = self._graph
  l0 = self[32]
  l0:In()
end
function export:f_20_Output_1()
  local l0
  self = self._graph
  l0 = self[50]
  l0:In()
end
function export:f_20_Output_2()
  local l0
  self = self._graph
  l0 = self[56]
  l0:Input(0)
end
function export:f_80_Finished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsContestGoing
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_13_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_81_Finished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsContestGoing
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_14_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_86_Finished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsContestGoing
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_102_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_34_Finished()
  local l0
  self = self._graph
  l0 = self[38]
  l0:Input(2)
end
function export:f_105_A_is_True()
  local l0
  self = self._graph
  l0 = self[71]
  l0.Entity = self.Josh_Clue
  l0.SoundId = "soundbinary/2811921759.bnk"
  l0.UseFacial = 0
  l0:Start()
end
function export:f_110_A_is_True()
  local l0
  self = self._graph
  l0 = self[67]
  l0.Entity = self.Josh_Clue
  l0.SoundId = "soundbinary/4041528868.bnk"
  l0:Start()
end
function export:f_112_A_is_True()
  local l0
  self = self._graph
  l0 = self[57]
  l0.Entity = self.Josh_Clue
  l0.SoundId = "soundbinary/780570596.bnk"
  l0:Start()
end
function export:f_100_Disabled()
  local l0
  self = self._graph
  self:en_100()
  l0 = self[100]
  l0:DisableProfiling()
end
function export:f_108_A_is_True()
  local l0
  self = self._graph
  l0 = self[69]
  l0.Entity = self.Josh_Clue
  l0.SoundId = "soundbinary/1817971329.bnk"
  l0:Start()
end
function export:f_19_Finished()
  self = self._graph
  self:SCR_Cryptobelisk_Out()
end
function export:f_56_Out()
  local l0
  self = self._graph
  l0 = self[58]
  l0:In()
end
function export:f_11_TimeElapsed()
  self = self._graph
  self:DedSecClueLoopStopOut()
end
function export:f_1_Enabled()
  self = self._graph
  self:Out_Annotations()
end
function export:f_77_Activated()
  local l0
  self = self._graph
  l0 = self[78]
  l0.CLO = "9223372055352992435"
  l0:Activate()
end
function export:f_77_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[77]
  self.P8_Male01 = l0.UserID
end
function export:f_116_A_is_True()
  local l0
  self = self._graph
  l0 = self[65]
  l0.Entity = self.Josh_Clue
  l0.SoundId = "soundbinary/2186590273.bnk"
  l0.UseFacial = 0
  l0:Start()
end
function export:f_70_Finished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsContestGoing
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_108_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_74_ListFinished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsContestGoing
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_107_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_38_Out()
  local l0
  self = self._graph
  l0 = self[5]
  l0:Input(1)
end
function export:f_60_Out()
  local l0
  self = self._graph
  l0 = self[5]
  l0:Input(3)
end
function export:f_79_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[79]
  self.P8_Female01 = l0.UserID
end
function export:f_109_A_is_True()
  local l0
  self = self._graph
  l0 = self[68]
  l0.Entity = self.Josh_Clue
  l0.SoundId = "soundbinary/2202863721.bnk"
  l0.UseFacial = 0
  l0:Start()
end
function export:f_22_Interacted()
  local l0
  self = self._graph
  self:en_22()
  l0 = self[22]
  l0:Stop()
end
function export:f_22_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 6}
  l0.Out[0] = self.f_30_Out_0
  l0.Out[1] = self.f_30_Out_1
  l0.Out[2] = self.f_30_Out_2
  l0.Out[3] = self.f_30_Out_3
  l0.Out[4] = self.f_30_Out_4
  l0.Out[5] = self.f_30_Out_5
  l0:In()
end
function export:f_5_Out()
  local l0
  self = self._graph
  l0 = self[37]
  l0.Seconds = 5
  l0:Start()
end
function export:f_44_Finished()
  local l0
  self = self._graph
  l0 = self[52]
  l0:Input(2)
end
function export:f_75_Finished()
  local l0
  self = self._graph
  l0 = self[21]
  l0.Seconds = 5
  l0:Start()
end
function export:f_14_A_is_True()
  local l0
  self = self._graph
  l0 = self[82]
  l0.Entity = self.P8_Male01
  l0.SoundId = "soundbinary/3471451663.bnk"
  l0:Start()
end
function export:f_104_A_is_True()
  local l0
  self = self._graph
  l0 = self[72]
  l0.Entity = self.Josh_Clue
  l0.SoundId = "soundbinary/441953762.bnk"
  l0:Start()
end
function export:f_53_Finished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsContestGoing
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_115_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_39_Out_0()
  local l0
  self = self._graph
  l0 = self[5]
  l0:Input(0)
end
function export:f_39_Out_1()
  local l0
  self = self._graph
  l0 = self[77]
  l0.CLO = "9223372050330162274"
  l0:Activate()
end
function export:f_65_Finished()
  local l0
  self = self._graph
  l0 = self[60]
  l0:Input(0)
end
function export:f_67_Finished()
  local l0
  self = self._graph
  l0 = self[60]
  l0:Input(2)
end
function export:f_61_Finished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsContestGoing
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_111_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_47_Finished()
  local l0
  self = self._graph
  l0 = self[52]
  l0:Input(4)
end
function export:f_82_Finished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsContestGoing
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_15_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_32_Output_0()
  local l0
  self = self._graph
  l0 = self[31]
  l0.Entity = self.Sitara_Clue
  l0.SoundId = "soundbinary/277817987.bnk"
  l0:Start()
end
function export:f_32_Output_1()
  local l0
  self = self._graph
  l0 = self[33]
  l0.Entity = self.Sitara_Clue
  l0.SoundId = "soundbinary/1159630574.bnk"
  l0:Start()
end
function export:f_32_Output_2()
  local l0
  self = self._graph
  l0 = self[34]
  l0.Entity = self.Sitara_Clue
  l0.SoundId = "soundbinary/3583853970.bnk"
  l0:Start()
end
function export:f_32_Output_3()
  local l0
  self = self._graph
  l0 = self[35]
  l0.Entity = self.Sitara_Clue
  l0.SoundId = "soundbinary/2619656982.bnk"
  l0:Start()
end
function export:f_32_Output_4()
  local l0
  self = self._graph
  l0 = self[36]
  l0.Entity = self.Sitara_Clue
  l0.SoundId = "soundbinary/3855984516.bnk"
  l0:Start()
end
function export:f_59_Finished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsContestGoing
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_112_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_72_Finished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsContestGoing
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_105_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:en_98()
  local l0
  l0 = self[98]
  l0.HackableEntity = self.Warrior
end
function export:en_100()
  local l0
  l0 = self[100]
  l0.HackableEntity = self.Tobias
end
function export:en_22()
  local l0
  l0 = self[22]
  l0.Entity = self.Horatio_Talker_Var
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Talk",
    id = "317865"
  }
  l0.IsManagingInteraction = 1
end
function export:Out_Annotations()
end
function export:Out_Wedding()
end
function export:Out_Thunderdome()
end
function export:SCR_Cryptobelisk_Out()
end
function export:AmbianceVid_Out()
end
function export:DedSecClueLoopStopOut()
end
_compilerVersion = 4
