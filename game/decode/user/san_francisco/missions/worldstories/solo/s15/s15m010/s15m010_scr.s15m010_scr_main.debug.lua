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
  self._name = "S15M010_SCR_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main"
  self.Out_Annotations = DummyFunction
  self.SCR_ConveyorBelt_Out = DummyFunction
  self.SCR_RobotHeadTalking_Out = DummyFunction
  self.SCR_RobotMoving_Out = DummyFunction
  self.PlayerEntity = nil
  self._9223372049317940985 = nil
  self.RobotMoving = nil
  self.IS_NPCAlert = 0
  self.RobotTalker = nil
  self.box_PlaySequence_v5_51 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_51
  l0._graph = self
  l0._name = "box_PlaySequence_v5_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|80463357"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  self.box_MultipleOR_50 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_50
  l0._graph = self
  l0._name = "box_MultipleOR_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|139346714"
  l0._DynamicAnchors = {Input = 7}
  l0.Out = self.f_box_MultipleOR_50_Out
  self.box_PlayDialog_v2_29 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_29
  l0._graph = self
  l0._name = "box_PlayDialog_v2_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|293966735"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_29_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_PlaySequence_v5_14 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_14
  l0._graph = self
  l0._name = "box_PlaySequence_v5_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|338557621"
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
  l0.Finished = self.f_box_PlaySequence_v5_14_Finished
  l0.SPOut.OutOfCam = DummyFunction
  self.box_AgentStateMonitor_V2_30 = cbox:CreateBox("domino/System/AgentStateMonitor_v2.lua")
  l0 = self.box_AgentStateMonitor_V2_30
  l0._graph = self
  l0._name = "box_AgentStateMonitor_V2_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|350768374"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.PauseState = DummyFunction
  l0.InterruptibleCinematicState = DummyFunction
  l0.UnawareState = DummyFunction
  l0.AllInUnawareState = DummyFunction
  l0.AwareState = self.f_box_AgentStateMonitor_V2_30_AwareState
  l0.AllInAwareState = self.f_box_AgentStateMonitor_V2_30_AllInAwareState
  l0.AlertSoftState = self.f_box_AgentStateMonitor_V2_30_AlertSoftState
  l0.AlertHardState = self.f_box_AgentStateMonitor_V2_30_AlertHardState
  l0.FleeState = DummyFunction
  l0.AllInFleeState = DummyFunction
  l0.CombatState = self.f_box_AgentStateMonitor_V2_30_CombatState
  l0.ScriptedState = DummyFunction
  l0.InvestigateState = self.f_box_AgentStateMonitor_V2_30_InvestigateState
  l0.PostCombatSearchState = DummyFunction
  l0.CinematicMode_Interrupted = DummyFunction
  l0.DetectionIntuitionStarted = self.f_box_AgentStateMonitor_V2_30_DetectionIntuitionStarted
  l0.DetectionIntuitionStopped = DummyFunction
  l0.DetectionIntuitionFull = DummyFunction
  l0.DetectionAlertStarted = self.f_box_AgentStateMonitor_V2_30_DetectionAlertStarted
  l0.DetectionAlertStopped = DummyFunction
  l0.DetectionAlertFull = self.f_box_AgentStateMonitor_V2_30_DetectionAlertFull
  l0.IsDistracted = self.f_box_AgentStateMonitor_V2_30_IsDistracted
  self.box_PlaySound_v2_60 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_60
  l0._graph = self
  l0._name = "box_PlaySound_v2_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|361417005"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_box_PlaySound_v2_60_Finished
  self.box_MultipleOR_68 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_68
  l0._graph = self
  l0._name = "box_MultipleOR_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|514359442"
  l0._DynamicAnchors = {Input = 4}
  l0.Out = self.f_box_MultipleOR_68_Out
  self.box_PlaySound_v2_56 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_56
  l0._graph = self
  l0._name = "box_PlaySound_v2_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|526442510"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_box_PlaySound_v2_56_Finished
  self.box_PlaySound_v2_61 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_61
  l0._graph = self
  l0._name = "box_PlaySound_v2_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|550226136"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_box_PlaySound_v2_61_Finished
  self.box_PlayDialog_v2_32 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_32
  l0._graph = self
  l0._name = "box_PlayDialog_v2_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|574631968"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = self.f_box_PlayDialog_v2_32_ListFinished
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_CLOController_28 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_28
  l0._graph = self
  l0._name = "box_CLOController_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|619649522"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_28_OnUserInPlace
  self.box_MultipleOR_70 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_70
  l0._graph = self
  l0._name = "box_MultipleOR_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|694747174"
  l0._DynamicAnchors = {Input = 4}
  l0.Out = self.f_box_MultipleOR_70_Out
  self.box_RandomOutput_v2_16 = cbox:CreateBox("domino/System/RandomOutput_v2.lua")
  l0 = self.box_RandomOutput_v2_16
  l0._graph = self
  l0._name = "box_RandomOutput_v2_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|725145428"
  l0._DynamicAnchors = {Probability = 11, Output = 11}
  l0.Out = DummyFunction
  l0.ResetOut = DummyFunction
  l0.None = DummyFunction
  l0.Output[0] = self.f_box_RandomOutput_v2_16_Output_0
  l0.Output[1] = self.f_box_RandomOutput_v2_16_Output_1
  l0.Output[2] = self.f_box_RandomOutput_v2_16_Output_2
  l0.Output[3] = self.f_box_RandomOutput_v2_16_Output_3
  l0.Output[4] = self.f_box_RandomOutput_v2_16_Output_4
  l0.Output[5] = self.f_box_RandomOutput_v2_16_Output_5
  l0.Output[6] = self.f_box_RandomOutput_v2_16_Output_6
  l0.Output[7] = self.f_box_RandomOutput_v2_16_Output_7
  l0.Output[8] = self.f_box_RandomOutput_v2_16_Output_8
  l0.Output[9] = self.f_box_RandomOutput_v2_16_Output_9
  l0.Output[10] = self.f_box_RandomOutput_v2_16_Output_10
  self.box_PawnHealthMonitor_v3_3 = cbox:CreateBox("domino/System/PawnHealthMonitor_v3.lua")
  l0 = self.box_PawnHealthMonitor_v3_3
  l0._graph = self
  l0._name = "box_PawnHealthMonitor_v3_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|760560494"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Damaged = self.f_box_PawnHealthMonitor_v3_3_Damaged
  l0.Killed = self.f_box_PawnHealthMonitor_v3_3_Killed
  l0.DBNO = self.f_box_PawnHealthMonitor_v3_3_DBNO
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
  self.box_Hackable_Monitor_69 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_69
  l0._graph = self
  l0._name = "box_Hackable_Monitor_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|768367910"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = DummyFunction
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = self.f_box_Hackable_Monitor_69_HackContextual
  l0.AllHacked = DummyFunction
  self.box_PlaySound_v2_62 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_62
  l0._graph = self
  l0._name = "box_PlaySound_v2_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|817405360"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_box_PlaySound_v2_62_Finished
  self.box_Timer_v2_77 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_77
  l0._graph = self
  l0._name = "box_Timer_v2_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|829084139"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_77_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_59 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_59
  l0._graph = self
  l0._name = "box_PlaySound_v2_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|894259154"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_box_PlaySound_v2_59_Finished
  self.box_PlayDialog_v2_38 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_38
  l0._graph = self
  l0._name = "box_PlayDialog_v2_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|913747192"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_38_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_ConsoleCommand_v2_1 = cbox:CreateBox("domino/System/ConsoleCommand_v2.lua")
  l0 = self.box_ConsoleCommand_v2_1
  l0._graph = self
  l0._name = "box_ConsoleCommand_v2_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|919330270"
  l0.Enabled = self.f_box_ConsoleCommand_v2_1_Enabled
  l0.Disabled = DummyFunction
  l0.Executed = DummyFunction
  self.box_Timer_v2_41 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_41
  l0._graph = self
  l0._name = "box_Timer_v2_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|968905380"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_41_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PhoneCommunicationMonitor_13 = cbox:CreateBox("domino/System/playerphonecommunicationmonitor.lua")
  l0 = self.box_PhoneCommunicationMonitor_13
  l0._graph = self
  l0._name = "box_PhoneCommunicationMonitor_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1005509416"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_PhoneCommunicationMonitor_13_Disabled
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationMonitor_13_OnCommunicationFinished
  self.box_Timer_v2_74 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_74
  l0._graph = self
  l0._name = "box_Timer_v2_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1016706045"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_74_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_TriggerMonitor_v2_15 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_15
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1049994910"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_15_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_PlaySound_v2_58 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_58
  l0._graph = self
  l0._name = "box_PlaySound_v2_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1061173220"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_box_PlaySound_v2_58_Finished
  self.box_InteractionScriptMonitor_v2_25 = cbox:CreateBox("domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self.box_InteractionScriptMonitor_v2_25
  l0._graph = self
  l0._name = "box_InteractionScriptMonitor_v2_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1108885172"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptMonitor_v2_25_Disabled
  l0.InteractionStarted = DummyFunction
  l0.InteractionFailed = DummyFunction
  l0.InteractionFinished = self.f_box_InteractionScriptMonitor_v2_25_InteractionFinished
  l0.AnimationStarted = DummyFunction
  l0.AnimationFinished = DummyFunction
  self.box_PlaySound_v2_57 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_57
  l0._graph = self
  l0._name = "box_PlaySound_v2_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1120798412"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_box_PlaySound_v2_57_Finished
  self.box_PlaySound_v2_63 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_63
  l0._graph = self
  l0._name = "box_PlaySound_v2_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1133169443"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_box_PlaySound_v2_63_Finished
  self.box_PlaySound_v2_65 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_65
  l0._graph = self
  l0._name = "box_PlaySound_v2_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1134431270"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_box_PlaySound_v2_65_Finished
  self.box_TriggerMonitor_v2_6 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_6
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1155512177"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Leave = self.f_box_TriggerMonitor_v2_6_Leave
  l0.Use = DummyFunction
  self.box_PlaySequence_v5_76 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_76
  l0._graph = self
  l0._name = "box_PlaySequence_v5_76"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1285132814"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  self.box_MultipleOR_66 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_66
  l0._graph = self
  l0._name = "box_MultipleOR_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1354895520"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_66_Out
  self.box_PlayDialog_v2_35 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_35
  l0._graph = self
  l0._name = "box_PlayDialog_v2_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1413469062"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_35_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_MultipleOR_67 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_67
  l0._graph = self
  l0._name = "box_MultipleOR_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1463255273"
  l0._DynamicAnchors = {Input = 11}
  l0.Out = self.f_box_MultipleOR_67_Out
  self.box_PlaySequence_v5_73 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_73
  l0._graph = self
  l0._name = "box_PlaySequence_v5_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1518874954"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_55 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_55
  l0._graph = self
  l0._name = "box_PlaySound_v2_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1554778270"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_box_PlaySound_v2_55_Finished
  self.box_MultipleOR_10 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_10
  l0._graph = self
  l0._name = "box_MultipleOR_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1799078051"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_10_Out
  self.box_PlayDialog_v2_42 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_42
  l0._graph = self
  l0._name = "box_PlayDialog_v2_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1848969714"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_42_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_SetBoolean_v2_34 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_34
  l0._graph = self
  l0._name = "box_SetBoolean_v2_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1890704599"
  l0.Out = self.f_box_SetBoolean_v2_34_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_34_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_34_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_34_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_34_SetFromBool
  self.box_Timer_v2_72 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_72
  l0._graph = self
  l0._name = "box_Timer_v2_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1957993719"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_72_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_SetBoolean_v2_31 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_31
  l0._graph = self
  l0._name = "box_SetBoolean_v2_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|2037290797"
  l0.Out = self.f_box_SetBoolean_v2_31_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_31_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_31_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_31_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_31_SetFromBool
  self.box_PlaySequence_v5_19 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_19
  l0._graph = self
  l0._name = "box_PlaySequence_v5_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|2053215826"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  self.box_MultipleOR_40 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_40
  l0._graph = self
  l0._name = "box_MultipleOR_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|2053312815"
  l0._DynamicAnchors = {Input = 17}
  l0.Out = self.f_box_MultipleOR_40_Out
  self.box_PlayDialog_v2_26 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_26
  l0._graph = self
  l0._name = "box_PlayDialog_v2_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|2080903073"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_PlayDialog_v2_78 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_78
  l0._graph = self
  l0._name = "box_PlayDialog_v2_78"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|2103217843"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_78_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_PlaySequence_v5_75 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_75
  l0._graph = self
  l0._name = "box_PlaySequence_v5_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|2111124299"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_64 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_64
  l0._graph = self
  l0._name = "box_PlaySound_v2_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|2145940835"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_box_PlaySound_v2_64_Finished
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
  l0 = self.box_ConsoleCommand_v2_1
  l0.Command = "Narrative"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|407992104", "407992104", "S15M010_SCR_Main", "In", "box_ConsoleCommand_v2_1.Enable", self, l0)
  l0:Enable()
end
function export:RobotReceptionist()
  local l0
  l0 = self.box_CLOController_28
  l0.CLO = "9223372048132419439"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1442721477", "1442721477", "S15M010_SCR_Main", "RobotReceptionist", "box_CLOController_28.Activate", self, l0)
  l0:Activate()
end
function export:SCR_ConveyorBelt_In()
  local l0
  l0 = self.box_PlaySequence_v5_14
  l0.SceneEntity = "9223372049118939869"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S15/s15_conveyorbelt_src.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|2044019653", "2044019653", "S15M010_SCR_Main", "SCR_ConveyorBelt_In", "box_PlaySequence_v5_14.Start", self, l0)
  l0:Start()
end
function export:SCR_RepairRobot()
  local l0
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|814564637"
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_box_Ordered_Output_71_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_71_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_71_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_71_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_71_Out_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|829664108", "829664108", "S15M010_SCR_Main", "SCR_RepairRobot", "box_Ordered_Output_71.In", self, l0)
  l0:In()
end
function export:SCR_RobotConveyorBlock()
  local l0
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|777810391"
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1270118458", "1270118458", "S15M010_SCR_Main", "SCR_RobotConveyorBlock", "box_Simple_Node_11.In", self, l0)
  l0:In()
end
function export:SCR_RobotHeadTalking_In()
  local l0
  self:OnEnter_box_MultipleOR_66()
  l0 = self.box_MultipleOR_66
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|2125423448", "2125423448", "S15M010_SCR_Main", "SCR_RobotHeadTalking_In", "box_MultipleOR_66.Input", self, l0)
  l0:Input(0)
end
function export:SCR_RobotMoving()
  local l0
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1704187700"
  l0.Out = self.f_box_Simple_Node_9_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1253542747", "1253542747", "S15M010_SCR_Main", "SCR_RobotMoving", "box_Simple_Node_9.In", self, l0)
  l0:In()
end
function export:f_box_MultipleOR_50_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372055812393598"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|234970865"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_MultipleOR_50
  l1 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1844125541", "1844125541", "S15M010_SCR_Main", "box_MultipleOR_50.Out", "box_InteractionScriptController_52.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_PlayDialog_v2_29_Finished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IS_NPCAlert
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|352268014"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_43_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_PlayDialog_v2_29
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|551044931", "551044931", "S15M010_SCR_Main", "box_PlayDialog_v2_29.Finished", "box_Compare_Boolean_v2_43.In", l0, l1)
  l1:In()
end
function export:f_box_PlaySequence_v5_14_Finished()
  local l0
  self = self._graph
  l0 = self.box_PlaySequence_v5_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1546863353", "1546863353", "S15M010_SCR_Main", "box_PlaySequence_v5_14.Finished", "SCR_ConveyorBelt_Out", l0, self)
  self:SCR_ConveyorBelt_Out()
end
function export:f_box_AgentStateMonitor_V2_30_AlertHardState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_40()
  l0 = self.box_AgentStateMonitor_V2_30
  l1 = self.box_MultipleOR_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|828702081", "828702081", "S15M010_SCR_Main", "box_AgentStateMonitor_V2_30.AlertHardState", "box_MultipleOR_40.Input", l0, l1)
  l1:Input(3)
end
function export:f_box_AgentStateMonitor_V2_30_AlertSoftState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_40()
  l0 = self.box_AgentStateMonitor_V2_30
  l1 = self.box_MultipleOR_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|445000709", "445000709", "S15M010_SCR_Main", "box_AgentStateMonitor_V2_30.AlertSoftState", "box_MultipleOR_40.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_AgentStateMonitor_V2_30_AllInAwareState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_40()
  l0 = self.box_AgentStateMonitor_V2_30
  l1 = self.box_MultipleOR_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1012008086", "1012008086", "S15M010_SCR_Main", "box_AgentStateMonitor_V2_30.AllInAwareState", "box_MultipleOR_40.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_AgentStateMonitor_V2_30_AwareState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_40()
  l0 = self.box_AgentStateMonitor_V2_30
  l1 = self.box_MultipleOR_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1579015463", "1579015463", "S15M010_SCR_Main", "box_AgentStateMonitor_V2_30.AwareState", "box_MultipleOR_40.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_AgentStateMonitor_V2_30_CombatState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_40()
  l0 = self.box_AgentStateMonitor_V2_30
  l1 = self.box_MultipleOR_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1870534706", "1870534706", "S15M010_SCR_Main", "box_AgentStateMonitor_V2_30.CombatState", "box_MultipleOR_40.Input", l0, l1)
  l1:Input(4)
end
function export:f_box_AgentStateMonitor_V2_30_DetectionAlertFull()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_40()
  l0 = self.box_AgentStateMonitor_V2_30
  l1 = self.box_MultipleOR_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|672701555", "672701555", "S15M010_SCR_Main", "box_AgentStateMonitor_V2_30.DetectionAlertFull", "box_MultipleOR_40.Input", l0, l1)
  l1:Input(13)
end
function export:f_box_AgentStateMonitor_V2_30_DetectionAlertStarted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_40()
  l0 = self.box_AgentStateMonitor_V2_30
  l1 = self.box_MultipleOR_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|820552895", "820552895", "S15M010_SCR_Main", "box_AgentStateMonitor_V2_30.DetectionAlertStarted", "box_MultipleOR_40.Input", l0, l1)
  l1:Input(11)
end
function export:f_box_AgentStateMonitor_V2_30_DetectionIntuitionStarted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_40()
  l0 = self.box_AgentStateMonitor_V2_30
  l1 = self.box_MultipleOR_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1926203917", "1926203917", "S15M010_SCR_Main", "box_AgentStateMonitor_V2_30.DetectionIntuitionStarted", "box_MultipleOR_40.Input", l0, l1)
  l1:Input(6)
end
function export:f_box_AgentStateMonitor_V2_30_InvestigateState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_40()
  l0 = self.box_AgentStateMonitor_V2_30
  l1 = self.box_MultipleOR_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|345727647", "345727647", "S15M010_SCR_Main", "box_AgentStateMonitor_V2_30.InvestigateState", "box_MultipleOR_40.Input", l0, l1)
  l1:Input(5)
end
function export:f_box_AgentStateMonitor_V2_30_IsDistracted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_40()
  l0 = self.box_AgentStateMonitor_V2_30
  l1 = self.box_MultipleOR_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|637246890", "637246890", "S15M010_SCR_Main", "box_AgentStateMonitor_V2_30.IsDistracted", "box_MultipleOR_40.Input", l0, l1)
  l1:Input(15)
end
function export:f_box_Compare_Boolean_v2_43_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_42
  l0.SoundId = "soundbinary/2011156266.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|519808784", "519808784", "S15M010_SCR_Main", "box_Compare_Boolean_v2_43.A_is_False", "box_PlayDialog_v2_42.Start", clone, l0)
  l0:Start()
