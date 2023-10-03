export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CompareFloats_v2.lua")
  cbox:RegisterBox("Domino/System/GetPlayerID.lua")
  cbox:RegisterBox("Domino/System/GetDistance.lua")
  cbox:RegisterBox("Domino/System/Lists/ListLength.lua")
  cbox:RegisterBox("Domino/System/Lists/ListReader.lua")
  cbox:RegisterBox("Domino/System/LogicGate_v2.lua")
  cbox:RegisterBox("Domino/System/OnceOnly_v2.lua")
  cbox:RegisterBox("Domino/System/SetEntity.lua")
  cbox:RegisterBox("Domino/System/SimpleNode.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
  cbox:RegisterBox("Domino/System/TextToScreen_v2.lua")
  cbox:RegisterBox("Domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "PawnRadiusCheck"
  self._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@PawnRadiusCheck"
  self.InsideRadius = DummyFunction
  self.OutsideRadius = DummyFunction
  self.Disabled = DummyFunction
  self.Pawn = nil
  self.RefID = nil
  self.box_Timer_v2_5 = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_5
  l0._graph = self
  l0._name = "box_Timer_v2_5"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@PawnRadiusCheck|638317524"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_Timer_v2_5_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_5_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_ListReader_1 = cbox:CreateBox("Domino/System/Lists/ListReader.lua")
  l0 = self.box_ListReader_1
  l0._graph = self
  l0._name = "box_ListReader_1"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@PawnRadiusCheck|1020594279"
  l0.Out = self.f_box_ListReader_1_Out
  l0.EndOfList = self.f_box_ListReader_1_EndOfList
  self.box_OnceOnly_v2_18 = cbox:CreateBox("Domino/System/OnceOnly_v2.lua")
  l0 = self.box_OnceOnly_v2_18
  l0._graph = self
  l0._name = "box_OnceOnly_v2_18"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@PawnRadiusCheck|1102589927"
  l0._DynamicAnchors = {In = 1, Out = 1}
  l0.Out[0] = self.f_box_OnceOnly_v2_18_Out_0
  l0.ResetOut = DummyFunction
  self.box_LogicGate_v2_7 = cbox:CreateBox("Domino/System/LogicGate_v2.lua")
  l0 = self.box_LogicGate_v2_7
  l0._graph = self
  l0._name = "box_LogicGate_v2_7"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@PawnRadiusCheck|1161927939"
  l0.Out = self.f_box_LogicGate_v2_7_Out
  l0.Opened = self.f_box_LogicGate_v2_7_Opened
  l0.Closed = self.f_box_LogicGate_v2_7_Closed
  self.box_Timer_v2_17 = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_17
  l0._graph = self
  l0._name = "box_Timer_v2_17"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@PawnRadiusCheck|1317576769"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_17_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_GetDistance_2 = cbox:CreateBox("Domino/System/GetDistance.lua")
  l0 = self.box_GetDistance_2
  l0._graph = self
  l0._name = "box_GetDistance_2"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@PawnRadiusCheck|1864344133"
  l0.Out = self.f_box_GetDistance_2_Out
  l0.OutViaRoad = DummyFunction
  self.box_OnceOnly_v2_19 = cbox:CreateBox("Domino/System/OnceOnly_v2.lua")
  l0 = self.box_OnceOnly_v2_19
  l0._graph = self
  l0._name = "box_OnceOnly_v2_19"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@PawnRadiusCheck|1916663419"
  l0._DynamicAnchors = {In = 1, Out = 1}
  l0.Out[0] = self.f_box_OnceOnly_v2_19_Out_0
  l0.ResetOut = DummyFunction
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:Check()
  local l0
  self:OnEnter_box_OnceOnly_v2_19()
  l0 = self.box_OnceOnly_v2_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@PawnRadiusCheck|1394048796", "1394048796", "PawnRadiusCheck", "Check", "box_OnceOnly_v2_19.Reset", self, l0)
  l0:Reset()
  self:OnEnter_box_OnceOnly_v2_18()
  l0 = self.box_OnceOnly_v2_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@PawnRadiusCheck|1181588069", "1181588069", "PawnRadiusCheck", "Check", "box_OnceOnly_v2_18.Reset", self, l0)
  l0:Reset()
  l0 = Boxes[PathID("Domino/System/Lists/ListLength.lua")]
  l0.Input = self.PawnList
  l0._graph = self
  l0._name = "box_ListLength_22"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@PawnRadiusCheck|1590290669"
  l0.Out = DummyFunction
  l0.Empty = self.f_box_ListLength_22_Empty
  l0.NotEmpty = self.f_box_ListLength_22_NotEmpty
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@PawnRadiusCheck|2094875102", "2094875102", "PawnRadiusCheck", "Check", "box_ListLength_22.GetLength", self, l0)
  l0:GetLength()
end
function export:Continuous()
  local l0
  l0 = Boxes[PathID("Domino/System/Lists/ListLength.lua")]
  l0.Input = self.PawnList
  l0._graph = self
  l0._name = "box_ListLength_23"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@PawnRadiusCheck|234200084"
  l0.Out = DummyFunction
  l0.Empty = self.f_box_ListLength_23_Empty
  l0.NotEmpty = self.f_box_ListLength_23_NotEmpty
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@PawnRadiusCheck|271233774", "271233774", "PawnRadiusCheck", "Continuous", "box_ListLength_23.GetLength", self, l0)
  l0:GetLength()
end
function export:Disable()
  local l0
  self:OnEnter_box_LogicGate_v2_7()
  l0 = self.box_LogicGate_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@PawnRadiusCheck|1045821979", "1045821979", "PawnRadiusCheck", "Disable", "box_LogicGate_v2_7.In", self, l0)
  l0:In()
end
function export:f_box_Set_Entity_4_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.CloseID = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Timer_v2_17()
  l0 = self.box_Timer_v2_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@PawnRadiusCheck|121592861", "121592861", "PawnRadiusCheck", "box_Set_Entity_4.Out", "box_Timer_v2_17.Stop", clone, l0)
  l0:Stop()
  self:OnEnter_box_OnceOnly_v2_18()
  l0 = self.box_OnceOnly_v2_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@PawnRadiusCheck|442074905", "442074905", "PawnRadiusCheck", "box_Set_Entity_4.Out", "box_OnceOnly_v2_18.In", clone, l0)
  l0:In(0)
end
function export:f_box_Get_Player_ID_15_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.RefID = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Simple_Node_16()
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@PawnRadiusCheck|631834518", "631834518", "PawnRadiusCheck", "box_Get_Player_ID_15.Out", "box_Simple_Node_16.In", clone, l0)
  l0:In()
end
function export:f_box_ListLength_23_Empty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/ListLength.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "PawnList is empty"
  l0.Duration = 5
  l0.Color = "Red"
  l0._graph = self
  l0._name = "box_TextToScreen_v2_20"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@PawnRadiusCheck|884970186"
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@PawnRadiusCheck|315841348", "315841348", "PawnRadiusCheck", "box_ListLength_23.Empty", "box_TextToScreen_v2_20.In", clone, l0)
  l0:In()
end
function export:f_box_ListLength_23_NotEmpty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/ListLength.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.Reference
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_13"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@PawnRadiusCheck|961000383"
  l0.Is_nil = self.f_box_Test_if_Nil_13_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_13_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@PawnRadiusCheck|295631757", "295631757", "PawnRadiusCheck", "box_ListLength_23.NotEmpty", "box_Test_if_Nil_13.In", clone, l0)
  l0:In()
end
function export:f_box_Set_Entity_11_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.RefID = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Simple_Node_12()
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@PawnRadiusCheck|1622368601", "1622368601", "PawnRadiusCheck", "box_Set_Entity_11.Out", "box_Simple_Node_12.In", clone, l0)
  l0:In()
end
function export:f_box_Simple_Node_12_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Simple_Node_9()
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@PawnRadiusCheck|31408951", "31408951", "PawnRadiusCheck", "box_Simple_Node_12.Out", "box_Simple_Node_9.In", clone, l0)
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
  self:OnEnter_box_LogicGate_v2_7()
  l0 = self.box_LogicGate_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@PawnRadiusCheck|992857544", "992857544", "PawnRadiusCheck", "box_Simple_Node_16.Out", "box_LogicGate_v2_7.Open", clone, l0)
  l0:Open()
end
function export:f_box_Timer_v2_5_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_LogicGate_v2_7()
  l0 = self.box_Timer_v2_5
  l1 = self.box_LogicGate_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@PawnRadiusCheck|1195248669", "1195248669", "PawnRadiusCheck", "box_Timer_v2_5.Stopped", "box_LogicGate_v2_7.Close", l0, l1)
  l1:Close()
end
function export:f_box_Timer_v2_5_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Simple_Node_9()
  l0 = self.box_Timer_v2_5
  l1 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@PawnRadiusCheck|2074192555", "2074192555", "PawnRadiusCheck", "box_Timer_v2_5.TimeElapsed", "box_Simple_Node_9.In", l0, l1)
  l1:In()
end
function export:f_box_Test_if_Nil_8_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_10"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@PawnRadiusCheck|1734558387"
  l0.Out = self.f_box_Get_Player_ID_10_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@PawnRadiusCheck|2104077893", "2104077893", "PawnRadiusCheck", "box_Test_if_Nil_8.Is_nil", "box_Get_Player_ID_10.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_8_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = self.Reference
  l0._graph = self
  l0._name = "box_Set_Entity_11"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@PawnRadiusCheck|268328035"
  l0.Out = self.f_box_Set_Entity_11_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@PawnRadiusCheck|1710110829", "1710110829", "PawnRadiusCheck", "box_Test_if_Nil_8.Is_not_nil", "box_Set_Entity_11.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_Test_if_Nil_13_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_15"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@PawnRadiusCheck|195869269"
  l0.Out = self.f_box_Get_Player_ID_15_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@PawnRadiusCheck|1772767741", "1772767741", "PawnRadiusCheck", "box_Test_if_Nil_13.Is_nil", "box_Get_Player_ID_15.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_13_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = self.Reference
  l0._graph = self
  l0._name = "box_Set_Entity_14"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@PawnRadiusCheck|1355128440"
  l0.Out = self.f_box_Set_Entity_14_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@PawnRadiusCheck|1795805386", "1795805386", "PawnRadiusCheck", "box_Test_if_Nil_13.Is_not_nil", "box_Set_Entity_14.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_Compare_Floats_v2_3_A_ge_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareFloats_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ListReader_1()
  l0 = self.box_ListReader_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@PawnRadiusCheck|43603397", "43603397", "PawnRadiusCheck", "box_Compare_Floats_v2_3.A_ge_B", "box_ListReader_1.Read", clone, l0)
  l0:Read()
end
function export:f_box_Compare_Floats_v2_3_A_lt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareFloats_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = self.Pawn
  l0._graph = self
  l0._name = "box_Set_Entity_4"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@PawnRadiusCheck|175982966"
  l0.Out = self.f_box_Set_Entity_4_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@PawnRadiusCheck|519205671", "519205671", "PawnRadiusCheck", "box_Compare_Floats_v2_3.A_lt_B", "box_Set_Entity_4.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_ListReader_1_EndOfList()
  local l0, l1
  self = self._graph
  l0 = self.box_ListReader_1
  self.Pawn = l0.Data
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_6"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@PawnRadiusCheck|1967712030"
  l0.Out = self.f_box_Simple_Node_6_Out
  l0 = self.box_ListReader_1
  l1 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@PawnRadiusCheck|819515410", "819515410", "PawnRadiusCheck", "box_ListReader_1.EndOfList", "box_Simple_Node_6.In", l0, l1)
  l1:In()
end
function export:f_box_ListReader_1_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListReader_1
  self.Pawn = l0.Data
  l0 = self.box_GetDistance_2
  l0.Entity1 = self.Pawn
  l0.Entity2 = self.RefID
  l0 = self.box_ListReader_1
  l1 = self.box_GetDistance_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@PawnRadiusCheck|36743461", "36743461", "PawnRadiusCheck", "box_ListReader_1.Out", "box_GetDistance_2.Distance2D", l0, l1)
  l1:Distance2D()
end
function export:f_box_OnceOnly_v2_18_Out_0()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v2_19()
  l0 = self.box_OnceOnly_v2_18
  l1 = self.box_OnceOnly_v2_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@PawnRadiusCheck|886419915", "886419915", "PawnRadiusCheck", "box_OnceOnly_v2_18.Out", "box_OnceOnly_v2_19.Reset", l0, l1)
  l1:Reset()
  l0 = self.box_OnceOnly_v2_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@PawnRadiusCheck|1021147642", "1021147642", "PawnRadiusCheck", "box_OnceOnly_v2_18.Out", "InsideRadius", l0, self)
  self:InsideRadius()
end
function export:f_box_LogicGate_v2_7_Closed()
  local l0
  self = self._graph
  l0 = self.box_LogicGate_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@PawnRadiusCheck|569397322", "569397322", "PawnRadiusCheck", "box_LogicGate_v2_7.Closed", "Disabled", l0, self)
  self:Disabled()
end
function export:f_box_LogicGate_v2_7_Opened()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Timer_v2_5()
  l0 = self.box_LogicGate_v2_7
  l1 = self.box_Timer_v2_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@PawnRadiusCheck|2113160415", "2113160415", "PawnRadiusCheck", "box_LogicGate_v2_7.Opened", "box_Timer_v2_5.Start", l0, l1)
  l1:Start()
end
function export:f_box_LogicGate_v2_7_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Timer_v2_5()
  l0 = self.box_LogicGate_v2_7
  l1 = self.box_Timer_v2_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@PawnRadiusCheck|1986849137", "1986849137", "PawnRadiusCheck", "box_LogicGate_v2_7.Out", "box_Timer_v2_5.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_Timer_v2_17_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v2_19()
  l0 = self.box_Timer_v2_17
  l1 = self.box_OnceOnly_v2_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@PawnRadiusCheck|756192463", "756192463", "PawnRadiusCheck", "box_Timer_v2_17.TimeElapsed", "box_OnceOnly_v2_19.In", l0, l1)
  l1:In(0)
end
function export:f_box_Set_Entity_14_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.RefID = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Simple_Node_16()
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@PawnRadiusCheck|1458877649", "1458877649", "PawnRadiusCheck", "box_Set_Entity_14.Out", "box_Simple_Node_16.In", clone, l0)
  l0:In()
end
function export:f_box_ListLength_22_Empty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/ListLength.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "PawnList is empty"
  l0.Duration = 5
  l0.Color = "Red"
  l0._graph = self
  l0._name = "box_TextToScreen_v2_21"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@PawnRadiusCheck|1473517625"
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@PawnRadiusCheck|1135148406", "1135148406", "PawnRadiusCheck", "box_ListLength_22.Empty", "box_TextToScreen_v2_21.In", clone, l0)
  l0:In()
end
function export:f_box_ListLength_22_NotEmpty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/ListLength.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.Reference
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_8"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@PawnRadiusCheck|934352010"
  l0.Is_nil = self.f_box_Test_if_Nil_8_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_8_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@PawnRadiusCheck|1785685001", "1785685001", "PawnRadiusCheck", "box_ListLength_22.NotEmpty", "box_Test_if_Nil_8.In", clone, l0)
  l0:In()
end
function export:f_box_Simple_Node_9_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ListReader_1()
  l0 = self.box_ListReader_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@PawnRadiusCheck|1031301677", "1031301677", "PawnRadiusCheck", "box_Simple_Node_9.Out", "box_ListReader_1.ResetRead", clone, l0)
  l0:ResetRead()
end
function export:f_box_Get_Player_ID_10_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.RefID = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Simple_Node_12()
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@PawnRadiusCheck|1657823266", "1657823266", "PawnRadiusCheck", "box_Get_Player_ID_10.Out", "box_Simple_Node_12.In", clone, l0)
  l0:In()
end
function export:f_box_GetDistance_2_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_GetDistance_2
  l1 = Boxes[PathID("Domino/System/CompareFloats_v2.lua")]
  l1.A = l0.Distance
  l1.B = self.Radius
  l1.Tolerance = nil
  l1._graph = self
  l1._name = "box_Compare_Floats_v2_3"
  l1._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@PawnRadiusCheck|966386300"
  l1.Out = DummyFunction
  l1.A_lt_B = self.f_box_Compare_Floats_v2_3_A_lt_B
  l1.A_le_B = DummyFunction
  l1.A_eq_B = DummyFunction
  l1.A_ge_B = self.f_box_Compare_Floats_v2_3_A_ge_B
  l1.A_gt_B = DummyFunction
  l1.A_ne_B = DummyFunction
  l0 = self.box_GetDistance_2
  l1 = Boxes[PathID("Domino/System/CompareFloats_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@PawnRadiusCheck|508650414", "508650414", "PawnRadiusCheck", "box_GetDistance_2.Out", "box_Compare_Floats_v2_3.In", l0, l1)
  l1:In()
end
function export:f_box_OnceOnly_v2_19_Out_0()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v2_18()
  l0 = self.box_OnceOnly_v2_19
  l1 = self.box_OnceOnly_v2_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@PawnRadiusCheck|1339972364", "1339972364", "PawnRadiusCheck", "box_OnceOnly_v2_19.Out", "box_OnceOnly_v2_18.Reset", l0, l1)
  l1:Reset()
  l0 = self.box_OnceOnly_v2_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@PawnRadiusCheck|1484174793", "1484174793", "PawnRadiusCheck", "box_OnceOnly_v2_19.Out", "OutsideRadius", l0, self)
  self:OutsideRadius()
end
function export:f_box_Simple_Node_6_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Timer_v2_17()
  l0 = self.box_Timer_v2_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\ListFunctions.domino|@PawnRadiusCheck|1226185630", "1226185630", "PawnRadiusCheck", "box_Simple_Node_6.Out", "box_Timer_v2_17.Start", clone, l0)
  l0:Start()
end
function export:OnEnter_box_Simple_Node_12()
  local l0
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_12"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@PawnRadiusCheck|379310339"
  l0.Out = self.f_box_Simple_Node_12_Out
end
function export:OnEnter_box_Simple_Node_16()
  local l0
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_16"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@PawnRadiusCheck|485719737"
  l0.Out = self.f_box_Simple_Node_16_Out
end
function export:OnEnter_box_Timer_v2_5()
  local l0
  l0 = self.box_Timer_v2_5
  l0.Seconds = 0.25
  l0.Loop = 1
end
function export:OnEnter_box_ListReader_1()
  local l0
  l0 = self.box_ListReader_1
  l0.Input = self.PawnList
end
function export:OnEnter_box_OnceOnly_v2_18()
end
function export:OnEnter_box_LogicGate_v2_7()
  local l0
  l0 = self.box_LogicGate_v2_7
  l0.initStateOpen = 0
end
function export:OnEnter_box_Timer_v2_17()
  local l0
  l0 = self.box_Timer_v2_17
  l0.Seconds = 0.1
end
function export:OnEnter_box_Simple_Node_9()
  local l0
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_9"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\ListFunctions.domino|@PawnRadiusCheck|1684458503"
  l0.Out = self.f_box_Simple_Node_9_Out
end
function export:OnEnter_box_OnceOnly_v2_19()
end
function export:InsideRadius()
end
function export:OutsideRadius()
end
function export:Disabled()
end
_compilerVersion = 4
