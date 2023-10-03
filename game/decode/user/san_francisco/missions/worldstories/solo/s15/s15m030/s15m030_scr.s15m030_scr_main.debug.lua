export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CollisionController.lua")
  cbox:RegisterBox("domino/System/ConsoleCommand_v2.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/ParticleFxController_v2.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/RandomOutput_v2.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
  cbox:LoadResource("soundbinary/76266569.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3938413888.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2435228290.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/144509662.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2851627119.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2790199675.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2386437762.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/561297467.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2159746141.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1553517546.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/4120480278.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2916543809.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "S15M030_SCR_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main"
  self.Out_Annotations = DummyFunction
  self.SCR_CivilianEvacuation_Out = DummyFunction
  self.SCR_ProtoRobotTank_Out = DummyFunction
  self.SCR_PRotoRobotGun_Out = DummyFunction
  self.SCR_ProtoRobotShield_Out = DummyFunction
  self.SCR_SpiderStarting_Out = DummyFunction
  self.PlayerEntity = nil
  self.CivilianEvacuation_Civ01 = nil
  self.CivilianEvacuation_Civ02 = nil
  self.CivilianEvacuation_Civ03 = nil
  self.CivilianEvacuation_Security = nil
  self.Interact_RiotShieldProto = "9223372048743839331"
  self.Interact_AdvMobilityProto = "9223372048743842459"
  self.Interact_MachineGunProto = "9223372048743842469"
  self.RobotProto_Car = nil
  self.Tech_M_01 = nil
  self.Tech_F_01 = nil
  self.Nerdcore_M_05 = nil
  self.Nerdcore_M_01 = nil
  self.Nerdcore_F_01 = nil
  self.box_PlaySound_v2_28 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_28
  l0._graph = self
  l0._name = "box_PlaySound_v2_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|123153406"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_box_PlaySound_v2_28_Finished
  self.box_HackableController_v2_18 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_18
  l0._graph = self
  l0._name = "box_HackableController_v2_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|144290695"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_18_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_PlaySound_v2_44 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_44
  l0._graph = self
  l0._name = "box_PlaySound_v2_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|206438062"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_ConsoleCommand_v2_1 = cbox:CreateBox("domino/System/ConsoleCommand_v2.lua")
  l0 = self.box_ConsoleCommand_v2_1
  l0._graph = self
  l0._name = "box_ConsoleCommand_v2_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|238144004"
  l0.Enabled = self.f_box_ConsoleCommand_v2_1_Enabled
  l0.Disabled = DummyFunction
  l0.Executed = DummyFunction
  self.box_TriggerMonitor_v2_24 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_24
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|341011081"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_24_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_CinematicPrep_6 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_6
  l0._graph = self
  l0._name = "box_CinematicPrep_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|356838173"
  l0.PreOut = self.f_box_CinematicPrep_6_PreOut
  l0.PostOut = DummyFunction
  self.box_HackableController_v2_20 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_20
  l0._graph = self
  l0._name = "box_HackableController_v2_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|357285948"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_20_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_PlaySequence_v5_45 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_45
  l0._graph = self
  l0._name = "box_PlaySequence_v5_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|377336205"
  l0._DynamicAnchors = {
    SPOut = {
      "BreakFirstBottle",
      "BreakSecondBottle",
      "BreakThirdBottle",
      "BreakFourthBottle"
    }
  }
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_45_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_45_Finished
  l0.SPOut.BreakFirstBottle = DummyFunction
  l0.SPOut.BreakSecondBottle = DummyFunction
  l0.SPOut.BreakThirdBottle = self.f_box_PlaySequence_v5_45_SPOut__BreakThirdBottle_
  l0.SPOut.BreakFourthBottle = DummyFunction
  self.box_PlaySequence_v5_43 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_43
  l0._graph = self
  l0._name = "box_PlaySequence_v5_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|458333075"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_22 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_22
  l0._graph = self
  l0._name = "box_PlaySound_v2_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|459777609"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_box_PlaySound_v2_22_Finished
  self.box_OnceOnly_v3_57 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_57
  l0._graph = self
  l0._name = "box_OnceOnly_v3_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|619961942"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_57_Out
  l0.ResetOut = DummyFunction
  self.box_CLOController_12 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_12
  l0._graph = self
  l0._name = "box_CLOController_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|640625570"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_12_OnUserInPlace
  self.box_MultipleOR_29 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_29
  l0._graph = self
  l0._name = "box_MultipleOR_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|703886445"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_29_Out
  self.box_CinematicPrep_9 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_9
  l0._graph = self
  l0._name = "box_CinematicPrep_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|797806445"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_9_PostOut
  self.box_CinematicPrep_10 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_10
  l0._graph = self
  l0._name = "box_CinematicPrep_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|804933294"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_10_PostOut
  self.box_RandomOutput_v2_23 = cbox:CreateBox("domino/System/RandomOutput_v2.lua")
  l0 = self.box_RandomOutput_v2_23
  l0._graph = self
  l0._name = "box_RandomOutput_v2_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|835447046"
  l0._DynamicAnchors = {Probability = 11, Output = 11}
  l0.Out = DummyFunction
  l0.ResetOut = DummyFunction
  l0.None = DummyFunction
  l0.Output[0] = self.f_box_RandomOutput_v2_23_Output_0
  l0.Output[1] = self.f_box_RandomOutput_v2_23_Output_1
  l0.Output[2] = self.f_box_RandomOutput_v2_23_Output_2
  l0.Output[3] = self.f_box_RandomOutput_v2_23_Output_3
  l0.Output[4] = self.f_box_RandomOutput_v2_23_Output_4
  l0.Output[5] = self.f_box_RandomOutput_v2_23_Output_5
  l0.Output[6] = self.f_box_RandomOutput_v2_23_Output_6
  l0.Output[7] = self.f_box_RandomOutput_v2_23_Output_7
  l0.Output[8] = self.f_box_RandomOutput_v2_23_Output_8
  l0.Output[9] = self.f_box_RandomOutput_v2_23_Output_9
  l0.Output[10] = self.f_box_RandomOutput_v2_23_Output_10
  self.box_PlaySound_v2_27 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_27
  l0._graph = self
  l0._name = "box_PlaySound_v2_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|892535332"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_box_PlaySound_v2_27_Finished
  self.box_CinematicPrep_60 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_60
  l0._graph = self
  l0._name = "box_CinematicPrep_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|981364004"
  l0.PreOut = self.f_box_CinematicPrep_60_PreOut
  l0.PostOut = DummyFunction
  self.box_Timer_v2_51 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_51
  l0._graph = self
  l0._name = "box_Timer_v2_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|982930643"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_51_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySequence_v5_15 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_15
  l0._graph = self
  l0._name = "box_PlaySequence_v5_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|984779805"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySequence_v5_46 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_46
  l0._graph = self
  l0._name = "box_PlaySequence_v5_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1006167782"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  self.box_CinematicPrep_8 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_8
  l0._graph = self
  l0._name = "box_CinematicPrep_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1015334920"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_8_PostOut
  self.box_Timer_v2_50 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_50
  l0._graph = self
  l0._name = "box_Timer_v2_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1102685514"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_50_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_25 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_25
  l0._graph = self
  l0._name = "box_PlaySound_v2_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1115753311"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_box_PlaySound_v2_25_Finished
  self.box_CinematicPrep_58 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_58
  l0._graph = self
  l0._name = "box_CinematicPrep_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1190710346"
  l0.PreOut = self.f_box_CinematicPrep_58_PreOut
  l0.PostOut = DummyFunction
  self.box_PlaySound_v2_35 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_35
  l0._graph = self
  l0._name = "box_PlaySound_v2_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1231293565"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_box_PlaySound_v2_35_Finished
  self.box_CLOController_14 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_14
  l0._graph = self
  l0._name = "box_CLOController_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1255326844"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_14_OnUserInPlace
  self.box_MultipleOR_33 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_33
  l0._graph = self
  l0._name = "box_MultipleOR_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1259077466"
  l0._DynamicAnchors = {Input = 11}
  l0.Out = self.f_box_MultipleOR_33_Out
  self.box_PlaySound_v2_4 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_4
  l0._graph = self
  l0._name = "box_PlaySound_v2_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1322296450"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_box_PlaySound_v2_4_Finished
  self.box_PlaySound_v2_34 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_34
  l0._graph = self
  l0._name = "box_PlaySound_v2_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1336252183"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_box_PlaySound_v2_34_Finished
  self.box_HackableController_v2_19 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_19
  l0._graph = self
  l0._name = "box_HackableController_v2_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1445083517"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_19_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Timer_v2_54 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_54
  l0._graph = self
  l0._name = "box_Timer_v2_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1462097118"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_54_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CinematicPrep_59 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_59
  l0._graph = self
  l0._name = "box_CinematicPrep_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1592679716"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_59_PostOut
  self.box_PlaySequence_v5_21 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_21
  l0._graph = self
  l0._name = "box_PlaySequence_v5_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1598079681"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySequence_v5_47 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_47
  l0._graph = self
  l0._name = "box_PlaySequence_v5_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1613083926"
  l0._DynamicAnchors = {
    SPOut = {"StartVO", "pause"}
  }
  l0.Started = self.f_box_PlaySequence_v5_47_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  l0.SPOut.StartVO = DummyFunction
  l0.SPOut.pause = DummyFunction
  self.box_CinematicPrep_5 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_5
  l0._graph = self
  l0._name = "box_CinematicPrep_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1633211023"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_5_PostOut
  self.box_PlaySound_v2_30 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_30
  l0._graph = self
  l0._name = "box_PlaySound_v2_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1633767504"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_box_PlaySound_v2_30_Finished
  self.box_PlaySound_v2_2 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_2
  l0._graph = self
  l0._name = "box_PlaySound_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1653027464"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_box_PlaySound_v2_2_Finished
  self.box_PlaySequence_v5_42 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_42
  l0._graph = self
  l0._name = "box_PlaySequence_v5_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1675834022"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_42_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_42_Finished
  self.box_PlaySound_v2_32 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_32
  l0._graph = self
  l0._name = "box_PlaySound_v2_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1796029792"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_box_PlaySound_v2_32_Finished
  self.box_CinematicPrep_7 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_7
  l0._graph = self
  l0._name = "box_CinematicPrep_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1894825008"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_7_PostOut
  self.box_OnceOnly_v3_55 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_55
  l0._graph = self
  l0._name = "box_OnceOnly_v3_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1964588180"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_55_Out
  l0.ResetOut = DummyFunction
  self.box_PlaySound_v2_31 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_31
  l0._graph = self
  l0._name = "box_PlaySound_v2_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1995086412"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_box_PlaySound_v2_31_Finished
  self.box_CLOController_13 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_13
  l0._graph = self
  l0._name = "box_CLOController_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|2024681310"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_13_OnUserInPlace
  self.box_PlaySequence_v5_40 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_40
  l0._graph = self
  l0._name = "box_PlaySequence_v5_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|2074575507"
  l0._DynamicAnchors = {
    EntityOut = {
      "DestroyedCar_Var"
    },
    SPOut = {"SetEngine"}
  }
  l0.Started = self.f_box_PlaySequence_v5_40_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_40_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_40_Finished
  l0.SPOut.SetEngine = DummyFunction
  self.box_OnceOnly_v3_56 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_56
  l0._graph = self
  l0._name = "box_OnceOnly_v3_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|2094341480"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_56_Out
  l0.ResetOut = DummyFunction
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|167234674", "167234674", "S15M030_SCR_Main", "In", "box_ConsoleCommand_v2_1.Enable", self, l0)
  l0:Enable()
end
function export:SCR_ProtoRobotGun()
  local l0
  l0 = self.box_CinematicPrep_6
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1451214825", "1451214825", "S15M030_SCR_Main", "SCR_ProtoRobotGun", "box_CinematicPrep_6.PreCinematic", self, l0)
  l0:PreCinematic()
end
function export:SCR_ProtoRobotShield()
  local l0
  l0 = self.box_CinematicPrep_60
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|322174498", "322174498", "S15M030_SCR_Main", "SCR_ProtoRobotShield", "box_CinematicPrep_60.PreCinematic", self, l0)
  l0:PreCinematic()
end
function export:SCR_ProtoRobotTank()
  local l0
  l0 = self.box_CinematicPrep_58
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|798859788", "798859788", "S15M030_SCR_Main", "SCR_ProtoRobotTank", "box_CinematicPrep_58.PreCinematic", self, l0)
  l0:PreCinematic()
end
function export:SCR_SpiderStarting()
  local l0
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1901495850"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_3_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_3_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|235156580", "235156580", "S15M030_SCR_Main", "SCR_SpiderStarting", "box_Ordered_Output_3.In", self, l0)
  l0:In()
end
function export:SCR_WrenchJRZone()
  local l0
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1196061375"
  l0._DynamicAnchors = {Out = 6}
  l0.Out[0] = DummyFunction
  l0.Out[1] = self.f_box_Ordered_Output_16_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_16_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_16_Out_3
  l0.Out[4] = DummyFunction
  l0.Out[5] = self.f_box_Ordered_Output_16_Out_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1179105763", "1179105763", "S15M030_SCR_Main", "SCR_WrenchJRZone", "box_Ordered_Output_16.In", self, l0)
  l0:In()
end
function export:StartRepairRobot()
  local l0
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|2101302218"
  l0._DynamicAnchors = {Out = 6}
  l0.Out[0] = self.f_box_Ordered_Output_48_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_48_Out_1
  l0.Out[2] = DummyFunction
  l0.Out[3] = DummyFunction
  l0.Out[4] = self.f_box_Ordered_Output_48_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_48_Out_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|734845577", "734845577", "S15M030_SCR_Main", "StartRepairRobot", "box_Ordered_Output_48.In", self, l0)
  l0:In()
end
function export:StopRepairRobot()
  local l0
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|840976186"
  l0._DynamicAnchors = {Out = 6}
  l0.Out[0] = self.f_box_Ordered_Output_49_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_49_Out_1
  l0.Out[2] = DummyFunction
  l0.Out[3] = DummyFunction
  l0.Out[4] = self.f_box_Ordered_Output_49_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_49_Out_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|966618742", "966618742", "S15M030_SCR_Main", "StopRepairRobot", "box_Ordered_Output_49.In", self, l0)
  l0:In()
end
function export:f_box_VisibilityController_v2_39_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372067007902628"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|674390843"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_41_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|423504421", "423504421", "S15M030_SCR_Main", "box_VisibilityController_v2_39.Hidden", "box_VisibilityController_v2_41.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_PlaySound_v2_28_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_33()
  l0 = self.box_PlaySound_v2_28
  l1 = self.box_MultipleOR_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|832481822", "832481822", "S15M030_SCR_Main", "box_PlaySound_v2_28.Finished", "box_MultipleOR_33.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_HackableController_v2_18_Disabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_18()
  l0 = self.box_HackableController_v2_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|517993638", "517993638", "S15M030_SCR_Main", "box_HackableController_v2_18.Disabled", "box_HackableController_v2_18.DisableProfiling", l0, l0)
  l0:DisableProfiling()
end
function export:f_box_VisibilityController_v2_53_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372067007902624"
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1059037359"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_61_CollisionsDisabled
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1854803835", "1854803835", "S15M030_SCR_Main", "box_VisibilityController_v2_53.Hidden", "box_CollisionController_61.DisableCollisions", clone, l0)
  l0:DisableCollisions()
end
function export:f_box_Ordered_Output_37_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_24()
  l0 = self.box_TriggerMonitor_v2_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|829722554", "829722554", "S15M030_SCR_Main", "box_Ordered_Output_37.Out", "box_TriggerMonitor_v2_24.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_37_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372058562268339"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|259540418"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1327184690", "1327184690", "S15M030_SCR_Main", "box_Ordered_Output_37.Out", "box_ParticleFXController_v2_36.Start", clone, l0)
  l0:Start()
end
function export:f_box_ConsoleCommand_v2_1_Enabled()
  local l0
  self = self._graph
  l0 = self.box_ConsoleCommand_v2_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1811020494", "1811020494", "S15M030_SCR_Main", "box_ConsoleCommand_v2_1.Enabled", "Out Annotations", l0, self)
  self:Out_Annotations()
end
function export:f_box_TriggerMonitor_v2_24_Enter()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1006155794"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_26_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_26_Out_1
  l0 = self.box_TriggerMonitor_v2_24
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|588361093", "588361093", "S15M030_SCR_Main", "box_TriggerMonitor_v2_24.Enter", "box_Ordered_Output_26.In", l0, l1)
  l1:In()
end
function export:f_box_CinematicPrep_6_PreOut()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_42
  l0.SceneEntity = "9223372049574014432"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S15/s15_protorobotgun.seq"
  l0 = self.box_CinematicPrep_6
  l1 = self.box_PlaySequence_v5_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1394487361", "1394487361", "S15M030_SCR_Main", "box_CinematicPrep_6.PreOut", "box_PlaySequence_v5_42.Start", l0, l1)
  l1:Start()
end
function export:f_box_HackableController_v2_20_Disabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_20()
  l0 = self.box_HackableController_v2_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|277436442", "277436442", "S15M030_SCR_Main", "box_HackableController_v2_20.Disabled", "box_HackableController_v2_20.DisableProfiling", l0, l0)
  l0:DisableProfiling()
end
function export:f_box_PlaySequence_v5_45_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_57()
  l0 = self.box_PlaySequence_v5_45
  l1 = self.box_OnceOnly_v3_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|7234208", "7234208", "S15M030_SCR_Main", "box_PlaySequence_v5_45.Finished", "box_OnceOnly_v3_57.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_45_Skipped()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_10
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_PlaySequence_v5_45
  l1 = self.box_CinematicPrep_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|257901827", "257901827", "S15M030_SCR_Main", "box_PlaySequence_v5_45.Skipped", "box_CinematicPrep_10.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_PlaySequence_v5_45_SPOut__BreakThirdBottle_()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372067007902624"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1984300671"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_52_Hidden
  l0.Out = DummyFunction
  l0 = self.box_PlaySequence_v5_45
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1834065562", "1834065562", "S15M030_SCR_Main", "box_PlaySequence_v5_45.SPOut", "box_VisibilityController_v2_52.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_PlaySound_v2_22_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_33()
  l0 = self.box_PlaySound_v2_22
  l1 = self.box_MultipleOR_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1892652762", "1892652762", "S15M030_SCR_Main", "box_PlaySound_v2_22.Finished", "box_MultipleOR_33.Input", l0, l1)
  l1:Input(10)
end
function export:f_box_OnceOnly_v3_57_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_7
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_OnceOnly_v3_57
  l1 = self.box_CinematicPrep_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|144366647", "144366647", "S15M030_SCR_Main", "box_OnceOnly_v3_57.Out", "box_CinematicPrep_7.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_CLOController_12_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_12
  self.Tech_F_01 = l0.UserID
  self:OnEnter_box_HackableController_v2_18()
  l1 = self.box_HackableController_v2_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1060959476", "1060959476", "S15M030_SCR_Main", "box_CLOController_12.OnUserInPlace", "box_HackableController_v2_18.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_VisibilityController_v2_41_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372067007902630"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|200676255"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_53_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|99438009", "99438009", "S15M030_SCR_Main", "box_VisibilityController_v2_41.Hidden", "box_VisibilityController_v2_53.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_MultipleOR_29_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|223294763"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_37_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_37_Out_1
  l0 = self.box_MultipleOR_29
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1265031183", "1265031183", "S15M030_SCR_Main", "box_MultipleOR_29.Out", "box_Ordered_Output_37.In", l0, l1)
  l1:In()
end
function export:f_box_CinematicPrep_9_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_55()
  l0 = self.box_CinematicPrep_9
  l1 = self.box_OnceOnly_v3_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1015306142", "1015306142", "S15M030_SCR_Main", "box_CinematicPrep_9.PostOut", "box_OnceOnly_v3_55.In", l0, l1)
  l1:In(0)
end
function export:f_box_CinematicPrep_10_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_57()
  l0 = self.box_CinematicPrep_10
  l1 = self.box_OnceOnly_v3_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|648694132", "648694132", "S15M030_SCR_Main", "box_CinematicPrep_10.PostOut", "box_OnceOnly_v3_57.In", l0, l1)
  l1:In(0)
end
function export:f_box_RandomOutput_v2_23_Output_0()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_28
  l0.SoundId = "soundbinary/2386437762.bnk"
  l0 = self.box_RandomOutput_v2_23
  l1 = self.box_PlaySound_v2_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|358507490", "358507490", "S15M030_SCR_Main", "box_RandomOutput_v2_23.Output", "box_PlaySound_v2_28.Play", l0, l1)
  l1:Play()
end
function export:f_box_RandomOutput_v2_23_Output_1()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_27
  l0.SoundId = "soundbinary/144509662.bnk"
  l0 = self.box_RandomOutput_v2_23
  l1 = self.box_PlaySound_v2_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|256637867", "256637867", "S15M030_SCR_Main", "box_RandomOutput_v2_23.Output", "box_PlaySound_v2_27.Play", l0, l1)
  l1:Play()
end
function export:f_box_RandomOutput_v2_23_Output_2()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_30
  l0.SoundId = "soundbinary/1553517546.bnk"
  l0 = self.box_RandomOutput_v2_23
  l1 = self.box_PlaySound_v2_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|988175561", "988175561", "S15M030_SCR_Main", "box_RandomOutput_v2_23.Output", "box_PlaySound_v2_30.Play", l0, l1)
  l1:Play()
end
function export:f_box_RandomOutput_v2_23_Output_3()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_25
  l0.SoundId = "soundbinary/2916543809.bnk"
  l0 = self.box_RandomOutput_v2_23
  l1 = self.box_PlaySound_v2_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|608464941", "608464941", "S15M030_SCR_Main", "box_RandomOutput_v2_23.Output", "box_PlaySound_v2_25.Play", l0, l1)
  l1:Play()
end
function export:f_box_RandomOutput_v2_23_Output_4()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_32
  l0.SoundId = "soundbinary/2851627119.bnk"
  l0 = self.box_RandomOutput_v2_23
  l1 = self.box_PlaySound_v2_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|449265368", "449265368", "S15M030_SCR_Main", "box_RandomOutput_v2_23.Output", "box_PlaySound_v2_32.Play", l0, l1)
  l1:Play()
end
function export:f_box_RandomOutput_v2_23_Output_5()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_35
  l0.SoundId = "soundbinary/76266569.bnk"
  l0 = self.box_RandomOutput_v2_23
  l1 = self.box_PlaySound_v2_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1928083102", "1928083102", "S15M030_SCR_Main", "box_RandomOutput_v2_23.Output", "box_PlaySound_v2_35.Play", l0, l1)
  l1:Play()
end
function export:f_box_RandomOutput_v2_23_Output_6()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_34
  l0.SoundId = "soundbinary/561297467.bnk"
  l0 = self.box_RandomOutput_v2_23
  l1 = self.box_PlaySound_v2_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|703736448", "703736448", "S15M030_SCR_Main", "box_RandomOutput_v2_23.Output", "box_PlaySound_v2_34.Play", l0, l1)
  l1:Play()
end
function export:f_box_RandomOutput_v2_23_Output_7()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_2
  l0.SoundId = "soundbinary/3938413888.bnk"
  l0 = self.box_RandomOutput_v2_23
  l1 = self.box_PlaySound_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|999263151", "999263151", "S15M030_SCR_Main", "box_RandomOutput_v2_23.Output", "box_PlaySound_v2_2.Play", l0, l1)
  l1:Play()
end
function export:f_box_RandomOutput_v2_23_Output_8()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_31
  l0.SoundId = "soundbinary/2435228290.bnk"
  l0 = self.box_RandomOutput_v2_23
  l1 = self.box_PlaySound_v2_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|185417650", "185417650", "S15M030_SCR_Main", "box_RandomOutput_v2_23.Output", "box_PlaySound_v2_31.Play", l0, l1)
  l1:Play()
end
function export:f_box_RandomOutput_v2_23_Output_9()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_4
  l0.SoundId = "soundbinary/2790199675.bnk"
  l0 = self.box_RandomOutput_v2_23
  l1 = self.box_PlaySound_v2_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|684558064", "684558064", "S15M030_SCR_Main", "box_RandomOutput_v2_23.Output", "box_PlaySound_v2_4.Play", l0, l1)
  l1:Play()
end
function export:f_box_RandomOutput_v2_23_Output_10()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_22
  l0.SoundId = "soundbinary/2159746141.bnk"
  l0 = self.box_RandomOutput_v2_23
  l1 = self.box_PlaySound_v2_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1255257082", "1255257082", "S15M030_SCR_Main", "box_RandomOutput_v2_23.Output", "box_PlaySound_v2_22.Play", l0, l1)
  l1:Play()
end
function export:f_box_Ordered_Output_49_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_PlaySequence_v5_15()
  l0 = self.box_PlaySequence_v5_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|421820149", "421820149", "S15M030_SCR_Main", "box_Ordered_Output_49.Out", "box_PlaySequence_v5_15.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_49_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_PlaySequence_v5_21()
  l0 = self.box_PlaySequence_v5_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1309284928", "1309284928", "S15M030_SCR_Main", "box_Ordered_Output_49.Out", "box_PlaySequence_v5_21.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_49_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_PlaySequence_v5_43()
  l0 = self.box_PlaySequence_v5_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1244101114", "1244101114", "S15M030_SCR_Main", "box_Ordered_Output_49.Out", "box_PlaySequence_v5_43.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_49_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_PlaySequence_v5_46()
  l0 = self.box_PlaySequence_v5_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|2064265573", "2064265573", "S15M030_SCR_Main", "box_Ordered_Output_49.Out", "box_PlaySequence_v5_46.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_PlaySound_v2_27_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_33()
  l0 = self.box_PlaySound_v2_27
  l1 = self.box_MultipleOR_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1602038859", "1602038859", "S15M030_SCR_Main", "box_PlaySound_v2_27.Finished", "box_MultipleOR_33.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_CinematicPrep_60_PreOut()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_45
  l0.SceneEntity = "9223372049574014433"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S15/s15_protorobotshield.seq"
  l0 = self.box_CinematicPrep_60
  l1 = self.box_PlaySequence_v5_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1132122840", "1132122840", "S15M030_SCR_Main", "box_CinematicPrep_60.PreOut", "box_PlaySequence_v5_45.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_51_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PlaySequence_v5_21()
  l0 = self.box_Timer_v2_51
  l1 = self.box_PlaySequence_v5_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1484794107", "1484794107", "S15M030_SCR_Main", "box_Timer_v2_51.TimeElapsed", "box_PlaySequence_v5_21.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_26_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_RandomOutput_v2_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1744621073", "1744621073", "S15M030_SCR_Main", "box_Ordered_Output_26.Out", "box_RandomOutput_v2_23.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_26_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_24()
  l0 = self.box_TriggerMonitor_v2_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1817507001", "1817507001", "S15M030_SCR_Main", "box_Ordered_Output_26.Out", "box_TriggerMonitor_v2_24.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_CinematicPrep_8_PostOut()
  local l0
  self = self._graph
  l0 = self.box_CinematicPrep_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|2042876649", "2042876649", "S15M030_SCR_Main", "box_CinematicPrep_8.PostOut", "SCR_ProtoRobotTank_Out", l0, self)
  self:SCR_ProtoRobotTank_Out()
end
function export:f_box_CollisionController_61_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372067007902626"
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1244965774"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_62_CollisionsDisabled
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1516555557", "1516555557", "S15M030_SCR_Main", "box_CollisionController_61.CollisionsDisabled", "box_CollisionController_62.DisableCollisions", clone, l0)
  l0:DisableCollisions()
end
function export:f_box_Timer_v2_50_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PlaySequence_v5_15()
  l0 = self.box_Timer_v2_50
  l1 = self.box_PlaySequence_v5_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|2033970707", "2033970707", "S15M030_SCR_Main", "box_Timer_v2_50.TimeElapsed", "box_PlaySequence_v5_15.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlaySound_v2_25_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_33()
  l0 = self.box_PlaySound_v2_25
  l1 = self.box_MultipleOR_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1604820269", "1604820269", "S15M030_SCR_Main", "box_PlaySound_v2_25.Finished", "box_MultipleOR_33.Input", l0, l1)
  l1:Input(3)
end
function export:f_box_CinematicPrep_58_PreOut()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_40
  l0.SceneEntity = "9223372049574014434"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S15/s15_protorobottank.seq"
  l0 = self.box_CinematicPrep_58
  l1 = self.box_PlaySequence_v5_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1953089088", "1953089088", "S15M030_SCR_Main", "box_CinematicPrep_58.PreOut", "box_PlaySequence_v5_40.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_16_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_12
  l0.CLO = "9223372058516823810"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1623470057", "1623470057", "S15M030_SCR_Main", "box_Ordered_Output_16.Out", "box_CLOController_12.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_16_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_13
  l0.CLO = "9223372058516824198"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|218047147", "218047147", "S15M030_SCR_Main", "box_Ordered_Output_16.Out", "box_CLOController_13.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_16_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_14
  l0.CLO = "9223372058516824199"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1576855251", "1576855251", "S15M030_SCR_Main", "box_Ordered_Output_16.Out", "box_CLOController_14.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_16_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_29()
  l0 = self.box_MultipleOR_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1233233032", "1233233032", "S15M030_SCR_Main", "box_Ordered_Output_16.Out", "box_MultipleOR_29.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_PlaySound_v2_35_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_33()
  l0 = self.box_PlaySound_v2_35
  l1 = self.box_MultipleOR_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|315161509", "315161509", "S15M030_SCR_Main", "box_PlaySound_v2_35.Finished", "box_MultipleOR_33.Input", l0, l1)
  l1:Input(5)
end
function export:f_box_CollisionController_62_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372067007902628"
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1385952460"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_63_CollisionsDisabled
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1927562408", "1927562408", "S15M030_SCR_Main", "box_CollisionController_62.CollisionsDisabled", "box_CollisionController_63.DisableCollisions", clone, l0)
  l0:DisableCollisions()
end
function export:f_box_CLOController_14_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_14
  self.Nerdcore_M_01 = l0.UserID
  self:OnEnter_box_HackableController_v2_20()
  l1 = self.box_HackableController_v2_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|810660315", "810660315", "S15M030_SCR_Main", "box_CLOController_14.OnUserInPlace", "box_HackableController_v2_20.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_MultipleOR_33_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_29()
  l0 = self.box_MultipleOR_33
  l1 = self.box_MultipleOR_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1535626837", "1535626837", "S15M030_SCR_Main", "box_MultipleOR_33.Out", "box_MultipleOR_29.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_PlaySound_v2_4_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_33()
  l0 = self.box_PlaySound_v2_4
  l1 = self.box_MultipleOR_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1848478154", "1848478154", "S15M030_SCR_Main", "box_PlaySound_v2_4.Finished", "box_MultipleOR_33.Input", l0, l1)
  l1:Input(9)
end
function export:f_box_PlaySound_v2_34_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_33()
  l0 = self.box_PlaySound_v2_34
  l1 = self.box_MultipleOR_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1322320891", "1322320891", "S15M030_SCR_Main", "box_PlaySound_v2_34.Finished", "box_MultipleOR_33.Input", l0, l1)
  l1:Input(6)
end
function export:f_box_CollisionController_63_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372067007902630"
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|639748350"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1746323334", "1746323334", "S15M030_SCR_Main", "box_CollisionController_63.CollisionsDisabled", "box_CollisionController_64.DisableCollisions", clone, l0)
  l0:DisableCollisions()