end
function export:f_box_PlaySound_v2_60_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_67()
  l0 = self.box_PlaySound_v2_60
  l1 = self.box_MultipleOR_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|729447152", "729447152", "S15M010_SCR_Main", "box_PlaySound_v2_60.Finished", "box_MultipleOR_67.Input", l0, l1)
  l1:Input(5)
end
function export:f_box_Compare_Boolean_v2_37_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_35
  l0.SoundId = "soundbinary/3413471774.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|916312762", "916312762", "S15M010_SCR_Main", "box_Compare_Boolean_v2_37.A_is_False", "box_PlayDialog_v2_35.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_23_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_RandomOutput_v2_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1238533096", "1238533096", "S15M010_SCR_Main", "box_Ordered_Output_23.Out", "box_RandomOutput_v2_16.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_23_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_15()
  l0 = self.box_TriggerMonitor_v2_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1638728930", "1638728930", "S15M010_SCR_Main", "box_Ordered_Output_23.Out", "box_TriggerMonitor_v2_15.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_MultipleOR_68_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MultipleOR_68
  l1 = self.box_SetBoolean_v2_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1935000274", "1935000274", "S15M010_SCR_Main", "box_MultipleOR_68.Out", "box_SetBoolean_v2_34.True", l0, l1)
  l1:True()
