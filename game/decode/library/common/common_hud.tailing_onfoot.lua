export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/AgentStateMonitor_v2.lua")
  cbox:RegisterBox("Domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/MissionVariableFloat.lua")
  cbox:RegisterBox("Domino/System/GetPlayerID.lua")
  cbox:RegisterBox("Domino/System/LineOfSightMonitor.lua")
  cbox:RegisterBox("Domino/System/MapPointController_v3.lua")
  cbox:RegisterBox("Domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("Domino/System/MissionModuleBox_v3.lua")
  cbox:RegisterBox("Domino/System/OnceOnly_v2.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/PawnHealthMonitor_v3.lua")
  cbox:RegisterBox("Domino/System/ProximityMonitor.lua")
  cbox:RegisterBox("Domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/SimpleNode.lua")
  cbox:RegisterBox("Domino/Library/common/SnapAndBind.SnapAndBind.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
  cbox:RegisterBox("Domino/System/Timer_v2.lua")
  cbox:RegisterBox("Domino/System/TimerToScreen.lua")
  cbox:RegisterBox("Domino/System/TriggerGameOver.lua")
end
function export:Init(cbox)
  local l0
  self.Failed = DummyFunction
  self.Started = DummyFunction
  self.Stopped = DummyFunction
  self.PlayerID = nil
  self.InSight = 0
  self.InRange = 0
  self.MaximumRange = 50
  self.SafeRange = 14
  self.WarningTimer = 18
  self.WarningBuffer = 4
  self.InMaximumRange = 0
  self.InSafeRange = 0
  self.TaillingFailed = 0
  self[40] = cbox:CreateBox("Domino/System/ProximityMonitor.lua")
  l0 = self[40]
  l0._graph = self
  l0.Enabled = self.f_40_Enabled
  l0.Disabled = self.f_40_Disabled
  l0.EnterRadius = self.f_40_EnterRadius
  l0.ExitRadius = self.f_40_ExitRadius
  self[21] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[21]
  l0._graph = self
  l0.Out = self.f_21_Out
  l0.SetTrue = self.f_21_SetTrue
  l0.SetFalse = self.f_21_SetFalse
  l0.Toggled = self.f_21_Toggled
  l0.SetFromBool = self.f_21_SetFromBool
  self[20] = cbox:CreateBox("Domino/System/OnceOnly_v2.lua")
  l0 = self[20]
  l0._graph = self
  l0._DynamicAnchors = {In = 1, Out = 1}
  l0.Out[0] = self.f_20_Out_0
  l0.ResetOut = self.f_20_ResetOut
  self[4] = cbox:CreateBox("Domino/System/MissionCheckpointReach.lua")
  l0 = self[4]
  l0._graph = self
  l0.Out = DummyFunction
  l0.AllCheckpointsDisabled = self.f_4_AllCheckpointsDisabled
  self[53] = cbox:CreateBox("Domino/System/MissionModuleBox_v3.lua")
  l0 = self[53]
  l0._graph = self
  l0.DisplayRequested = self.f_53_DisplayRequested
  l0.DisplayStarted = DummyFunction
  l0.HideRequested = DummyFunction
  l0.DisplayFinished = DummyFunction
  l0.Out = DummyFunction
  self[46] = cbox:CreateBox("Domino/System/TimerToScreen.lua")
  l0 = self[46]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Stopped = DummyFunction
  l0.Restarted = DummyFunction
  l0.GotTime = DummyFunction
  l0.TimeElapsed = self.f_46_TimeElapsed
  self[52] = cbox:CreateBox("Domino/System/OnceOnly_v2.lua")
  l0 = self[52]
  l0._graph = self
  l0._DynamicAnchors = {In = 1, Out = 1}
  l0.Out[0] = self.f_52_Out_0
  l0.ResetOut = self.f_52_ResetOut
  self[50] = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self[50]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = self.f_50_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = self.f_50_TextHidden
  self[3] = cbox:CreateBox("Domino/System/MissionCheckpointReach.lua")
  l0 = self[3]
  l0._graph = self
  l0.Out = DummyFunction
  l0.AllCheckpointsDisabled = self.f_3_AllCheckpointsDisabled
  self[18] = cbox:CreateBox("Domino/Library/common/SnapAndBind.SnapAndBind.lua")
  l0 = self[18]
  l0._graph = self
  l0.Attached = self.f_18_Attached
  self[43] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[43]
  l0._graph = self
  l0.Out = self.f_43_Out
  l0.SetTrue = self.f_43_SetTrue
  l0.SetFalse = self.f_43_SetFalse
  l0.Toggled = self.f_43_Toggled
  l0.SetFromBool = self.f_43_SetFromBool
  self[42] = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self[42]
  l0._graph = self
  l0.Shown = self.f_42_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = self.f_42_TextSet
  l0.TextHidden = DummyFunction
  self[51] = cbox:CreateBox("Domino/System/LineOfSightMonitor.lua")
  l0 = self[51]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = self.f_51_Enabled
  l0.Disabled = self.f_51_Disabled
  l0.LOSAcquired = self.f_51_LOSAcquired
  l0.LOSLost = self.f_51_LOSLost
  self[59] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[59]
  l0._graph = self
  l0.Out = self.f_59_Out
  l0.SetTrue = self.f_59_SetTrue
  l0.SetFalse = self.f_59_SetFalse
  l0.Toggled = self.f_59_Toggled
  l0.SetFromBool = self.f_59_SetFromBool
  self[47] = cbox:CreateBox("Domino/System/MissionModuleBox_v3.lua")
  l0 = self[47]
  l0._graph = self
  l0.DisplayRequested = self.f_47_DisplayRequested
  l0.DisplayStarted = DummyFunction
  l0.HideRequested = DummyFunction
  l0.DisplayFinished = DummyFunction
  l0.Out = DummyFunction
  self[57] = cbox:CreateBox("Domino/System/AgentStateMonitor_v2.lua")
  l0 = self[57]
  l0._graph = self
  l0.Enabled = self.f_57_Enabled
  l0.Disabled = self.f_57_Disabled
  l0.PauseState = DummyFunction
  l0.InterruptibleCinematicState = DummyFunction
  l0.UnawareState = DummyFunction
  l0.AllInUnawareState = DummyFunction
  l0.AwareState = DummyFunction
  l0.AllInAwareState = DummyFunction
  l0.AlertSoftState = DummyFunction
  l0.AlertHardState = DummyFunction
  l0.FleeState = DummyFunction
  l0.CombatState = self.f_57_CombatState
  l0.ScriptedState = DummyFunction
  l0.InvestigateState = DummyFunction
  l0.PostCombatSearchState = DummyFunction
  l0.CinematicMode_Interrupted = DummyFunction
  l0.DetectionIntuitionStarted = DummyFunction
  l0.DetectionIntuitionStopped = DummyFunction
  l0.DetectionIntuitionFull = DummyFunction
  l0.DetectionAlertStarted = DummyFunction
  l0.DetectionAlertStopped = DummyFunction
  l0.DetectionAlertFull = DummyFunction
  l0.IsDistracted = DummyFunction
  self[36] = cbox:CreateBox("Domino/System/ProximityMonitor.lua")
  l0 = self[36]
  l0._graph = self
  l0.Enabled = self.f_36_Enabled
  l0.Disabled = self.f_36_Disabled
  l0.EnterRadius = self.f_36_EnterRadius
  l0.ExitRadius = self.f_36_ExitRadius
  self[24] = cbox:CreateBox("Domino/System/MissionModuleBox_v3.lua")
  l0 = self[24]
  l0._graph = self
  l0.DisplayRequested = self.f_24_DisplayRequested
  l0.DisplayStarted = DummyFunction
  l0.HideRequested = DummyFunction
  l0.DisplayFinished = DummyFunction
  l0.Out = DummyFunction
  self[58] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[58]
  l0._graph = self
  l0.Out = self.f_58_Out
  l0.SetTrue = self.f_58_SetTrue
  l0.SetFalse = self.f_58_SetFalse
  l0.Toggled = self.f_58_Toggled
  l0.SetFromBool = self.f_58_SetFromBool
  self[2] = cbox:CreateBox("Domino/System/MissionCheckpointReach.lua")
  l0 = self[2]
  l0._graph = self
  l0.Out = DummyFunction
  l0.AllCheckpointsDisabled = self.f_2_AllCheckpointsDisabled
  self[45] = cbox:CreateBox("Domino/System/PawnHealthMonitor_v3.lua")
  l0 = self[45]
  l0._graph = self
  l0.Enabled = self.f_45_Enabled
  l0.Disabled = self.f_45_Disabled
  l0.Damaged = DummyFunction
  l0.Killed = self.f_45_Killed
  l0.DBNO = DummyFunction
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
  self[62] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[62]
  l0._graph = self
  l0.Out = self.f_62_Out
  l0.SetTrue = self.f_62_SetTrue
  l0.SetFalse = self.f_62_SetFalse
  l0.Toggled = self.f_62_Toggled
  l0.SetFromBool = self.f_62_SetFromBool
  self[56] = cbox:CreateBox("Domino/System/MissionModuleBox_v3.lua")
  l0 = self[56]
  l0._graph = self
  l0.DisplayRequested = self.f_56_DisplayRequested
  l0.DisplayStarted = DummyFunction
  l0.HideRequested = self.f_56_HideRequested
  l0.DisplayFinished = DummyFunction
  l0.Out = DummyFunction
  self[34] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[34]
  l0._graph = self
  l0.Out = self.f_34_Out
  l0.SetTrue = self.f_34_SetTrue
  l0.SetFalse = self.f_34_SetFalse
  l0.Toggled = self.f_34_Toggled
  l0.SetFromBool = self.f_34_SetFromBool
  self[54] = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self[54]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = self.f_54_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_54_TimeElapsed
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
function export:Start()
  local l0
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.TaillingFailed
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_63_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:Stop()
  local l0
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.TaillingFailed
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_64_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_48_Out()
  self = self._graph
  self:Failed()
end
function export:f_60_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.InSight
  l0.B = self.InSafeRange
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = self.f_19_notA_and_notB
  l0.A_or_B = self.f_19_A_or_B
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_6_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/MissionVariableFloat.lua")]
  self.SafeRange = l0.Target
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.ObjectiveMarker
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_35_Is_nil
  l0.Is_not_nil = self.f_35_Is_not_nil
  l0:In()
end
function export:f_7_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/MissionVariableFloat.lua")]
  self.WarningTimer = l0.Target
  l0 = Boxes[PathID("Domino/System/MissionVariableFloat.lua")]
  l0.Source = "MissionVariables.9223372048779323427"
  l0._graph = self
  l0.Out = self.f_6_Out
  l0:In()
end
function export:f_40_Disabled()
  local l0
  self = self._graph
  self:en_36()
  l0 = self[36]
  l0:Disable()
end
function export:f_40_Enabled()
  local l0
  self = self._graph
  self:en_36()
  l0 = self[36]
  l0:Enable()
end
function export:f_40_EnterRadius()
  local l0
  self = self._graph
  l0 = self[21]
  l0:True()
end
function export:f_40_ExitRadius()
  local l0
  self = self._graph
  l0 = self[21]
  l0:False()
end
function export:f_21_Out()
  local l0
  self = self._graph
  l0 = self[21]
  self.InMaximumRange = l0.Target
  self:en_60()
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0:In()
end
function export:f_21_SetFalse()
  local l0
  self = self._graph
  l0 = self[21]
  self.InMaximumRange = l0.Target
end
function export:f_21_SetFromBool()
  local l0
  self = self._graph
  l0 = self[21]
  self.InMaximumRange = l0.Target
end
function export:f_21_SetTrue()
  local l0
  self = self._graph
  l0 = self[21]
  self.InMaximumRange = l0.Target
end
function export:f_21_Toggled()
  local l0
  self = self._graph
  l0 = self[21]
  self.InMaximumRange = l0.Target
end
function export:f_20_Out_0()
  local l0
  self = self._graph
  self:en_54()
  l0 = self[54]
  l0:Start()
end
function export:f_20_ResetOut()
  local l0
  self = self._graph
  self:en_54()
  l0 = self[54]
  l0:Stop()
end
function export:f_4_AllCheckpointsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TriggerGameOver.lua")]
  l0.PlayerId = nil
  l0._graph = self
  l0.Out = self.f_41_Out
  l0:GameOver()
end
function export:f_53_DisplayRequested()
  local l0
  self = self._graph
  l0 = self[62]
  l0:True()
end
function export:f_46_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[47]
  l0.MessageType = "MissionFailed"
  l0.MessageIcon = "DefaultIcon"
  l0.OasisID_1 = {
    section = "MISSIONS.COMMON.MESSAGES.MISSIONFAILURE",
    item = "TargetLost",
    id = "186002"
  }
  l0:Display()
end
function export:f_63_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_44_Out
  l0:In()
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/MissionVariableFloat.lua")]
  self.MaximumRange = l0.Target
  l0 = Boxes[PathID("Domino/System/MissionVariableFloat.lua")]
  l0.Source = "MissionVariables.9223372048779323428"
  l0._graph = self
  l0.Out = self.f_5_Out
  l0:In()
end
function export:f_1_Out_0()
  local l0
  self = self._graph
  l0 = self[20]
  l0:Reset()
end
function export:f_1_Out_1()
  self = self._graph
  self:Stopped()
end
function export:f_52_Out_0()
  local l0
  self = self._graph
  self:en_56()
  l0 = self[56]
  l0:Display()
end
function export:f_52_ResetOut()
  local l0
  self = self._graph
  self:en_56()
  l0 = self[56]
  l0:Hide()
end
function export:f_22_Out()
  self = self._graph
  self:Failed()
end
function export:f_35_Is_nil()
  local l0
  self = self._graph
  self:en_45()
  l0 = self[45]
  l0:Enable()
end
function export:f_35_Is_not_nil()
  local l0
  self = self._graph
  l0 = self[18]
  l0.Parent = self.NPC
  l0.Child = self.ObjectiveMarker
  l0.NpcIcon = 1
  l0:Attach()
end
function export:f_50_Hidden()
  local l0
  self = self._graph
  self:en_50()
  l0 = self[50]
  l0:HideText()
end
function export:f_50_TextHidden()
  local l0
  self = self._graph
  self:en_55()
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0:In()
end
function export:f_3_AllCheckpointsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TriggerGameOver.lua")]
  l0.PlayerId = nil
  l0._graph = self
  l0.Out = self.f_48_Out
  l0:GameOver()
end
function export:f_18_Attached()
  local l0
  self = self._graph
  self:en_42()
  l0 = self[42]
  l0:Show()
end
function export:f_43_Out()
  local l0
  self = self._graph
  l0 = self[43]
  self.InSafeRange = l0.Target
  self:en_60()
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0:In()
end
function export:f_43_SetFalse()
  local l0
  self = self._graph
  l0 = self[43]
  self.InSafeRange = l0.Target
end
function export:f_43_SetFromBool()
  local l0
  self = self._graph
  l0 = self[43]
  self.InSafeRange = l0.Target
end
function export:f_43_SetTrue()
  local l0
  self = self._graph
  l0 = self[43]
  self.InSafeRange = l0.Target
end
function export:f_43_Toggled()
  local l0
  self = self._graph
  l0 = self[43]
  self.InSafeRange = l0.Target
end
function export:f_55_Out()
  local l0
  self = self._graph
  self:en_45()
  l0 = self[45]
  l0:Disable()
end
function export:f_42_Shown()
  local l0
  self = self._graph
  self:en_42()
  l0 = self[42]
  l0:SetText()
end
function export:f_42_TextSet()
  local l0
  self = self._graph
  self:en_45()
  l0 = self[45]
  l0:Enable()
end
function export:f_51_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_1_Out_0
  l0.Out[1] = self.f_1_Out_1
  l0:In()
end
function export:f_51_Enabled()
  self = self._graph
  self:Started()
end
function export:f_51_LOSAcquired()
  local l0
  self = self._graph
  l0 = self[34]
  l0:True()
end
function export:f_51_LOSLost()
  local l0
  self = self._graph
  l0 = self[34]
  l0:False()
end
function export:f_10_Is_nil()
  local l0
  self = self._graph
  self:en_24()
  l0 = self[24]
  l0:Display()
end
function export:f_10_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.SkipGameOverOnDetection
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_9_A_is_True
  l0.A_is_False = self.f_9_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_59_Out()
  local l0
  self = self._graph
  l0 = self[59]
  self.TaillingFailed = l0.Target
end
function export:f_59_SetFalse()
  local l0
  self = self._graph
  l0 = self[59]
  self.TaillingFailed = l0.Target
end
function export:f_59_SetFromBool()
  local l0
  self = self._graph
  l0 = self[59]
  self.TaillingFailed = l0.Target
end
function export:f_59_SetTrue()
  local l0
  self = self._graph
  l0 = self[59]
  self.TaillingFailed = l0.Target
  self:en_37()
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0:In()
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = self.SkipGameOverOnDetection
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_10_Is_nil
  l0.Is_not_nil = self.f_10_Is_not_nil
  l0:In()
end
function export:f_59_Toggled()
  local l0
  self = self._graph
  l0 = self[59]
  self.TaillingFailed = l0.Target
end
function export:f_47_DisplayRequested()
  local l0
  self = self._graph
  l0 = self[58]
  l0:True()
end
function export:f_57_CombatState()
  local l0
  self = self._graph
  l0 = self[59]
  l0:True()
end
function export:f_57_Disabled()
  local l0
  self = self._graph
  self:en_40()
  l0 = self[40]
  l0:Disable()
end
function export:f_57_Enabled()
  local l0
  self = self._graph
  self:en_40()
  l0 = self[40]
  l0:Enable()
end
function export:f_36_Disabled()
  local l0
  self = self._graph
  self:en_51()
  l0 = self[51]
  l0:Disable()
end
function export:f_36_Enabled()
  local l0
  self = self._graph
  self:en_51()
  l0 = self[51]
  l0:Enable()
end
function export:f_36_EnterRadius()
  local l0
  self = self._graph
  l0 = self[43]
  l0:True()
end
function export:f_36_ExitRadius()
  local l0
  self = self._graph
  l0 = self[43]
  l0:False()
end
function export:f_24_DisplayRequested()
  local l0
  self = self._graph
  l0 = self[2]
  l0:DisableAllCheckpoints()
end
function export:f_9_A_is_False()
  local l0
  self = self._graph
  self:en_24()
  l0 = self[24]
  l0:Display()
end
function export:f_9_A_is_True()
  self = self._graph
  self:Failed()
end
function export:f_64_A_is_False()
  local l0
  self = self._graph
  self:en_37()
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0:In()
end
function export:f_58_Out()
  local l0
  self = self._graph
  l0 = self[58]
  self.TaillingFailed = l0.Target
end
function export:f_58_SetFalse()
  local l0
  self = self._graph
  l0 = self[58]
  self.TaillingFailed = l0.Target
end
function export:f_58_SetFromBool()
  local l0
  self = self._graph
  l0 = self[58]
  self.TaillingFailed = l0.Target
end
function export:f_58_SetTrue()
  local l0
  self = self._graph
  l0 = self[58]
  self.TaillingFailed = l0.Target
  l0 = self[4]
  l0:DisableAllCheckpoints()
end
function export:f_58_Toggled()
  local l0
  self = self._graph
  l0 = self[58]
  self.TaillingFailed = l0.Target
end
function export:f_37_Is_nil()
  local l0
  self = self._graph
  self:en_55()
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0:In()
end
function export:f_37_Is_not_nil()
  local l0
  self = self._graph
  self:en_50()
  l0 = self[50]
  l0:Hide()
end
function export:f_19_A_or_B()
  local l0
  self = self._graph
  l0 = self[20]
  l0:Reset()
end
function export:f_19_notA_and_notB()
  local l0
  self = self._graph
  l0 = self[20]
  l0:In(0)
end
function export:f_2_AllCheckpointsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TriggerGameOver.lua")]
  l0.PlayerId = nil
  l0._graph = self
  l0.Out = self.f_22_Out
  l0:GameOver()
end
function export:f_45_Disabled()
  local l0
  self = self._graph
  self:en_57()
  l0 = self[57]
  l0:Disable()
end
function export:f_45_Enabled()
  local l0
  self = self._graph
  self:en_57()
  l0 = self[57]
  l0:Enable()
end
function export:f_45_Killed()
  local l0
  self = self._graph
  l0 = self[53]
  l0.MessageType = "MissionFailed"
  l0.MessageIcon = "DefaultIcon"
  l0.OasisID_1 = {
    section = "MISSIONS.COMMON.MESSAGES.MISSIONFAILURE",
    item = "TargetKilled",
    id = "165452"
  }
  l0:Display()
end
function export:f_5_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/MissionVariableFloat.lua")]
  self.WarningBuffer = l0.Target
  l0 = Boxes[PathID("Domino/System/MissionVariableFloat.lua")]
  l0.Source = "MissionVariables.9223372048779323429"
  l0._graph = self
  l0.Out = self.f_7_Out
  l0:In()
end
function export:f_62_Out()
  local l0
  self = self._graph
  l0 = self[62]
  self.TaillingFailed = l0.Target
end
function export:f_62_SetFalse()
  local l0
  self = self._graph
  l0 = self[62]
  self.TaillingFailed = l0.Target
end
function export:f_62_SetFromBool()
  local l0
  self = self._graph
  l0 = self[62]
  self.TaillingFailed = l0.Target
end
function export:f_62_SetTrue()
  local l0
  self = self._graph
  l0 = self[62]
  self.TaillingFailed = l0.Target
  l0 = self[3]
  l0:DisableAllCheckpoints()
  self:en_37()
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0:In()
end
function export:f_62_Toggled()
  local l0
  self = self._graph
  l0 = self[62]
  self.TaillingFailed = l0.Target
end
function export:f_44_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.PlayerID = l0.PlayerID
  l0 = Boxes[PathID("Domino/System/MissionVariableFloat.lua")]
  l0.Source = "MissionVariables.9223372048779323426"
  l0._graph = self
  l0.Out = self.f_8_Out
  l0:In()
end
function export:f_56_DisplayRequested()
  local l0
  self = self._graph
  self:en_46()
  l0 = self[46]
  l0:Start()
end
function export:f_56_HideRequested()
  local l0
  self = self._graph
  self:en_46()
  l0 = self[46]
  l0:Stop()
end
function export:f_34_Out()
  local l0
  self = self._graph
  l0 = self[34]
  self.InSight = l0.Target
  self:en_60()
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0:In()
end
function export:f_34_SetFalse()
  local l0
  self = self._graph
  l0 = self[34]
  self.InSight = l0.Target
end
function export:f_34_SetFromBool()
  local l0
  self = self._graph
  l0 = self[34]
  self.InSight = l0.Target
end
function export:f_34_SetTrue()
  local l0
  self = self._graph
  l0 = self[34]
  self.InSight = l0.Target
end
function export:f_34_Toggled()
  local l0
  self = self._graph
  l0 = self[34]
  self.InSight = l0.Target
end
function export:f_54_Stopped()
  local l0
  self = self._graph
  l0 = self[52]
  l0:Reset()
end
function export:f_54_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[52]
  l0:In(0)
end
function export:f_41_Out()
  self = self._graph
  self:Failed()
end
function export:en_60()
  local l0
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.TaillingFailed
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_60_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
end
function export:en_40()
  local l0
  l0 = self[40]
  l0.Entity1 = self.PlayerID
  l0.Entity2 = self.NPC
  l0.Radius = self.MaximumRange
  l0.CheckNow = 1
end
function export:en_46()
  local l0
  l0 = self[46]
  l0.Seconds = self.WarningTimer
end
function export:en_50()
  local l0
  l0 = self[50]
  l0.MapPoint = self.ObjectiveMarker
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Tail",
    id = "165449"
  }
end
function export:en_55()
  local l0
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_55_Out
end
function export:en_42()
  local l0
  l0 = self[42]
  l0.MapPoint = self.ObjectiveMarker
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Tail",
    id = "165449"
  }