end
function export:f_box_HackableController_v2_19_Disabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_19()
  l0 = self.box_HackableController_v2_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|249863700", "249863700", "S15M030_SCR_Main", "box_HackableController_v2_19.Disabled", "box_HackableController_v2_19.DisableProfiling", l0, l0)
  l0:DisableProfiling()
end
function export:f_box_Timer_v2_54_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PlaySequence_v5_43()
  l0 = self.box_Timer_v2_54
  l1 = self.box_PlaySequence_v5_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|703465961", "703465961", "S15M030_SCR_Main", "box_Timer_v2_54.TimeElapsed", "box_PlaySequence_v5_43.Start", l0, l1)
  l1:Start()
end
function export:f_box_CinematicPrep_59_PostOut()
  local l0
  self = self._graph
  l0 = self.box_CinematicPrep_59
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|63458888", "63458888", "S15M030_SCR_Main", "box_CinematicPrep_59.PostOut", "SCR_PRotoRobotGun_Out", l0, self)
  self:SCR_PRotoRobotGun_Out()
end
function export:f_box_PlaySequence_v5_47_Started()
  local l0
  self = self._graph
  l0 = self.box_PlaySequence_v5_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1201877252", "1201877252", "S15M030_SCR_Main", "box_PlaySequence_v5_47.Started", "SCR_SpiderStarting_Out", l0, self)
  self:SCR_SpiderStarting_Out()