end
function export:f_box_PlaySound_v2_56_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_67()
  l0 = self.box_PlaySound_v2_56
  l1 = self.box_MultipleOR_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1032824866", "1032824866", "S15M010_SCR_Main", "box_PlaySound_v2_56.Finished", "box_MultipleOR_67.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_PlaySound_v2_61_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_67()
  l0 = self.box_PlaySound_v2_61
  l1 = self.box_MultipleOR_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1581406566", "1581406566", "S15M010_SCR_Main", "box_PlaySound_v2_61.Finished", "box_MultipleOR_67.Input", l0, l1)
  l1:Input(6)
end
function export:f_box_PlayDialog_v2_32_ListFinished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IS_NPCAlert
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1907379430"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_33_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_PlayDialog_v2_32
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1241098991", "1241098991", "S15M010_SCR_Main", "box_PlayDialog_v2_32.ListFinished", "box_Compare_Boolean_v2_33.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_28_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_28
  self.RobotTalker = l0.UserID
  l1 = self.box_SetBoolean_v2_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1599452619", "1599452619", "S15M010_SCR_Main", "box_CLOController_28.OnUserInPlace", "box_SetBoolean_v2_31.False", l0, l1)
  l1:False()
end
function export:f_box_MultipleOR_70_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_InteractionScriptMonitor_v2_25()
  l0 = self.box_MultipleOR_70
  l1 = self.box_InteractionScriptMonitor_v2_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1392028512", "1392028512", "S15M010_SCR_Main", "box_MultipleOR_70.Out", "box_InteractionScriptMonitor_v2_25.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Ordered_Output_27_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_InteractionScriptMonitor_v2_25()
  l0 = self.box_InteractionScriptMonitor_v2_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|247559952", "247559952", "S15M010_SCR_Main", "box_Ordered_Output_27.Out", "box_InteractionScriptMonitor_v2_25.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_27_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_AgentStateMonitor_V2_30()
  l0 = self.box_AgentStateMonitor_V2_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1377611888", "1377611888", "S15M010_SCR_Main", "box_Ordered_Output_27.Out", "box_AgentStateMonitor_V2_30.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_27_Out_6()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PawnHealthMonitor_v3_3
  l0.Pawn = self.RobotTalker
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|2129099764", "2129099764", "S15M010_SCR_Main", "box_Ordered_Output_27.Out", "box_PawnHealthMonitor_v3_3.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_27_Out_7()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hackable_Monitor_69()
  l0 = self.box_Hackable_Monitor_69
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|562550933", "562550933", "S15M010_SCR_Main", "box_Ordered_Output_27.Out", "box_Hackable_Monitor_69.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_RandomOutput_v2_16_Output_0()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_55
  l0.SoundId = "soundbinary/2386437762.bnk"
  l0 = self.box_RandomOutput_v2_16
  l1 = self.box_PlaySound_v2_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|64035506", "64035506", "S15M010_SCR_Main", "box_RandomOutput_v2_16.Output", "box_PlaySound_v2_55.Play", l0, l1)
  l1:Play()
