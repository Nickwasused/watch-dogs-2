export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/ForcePawnsVehicleStop.lua")
  cbox:RegisterBox("Domino/System/GetPlayerID.lua")
  cbox:RegisterBox("Domino/System/OnceOnly_v2.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/ProximityMonitor.lua")
  cbox:RegisterBox("Domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/VehicleLightAndSiren.lua")
  cbox:RegisterBox("Domino/System/SimpleNode.lua")
  cbox:RegisterBox("Domino/System/Timer_v2.lua")
  cbox:RegisterBox("Domino/System/VehicleController.lua")
  cbox:RegisterBox("Domino/System/VehicleMonitor_v2.lua")
  cbox:RegisterBox("Domino/System/VehicleSeatingController.lua")
  cbox:RegisterBox("Domino/System/VehicleSpeedMonitor.lua")
end
function export:Init(cbox)
  local l0
  self.Enabled = DummyFunction
  self.Disabled = DummyFunction
  self.VehicleStopped = DummyFunction
  self.EnterHotspot = DummyFunction
  self.ExitHotspot = DummyFunction
  self.LocalPawn = nil
  self.Stopping = 0
  self.bDisabled = 0
  self.bStopped = 0
  self[33] = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self[33]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_33_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_33_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[31] = cbox:CreateBox("Domino/System/OnceOnly_v2.lua")
  l0 = self[31]
  l0._graph = self
  l0._DynamicAnchors = {In = 2, Out = 2}
  l0.Out[0] = self.f_31_Out_0
  l0.Out[1] = DummyFunction
  l0.ResetOut = self.f_31_ResetOut
  self[22] = cbox:CreateBox("Domino/System/VehicleMonitor_v2.lua")
  l0 = self[22]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Entered = DummyFunction
  l0.Leave = self.f_22_Leave
  l0.Exiting = self.f_22_Exiting
  l0.ChangeSeat = DummyFunction
  l0.StateChange = DummyFunction
  l0.BailedOut = self.f_22_BailedOut
  l0.NoMoveTimer = DummyFunction
  l0.OnMoveTimer = DummyFunction
  l0.IsUnusable = DummyFunction
  l0.BollardTakedown = DummyFunction
  l0.SteamPipeTakedown = DummyFunction
  l0.TrafficLightTakedown = DummyFunction
  l0.FullTakedown = DummyFunction
  l0.PartialTakedown = DummyFunction
  l0.IsSlowEnoughToExit = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.IsPawnHiding = DummyFunction
  l0.PawnIsNotHiding = DummyFunction
  self[4] = cbox:CreateBox("Domino/System/VehicleSpeedMonitor.lua")
  l0 = self[4]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_4_Disabled
  l0.Succeeded = self.f_4_Succeeded
  l0.GotSpeed = DummyFunction
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
  self[32] = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self[32]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_32_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_32_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[19] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[19]
  l0._graph = self
  l0.Out = self.f_19_Out
  l0.SetTrue = self.f_19_SetTrue
  l0.SetFalse = self.f_19_SetFalse
  l0.Toggled = self.f_19_Toggled
  l0.SetFromBool = self.f_19_SetFromBool
  self[34] = cbox:CreateBox("Domino/System/OnceOnly_v2.lua")
  l0 = self[34]
  l0._graph = self
  l0._DynamicAnchors = {In = 2, Out = 2}
  l0.Out[0] = self.f_34_Out_0
  l0.Out[1] = self.f_34_Out_1
  l0.ResetOut = DummyFunction
  self[10] = cbox:CreateBox("Domino/System/VehicleMonitor_v2.lua")
  l0 = self[10]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_10_Disabled
  l0.Enter = DummyFunction
  l0.Entered = self.f_10_Entered
  l0.Leave = self.f_10_Leave
  l0.Exiting = self.f_10_Exiting
  l0.ChangeSeat = DummyFunction
  l0.StateChange = DummyFunction
  l0.BailedOut = self.f_10_BailedOut
  l0.NoMoveTimer = DummyFunction
  l0.OnMoveTimer = DummyFunction
  l0.IsUnusable = DummyFunction
  l0.BollardTakedown = DummyFunction
  l0.SteamPipeTakedown = DummyFunction
  l0.TrafficLightTakedown = DummyFunction
  l0.FullTakedown = DummyFunction
  l0.PartialTakedown = DummyFunction
  l0.IsSlowEnoughToExit = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.IsPawnHiding = DummyFunction
  l0.PawnIsNotHiding = DummyFunction
  self[5] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[5]
  l0._graph = self
  l0.Out = self.f_5_Out
  l0.SetTrue = self.f_5_SetTrue
  l0.SetFalse = self.f_5_SetFalse
  l0.Toggled = self.f_5_Toggled
  l0.SetFromBool = self.f_5_SetFromBool
  self[15] = cbox:CreateBox("Domino/System/VehicleSeatingController.lua")
  l0 = self[15]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = DummyFunction
  l0.UnassignCompleted = self.f_15_UnassignCompleted
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self[30] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[30]
  l0._graph = self
  l0.Out = self.f_30_Out
  l0.SetTrue = self.f_30_SetTrue
  l0.SetFalse = self.f_30_SetFalse
  l0.Toggled = self.f_30_Toggled
  l0.SetFromBool = self.f_30_SetFromBool
  self[3] = cbox:CreateBox("Domino/System/ProximityMonitor.lua")
  l0 = self[3]
  l0._graph = self
  l0.Enabled = self.f_3_Enabled
  l0.Disabled = self.f_3_Disabled
  l0.EnterRadius = self.f_3_EnterRadius
  l0.ExitRadius = self.f_3_ExitRadius
  self[12] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[12]
  l0._graph = self
  l0.Out = self.f_12_Out
  l0.SetTrue = self.f_12_SetTrue
  l0.SetFalse = self.f_12_SetFalse
  l0.Toggled = self.f_12_Toggled
  l0.SetFromBool = self.f_12_SetFromBool
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:Disable()
  local l0
  l0 = self[12]
  l0:True()