end
function export:f_box_CinematicPrep_5_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_56()
  l0 = self.box_CinematicPrep_5
  l1 = self.box_OnceOnly_v3_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|911058653", "911058653", "S15M030_SCR_Main", "box_CinematicPrep_5.PostOut", "box_OnceOnly_v3_56.In", l0, l1)
  l1:In(0)
end
function export:f_box_PlaySound_v2_30_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_33()
  l0 = self.box_PlaySound_v2_30
  l1 = self.box_MultipleOR_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1194120293", "1194120293", "S15M030_SCR_Main", "box_PlaySound_v2_30.Finished", "box_MultipleOR_33.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_PlaySound_v2_2_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_33()
  l0 = self.box_PlaySound_v2_2
  l1 = self.box_MultipleOR_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1192438688", "1192438688", "S15M030_SCR_Main", "box_PlaySound_v2_2.Finished", "box_MultipleOR_33.Input", l0, l1)
  l1:Input(7)
end
function export:f_box_PlaySequence_v5_42_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_55()
  l0 = self.box_PlaySequence_v5_42
  l1 = self.box_OnceOnly_v3_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1494737359", "1494737359", "S15M030_SCR_Main", "box_PlaySequence_v5_42.Finished", "box_OnceOnly_v3_55.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_42_Skipped()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_9
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_PlaySequence_v5_42
  l1 = self.box_CinematicPrep_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|811785591", "811785591", "S15M030_SCR_Main", "box_PlaySequence_v5_42.Skipped", "box_CinematicPrep_9.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_PlaySound_v2_32_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_33()
  l0 = self.box_PlaySound_v2_32
  l1 = self.box_MultipleOR_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|303570690", "303570690", "S15M030_SCR_Main", "box_PlaySound_v2_32.Finished", "box_MultipleOR_33.Input", l0, l1)
  l1:Input(4)