end
function export:f_box_RandomOutput_v2_16_Output_1()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_56
  l0.SoundId = "soundbinary/144509662.bnk"
  l0 = self.box_RandomOutput_v2_16
  l1 = self.box_PlaySound_v2_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1623238977", "1623238977", "S15M010_SCR_Main", "box_RandomOutput_v2_16.Output", "box_PlaySound_v2_56.Play", l0, l1)
  l1:Play()
end
function export:f_box_RandomOutput_v2_16_Output_2()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_57
  l0.SoundId = "soundbinary/1553517546.bnk"
  l0 = self.box_RandomOutput_v2_16
  l1 = self.box_PlaySound_v2_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1396329121", "1396329121", "S15M010_SCR_Main", "box_RandomOutput_v2_16.Output", "box_PlaySound_v2_57.Play", l0, l1)
  l1:Play()
end
function export:f_box_RandomOutput_v2_16_Output_3()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_58
  l0.SoundId = "soundbinary/2916543809.bnk"
  l0 = self.box_RandomOutput_v2_16
  l1 = self.box_PlaySound_v2_58
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1323695465", "1323695465", "S15M010_SCR_Main", "box_RandomOutput_v2_16.Output", "box_PlaySound_v2_58.Play", l0, l1)
  l1:Play()
end
function export:f_box_RandomOutput_v2_16_Output_4()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_59
  l0.SoundId = "soundbinary/2851627119.bnk"
  l0 = self.box_RandomOutput_v2_16
  l1 = self.box_PlaySound_v2_59
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1110967475", "1110967475", "S15M010_SCR_Main", "box_RandomOutput_v2_16.Output", "box_PlaySound_v2_59.Play", l0, l1)
  l1:Play()
