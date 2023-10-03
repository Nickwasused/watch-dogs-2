export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CompareIntegers_v2.lua")
  cbox:RegisterBox("Domino/System/IntegerArithmetics.lua")
  cbox:RegisterBox("Domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/SetInteger_v2.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
end
function export:Init(cbox)
  local l0
  self.Restored = DummyFunction
  self.index = 0
  self[8] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[8]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_8_Out
  self[12] = cbox:CreateBox("Domino/System/MissionMessageController_v3.lua")
  l0 = self[12]
  l0._graph = self
  l0.Out = self.f_12_Out
  l0.MessageCompleted = DummyFunction
  self[7] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[7]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_7_Out
  self[6] = cbox:CreateBox("Domino/System/MissionMessageController_v3.lua")
  l0 = self[6]
  l0._graph = self
  l0.Out = self.f_6_Out
  l0.MessageCompleted = DummyFunction
  self[11] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[11]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_11_Out
  self[1] = cbox:CreateBox("Domino/System/MissionMessageController_v3.lua")
  l0 = self[1]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0.MessageCompleted = DummyFunction
  self[15] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[15]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_15_Out
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:Restore()
  local l0
  l0 = self[1]
  l0.Objective = self.Objective
  l0.ObjectiveSub1 = self.ObjectiveSub1
  l0.IncrementalObjectiveTotalSub1 = self.IncrementalObjectiveTotalSub1
  l0.ObjectiveSub2 = self.ObjectiveSub2
  l0.IncrementalObjectiveTotalSub2 = self.IncrementalObjectiveTotalSub2
  l0.ObjectiveSub3 = self.ObjectiveSub3
  l0.IncrementalObjectiveTotalSub3 = self.IncrementalObjectiveTotalSub3
  l0.ShowPreviousObjectiveComplete = 0
  l0.HasObjectiveMarker = self.AutoHideObjective
  l0:ShowNewObjective()
end
function export:f_3_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetInteger_v2.lua")]
  self.index = l0.Target
  l0 = self[7]
  l0:Input(0)
end
function export:f_5_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/IntegerArithmetics.lua")]
  self.index = l0.Target
  l0 = self[7]
  l0:Input(1)
end
function export:f_10_Is_nil()
  local l0
  self = self._graph
  l0 = self[15]
  l0:Input(0)
end
function export:f_10_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetInteger_v2.lua")]
  l0.Integer = 0
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0.Out = self.f_9_Out
  l0:FromInteger()
end
function export:f_2_Is_nil()
  local l0
  self = self._graph
  l0 = self[8]
  l0:Input(0)
end
function export:f_2_Is_not_nil()
  local l0
  self = self._graph
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
function export:f_14_A_ge_B()
  local l0
  self = self._graph
  l0 = self[15]
  l0:Input(1)
end
function export:f_14_A_lt_B()
  local l0
  self = self._graph
  l0 = self[12]
  l0.ObjectiveSub2 = self.ObjectiveSub2
  l0:IncrementObjective()
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = self.ObjectiveSub3
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_10_Is_nil
  l0.Is_not_nil = self.f_10_Is_not_nil
  l0:In()
end
function export:f_12_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/IntegerArithmetics.lua")]
  l0.A = self.index
  l0.B = 1
  l0._graph = self
  l0.Out = self.f_13_Out
  l0:Add()
end
function export:f_13_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/IntegerArithmetics.lua")]
  self.index = l0.Target
  l0 = self[11]
  l0:Input(1)
end
function export:f_4_A_ge_B()
  local l0
  self = self._graph
  l0 = self[8]
  l0:Input(1)
end
function export:f_4_A_lt_B()
  local l0
  self = self._graph
  l0 = self[6]
  l0.ObjectiveSub1 = self.ObjectiveSub1
  l0:IncrementObjective()
end
function export:f_9_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetInteger_v2.lua")]
  self.index = l0.Target
  l0 = self[11]
  l0:Input(0)
end
function export:f_7_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareIntegers_v2.lua")]
  l0.A = self.index
  l0.B = self.IncrementalObjectiveTotalSub1
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_4_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = DummyFunction
  l0.A_ge_B = self.f_4_A_ge_B
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  l0:In()
end
function export:f_6_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/IntegerArithmetics.lua")]
  l0.A = self.index
  l0.B = 1
  l0._graph = self
  l0.Out = self.f_5_Out
  l0:Add()
end
function export:f_11_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareIntegers_v2.lua")]
  l0.A = self.index
  l0.B = self.IncrementalObjectiveTotalSub2
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_14_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = DummyFunction
  l0.A_ge_B = self.f_14_A_ge_B
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  l0:In()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = self.ObjectiveSub2
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_2_Is_nil
  l0.Is_not_nil = self.f_2_Is_not_nil
  l0:In()
end
function export:f_15_Out()
  self = self._graph
  self:Restored()
end
function export:Restored()
end
_compilerVersion = 4
