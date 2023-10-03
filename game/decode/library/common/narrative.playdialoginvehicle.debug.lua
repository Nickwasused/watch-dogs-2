export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/CompareEntity_v2.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("Domino/System/PlayerVehicleMonitor_v2.lua")
  cbox:RegisterBox("Domino/System/SetEntity.lua")
  cbox:RegisterBox("Domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/SimpleNode.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
end
function export:Init(cbox)
  local l0
  self._name = "PlayDialogInVehicle"
  self._elementPathId = "DocumentContainer|..\\Library\\common\\Narrative.domino|@PlayDialogInVehicle"
  self.Skipped = DummyFunction
  self.Started = DummyFunction
  self.Finished = DummyFunction
  self.VehicleIn = nil
  self.SetVehicle = nil
  self.box_SetBoolean_v2_7 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_7
  l0._graph = self
  l0._name = "box_SetBoolean_v2_7"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Narrative.domino|@PlayDialogInVehicle|63426224"
  l0.Out = self.f_box_SetBoolean_v2_7_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_7_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_7_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_7_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_7_SetFromBool
  self.box_PlayDialog_v2_16 = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_16
  l0._graph = self
  l0._name = "box_PlayDialog_v2_16"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Narrative.domino|@PlayDialogInVehicle|321019615"
  l0.Started = DummyFunction
  l0.ListStarted = self.f_box_PlayDialog_v2_16_ListStarted
  l0.Finished = DummyFunction
  l0.ListFinished = self.f_box_PlayDialog_v2_16_ListFinished
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_Player_Vehicle_Monitor_v2_2 = cbox:CreateBox("Domino/System/PlayerVehicleMonitor_v2.lua")
  l0 = self.box_Player_Vehicle_Monitor_v2_2
  l0._graph = self
  l0._name = "box_Player_Vehicle_Monitor_v2_2"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Narrative.domino|@PlayDialogInVehicle|901025273"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_Player_Vehicle_Monitor_v2_2_Enter
  l0.Leave = self.f_box_Player_Vehicle_Monitor_v2_2_Leave
  l0.ChangeSeat = self.f_box_Player_Vehicle_Monitor_v2_2_ChangeSeat
  self.box_MultipleOR_9 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_9
  l0._graph = self
  l0._name = "box_MultipleOR_9"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Narrative.domino|@PlayDialogInVehicle|1001610591"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_9_Out
  self.box_MultipleOR_14 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_14
  l0._graph = self
  l0._name = "box_MultipleOR_14"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Narrative.domino|@PlayDialogInVehicle|1126537127"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_14_Out
  self.box_SetBoolean_v2_11 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_11
  l0._graph = self
  l0._name = "box_SetBoolean_v2_11"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Narrative.domino|@PlayDialogInVehicle|1630255154"
  l0.Out = self.f_box_SetBoolean_v2_11_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_11_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_11_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_11_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_11_SetFromBool
  self.box_PlayDialog_v2_1 = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_1
  l0._graph = self
  l0._name = "box_PlayDialog_v2_1"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Narrative.domino|@PlayDialogInVehicle|1928943295"
  l0.Started = self.f_box_PlayDialog_v2_1_Started
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_1_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
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
  self:OnEnter_box_Player_Vehicle_Monitor_v2_2()
  l0 = self.box_Player_Vehicle_Monitor_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@PlayDialogInVehicle|588416061", "588416061", "PlayDialogInVehicle", "Start", "box_Player_Vehicle_Monitor_v2_2.Enable", self, l0)
  l0:Enable()
end
function export:f_box_SetBoolean_v2_7_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_7
  self.HasFinished = l0.Target
end
function export:f_box_SetBoolean_v2_7_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_7
  self.HasFinished = l0.Target
end
function export:f_box_SetBoolean_v2_7_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_7
  self.HasFinished = l0.Target
end
function export:f_box_SetBoolean_v2_7_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_7
  self.HasFinished = l0.Target
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@PlayDialogInVehicle|228901452", "228901452", "PlayDialogInVehicle", "box_SetBoolean_v2_7.SetTrue", "Finished", l0, self)
  self:Finished()
end
function export:f_box_SetBoolean_v2_7_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_7
  self.HasFinished = l0.Target
end
function export:f_box_Compare_Entity_v2_4_Equal()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareEntity_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_9()
  l0 = self.box_MultipleOR_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@PlayDialogInVehicle|654002370", "654002370", "PlayDialogInVehicle", "box_Compare_Entity_v2_4.Equal", "box_MultipleOR_9.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Simple_Node_10_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_14()
  l0 = self.box_MultipleOR_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@PlayDialogInVehicle|398607393", "398607393", "PlayDialogInVehicle", "box_Simple_Node_10.Out", "box_MultipleOR_14.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_PlayDialog_v2_16_ListFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_16
  l1 = self.box_SetBoolean_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@PlayDialogInVehicle|2027080139", "2027080139", "PlayDialogInVehicle", "box_PlayDialog_v2_16.ListFinished", "box_SetBoolean_v2_7.True", l0, l1)
  l1:True()
end
function export:f_box_PlayDialog_v2_16_ListStarted()
  local l0
  self = self._graph
  l0 = self.box_PlayDialog_v2_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@PlayDialogInVehicle|2138895990", "2138895990", "PlayDialogInVehicle", "box_PlayDialog_v2_16.ListStarted", "Started", l0, self)
  self:Started()
end
function export:f_box_Set_Entity_5_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.SetVehicle = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareEntity_v2.lua")]
  l0.Entity1 = self.SetVehicle
  l0.Entity2 = self.VehicleIn
  l0._graph = self
  l0._name = "box_Compare_Entity_v2_4"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Narrative.domino|@PlayDialogInVehicle|145741633"
  l0.Out = DummyFunction
  l0.Equal = self.f_box_Compare_Entity_v2_4_Equal
  l0.NotEqual = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@PlayDialogInVehicle|1200430608", "1200430608", "PlayDialogInVehicle", "box_Set_Entity_5.Out", "box_Compare_Entity_v2_4.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_8_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@PlayDialogInVehicle|2035490120", "2035490120", "PlayDialogInVehicle", "box_Ordered_Output_8.Out", "Skipped", clone, self)
  self:Skipped()
end
function export:f_box_Ordered_Output_8_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_10"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Narrative.domino|@PlayDialogInVehicle|272766098"
  l0.Out = self.f_box_Simple_Node_10_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@PlayDialogInVehicle|774896825", "774896825", "PlayDialogInVehicle", "box_Ordered_Output_8.Out", "box_Simple_Node_10.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_13_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_14()
  l0 = self.box_MultipleOR_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@PlayDialogInVehicle|127302696", "127302696", "PlayDialogInVehicle", "box_Ordered_Output_13.Out", "box_MultipleOR_14.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_13_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
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
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = self.SoundId
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_15"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Narrative.domino|@PlayDialogInVehicle|2051853035"
  l0.Is_nil = self.f_box_Test_if_Nil_15_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_15_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@PlayDialogInVehicle|121270016", "121270016", "PlayDialogInVehicle", "box_Ordered_Output_13.Out", "box_Test_if_Nil_15.In", clone, l0)
  l0:In()
end
function export:f_box_Player_Vehicle_Monitor_v2_2_ChangeSeat()
  local l0
  self = self._graph
  l0 = self.box_Player_Vehicle_Monitor_v2_2
  self.VehicleIn = l0.Vehicle
end
function export:f_box_Player_Vehicle_Monitor_v2_2_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_Player_Vehicle_Monitor_v2_2
  self.VehicleIn = l0.Vehicle
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.SpecificVehicle
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_3"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Narrative.domino|@PlayDialogInVehicle|1871211322"
  l0.Is_nil = self.f_box_Test_if_Nil_3_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_3_Is_not_nil
  l0 = self.box_Player_Vehicle_Monitor_v2_2
  l1 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@PlayDialogInVehicle|28370531", "28370531", "PlayDialogInVehicle", "box_Player_Vehicle_Monitor_v2_2.Enter", "box_Test_if_Nil_3.In", l0, l1)
  l1:In()
end
function export:f_box_Player_Vehicle_Monitor_v2_2_Leave()
  local l0, l1
  self = self._graph
  l0 = self.box_Player_Vehicle_Monitor_v2_2
  self.VehicleIn = l0.Vehicle
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.SkipIfOut
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_6"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Narrative.domino|@PlayDialogInVehicle|1120837566"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_6_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_Player_Vehicle_Monitor_v2_2
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@PlayDialogInVehicle|842150614", "842150614", "PlayDialogInVehicle", "box_Player_Vehicle_Monitor_v2_2.Leave", "box_Compare_Boolean_v2_6.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_9_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_13"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Narrative.domino|@PlayDialogInVehicle|747716263"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_13_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_13_Out_1
  l0 = self.box_MultipleOR_9
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@PlayDialogInVehicle|668954137", "668954137", "PlayDialogInVehicle", "box_MultipleOR_9.Out", "box_Ordered_Output_13.In", l0, l1)
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
  l0._name = "box_Ordered_Output_8"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Narrative.domino|@PlayDialogInVehicle|513138003"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_8_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_8_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@PlayDialogInVehicle|2033969954", "2033969954", "PlayDialogInVehicle", "box_Compare_Boolean_v2_6.A_is_True", "box_Ordered_Output_8.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_14_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Player_Vehicle_Monitor_v2_2()
  l0 = self.box_MultipleOR_14
  l1 = self.box_Player_Vehicle_Monitor_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@PlayDialogInVehicle|1895914832", "1895914832", "PlayDialogInVehicle", "box_MultipleOR_14.Out", "box_Player_Vehicle_Monitor_v2_2.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_SetBoolean_v2_11_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_11
  self.HasFinished = l0.Target
end
function export:f_box_SetBoolean_v2_11_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_11
  self.HasFinished = l0.Target
end
function export:f_box_SetBoolean_v2_11_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_11
  self.HasFinished = l0.Target
end
function export:f_box_SetBoolean_v2_11_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_11
  self.HasFinished = l0.Target
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@PlayDialogInVehicle|1582735129", "1582735129", "PlayDialogInVehicle", "box_SetBoolean_v2_11.SetTrue", "Finished", l0, self)
  self:Finished()
end
function export:f_box_SetBoolean_v2_11_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_11
  self.HasFinished = l0.Target
end
function export:f_box_Test_if_Nil_3_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_9()
  l0 = self.box_MultipleOR_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@PlayDialogInVehicle|1330357651", "1330357651", "PlayDialogInVehicle", "box_Test_if_Nil_3.Is_nil", "box_MultipleOR_9.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Test_if_Nil_3_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = self.SpecificVehicle
  l0._graph = self
  l0._name = "box_Set_Entity_5"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Narrative.domino|@PlayDialogInVehicle|382382655"
  l0.Out = self.f_box_Set_Entity_5_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@PlayDialogInVehicle|919968047", "919968047", "PlayDialogInVehicle", "box_Test_if_Nil_3.Is_not_nil", "box_Set_Entity_5.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_PlayDialog_v2_1_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_1
  l1 = self.box_SetBoolean_v2_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@PlayDialogInVehicle|966091221", "966091221", "PlayDialogInVehicle", "box_PlayDialog_v2_1.Finished", "box_SetBoolean_v2_11.True", l0, l1)
  l1:True()
end
function export:f_box_PlayDialog_v2_1_Started()
  local l0
  self = self._graph
  l0 = self.box_PlayDialog_v2_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@PlayDialogInVehicle|666547871", "666547871", "PlayDialogInVehicle", "box_PlayDialog_v2_1.Started", "Started", l0, self)
  self:Started()
end
function export:f_box_Test_if_Nil_15_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_16
  l0.SoundIdList = self.SoundIdList
  l0.Queue = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@PlayDialogInVehicle|614777405", "614777405", "PlayDialogInVehicle", "box_Test_if_Nil_15.Is_nil", "box_PlayDialog_v2_16.Start", clone, l0)
  l0:Start()
end
function export:f_box_Test_if_Nil_15_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_1
  l0.SoundId = self.SoundId
  l0.Queue = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@PlayDialogInVehicle|94499063", "94499063", "PlayDialogInVehicle", "box_Test_if_Nil_15.Is_not_nil", "box_PlayDialog_v2_1.Start", clone, l0)
  l0:Start()
end
function export:OnEnter_box_Player_Vehicle_Monitor_v2_2()
  local l0
  l0 = self.box_Player_Vehicle_Monitor_v2_2
  l0.CheckNow = 1
end
function export:OnEnter_box_MultipleOR_9()
end
function export:OnEnter_box_MultipleOR_14()
end
function export:Skipped()
end
function export:Started()
end
function export:Finished()
end
_compilerVersion = 4