end
function export:f_box_RandomOutput_v2_16_Output_5()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_60
  l0.SoundId = "soundbinary/76266569.bnk"
  l0 = self.box_RandomOutput_v2_16
  l1 = self.box_PlaySound_v2_60
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1513825140", "1513825140", "S15M010_SCR_Main", "box_RandomOutput_v2_16.Output", "box_PlaySound_v2_60.Play", l0, l1)
  l1:Play()
end
function export:f_box_RandomOutput_v2_16_Output_6()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_61
  l0.SoundId = "soundbinary/561297467.bnk"
  l0 = self.box_RandomOutput_v2_16
  l1 = self.box_PlaySound_v2_61
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|672387882", "672387882", "S15M010_SCR_Main", "box_RandomOutput_v2_16.Output", "box_PlaySound_v2_61.Play", l0, l1)
  l1:Play()
end
function export:f_box_RandomOutput_v2_16_Output_7()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_62
  l0.SoundId = "soundbinary/3938413888.bnk"
  l0 = self.box_RandomOutput_v2_16
  l1 = self.box_PlaySound_v2_62
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|748271639", "748271639", "S15M010_SCR_Main", "box_RandomOutput_v2_16.Output", "box_PlaySound_v2_62.Play", l0, l1)
  l1:Play()
end
function export:f_box_RandomOutput_v2_16_Output_8()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_63
  l0.SoundId = "soundbinary/2435228290.bnk"
  l0 = self.box_RandomOutput_v2_16
  l1 = self.box_PlaySound_v2_63
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|287360994", "287360994", "S15M010_SCR_Main", "box_RandomOutput_v2_16.Output", "box_PlaySound_v2_63.Play", l0, l1)
  l1:Play()
end
function export:f_box_RandomOutput_v2_16_Output_9()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_64
  l0.SoundId = "soundbinary/2790199675.bnk"
  l0 = self.box_RandomOutput_v2_16
  l1 = self.box_PlaySound_v2_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1984199688", "1984199688", "S15M010_SCR_Main", "box_RandomOutput_v2_16.Output", "box_PlaySound_v2_64.Play", l0, l1)
  l1:Play()
end
function export:f_box_RandomOutput_v2_16_Output_10()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_65
  l0.SoundId = "soundbinary/2159746141.bnk"
  l0 = self.box_RandomOutput_v2_16
  l1 = self.box_PlaySound_v2_65
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|467274552", "467274552", "S15M010_SCR_Main", "box_RandomOutput_v2_16.Output", "box_PlaySound_v2_65.Play", l0, l1)
  l1:Play()
end
function export:f_box_PawnHealthMonitor_v3_3_Damaged()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_10()
  l0 = self.box_PawnHealthMonitor_v3_3
  l1 = self.box_MultipleOR_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|2006564351", "2006564351", "S15M010_SCR_Main", "box_PawnHealthMonitor_v3_3.Damaged", "box_MultipleOR_10.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_PawnHealthMonitor_v3_3_DBNO()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_10()
  l0 = self.box_PawnHealthMonitor_v3_3
  l1 = self.box_MultipleOR_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|237758074", "237758074", "S15M010_SCR_Main", "box_PawnHealthMonitor_v3_3.DBNO", "box_MultipleOR_10.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_PawnHealthMonitor_v3_3_Killed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_10()
  l0 = self.box_PawnHealthMonitor_v3_3
  l1 = self.box_MultipleOR_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1238103354", "1238103354", "S15M010_SCR_Main", "box_PawnHealthMonitor_v3_3.Killed", "box_MultipleOR_10.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Hackable_Monitor_69_HackContextual()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|985927981"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_2_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_2_Out_1
  l0 = self.box_Hackable_Monitor_69
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1543008248", "1543008248", "S15M010_SCR_Main", "box_Hackable_Monitor_69.HackContextual", "box_Ordered_Output_2.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_71_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_19
  l0.SceneEntity = "9223372049590385266"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S15/s15_s010_repairrobot.seq"
  l0.LoopAnim = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1233720674", "1233720674", "S15M010_SCR_Main", "box_Ordered_Output_71.Out", "box_PlaySequence_v5_19.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_71_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_72
  l0.Seconds = 0.3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1571167163", "1571167163", "S15M010_SCR_Main", "box_Ordered_Output_71.Out", "box_Timer_v2_72.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_71_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_41
  l0.Seconds = 0.7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|92013457", "92013457", "S15M010_SCR_Main", "box_Ordered_Output_71.Out", "box_Timer_v2_41.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_71_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_74
  l0.Seconds = 0.2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1949831273", "1949831273", "S15M010_SCR_Main", "box_Ordered_Output_71.Out", "box_Timer_v2_74.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_71_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_77
  l0.Seconds = 0.8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|641657579", "641657579", "S15M010_SCR_Main", "box_Ordered_Output_71.Out", "box_Timer_v2_77.Start", clone, l0)
  l0:Start()