end
function export:Enable()
  local l0
  l0 = self[30]
  l0:False()
end
function export:f_13_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.bStopped
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_20_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_13_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_35_Out_0
  l0.Out[1] = self.f_35_Out_1
  l0:In()
end
function export:f_16_Out()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:Disable()
end
function export:f_33_Started()
  local l0
  self = self._graph
  l0 = self[19]
  l0:True()
end
function export:f_33_TimeElapsed()
  local l0
  self = self._graph
  self:en_21()
  l0 = Boxes[PathID("Domino/System/VehicleController.lua")]
  l0:SetAsUnusable()
end
function export:f_26_Out()
  local l0
  self = self._graph
  self:en_22()
  l0 = self[22]
  l0:Disable()
end
function export:f_31_Out_0()
  local l0
  self = self._graph
  self:en_4()
  l0 = self[4]
  l0:Enable()
end
function export:f_31_ResetOut()
  local l0
  self = self._graph
  self:en_4()
  l0 = self[4]
  l0:Disable()
end
function export:f_22_BailedOut()
  local l0
  self = self._graph
  self:en_27()
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0:In()
end
function export:f_22_Exiting()
  local l0
  self = self._graph
  self:en_27()
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0:In()
end
function export:f_22_Leave()
  local l0
  self = self._graph
  self:en_27()
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0:In()
end
function export:f_4_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.bDisabled
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_13_A_is_True
  l0.A_is_False = self.f_13_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_4_Succeeded()
  local l0
  self = self._graph
  l0 = self[5]
  l0:True()
end
function export:f_18_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_16_Out
  l0:In()
end
function export:f_35_Out_0()
  local l0
  self = self._graph
  self:en_14()
  l0 = self[14]
  l0:Stop()
end
function export:f_35_Out_1()
  self = self._graph
  self:Disabled()
end
function export:f_14_Stopped()
  local l0
  self = self._graph
  self:en_25()
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0:In()
end
function export:f_14_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_24_Out_0
  l0.Out[1] = self.f_24_Out_1
  l0:In()
end
function export:f_32_Started()
  local l0
  self = self._graph
  l0 = self[19]
  l0:True()
end
function export:f_32_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[15]
  l0.Pawn = self.LocalPawn
  l0.UseAnimation = 1
  l0.Seat = "Driver"
  l0:Unassign()
end
function export:f_29_Out_0()
  local l0
  self = self._graph
  self:en_10()
  l0 = self[10]
  l0:Disable()
end
function export:f_29_Out_1()
  self = self._graph
  self:ExitHotspot()
end
function export:f_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.LocalPawn = l0.PlayerID
  self:en_3()
  l0 = self[3]
  l0:Enable()