end
function export:f_box_CinematicPrep_7_PostOut()
  local l0
  self = self._graph
  l0 = self.box_CinematicPrep_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1179108339", "1179108339", "S15M030_SCR_Main", "box_CinematicPrep_7.PostOut", "SCR_ProtoRobotShield_Out", l0, self)
  self:SCR_ProtoRobotShield_Out()
end
function export:f_box_Ordered_Output_3_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_47
  l0.SceneEntity = "9223372049574129922"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S15/s15_spiderdronestarting.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1130967922", "1130967922", "S15M030_SCR_Main", "box_Ordered_Output_3.Out", "box_PlaySequence_v5_47.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_3_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_44
  l0.SoundId = "soundbinary/4120480278.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|50067218", "50067218", "S15M030_SCR_Main", "box_Ordered_Output_3.Out", "box_PlaySound_v2_44.Play", clone, l0)
  l0:Play()
end
function export:f_box_OnceOnly_v3_55_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_59
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_OnceOnly_v3_55
  l1 = self.box_CinematicPrep_59
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|630466265", "630466265", "S15M030_SCR_Main", "box_OnceOnly_v3_55.Out", "box_CinematicPrep_59.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_VisibilityController_v2_52_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372067007902626"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|91622147"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_39_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|734447220", "734447220", "S15M030_SCR_Main", "box_VisibilityController_v2_52.Hidden", "box_VisibilityController_v2_39.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_PlaySound_v2_31_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_33()
  l0 = self.box_PlaySound_v2_31
  l1 = self.box_MultipleOR_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1848790607", "1848790607", "S15M030_SCR_Main", "box_PlaySound_v2_31.Finished", "box_MultipleOR_33.Input", l0, l1)
  l1:Input(8)