end
function export:f_box_PlaySound_v2_62_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_67()
  l0 = self.box_PlaySound_v2_62
  l1 = self.box_MultipleOR_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|98086852", "98086852", "S15M010_SCR_Main", "box_PlaySound_v2_62.Finished", "box_MultipleOR_67.Input", l0, l1)
  l1:Input(7)
end
function export:f_box_Timer_v2_77_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_76
  l0.SceneEntity = "9223372069614332674"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S15/s15_s010_repairrobot.seq"
  l0.LoopAnim = 1
  l0 = self.box_Timer_v2_77
  l1 = self.box_PlaySequence_v5_76
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|471475187", "471475187", "S15M010_SCR_Main", "box_Timer_v2_77.TimeElapsed", "box_PlaySequence_v5_76.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_12_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_68()
  l0 = self.box_MultipleOR_68
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|528076718", "528076718", "S15M010_SCR_Main", "box_Ordered_Output_12.Out", "box_MultipleOR_68.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_Ordered_Output_12_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_50()
  l0 = self.box_MultipleOR_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1082230744", "1082230744", "S15M010_SCR_Main", "box_Ordered_Output_12.Out", "box_MultipleOR_50.Input", clone, l0)
  l0:Input(4)
end
function export:f_box_Ordered_Output_12_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_70()
  l0 = self.box_MultipleOR_70
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|503814451", "503814451", "S15M010_SCR_Main", "box_Ordered_Output_12.Out", "box_MultipleOR_70.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_PlaySound_v2_59_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_67()
  l0 = self.box_PlaySound_v2_59
  l1 = self.box_MultipleOR_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|456075524", "456075524", "S15M010_SCR_Main", "box_PlaySound_v2_59.Finished", "box_MultipleOR_67.Input", l0, l1)
  l1:Input(4)
end
function export:f_box_PlayDialog_v2_38_Finished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IS_NPCAlert
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1280543158"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_36_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_PlayDialog_v2_38
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|529297980", "529297980", "S15M010_SCR_Main", "box_PlayDialog_v2_38.Finished", "box_Compare_Boolean_v2_36.In", l0, l1)
  l1:In()
end
function export:f_box_ConsoleCommand_v2_1_Enabled()
  local l0
  self = self._graph
  l0 = self.box_ConsoleCommand_v2_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1474528284", "1474528284", "S15M010_SCR_Main", "box_ConsoleCommand_v2_1.Enabled", "Out Annotations", l0, self)
  self:Out_Annotations()
end
function export:f_box_Timer_v2_41_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_73
  l0.SceneEntity = "9223372069614332672"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S15/s15_s010_repairrobot.seq"
  l0.LoopAnim = 1
  l0 = self.box_Timer_v2_41
  l1 = self.box_PlaySequence_v5_73
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|2018619928", "2018619928", "S15M010_SCR_Main", "box_Timer_v2_41.TimeElapsed", "box_PlaySequence_v5_73.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_2_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1025637256"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_4_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_4_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_4_Out_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|58303700", "58303700", "S15M010_SCR_Main", "box_Ordered_Output_2.Out", "box_Ordered_Output_4.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_2_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hackable_Monitor_69()
  l0 = self.box_Hackable_Monitor_69
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1494307985", "1494307985", "S15M010_SCR_Main", "box_Ordered_Output_2.Out", "box_Hackable_Monitor_69.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_PhoneCommunicationMonitor_13_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372055812393598"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1974146958"
  l0.Enabled = self.f_box_InteractionScriptController_5_Enabled
  l0.Disabled = DummyFunction
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_PhoneCommunicationMonitor_13
  l1 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1923908207", "1923908207", "S15M010_SCR_Main", "box_PhoneCommunicationMonitor_13.Disabled", "box_InteractionScriptController_5.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_PhoneCommunicationMonitor_13_OnCommunicationFinished()
  local l0
  self = self._graph
  self:OnEnter_box_PhoneCommunicationMonitor_13()
  l0 = self.box_PhoneCommunicationMonitor_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|266489927", "266489927", "S15M010_SCR_Main", "box_PhoneCommunicationMonitor_13.OnCommunicationFinished", "box_PhoneCommunicationMonitor_13.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Timer_v2_74_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_75
  l0.SceneEntity = "9223372069614332673"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S15/s15_s010_repairrobot.seq"
  l0.LoopAnim = 1
  l0 = self.box_Timer_v2_74
  l1 = self.box_PlaySequence_v5_75
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|618328648", "618328648", "S15M010_SCR_Main", "box_Timer_v2_74.TimeElapsed", "box_PlaySequence_v5_75.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_4_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_70()
  l0 = self.box_MultipleOR_70
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1444793293", "1444793293", "S15M010_SCR_Main", "box_Ordered_Output_4.Out", "box_MultipleOR_70.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_4_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_68()
  l0 = self.box_MultipleOR_68
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1555502157", "1555502157", "S15M010_SCR_Main", "box_Ordered_Output_4.Out", "box_MultipleOR_68.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_4_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_50()
  l0 = self.box_MultipleOR_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|629530829", "629530829", "S15M010_SCR_Main", "box_Ordered_Output_4.Out", "box_MultipleOR_50.Input", clone, l0)
  l0:Input(5)
end
function export:f_box_Compare_Boolean_v2_44_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_26
  l0.SoundId = "soundbinary/1978889610.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|760380474", "760380474", "S15M010_SCR_Main", "box_Compare_Boolean_v2_44.A_is_False", "box_PlayDialog_v2_26.Start", clone, l0)
  l0:Start()
end
function export:f_box_TriggerMonitor_v2_15_Enter()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|468005168"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_23_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_23_Out_1
  l0 = self.box_TriggerMonitor_v2_15
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|203805527", "203805527", "S15M010_SCR_Main", "box_TriggerMonitor_v2_15.Enter", "box_Ordered_Output_23.In", l0, l1)
  l1:In()
end
function export:f_box_PlaySound_v2_58_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_67()
  l0 = self.box_PlaySound_v2_58
  l1 = self.box_MultipleOR_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1400751593", "1400751593", "S15M010_SCR_Main", "box_PlaySound_v2_58.Finished", "box_MultipleOR_67.Input", l0, l1)
  l1:Input(3)
