export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/MissionVariableFloat.lua")
  cbox:RegisterBox("Domino/System/GetPlayerID.lua")
  cbox:RegisterBox("Domino/System/LineOfSightMonitor.lua")
  cbox:RegisterBox("Domino/System/MapPointController_v3.lua")
  cbox:RegisterBox("Domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("Domino/System/MissionModuleBox_v3.lua")
  cbox:RegisterBox("Domino/System/OnceOnly_v2.lua")
  cbox:RegisterBox("Domino/System/PawnHealthMonitor_v3.lua")
  cbox:RegisterBox("Domino/System/ProximityMonitor.lua")
  cbox:RegisterBox("Domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/SimpleNode.lua")
  cbox:RegisterBox("Domino/Library/common/SnapAndBind.SnapAndBind.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
  cbox:RegisterBox("Domino/System/Timer_v2.lua")
  cbox:RegisterBox("Domino/System/TimerToScreen.lua")
  cbox:RegisterBox("Domino/System/TriggerGameOver.lua")
  cbox:RegisterBox("Domino/System/VehicleBhvMonitor.lua")
end
function export:Init(cbox)
  local l0
  self.Stopped = DummyFunction
  self.Started = DummyFunction
  self.Failed = DummyFunction
  self.PlayerID = nil
  self.InSight = 0
  self.MaximumRange = 125
  self.SafeRange = 30
  self.WarningTimer = 20
  self.WarningBuffer = 4
  self.InSafeRange = 0
  self.InMaximumRange = 0
  self.TaillingFailed = 0
  self[72] = cbox:CreateBox("Domino/System/MissionModuleBox_v3.lua")
  l0 = self[72]
  l0._graph = self
  l0.DisplayRequested = self.f_72_DisplayRequested
  l0.DisplayStarted = DummyFunction
  l0.HideRequested = DummyFunction
  l0.DisplayFinished = DummyFunction
  l0.Out = DummyFunction
  self[65] = cbox:CreateBox("Domino/Library/common/SnapAndBind.SnapAndBind.lua")
  l0 = self[65]
  l0._graph = self
  l0.Attached = self.f_65_Attached
  self[78] = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self[78]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = self.f_78_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = self.f_78_TextHidden
  self[3] = cbox:CreateBox("Domino/System/MissionCheckpointReach.lua")
  l0 = self[3]
  l0._graph = self
  l0.Out = DummyFunction
  l0.AllCheckpointsDisabled = self.f_3_AllCheckpointsDisabled
  self[70] = cbox:CreateBox("Domino/System/MissionModuleBox_v3.lua")
  l0 = self[70]
  l0._graph = self
  l0.DisplayRequested = self.f_70_DisplayRequested
  l0.DisplayStarted = DummyFunction
  l0.HideRequested = DummyFunction
  l0.DisplayFinished = DummyFunction
  l0.Out = DummyFunction
  self[81] = cbox:CreateBox("Domino/System/PawnHealthMonitor_v3.lua")
  l0 = self[81]
  l0._graph = self
  l0.Enabled = self.f_81_Enabled
  l0.Disabled = self.f_81_Disabled
  l0.Damaged = DummyFunction
  l0.Killed = self.f_81_Killed
  l0.DBNO = DummyFunction
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
  self[80] = cbox:CreateBox("Domino/System/ProximityMonitor.lua")
  l0 = self[80]
  l0._graph = self
  l0.Enabled = self.f_80_Enabled
  l0.Disabled = self.f_80_Disabled
  l0.EnterRadius = self.f_80_EnterRadius
  l0.ExitRadius = self.f_80_ExitRadius
  self[75] = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self[75]
  l0._graph = self
  l0.Shown = self.f_75_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = self.f_75_TextSet
  l0.TextHidden = DummyFunction
  self[86] = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self[86]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = self.f_86_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_86_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[68] = cbox:CreateBox("Domino/System/MissionModuleBox_v3.lua")
  l0 = self[68]
  l0._graph = self
  l0.DisplayRequested = self.f_68_DisplayRequested
  l0.DisplayStarted = DummyFunction
  l0.HideRequested = DummyFunction
  l0.DisplayFinished = DummyFunction
  l0.Out = DummyFunction
  self[62] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[62]
  l0._graph = self
  l0.Out = self.f_62_Out
  l0.SetTrue = self.f_62_SetTrue
  l0.SetFalse = self.f_62_SetFalse
  l0.Toggled = self.f_62_Toggled
  l0.SetFromBool = self.f_62_SetFromBool
  self[71] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[71]
  l0._graph = self
  l0.Out = self.f_71_Out
  l0.SetTrue = self.f_71_SetTrue
  l0.SetFalse = self.f_71_SetFalse
  l0.Toggled = self.f_71_Toggled
  l0.SetFromBool = self.f_71_SetFromBool
  self[66] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[66]
  l0._graph = self
  l0.Out = self.f_66_Out
  l0.SetTrue = self.f_66_SetTrue
  l0.SetFalse = self.f_66_SetFalse
  l0.Toggled = self.f_66_Toggled
  l0.SetFromBool = self.f_66_SetFromBool
  self[61] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[61]
  l0._graph = self
  l0.Out = self.f_61_Out
  l0.SetTrue = self.f_61_SetTrue
  l0.SetFalse = self.f_61_SetFalse
  l0.Toggled = self.f_61_Toggled
  l0.SetFromBool = self.f_61_SetFromBool
  self[79] = cbox:CreateBox("Domino/System/TimerToScreen.lua")
  l0 = self[79]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Stopped = self.f_79_Stopped
  l0.Restarted = DummyFunction
  l0.GotTime = DummyFunction
  l0.TimeElapsed = self.f_79_TimeElapsed
  self[59] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[59]
  l0._graph = self
  l0.Out = self.f_59_Out
  l0.SetTrue = self.f_59_SetTrue
  l0.SetFalse = self.f_59_SetFalse
  l0.Toggled = self.f_59_Toggled
  l0.SetFromBool = self.f_59_SetFromBool
  self[2] = cbox:CreateBox("Domino/System/MissionCheckpointReach.lua")
  l0 = self[2]
  l0._graph = self
  l0.Out = DummyFunction
  l0.AllCheckpointsDisabled = self.f_2_AllCheckpointsDisabled
  self[82] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[82]
  l0._graph = self
  l0.Out = self.f_82_Out
  l0.SetTrue = self.f_82_SetTrue
  l0.SetFalse = self.f_82_SetFalse
  l0.Toggled = self.f_82_Toggled
  l0.SetFromBool = self.f_82_SetFromBool
  self[64] = cbox:CreateBox("Domino/System/OnceOnly_v2.lua")
  l0 = self[64]
  l0._graph = self
  l0._DynamicAnchors = {In = 1, Out = 1}
  l0.Out[0] = self.f_64_Out_0
  l0.ResetOut = self.f_64_ResetOut
  self[76] = cbox:CreateBox("Domino/System/ProximityMonitor.lua")
  l0 = self[76]
  l0._graph = self
  l0.Enabled = self.f_76_Enabled
  l0.Disabled = self.f_76_Disabled
  l0.EnterRadius = self.f_76_EnterRadius
  l0.ExitRadius = self.f_76_ExitRadius
  self[85] = cbox:CreateBox("Domino/System/OnceOnly_v2.lua")
  l0 = self[85]
  l0._graph = self
  l0._DynamicAnchors = {In = 1, Out = 1}
  l0.Out[0] = self.f_85_Out_0
  l0.ResetOut = self.f_85_ResetOut
  self[77] = cbox:CreateBox("Domino/System/MissionModuleBox_v3.lua")
  l0 = self[77]
  l0._graph = self
  l0.DisplayRequested = self.f_77_DisplayRequested
  l0.DisplayStarted = DummyFunction
  l0.HideRequested = self.f_77_HideRequested
  l0.DisplayFinished = DummyFunction
  l0.Out = DummyFunction
  self[91] = cbox:CreateBox("Domino/System/VehicleBhvMonitor.lua")
  l0 = self[91]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = self.f_91_Enabled
  l0.Disabled = self.f_91_Disabled
  l0.Stuck = DummyFunction
  l0.Broken = DummyFunction
  l0.TargetDetected = self.f_91_TargetDetected
  l0.InLOS = DummyFunction
  l0.ReacquireLOSTimerExpired = DummyFunction
  l0.LostLOSTimerExpired = DummyFunction
  l0.SuspiciousTargetAction = DummyFunction
  l0.SpecificPathPointReached = DummyFunction
  l0.PathPointReached = DummyFunction
  l0.EndPathPointReached = DummyFunction
  l0.InRange = DummyFunction
  l0.WarningRange = DummyFunction
  l0.OutsideRange = DummyFunction
  l0.OutsideTimerExpired = DummyFunction
  self[87] = cbox:CreateBox("Domino/System/LineOfSightMonitor.lua")
  l0 = self[87]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = self.f_87_Enabled
  l0.Disabled = self.f_87_Disabled
  l0.LOSAcquired = self.f_87_LOSAcquired
  l0.LOSLost = self.f_87_LOSLost
  self[1] = cbox:CreateBox("Domino/System/MissionCheckpointReach.lua")
  l0 = self[1]
  l0._graph = self
  l0.Out = DummyFunction
  l0.AllCheckpointsDisabled = self.f_1_AllCheckpointsDisabled
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
  l0.A_is_False = self.f_88_A_is_False
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
  l0.A_is_False = self.f_84_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_72_DisplayRequested()
  local l0
  self = self._graph
  l0 = self[62]
  l0:True()
end
function export:f_65_Attached()
  local l0
  self = self._graph
  self:en_75()
  l0 = self[75]
  l0:Show()
end
function export:f_83_A_or_B()
  local l0
  self = self._graph
  l0 = self[64]
  l0:Reset()
end
function export:f_83_notA_and_notB()
  local l0
  self = self._graph
  l0 = self[64]
  l0:In(0)
end
function export:f_58_Out()
  self = self._graph
  self:Failed()
end
function export:f_78_Hidden()
  local l0
  self = self._graph
  self:en_78()
  l0 = self[78]
  l0:HideText()
end
function export:f_78_TextHidden()
  local l0
  self = self._graph
  self:en_73()
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0:In()
end
function export:f_3_AllCheckpointsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TriggerGameOver.lua")]
  l0.PlayerId = nil
  l0._graph = self
  l0.Out = self.f_58_Out
  l0:GameOver()
end
function export:f_63_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.PlayerID = l0.PlayerID
  l0 = Boxes[PathID("Domino/System/MissionVariableFloat.lua")]
  l0.Source = "MissionVariables.9223372048779323418"
  l0._graph = self
  l0.Out = self.f_5_Out
  l0:In()
end
function export:f_70_DisplayRequested()
  local l0
  self = self._graph
  l0 = self[61]
  l0:True()
end
function export:f_84_A_is_False()
  local l0
  self = self._graph
  self:en_60()
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0:In()
end
function export:f_81_Disabled()
  local l0
  self = self._graph
  self:en_91()
  l0 = self[91]
  l0:Disable()
end
function export:f_81_Enabled()
  local l0
  self = self._graph
  self:en_91()
  l0 = self[91]
  l0:Enable()
end
function export:f_81_Killed()
  local l0
  self = self._graph
  l0 = self[72]
  l0.MessageType = "MissionFailed"
  l0.MessageIcon = "DefaultIcon"
  l0.OasisID_1 = {
    section = "MISSIONS.COMMON.MESSAGES.MISSIONFAILURE",
    item = "TargetKilled",
    id = "165452"
  }
  l0:Display()
end
function export:f_89_Out()
  self = self._graph
  self:Failed()
end
function export:f_88_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_63_Out
  l0:In()
end
function export:f_73_Out()
  local l0
  self = self._graph
  self:en_81()
  l0 = self[81]
  l0:Disable()
end
function export:f_4_Out()
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
  l0.Is_nil = self.f_90_Is_nil
  l0.Is_not_nil = self.f_90_Is_not_nil
  l0:In()
end
function export:f_90_Is_nil()
  local l0
  self = self._graph
  self:en_81()
  l0 = self[81]
  l0:Enable()
end
function export:f_90_Is_not_nil()
  local l0
  self = self._graph
  l0 = self[65]
  l0.Parent = self.Vehicle
  l0.Child = self.ObjectiveMarker
  l0.CarIcon = 1
  l0:Attach()
end
function export:f_80_Disabled()
  local l0
  self = self._graph
  self:en_76()
  l0 = self[76]
  l0:Disable()
end
function export:f_80_Enabled()
  local l0
  self = self._graph
  self:en_76()
  l0 = self[76]
  l0:Enable()
end
function export:f_80_EnterRadius()
  local l0
  self = self._graph
  l0 = self[66]
  l0:True()
end
function export:f_80_ExitRadius()
  local l0
  self = self._graph
  l0 = self[66]
  l0:False()
end
function export:f_75_Shown()
  local l0
  self = self._graph
  self:en_75()
  l0 = self[75]
  l0:SetText()
end
function export:f_75_TextSet()
  local l0
  self = self._graph
  self:en_81()
  l0 = self[81]
  l0:Enable()
end
function export:f_86_Stopped()
  local l0
  self = self._graph
  l0 = self[85]
  l0:Reset()
end
function export:f_86_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[85]
  l0:In(0)
end
function export:f_68_DisplayRequested()
  local l0
  self = self._graph
  l0 = self[59]
  l0:True()
end
function export:f_74_Out()
  self = self._graph
  self:Failed()
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
  l0 = self[1]
  l0:DisableAllCheckpoints()
  self:en_60()
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0:In()
end
function export:f_62_Toggled()
  local l0
  self = self._graph
  l0 = self[62]
  self.TaillingFailed = l0.Target
end
function export:f_71_Out()
  local l0
  self = self._graph
  l0 = self[71]
  self.InSight = l0.Target
  self:en_67()
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0:In()
end
function export:f_71_SetFalse()
  local l0
  self = self._graph
  l0 = self[71]
  self.InSight = l0.Target
end
function export:f_71_SetFromBool()
  local l0
  self = self._graph
  l0 = self[71]
  self.InSight = l0.Target
end
function export:f_71_SetTrue()
  local l0
  self = self._graph
  l0 = self[71]
  self.InSight = l0.Target
end
function export:f_71_Toggled()
  local l0
  self = self._graph
  l0 = self[71]
  self.InSight = l0.Target
end
function export:f_66_Out()
  local l0
  self = self._graph
  l0 = self[66]
  self.InMaximumRange = l0.Target
  self:en_67()
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0:In()
end
function export:f_66_SetFalse()
  local l0
  self = self._graph
  l0 = self[66]
  self.InMaximumRange = l0.Target
end
function export:f_66_SetFromBool()
  local l0
  self = self._graph
  l0 = self[66]
  self.InMaximumRange = l0.Target
end
function export:f_66_SetTrue()
  local l0
  self = self._graph
  l0 = self[66]
  self.InMaximumRange = l0.Target
end
function export:f_66_Toggled()
  local l0
  self = self._graph
  l0 = self[66]
  self.InMaximumRange = l0.Target
end
function export:f_61_Out()
  local l0
  self = self._graph
  l0 = self[61]
  self.TaillingFailed = l0.Target
end
function export:f_61_SetFalse()
  local l0
  self = self._graph
  l0 = self[61]
  self.TaillingFailed = l0.Target
end
function export:f_61_SetFromBool()
  local l0
  self = self._graph
  l0 = self[61]
  self.TaillingFailed = l0.Target
end
function export:f_61_SetTrue()
  local l0
  self = self._graph
  l0 = self[61]
  self.TaillingFailed = l0.Target
  l0 = self[3]
  l0:DisableAllCheckpoints()
end
function export:f_61_Toggled()
  local l0
  self = self._graph
  l0 = self[61]
  self.TaillingFailed = l0.Target
end
function export:f_79_Stopped()
  self = self._graph
  self:Stopped()
end
function export:f_79_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[70]
  l0.MessageType = "MissionFailed"
  l0.MessageIcon = "DefaultIcon"
  l0.OasisID_1 = {
    section = "MISSIONS.COMMON.MESSAGES.MISSIONFAILURE",
    item = "TargetLost",
    id = "186002"
  }
  l0:Display()
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
  self:en_60()
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0:In()
  l0 = self[2]
  l0:DisableAllCheckpoints()
end
function export:f_59_Toggled()
  local l0
  self = self._graph
  l0 = self[59]
  self.TaillingFailed = l0.Target
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = self[64]
  l0:Reset()
end
function export:f_2_AllCheckpointsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TriggerGameOver.lua")]
  l0.PlayerId = nil
  l0._graph = self
  l0.Out = self.f_74_Out
  l0:GameOver()
end
function export:f_82_Out()
  local l0
  self = self._graph
  l0 = self[82]
  self.InSafeRange = l0.Target
  self:en_67()
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0:In()
end
function export:f_82_SetFalse()
  local l0
  self = self._graph
  l0 = self[82]
  self.InSafeRange = l0.Target
end
function export:f_82_SetFromBool()
  local l0
  self = self._graph
  l0 = self[82]
  self.InSafeRange = l0.Target
end
function export:f_82_SetTrue()
  local l0
  self = self._graph
  l0 = self[82]
  self.InSafeRange = l0.Target
end
function export:f_82_Toggled()
  local l0
  self = self._graph
  l0 = self[82]
  self.InSafeRange = l0.Target
end
function export:f_60_Is_nil()
  local l0
  self = self._graph
  self:en_73()
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0:In()
end
function export:f_60_Is_not_nil()
  local l0
  self = self._graph
  self:en_78()
  l0 = self[78]
  l0:Hide()
end
function export:f_64_Out_0()
  local l0
  self = self._graph
  self:en_86()
  l0 = self[86]
  l0:Start()
end
function export:f_64_ResetOut()
  local l0
  self = self._graph
  self:en_86()
  l0 = self[86]
  l0:Stop()
end
function export:f_76_Disabled()
  local l0
  self = self._graph
  self:en_87()
  l0 = self[87]
  l0:Disable()
end
function export:f_76_Enabled()
  local l0
  self = self._graph
  self:en_87()
  l0 = self[87]
  l0:Enable()
end
function export:f_76_EnterRadius()
  local l0
  self = self._graph
  l0 = self[82]
  l0:True()
end
function export:f_76_ExitRadius()
  local l0
  self = self._graph
  l0 = self[82]
  l0:False()
end
function export:f_7_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/MissionVariableFloat.lua")]
  self.WarningBuffer = l0.Target
  l0 = Boxes[PathID("Domino/System/MissionVariableFloat.lua")]
  l0.Source = "MissionVariables.9223372048779323422"
  l0._graph = self
  l0.Out = self.f_6_Out
  l0:In()
end
function export:f_85_Out_0()
  local l0
  self = self._graph
  self:en_77()
  l0 = self[77]
  l0:Display()
end
function export:f_85_ResetOut()
  local l0
  self = self._graph
  self:en_77()
  l0 = self[77]
  l0:Hide()
end
function export:f_6_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/MissionVariableFloat.lua")]
  self.WarningTimer = l0.Target
  l0 = Boxes[PathID("Domino/System/MissionVariableFloat.lua")]
  l0.Source = "MissionVariables.9223372048779323419"
  l0._graph = self
  l0.Out = self.f_4_Out
  l0:In()
end
function export:f_77_DisplayRequested()
  local l0
  self = self._graph
  self:en_79()
  l0 = self[79]
  l0:Start()
end
function export:f_77_HideRequested()
  local l0
  self = self._graph
  self:en_79()
  l0 = self[79]
  l0:Stop()
end
function export:f_5_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/MissionVariableFloat.lua")]
  self.MaximumRange = l0.Target
  l0 = Boxes[PathID("Domino/System/MissionVariableFloat.lua")]
  l0.Source = "MissionVariables.9223372048779323421"
  l0._graph = self
  l0.Out = self.f_7_Out
  l0:In()
end
function export:f_91_Disabled()
  local l0
  self = self._graph
  self:en_80()
  l0 = self[80]
  l0:Disable()
end
function export:f_91_Enabled()
  local l0
  self = self._graph
  self:en_80()
  l0 = self[80]
  l0:Enable()
end
function export:f_91_TargetDetected()
  local l0
  self = self._graph
  l0 = self[68]
  l0.MessageType = "MissionFailed"
  l0.MessageIcon = "DefaultIcon"
  l0.OasisID_1 = {
    section = "MISSIONS.COMMON.MESSAGES.MISSIONFAILURE",
    item = "PlayerDetected",
    id = "165453"
  }
  l0:Display()
end
function export:f_87_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_8_Out
  l0:In()
end
function export:f_87_Enabled()
  self = self._graph
  self:Started()
end
function export:f_87_LOSAcquired()
  local l0
  self = self._graph
  l0 = self[71]
  l0:True()
end
function export:f_87_LOSLost()
  local l0
  self = self._graph
  l0 = self[71]
  l0:False()
end
function export:f_1_AllCheckpointsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TriggerGameOver.lua")]
  l0.PlayerId = nil
  l0._graph = self
  l0.Out = self.f_89_Out
  l0:GameOver()
end
function export:f_67_A_is_False()
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
  l0.notA_and_notB = self.f_83_notA_and_notB
  l0.A_or_B = self.f_83_A_or_B
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:en_78()
  local l0
  l0 = self[78]
  l0.MapPoint = self.ObjectiveMarker
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Tail",
    id = "165449"
  }
end
function export:en_81()
  local l0
  l0 = self[81]
  l0.Pawn = self.NPC
end
function export:en_73()
  local l0
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_73_Out
end
function export:en_80()
  local l0
  l0 = self[80]
  l0.Entity1 = self.PlayerID
  l0.Entity2 = self.Vehicle
  l0.Radius = self.MaximumRange
  l0.CheckNow = 1
end
function export:en_75()
  local l0
  l0 = self[75]
  l0.MapPoint = self.ObjectiveMarker
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Tail",
    id = "165449"
  }
