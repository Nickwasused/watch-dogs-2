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
  l0.Out = self.f_1_Out
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
  l0.Out = self.f_3_Out
  l0:FromInteger()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/IntegerArithmetics.lua")]
  self.Counter = l0.Target
  l0 = Boxes[PathID("Domino/System/CompareIntegers_v2.lua")]
  l0.A = self.Counter
  l0.B = self.Reps
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_lt_B = DummyFunction
  l0.A_le_B = self.f_2_A_le_B
  l0.A_eq_B = DummyFunction
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_2_A_gt_B
  l0.A_ne_B = DummyFunction
  l0:In()
end
function export:f_2_A_gt_B()
  self = self._graph
  self:Overflow()
end
function export:f_2_A_le_B()
  self = self._graph
  self:Out()
end
function export:f_3_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetInteger_v2.lua")]
  self.Counter = l0.Target
  self:WasReset()
end
function export:Out()
end
function export:Overflow()
end
function export:WasReset()
end
_compilerVersion = 4