end
function export:f_box_InteractionScriptMonitor_v2_25_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_50()
  l0 = self.box_InteractionScriptMonitor_v2_25
  l1 = self.box_MultipleOR_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|82280814", "82280814", "S15M010_SCR_Main", "box_InteractionScriptMonitor_v2_25.Disabled", "box_MultipleOR_50.Input", l0, l1)
  l1:Input(3)
end
function export:f_box_InteractionScriptMonitor_v2_25_InteractionFinished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1836000117"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_45_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_45_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_45_Out_2
  l0 = self.box_InteractionScriptMonitor_v2_25
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1355993593", "1355993593", "S15M010_SCR_Main", "box_InteractionScriptMonitor_v2_25.InteractionFinished", "box_Ordered_Output_45.In", l0, l1)
  l1:In()
end
function export:f_box_PlaySound_v2_57_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_67()
  l0 = self.box_PlaySound_v2_57
  l1 = self.box_MultipleOR_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1182525449", "1182525449", "S15M010_SCR_Main", "box_PlaySound_v2_57.Finished", "box_MultipleOR_67.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_PlaySound_v2_63_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_67()
  l0 = self.box_PlaySound_v2_63
  l1 = self.box_MultipleOR_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1516529916", "1516529916", "S15M010_SCR_Main", "box_PlaySound_v2_63.Finished", "box_MultipleOR_67.Input", l0, l1)
  l1:Input(8)
end
function export:f_box_PlaySound_v2_65_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_67()
  l0 = self.box_PlaySound_v2_65
  l1 = self.box_MultipleOR_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|553488544", "553488544", "S15M010_SCR_Main", "box_PlaySound_v2_65.Finished", "box_MultipleOR_67.Input", l0, l1)
  l1:Input(10)
end
function export:f_box_InteractionScriptController_21_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_PhoneCommunicationMonitor_13()
  l0 = self.box_PhoneCommunicationMonitor_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1569165467", "1569165467", "S15M010_SCR_Main", "box_InteractionScriptController_21.Disabled", "box_PhoneCommunicationMonitor_13.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_TriggerMonitor_v2_6_Leave()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_68()
  l0 = self.box_TriggerMonitor_v2_6
  l1 = self.box_MultipleOR_68
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|395991356", "395991356", "S15M010_SCR_Main", "box_TriggerMonitor_v2_6.Leave", "box_MultipleOR_68.Input", l0, l1)
  l1:Input(3)
end
function export:f_box_Compare_Boolean_v2_36_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_32
  l0.SoundId = "soundbinary/3673576463.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1242424507", "1242424507", "S15M010_SCR_Main", "box_Compare_Boolean_v2_36.A_is_False", "box_PlayDialog_v2_32.Start", clone, l0)
  l0:Start()
end
function export:f_box_MultipleOR_66_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|2098443737"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_8_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_8_Out_1
  l0 = self.box_MultipleOR_66
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|879178922", "879178922", "S15M010_SCR_Main", "box_MultipleOR_66.Out", "box_Ordered_Output_8.In", l0, l1)
  l1:In()
end
function export:f_box_PlayDialog_v2_35_Finished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IS_NPCAlert
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1634032861"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_39_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_PlayDialog_v2_35
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|80908184", "80908184", "S15M010_SCR_Main", "box_PlayDialog_v2_35.Finished", "box_Compare_Boolean_v2_39.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_67_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_66()
  l0 = self.box_MultipleOR_67
  l1 = self.box_MultipleOR_66
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|726974781", "726974781", "S15M010_SCR_Main", "box_MultipleOR_67.Out", "box_MultipleOR_66.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_PlaySound_v2_55_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_67()
  l0 = self.box_PlaySound_v2_55
  l1 = self.box_MultipleOR_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1476378886", "1476378886", "S15M010_SCR_Main", "box_PlaySound_v2_55.Finished", "box_MultipleOR_67.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Compare_Boolean_v2_39_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_38
  l0.SoundId = "soundbinary/3982058000.bnk"
  l0.UseFacial = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1670403667", "1670403667", "S15M010_SCR_Main", "box_Compare_Boolean_v2_39.A_is_False", "box_PlayDialog_v2_38.Start", clone, l0)
  l0:Start()
end
function export:f_box_Simple_Node_9_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1749640794", "1749640794", "S15M010_SCR_Main", "box_Simple_Node_9.Out", "SCR_RobotMoving_Out", clone, self)
  self:SCR_RobotMoving_Out()
end
function export:f_box_MultipleOR_10_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|879448609"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_12_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_12_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_12_Out_2
  l0 = self.box_MultipleOR_10
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|2013392190", "2013392190", "S15M010_SCR_Main", "box_MultipleOR_10.Out", "box_Ordered_Output_12.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_45_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_78
  l0.SoundId = "soundbinary/2984368284.bnk"
  l0.UseFacial = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1681945300", "1681945300", "S15M010_SCR_Main", "box_Ordered_Output_45.Out", "box_PlayDialog_v2_78.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_45_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_70()
  l0 = self.box_MultipleOR_70
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|343375283", "343375283", "S15M010_SCR_Main", "box_Ordered_Output_45.Out", "box_MultipleOR_70.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_45_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TriggerMonitor_v2_6
  l0.Trigger = "9223372056997981720"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|182472376", "182472376", "S15M010_SCR_Main", "box_Ordered_Output_45.Out", "box_TriggerMonitor_v2_6.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_PlayDialog_v2_42_Finished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IS_NPCAlert
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1034755320"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_44_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_PlayDialog_v2_42
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|462023067", "462023067", "S15M010_SCR_Main", "box_PlayDialog_v2_42.Finished", "box_Compare_Boolean_v2_44.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_34_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_34
  self.IS_NPCAlert = l0.Target
end
function export:f_box_SetBoolean_v2_34_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_34
  self.IS_NPCAlert = l0.Target
end
function export:f_box_SetBoolean_v2_34_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_34
  self.IS_NPCAlert = l0.Target
end
function export:f_box_SetBoolean_v2_34_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_34
  self.IS_NPCAlert = l0.Target
