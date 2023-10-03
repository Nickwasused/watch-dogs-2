export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/CompareEntity_v2.lua")
  cbox:RegisterBox("Domino/System/FlyingDroneMonitor.lua")
  cbox:RegisterBox("Domino/System/GetPlayerID.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/SimpleNode.lua")
  cbox:RegisterBox("Domino/System/ToyCarMonitor.lua")
  cbox:RegisterBox("Domino/System/TriggerMonitor_v2.lua")
  cbox:RegisterBox("Domino/System/TutorialController.lua")
end
function export:Init(cbox)
  local l0
  self._name = "PlayerOnlyTriggerNoRCTip"
  self._elementPathId = "DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@PlayerOnlyTriggerNoRCTip"
  self.Enter = DummyFunction
  self.Player = nil
  self.InDrone = 0
  self.In_Jumper = 0
  self.Inside = 0
  self.Collider = nil
  self.box_Toy_Car_Monitor_8 = cbox:CreateBox("Domino/System/ToyCarMonitor.lua")
  l0 = self.box_Toy_Car_Monitor_8
  l0._graph = self
  l0._name = "box_Toy_Car_Monitor_8"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@PlayerOnlyTriggerNoRCTip|142033320"
  l0.Enabled = self.f_box_Toy_Car_Monitor_8_Enabled
  l0.Disabled = self.f_box_Toy_Car_Monitor_8_Disabled
  l0.OnDetected = DummyFunction
  l0.OnHidden = DummyFunction
  l0.OnSpawned = DummyFunction
  l0.OnUnSpawned = DummyFunction
  l0.IsConnected = self.f_box_Toy_Car_Monitor_8_IsConnected
  l0.IsDisconnected = self.f_box_Toy_Car_Monitor_8_IsDisconnected
  l0.IsPickUp = DummyFunction
  l0.StunWasUsed = DummyFunction
  self.box_TutorialController_4 = cbox:CreateBox("Domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_4
  l0._graph = self
  l0._name = "box_TutorialController_4"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@PlayerOnlyTriggerNoRCTip|451059647"
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_TriggerMonitor_v2_1 = cbox:CreateBox("Domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_1
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_1"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@PlayerOnlyTriggerNoRCTip|862254475"
  l0.Enabled = self.f_box_TriggerMonitor_v2_1_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_1_Enter
  l0.Leave = self.f_box_TriggerMonitor_v2_1_Leave
  l0.Use = self.f_box_TriggerMonitor_v2_1_Use
  self.box_SetBoolean_v2_3 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_3
  l0._graph = self
  l0._name = "box_SetBoolean_v2_3"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@PlayerOnlyTriggerNoRCTip|938456778"
  l0.Out = self.f_box_SetBoolean_v2_3_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_3_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_3_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_3_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_3_SetFromBool
  self.box_MultipleOR_14 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_14
  l0._graph = self
  l0._name = "box_MultipleOR_14"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@PlayerOnlyTriggerNoRCTip|1060297466"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_14_Out
  self.box_MultipleOR_10 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_10
  l0._graph = self
  l0._name = "box_MultipleOR_10"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@PlayerOnlyTriggerNoRCTip|1472478396"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_10_Out
  self.box_SetBoolean_v2_9 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_9
  l0._graph = self
  l0._name = "box_SetBoolean_v2_9"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@PlayerOnlyTriggerNoRCTip|1884915086"
  l0.Out = self.f_box_SetBoolean_v2_9_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_9_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_9_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_9_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_9_SetFromBool
  self.box_MultipleOR_2 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_2
  l0._graph = self
  l0._name = "box_MultipleOR_2"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@PlayerOnlyTriggerNoRCTip|1935431893"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_2_Out
  self.box_Flying_Drone_Monitor_5 = cbox:CreateBox("Domino/System/FlyingDroneMonitor.lua")
  l0 = self.box_Flying_Drone_Monitor_5
  l0._graph = self
  l0._name = "box_Flying_Drone_Monitor_5"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@PlayerOnlyTriggerNoRCTip|2041868838"
  l0.Enabled = self.f_box_Flying_Drone_Monitor_5_Enabled
  l0.Disabled = self.f_box_Flying_Drone_Monitor_5_Disabled
  l0.OnDetected = DummyFunction
  l0.OnHidden = DummyFunction
  l0.OnSpawned = DummyFunction
  l0.OnUnSpawned = DummyFunction
  l0.IsConnected = self.f_box_Flying_Drone_Monitor_5_IsConnected
  l0.IsDisconnected = self.f_box_Flying_Drone_Monitor_5_IsDisconnected
  l0.IsPickUp = DummyFunction
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:Disable()
  local l0
  self:OnEnter_box_MultipleOR_10()
  l0 = self.box_MultipleOR_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@PlayerOnlyTriggerNoRCTip|232840878", "232840878", "PlayerOnlyTriggerNoRCTip", "Disable", "box_MultipleOR_10.Input", self, l0)
  l0:Input(1)
end
function export:Enable()
  local l0
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_6"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@PlayerOnlyTriggerNoRCTip|160929684"
  l0.Out = self.f_box_Get_Player_ID_6_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@PlayerOnlyTriggerNoRCTip|441392245", "441392245", "PlayerOnlyTriggerNoRCTip", "Enable", "box_Get_Player_ID_6.In", self, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_17_notA_and_notB()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_2()
  l0 = self.box_MultipleOR_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@PlayerOnlyTriggerNoRCTip|1681361385", "1681361385", "PlayerOnlyTriggerNoRCTip", "box_Compare_Boolean_v2_17.notA_and_notB", "box_MultipleOR_2.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_7_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_10()
  l0 = self.box_MultipleOR_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@PlayerOnlyTriggerNoRCTip|1062884896", "1062884896", "PlayerOnlyTriggerNoRCTip", "box_Ordered_Output_7.Out", "box_MultipleOR_10.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_7_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@PlayerOnlyTriggerNoRCTip|731176363", "731176363", "PlayerOnlyTriggerNoRCTip", "box_Ordered_Output_7.Out", "Enter", clone, self)
  self:Enter()
end
function export:f_box_Ordered_Output_7_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_2()
  l0 = self.box_MultipleOR_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@PlayerOnlyTriggerNoRCTip|1346762018", "1346762018", "PlayerOnlyTriggerNoRCTip", "box_Ordered_Output_7.Out", "box_MultipleOR_2.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Toy_Car_Monitor_8_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_1()
  l0 = self.box_Toy_Car_Monitor_8
  l1 = self.box_TriggerMonitor_v2_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@PlayerOnlyTriggerNoRCTip|482371584", "482371584", "PlayerOnlyTriggerNoRCTip", "box_Toy_Car_Monitor_8.Disabled", "box_TriggerMonitor_v2_1.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Toy_Car_Monitor_8_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_1()
  l0 = self.box_Toy_Car_Monitor_8
  l1 = self.box_TriggerMonitor_v2_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@PlayerOnlyTriggerNoRCTip|1567077444", "1567077444", "PlayerOnlyTriggerNoRCTip", "box_Toy_Car_Monitor_8.Enabled", "box_TriggerMonitor_v2_1.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Toy_Car_Monitor_8_IsConnected()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SetBoolean_v2_9()
  l0 = self.box_Toy_Car_Monitor_8
  l1 = self.box_SetBoolean_v2_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@PlayerOnlyTriggerNoRCTip|1715790947", "1715790947", "PlayerOnlyTriggerNoRCTip", "box_Toy_Car_Monitor_8.IsConnected", "box_SetBoolean_v2_9.True", l0, l1)
  l1:True()
end
function export:f_box_Toy_Car_Monitor_8_IsDisconnected()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SetBoolean_v2_9()
  l0 = self.box_Toy_Car_Monitor_8
  l1 = self.box_SetBoolean_v2_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@PlayerOnlyTriggerNoRCTip|275016831", "275016831", "PlayerOnlyTriggerNoRCTip", "box_Toy_Car_Monitor_8.IsDisconnected", "box_SetBoolean_v2_9.False", l0, l1)
  l1:False()
end
function export:f_box_Get_Player_ID_6_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.Player = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Flying_Drone_Monitor_5()
  l0 = self.box_Flying_Drone_Monitor_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@PlayerOnlyTriggerNoRCTip|705606009", "705606009", "PlayerOnlyTriggerNoRCTip", "box_Get_Player_ID_6.Out", "box_Flying_Drone_Monitor_5.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Compare_Entity_v2_19_Equal()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareEntity_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_7"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@PlayerOnlyTriggerNoRCTip|70672140"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_7_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_7_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_7_Out_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@PlayerOnlyTriggerNoRCTip|1555887987", "1555887987", "PlayerOnlyTriggerNoRCTip", "box_Compare_Entity_v2_19.Equal", "box_Ordered_Output_7.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Entity_v2_19_NotEqual()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareEntity_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TutorialController_4()
  l0 = self.box_TutorialController_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@PlayerOnlyTriggerNoRCTip|1161083043", "1161083043", "PlayerOnlyTriggerNoRCTip", "box_Compare_Entity_v2_19.NotEqual", "box_TutorialController_4.Display", clone, l0)
  l0:Display()
end
function export:f_box_Simple_Node_11_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_14()
  l0 = self.box_MultipleOR_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@PlayerOnlyTriggerNoRCTip|342319290", "342319290", "PlayerOnlyTriggerNoRCTip", "box_Simple_Node_11.Out", "box_MultipleOR_14.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_TriggerMonitor_v2_1_Enabled()
  local l0
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_1
  self.Collider = l0.Collider
end
function export:f_box_TriggerMonitor_v2_1_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_1
  self.Collider = l0.Collider
  l0 = Boxes[PathID("Domino/System/CompareEntity_v2.lua")]
  l0.Entity1 = self.Collider
  l0.Entity2 = self.Player
  l0._graph = self
  l0._name = "box_Compare_Entity_v2_19"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@PlayerOnlyTriggerNoRCTip|316395684"
  l0.Out = DummyFunction
  l0.Equal = self.f_box_Compare_Entity_v2_19_Equal
  l0.NotEqual = self.f_box_Compare_Entity_v2_19_NotEqual
  l0 = self.box_TriggerMonitor_v2_1
  l1 = Boxes[PathID("Domino/System/CompareEntity_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@PlayerOnlyTriggerNoRCTip|178361651", "178361651", "PlayerOnlyTriggerNoRCTip", "box_TriggerMonitor_v2_1.Enter", "box_Compare_Entity_v2_19.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_1_Leave()
  local l0, l1
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_1
  self.Collider = l0.Collider
  self:OnEnter_box_MultipleOR_2()
  l1 = self.box_MultipleOR_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@PlayerOnlyTriggerNoRCTip|799434661", "799434661", "PlayerOnlyTriggerNoRCTip", "box_TriggerMonitor_v2_1.Leave", "box_MultipleOR_2.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_TriggerMonitor_v2_1_Use()
  local l0
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_1
  self.Collider = l0.Collider
end
function export:f_box_SetBoolean_v2_3_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_3
  self.InDrone = l0.Target
end
function export:f_box_SetBoolean_v2_3_SetFalse()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_3
  self.InDrone = l0.Target
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_12"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@PlayerOnlyTriggerNoRCTip|1016329237"
  l0.Out = self.f_box_Simple_Node_12_Out
  l0 = self.box_SetBoolean_v2_3
  l1 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@PlayerOnlyTriggerNoRCTip|1772903961", "1772903961", "PlayerOnlyTriggerNoRCTip", "box_SetBoolean_v2_3.SetFalse", "box_Simple_Node_12.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_3_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_3
  self.InDrone = l0.Target
end
function export:f_box_SetBoolean_v2_3_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_3
  self.InDrone = l0.Target
end
function export:f_box_SetBoolean_v2_3_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_3
  self.InDrone = l0.Target
end
function export:f_box_Simple_Node_12_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_14()
  l0 = self.box_MultipleOR_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@PlayerOnlyTriggerNoRCTip|1187863456", "1187863456", "PlayerOnlyTriggerNoRCTip", "box_Simple_Node_12.Out", "box_MultipleOR_14.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_MultipleOR_14_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.InDrone
  l0.B = self.In_Jumper
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_17"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@PlayerOnlyTriggerNoRCTip|18666503"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = self.f_box_Compare_Boolean_v2_17_notA_and_notB
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_MultipleOR_14
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@PlayerOnlyTriggerNoRCTip|1420322380", "1420322380", "PlayerOnlyTriggerNoRCTip", "box_MultipleOR_14.Out", "box_Compare_Boolean_v2_17.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_10_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Flying_Drone_Monitor_5()
  l0 = self.box_MultipleOR_10
  l1 = self.box_Flying_Drone_Monitor_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@PlayerOnlyTriggerNoRCTip|899502349", "899502349", "PlayerOnlyTriggerNoRCTip", "box_MultipleOR_10.Out", "box_Flying_Drone_Monitor_5.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_SetBoolean_v2_9_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_9
  self.In_Jumper = l0.Target
end
function export:f_box_SetBoolean_v2_9_SetFalse()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_9
  self.In_Jumper = l0.Target
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_11"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@PlayerOnlyTriggerNoRCTip|770709438"
  l0.Out = self.f_box_Simple_Node_11_Out
  l0 = self.box_SetBoolean_v2_9
  l1 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@PlayerOnlyTriggerNoRCTip|721072907", "721072907", "PlayerOnlyTriggerNoRCTip", "box_SetBoolean_v2_9.SetFalse", "box_Simple_Node_11.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_9_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_9
  self.In_Jumper = l0.Target
end
function export:f_box_SetBoolean_v2_9_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_9
  self.In_Jumper = l0.Target
end
function export:f_box_SetBoolean_v2_9_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_9
  self.In_Jumper = l0.Target
end
function export:f_box_MultipleOR_2_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_4()
  l0 = self.box_MultipleOR_2
  l1 = self.box_TutorialController_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@PlayerOnlyTriggerNoRCTip|1633318287", "1633318287", "PlayerOnlyTriggerNoRCTip", "box_MultipleOR_2.Out", "box_TutorialController_4.HideNotification", l0, l1)
  l1:HideNotification()
end
function export:f_box_Flying_Drone_Monitor_5_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Toy_Car_Monitor_8()
  l0 = self.box_Flying_Drone_Monitor_5
  l1 = self.box_Toy_Car_Monitor_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@PlayerOnlyTriggerNoRCTip|135974120", "135974120", "PlayerOnlyTriggerNoRCTip", "box_Flying_Drone_Monitor_5.Disabled", "box_Toy_Car_Monitor_8.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Flying_Drone_Monitor_5_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Toy_Car_Monitor_8()
  l0 = self.box_Flying_Drone_Monitor_5
  l1 = self.box_Toy_Car_Monitor_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@PlayerOnlyTriggerNoRCTip|1659259573", "1659259573", "PlayerOnlyTriggerNoRCTip", "box_Flying_Drone_Monitor_5.Enabled", "box_Toy_Car_Monitor_8.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Flying_Drone_Monitor_5_IsConnected()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SetBoolean_v2_3()
  l0 = self.box_Flying_Drone_Monitor_5
  l1 = self.box_SetBoolean_v2_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@PlayerOnlyTriggerNoRCTip|1407570353", "1407570353", "PlayerOnlyTriggerNoRCTip", "box_Flying_Drone_Monitor_5.IsConnected", "box_SetBoolean_v2_3.True", l0, l1)
  l1:True()
end
function export:f_box_Flying_Drone_Monitor_5_IsDisconnected()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SetBoolean_v2_3()
  l0 = self.box_Flying_Drone_Monitor_5
  l1 = self.box_SetBoolean_v2_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@PlayerOnlyTriggerNoRCTip|721075368", "721075368", "PlayerOnlyTriggerNoRCTip", "box_Flying_Drone_Monitor_5.IsDisconnected", "box_SetBoolean_v2_3.False", l0, l1)
  l1:False()
end
function export:OnEnter_box_Toy_Car_Monitor_8()
  local l0
  l0 = self.box_Toy_Car_Monitor_8
  l0.CheckNow = 1
end
function export:OnEnter_box_TutorialController_4()
  local l0
  l0 = self.box_TutorialController_4
  l0.Notification = {
    section = "MISSIONS.TUTORIALS.Notification_MarcusOnlyInteraction",
    item = "Description",
    id = "698586"
  }
  l0.Duration = -1
end
function export:OnEnter_box_TriggerMonitor_v2_1()
  local l0
  l0 = self.box_TriggerMonitor_v2_1
  l0.Trigger = self.Trigger
end
function export:OnEnter_box_SetBoolean_v2_3()
end
function export:OnEnter_box_MultipleOR_14()
end
function export:OnEnter_box_MultipleOR_10()
end
function export:OnEnter_box_SetBoolean_v2_9()
end
function export:OnEnter_box_MultipleOR_2()
end
function export:OnEnter_box_Flying_Drone_Monitor_5()
  local l0
  l0 = self.box_Flying_Drone_Monitor_5
  l0.CheckNow = 1
end
function export:Enter()
end
_compilerVersion = 4
