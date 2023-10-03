export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AgentStateMonitor_v2.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/System/ConsoleCommand_v2.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/InteractionScriptController.lua")
  cbox:RegisterBox("domino/System/InteractionScriptMonitor_v2.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/ParticleFxController_v2.lua")
  cbox:RegisterBox("domino/System/PawnHealthMonitor_v3.lua")
  cbox:RegisterBox("domino/System/playerphonecommunicationmonitor.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/RandomOutput_v2.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:LoadResource("soundbinary/2159746141.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/76266569.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3938413888.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2435228290.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/144509662.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2851627119.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3673576463.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2790199675.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2011156266.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3413471774.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/561297467.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1553517546.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2386437762.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1858441775.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1978889610.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2984368284.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2916543809.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3982058000.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.Out_Annotations = DummyFunction
  self.SCR_ConveyorBelt_Out = DummyFunction
  self.SCR_RobotHeadTalking_Out = DummyFunction
  self.SCR_RobotMoving_Out = DummyFunction
  self.PlayerEntity = nil
  self._9223372049317940985 = nil
  self.RobotMoving = nil
  self.IS_NPCAlert = 0
  self.RobotTalker = nil
  self[51] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[51]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  self[50] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[50]
  l0._graph = self
  l0._DynamicAnchors = {Input = 7}
  l0.Out = self.f_50_Out
  self[29] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[29]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_29_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[14] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[14]
  l0._graph = self
  l0._DynamicAnchors = {
    EntityIn = {"Wrench_Var"},
    EntityOut = {"Wrench_Var"},
    SPOut = {"OutOfCam"}
  }
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = self.f_14_Finished
  l0.SPOut.OutOfCam = DummyFunction
  self[30] = cbox:CreateBox("domino/System/AgentStateMonitor_v2.lua")
  l0 = self[30]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.PauseState = DummyFunction
  l0.InterruptibleCinematicState = DummyFunction
  l0.UnawareState = DummyFunction
  l0.AllInUnawareState = DummyFunction
  l0.AwareState = self.f_30_AwareState
  l0.AllInAwareState = self.f_30_AllInAwareState
  l0.AlertSoftState = self.f_30_AlertSoftState
  l0.AlertHardState = self.f_30_AlertHardState
  l0.FleeState = DummyFunction
  l0.AllInFleeState = DummyFunction
  l0.CombatState = self.f_30_CombatState
  l0.ScriptedState = DummyFunction
  l0.InvestigateState = self.f_30_InvestigateState
  l0.PostCombatSearchState = DummyFunction
  l0.CinematicMode_Interrupted = DummyFunction
  l0.DetectionIntuitionStarted = self.f_30_DetectionIntuitionStarted
  l0.DetectionIntuitionStopped = DummyFunction
  l0.DetectionIntuitionFull = DummyFunction
  l0.DetectionAlertStarted = self.f_30_DetectionAlertStarted
  l0.DetectionAlertStopped = DummyFunction
  l0.DetectionAlertFull = self.f_30_DetectionAlertFull
  l0.IsDistracted = self.f_30_IsDistracted
  self[60] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[60]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_60_Finished
  self[68] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[68]
  l0._graph = self
  l0._DynamicAnchors = {Input = 4}
  l0.Out = self.f_68_Out
  self[56] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[56]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_56_Finished
  self[61] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[61]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_61_Finished
  self[32] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[32]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = self.f_32_ListFinished
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[28] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[28]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_28_OnUserInPlace
  self[70] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[70]
  l0._graph = self
  l0._DynamicAnchors = {Input = 4}
  l0.Out = self.f_70_Out
  self[16] = cbox:CreateBox("domino/System/RandomOutput_v2.lua")
  l0 = self[16]
  l0._graph = self
  l0._DynamicAnchors = {Probability = 11, Output = 11}
  l0.Out = DummyFunction
  l0.ResetOut = DummyFunction
  l0.None = DummyFunction
  l0.Output[0] = self.f_16_Output_0
  l0.Output[1] = self.f_16_Output_1
  l0.Output[2] = self.f_16_Output_2
  l0.Output[3] = self.f_16_Output_3
  l0.Output[4] = self.f_16_Output_4
  l0.Output[5] = self.f_16_Output_5
  l0.Output[6] = self.f_16_Output_6
  l0.Output[7] = self.f_16_Output_7
  l0.Output[8] = self.f_16_Output_8
  l0.Output[9] = self.f_16_Output_9
  l0.Output[10] = self.f_16_Output_10
  self[3] = cbox:CreateBox("domino/System/PawnHealthMonitor_v3.lua")
  l0 = self[3]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Damaged = self.f_3_Damaged
  l0.Killed = self.f_3_Killed
  l0.DBNO = self.f_3_DBNO
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
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
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = self.f_69_HackContextual
  l0.AllHacked = DummyFunction
  self[62] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[62]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_62_Finished
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
  self[59] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[59]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_59_Finished
  self[38] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[38]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_38_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[1] = cbox:CreateBox("domino/System/ConsoleCommand_v2.lua")
  l0 = self[1]
  l0._graph = self
  l0.Enabled = self.f_1_Enabled
  l0.Disabled = DummyFunction
  l0.Executed = DummyFunction
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
  self[13] = cbox:CreateBox("domino/System/playerphonecommunicationmonitor.lua")
  l0 = self[13]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_13_Disabled
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_13_OnCommunicationFinished
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
  self[15] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[15]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_15_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[58] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[58]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_58_Finished
  self[25] = cbox:CreateBox("domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self[25]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_25_Disabled
  l0.InteractionStarted = DummyFunction
  l0.InteractionFailed = DummyFunction
  l0.InteractionFinished = self.f_25_InteractionFinished
  l0.AnimationStarted = DummyFunction
  l0.AnimationFinished = DummyFunction
  self[57] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[57]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_57_Finished
  self[63] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[63]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_63_Finished
  self[65] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[65]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_65_Finished
  self[6] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[6]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Leave = self.f_6_Leave
  l0.Use = DummyFunction
  self[76] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[76]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  self[66] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[66]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_66_Out
  self[35] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
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
  self[67] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[67]
  l0._graph = self
  l0._DynamicAnchors = {Input = 11}
  l0.Out = self.f_67_Out
  self[73] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[73]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  self[55] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[55]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_55_Finished
  self[10] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[10]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_10_Out
  self[42] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[42]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_42_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[34] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[34]
  l0._graph = self
  l0.Out = self.f_34_Out
  l0.SetTrue = self.f_34_SetTrue
  l0.SetFalse = self.f_34_SetFalse
  l0.Toggled = self.f_34_Toggled
  l0.SetFromBool = self.f_34_SetFromBool
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
  self[31] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[31]
  l0._graph = self
  l0.Out = self.f_31_Out
  l0.SetTrue = self.f_31_SetTrue
  l0.SetFalse = self.f_31_SetFalse
  l0.Toggled = self.f_31_Toggled
  l0.SetFromBool = self.f_31_SetFromBool
  self[19] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[19]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  self[40] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[40]
  l0._graph = self
  l0._DynamicAnchors = {Input = 17}
  l0.Out = self.f_40_Out
  self[26] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[26]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[78] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[78]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_78_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[75] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[75]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  self[64] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[64]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_64_Finished
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
  l0 = self[1]
  l0.Command = "Narrative"
  l0:Enable()
end
function export:RobotReceptionist()
  local l0
  l0 = self[28]
  l0.CLO = "9223372048132419439"
  l0:Activate()
end
function export:SCR_ConveyorBelt_In()
  local l0
  l0 = self[14]
  l0.SceneEntity = "9223372049118939869"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S15/s15_conveyorbelt_src.seq"
  l0:Start()
end
function export:SCR_RepairRobot()
  local l0
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_71_Out_0
  l0.Out[1] = self.f_71_Out_1
  l0.Out[2] = self.f_71_Out_2
  l0.Out[3] = self.f_71_Out_3
  l0.Out[4] = self.f_71_Out_4
  l0:In()
end
function export:SCR_RobotConveyorBlock()
  local l0
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = DummyFunction
  l0:In()
end
function export:SCR_RobotHeadTalking_In()
  local l0
  l0 = self[66]
  l0:Input(0)
end
function export:SCR_RobotMoving()
  local l0
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_9_Out
  l0:In()
end
function export:f_50_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372055812393598"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0:Disable()
end
function export:f_29_Finished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IS_NPCAlert
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_43_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_14_Finished()
  self = self._graph
  self:SCR_ConveyorBelt_Out()
end
function export:f_30_AlertHardState()
  local l0
  self = self._graph
  l0 = self[40]
  l0:Input(3)
end
function export:f_30_AlertSoftState()
  local l0
  self = self._graph
  l0 = self[40]
  l0:Input(2)
end
function export:f_30_AllInAwareState()
  local l0
  self = self._graph
  l0 = self[40]
  l0:Input(1)
end
function export:f_30_AwareState()
  local l0
  self = self._graph
  l0 = self[40]
  l0:Input(0)
end
function export:f_30_CombatState()
  local l0
  self = self._graph
  l0 = self[40]
  l0:Input(4)
end
function export:f_30_DetectionAlertFull()
  local l0
  self = self._graph
  l0 = self[40]
  l0:Input(13)
end
function export:f_30_DetectionAlertStarted()
  local l0
  self = self._graph
  l0 = self[40]
  l0:Input(11)
end
function export:f_30_DetectionIntuitionStarted()
  local l0
  self = self._graph
  l0 = self[40]
  l0:Input(6)
end
function export:f_30_InvestigateState()
  local l0
  self = self._graph
  l0 = self[40]
  l0:Input(5)
end
function export:f_30_IsDistracted()
  local l0
  self = self._graph
  l0 = self[40]
  l0:Input(15)
end
function export:f_43_A_is_False()
  local l0
  self = self._graph
  l0 = self[42]
  l0.SoundId = "soundbinary/2011156266.bnk"
  l0:Start()
end
function export:f_60_Finished()
  local l0
  self = self._graph
  l0 = self[67]
  l0:Input(5)
end
function export:f_37_A_is_False()
  local l0
  self = self._graph
  l0 = self[35]
  l0.SoundId = "soundbinary/3413471774.bnk"
  l0:Start()
end
function export:f_23_Out_0()
  local l0
  self = self._graph
  l0 = self[16]
  l0:In()
end
function export:f_23_Out_1()
  local l0
  self = self._graph
  self:en_15()
  l0 = self[15]
  l0:Disable()
end
function export:f_68_Out()
  local l0
  self = self._graph
  l0 = self[34]
  l0:True()
end
function export:f_56_Finished()
  local l0
  self = self._graph
  l0 = self[67]
  l0:Input(1)
end
function export:f_61_Finished()
  local l0
  self = self._graph
  l0 = self[67]
  l0:Input(6)
end
function export:f_32_ListFinished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IS_NPCAlert
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_33_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_28_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[28]
  self.RobotTalker = l0.UserID
  l0 = self[31]
  l0:False()
end
function export:f_70_Out()
  local l0
  self = self._graph
  self:en_25()
  l0 = self[25]
  l0:Disable()
end
function export:f_27_Out_0()
  local l0
  self = self._graph
  self:en_25()
  l0 = self[25]
  l0:Enable()
end
function export:f_27_Out_1()
  local l0
  self = self._graph
  self:en_30()
  l0 = self[30]
  l0:Enable()
end
function export:f_27_Out_6()
  local l0
  self = self._graph
  l0 = self[3]
  l0.Pawn = self.RobotTalker
  l0:Enable()
end
function export:f_27_Out_7()
  local l0
  self = self._graph
  self:en_69()
  l0 = self[69]
  l0:Enable()
end
function export:f_16_Output_0()
  local l0
  self = self._graph
  l0 = self[55]
  l0.SoundId = "soundbinary/2386437762.bnk"
  l0:Play()
end
function export:f_16_Output_1()
  local l0
  self = self._graph
  l0 = self[56]
  l0.SoundId = "soundbinary/144509662.bnk"
  l0:Play()
end
function export:f_16_Output_2()
  local l0
  self = self._graph
  l0 = self[57]
  l0.SoundId = "soundbinary/1553517546.bnk"
  l0:Play()
end
function export:f_16_Output_3()
  local l0
  self = self._graph
  l0 = self[58]
  l0.SoundId = "soundbinary/2916543809.bnk"
  l0:Play()
end
function export:f_16_Output_4()
  local l0
  self = self._graph
  l0 = self[59]
  l0.SoundId = "soundbinary/2851627119.bnk"
  l0:Play()
end
function export:f_16_Output_5()
  local l0
  self = self._graph
  l0 = self[60]
  l0.SoundId = "soundbinary/76266569.bnk"
  l0:Play()
end
function export:f_16_Output_6()
  local l0
  self = self._graph
  l0 = self[61]
  l0.SoundId = "soundbinary/561297467.bnk"
  l0:Play()
end
function export:f_16_Output_7()
  local l0
  self = self._graph
  l0 = self[62]
  l0.SoundId = "soundbinary/3938413888.bnk"
  l0:Play()
end
function export:f_16_Output_8()
  local l0
  self = self._graph
  l0 = self[63]
  l0.SoundId = "soundbinary/2435228290.bnk"
  l0:Play()
end
function export:f_16_Output_9()
  local l0
  self = self._graph
  l0 = self[64]
  l0.SoundId = "soundbinary/2790199675.bnk"
  l0:Play()
end
function export:f_16_Output_10()
  local l0
  self = self._graph
  l0 = self[65]
  l0.SoundId = "soundbinary/2159746141.bnk"
  l0:Play()
end
function export:f_3_Damaged()
  local l0
  self = self._graph
  l0 = self[10]
  l0:Input(0)
end
function export:f_3_DBNO()
  local l0
  self = self._graph
  l0 = self[10]
  l0:Input(2)
end
function export:f_3_Killed()
  local l0
  self = self._graph
  l0 = self[10]
  l0:Input(1)
end
function export:f_69_HackContextual()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_2_Out_0
  l0.Out[1] = self.f_2_Out_1
  l0:In()
end
function export:f_71_Out_0()
  local l0
  self = self._graph
  l0 = self[19]
  l0.SceneEntity = "9223372049590385266"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S15/s15_s010_repairrobot.seq"
  l0.LoopAnim = 1
  l0:Start()
end
function export:f_71_Out_1()
  local l0
  self = self._graph
  l0 = self[72]
  l0.Seconds = 0.3
  l0:Start()
end
function export:f_71_Out_2()
  local l0
  self = self._graph
  l0 = self[41]
  l0.Seconds = 0.7
  l0:Start()
end
function export:f_71_Out_3()
  local l0
  self = self._graph
  l0 = self[74]
  l0.Seconds = 0.2
  l0:Start()
end
function export:f_71_Out_4()
  local l0
  self = self._graph
  l0 = self[77]
  l0.Seconds = 0.8
  l0:Start()
end
function export:f_62_Finished()
  local l0
  self = self._graph
  l0 = self[67]
  l0:Input(7)
end
function export:f_77_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[76]
  l0.SceneEntity = "9223372069614332674"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S15/s15_s010_repairrobot.seq"
  l0.LoopAnim = 1
  l0:Start()
end
function export:f_12_Out_0()
  local l0
  self = self._graph
  l0 = self[68]
  l0:Input(2)
end
function export:f_12_Out_1()
  local l0
  self = self._graph
  l0 = self[50]
  l0:Input(4)
end
function export:f_12_Out_2()
  local l0
  self = self._graph
  l0 = self[70]
  l0:Input(2)
end
function export:f_59_Finished()
  local l0
  self = self._graph
  l0 = self[67]
  l0:Input(4)
end
function export:f_38_Finished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IS_NPCAlert
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_36_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_1_Enabled()
  self = self._graph
  self:Out_Annotations()
end
function export:f_41_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[73]
  l0.SceneEntity = "9223372069614332672"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S15/s15_s010_repairrobot.seq"
  l0.LoopAnim = 1
  l0:Start()
end
function export:f_2_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_4_Out_0
  l0.Out[1] = self.f_4_Out_1
  l0.Out[2] = self.f_4_Out_2
  l0:In()
end
function export:f_2_Out_1()
  local l0
  self = self._graph
  self:en_69()
  l0 = self[69]
  l0:Disable()
end
function export:f_13_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372055812393598"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0.Enabled = self.f_5_Enabled
  l0.Disabled = DummyFunction
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0:Enable()
end
function export:f_13_OnCommunicationFinished()
  local l0
  self = self._graph
  self:en_13()
  l0 = self[13]
  l0:Disable()
end
function export:f_74_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[75]
  l0.SceneEntity = "9223372069614332673"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S15/s15_s010_repairrobot.seq"
  l0.LoopAnim = 1
  l0:Start()
end
function export:f_4_Out_0()
  local l0
  self = self._graph
  l0 = self[70]
  l0:Input(1)
end
function export:f_4_Out_1()
  local l0
  self = self._graph
  l0 = self[68]
  l0:Input(1)
end
function export:f_4_Out_2()
  local l0
  self = self._graph
  l0 = self[50]
  l0:Input(5)
end
function export:f_44_A_is_False()
  local l0
  self = self._graph
  l0 = self[26]
  l0.SoundId = "soundbinary/1978889610.bnk"
  l0:Start()
end
function export:f_15_Enter()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_23_Out_0
  l0.Out[1] = self.f_23_Out_1
  l0:In()
end
function export:f_58_Finished()
  local l0
  self = self._graph
  l0 = self[67]
  l0:Input(3)
end
function export:f_25_Disabled()
  local l0
  self = self._graph
  l0 = self[50]
  l0:Input(3)
end
function export:f_25_InteractionFinished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_45_Out_0
  l0.Out[1] = self.f_45_Out_1
  l0.Out[2] = self.f_45_Out_2
  l0:In()
end
function export:f_57_Finished()
  local l0
  self = self._graph
  l0 = self[67]
  l0:Input(2)
end
function export:f_63_Finished()
  local l0
  self = self._graph
  l0 = self[67]
  l0:Input(8)
end
function export:f_65_Finished()
  local l0
  self = self._graph
  l0 = self[67]
  l0:Input(10)
end
function export:f_21_Disabled()
  local l0
  self = self._graph
  self:en_13()
  l0 = self[13]
  l0:Enable()
end
function export:f_6_Leave()
  local l0
  self = self._graph
  l0 = self[68]
  l0:Input(3)
end
function export:f_36_A_is_False()
  local l0
  self = self._graph
  l0 = self[32]
  l0.SoundId = "soundbinary/3673576463.bnk"
  l0:Start()
end
function export:f_66_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_8_Out_0
  l0.Out[1] = self.f_8_Out_1
  l0:In()
end
function export:f_35_Finished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IS_NPCAlert
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_39_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_67_Out()
  local l0
  self = self._graph
  l0 = self[66]
  l0:Input(1)
end
function export:f_55_Finished()
  local l0
  self = self._graph
  l0 = self[67]
  l0:Input(0)
end
function export:f_39_A_is_False()
  local l0
  self = self._graph
  l0 = self[38]
  l0.SoundId = "soundbinary/3982058000.bnk"
  l0.UseFacial = 0
  l0:Start()
end
function export:f_9_Out()
  self = self._graph
  self:SCR_RobotMoving_Out()
end
function export:f_10_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_12_Out_0
  l0.Out[1] = self.f_12_Out_1
  l0.Out[2] = self.f_12_Out_2
  l0:In()
end
function export:f_45_Out_0()
  local l0
  self = self._graph
  l0 = self[78]
  l0.SoundId = "soundbinary/2984368284.bnk"
  l0.UseFacial = 0
  l0:Start()
end
function export:f_45_Out_1()
  local l0
  self = self._graph
  l0 = self[70]
  l0:Input(0)
end
function export:f_45_Out_2()
  local l0
  self = self._graph
  l0 = self[6]
  l0.Trigger = "9223372056997981720"
  l0:Enable()
end
function export:f_42_Finished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IS_NPCAlert
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_44_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_34_Out()
  local l0
  self = self._graph
  l0 = self[34]
  self.IS_NPCAlert = l0.Target
end
function export:f_34_SetFalse()
  local l0
  self = self._graph
  l0 = self[34]
  self.IS_NPCAlert = l0.Target
end
function export:f_34_SetFromBool()
  local l0
  self = self._graph
  l0 = self[34]
  self.IS_NPCAlert = l0.Target
end
function export:f_34_SetTrue()
  local l0
  self = self._graph
  l0 = self[34]
  self.IS_NPCAlert = l0.Target
end
function export:f_34_Toggled()
  local l0
  self = self._graph
  l0 = self[34]
  self.IS_NPCAlert = l0.Target
end
function export:f_33_A_is_False()
  local l0
  self = self._graph
  l0 = self[29]
  l0.SoundId = "soundbinary/1858441775.bnk"
  l0:Start()
end
function export:f_72_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[51]
  l0.SceneEntity = "9223372069614332671"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S15/s15_s010_repairrobot.seq"
  l0.LoopAnim = 1
  l0:Start()
end
function export:f_5_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 8}
  l0.Out[0] = self.f_27_Out_0
  l0.Out[1] = self.f_27_Out_1
  l0.Out[2] = DummyFunction
  l0.Out[3] = DummyFunction
  l0.Out[4] = DummyFunction
  l0.Out[5] = DummyFunction
  l0.Out[6] = self.f_27_Out_6
  l0.Out[7] = self.f_27_Out_7
  l0:In()
end
function export:f_24_Out_0()
  local l0
  self = self._graph
  l0 = self[68]
  l0:Input(0)
end
function export:f_24_Out_1()
  local l0
  self = self._graph
  self:en_30()
  l0 = self[30]
  l0:Disable()
end
function export:f_24_Out_2()
  local l0
  self = self._graph
  l0 = self[50]
  l0:Input(6)
end
function export:f_24_Out_3()
  local l0
  self = self._graph
  l0 = self[70]
  l0:Input(3)
end
function export:f_31_Out()
  local l0
  self = self._graph
  l0 = self[31]
  self.IS_NPCAlert = l0.Target
end
function export:f_31_SetFalse()
  local l0
  self = self._graph
  l0 = self[31]
  self.IS_NPCAlert = l0.Target
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372055812393598"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_21_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0:Disable()
end
function export:f_31_SetFromBool()
  local l0
  self = self._graph
  l0 = self[31]
  self.IS_NPCAlert = l0.Target
end
function export:f_31_SetTrue()
  local l0
  self = self._graph
  l0 = self[31]
  self.IS_NPCAlert = l0.Target
end
function export:f_31_Toggled()
  local l0
  self = self._graph
  l0 = self[31]
  self.IS_NPCAlert = l0.Target
end
function export:f_40_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_24_Out_0
  l0.Out[1] = self.f_24_Out_1
  l0.Out[2] = self.f_24_Out_2
  l0.Out[3] = self.f_24_Out_3
  l0:In()
end
function export:f_8_Out_0()
  local l0
  self = self._graph
  self:en_15()
  l0 = self[15]
  l0:Enable()
end
function export:f_8_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372058574505971"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_78_Finished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IS_NPCAlert
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_37_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_64_Finished()
  local l0
  self = self._graph
  l0 = self[67]
  l0:Input(9)
end
function export:en_30()
  local l0
  l0 = self[30]
  l0.NPC = self.RobotTalker
end
function export:en_69()
  local l0
  l0 = self[69]
  l0.HackableEntity = self.RobotTalker
end
function export:en_13()
  local l0
  l0 = self[13]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357370929"
end
function export:en_15()
  local l0
  l0 = self[15]
  l0.Trigger = "9223372049317940985"
end
function export:en_25()
  local l0
  l0 = self[25]
  l0.InteractionScriptEntity = "9223372055812393598"
end
function export:Out_Annotations()
end
function export:SCR_ConveyorBelt_Out()
end
function export:SCR_RobotHeadTalking_Out()
end
function export:SCR_RobotMoving_Out()
end
_compilerVersion = 4
