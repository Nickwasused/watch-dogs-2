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
  self._name = "AutoStopAtDestination"
  self._elementPathId = "DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination"
  self.Enabled = DummyFunction
  self.Disabled = DummyFunction
  self.VehicleStopped = DummyFunction
  self.EnterHotspot = DummyFunction
  self.ExitHotspot = DummyFunction
  self.LocalPawn = nil
  self.Stopping = 0
  self.bDisabled = 0
  self.bStopped = 0
  self.box_Timer_v2_33 = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_33
  l0._graph = self
  l0._name = "box_Timer_v2_33"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|101041942"
  l0.Out = DummyFunction
  l0.Started = self.f_box_Timer_v2_33_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_33_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_OnceOnly_v2_31 = cbox:CreateBox("Domino/System/OnceOnly_v2.lua")
  l0 = self.box_OnceOnly_v2_31
  l0._graph = self
  l0._name = "box_OnceOnly_v2_31"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|229294224"
  l0._DynamicAnchors = {In = 2, Out = 2}
  l0.Out[0] = self.f_box_OnceOnly_v2_31_Out_0
  l0.Out[1] = DummyFunction
  l0.ResetOut = self.f_box_OnceOnly_v2_31_ResetOut
  self.box_VehicleMonitor_v2_22 = cbox:CreateBox("Domino/System/VehicleMonitor_v2.lua")
  l0 = self.box_VehicleMonitor_v2_22
  l0._graph = self
  l0._name = "box_VehicleMonitor_v2_22"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|236984581"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Entered = DummyFunction
  l0.Leave = self.f_box_VehicleMonitor_v2_22_Leave
  l0.Exiting = self.f_box_VehicleMonitor_v2_22_Exiting
  l0.ChangeSeat = DummyFunction
  l0.StateChange = DummyFunction
  l0.BailedOut = self.f_box_VehicleMonitor_v2_22_BailedOut
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
  self.box_VehicleSpeedMonitor_4 = cbox:CreateBox("Domino/System/VehicleSpeedMonitor.lua")
  l0 = self.box_VehicleSpeedMonitor_4
  l0._graph = self
  l0._name = "box_VehicleSpeedMonitor_4"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|251103661"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_VehicleSpeedMonitor_4_Disabled
  l0.Succeeded = self.f_box_VehicleSpeedMonitor_4_Succeeded
  l0.GotSpeed = DummyFunction
  self.box_Timer_v2_14 = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_14
  l0._graph = self
  l0._name = "box_Timer_v2_14"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|372908034"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_Timer_v2_14_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_14_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_32 = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_32
  l0._graph = self
  l0._name = "box_Timer_v2_32"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|389981326"
  l0.Out = DummyFunction
  l0.Started = self.f_box_Timer_v2_32_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_32_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_SetBoolean_v2_19 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_19
  l0._graph = self
  l0._name = "box_SetBoolean_v2_19"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|832154727"
  l0.Out = self.f_box_SetBoolean_v2_19_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_19_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_19_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_19_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_19_SetFromBool
  self.box_OnceOnly_v2_34 = cbox:CreateBox("Domino/System/OnceOnly_v2.lua")
  l0 = self.box_OnceOnly_v2_34
  l0._graph = self
  l0._name = "box_OnceOnly_v2_34"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|881835562"
  l0._DynamicAnchors = {In = 2, Out = 2}
  l0.Out[0] = self.f_box_OnceOnly_v2_34_Out_0
  l0.Out[1] = self.f_box_OnceOnly_v2_34_Out_1
  l0.ResetOut = DummyFunction
  self.box_VehicleMonitor_v2_10 = cbox:CreateBox("Domino/System/VehicleMonitor_v2.lua")
  l0 = self.box_VehicleMonitor_v2_10
  l0._graph = self
  l0._name = "box_VehicleMonitor_v2_10"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|896702259"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_VehicleMonitor_v2_10_Disabled
  l0.Enter = DummyFunction
  l0.Entered = self.f_box_VehicleMonitor_v2_10_Entered
  l0.Leave = self.f_box_VehicleMonitor_v2_10_Leave
  l0.Exiting = self.f_box_VehicleMonitor_v2_10_Exiting
  l0.ChangeSeat = DummyFunction
  l0.StateChange = DummyFunction
  l0.BailedOut = self.f_box_VehicleMonitor_v2_10_BailedOut
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
  self.box_SetBoolean_v2_5 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_5
  l0._graph = self
  l0._name = "box_SetBoolean_v2_5"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|957278666"
  l0.Out = self.f_box_SetBoolean_v2_5_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_5_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_5_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_5_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_5_SetFromBool
  self.box_VehicleSeatingController_15 = cbox:CreateBox("Domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_15
  l0._graph = self
  l0._name = "box_VehicleSeatingController_15"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|1038921210"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = DummyFunction
  l0.UnassignCompleted = self.f_box_VehicleSeatingController_15_UnassignCompleted
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_SetBoolean_v2_30 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_30
  l0._graph = self
  l0._name = "box_SetBoolean_v2_30"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|1386803330"
  l0.Out = self.f_box_SetBoolean_v2_30_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_30_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_30_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_30_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_30_SetFromBool
  self.box_Proximity_Monitor_3 = cbox:CreateBox("Domino/System/ProximityMonitor.lua")
  l0 = self.box_Proximity_Monitor_3
  l0._graph = self
  l0._name = "box_Proximity_Monitor_3"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|1812434437"
  l0.Enabled = self.f_box_Proximity_Monitor_3_Enabled
  l0.Disabled = self.f_box_Proximity_Monitor_3_Disabled
  l0.EnterRadius = self.f_box_Proximity_Monitor_3_EnterRadius
  l0.ExitRadius = self.f_box_Proximity_Monitor_3_ExitRadius
  self.box_SetBoolean_v2_12 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_12
  l0._graph = self
  l0._name = "box_SetBoolean_v2_12"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|1975786529"
  l0.Out = self.f_box_SetBoolean_v2_12_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_12_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_12_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_12_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_12_SetFromBool
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
  l0 = self.box_SetBoolean_v2_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|771681657", "771681657", "AutoStopAtDestination", "Disable", "box_SetBoolean_v2_12.True", self, l0)
  l0:True()
end
function export:Enable()
  local l0
  l0 = self.box_SetBoolean_v2_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|1226292359", "1226292359", "AutoStopAtDestination", "Enable", "box_SetBoolean_v2_30.False", self, l0)
  l0:False()
end
function export:f_box_Compare_Boolean_v2_13_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.bStopped
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_20"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|1349525573"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_20_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|657709687", "657709687", "AutoStopAtDestination", "box_Compare_Boolean_v2_13.A_is_False", "box_Compare_Boolean_v2_20.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_13_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_35"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|369447005"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_35_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_35_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|568118216", "568118216", "AutoStopAtDestination", "box_Compare_Boolean_v2_13.A_is_True", "box_Ordered_Output_35.In", clone, l0)
  l0:In()
end
function export:f_box_Simple_Node_16_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Proximity_Monitor_3()
  l0 = self.box_Proximity_Monitor_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|1776039806", "1776039806", "AutoStopAtDestination", "box_Simple_Node_16.Out", "box_Proximity_Monitor_3.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Timer_v2_33_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SetBoolean_v2_19()
  l0 = self.box_Timer_v2_33
  l1 = self.box_SetBoolean_v2_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|377953640", "377953640", "AutoStopAtDestination", "box_Timer_v2_33.Started", "box_SetBoolean_v2_19.True", l0, l1)
  l1:True()
end
function export:f_box_Timer_v2_33_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Vehicle_Controller_21()
  l0 = self.box_Timer_v2_33
  l1 = Boxes[PathID("Domino/System/VehicleController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|1228756753", "1228756753", "AutoStopAtDestination", "box_Timer_v2_33.TimeElapsed", "box_Vehicle_Controller_21.SetAsUnusable", l0, l1)
  l1:SetAsUnusable()
end
function export:f_box_Simple_Node_26_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VehicleMonitor_v2_22()
  l0 = self.box_VehicleMonitor_v2_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|834401023", "834401023", "AutoStopAtDestination", "box_Simple_Node_26.Out", "box_VehicleMonitor_v2_22.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_OnceOnly_v2_31_Out_0()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VehicleSpeedMonitor_4()
  l0 = self.box_OnceOnly_v2_31
  l1 = self.box_VehicleSpeedMonitor_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|1100944457", "1100944457", "AutoStopAtDestination", "box_OnceOnly_v2_31.Out", "box_VehicleSpeedMonitor_4.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_OnceOnly_v2_31_ResetOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VehicleSpeedMonitor_4()
  l0 = self.box_OnceOnly_v2_31
  l1 = self.box_VehicleSpeedMonitor_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|2092082298", "2092082298", "AutoStopAtDestination", "box_OnceOnly_v2_31.ResetOut", "box_VehicleSpeedMonitor_4.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_VehicleMonitor_v2_22_BailedOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Ordered_Output_27()
  l0 = self.box_VehicleMonitor_v2_22
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|1932098949", "1932098949", "AutoStopAtDestination", "box_VehicleMonitor_v2_22.BailedOut", "box_Ordered_Output_27.In", l0, l1)
  l1:In()
end
function export:f_box_VehicleMonitor_v2_22_Exiting()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Ordered_Output_27()
  l0 = self.box_VehicleMonitor_v2_22
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|907374168", "907374168", "AutoStopAtDestination", "box_VehicleMonitor_v2_22.Exiting", "box_Ordered_Output_27.In", l0, l1)
  l1:In()
end
function export:f_box_VehicleMonitor_v2_22_Leave()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Ordered_Output_27()
  l0 = self.box_VehicleMonitor_v2_22
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|1886438966", "1886438966", "AutoStopAtDestination", "box_VehicleMonitor_v2_22.Leave", "box_Ordered_Output_27.In", l0, l1)
  l1:In()
end
function export:f_box_VehicleSpeedMonitor_4_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.bDisabled
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_13"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|32125603"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_13_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_13_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_VehicleSpeedMonitor_4
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|583892861", "583892861", "AutoStopAtDestination", "box_VehicleSpeedMonitor_4.Disabled", "box_Compare_Boolean_v2_13.In", l0, l1)
  l1:In()
end
function export:f_box_VehicleSpeedMonitor_4_Succeeded()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleSpeedMonitor_4
  l1 = self.box_SetBoolean_v2_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|686590461", "686590461", "AutoStopAtDestination", "box_VehicleSpeedMonitor_4.Succeeded", "box_SetBoolean_v2_5.True", l0, l1)
  l1:True()
end
function export:f_box_Simple_Node_18_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_16"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|38904987"
  l0.Out = self.f_box_Simple_Node_16_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|1011079362", "1011079362", "AutoStopAtDestination", "box_Simple_Node_18.Out", "box_Simple_Node_16.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_35_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Timer_v2_14()
  l0 = self.box_Timer_v2_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|355454769", "355454769", "AutoStopAtDestination", "box_Ordered_Output_35.Out", "box_Timer_v2_14.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_35_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|1113061804", "1113061804", "AutoStopAtDestination", "box_Ordered_Output_35.Out", "Disabled", clone, self)
  self:Disabled()
end
function export:f_box_Timer_v2_14_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Simple_Node_25()
  l0 = self.box_Timer_v2_14
  l1 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|26301924", "26301924", "AutoStopAtDestination", "box_Timer_v2_14.Stopped", "box_Simple_Node_25.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_14_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_24"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|1529511460"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_24_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_24_Out_1
  l0 = self.box_Timer_v2_14
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|812337234", "812337234", "AutoStopAtDestination", "box_Timer_v2_14.TimeElapsed", "box_Ordered_Output_24.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_32_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SetBoolean_v2_19()
  l0 = self.box_Timer_v2_32
  l1 = self.box_SetBoolean_v2_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|202103873", "202103873", "AutoStopAtDestination", "box_Timer_v2_32.Started", "box_SetBoolean_v2_19.True", l0, l1)
  l1:True()
end
function export:f_box_Timer_v2_32_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleSeatingController_15
  l0.Pawn = self.LocalPawn
  l0.UseAnimation = 1
  l0.Seat = "Driver"
  l0 = self.box_Timer_v2_32
  l1 = self.box_VehicleSeatingController_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|566987388", "566987388", "AutoStopAtDestination", "box_Timer_v2_32.TimeElapsed", "box_VehicleSeatingController_15.Unassign", l0, l1)
  l1:Unassign()
end
function export:f_box_Ordered_Output_29_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VehicleMonitor_v2_10()
  l0 = self.box_VehicleMonitor_v2_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|1826256569", "1826256569", "AutoStopAtDestination", "box_Ordered_Output_29.Out", "box_VehicleMonitor_v2_10.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_29_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|1579132167", "1579132167", "AutoStopAtDestination", "box_Ordered_Output_29.Out", "ExitHotspot", clone, self)
  self:ExitHotspot()
end
function export:f_box_Get_Player_ID_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.LocalPawn = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Proximity_Monitor_3()
  l0 = self.box_Proximity_Monitor_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|909502177", "909502177", "AutoStopAtDestination", "box_Get_Player_ID_2.Out", "box_Proximity_Monitor_3.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Simple_Node_7_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_8"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|1398383413"
  l0.Out = self.f_box_Simple_Node_8_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|1245355887", "1245355887", "AutoStopAtDestination", "box_Simple_Node_7.Out", "box_Simple_Node_8.In", clone, l0)
  l0:In()
end
function export:f_box_Simple_Node_28_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v2_34()
  l0 = self.box_OnceOnly_v2_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|699320547", "699320547", "AutoStopAtDestination", "box_Simple_Node_28.Out", "box_OnceOnly_v2_34.In", clone, l0)
  l0:In(0)
end
function export:f_box_SetBoolean_v2_19_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_19
  self.bStopped = l0.Target
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_17"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|1727728791"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_17_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_17_Out_1
  l0 = self.box_SetBoolean_v2_19
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|1159565022", "1159565022", "AutoStopAtDestination", "box_SetBoolean_v2_19.Out", "box_Ordered_Output_17.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_19_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_19
  self.bStopped = l0.Target
end
function export:f_box_SetBoolean_v2_19_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_19
  self.bStopped = l0.Target
end
function export:f_box_SetBoolean_v2_19_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_19
  self.bStopped = l0.Target
end
function export:f_box_SetBoolean_v2_19_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_19
  self.bStopped = l0.Target
end
function export:f_box_OnceOnly_v2_34_Out_0()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_33
  l0.Seconds = 0.2
  l0 = self.box_OnceOnly_v2_34
  l1 = self.box_Timer_v2_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|2038705095", "2038705095", "AutoStopAtDestination", "box_OnceOnly_v2_34.Out", "box_Timer_v2_33.Start", l0, l1)
  l1:Start()
end
function export:f_box_OnceOnly_v2_34_Out_1()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Vehicle_Controller_21()
  l0 = self.box_OnceOnly_v2_34
  l1 = Boxes[PathID("Domino/System/VehicleController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|1837518738", "1837518738", "AutoStopAtDestination", "box_OnceOnly_v2_34.Out", "box_Vehicle_Controller_21.SetAsUnusable", l0, l1)
  l1:SetAsUnusable()
end
function export:f_box_VehicleMonitor_v2_10_BailedOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v2_31()
  l0 = self.box_VehicleMonitor_v2_10
  l1 = self.box_OnceOnly_v2_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|1656677464", "1656677464", "AutoStopAtDestination", "box_VehicleMonitor_v2_10.BailedOut", "box_OnceOnly_v2_31.Reset", l0, l1)
  l1:Reset()
end
function export:f_box_VehicleMonitor_v2_10_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v2_31()
  l0 = self.box_VehicleMonitor_v2_10
  l1 = self.box_OnceOnly_v2_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|875092854", "875092854", "AutoStopAtDestination", "box_VehicleMonitor_v2_10.Disabled", "box_OnceOnly_v2_31.Reset", l0, l1)
  l1:Reset()
end
function export:f_box_VehicleMonitor_v2_10_Entered()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v2_31()
  l0 = self.box_VehicleMonitor_v2_10
  l1 = self.box_OnceOnly_v2_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|658335276", "658335276", "AutoStopAtDestination", "box_VehicleMonitor_v2_10.Entered", "box_OnceOnly_v2_31.In", l0, l1)
  l1:In(0)
end
function export:f_box_VehicleMonitor_v2_10_Exiting()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v2_31()
  l0 = self.box_VehicleMonitor_v2_10
  l1 = self.box_OnceOnly_v2_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|1351986441", "1351986441", "AutoStopAtDestination", "box_VehicleMonitor_v2_10.Exiting", "box_OnceOnly_v2_31.Reset", l0, l1)
  l1:Reset()
end
function export:f_box_VehicleMonitor_v2_10_Leave()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v2_31()
  l0 = self.box_VehicleMonitor_v2_10
  l1 = self.box_OnceOnly_v2_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|427573085", "427573085", "AutoStopAtDestination", "box_VehicleMonitor_v2_10.Leave", "box_OnceOnly_v2_31.Reset", l0, l1)
  l1:Reset()
end
function export:f_box_SetBoolean_v2_5_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_5
  self.Stopping = l0.Target
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_7"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|700679562"
  l0.Out = self.f_box_Simple_Node_7_Out
  l0 = self.box_SetBoolean_v2_5
  l1 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|270560838", "270560838", "AutoStopAtDestination", "box_SetBoolean_v2_5.Out", "box_Simple_Node_7.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_5_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_5
  self.Stopping = l0.Target
end
function export:f_box_SetBoolean_v2_5_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_5
  self.Stopping = l0.Target
end
function export:f_box_SetBoolean_v2_5_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_5
  self.Stopping = l0.Target
end
function export:f_box_SetBoolean_v2_5_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_5
  self.Stopping = l0.Target
end
function export:f_box_VehicleSeatingController_15_UnassignCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v2_34()
  l0 = self.box_VehicleSeatingController_15
  l1 = self.box_OnceOnly_v2_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|258100721", "258100721", "AutoStopAtDestination", "box_VehicleSeatingController_15.UnassignCompleted", "box_OnceOnly_v2_34.In", l0, l1)
  l1:In(1)
end
function export:f_box_Compare_Boolean_v2_6_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/ForcePawnsVehicleStop.lua")]
  l0.PlayerEntity = self.LocalPawn
  l0._graph = self
  l0._name = "box_Force_Pawns_Vehicle_Stop_1"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|1304538293"
  l0.Out = self.f_box_Force_Pawns_Vehicle_Stop_1_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|379072261", "379072261", "AutoStopAtDestination", "box_Compare_Boolean_v2_6.A_is_True", "box_Force_Pawns_Vehicle_Stop_1.In", clone, l0)
  l0:In()
end
function export:f_box_Force_Pawns_Vehicle_Stop_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ForcePawnsVehicleStop.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_23"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|1854230233"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_23_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_23_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|1155620313", "1155620313", "AutoStopAtDestination", "box_Force_Pawns_Vehicle_Stop_1.Out", "box_Ordered_Output_23.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_20_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Stopping
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_6"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|1287377758"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_6_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|1114768701", "1114768701", "AutoStopAtDestination", "box_Compare_Boolean_v2_20.A_is_False", "box_Compare_Boolean_v2_6.In", clone, l0)
  l0:In()
end
function export:f_box_SetBoolean_v2_30_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_30
  self.bDisabled = l0.Target
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_2"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|686836132"
  l0.Out = self.f_box_Get_Player_ID_2_Out
  l0 = self.box_SetBoolean_v2_30
  l1 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|1996341935", "1996341935", "AutoStopAtDestination", "box_SetBoolean_v2_30.Out", "box_Get_Player_ID_2.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_30_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_30
  self.bDisabled = l0.Target
end
function export:f_box_SetBoolean_v2_30_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_30
  self.bDisabled = l0.Target
end
function export:f_box_SetBoolean_v2_30_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_30
  self.bDisabled = l0.Target
end
function export:f_box_SetBoolean_v2_30_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_30
  self.bDisabled = l0.Target
end
function export:f_box_Simple_Node_8_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VehicleMonitor_v2_10()
  l0 = self.box_VehicleMonitor_v2_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|1686963675", "1686963675", "AutoStopAtDestination", "box_Simple_Node_8.Out", "box_VehicleMonitor_v2_10.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Simple_Node_25_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_26"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|221940552"
  l0.Out = self.f_box_Simple_Node_26_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|1017707028", "1017707028", "AutoStopAtDestination", "box_Simple_Node_25.Out", "box_Simple_Node_26.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_24_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Simple_Node_25()
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|1869142715", "1869142715", "AutoStopAtDestination", "box_Ordered_Output_24.Out", "box_Simple_Node_25.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_24_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_32
  l0.Seconds = 0.2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|149947857", "149947857", "AutoStopAtDestination", "box_Ordered_Output_24.Out", "box_Timer_v2_32.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_17_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_18"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|277765676"
  l0.Out = self.f_box_Simple_Node_18_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|345531382", "345531382", "AutoStopAtDestination", "box_Ordered_Output_17.Out", "box_Simple_Node_18.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_17_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|1327729047", "1327729047", "AutoStopAtDestination", "box_Ordered_Output_17.Out", "VehicleStopped", clone, self)
  self:VehicleStopped()
end
function export:f_box_Vehicle_Controller_21_Unusable()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/VehicleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
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
  l0._name = "box_SetVehicleLightAndSiren_9"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|297434417"
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|1516299448", "1516299448", "AutoStopAtDestination", "box_Vehicle_Controller_21.Unusable", "box_SetVehicleLightAndSiren_9.Start", clone, l0)
  l0:Start()
end
function export:f_box_Proximity_Monitor_3_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VehicleMonitor_v2_10()
  l0 = self.box_Proximity_Monitor_3
  l1 = self.box_VehicleMonitor_v2_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|1370522722", "1370522722", "AutoStopAtDestination", "box_Proximity_Monitor_3.Disabled", "box_VehicleMonitor_v2_10.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Proximity_Monitor_3_Enabled()
  local l0
  self = self._graph
  l0 = self.box_Proximity_Monitor_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|907118408", "907118408", "AutoStopAtDestination", "box_Proximity_Monitor_3.Enabled", "Enabled", l0, self)
  self:Enabled()
end
function export:f_box_Proximity_Monitor_3_EnterRadius()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_11"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|2061315611"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_11_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_11_Out_1
  l0 = self.box_Proximity_Monitor_3
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|1437580770", "1437580770", "AutoStopAtDestination", "box_Proximity_Monitor_3.EnterRadius", "box_Ordered_Output_11.In", l0, l1)
  l1:In()
end
function export:f_box_Proximity_Monitor_3_ExitRadius()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_29"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|630539924"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_29_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_29_Out_1
  l0 = self.box_Proximity_Monitor_3
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|1629826951", "1629826951", "AutoStopAtDestination", "box_Proximity_Monitor_3.ExitRadius", "box_Ordered_Output_29.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_23_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VehicleMonitor_v2_22()
  l0 = self.box_VehicleMonitor_v2_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|1616263695", "1616263695", "AutoStopAtDestination", "box_Ordered_Output_23.Out", "box_VehicleMonitor_v2_22.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_23_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Timer_v2_14()
  l0 = self.box_Timer_v2_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|503521740", "503521740", "AutoStopAtDestination", "box_Ordered_Output_23.Out", "box_Timer_v2_14.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_27_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_28"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|815184356"
  l0.Out = self.f_box_Simple_Node_28_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|1835744182", "1835744182", "AutoStopAtDestination", "box_Ordered_Output_27.Out", "box_Simple_Node_28.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_27_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Timer_v2_14()
  l0 = self.box_Timer_v2_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|992457681", "992457681", "AutoStopAtDestination", "box_Ordered_Output_27.Out", "box_Timer_v2_14.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_SetBoolean_v2_12_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_12
  self.bDisabled = l0.Target
  self:OnEnter_box_Proximity_Monitor_3()
  l1 = self.box_Proximity_Monitor_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|1216947739", "1216947739", "AutoStopAtDestination", "box_SetBoolean_v2_12.Out", "box_Proximity_Monitor_3.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_SetBoolean_v2_12_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_12
  self.bDisabled = l0.Target
end
function export:f_box_SetBoolean_v2_12_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_12
  self.bDisabled = l0.Target
end
function export:f_box_SetBoolean_v2_12_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_12
  self.bDisabled = l0.Target
end
function export:f_box_SetBoolean_v2_12_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_12
  self.bDisabled = l0.Target
end
function export:f_box_Ordered_Output_11_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VehicleMonitor_v2_10()
  l0 = self.box_VehicleMonitor_v2_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|434110306", "434110306", "AutoStopAtDestination", "box_Ordered_Output_11.Out", "box_VehicleMonitor_v2_10.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_11_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|5746830", "5746830", "AutoStopAtDestination", "box_Ordered_Output_11.Out", "EnterHotspot", clone, self)
  self:EnterHotspot()
end
function export:OnEnter_box_OnceOnly_v2_31()
end
function export:OnEnter_box_VehicleMonitor_v2_22()
  local l0
  l0 = self.box_VehicleMonitor_v2_22
  l0.Vehicle = self.Vehicle
  l0.Pawn = self.LocalPawn
  l0.CheckNow = 1
end
function export:OnEnter_box_VehicleSpeedMonitor_4()
  local l0
  l0 = self.box_VehicleSpeedMonitor_4
  l0.Pawn = self.LocalPawn
  l0.MinSpeed = 0
  l0.MaxSpeed = 25
  l0.Duration = 0.05
  l0.AutoDisable = 1
end
function export:OnEnter_box_Timer_v2_14()
  local l0
  l0 = self.box_Timer_v2_14
  l0.Seconds = 0.25
end
function export:OnEnter_box_SetBoolean_v2_19()
end
function export:OnEnter_box_OnceOnly_v2_34()
end
function export:OnEnter_box_VehicleMonitor_v2_10()
  local l0
  l0 = self.box_VehicleMonitor_v2_10
  l0.Vehicle = self.Vehicle
  l0.Pawn = self.LocalPawn
  l0.CheckNow = 1
end
function export:OnEnter_box_Simple_Node_25()
  local l0
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_25"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|1466285050"
  l0.Out = self.f_box_Simple_Node_25_Out
end
function export:OnEnter_box_Vehicle_Controller_21()
  local l0
  l0 = Boxes[PathID("Domino/System/VehicleController.lua")]
  l0.Vehicle = self.Vehicle
  l0._graph = self
  l0._name = "box_Vehicle_Controller_21"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|1760184897"
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = self.f_box_Vehicle_Controller_21_Unusable
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
function export:OnEnter_box_Proximity_Monitor_3()
  local l0
  l0 = self.box_Proximity_Monitor_3
  l0.Entity1 = self.Target
  l0.Entity2 = self.Vehicle
  l0.Radius = 6
  l0.CheckDistance3D = 1
end
function export:OnEnter_box_Ordered_Output_27()
  local l0
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_27"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\VehicleAutoStopAtDestination.domino|@AutoStopAtDestination|1887497219"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_27_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_27_Out_1
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
