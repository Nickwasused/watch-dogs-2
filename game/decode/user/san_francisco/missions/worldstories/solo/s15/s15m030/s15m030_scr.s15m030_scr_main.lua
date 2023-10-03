export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
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
  self[28] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[28]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_28_Finished
  self[18] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[18]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_18_Disabled
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
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[1] = cbox:CreateBox("domino/System/ConsoleCommand_v2.lua")
  l0 = self[1]
  l0._graph = self
  l0.Enabled = self.f_1_Enabled
  l0.Disabled = DummyFunction
  l0.Executed = DummyFunction
  self[24] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[24]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_24_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[6] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[6]
  l0._graph = self
  l0.PreOut = self.f_6_PreOut
  l0.PostOut = DummyFunction
  self[20] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[20]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_20_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[45] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[45]
  l0._graph = self
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
  l0.Skipped = self.f_45_Skipped
  l0.Finished = self.f_45_Finished
  l0.SPOut.BreakFirstBottle = DummyFunction
  l0.SPOut.BreakSecondBottle = DummyFunction
  l0.SPOut.BreakThirdBottle = self.f_45_SPOut__BreakThirdBottle_
  l0.SPOut.BreakFourthBottle = DummyFunction
  self[43] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[43]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  self[22] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[22]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_22_Finished
  self[57] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[57]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_57_Out
  l0.ResetOut = DummyFunction
  self[12] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[12]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_12_OnUserInPlace
  self[29] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[29]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_29_Out
  self[9] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[9]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_9_PostOut
  self[10] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[10]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_10_PostOut
  self[23] = cbox:CreateBox("domino/System/RandomOutput_v2.lua")
  l0 = self[23]
  l0._graph = self
  l0._DynamicAnchors = {Probability = 11, Output = 11}
  l0.Out = DummyFunction
  l0.ResetOut = DummyFunction
  l0.None = DummyFunction
  l0.Output[0] = self.f_23_Output_0
  l0.Output[1] = self.f_23_Output_1
  l0.Output[2] = self.f_23_Output_2
  l0.Output[3] = self.f_23_Output_3
  l0.Output[4] = self.f_23_Output_4
  l0.Output[5] = self.f_23_Output_5
  l0.Output[6] = self.f_23_Output_6
  l0.Output[7] = self.f_23_Output_7
  l0.Output[8] = self.f_23_Output_8
  l0.Output[9] = self.f_23_Output_9
  l0.Output[10] = self.f_23_Output_10
  self[27] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[27]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_27_Finished
  self[60] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[60]
  l0._graph = self
  l0.PreOut = self.f_60_PreOut
  l0.PostOut = DummyFunction
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
  self[15] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[15]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  self[46] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[46]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  self[8] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[8]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_8_PostOut
  self[50] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[50]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_50_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[25] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[25]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_25_Finished
  self[58] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[58]
  l0._graph = self
  l0.PreOut = self.f_58_PreOut
  l0.PostOut = DummyFunction
  self[35] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[35]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_35_Finished
  self[14] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[14]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_14_OnUserInPlace
  self[33] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[33]
  l0._graph = self
  l0._DynamicAnchors = {Input = 11}
  l0.Out = self.f_33_Out
  self[4] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[4]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_4_Finished
  self[34] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[34]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_34_Finished
  self[19] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[19]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_19_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[54] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[54]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_54_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[59] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[59]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_59_PostOut
  self[21] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[21]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  self[47] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[47]
  l0._graph = self
  l0._DynamicAnchors = {
    SPOut = {"StartVO", "pause"}
  }
  l0.Started = self.f_47_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  l0.SPOut.StartVO = DummyFunction
  l0.SPOut.pause = DummyFunction
  self[5] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[5]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_5_PostOut
  self[30] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[30]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_30_Finished
  self[2] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_2_Finished
  self[42] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[42]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_42_Skipped
  l0.Finished = self.f_42_Finished
  self[32] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[32]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_32_Finished
  self[7] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[7]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_7_PostOut
  self[55] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[55]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_55_Out
  l0.ResetOut = DummyFunction
  self[31] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[31]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_31_Finished
  self[13] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[13]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_13_OnUserInPlace
  self[40] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[40]
  l0._graph = self
  l0._DynamicAnchors = {
    EntityOut = {
      "DestroyedCar_Var"
    },
    SPOut = {"SetEngine"}
  }
  l0.Started = self.f_40_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_40_Skipped
  l0.Finished = self.f_40_Finished
  l0.SPOut.SetEngine = DummyFunction
  self[56] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[56]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_56_Out
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
  l0 = self[1]
  l0.Command = "Narrative"
  l0:Enable()
