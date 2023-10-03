export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CompareFloats_v2.lua")
  cbox:RegisterBox("Domino/System/IntegerArithmetics.lua")
  cbox:RegisterBox("Domino/System/Lists/ListLength.lua")
  cbox:RegisterBox("Domino/System/Lists/ListReader.lua")
  cbox:RegisterBox("Domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("Domino/Library/common/ScriptFlowExtra.nOnly.debug.lua")
  cbox:RegisterBox("Domino/System/PawnHealthMonitor_v3.lua")
  cbox:RegisterBox("Domino/System/Lists/SetList.lua")
  cbox:RegisterBox("Domino/System/SetFloat_v2.lua")
  cbox:RegisterBox("Domino/System/SimpleNode.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
end
function export:Init(cbox)
  local l0
  self._name = "RemoveDeadNPCs"
  self._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDeadNPCs"
  self.Filtered = DummyFunction
  self.Empty = DummyFunction
  self.Size = 0
  self.NPC = nil
  self.Current = {}
  self.HealthThreshold = 0
  self.box_nOnly_3 = cbox:CreateBox("Domino/Library/common/ScriptFlowExtra.nOnly.debug.lua")
  l0 = self.box_nOnly_3
  l0._graph = self
  l0._name = "box_nOnly_3"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDeadNPCs|553465314"
  l0.Out = self.f_box_nOnly_3_Out
  l0.Overflow = self.f_box_nOnly_3_Overflow
  l0.WasReset = self.f_box_nOnly_3_WasReset
  self.box_ListReader_1 = cbox:CreateBox("Domino/System/Lists/ListReader.lua")
  l0 = self.box_ListReader_1
  l0._graph = self
  l0._name = "box_ListReader_1"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDeadNPCs|675931591"
  l0.Out = self.f_box_ListReader_1_Out
  l0.EndOfList = self.f_box_ListReader_1_EndOfList
  self.box_PawnHealthMonitor_v3_7 = cbox:CreateBox("Domino/System/PawnHealthMonitor_v3.lua")
  l0 = self.box_PawnHealthMonitor_v3_7
  l0._graph = self
  l0._name = "box_PawnHealthMonitor_v3_7"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDeadNPCs|1167315844"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Damaged = DummyFunction
  l0.Killed = DummyFunction
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = self.f_box_PawnHealthMonitor_v3_7_HealthChecked
  self.box_ListWriter_9 = cbox:CreateBox("Domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_9
  l0._graph = self
  l0._name = "box_ListWriter_9"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDeadNPCs|1395270693"
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_box_ListWriter_9_Added
  l0.Removed = self.f_box_ListWriter_9_Removed
  l0.Out = self.f_box_ListWriter_9_Out
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:FilterDead()
  local l0
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  l0.Float = 0
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0._name = "box_SetFloat_v2_13"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDeadNPCs|1644211188"
  l0.Out = self.f_box_SetFloat_v2_13_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDeadNPCs|1271516923", "1271516923", "RemoveDeadNPCs", "FilterDead", "box_SetFloat_v2_13.FromFloat", self, l0)
  l0:FromFloat()
end
function export:FilterDown()
  local l0
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  l0.Float = 0.0125
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0._name = "box_SetFloat_v2_15"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDeadNPCs|1951948410"
  l0.Out = self.f_box_SetFloat_v2_15_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDeadNPCs|642273129", "642273129", "RemoveDeadNPCs", "FilterDown", "box_SetFloat_v2_15.FromFloat", self, l0)
  l0:FromFloat()
end
function export:f_box_Test_if_Nil_16_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Simple_Node_6()
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDeadNPCs|1134936488", "1134936488", "RemoveDeadNPCs", "box_Test_if_Nil_16.Is_nil", "box_Simple_Node_6.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_16_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/Lists/SetList.lua")]
  l0.List = self.NPCList
  l0._graph = self
  l0._name = "box_Set_List_2"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDeadNPCs|944061529"
  l0.Out = self.f_box_Set_List_2_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDeadNPCs|470704847", "470704847", "RemoveDeadNPCs", "box_Test_if_Nil_16.Is_not_nil", "box_Set_List_2.FromList", clone, l0)
  l0:FromList()
end
function export:f_box_nOnly_3_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_ListReader_1()
  l0 = self.box_nOnly_3
  l1 = self.box_ListReader_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDeadNPCs|1717365406", "1717365406", "RemoveDeadNPCs", "box_nOnly_3.Out", "box_ListReader_1.Read", l0, l1)
  l1:Read()
end
function export:f_box_nOnly_3_Overflow()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/ListLength.lua")]
  l0.Input = self.Current
  l0._graph = self
  l0._name = "box_ListLength_11"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDeadNPCs|922697667"
  l0.Out = DummyFunction
  l0.Empty = self.f_box_ListLength_11_Empty
  l0.NotEmpty = self.f_box_ListLength_11_NotEmpty
  l0 = self.box_nOnly_3
  l1 = Boxes[PathID("Domino/System/Lists/ListLength.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDeadNPCs|1284393163", "1284393163", "RemoveDeadNPCs", "box_nOnly_3.Overflow", "box_ListLength_11.GetLength", l0, l1)
  l1:GetLength()
end
function export:f_box_nOnly_3_WasReset()
  local l0, l1
  self = self._graph
  self:OnEnter_box_ListReader_1()
  l0 = self.box_nOnly_3
  l1 = self.box_ListReader_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDeadNPCs|1807458253", "1807458253", "RemoveDeadNPCs", "box_nOnly_3.WasReset", "box_ListReader_1.ResetRead", l0, l1)
  l1:ResetRead()
end
function export:f_box_ListReader_1_EndOfList()
  local l0
  self = self._graph
  l0 = self.box_ListReader_1
  self.NPC = l0.Data
end
function export:f_box_ListReader_1_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListReader_1
  self.NPC = l0.Data
  l0 = self.box_PawnHealthMonitor_v3_7
  l0.Pawn = self.NPC
  l0.CheckNow = 1
  l0 = self.box_ListReader_1
  l1 = self.box_PawnHealthMonitor_v3_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDeadNPCs|1278479474", "1278479474", "RemoveDeadNPCs", "box_ListReader_1.Out", "box_PawnHealthMonitor_v3_7.CheckHealth", l0, l1)
  l1:CheckHealth()
end
function export:f_box_Integer_Arithmetics_14_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/IntegerArithmetics.lua")]
  self.Size = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_nOnly_3()
  l0 = self.box_nOnly_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDeadNPCs|1207177260", "1207177260", "RemoveDeadNPCs", "box_Integer_Arithmetics_14.Out", "box_nOnly_3.Reset", clone, l0)
  l0:Reset()
end
function export:f_box_ListLength_11_Empty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/ListLength.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_5"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDeadNPCs|1010008046"
  l0.Out = self.f_box_Simple_Node_5_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDeadNPCs|157803609", "157803609", "RemoveDeadNPCs", "box_ListLength_11.Empty", "box_Simple_Node_5.In", clone, l0)
  l0:In()
end
function export:f_box_ListLength_11_NotEmpty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/ListLength.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_12"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDeadNPCs|1560347111"
  l0.Out = self.f_box_Simple_Node_12_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDeadNPCs|1228790956", "1228790956", "RemoveDeadNPCs", "box_ListLength_11.NotEmpty", "box_Simple_Node_12.In", clone, l0)
  l0:In()
end
function export:f_box_Set_List_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/SetList.lua")]
  self.Current = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/Lists/ListLength.lua")]
  l0.Input = self.Current
  l0._graph = self
  l0._name = "box_ListLength_4"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDeadNPCs|1438762887"
  l0.Out = self.f_box_ListLength_4_Out
  l0.Empty = self.f_box_ListLength_4_Empty
  l0.NotEmpty = self.f_box_ListLength_4_NotEmpty
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDeadNPCs|235750128", "235750128", "RemoveDeadNPCs", "box_Set_List_2.Out", "box_ListLength_4.GetLength", clone, l0)
  l0:GetLength()
end
function export:f_box_Simple_Node_5_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDeadNPCs|512082996", "512082996", "RemoveDeadNPCs", "box_Simple_Node_5.Out", "Empty", clone, self)
  self:Empty()
end
function export:f_box_PawnHealthMonitor_v3_7_HealthChecked()
  local l0, l1
  self = self._graph
  l0 = self.box_PawnHealthMonitor_v3_7
  l1 = Boxes[PathID("Domino/System/CompareFloats_v2.lua")]
  l1.A = l0.Health
  l1.B = self.HealthThreshold
  l1.Tolerance = nil
  l1._graph = self
  l1._name = "box_Compare_Floats_v2_8"
  l1._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDeadNPCs|1798930147"
  l1.Out = DummyFunction
  l1.A_lt_B = DummyFunction
  l1.A_le_B = self.f_box_Compare_Floats_v2_8_A_le_B
  l1.A_eq_B = DummyFunction
  l1.A_ge_B = DummyFunction
  l1.A_gt_B = self.f_box_Compare_Floats_v2_8_A_gt_B
  l1.A_ne_B = DummyFunction
  l0 = self.box_PawnHealthMonitor_v3_7
  l1 = Boxes[PathID("Domino/System/CompareFloats_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDeadNPCs|114600642", "114600642", "RemoveDeadNPCs", "box_PawnHealthMonitor_v3_7.HealthChecked", "box_Compare_Floats_v2_8.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_6_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDeadNPCs|2070405118", "2070405118", "RemoveDeadNPCs", "box_Simple_Node_6.Out", "Empty", clone, self)
  self:Empty()
end
function export:f_box_ListWriter_9_Added()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_9
  self.Current = l0.Target
end
function export:f_box_ListWriter_9_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_9
  self.Current = l0.Target
end
function export:f_box_ListWriter_9_Removed()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_9
  self.Current = l0.Target
  self:OnEnter_box_nOnly_3()
  l1 = self.box_nOnly_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDeadNPCs|2030581021", "2030581021", "RemoveDeadNPCs", "box_ListWriter_9.Removed", "box_nOnly_3.In", l0, l1)
  l1:In()
end
function export:f_box_ListLength_4_Empty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/ListLength.lua")]
  self.Size = l0.Length
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Simple_Node_6()
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDeadNPCs|1429580915", "1429580915", "RemoveDeadNPCs", "box_ListLength_4.Empty", "box_Simple_Node_6.In", clone, l0)
  l0:In()
end
function export:f_box_ListLength_4_NotEmpty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/ListLength.lua")]
  self.Size = l0.Length
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/IntegerArithmetics.lua")]
  l0.A = self.Size
  l0.B = 1
  l0._graph = self
  l0._name = "box_Integer_Arithmetics_14"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDeadNPCs|788288486"
  l0.Out = self.f_box_Integer_Arithmetics_14_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDeadNPCs|259643270", "259643270", "RemoveDeadNPCs", "box_ListLength_4.NotEmpty", "box_Integer_Arithmetics_14.Sub", clone, l0)
  l0:Sub()
end
function export:f_box_ListLength_4_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/ListLength.lua")]
  self.Size = l0.Length
end
function export:f_box_Simple_Node_12_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/Lists/SetList.lua")]
  l0.List = self.Current
  l0._graph = self
  l0._name = "box_Set_List_10"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDeadNPCs|2088043531"
  l0.Out = self.f_box_Set_List_10_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDeadNPCs|1037335765", "1037335765", "RemoveDeadNPCs", "box_Simple_Node_12.Out", "box_Set_List_10.FromList", clone, l0)
  l0:FromList()
end
function export:f_box_SetFloat_v2_13_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  self.HealthThreshold = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Test_if_Nil_16()
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDeadNPCs|1253614973", "1253614973", "RemoveDeadNPCs", "box_SetFloat_v2_13.Out", "box_Test_if_Nil_16.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Floats_v2_8_A_gt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareFloats_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_nOnly_3()
  l0 = self.box_nOnly_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDeadNPCs|388402860", "388402860", "RemoveDeadNPCs", "box_Compare_Floats_v2_8.A_gt_B", "box_nOnly_3.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Floats_v2_8_A_le_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareFloats_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_9
  l0.Input = self.Current
  l0.Data[0] = self.NPC
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDeadNPCs|2084978460", "2084978460", "RemoveDeadNPCs", "box_Compare_Floats_v2_8.A_le_B", "box_ListWriter_9.Remove", clone, l0)
  l0:Remove()
end
function export:f_box_SetFloat_v2_15_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  self.HealthThreshold = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Test_if_Nil_16()
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDeadNPCs|989401209", "989401209", "RemoveDeadNPCs", "box_SetFloat_v2_15.Out", "box_Test_if_Nil_16.In", clone, l0)
  l0:In()
end
function export:f_box_Set_List_10_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/SetList.lua")]
  self.UpdatedList = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDeadNPCs|406509991", "406509991", "RemoveDeadNPCs", "box_Set_List_10.Out", "Filtered", clone, self)
  self:Filtered()
end
function export:OnEnter_box_Test_if_Nil_16()
  local l0
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = nil
  l0.List = self.NPCList
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_16"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDeadNPCs|164529586"
  l0.Is_nil = self.f_box_Test_if_Nil_16_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_16_Is_not_nil
end
function export:OnEnter_box_nOnly_3()
  local l0
  l0 = self.box_nOnly_3
  l0.Reps = self.Size
end
function export:OnEnter_box_ListReader_1()
  local l0
  l0 = self.box_ListReader_1
  l0.Input = self.NPCList
end
function export:OnEnter_box_Simple_Node_6()
  local l0
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_6"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDeadNPCs|1279138917"
  l0.Out = self.f_box_Simple_Node_6_Out
end
function export:Filtered()
end
function export:Empty()
end
_compilerVersion = 4
