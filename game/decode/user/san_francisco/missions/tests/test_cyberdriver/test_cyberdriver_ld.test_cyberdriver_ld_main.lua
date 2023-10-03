export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CompareIntegers_v2.lua")
  cbox:RegisterBox("domino/System/FormatString.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/LogicGate_v2.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlayerVehicleMonitor_v2.lua")
  cbox:RegisterBox("domino/System/TextToScreen_v2.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TimerToScreen.lua")
  cbox:RegisterBox("domino/System/VehicleWheelHelper.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.Boat = nil
  self.CHIP = nil
  self.WheelInContact = 0
  self[16] = cbox:CreateBox("domino/System/MissionMessageController.lua")
  l0 = self[16]
  l0._graph = self
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 2}
  l0.Out = self.f_16_Out
  l0.MessageRequested = DummyFunction
  l0.MessageCompleted = DummyFunction
  l0.DisplayStarted = DummyFunction
  self[24] = cbox:CreateBox("domino/System/PlayerVehicleMonitor_v2.lua")
  l0 = self[24]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_24_Enter
  l0.Leave = self.f_24_Leave
  l0.ChangeSeat = self.f_24_ChangeSeat
  self[2] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Loaded = self.f_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[5] = cbox:CreateBox("domino/System/MissionMessageController.lua")
  l0 = self[5]
  l0._graph = self
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 2}
  l0.Out = self.f_5_Out
  l0.MessageRequested = DummyFunction
  l0.MessageCompleted = DummyFunction
  l0.DisplayStarted = DummyFunction
  self[15] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[15]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_15_Started
  l0.Stopped = self.f_15_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_15_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[23] = cbox:CreateBox("domino/System/LogicGate_v2.lua")
  l0 = self[23]
  l0._graph = self
  l0.Out = self.f_23_Out
  l0.Opened = DummyFunction
  l0.Closed = self.f_23_Closed
  self[37] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[37]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_37_Out
  self[18] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[18]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_18_Out
  self[17] = cbox:CreateBox("domino/System/TimerToScreen.lua")
  l0 = self[17]
  l0._graph = self
  l0.Started = self.f_17_Started
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Stopped = self.f_17_Stopped
  l0.Restarted = DummyFunction
  l0.GotTime = DummyFunction
  l0.TimeElapsed = DummyFunction
  self[36] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[36]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = self.f_36_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_36_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[22] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[22]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = self.f_22_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_22_TimeElapsed
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
function export:In()
  local l0
  l0 = self[2]
  l0.LayerName = "Test_CyberDriver_Main"
  l0:Load()
end
function export:f_19_Out_0()
  local l0
  self = self._graph
  self:en_15()
  l0 = self[15]
  l0:Start()
end
function export:f_16_Out()
  local l0
  self = self._graph
  l0 = self[23]
  l0:Close()
end
function export:f_35_Out_0()
  local l0
  self = self._graph
  l0 = self[18]
  l0:Input(0)
end
function export:f_35_Out_1()
  local l0
  self = self._graph
  l0 = self[24]
  l0:Disable()
end
function export:f_24_ChangeSeat()
  local l0
  self = self._graph
  l0 = self[24]
  self.CHIP = l0.Vehicle
end
function export:f_24_Enter()
  local l0
  self = self._graph
  l0 = self[24]
  self.CHIP = l0.Vehicle
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_35_Out_0
  l0.Out[1] = self.f_35_Out_1
  l0:In()
end
function export:f_24_Leave()
  local l0
  self = self._graph
  l0 = self[24]
  self.CHIP = l0.Vehicle
end
function export:f_2_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:In()
end
function export:f_20_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleWheelHelper.lua")]
  self.WheelInContact = l0.NbWheelInContact
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = 0
  l0.B = self.WheelInContact
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_lt_B = DummyFunction
  l0.A_le_B = DummyFunction
  l0.A_eq_B = DummyFunction
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = self.f_21_A_ne_B
  l0:In()
end
function export:f_21_A_ne_B()
  local l0
  self = self._graph
  l0 = self[37]
  l0:Input(0)
end
function export:f_47_Out_0()
  local l0
  self = self._graph
  l0 = self[16]
  l0.MissionName = "MissionList.9223372045382934039"
  l0.ObjectiveSub2 = {
    section = "",
    item = "",
    id = "312666"
  }
  l0:IncrementObjective()
end
function export:f_47_Out_1()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/FormatString.lua")]
  l0.FormatString = "Timer ELAPsed.  Remaining time = %f"
  l0.String[0] = nil
  l0.String[1] = nil
  l0 = self[15]
  l1 = Boxes[PathID("domino/System/FormatString.lua")]
  l1.Float[0] = l0.RemainingTime
  l1.Float[1] = nil
  l1.Integer[0] = nil
  l1.Integer[1] = nil
  l1.Boolean[0] = nil
  l1.Boolean[1] = nil
  l1._graph = self
  l1._DynamicAnchors = {
    String = 2,
    Float = 2,
    Integer = 2,
    Boolean = 2
  }
  l1.Formatted = self.f_44_Formatted
  l1:Format()
end
function export:f_42_Out_0()
  local l0
  self = self._graph
  self:en_17()
  l0 = self[17]
  l0:Stop()