end
function export:f_box_SetBoolean_v2_34_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_34
  self.IS_NPCAlert = l0.Target
end
function export:f_box_Compare_Boolean_v2_33_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_29
  l0.SoundId = "soundbinary/1858441775.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1376233392", "1376233392", "S15M010_SCR_Main", "box_Compare_Boolean_v2_33.A_is_False", "box_PlayDialog_v2_29.Start", clone, l0)
  l0:Start()
end
function export:f_box_Timer_v2_72_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_51
  l0.SceneEntity = "9223372069614332671"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S15/s15_s010_repairrobot.seq"
  l0.LoopAnim = 1
  l0 = self.box_Timer_v2_72
  l1 = self.box_PlaySequence_v5_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1010192466", "1010192466", "S15M010_SCR_Main", "box_Timer_v2_72.TimeElapsed", "box_PlaySequence_v5_51.Start", l0, l1)
  l1:Start()
end
function export:f_box_InteractionScriptController_5_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|722364606"
  l0._DynamicAnchors = {Out = 8}
  l0.Out[0] = self.f_box_Ordered_Output_27_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_27_Out_1
  l0.Out[2] = DummyFunction
  l0.Out[3] = DummyFunction
  l0.Out[4] = DummyFunction
  l0.Out[5] = DummyFunction
  l0.Out[6] = self.f_box_Ordered_Output_27_Out_6
  l0.Out[7] = self.f_box_Ordered_Output_27_Out_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1801840740", "1801840740", "S15M010_SCR_Main", "box_InteractionScriptController_5.Enabled", "box_Ordered_Output_27.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_24_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_68()
  l0 = self.box_MultipleOR_68
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1093421402", "1093421402", "S15M010_SCR_Main", "box_Ordered_Output_24.Out", "box_MultipleOR_68.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_24_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_AgentStateMonitor_V2_30()
  l0 = self.box_AgentStateMonitor_V2_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1956504601", "1956504601", "S15M010_SCR_Main", "box_Ordered_Output_24.Out", "box_AgentStateMonitor_V2_30.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_24_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_50()
  l0 = self.box_MultipleOR_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1217543742", "1217543742", "S15M010_SCR_Main", "box_Ordered_Output_24.Out", "box_MultipleOR_50.Input", clone, l0)
  l0:Input(6)
end
function export:f_box_Ordered_Output_24_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_70()
  l0 = self.box_MultipleOR_70
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|76438055", "76438055", "S15M010_SCR_Main", "box_Ordered_Output_24.Out", "box_MultipleOR_70.Input", clone, l0)
  l0:Input(3)
end
function export:f_box_SetBoolean_v2_31_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_31
  self.IS_NPCAlert = l0.Target
end
function export:f_box_SetBoolean_v2_31_SetFalse()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_31
  self.IS_NPCAlert = l0.Target
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372055812393598"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1135036574"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_21_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_SetBoolean_v2_31
  l1 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|436208966", "436208966", "S15M010_SCR_Main", "box_SetBoolean_v2_31.SetFalse", "box_InteractionScriptController_21.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_SetBoolean_v2_31_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_31
  self.IS_NPCAlert = l0.Target
end
function export:f_box_SetBoolean_v2_31_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_31
  self.IS_NPCAlert = l0.Target
end
function export:f_box_SetBoolean_v2_31_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_31
  self.IS_NPCAlert = l0.Target
end
function export:f_box_MultipleOR_40_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|2035290117"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_24_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_24_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_24_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_24_Out_3
  l0 = self.box_MultipleOR_40
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1792115225", "1792115225", "S15M010_SCR_Main", "box_MultipleOR_40.Out", "box_Ordered_Output_24.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_8_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_15()
  l0 = self.box_TriggerMonitor_v2_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1327915809", "1327915809", "S15M010_SCR_Main", "box_Ordered_Output_8.Out", "box_TriggerMonitor_v2_15.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_8_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372058574505971"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|1242824613"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|2145470446", "2145470446", "S15M010_SCR_Main", "box_Ordered_Output_8.Out", "box_ParticleFXController_v2_7.Start", clone, l0)
  l0:Start()
end
function export:f_box_PlayDialog_v2_78_Finished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IS_NPCAlert
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|425323150"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_37_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_PlayDialog_v2_78
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|856539151", "856539151", "S15M010_SCR_Main", "box_PlayDialog_v2_78.Finished", "box_Compare_Boolean_v2_37.In", l0, l1)
  l1:In()
end
function export:f_box_PlaySound_v2_64_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_67()
  l0 = self.box_PlaySound_v2_64
  l1 = self.box_MultipleOR_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15m010_scr.domino|@S15M010_SCR_Main|750976415", "750976415", "S15M010_SCR_Main", "box_PlaySound_v2_64.Finished", "box_MultipleOR_67.Input", l0, l1)
  l1:Input(9)
end
function export:OnEnter_box_MultipleOR_50()
end
function export:OnEnter_box_AgentStateMonitor_V2_30()
  local l0
  l0 = self.box_AgentStateMonitor_V2_30
  l0.NPC = self.RobotTalker
end
function export:OnEnter_box_MultipleOR_68()
end
function export:OnEnter_box_MultipleOR_70()
end
function export:OnEnter_box_Hackable_Monitor_69()
  local l0
  l0 = self.box_Hackable_Monitor_69
  l0.HackableEntity = self.RobotTalker
end
function export:OnEnter_box_PhoneCommunicationMonitor_13()
  local l0
  l0 = self.box_PhoneCommunicationMonitor_13
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357370929"
end
function export:OnEnter_box_TriggerMonitor_v2_15()
  local l0
  l0 = self.box_TriggerMonitor_v2_15
  l0.Trigger = "9223372049317940985"
end
function export:OnEnter_box_InteractionScriptMonitor_v2_25()
  local l0
  l0 = self.box_InteractionScriptMonitor_v2_25
  l0.InteractionScriptEntity = "9223372055812393598"
end
function export:OnEnter_box_MultipleOR_66()
end
function export:OnEnter_box_MultipleOR_67()
end
function export:OnEnter_box_MultipleOR_10()
end
function export:OnEnter_box_MultipleOR_40()
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
