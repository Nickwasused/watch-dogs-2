export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CompareFloats_v2.lua")
  cbox:RegisterBox("Domino/System/HealthBarController.lua")
  cbox:RegisterBox("Domino/System/MissionModuleBox_v3.lua")
  cbox:RegisterBox("Domino/System/OnceOnly_v2.lua")
  cbox:RegisterBox("Domino/System/PawnHealthMonitor_v3.lua")
  cbox:RegisterBox("Domino/System/TargetTagController.lua")
  cbox:RegisterBox("Domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self.CurrentHealthPercentage = 0
  self.HealthWarningThreshold = 0.1
  self[8] = cbox:CreateBox("Domino/System/OnceOnly_v2.lua")
  l0 = self[8]
  l0._graph = self
  l0._DynamicAnchors = {In = 2, Out = 2}
  l0.Out[0] = self.f_8_Out_0
  l0.Out[1] = DummyFunction
  l0.ResetOut = self.f_8_ResetOut
  self[4] = cbox:CreateBox("Domino/System/PawnHealthMonitor_v3.lua")
  l0 = self[4]
  l0._graph = self
  l0.Enabled = self.f_4_Enabled
  l0.Disabled = self.f_4_Disabled
  l0.Damaged = self.f_4_Damaged
  l0.Killed = self.f_4_Killed
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = self.f_4_HealthChecked
  self[2] = cbox:CreateBox("Domino/System/TargetTagController.lua")
  l0 = self[2]
  l0._graph = self
  l0.Out = DummyFunction
  l0.TagAdded = DummyFunction
  l0.ErrorAdding = DummyFunction
  l0.TagRemoved = self.f_2_TagRemoved
  l0.ErrorRemoving = self.f_2_ErrorRemoving
  l0.TaggingEnabled = DummyFunction
  l0.TaggingDisabled = DummyFunction
  l0.ProfilerlessTaggingEnabled = DummyFunction
  l0.ProfilerlessTaggingDisabled = DummyFunction
  l0.TaggerComponentEnabled = DummyFunction
  l0.TaggerComponentDisabled = DummyFunction
  self[6] = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self[6]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_6_Started
  l0.Stopped = self.f_6_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_6_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[3] = cbox:CreateBox("Domino/System/MissionModuleBox_v3.lua")
  l0 = self[3]
  l0._graph = self
  l0.DisplayRequested = DummyFunction
  l0.DisplayStarted = DummyFunction
  l0.HideRequested = DummyFunction
  l0.DisplayFinished = DummyFunction
  l0.Out = DummyFunction
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
  self:en_4()
  l0 = self[4]
  l0:Enable()
end
function export:Stop()
  local l0
  self:en_4()
  l0 = self[4]
  l0:Disable()
end
function export:f_8_Out_0()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:Display()
end
function export:f_8_ResetOut()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:Hide()
end
function export:f_7_A_ge_B()
  local l0
  self = self._graph
  self:en_6()
  l0 = self[6]
  l0:Stop()
end
function export:f_1_Displayed()
  local l0
  self = self._graph
  self:en_2()
  l0 = self[2]
  l0:AddTagEntity()
end
function export:f_1_Hidden()
  local l0
  self = self._graph
  self:en_2()
  l0 = self[2]
  l0:RemoveTagEntity()
end
function export:f_4_Damaged()
  local l0
  self = self._graph
  l0 = self[4]
  self.CurrentHealthPercentage = l0.Health
  l0 = Boxes[PathID("Domino/System/CompareFloats_v2.lua")]
  l0.A = self.CurrentHealthPercentage
  l0.B = self.HealthWarningThreshold
  l0.Tolerance = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_5_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = DummyFunction
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  l0:In()
end
function export:f_4_Disabled()
  local l0
  self = self._graph
  self:en_1()
  l0 = Boxes[PathID("Domino/System/HealthBarController.lua")]
  l0:Hide()
end
function export:f_4_Enabled()
  local l0
  self = self._graph
  self:en_1()
  l0 = Boxes[PathID("Domino/System/HealthBarController.lua")]
  l0:Display()
end
function export:f_4_HealthChecked()
  local l0
  self = self._graph
  l0 = self[4]
  self.CurrentHealthPercentage = l0.Health
  l0 = Boxes[PathID("Domino/System/CompareFloats_v2.lua")]
  l0.A = self.CurrentHealthPercentage
  l0.B = self.HealthWarningThreshold
  l0.Tolerance = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_lt_B = DummyFunction
  l0.A_le_B = DummyFunction
  l0.A_eq_B = DummyFunction
  l0.A_ge_B = self.f_7_A_ge_B
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  l0:In()
end
function export:f_4_Killed()
  local l0
  self = self._graph
  self:en_4()
  l0 = self[4]
  l0:Disable()
end
function export:f_2_ErrorRemoving()
  local l0
  self = self._graph
  self:en_6()
  l0 = self[6]
  l0:Stop()
end
function export:f_2_TagRemoved()
  local l0
  self = self._graph
  self:en_6()
  l0 = self[6]
  l0:Stop()
end
function export:f_6_Started()
  local l0
  self = self._graph
  l0 = self[8]
  l0:In(0)
end
function export:f_6_Stopped()
  local l0
  self = self._graph
  l0 = self[8]
  l0:Reset()
end
function export:f_6_TimeElapsed()
  local l0
  self = self._graph
  self:en_4()
  l0 = self[4]
  l0:CheckHealth()
end
function export:f_5_A_lt_B()
  local l0
  self = self._graph
  self:en_6()
  l0 = self[6]
  l0:Start()
end
function export:en_1()
  local l0
  l0 = Boxes[PathID("Domino/System/HealthBarController.lua")]
  l0.NPC_ID = self.VIP
  l0.NPC_Name = self.VIP_Name
  l0._graph = self
  l0.Displayed = self.f_1_Displayed
  l0.Hidden = self.f_1_Hidden
end
function export:en_4()
  local l0
  l0 = self[4]
  l0.Pawn = self.VIP
end
function export:en_2()
  local l0
  l0 = self[2]
  l0.TaggingColorType = "ObjectiveTarget"
  l0.TargetEntity = self.VIP
end
function export:en_6()
  local l0
  l0 = self[6]
  l0.Loop = 1
end
function export:en_3()
  local l0
  l0 = self[3]
  l0.MessageType = "MissionWarning"
  l0.MessageIcon = "iconWarning"
  l0.OasisID_1 = {
    section = "MISSIONS.COMMON.MESSAGES.MISSIONWARNING",
    item = "AllySituationCritical",
    id = "195577"
  }
  l0.Duration = -1
end
_compilerVersion = 4
