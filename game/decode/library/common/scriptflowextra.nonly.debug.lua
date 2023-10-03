export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CompareIntegers_v2.lua")
  cbox:RegisterBox("Domino/System/IntegerArithmetics.lua")
  cbox:RegisterBox("Domino/System/SetInteger_v2.lua")
end
function export:Init(cbox)
  self._name = "nOnly"
  self._elementPathId = "DocumentContainer|..\\Library\\common\\ScriptFlowExtra.domino|@nOnly"
  self.Out = DummyFunction
  self.Overflow = DummyFunction
  self.WasReset = DummyFunction
  self.Counter = 0
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
  l0 = Boxes[PathID("Domino/System/IntegerArithmetics.lua")]
  l0.A = 1
  l0.B = self.Counter
  l0._graph = self
  l0._name = "box_Integer_Arithmetics_1"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ScriptFlowExtra.domino|@nOnly|571278307"
  l0.Out = self.f_box_Integer_Arithmetics_1_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ScriptFlowExtra.domino|@nOnly|1433186575", "1433186575", "nOnly", "In", "box_Integer_Arithmetics_1.Add", self, l0)
  l0:Add()
end
function export:Reset()
  local l0
  l0 = Boxes[PathID("Domino/System/SetInteger_v2.lua")]
  l0.Integer = 0
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0._name = "box_SetInteger_v2_3"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ScriptFlowExtra.domino|@nOnly|1711896667"
  l0.Out = self.f_box_SetInteger_v2_3_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ScriptFlowExtra.domino|@nOnly|2104163379", "2104163379", "nOnly", "Reset", "box_SetInteger_v2_3.FromInteger", self, l0)
  l0:FromInteger()
end
function export:f_box_Integer_Arithmetics_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/IntegerArithmetics.lua")]
  self.Counter = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareIntegers_v2.lua")]
  l0.A = self.Counter
  l0.B = self.Reps
  l0._graph = self
  l0._name = "box_Compare_Integers_v2_2"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ScriptFlowExtra.domino|@nOnly|767164473"
  l0.Out = DummyFunction
  l0.A_lt_B = DummyFunction
  l0.A_le_B = self.f_box_Compare_Integers_v2_2_A_le_B
  l0.A_eq_B = DummyFunction
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Integers_v2_2_A_gt_B
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ScriptFlowExtra.domino|@nOnly|98975774", "98975774", "nOnly", "box_Integer_Arithmetics_1.Out", "box_Compare_Integers_v2_2.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Integers_v2_2_A_gt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ScriptFlowExtra.domino|@nOnly|1589176302", "1589176302", "nOnly", "box_Compare_Integers_v2_2.A_gt_B", "Overflow", clone, self)
  self:Overflow()
end
function export:f_box_Compare_Integers_v2_2_A_le_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ScriptFlowExtra.domino|@nOnly|1864407972", "1864407972", "nOnly", "box_Compare_Integers_v2_2.A_le_B", "Out", clone, self)
  self:Out()
end
function export:f_box_SetInteger_v2_3_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetInteger_v2.lua")]
  self.Counter = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ScriptFlowExtra.domino|@nOnly|123687365", "123687365", "nOnly", "box_SetInteger_v2_3.Out", "WasReset", clone, self)
  self:WasReset()
end
function export:Out()
end
function export:Overflow()
end
function export:WasReset()
end
_compilerVersion = 4
