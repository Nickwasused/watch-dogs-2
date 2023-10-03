export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CompareFloats_v2.lua")
  cbox:RegisterBox("Domino/System/FloatArithmetics.lua")
  cbox:RegisterBox("Domino/System/LogicGate_v2.lua")
  cbox:RegisterBox("Domino/System/MissionController_v4.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/PlayerVehicleMonitor_v2.lua")
  cbox:RegisterBox("Domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("Domino/System/SetFloat_v2.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
  cbox:RegisterBox("Domino/System/Timer_v2.lua")
  cbox:RegisterBox("Domino/System/TimerToScreen.lua")
  cbox:RegisterBox("Domino/System/TriggerMonitor_v2.lua")
  cbox:RegisterBox("Domino/System/TutorialController.lua")
  cbox:LoadResource("soundbinary/2070410650.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.Reached = DummyFunction
  self.WarningTime = 0
  self.AnteWarningTime = 0
  self.TimeLeft = 0
  self.IsNitroUsed = 0
  self.VehicleIn = nil
  self.TimerBeforeNitro = 0
  self.NitroWarningDuration = 8
  self[3] = cbox:CreateBox("Domino/System/TriggerMonitor_v2.lua")
  l0 = self[3]
  l0._graph = self
  l0.Enabled = self.f_3_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_3_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[14] = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self[14]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = self.f_14_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_14_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[12] = cbox:CreateBox("Domino/System/PlayerVehicleMonitor_v2.lua")
  l0 = self[12]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_12_Disabled
  l0.Enter = self.f_12_Enter
  l0.Leave = self.f_12_Leave
  l0.ChangeSeat = self.f_12_ChangeSeat
  self[16] = cbox:CreateBox("Domino/System/TutorialController.lua")
  l0 = self[16]
  l0._graph = self
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[9] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[9]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_9_Out
  self[17] = cbox:CreateBox("Domino/System/LogicGate_v2.lua")
  l0 = self[17]
  l0._graph = self
  l0.Out = self.f_17_Out
  l0.Opened = self.f_17_Opened
  l0.Closed = DummyFunction
  self[8] = cbox:CreateBox("Domino/System/PlaySound_v2.lua")
  l0 = self[8]
  l0._graph = self
  l0.Out = self.f_8_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[1] = cbox:CreateBox("Domino/System/TimerToScreen.lua")
  l0 = self[1]
  l0._graph = self
  l0.Started = self.f_1_Started
  l0.Paused = self.f_1_Paused
  l0.Resumed = self.f_1_Resumed
  l0.Stopped = self.f_1_Stopped
  l0.Restarted = self.f_1_Restarted
  l0.GotTime = self.f_1_GotTime
  l0.TimeElapsed = self.f_1_TimeElapsed
  self[4] = cbox:CreateBox("Domino/System/MissionController_v4.lua")
  l0 = self[4]
  l0._graph = self
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
  self:en_12()
  l0 = self[12]
  l0:Enable()
end
function export:f_3_Enabled()
  local l0
  self = self._graph
  self:en_1()
  l0 = self[1]
  l0:Start()
end
function export:f_3_Enter()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_2_Out_0
  l0.Out[1] = self.f_2_Out_1
  l0:In()
end
function export:f_14_Stopped()
  local l0
  self = self._graph
  self:en_17()
  l0 = self[17]
  l0:In()
end
function export:f_14_TimeElapsed()
  local l0
  self = self._graph
  self:en_17()
  l0 = self[17]
  l0:Open()
end
function export:f_10_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  self.RemainingTime = l0.Target
  self:Reached()
end
function export:f_11_Out_0()
  local l0
  self = self._graph
  self:en_14()
  l0 = self[14]
  l0:Stop()
end
function export:f_11_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  l0.Float = self.TimeLeft
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0.Out = self.f_10_Out
  l0:FromFloat()
end
function export:f_12_ChangeSeat()
  local l0
  self = self._graph
  l0 = self[12]
  self.VehicleIn = l0.Vehicle
end
function export:f_12_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = self.BaseTime
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_6_Is_nil
  l0.Is_not_nil = self.f_6_Is_not_nil
  l0:In()
end
function export:f_12_Enter()
  local l0
  self = self._graph
  l0 = self[12]
  self.VehicleIn = l0.Vehicle
  self:en_12()
  l0:Disable()
end
function export:f_12_Leave()
  local l0
  self = self._graph
  l0 = self[12]
  self.VehicleIn = l0.Vehicle
end
function export:f_9_Out()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:Enable()
end
function export:f_17_Opened()
  local l0
  self = self._graph
  self:en_16()
  l0 = self[16]
  l0:Display()
end
function export:f_17_Out()
  local l0
  self = self._graph
  self:en_16()
  l0 = self[16]
  l0:HideNotification()
end
function export:f_15_A_gt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FloatArithmetics.lua")]
  l0.A = self.WarningTime
  l0.B = self.BonusTime
  l0._graph = self
  l0.Out = self.f_13_Out
  l0:Sub()
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = self[9]
  l0:Input(1)
end
function export:f_5_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  self.WarningTime = l0.Target
  l0 = self[9]
  l0:Input(0)
end
function export:f_1_GotTime()
  local l0
  self = self._graph
  l0 = self[1]
  self.TimeLeft = l0.RemainingTime
end
function export:f_1_Paused()
  local l0
  self = self._graph
  l0 = self[1]
  self.TimeLeft = l0.RemainingTime
end
function export:f_1_Restarted()
  local l0
  self = self._graph
  l0 = self[1]
  self.TimeLeft = l0.RemainingTime
end
function export:f_1_Resumed()
  local l0
  self = self._graph
  l0 = self[1]
  self.TimeLeft = l0.RemainingTime
end
function export:f_1_Started()
  local l0
  self = self._graph
  l0 = self[1]
  self.TimeLeft = l0.RemainingTime
  l0 = Boxes[PathID("Domino/System/CompareFloats_v2.lua")]
  l0.A = self.WarningTime
  l0.B = self.BonusTime
  l0.Tolerance = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_lt_B = DummyFunction
  l0.A_le_B = DummyFunction
  l0.A_eq_B = DummyFunction
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_15_A_gt_B
  l0.A_ne_B = DummyFunction
  l0:In()
end
function export:f_1_Stopped()
  local l0
  self = self._graph
  l0 = self[1]
  self.TimeLeft = l0.RemainingTime
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_11_Out_0
  l0.Out[1] = self.f_11_Out_1
  l0:In()
end
function export:f_1_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[4]
  l0.EndReason = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S03.S03M040.EXTRA",
    item = "Specific_OutOfTime",
    id = "693607"
  }
  l0:Fail()
end
function export:f_6_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  l0.Float = self.TimeToCheckpoint
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0.Out = self.f_5_Out
  l0:FromFloat()
end
function export:f_6_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FloatArithmetics.lua")]
  l0.A = self.BaseTime
  l0.B = self.BonusTime
  l0._graph = self
  l0.Out = self.f_7_Out
  l0:Add()
end
function export:f_7_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FloatArithmetics.lua")]
  self.WarningTime = l0.Target
  l0 = self[8]
  l0.SoundId = "soundbinary/2070410650.bnk"
  l0:Play()
end
function export:f_2_Out_0()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:Disable()
end
function export:f_2_Out_1()
  local l0
  self = self._graph
  self:en_1()
  l0 = self[1]
  l0:Stop()
end
function export:f_13_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FloatArithmetics.lua")]
  self.TimerBeforeNitro = l0.Target
  self:en_14()
  l0 = self[14]
  l0:Start()
end
function export:en_3()
  local l0
  l0 = self[3]
  l0.Trigger = self.Checkpoint
end
function export:en_14()
  local l0
  l0 = self[14]
  l0.Seconds = self.TimerBeforeNitro
end
function export:en_12()
  local l0
  l0 = self[12]
  l0.CheckNow = 1
end
function export:en_16()
  local l0
  l0 = self[16]
  l0.Notification = {
    section = "MISSIONS.TUTORIALS.Notification_NitroBoost",
    item = "Description",
    id = "604584"
  }
  l0.Duration = self.BonusTime
end
function export:en_17()
  local l0
  l0 = self[17]
  l0.initStateOpen = 0
end
function export:en_1()
  local l0
  l0 = self[1]
  l0.Seconds = self.WarningTime
  l0.LinkedObjective = "ObjectiveSub1"
  l0.LinkedObjectiveAutoComplete = 0
end
function export:Reached()
end
_compilerVersion = 4