end
function export:SCR_ProtoRobotGun()
  local l0
  l0 = self[6]
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:SCR_ProtoRobotShield()
  local l0
  l0 = self[60]
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:SCR_ProtoRobotTank()
  local l0
  l0 = self[58]
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:SCR_SpiderStarting()
  local l0
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_3_Out_0
  l0.Out[1] = self.f_3_Out_1
  l0:In()
end
function export:SCR_WrenchJRZone()
  local l0
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 6}
  l0.Out[0] = DummyFunction
  l0.Out[1] = self.f_16_Out_1
  l0.Out[2] = self.f_16_Out_2
  l0.Out[3] = self.f_16_Out_3
  l0.Out[4] = DummyFunction
  l0.Out[5] = self.f_16_Out_5
  l0:In()
end
function export:StartRepairRobot()
  local l0
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 6}
  l0.Out[0] = self.f_48_Out_0
  l0.Out[1] = self.f_48_Out_1
  l0.Out[2] = DummyFunction
  l0.Out[3] = DummyFunction
  l0.Out[4] = self.f_48_Out_4
  l0.Out[5] = self.f_48_Out_5
  l0:In()
end
function export:StopRepairRobot()
  local l0
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 6}
  l0.Out[0] = self.f_49_Out_0
  l0.Out[1] = self.f_49_Out_1
  l0.Out[2] = DummyFunction
  l0.Out[3] = DummyFunction
  l0.Out[4] = self.f_49_Out_4
  l0.Out[5] = self.f_49_Out_5
  l0:In()
end
function export:f_39_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372067007902628"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_41_Hidden
  l0.Out = DummyFunction
  l0:Hide()
end
function export:f_28_Finished()
  local l0
  self = self._graph
  l0 = self[33]
  l0:Input(0)
end
function export:f_18_Disabled()
  local l0
  self = self._graph
  self:en_18()
  l0 = self[18]
  l0:DisableProfiling()
end
function export:f_53_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372067007902624"
  l0.Collisionable = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_61_CollisionsDisabled
  l0.Out = DummyFunction
  l0:DisableCollisions()
end
function export:f_37_Out_0()
  local l0
  self = self._graph
  self:en_24()
  l0 = self[24]
  l0:Enable()
end
function export:f_37_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372058562268339"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_1_Enabled()
  self = self._graph
  self:Out_Annotations()
end
function export:f_24_Enter()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_26_Out_0
  l0.Out[1] = self.f_26_Out_1
  l0:In()
end
function export:f_6_PreOut()
  local l0
  self = self._graph
  l0 = self[42]
  l0.SceneEntity = "9223372049574014432"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S15/s15_protorobotgun.seq"
  l0:Start()
end
function export:f_20_Disabled()
  local l0
  self = self._graph
  self:en_20()
  l0 = self[20]
  l0:DisableProfiling()
end
function export:f_45_Finished()
  local l0
  self = self._graph
  l0 = self[57]
  l0:In(1)
end
function export:f_45_Skipped()
  local l0
  self = self._graph
  l0 = self[10]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_45_SPOut__BreakThirdBottle_()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372067007902624"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_52_Hidden
  l0.Out = DummyFunction
  l0:Hide()
end
function export:f_22_Finished()
  local l0
  self = self._graph
  l0 = self[33]
  l0:Input(10)
end
function export:f_57_Out()
  local l0
  self = self._graph
  l0 = self[7]
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_12_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[12]
  self.Tech_F_01 = l0.UserID
  self:en_18()
  l0 = self[18]
  l0:DisableHack()
end
function export:f_41_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372067007902630"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_53_Hidden
  l0.Out = DummyFunction
  l0:Hide()
end
function export:f_29_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_37_Out_0
  l0.Out[1] = self.f_37_Out_1
  l0:In()
end
function export:f_9_PostOut()
  local l0
  self = self._graph
  l0 = self[55]
  l0:In(0)
end
function export:f_10_PostOut()
  local l0
  self = self._graph
  l0 = self[57]
  l0:In(0)
end
function export:f_23_Output_0()
  local l0
  self = self._graph
  l0 = self[28]
  l0.SoundId = "soundbinary/2386437762.bnk"
  l0:Play()
end
function export:f_23_Output_1()
  local l0
  self = self._graph
  l0 = self[27]
  l0.SoundId = "soundbinary/144509662.bnk"
  l0:Play()
end
function export:f_23_Output_2()
  local l0
  self = self._graph
  l0 = self[30]
  l0.SoundId = "soundbinary/1553517546.bnk"
  l0:Play()