end
function export:f_42_Out_1()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/FormatString.lua")]
  l0.FormatString = "Timer STOPPED.  Remaining time = %f"
  l0.String[0] = nil
  l0.String[1] = nil
  l0 = self[15]
  l1 = Boxes[PathID("domino/System/FormatString.lua")]
  l1.Float[0] = l0.RemainingTime
  l1.Float[1] = nil
  l1.Integer[0] = nil
  l1.Integer[1] = nil
  l1.Boolean[0] = nil
  l1.Boolean[1] = nil
  l1._graph = self
  l1._DynamicAnchors = {
    String = 2,
    Float = 2,
    Integer = 2,
    Boolean = 2
  }
  l1.Formatted = self.f_41_Formatted
  l1:Format()
end
function export:f_44_Formatted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FormatString.lua")]
  self._sld_Target_44 = l0.Target
  l0 = Boxes[PathID("domino/System/TextToScreen_v2.lua")]
  l0.Text = self._sld_Target_44
  l0.Duration = 10
  l0.Color = "Green"
  l0._graph = self
  l0.Out = DummyFunction
  l0:In()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[5]
  l0.MissionName = "MissionList.9223372045382934039"
  l0.Objective = {
    section = "",
    item = "",
    id = "289470"
  }
  l0.ObjectiveSub1 = {
    section = "",
    item = "",
    id = "289472"
  }
  l0.ObjectiveSub2 = {
    section = "",
    item = "",
    id = "312666"
  }
  l0.ObjectiveSub3 = {
    section = "",
    item = "",
    id = "312670"
  }
  l0.ShowPreviousObjectiveComplete = 0
  l0.HasObjectiveMarker = 0
  l0:ShowNewObjective()
end
function export:f_5_Out()
  local l0
  self = self._graph
  l0 = self[24]
  l0:Enable()
end
function export:f_15_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_40_Out_0
  l0.Out[1] = self.f_40_Out_1
  l0:In()
end
function export:f_15_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_42_Out_0
  l0.Out[1] = self.f_42_Out_1
  l0:In()
end
function export:f_15_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_47_Out_0
  l0.Out[1] = self.f_47_Out_1
  l0:In()
end
function export:f_23_Closed()
  local l0
  self = self._graph
  l0 = self[37]
  l0:Input(1)
end
function export:f_23_Out()
  local l0
  self = self._graph
  self:en_15()
  l0 = self[15]
  l0:Stop()
end
function export:f_14_A_eq_B()
  local l0
  self = self._graph
  self:en_36()
  l0 = self[36]
  l0:Stop()
end
function export:f_37_Out()
  local l0
  self = self._graph
  self:en_22()
  l0 = self[22]
  l0:Stop()
end
function export:f_39_Formatted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FormatString.lua")]
  self._sld_Target_39 = l0.Target
  l0 = Boxes[PathID("domino/System/TextToScreen_v2.lua")]
  l0.Text = self._sld_Target_39
  l0.Duration = 10
  l0.Color = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0:In()
end
function export:f_18_Out()
  local l0
  self = self._graph
  self:en_36()
  l0 = self[36]
  l0:Start()
end
function export:f_40_Out_0()
  local l0
  self = self._graph
  self:en_17()
  l0 = self[17]
  l0:Start()
end
function export:f_40_Out_1()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/FormatString.lua")]
  l0.FormatString = "Timer started...  Remaining time = %f"
  l0.String[0] = nil
  l0.String[1] = nil
  l0 = self[15]
  l1 = Boxes[PathID("domino/System/FormatString.lua")]
  l1.Float[0] = l0.RemainingTime
  l1.Float[1] = nil
  l1.Integer[0] = nil
  l1.Integer[1] = nil
  l1.Boolean[0] = nil
  l1.Boolean[1] = nil
  l1._graph = self
  l1._DynamicAnchors = {
    String = 2,
    Float = 2,
    Integer = 2,
    Boolean = 2
  }
  l1.Formatted = self.f_39_Formatted
  l1:Format()
end
function export:f_17_Started()
  local l0
  self = self._graph
  self:en_22()
  l0 = self[22]
  l0:Start()
end
function export:f_17_Stopped()
  local l0
  self = self._graph
  l0 = self[18]
  l0:Input(2)
end
function export:f_4_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleWheelHelper.lua")]
  self.WheelInContact = l0.NbWheelInContact
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = 0
  l0.B = self.WheelInContact
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_lt_B = DummyFunction
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_14_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  l0:In()
end
function export:f_36_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_19_Out_0
  l0.Out[1] = DummyFunction
  l0.Out[2] = DummyFunction
  l0:In()
end
function export:f_36_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleWheelHelper.lua")]
  l0.Vehicle = self.CHIP
  l0._graph = self
  l0.Out = self.f_4_Out
  l0:In()
end
function export:f_41_Formatted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FormatString.lua")]
  self._sld_Target_41 = l0.Target
  l0 = Boxes[PathID("domino/System/TextToScreen_v2.lua")]
  l0.Text = self._sld_Target_41
  l0.Duration = 10
  l0.Color = "Red"
  l0._graph = self
  l0.Out = DummyFunction
  l0:In()
end
function export:f_22_Stopped()
  local l0
  self = self._graph
  l0 = self[23]
  l0:In()
end
function export:f_22_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleWheelHelper.lua")]
  l0.Vehicle = self.CHIP
  l0._graph = self
  l0.Out = self.f_20_Out
  l0:In()
end
function export:en_15()
  local l0
  l0 = self[15]
  l0.Seconds = 2
end
function export:en_17()
  local l0
  l0 = self[17]
  l0.Seconds = 2
end
function export:en_36()
  local l0
  l0 = self[36]
  l0.Seconds = 0.1
  l0.Loop = 1
end
function export:en_22()
  local l0
  l0 = self[22]
  l0.Seconds = 0.1
  l0.Loop = 1
end
_compilerVersion = 4
