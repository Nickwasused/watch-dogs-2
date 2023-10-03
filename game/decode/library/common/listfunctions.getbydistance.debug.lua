export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/CompareFloats_v2.lua")
  cbox:RegisterBox("Domino/System/CompareIntegers_v2.lua")
  cbox:RegisterBox("Domino/System/GetPlayerID.lua")
  cbox:RegisterBox("Domino/System/GetDistance.lua")
  cbox:RegisterBox("Domino/System/IntegerArithmetics.lua")
  cbox:RegisterBox("Domino/System/Lists/ListLength.lua")
  cbox:RegisterBox("Domino/System/Lists/ListReader.lua")
  cbox:RegisterBox("Domino/System/SetEntity.lua")
  cbox:RegisterBox("Domino/System/Lists/SetList.lua")
  cbox:RegisterBox("Domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/SetFloat_v2.lua")
  cbox:RegisterBox("Domino/System/SetInteger_v2.lua")
  cbox:RegisterBox("Domino/System/SimpleNode.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
end
function export:Init(cbox)
  local l0
  self._name = "GetByDistance"
  self._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@GetByDistance"
  self.Done = DummyFunction
  self.Listpool = {}
  self.LookForNearest = 0
  self.CurrentMaxDistance = 0
  self.Index = 0
  self.TestID = nil
  self.CurrentID = nil
  self.RefIDVAR = nil
  self.TestDist = 0
  self.box_SetBoolean_v2_1 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_1
  l0._graph = self
  l0._name = "box_SetBoolean_v2_1"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@GetByDistance|1578200551"
  l0.Out = self.f_box_SetBoolean_v2_1_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_1_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_1_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_1_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_1_SetFromBool
  self.box_ListReader_9 = cbox:CreateBox("Domino/System/Lists/ListReader.lua")
  l0 = self.box_ListReader_9
  l0._graph = self
  l0._name = "box_ListReader_9"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@GetByDistance|1788553514"
  l0.Out = self.f_box_ListReader_9_Out
  l0.EndOfList = self.f_box_ListReader_9_EndOfList
  self.box_GetDistance_10 = cbox:CreateBox("Domino/System/GetDistance.lua")
  l0 = self.box_GetDistance_10
  l0._graph = self
  l0._name = "box_GetDistance_10"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@GetByDistance|1900622552"
  l0.Out = self.f_box_GetDistance_10_Out
  l0.OutViaRoad = self.f_box_GetDistance_10_OutViaRoad
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:GetFurthest()
  local l0
  self:OnEnter_box_SetBoolean_v2_1()
  l0 = self.box_SetBoolean_v2_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@GetByDistance|1372563494", "1372563494", "GetByDistance", "GetFurthest", "box_SetBoolean_v2_1.False", self, l0)
  l0:False()
end
function export:GetNearest()
  local l0
  self:OnEnter_box_SetBoolean_v2_1()
  l0 = self.box_SetBoolean_v2_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@GetByDistance|2038843933", "2038843933", "GetByDistance", "GetNearest", "box_SetBoolean_v2_1.True", self, l0)
  l0:True()
end
function export:f_box_Compare_Floats_v2_14_A_gt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareFloats_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SetFloat_v2_18()
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@GetByDistance|1970527373", "1970527373", "GetByDistance", "box_Compare_Floats_v2_14.A_gt_B", "box_SetFloat_v2_18.FromFloat", clone, l0)
  l0:FromFloat()
end
function export:f_box_Compare_Floats_v2_14_A_le_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareFloats_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Integer_Arithmetics_6()
  l0 = Boxes[PathID("Domino/System/IntegerArithmetics.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@GetByDistance|379311259", "379311259", "GetByDistance", "box_Compare_Floats_v2_14.A_le_B", "box_Integer_Arithmetics_6.Add", clone, l0)
  l0:Add()
end
function export:f_box_Get_Player_ID_12_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.RefIDVAR = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Set_List_2()
  l0 = Boxes[PathID("Domino/System/Lists/SetList.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@GetByDistance|9399573", "9399573", "GetByDistance", "box_Get_Player_ID_12.Out", "box_Set_List_2.FromList", clone, l0)
  l0:FromList()
end
function export:f_box_ListLength_4_Empty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/ListLength.lua")]
  self._sld_Length_box_ListLength_4 = l0.Length
end
function export:f_box_ListLength_4_NotEmpty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/ListLength.lua")]
  self._sld_Length_box_ListLength_4 = l0.Length
end
function export:f_box_ListLength_4_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/ListLength.lua")]
  self._sld_Length_box_ListLength_4 = l0.Length
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareIntegers_v2.lua")]
  l0.A = self._sld_Length_box_ListLength_4
  l0.B = self.Index
  l0._graph = self
  l0._name = "box_Compare_Integers_v2_7"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@GetByDistance|452158434"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_7_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = DummyFunction
  l0.A_ge_B = self.f_box_Compare_Integers_v2_7_A_ge_B
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@GetByDistance|1195113620", "1195113620", "GetByDistance", "box_ListLength_4.Out", "box_Compare_Integers_v2_7.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Integers_v2_7_A_ge_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListReader_9
  l0.Input = self.Listpool
  l0.Index = self.Index
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@GetByDistance|704168661", "704168661", "GetByDistance", "box_Compare_Integers_v2_7.A_ge_B", "box_ListReader_9.Read", clone, l0)
  l0:Read()
end
function export:f_box_Compare_Integers_v2_7_A_lt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_8"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@GetByDistance|820815777"
  l0.Out = self.f_box_Simple_Node_8_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@GetByDistance|97807874", "97807874", "GetByDistance", "box_Compare_Integers_v2_7.A_lt_B", "box_Simple_Node_8.In", clone, l0)
  l0:In()
end
function export:f_box_SetFloat_v2_18_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  self.CurrentMaxDistance = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = self.TestID
  l0._graph = self
  l0._name = "box_Set_Entity_19"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@GetByDistance|728359755"
  l0.Out = self.f_box_Set_Entity_19_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@GetByDistance|1561647827", "1561647827", "GetByDistance", "box_SetFloat_v2_18.Out", "box_Set_Entity_19.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_Set_Entity_19_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.CurrentID = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Integer_Arithmetics_6()
  l0 = Boxes[PathID("Domino/System/IntegerArithmetics.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@GetByDistance|2000483884", "2000483884", "GetByDistance", "box_Set_Entity_19.Out", "box_Integer_Arithmetics_6.Add", clone, l0)
  l0:Add()
end
function export:f_box_Simple_Node_8_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = self.CurrentID
  l0._graph = self
  l0._name = "box_Set_Entity_17"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@GetByDistance|1875961475"
  l0.Out = self.f_box_Set_Entity_17_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@GetByDistance|1513265639", "1513265639", "GetByDistance", "box_Simple_Node_8.Out", "box_Set_Entity_17.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_Integer_Arithmetics_6_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/IntegerArithmetics.lua")]
  self.Index = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/Lists/ListLength.lua")]
  l0.Input = self.Listpool
  l0._graph = self
  l0._name = "box_ListLength_4"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@GetByDistance|359519582"
  l0.Out = self.f_box_ListLength_4_Out
  l0.Empty = self.f_box_ListLength_4_Empty
  l0.NotEmpty = self.f_box_ListLength_4_NotEmpty
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@GetByDistance|414113111", "414113111", "GetByDistance", "box_Integer_Arithmetics_6.Out", "box_ListLength_4.GetLength", clone, l0)
  l0:GetLength()
end
function export:f_box_Compare_Floats_v2_16_A_ge_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareFloats_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Integer_Arithmetics_6()
  l0 = Boxes[PathID("Domino/System/IntegerArithmetics.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@GetByDistance|1626780941", "1626780941", "GetByDistance", "box_Compare_Floats_v2_16.A_ge_B", "box_Integer_Arithmetics_6.Add", clone, l0)
  l0:Add()
end
function export:f_box_Compare_Floats_v2_16_A_lt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareFloats_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SetFloat_v2_18()
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@GetByDistance|536844190", "536844190", "GetByDistance", "box_Compare_Floats_v2_16.A_lt_B", "box_SetFloat_v2_18.FromFloat", clone, l0)
  l0:FromFloat()
end
function export:f_box_SetInteger_v2_5_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetInteger_v2.lua")]
  self.Index = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Integer_Arithmetics_6()
  l0 = Boxes[PathID("Domino/System/IntegerArithmetics.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@GetByDistance|377867456", "377867456", "GetByDistance", "box_SetInteger_v2_5.Out", "box_Integer_Arithmetics_6.Add", clone, l0)
  l0:Add()
end
function export:f_box_SetFloat_v2_3_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  self.CurrentMaxDistance = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.RefID
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_11"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@GetByDistance|1637456242"
  l0.Is_nil = self.f_box_Test_if_Nil_11_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_11_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@GetByDistance|2009042679", "2009042679", "GetByDistance", "box_SetFloat_v2_3.Out", "box_Test_if_Nil_11.In", clone, l0)
  l0:In()
end
function export:f_box_Set_List_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/SetList.lua")]
  self.Listpool = l0.Target
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
  l0._name = "box_SetInteger_v2_5"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@GetByDistance|1133554075"
  l0.Out = self.f_box_SetInteger_v2_5_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@GetByDistance|1717650814", "1717650814", "GetByDistance", "box_Set_List_2.Out", "box_SetInteger_v2_5.FromInteger", clone, l0)
  l0:FromInteger()
end
function export:f_box_SetBoolean_v2_1_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_1
  self.LookForNearest = l0.Target
end
function export:f_box_SetBoolean_v2_1_SetFalse()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_1
  self.LookForNearest = l0.Target
  self:OnEnter_box_SetFloat_v2_3()
  l1 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@GetByDistance|1682633331", "1682633331", "GetByDistance", "box_SetBoolean_v2_1.SetFalse", "box_SetFloat_v2_3.FromInteger", l0, l1)
  l1:FromInteger()
end
function export:f_box_SetBoolean_v2_1_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_1
  self.LookForNearest = l0.Target
end
function export:f_box_SetBoolean_v2_1_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_1
  self.LookForNearest = l0.Target
  self:OnEnter_box_SetFloat_v2_3()
  l1 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@GetByDistance|1746451728", "1746451728", "GetByDistance", "box_SetBoolean_v2_1.SetTrue", "box_SetFloat_v2_3.FromFloat", l0, l1)
  l1:FromFloat()
end
function export:f_box_SetBoolean_v2_1_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_1
  self.LookForNearest = l0.Target
end
function export:f_box_Compare_Boolean_v2_15_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareFloats_v2.lua")]
  l0.A = self.CurrentMaxDistance
  l0.B = self.TestDist
  l0.Tolerance = nil
  l0._graph = self
  l0._name = "box_Compare_Floats_v2_16"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@GetByDistance|1102657598"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Floats_v2_16_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = DummyFunction
  l0.A_ge_B = self.f_box_Compare_Floats_v2_16_A_ge_B
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@GetByDistance|901994968", "901994968", "GetByDistance", "box_Compare_Boolean_v2_15.A_is_False", "box_Compare_Floats_v2_16.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_15_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareFloats_v2.lua")]
  l0.A = self.CurrentMaxDistance
  l0.B = self.TestDist
  l0.Tolerance = nil
  l0._graph = self
  l0._name = "box_Compare_Floats_v2_14"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@GetByDistance|86865310"
  l0.Out = DummyFunction
  l0.A_lt_B = DummyFunction
  l0.A_le_B = self.f_box_Compare_Floats_v2_14_A_le_B
  l0.A_eq_B = DummyFunction
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Floats_v2_14_A_gt_B
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@GetByDistance|1153085119", "1153085119", "GetByDistance", "box_Compare_Boolean_v2_15.A_is_True", "box_Compare_Floats_v2_14.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_11_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_12"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@GetByDistance|235518439"
  l0.Out = self.f_box_Get_Player_ID_12_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@GetByDistance|1308622292", "1308622292", "GetByDistance", "box_Test_if_Nil_11.Is_nil", "box_Get_Player_ID_12.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_11_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = self.RefID
  l0._graph = self
  l0._name = "box_Set_Entity_13"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@GetByDistance|1925533463"
  l0.Out = self.f_box_Set_Entity_13_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@GetByDistance|161751188", "161751188", "GetByDistance", "box_Test_if_Nil_11.Is_not_nil", "box_Set_Entity_13.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_ListReader_9_EndOfList()
  local l0
  self = self._graph
  l0 = self.box_ListReader_9
  self.TestID = l0.Data
end
function export:f_box_ListReader_9_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListReader_9
  self.TestID = l0.Data
  l0 = self.box_GetDistance_10
  l0.Entity1 = self.TestID
  l0.Entity2 = self.RefIDVAR
  l0 = self.box_ListReader_9
  l1 = self.box_GetDistance_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@GetByDistance|1428704800", "1428704800", "GetByDistance", "box_ListReader_9.Out", "box_GetDistance_10.Distance2D", l0, l1)
  l1:Distance2D()
end
function export:f_box_Set_Entity_17_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.Entity = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@GetByDistance|2066882140", "2066882140", "GetByDistance", "box_Set_Entity_17.Out", "Done", clone, self)
  self:Done()
end
function export:f_box_GetDistance_10_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_GetDistance_10
  self.TestDist = l0.Distance
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.LookForNearest
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_15"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@GetByDistance|1587224811"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_15_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_15_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_GetDistance_10
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@GetByDistance|886547960", "886547960", "GetByDistance", "box_GetDistance_10.Out", "box_Compare_Boolean_v2_15.In", l0, l1)
  l1:In()
end
function export:f_box_GetDistance_10_OutViaRoad()
  local l0
  self = self._graph
  l0 = self.box_GetDistance_10
  self.TestDist = l0.Distance
end
function export:f_box_Set_Entity_13_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.RefIDVAR = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Set_List_2()
  l0 = Boxes[PathID("Domino/System/Lists/SetList.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@GetByDistance|1339843945", "1339843945", "GetByDistance", "box_Set_Entity_13.Out", "box_Set_List_2.FromList", clone, l0)
  l0:FromList()
end
function export:OnEnter_box_SetFloat_v2_18()
  local l0
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  l0.Float = self.TestDist
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0._name = "box_SetFloat_v2_18"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@GetByDistance|495684482"
  l0.Out = self.f_box_SetFloat_v2_18_Out
end
function export:OnEnter_box_Integer_Arithmetics_6()
  local l0
  l0 = Boxes[PathID("Domino/System/IntegerArithmetics.lua")]
  l0.A = 1
  l0.B = self.Index
  l0._graph = self
  l0._name = "box_Integer_Arithmetics_6"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@GetByDistance|875023756"
  l0.Out = self.f_box_Integer_Arithmetics_6_Out
end
function export:OnEnter_box_SetFloat_v2_3()
  local l0
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  l0.Float = 1.0E10
  l0.Integer = 0
  l0.String = nil
  l0._graph = self
  l0._name = "box_SetFloat_v2_3"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@GetByDistance|1279775666"
  l0.Out = self.f_box_SetFloat_v2_3_Out
end
function export:OnEnter_box_Set_List_2()
  local l0
  l0 = Boxes[PathID("Domino/System/Lists/SetList.lua")]
  l0.List = self.Entities
  l0._graph = self
  l0._name = "box_Set_List_2"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@GetByDistance|1349697916"
  l0.Out = self.f_box_Set_List_2_Out
end
function export:OnEnter_box_SetBoolean_v2_1()
end
function export:Done()
end
_compilerVersion = 4