end
function export:f_7_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_8_Out
  l0:In()
end
function export:f_28_Out()
  local l0
  self = self._graph
  l0 = self[34]
  l0:In(0)
end
function export:f_19_Out()
  local l0
  self = self._graph
  l0 = self[19]
  self.bStopped = l0.Target
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_17_Out_0
  l0.Out[1] = self.f_17_Out_1
  l0:In()
end
function export:f_19_SetFalse()
  local l0
  self = self._graph
  l0 = self[19]
  self.bStopped = l0.Target
end
function export:f_19_SetFromBool()
  local l0
  self = self._graph
  l0 = self[19]
  self.bStopped = l0.Target
end
function export:f_19_SetTrue()
  local l0
  self = self._graph
  l0 = self[19]
  self.bStopped = l0.Target
end
function export:f_19_Toggled()
  local l0
  self = self._graph
  l0 = self[19]
  self.bStopped = l0.Target
end
function export:f_34_Out_0()
  local l0
  self = self._graph
  l0 = self[33]
  l0.Seconds = 0.2
  l0:Start()
end
function export:f_34_Out_1()
  local l0
  self = self._graph
  self:en_21()
  l0 = Boxes[PathID("Domino/System/VehicleController.lua")]
  l0:SetAsUnusable()
end
function export:f_10_BailedOut()
  local l0
  self = self._graph
  l0 = self[31]
  l0:Reset()
end
function export:f_10_Disabled()
  local l0
  self = self._graph
  l0 = self[31]
  l0:Reset()
end
function export:f_10_Entered()
  local l0
  self = self._graph
  l0 = self[31]
  l0:In(0)
end
function export:f_10_Exiting()
  local l0
  self = self._graph
  l0 = self[31]
  l0:Reset()
end
function export:f_10_Leave()
  local l0
  self = self._graph
  l0 = self[31]
  l0:Reset()
end
function export:f_5_Out()
  local l0
  self = self._graph
  l0 = self[5]
  self.Stopping = l0.Target
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_7_Out
  l0:In()
end
function export:f_5_SetFalse()
  local l0
  self = self._graph
  l0 = self[5]
  self.Stopping = l0.Target
end
function export:f_5_SetFromBool()
  local l0
  self = self._graph
  l0 = self[5]
  self.Stopping = l0.Target
end
function export:f_5_SetTrue()
  local l0
  self = self._graph
  l0 = self[5]
  self.Stopping = l0.Target
end
function export:f_5_Toggled()
  local l0
  self = self._graph
  l0 = self[5]
  self.Stopping = l0.Target
end
function export:f_15_UnassignCompleted()
  local l0
  self = self._graph
  l0 = self[34]
  l0:In(1)
end
function export:f_6_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ForcePawnsVehicleStop.lua")]
  l0.PlayerEntity = self.LocalPawn
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:In()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_23_Out_0
  l0.Out[1] = self.f_23_Out_1
  l0:In()
end
function export:f_20_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Stopping
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_6_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_30_Out()
  local l0
  self = self._graph
  l0 = self[30]
  self.bDisabled = l0.Target
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_2_Out
  l0:In()
end
function export:f_30_SetFalse()
  local l0
  self = self._graph
  l0 = self[30]
  self.bDisabled = l0.Target
end
function export:f_30_SetFromBool()
  local l0
  self = self._graph
  l0 = self[30]
  self.bDisabled = l0.Target
end
function export:f_30_SetTrue()
  local l0
  self = self._graph
  l0 = self[30]
  self.bDisabled = l0.Target
end
function export:f_30_Toggled()
  local l0
  self = self._graph
  l0 = self[30]
  self.bDisabled = l0.Target
end
function export:f_8_Out()
  local l0
  self = self._graph
  self:en_10()
  l0 = self[10]
  l0:Disable()
end
function export:f_25_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_26_Out
  l0:In()
end
function export:f_24_Out_0()
  local l0
  self = self._graph
  self:en_25()
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0:In()
end
function export:f_24_Out_1()
  local l0
  self = self._graph
  l0 = self[32]
  l0.Seconds = 0.2
  l0:Start()
end
function export:f_17_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_18_Out
  l0:In()
end
function export:f_17_Out_1()
  self = self._graph
  self:VehicleStopped()