end
function export:en_86()
  local l0
  l0 = self[86]
  l0.Seconds = self.WarningBuffer
end
function export:en_79()
  local l0
  l0 = self[79]
  l0.Seconds = self.WarningTimer
end
function export:en_60()
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
  l0.Is_nil = self.f_60_Is_nil
  l0.Is_not_nil = self.f_60_Is_not_nil
end
function export:en_76()
  local l0
  l0 = self[76]
  l0.Entity1 = self.PlayerID
  l0.Entity2 = self.Vehicle
  l0.Radius = self.SafeRange
  l0.CheckNow = 1
end
function export:en_77()
  local l0
  l0 = self[77]
  l0.MessageType = "MissionWarning"
  l0.MessageIcon = "iconWarning"
  l0.OasisID_1 = {
    section = "MISSIONS.COMMON.MESSAGES.MISSIONWARNING",
    item = "LosingTarget",
    id = "186001"
  }
  l0.Duration = self.WarningTimer
end
function export:en_91()
  local l0
  l0 = self[91]
  l0.Vehicle = self.Vehicle
end
function export:en_87()
  local l0
  l0 = self[87]
  l0.Target = self.Vehicle
end
function export:en_67()
  local l0
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.TaillingFailed
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_67_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
end
function export:Stopped()
end
function export:Started()
end
function export:Failed()
end
_compilerVersion = 4