end
function export:en_51()
  local l0
  l0 = self[51]
  l0.Target = self.NPC
end
function export:en_57()
  local l0
  l0 = self[57]
  l0.NPC = self.NPC
end
function export:en_36()
  local l0
  l0 = self[36]
  l0.Entity1 = self.PlayerID
  l0.Entity2 = self.NPC
  l0.Radius = self.SafeRange
  l0.CheckNow = 1
end
function export:en_24()
  local l0
  l0 = self[24]
  l0.MessageType = "MissionFailed"
  l0.MessageIcon = "DefaultIcon"
  l0.OasisID_1 = {
    section = "MISSIONS.COMMON.MESSAGES.MISSIONFAILURE",
    item = "PlayerDetected",
    id = "165453"
  }
end
function export:en_37()
  local l0
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.ObjectiveMarker
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_37_Is_nil
  l0.Is_not_nil = self.f_37_Is_not_nil
end
function export:en_45()
  local l0
  l0 = self[45]
  l0.Pawn = self.NPC
end
function export:en_56()
  local l0
  l0 = self[56]
  l0.MessageType = "MissionWarning"
  l0.MessageIcon = "iconWarning"
  l0.OasisID_1 = {
    section = "MISSIONS.COMMON.MESSAGES.MISSIONWARNING",
    item = "LosingTarget",
    id = "186001"
  }
  l0.Duration = self.WarningTimer
end
function export:en_54()
  local l0
  l0 = self[54]
  l0.Seconds = self.WarningBuffer
end
function export:Failed()
end
function export:Started()
end
function export:Stopped()
end
_compilerVersion = 4
