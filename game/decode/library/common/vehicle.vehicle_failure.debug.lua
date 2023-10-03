export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/MissionController_v4.lua")
  cbox:RegisterBox("Domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/SimpleNode.lua")
  cbox:RegisterBox("Domino/System/VehicleMonitor_v3.lua")
end
function export:Init(cbox)
  local l0
  self._name = "Vehicle Failure"
  self._elementPathId = "DocumentContainer|..\\Library\\common\\Vehicle.domino|@Vehicle Failure"
  self.Started = DummyFunction
  self.Stopped = DummyFunction
  self.Fail = DummyFunction
  self.box_MissionController_v4_3 = cbox:CreateBox("Domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_3
  l0._graph = self
  l0._name = "box_MissionController_v4_3"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Vehicle.domino|@Vehicle Failure|801846983"
  self.box_MissionController_v4_11 = cbox:CreateBox("Domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_11
  l0._graph = self
  l0._name = "box_MissionController_v4_11"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Vehicle.domino|@Vehicle Failure|1047609000"
  self.box_VehicleMonitor_v3_2 = cbox:CreateBox("Domino/System/VehicleMonitor_v3.lua")
  l0 = self.box_VehicleMonitor_v3_2
  l0._graph = self
  l0._name = "box_VehicleMonitor_v3_2"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Vehicle.domino|@Vehicle Failure|1192804495"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Entered = DummyFunction
  l0.PassangerEntered = DummyFunction
  l0.Leave = self.f_box_VehicleMonitor_v3_2_Leave
  l0.Exiting = DummyFunction
  l0.ChangeSeat = DummyFunction
  l0.BailedOut = DummyFunction
  l0.IsPawnHiding = DummyFunction
  l0.PawnIsNotHiding = DummyFunction
  l0.StateChange = DummyFunction
  l0.TakenDamage = DummyFunction
  l0.IsUnusable = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.NoMoveTimer = DummyFunction
  l0.OnMoveTimer = DummyFunction
  l0.IsSlowEnoughToExit = DummyFunction
  l0.VehicleJump = DummyFunction
  l0.VehicleLanding = DummyFunction
  l0.BollardTakedown = DummyFunction
  l0.SteamPipeTakedown = DummyFunction
  l0.TrafficLightTakedown = DummyFunction
  l0.FullTakedown = DummyFunction
  l0.PartialTakedown = DummyFunction
  l0.NitroUsed = DummyFunction
  l0.NitroStopped = DummyFunction
  l0.IsFlipped = DummyFunction
  l0.IsUnFlipped = DummyFunction
  l0.Unloaded = DummyFunction
  self.box_OnceOnly_v3_9 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_9
  l0._graph = self
  l0._name = "box_OnceOnly_v3_9"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Vehicle.domino|@Vehicle Failure|1236388350"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_9_Out
  l0.ResetOut = DummyFunction
  self.box_VehicleMonitor_v3_4 = cbox:CreateBox("Domino/System/VehicleMonitor_v3.lua")
  l0 = self.box_VehicleMonitor_v3_4
  l0._graph = self
  l0._name = "box_VehicleMonitor_v3_4"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Vehicle.domino|@Vehicle Failure|1643245479"
  l0.Enabled = self.f_box_VehicleMonitor_v3_4_Enabled
  l0.Disabled = self.f_box_VehicleMonitor_v3_4_Disabled
  l0.Enter = DummyFunction
  l0.Entered = DummyFunction
  l0.PassangerEntered = DummyFunction
  l0.Leave = DummyFunction
  l0.Exiting = DummyFunction
  l0.ChangeSeat = DummyFunction
  l0.BailedOut = DummyFunction
  l0.IsPawnHiding = DummyFunction
  l0.PawnIsNotHiding = DummyFunction
  l0.StateChange = DummyFunction
  l0.TakenDamage = DummyFunction
  l0.IsUnusable = self.f_box_VehicleMonitor_v3_4_IsUnusable
  l0.IsUnderwater = self.f_box_VehicleMonitor_v3_4_IsUnderwater
  l0.NoMoveTimer = DummyFunction
  l0.OnMoveTimer = DummyFunction
  l0.IsSlowEnoughToExit = DummyFunction
  l0.VehicleJump = DummyFunction
  l0.VehicleLanding = DummyFunction
  l0.BollardTakedown = DummyFunction
  l0.SteamPipeTakedown = DummyFunction
  l0.TrafficLightTakedown = DummyFunction
  l0.FullTakedown = DummyFunction
  l0.PartialTakedown = DummyFunction
  l0.NitroUsed = DummyFunction
  l0.NitroStopped = DummyFunction
  l0.IsFlipped = self.f_box_VehicleMonitor_v3_4_IsFlipped
  l0.IsUnFlipped = self.f_box_VehicleMonitor_v3_4_IsUnFlipped
  l0.Unloaded = self.f_box_VehicleMonitor_v3_4_Unloaded
  self.box_MissionController_v4_1 = cbox:CreateBox("Domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_1
  l0._graph = self
  l0._name = "box_MissionController_v4_1"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Vehicle.domino|@Vehicle Failure|1771442754"
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
  self:OnEnter_box_VehicleMonitor_v3_4()
  l0 = self.box_VehicleMonitor_v3_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Vehicle.domino|@Vehicle Failure|182939754", "182939754", "Vehicle Failure", "Start", "box_VehicleMonitor_v3_4.Enable", self, l0)
  l0:Enable()
end
function export:Stop()
  local l0
  self:OnEnter_box_VehicleMonitor_v3_4()
  l0 = self.box_VehicleMonitor_v3_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Vehicle.domino|@Vehicle Failure|1922056783", "1922056783", "Vehicle Failure", "Stop", "box_VehicleMonitor_v3_4.Disable", self, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_5_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Vehicle.domino|@Vehicle Failure|1799212290", "1799212290", "Vehicle Failure", "box_Ordered_Output_5.Out", "Fail", clone, self)
  self:Fail()
end
function export:f_box_Ordered_Output_5_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionController_v4_3
  l0.EndReason = self.Unusable_FailReason
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Vehicle.domino|@Vehicle Failure|1731192925", "1731192925", "Vehicle Failure", "box_Ordered_Output_5.Out", "box_MissionController_v4_3.Fail", clone, l0)
  l0:Fail()
end
function export:f_box_Ordered_Output_7_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Vehicle.domino|@Vehicle Failure|1640364642", "1640364642", "Vehicle Failure", "box_Ordered_Output_7.Out", "Fail", clone, self)
  self:Fail()
end
function export:f_box_Ordered_Output_7_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionController_v4_1
  l0.EndReason = self.Stuck_FailReason
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Vehicle.domino|@Vehicle Failure|1724397585", "1724397585", "Vehicle Failure", "box_Ordered_Output_7.Out", "box_MissionController_v4_1.Fail", clone, l0)
  l0:Fail()
end
function export:f_box_Compare_Boolean_v2_12_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_10"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Vehicle.domino|@Vehicle Failure|1940532272"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_10_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_10_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Vehicle.domino|@Vehicle Failure|1733887441", "1733887441", "Vehicle Failure", "box_Compare_Boolean_v2_12.A_is_True", "box_Ordered_Output_10.In", clone, l0)
  l0:In()
end
function export:f_box_Simple_Node_13_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.FaiIfUnloaded
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_12"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Vehicle.domino|@Vehicle Failure|195424950"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_12_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Vehicle.domino|@Vehicle Failure|680730871", "680730871", "Vehicle Failure", "box_Simple_Node_13.Out", "box_Compare_Boolean_v2_12.In", clone, l0)
  l0:In()
end
function export:f_box_VehicleMonitor_v3_2_Leave()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Fail_IfStuck
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_8"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Vehicle.domino|@Vehicle Failure|1621401274"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_8_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_VehicleMonitor_v3_2
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Vehicle.domino|@Vehicle Failure|1575730492", "1575730492", "Vehicle Failure", "box_VehicleMonitor_v3_2.Leave", "box_Compare_Boolean_v2_8.In", l0, l1)
  l1:In()
end
function export:f_box_OnceOnly_v3_9_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Fail_IfUnusable
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_6"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Vehicle.domino|@Vehicle Failure|1347566293"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_6_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_OnceOnly_v3_9
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Vehicle.domino|@Vehicle Failure|879725194", "879725194", "Vehicle Failure", "box_OnceOnly_v3_9.Out", "box_Compare_Boolean_v2_6.In", l0, l1)
  l1:In()
end
function export:f_box_Compare_Boolean_v2_6_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_5"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Vehicle.domino|@Vehicle Failure|3100534"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_5_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_5_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Vehicle.domino|@Vehicle Failure|851361462", "851361462", "Vehicle Failure", "box_Compare_Boolean_v2_6.A_is_True", "box_Ordered_Output_5.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_8_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_7"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Vehicle.domino|@Vehicle Failure|119741020"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_7_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_7_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Vehicle.domino|@Vehicle Failure|1770529904", "1770529904", "Vehicle Failure", "box_Compare_Boolean_v2_8.A_is_True", "box_Ordered_Output_7.In", clone, l0)
  l0:In()
end
function export:f_box_VehicleMonitor_v3_4_Disabled()
  local l0
  self = self._graph
  l0 = self.box_VehicleMonitor_v3_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Vehicle.domino|@Vehicle Failure|218650883", "218650883", "Vehicle Failure", "box_VehicleMonitor_v3_4.Disabled", "Stopped", l0, self)
  self:Stopped()
end
function export:f_box_VehicleMonitor_v3_4_Enabled()
  local l0
  self = self._graph
  l0 = self.box_VehicleMonitor_v3_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Vehicle.domino|@Vehicle Failure|59742861", "59742861", "Vehicle Failure", "box_VehicleMonitor_v3_4.Enabled", "Started", l0, self)
  self:Started()
end
function export:f_box_VehicleMonitor_v3_4_IsFlipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VehicleMonitor_v3_2()
  l0 = self.box_VehicleMonitor_v3_4
  l1 = self.box_VehicleMonitor_v3_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Vehicle.domino|@Vehicle Failure|866175760", "866175760", "Vehicle Failure", "box_VehicleMonitor_v3_4.IsFlipped", "box_VehicleMonitor_v3_2.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_VehicleMonitor_v3_4_IsUnderwater()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_9()
  l0 = self.box_VehicleMonitor_v3_4
  l1 = self.box_OnceOnly_v3_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Vehicle.domino|@Vehicle Failure|2049194613", "2049194613", "Vehicle Failure", "box_VehicleMonitor_v3_4.IsUnderwater", "box_OnceOnly_v3_9.In", l0, l1)
  l1:In(1)
end
function export:f_box_VehicleMonitor_v3_4_IsUnFlipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VehicleMonitor_v3_2()
  l0 = self.box_VehicleMonitor_v3_4
  l1 = self.box_VehicleMonitor_v3_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Vehicle.domino|@Vehicle Failure|465724654", "465724654", "Vehicle Failure", "box_VehicleMonitor_v3_4.IsUnFlipped", "box_VehicleMonitor_v3_2.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_VehicleMonitor_v3_4_IsUnusable()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_9()
  l0 = self.box_VehicleMonitor_v3_4
  l1 = self.box_OnceOnly_v3_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Vehicle.domino|@Vehicle Failure|40404442", "40404442", "Vehicle Failure", "box_VehicleMonitor_v3_4.IsUnusable", "box_OnceOnly_v3_9.In", l0, l1)
  l1:In(0)
end
function export:f_box_VehicleMonitor_v3_4_Unloaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_13"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Vehicle.domino|@Vehicle Failure|654483645"
  l0.Out = self.f_box_Simple_Node_13_Out
  l0 = self.box_VehicleMonitor_v3_4
  l1 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Vehicle.domino|@Vehicle Failure|1325738511", "1325738511", "Vehicle Failure", "box_VehicleMonitor_v3_4.Unloaded", "box_Simple_Node_13.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_10_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Vehicle.domino|@Vehicle Failure|1870107058", "1870107058", "Vehicle Failure", "box_Ordered_Output_10.Out", "Fail", clone, self)
  self:Fail()
end
function export:f_box_Ordered_Output_10_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionController_v4_11
  l0.EndReason = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S15.S15M010",
    item = "MissionFail",
    id = "693187"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Vehicle.domino|@Vehicle Failure|254976838", "254976838", "Vehicle Failure", "box_Ordered_Output_10.Out", "box_MissionController_v4_11.Fail", clone, l0)
  l0:Fail()
end
function export:OnEnter_box_VehicleMonitor_v3_2()
  local l0
  l0 = self.box_VehicleMonitor_v3_2
  l0.Vehicle = self.VehicleEntity
  l0.CheckNow = 1
end
function export:OnEnter_box_OnceOnly_v3_9()
end
function export:OnEnter_box_VehicleMonitor_v3_4()
  local l0
  l0 = self.box_VehicleMonitor_v3_4
  l0.Vehicle = self.VehicleEntity
end
function export:Started()
end
function export:Stopped()
end
function export:Fail()
end
_compilerVersion = 4