end
function export:f_21_Unusable()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/VehicleLightAndSiren.lua")]
  l0.Vehicle = self.Vehicle
  l0.EmergencyLightOn = nil
  l0.HighBeamLightOn = 0
  l0.FlasherOn = 1
  l0.FlasherSelection = nil
  l0.SpotlightOn = nil
  l0.SpotlightSelection = nil
  l0.SpotlightTarget = nil
  l0.SirenOn = nil
  l0.RightFlasherOn = nil
  l0.LeftFlasherOn = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0:Start()
end
function export:f_3_Disabled()
  local l0
  self = self._graph
  self:en_10()
  l0 = self[10]
  l0:Disable()
end
function export:f_3_Enabled()
  self = self._graph
  self:Enabled()
end
function export:f_3_EnterRadius()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_11_Out_0
  l0.Out[1] = self.f_11_Out_1
  l0:In()
end
function export:f_3_ExitRadius()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_29_Out_0
  l0.Out[1] = self.f_29_Out_1
  l0:In()
end
function export:f_23_Out_0()
  local l0
  self = self._graph
  self:en_22()
  l0 = self[22]
  l0:Enable()
end
function export:f_23_Out_1()
  local l0
  self = self._graph
  self:en_14()
  l0 = self[14]
  l0:Start()
end
function export:f_27_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_28_Out
  l0:In()
end
function export:f_27_Out_1()
  local l0
  self = self._graph
  self:en_14()
  l0 = self[14]
  l0:Stop()
end
function export:f_12_Out()
  local l0
  self = self._graph
  l0 = self[12]
  self.bDisabled = l0.Target
  self:en_3()
  l0 = self[3]
  l0:Disable()
end
function export:f_12_SetFalse()
  local l0
  self = self._graph
  l0 = self[12]
  self.bDisabled = l0.Target
end
function export:f_12_SetFromBool()
  local l0
  self = self._graph
  l0 = self[12]
  self.bDisabled = l0.Target
end
function export:f_12_SetTrue()
  local l0
  self = self._graph
  l0 = self[12]
  self.bDisabled = l0.Target
end
function export:f_12_Toggled()
  local l0
  self = self._graph
  l0 = self[12]
  self.bDisabled = l0.Target
end
function export:f_11_Out_0()
  local l0
  self = self._graph
  self:en_10()
  l0 = self[10]
  l0:Enable()
end
function export:f_11_Out_1()
  self = self._graph
  self:EnterHotspot()
end
function export:en_22()
  local l0
  l0 = self[22]
  l0.Vehicle = self.Vehicle
  l0.Pawn = self.LocalPawn
  l0.CheckNow = 1
end
function export:en_4()
  local l0
  l0 = self[4]
  l0.Pawn = self.LocalPawn
  l0.MinSpeed = 0
  l0.MaxSpeed = 25
  l0.Duration = 0.05
  l0.AutoDisable = 1
end
function export:en_14()
  local l0
  l0 = self[14]
  l0.Seconds = 0.25
end
function export:en_10()
  local l0
  l0 = self[10]
  l0.Vehicle = self.Vehicle
  l0.Pawn = self.LocalPawn
  l0.CheckNow = 1
end
function export:en_25()
  local l0
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_25_Out
end
function export:en_21()
  local l0
  l0 = Boxes[PathID("Domino/System/VehicleController.lua")]
  l0.Vehicle = self.Vehicle
  l0._graph = self
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = self.f_21_Unusable
  l0.Destructable = DummyFunction
  l0.Indestructable = DummyFunction
  l0.Deflatable = DummyFunction
  l0.Undeflatable = DummyFunction
  l0.EngineBroken = DummyFunction
  l0.EngineShutDown = DummyFunction
  l0.EngineStarted = DummyFunction
  l0.VehicleAlarmHackOn = DummyFunction
  l0.VehicleAlarmHackOff = DummyFunction
end
function export:en_3()
  local l0
  l0 = self[3]
  l0.Entity1 = self.Target
  l0.Entity2 = self.Vehicle
  l0.Radius = 6
  l0.CheckDistance3D = 1
end
function export:en_27()
  local l0
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_27_Out_0
  l0.Out[1] = self.f_27_Out_1
end
function export:Enabled()
end
function export:Disabled()
end
function export:VehicleStopped()
end
function export:EnterHotspot()
end
function export:ExitHotspot()
end
_compilerVersion = 4
