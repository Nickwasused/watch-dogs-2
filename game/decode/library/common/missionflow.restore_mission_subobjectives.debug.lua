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
  self._name = "Restore Mission SubObjectives"
  self._elementPathId = "DocumentContainer|..\\Library\\common\\MissionFlow.domino|@Restore Mission SubObjectives"
  self.Restored = DummyFunction
  self.index = 0
  self.box_MultipleOR_8 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_8
  l0._graph = self
  l0._name = "box_MultipleOR_8"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionFlow.domino|@Restore Mission SubObjectives|947802562"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_8_Out
  self.box_MissionMessageController_v3_12 = cbox:CreateBox("Domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_12
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_12"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionFlow.domino|@Restore Mission SubObjectives|999885254"
  l0.Out = self.f_box_MissionMessageController_v3_12_Out
  l0.MessageCompleted = DummyFunction
  self.box_MultipleOR_7 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_7
  l0._graph = self
  l0._name = "box_MultipleOR_7"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionFlow.domino|@Restore Mission SubObjectives|1446622814"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_7_Out
  self.box_MissionMessageController_v3_6 = cbox:CreateBox("Domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_6
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_6"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionFlow.domino|@Restore Mission SubObjectives|1828071964"
  l0.Out = self.f_box_MissionMessageController_v3_6_Out
  l0.MessageCompleted = DummyFunction
  self.box_MultipleOR_11 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_11
  l0._graph = self
  l0._name = "box_MultipleOR_11"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionFlow.domino|@Restore Mission SubObjectives|1853001056"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_11_Out
  self.box_MissionMessageController_v3_1 = cbox:CreateBox("Domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_1
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_1"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionFlow.domino|@Restore Mission SubObjectives|2010014572"
  l0.Out = self.f_box_MissionMessageController_v3_1_Out
  l0.MessageCompleted = DummyFunction
  self.box_MultipleOR_15 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_15
  l0._graph = self
  l0._name = "box_MultipleOR_15"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionFlow.domino|@Restore Mission SubObjectives|2071070842"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_15_Out
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
  l0 = self.box_MissionMessageController_v3_1
  l0.Objective = self.Objective
  l0.ObjectiveSub1 = self.ObjectiveSub1
  l0.IncrementalObjectiveTotalSub1 = self.IncrementalObjectiveTotalSub1
  l0.ObjectiveSub2 = self.ObjectiveSub2
  l0.IncrementalObjectiveTotalSub2 = self.IncrementalObjectiveTotalSub2
  l0.ObjectiveSub3 = self.ObjectiveSub3
  l0.IncrementalObjectiveTotalSub3 = self.IncrementalObjectiveTotalSub3
  l0.ShowPreviousObjectiveComplete = 0
  l0.HasObjectiveMarker = self.AutoHideObjective
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionFlow.domino|@Restore Mission SubObjectives|1260104027", "1260104027", "Restore Mission SubObjectives", "Restore", "box_MissionMessageController_v3_1.ShowNewObjective", self, l0)
  l0:ShowNewObjective()
end
function export:f_box_SetInteger_v2_3_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetInteger_v2.lua")]
  self.index = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_7()
  l0 = self.box_MultipleOR_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionFlow.domino|@Restore Mission SubObjectives|1371889265", "1371889265", "Restore Mission SubObjectives", "box_SetInteger_v2_3.Out", "box_MultipleOR_7.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Integer_Arithmetics_5_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/IntegerArithmetics.lua")]
  self.index = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_7()
  l0 = self.box_MultipleOR_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionFlow.domino|@Restore Mission SubObjectives|1846309724", "1846309724", "Restore Mission SubObjectives", "box_Integer_Arithmetics_5.Out", "box_MultipleOR_7.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Test_if_Nil_10_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_15()
  l0 = self.box_MultipleOR_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionFlow.domino|@Restore Mission SubObjectives|694115123", "694115123", "Restore Mission SubObjectives", "box_Test_if_Nil_10.Is_nil", "box_MultipleOR_15.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Test_if_Nil_10_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SetInteger_v2.lua")]
  l0.Integer = 0
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0._name = "box_SetInteger_v2_9"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionFlow.domino|@Restore Mission SubObjectives|1226482248"
  l0.Out = self.f_box_SetInteger_v2_9_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionFlow.domino|@Restore Mission SubObjectives|944416977", "944416977", "Restore Mission SubObjectives", "box_Test_if_Nil_10.Is_not_nil", "box_SetInteger_v2_9.FromInteger", clone, l0)
  l0:FromInteger()
end
function export:f_box_Test_if_Nil_2_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_8()
  l0 = self.box_MultipleOR_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionFlow.domino|@Restore Mission SubObjectives|1718330490", "1718330490", "Restore Mission SubObjectives", "box_Test_if_Nil_2.Is_nil", "box_MultipleOR_8.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Test_if_Nil_2_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SetInteger_v2.lua")]
  l0.Integer = 0
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0._name = "box_SetInteger_v2_3"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionFlow.domino|@Restore Mission SubObjectives|33089634"
  l0.Out = self.f_box_SetInteger_v2_3_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionFlow.domino|@Restore Mission SubObjectives|1734902755", "1734902755", "Restore Mission SubObjectives", "box_Test_if_Nil_2.Is_not_nil", "box_SetInteger_v2_3.FromInteger", clone, l0)
  l0:FromInteger()
end
function export:f_box_Compare_Integers_v2_14_A_ge_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_15()
  l0 = self.box_MultipleOR_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionFlow.domino|@Restore Mission SubObjectives|268659143", "268659143", "Restore Mission SubObjectives", "box_Compare_Integers_v2_14.A_ge_B", "box_MultipleOR_15.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Compare_Integers_v2_14_A_lt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_12
  l0.ObjectiveSub2 = self.ObjectiveSub2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionFlow.domino|@Restore Mission SubObjectives|1143328273", "1143328273", "Restore Mission SubObjectives", "box_Compare_Integers_v2_14.A_lt_B", "box_MissionMessageController_v3_12.IncrementObjective", clone, l0)
  l0:IncrementObjective()
end
function export:f_box_MultipleOR_8_Out()
  local l0, l1
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
  l0._name = "box_Test_if_Nil_10"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionFlow.domino|@Restore Mission SubObjectives|445367343"
  l0.Is_nil = self.f_box_Test_if_Nil_10_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_10_Is_not_nil
  l0 = self.box_MultipleOR_8
  l1 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionFlow.domino|@Restore Mission SubObjectives|61500480", "61500480", "Restore Mission SubObjectives", "box_MultipleOR_8.Out", "box_Test_if_Nil_10.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_v3_12_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/IntegerArithmetics.lua")]
  l0.A = self.index
  l0.B = 1
  l0._graph = self
  l0._name = "box_Integer_Arithmetics_13"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionFlow.domino|@Restore Mission SubObjectives|1174079004"
  l0.Out = self.f_box_Integer_Arithmetics_13_Out
  l0 = self.box_MissionMessageController_v3_12
  l1 = Boxes[PathID("Domino/System/IntegerArithmetics.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionFlow.domino|@Restore Mission SubObjectives|305486431", "305486431", "Restore Mission SubObjectives", "box_MissionMessageController_v3_12.Out", "box_Integer_Arithmetics_13.Add", l0, l1)
  l1:Add()
end
function export:f_box_Integer_Arithmetics_13_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/IntegerArithmetics.lua")]
  self.index = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_11()
  l0 = self.box_MultipleOR_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionFlow.domino|@Restore Mission SubObjectives|318527960", "318527960", "Restore Mission SubObjectives", "box_Integer_Arithmetics_13.Out", "box_MultipleOR_11.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Compare_Integers_v2_4_A_ge_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_8()
  l0 = self.box_MultipleOR_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionFlow.domino|@Restore Mission SubObjectives|1158355892", "1158355892", "Restore Mission SubObjectives", "box_Compare_Integers_v2_4.A_ge_B", "box_MultipleOR_8.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Compare_Integers_v2_4_A_lt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_6
  l0.ObjectiveSub1 = self.ObjectiveSub1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionFlow.domino|@Restore Mission SubObjectives|873921193", "873921193", "Restore Mission SubObjectives", "box_Compare_Integers_v2_4.A_lt_B", "box_MissionMessageController_v3_6.IncrementObjective", clone, l0)
  l0:IncrementObjective()
end
function export:f_box_SetInteger_v2_9_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetInteger_v2.lua")]
  self.index = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_11()
  l0 = self.box_MultipleOR_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionFlow.domino|@Restore Mission SubObjectives|1800681387", "1800681387", "Restore Mission SubObjectives", "box_SetInteger_v2_9.Out", "box_MultipleOR_11.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_MultipleOR_7_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareIntegers_v2.lua")]
  l0.A = self.index
  l0.B = self.IncrementalObjectiveTotalSub1
  l0._graph = self
  l0._name = "box_Compare_Integers_v2_4"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionFlow.domino|@Restore Mission SubObjectives|1198315242"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_4_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = DummyFunction
  l0.A_ge_B = self.f_box_Compare_Integers_v2_4_A_ge_B
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  l0 = self.box_MultipleOR_7
  l1 = Boxes[PathID("Domino/System/CompareIntegers_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionFlow.domino|@Restore Mission SubObjectives|520485226", "520485226", "Restore Mission SubObjectives", "box_MultipleOR_7.Out", "box_Compare_Integers_v2_4.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_v3_6_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/IntegerArithmetics.lua")]
  l0.A = self.index
  l0.B = 1
  l0._graph = self
  l0._name = "box_Integer_Arithmetics_5"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionFlow.domino|@Restore Mission SubObjectives|67343700"
  l0.Out = self.f_box_Integer_Arithmetics_5_Out
  l0 = self.box_MissionMessageController_v3_6
  l1 = Boxes[PathID("Domino/System/IntegerArithmetics.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionFlow.domino|@Restore Mission SubObjectives|1457423032", "1457423032", "Restore Mission SubObjectives", "box_MissionMessageController_v3_6.Out", "box_Integer_Arithmetics_5.Add", l0, l1)
  l1:Add()
end
function export:f_box_MultipleOR_11_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareIntegers_v2.lua")]
  l0.A = self.index
  l0.B = self.IncrementalObjectiveTotalSub2
  l0._graph = self
  l0._name = "box_Compare_Integers_v2_14"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionFlow.domino|@Restore Mission SubObjectives|849731272"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_14_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = DummyFunction
  l0.A_ge_B = self.f_box_Compare_Integers_v2_14_A_ge_B
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  l0 = self.box_MultipleOR_11
  l1 = Boxes[PathID("Domino/System/CompareIntegers_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionFlow.domino|@Restore Mission SubObjectives|109275727", "109275727", "Restore Mission SubObjectives", "box_MultipleOR_11.Out", "box_Compare_Integers_v2_14.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_v3_1_Out()
  local l0, l1
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
  l0._name = "box_Test_if_Nil_2"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionFlow.domino|@Restore Mission SubObjectives|501490022"
  l0.Is_nil = self.f_box_Test_if_Nil_2_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_2_Is_not_nil
  l0 = self.box_MissionMessageController_v3_1
  l1 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionFlow.domino|@Restore Mission SubObjectives|1465306675", "1465306675", "Restore Mission SubObjectives", "box_MissionMessageController_v3_1.Out", "box_Test_if_Nil_2.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_15_Out()
  local l0
  self = self._graph
  l0 = self.box_MultipleOR_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionFlow.domino|@Restore Mission SubObjectives|604983633", "604983633", "Restore Mission SubObjectives", "box_MultipleOR_15.Out", "Restored", l0, self)
  self:Restored()
end
function export:OnEnter_box_MultipleOR_8()
end
function export:OnEnter_box_MultipleOR_7()
end
function export:OnEnter_box_MultipleOR_11()
end
function export:OnEnter_box_MultipleOR_15()
end
function export:Restored()
end
_compilerVersion = 4