end
function export:f_23_Output_3()
  local l0
  self = self._graph
  l0 = self[25]
  l0.SoundId = "soundbinary/2916543809.bnk"
  l0:Play()
end
function export:f_23_Output_4()
  local l0
  self = self._graph
  l0 = self[32]
  l0.SoundId = "soundbinary/2851627119.bnk"
  l0:Play()
end
function export:f_23_Output_5()
  local l0
  self = self._graph
  l0 = self[35]
  l0.SoundId = "soundbinary/76266569.bnk"
  l0:Play()
end
function export:f_23_Output_6()
  local l0
  self = self._graph
  l0 = self[34]
  l0.SoundId = "soundbinary/561297467.bnk"
  l0:Play()
end
function export:f_23_Output_7()
  local l0
  self = self._graph
  l0 = self[2]
  l0.SoundId = "soundbinary/3938413888.bnk"
  l0:Play()
end
function export:f_23_Output_8()
  local l0
  self = self._graph
  l0 = self[31]
  l0.SoundId = "soundbinary/2435228290.bnk"
  l0:Play()
end
function export:f_23_Output_9()
  local l0
  self = self._graph
  l0 = self[4]
  l0.SoundId = "soundbinary/2790199675.bnk"
  l0:Play()
end
function export:f_23_Output_10()
  local l0
  self = self._graph
  l0 = self[22]
  l0.SoundId = "soundbinary/2159746141.bnk"
  l0:Play()
end
function export:f_49_Out_0()
  local l0
  self = self._graph
  self:en_15()
  l0 = self[15]
  l0:Stop()
end
function export:f_49_Out_1()
  local l0
  self = self._graph
  self:en_21()
  l0 = self[21]
  l0:Stop()
end
function export:f_49_Out_4()
  local l0
  self = self._graph
  self:en_43()
  l0 = self[43]
  l0:Stop()
end
function export:f_49_Out_5()
  local l0
  self = self._graph
  self:en_46()
  l0 = self[46]
  l0:Stop()
end
function export:f_27_Finished()
  local l0
  self = self._graph
  l0 = self[33]
  l0:Input(1)
end
function export:f_60_PreOut()
  local l0
  self = self._graph
  l0 = self[45]
  l0.SceneEntity = "9223372049574014433"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S15/s15_protorobotshield.seq"
  l0:Start()
end
function export:f_51_TimeElapsed()
  local l0
  self = self._graph
  self:en_21()
  l0 = self[21]
  l0:Start()
end
function export:f_26_Out_0()
  local l0
  self = self._graph
  l0 = self[23]
  l0:In()
end
function export:f_26_Out_1()
  local l0
  self = self._graph
  self:en_24()
  l0 = self[24]
  l0:Disable()
end
function export:f_8_PostOut()
  self = self._graph
  self:SCR_ProtoRobotTank_Out()
end
function export:f_61_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372067007902626"
  l0.Collisionable = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_62_CollisionsDisabled
  l0.Out = DummyFunction
  l0:DisableCollisions()
end
function export:f_50_TimeElapsed()
  local l0
  self = self._graph
  self:en_15()
  l0 = self[15]
  l0:Start()
end
function export:f_25_Finished()
  local l0
  self = self._graph
  l0 = self[33]
  l0:Input(3)
end
function export:f_58_PreOut()
  local l0
  self = self._graph
  l0 = self[40]
  l0.SceneEntity = "9223372049574014434"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S15/s15_protorobottank.seq"
  l0:Start()
end
function export:f_16_Out_1()
  local l0
  self = self._graph
  l0 = self[12]
  l0.CLO = "9223372058516823810"
  l0:Activate()
end
function export:f_16_Out_2()
  local l0
  self = self._graph
  l0 = self[13]
  l0.CLO = "9223372058516824198"
  l0:Activate()
end
function export:f_16_Out_3()
  local l0
  self = self._graph
  l0 = self[14]
  l0.CLO = "9223372058516824199"
  l0:Activate()
end
function export:f_16_Out_5()
  local l0
  self = self._graph
  l0 = self[29]
  l0:Input(0)
end
function export:f_35_Finished()
  local l0
  self = self._graph
  l0 = self[33]
  l0:Input(5)
end
function export:f_62_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372067007902628"
  l0.Collisionable = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_63_CollisionsDisabled
  l0.Out = DummyFunction
  l0:DisableCollisions()
end
function export:f_14_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[14]
  self.Nerdcore_M_01 = l0.UserID
  self:en_20()
  l0 = self[20]
  l0:DisableHack()
end
function export:f_33_Out()
  local l0
  self = self._graph
  l0 = self[29]
  l0:Input(1)
end
function export:f_4_Finished()
  local l0
  self = self._graph
  l0 = self[33]
  l0:Input(9)