end
function export:f_box_CLOController_13_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_13
  self.Nerdcore_M_05 = l0.UserID
  self:OnEnter_box_HackableController_v2_19()
  l1 = self.box_HackableController_v2_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|540413871", "540413871", "S15M030_SCR_Main", "box_CLOController_13.OnUserInPlace", "box_HackableController_v2_19.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_PlaySequence_v5_40_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_56()
  l0 = self.box_PlaySequence_v5_40
  l1 = self.box_OnceOnly_v3_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|814542317", "814542317", "S15M030_SCR_Main", "box_PlaySequence_v5_40.Finished", "box_OnceOnly_v3_56.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_40_Skipped()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_5
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_PlaySequence_v5_40
  l1 = self.box_CinematicPrep_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1147966938", "1147966938", "S15M030_SCR_Main", "box_PlaySequence_v5_40.Skipped", "box_CinematicPrep_5.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_PlaySequence_v5_40_Started()
  local l0
  self = self._graph
  l0 = self.box_PlaySequence_v5_40
  self.DestroyedCar = l0.EntityOut.DestroyedCar_Var
end
function export:f_box_OnceOnly_v3_56_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_8
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_OnceOnly_v3_56
  l1 = self.box_CinematicPrep_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1001044024", "1001044024", "S15M030_SCR_Main", "box_OnceOnly_v3_56.Out", "box_CinematicPrep_8.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_Ordered_Output_48_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_50
  l0.Seconds = 0.1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|301677348", "301677348", "S15M030_SCR_Main", "box_Ordered_Output_48.Out", "box_Timer_v2_50.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_48_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_51
  l0.Seconds = 0.75
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1190149680", "1190149680", "S15M030_SCR_Main", "box_Ordered_Output_48.Out", "box_Timer_v2_51.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_48_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_54
  l0.Seconds = 0.25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|565830738", "565830738", "S15M030_SCR_Main", "box_Ordered_Output_48.Out", "box_Timer_v2_54.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_48_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_PlaySequence_v5_46()
  l0 = self.box_PlaySequence_v5_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15m030_scr.domino|@S15M030_SCR_Main|1286379449", "1286379449", "S15M030_SCR_Main", "box_Ordered_Output_48.Out", "box_PlaySequence_v5_46.Start", clone, l0)
  l0:Start()
