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
  cbox:RegisterBox("Domino/System/Lists/SetList.lua")
  cbox:RegisterBox("Domino/System/SetFloat_v2.lua")
  cbox:RegisterBox("Domino/System/SimpleNode.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
  cbox:RegisterBox("Domino/System/VehicleDamageHelper.lua")
end
function export:Init(cbox)
  local l0
  self._name = "RemoveDestroyedVehicles"
  self._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDestroyedVehicles"
  self.Filtered = DummyFunction
  self.Empty = DummyFunction
  self.HealthThreshold = 0
  self.Current = {}
  self.Size = 0
  self.Vehicle = nil
  self.box_nOnly_13 = cbox:CreateBox("Domino/Library/common/ScriptFlowExtra.nOnly.debug.lua")
  l0 = self.box_nOnly_13
  l0._graph = self
  l0._name = "box_nOnly_13"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDestroyedVehicles|641854057"
  l0.Out = self.f_box_nOnly_13_Out
  l0.Overflow = self.f_box_nOnly_13_Overflow
  l0.WasReset = self.f_box_nOnly_13_WasReset
  self.box_ListWriter_12 = cbox:CreateBox("Domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_12
  l0._graph = self
  l0._name = "box_ListWriter_12"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDestroyedVehicles|974011321"
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_box_ListWriter_12_Added
  l0.Removed = self.f_box_ListWriter_12_Removed
  l0.Out = self.f_box_ListWriter_12_Out
  self.box_ListReader_15 = cbox:CreateBox("Domino/System/Lists/ListReader.lua")
  l0 = self.box_ListReader_15
  l0._graph = self
  l0._name = "box_ListReader_15"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDestroyedVehicles|1360974043"
  l0.Out = self.f_box_ListReader_15_Out
  l0.EndOfList = self.f_box_ListReader_15_EndOfList
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:Filter()
  local l0
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  l0.Float = 0
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0._name = "box_SetFloat_v2_6"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDestroyedVehicles|659895018"
  l0.Out = self.f_box_SetFloat_v2_6_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDestroyedVehicles|573177255", "573177255", "RemoveDestroyedVehicles", "Filter", "box_SetFloat_v2_6.FromFloat", self, l0)
  l0:FromFloat()
end
function export:f_box_VehicleDamageHelper_2_GotHealth()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/VehicleDamageHelper.lua")]
  self._sld_Health_box_VehicleDamageHelper_2 = l0.Health
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareFloats_v2.lua")]
  l0.A = self._sld_Health_box_VehicleDamageHelper_2
  l0.B = self.HealthThreshold
  l0.Tolerance = nil
  l0._graph = self
  l0._name = "box_Compare_Floats_v2_4"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDestroyedVehicles|1822398270"
  l0.Out = DummyFunction
  l0.A_lt_B = DummyFunction
  l0.A_le_B = self.f_box_Compare_Floats_v2_4_A_le_B
  l0.A_eq_B = DummyFunction
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Floats_v2_4_A_gt_B
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDestroyedVehicles|1290538204", "1290538204", "RemoveDestroyedVehicles", "box_VehicleDamageHelper_2.GotHealth", "box_Compare_Floats_v2_4.In", clone, l0)
  l0:In()
end
function export:f_box_VehicleDamageHelper_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/VehicleDamageHelper.lua")]
  self._sld_Health_box_VehicleDamageHelper_2 = l0.Health
end
function export:f_box_nOnly_13_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_ListReader_15()
  l0 = self.box_nOnly_13
  l1 = self.box_ListReader_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDestroyedVehicles|1191555136", "1191555136", "RemoveDestroyedVehicles", "box_nOnly_13.Out", "box_ListReader_15.Read", l0, l1)
  l1:Read()
end
function export:f_box_nOnly_13_Overflow()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/ListLength.lua")]
  l0.Input = self.Current
  l0._graph = self
  l0._name = "box_ListLength_14"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDestroyedVehicles|1024649813"
  l0.Out = DummyFunction
  l0.Empty = self.f_box_ListLength_14_Empty
  l0.NotEmpty = self.f_box_ListLength_14_NotEmpty
  l0 = self.box_nOnly_13
  l1 = Boxes[PathID("Domino/System/Lists/ListLength.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDestroyedVehicles|163585414", "163585414", "RemoveDestroyedVehicles", "box_nOnly_13.Overflow", "box_ListLength_14.GetLength", l0, l1)
  l1:GetLength()
end
function export:f_box_nOnly_13_WasReset()
  local l0, l1
  self = self._graph
  self:OnEnter_box_ListReader_15()
  l0 = self.box_nOnly_13
  l1 = self.box_ListReader_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDestroyedVehicles|409948635", "409948635", "RemoveDestroyedVehicles", "box_nOnly_13.WasReset", "box_ListReader_15.ResetRead", l0, l1)
  l1:ResetRead()
end
function export:f_box_SetFloat_v2_6_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  self.HealthThreshold = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = nil
  l0.List = self.VehicleList
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_9"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDestroyedVehicles|1706953486"
  l0.Is_nil = self.f_box_Test_if_Nil_9_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_9_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDestroyedVehicles|1101035072", "1101035072", "RemoveDestroyedVehicles", "box_SetFloat_v2_6.Out", "box_Test_if_Nil_9.In", clone, l0)
  l0:In()
end
function export:f_box_ListWriter_12_Added()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_12
  self.Current = l0.Target
end
function export:f_box_ListWriter_12_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_12
  self.Current = l0.Target
end
function export:f_box_ListWriter_12_Removed()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_12
  self.Current = l0.Target
  self:OnEnter_box_nOnly_13()
  l1 = self.box_nOnly_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDestroyedVehicles|915049705", "915049705", "RemoveDestroyedVehicles", "box_ListWriter_12.Removed", "box_nOnly_13.In", l0, l1)
  l1:In()
end
function export:f_box_Integer_Arithmetics_10_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/IntegerArithmetics.lua")]
  self.Size = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_nOnly_13()
  l0 = self.box_nOnly_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDestroyedVehicles|911511195", "911511195", "RemoveDestroyedVehicles", "box_Integer_Arithmetics_10.Out", "box_nOnly_13.Reset", clone, l0)
  l0:Reset()
end
function export:f_box_ListLength_14_Empty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/ListLength.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  DrawTextToScreen("Comment: All were removed", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Simple Node')-- Comment: All were removed")
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_7"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDestroyedVehicles|1870538900"
  l0.Out = self.f_box_Simple_Node_7_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDestroyedVehicles|246251324", "246251324", "RemoveDestroyedVehicles", "box_ListLength_14.Empty", "box_Simple_Node_7.In", clone, l0)
  l0:In()
end
function export:f_box_ListLength_14_NotEmpty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/ListLength.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  DrawTextToScreen("Comment: Completed", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Simple Node')-- Comment: Completed")
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_1"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDestroyedVehicles|1980884820"
  l0.Out = self.f_box_Simple_Node_1_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDestroyedVehicles|824341948", "824341948", "RemoveDestroyedVehicles", "box_ListLength_14.NotEmpty", "box_Simple_Node_1.In", clone, l0)
  l0:In()
end
function export:f_box_Set_List_3_Out()
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
  l0._name = "box_ListLength_11"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDestroyedVehicles|2033432408"
  l0.Out = self.f_box_ListLength_11_Out
  l0.Empty = self.f_box_ListLength_11_Empty
  l0.NotEmpty = self.f_box_ListLength_11_NotEmpty
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDestroyedVehicles|85960748", "85960748", "RemoveDestroyedVehicles", "box_Set_List_3.Out", "box_ListLength_11.GetLength", clone, l0)
  l0:GetLength()
end
function export:f_box_Set_List_5_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/SetList.lua")]
  self.UpdatedList = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDestroyedVehicles|1903222173", "1903222173", "RemoveDestroyedVehicles", "box_Set_List_5.Out", "Filtered", clone, self)
  self:Filtered()
end
function export:f_box_Simple_Node_8_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDestroyedVehicles|868339780", "868339780", "RemoveDestroyedVehicles", "box_Simple_Node_8.Out", "Empty", clone, self)
  self:Empty()
end
function export:f_box_ListReader_15_EndOfList()
  local l0
  self = self._graph
  l0 = self.box_ListReader_15
  self.Vehicle = l0.Data
end
function export:f_box_ListReader_15_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListReader_15
  self.Vehicle = l0.Data
  l0 = Boxes[PathID("Domino/System/VehicleDamageHelper.lua")]
  l0.Vehicle = self.Vehicle
  l0.Message = nil
  l0.MinHealthForReward = nil
  l0.MaxVehicleValue = nil
  l0._graph = self
  l0._name = "box_VehicleDamageHelper_2"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDestroyedVehicles|348513167"
  l0.Out = self.f_box_VehicleDamageHelper_2_Out
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotHealth = self.f_box_VehicleDamageHelper_2_GotHealth
  l0.GotRewardPercentage = DummyFunction
  l0.GotVehicleValue = DummyFunction
  l0 = self.box_ListReader_15
  l1 = Boxes[PathID("Domino/System/VehicleDamageHelper.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDestroyedVehicles|2013813370", "2013813370", "RemoveDestroyedVehicles", "box_ListReader_15.Out", "box_VehicleDamageHelper_2.GetHealth", l0, l1)
  l1:GetHealth()
end
function export:f_box_Test_if_Nil_9_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Simple_Node_8()
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDestroyedVehicles|2057488394", "2057488394", "RemoveDestroyedVehicles", "box_Test_if_Nil_9.Is_nil", "box_Simple_Node_8.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_9_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/Lists/SetList.lua")]
  l0.List = self.VehicleList
  l0._graph = self
  l0._name = "box_Set_List_3"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDestroyedVehicles|1126039695"
  l0.Out = self.f_box_Set_List_3_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDestroyedVehicles|368339244", "368339244", "RemoveDestroyedVehicles", "box_Test_if_Nil_9.Is_not_nil", "box_Set_List_3.FromList", clone, l0)
  l0:FromList()
end
function export:f_box_Compare_Floats_v2_4_A_gt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareFloats_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_nOnly_13()
  l0 = self.box_nOnly_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDestroyedVehicles|151740465", "151740465", "RemoveDestroyedVehicles", "box_Compare_Floats_v2_4.A_gt_B", "box_nOnly_13.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Floats_v2_4_A_le_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareFloats_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_12
  l0.Input = self.Current
  l0.Data[0] = self.Vehicle
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDestroyedVehicles|510631322", "510631322", "RemoveDestroyedVehicles", "box_Compare_Floats_v2_4.A_le_B", "box_ListWriter_12.Remove", clone, l0)
  l0:Remove()
end
function export:f_box_Simple_Node_7_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDestroyedVehicles|971022723", "971022723", "RemoveDestroyedVehicles", "box_Simple_Node_7.Out", "Empty", clone, self)
  self:Empty()
end
function export:f_box_Simple_Node_1_Out()
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
  l0._name = "box_Set_List_5"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDestroyedVehicles|1233285430"
  l0.Out = self.f_box_Set_List_5_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDestroyedVehicles|924392799", "924392799", "RemoveDestroyedVehicles", "box_Simple_Node_1.Out", "box_Set_List_5.FromList", clone, l0)
  l0:FromList()
end
function export:f_box_ListLength_11_Empty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/ListLength.lua")]
  self.Size = l0.Length
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Simple_Node_8()
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDestroyedVehicles|945804692", "945804692", "RemoveDestroyedVehicles", "box_ListLength_11.Empty", "box_Simple_Node_8.In", clone, l0)
  l0:In()
end
function export:f_box_ListLength_11_NotEmpty()
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
  l0._name = "box_Integer_Arithmetics_10"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDestroyedVehicles|1007505065"
  l0.Out = self.f_box_Integer_Arithmetics_10_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDestroyedVehicles|739602240", "739602240", "RemoveDestroyedVehicles", "box_ListLength_11.NotEmpty", "box_Integer_Arithmetics_10.Sub", clone, l0)
  l0:Sub()
end
function export:f_box_ListLength_11_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/ListLength.lua")]
  self.Size = l0.Length
end
function export:OnEnter_box_nOnly_13()
  local l0
  l0 = self.box_nOnly_13
  l0.Reps = self.Size
end
function export:OnEnter_box_Simple_Node_8()
  local l0
  DrawTextToScreen("Comment: Note - Input list was empty", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Simple Node')-- Comment: Note - Input list was empty")
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_8"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@RemoveDestroyedVehicles|1241927889"
  l0.Out = self.f_box_Simple_Node_8_Out
end
function export:OnEnter_box_ListReader_15()
  local l0
  l0 = self.box_ListReader_15
  l0.Input = self.VehicleList
end
function export:Filtered()
end
function export:Empty()
end
_compilerVersion = 4