end
function export:f_34_Finished()
  local l0
  self = self._graph
  l0 = self[33]
  l0:Input(6)
end
function export:f_63_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372067007902630"
  l0.Collisionable = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = DummyFunction
  l0.Out = DummyFunction
  l0:DisableCollisions()
end
function export:f_19_Disabled()
  local l0
  self = self._graph
  self:en_19()
  l0 = self[19]
  l0:DisableProfiling()
end
function export:f_54_TimeElapsed()
  local l0
  self = self._graph
  self:en_43()
  l0 = self[43]
  l0:Start()
end
function export:f_59_PostOut()
  self = self._graph
  self:SCR_PRotoRobotGun_Out()
end
function export:f_47_Started()
  self = self._graph
  self:SCR_SpiderStarting_Out()
end
function export:f_5_PostOut()
  local l0
  self = self._graph
  l0 = self[56]
  l0:In(0)
end
function export:f_30_Finished()
  local l0
  self = self._graph
  l0 = self[33]
  l0:Input(2)
end
function export:f_2_Finished()
  local l0
  self = self._graph
  l0 = self[33]
  l0:Input(7)
end
function export:f_42_Finished()
  local l0
  self = self._graph
  l0 = self[55]
  l0:In(1)
end
function export:f_42_Skipped()
  local l0
  self = self._graph
  l0 = self[9]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_32_Finished()
  local l0
  self = self._graph
  l0 = self[33]
  l0:Input(4)
end
function export:f_7_PostOut()
  self = self._graph
  self:SCR_ProtoRobotShield_Out()
end
function export:f_3_Out_0()
  local l0
  self = self._graph
  l0 = self[47]
  l0.SceneEntity = "9223372049574129922"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S15/s15_spiderdronestarting.seq"
  l0:Start()
end
function export:f_3_Out_1()
  local l0
  self = self._graph
  l0 = self[44]
  l0.SoundId = "soundbinary/4120480278.bnk"
  l0:Play()
end
function export:f_55_Out()
  local l0
  self = self._graph
  l0 = self[59]
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_52_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372067007902626"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_39_Hidden
  l0.Out = DummyFunction
  l0:Hide()
end
function export:f_31_Finished()
  local l0
  self = self._graph
  l0 = self[33]
  l0:Input(8)
end
function export:f_13_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[13]
  self.Nerdcore_M_05 = l0.UserID
  self:en_19()
  l0 = self[19]
  l0:DisableHack()
end
function export:f_40_Finished()
  local l0
  self = self._graph
  l0 = self[56]
  l0:In(1)
end
function export:f_40_Skipped()
  local l0
  self = self._graph
  l0 = self[5]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_40_Started()
  local l0
  self = self._graph
  l0 = self[40]
  self.DestroyedCar = l0.EntityOut.DestroyedCar_Var
end
function export:f_56_Out()
  local l0
  self = self._graph
  l0 = self[8]
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_48_Out_0()
  local l0
  self = self._graph
  l0 = self[50]
  l0.Seconds = 0.1
  l0:Start()
end
function export:f_48_Out_1()
  local l0
  self = self._graph
  l0 = self[51]
  l0.Seconds = 0.75
  l0:Start()
end
function export:f_48_Out_4()
  local l0
  self = self._graph
  l0 = self[54]
  l0.Seconds = 0.25
  l0:Start()
end
function export:f_48_Out_5()
  local l0
  self = self._graph
  self:en_46()
  l0 = self[46]
  l0:Start()
end
function export:en_18()
  local l0
  l0 = self[18]
  l0.HackableEntity = self.Tech_F_01
end
function export:en_24()
  local l0
  l0 = self[24]
  l0.Trigger = "9223372058562268337"
end
function export:en_20()
  local l0
  l0 = self[20]
  l0.HackableEntity = self.Nerdcore_M_01
end
function export:en_43()
  local l0
  l0 = self[43]
  l0.SceneEntity = "9223372060782999028"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S15/s15_s010_repairrobot.seq"
end
function export:en_15()
  local l0
  l0 = self[15]
  l0.SceneEntity = "9223372060782997895"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S15/s15_s010_repairrobot.seq"
end
function export:en_46()
  local l0
  l0 = self[46]
  l0.SceneEntity = "9223372060782999029"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S15/s15_s010_repairrobot.seq"
end
function export:en_19()
  local l0
  l0 = self[19]
  l0.HackableEntity = self.Nerdcore_M_05
end
function export:en_21()
  local l0
  l0 = self[21]
  l0.SceneEntity = "9223372060782997896"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S15/s15_s010_repairrobot.seq"
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