end
function export:OnEnter_box_HackableController_v2_18()
  local l0
  l0 = self.box_HackableController_v2_18
  l0.HackableEntity = self.Tech_F_01
end
function export:OnEnter_box_TriggerMonitor_v2_24()
  local l0
  l0 = self.box_TriggerMonitor_v2_24
  l0.Trigger = "9223372058562268337"
end
function export:OnEnter_box_HackableController_v2_20()
  local l0
  l0 = self.box_HackableController_v2_20
  l0.HackableEntity = self.Nerdcore_M_01
end
function export:OnEnter_box_PlaySequence_v5_43()
  local l0
  l0 = self.box_PlaySequence_v5_43
  l0.SceneEntity = "9223372060782999028"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S15/s15_s010_repairrobot.seq"
end
function export:OnEnter_box_OnceOnly_v3_57()
end
function export:OnEnter_box_MultipleOR_29()
end
function export:OnEnter_box_PlaySequence_v5_15()
  local l0
  l0 = self.box_PlaySequence_v5_15
  l0.SceneEntity = "9223372060782997895"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S15/s15_s010_repairrobot.seq"
end
function export:OnEnter_box_PlaySequence_v5_46()
  local l0
  l0 = self.box_PlaySequence_v5_46
  l0.SceneEntity = "9223372060782999029"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S15/s15_s010_repairrobot.seq"
end
function export:OnEnter_box_MultipleOR_33()
end
function export:OnEnter_box_HackableController_v2_19()
  local l0
  l0 = self.box_HackableController_v2_19
  l0.HackableEntity = self.Nerdcore_M_05
end
function export:OnEnter_box_PlaySequence_v5_21()
  local l0
  l0 = self.box_PlaySequence_v5_21
  l0.SceneEntity = "9223372060782997896"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S15/s15_s010_repairrobot.seq"
end
function export:OnEnter_box_OnceOnly_v3_55()
end
function export:OnEnter_box_OnceOnly_v3_56()
end
function export:Out_Annotations()
end
function export:SCR_CivilianEvacuation_Out()
end
function export:SCR_ProtoRobotTank_Out()
end
function export:SCR_PRotoRobotGun_Out()
end
function export:SCR_ProtoRobotShield_Out()
end
function export:SCR_SpiderStarting_Out()
end
_compilerVersion = 4
