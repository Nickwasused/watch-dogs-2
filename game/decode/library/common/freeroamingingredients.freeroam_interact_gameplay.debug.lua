export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/InteractGameplayController.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/ProgressionTagMonitor.lua")
  cbox:RegisterBox("Domino/System/SimpleNode.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
end
function export:Init(cbox)
  local l0
  self._name = "FreeRoam Interact Gameplay"
  self._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Interact Gameplay"
  self.Stopped = DummyFunction
  self.Started = DummyFunction
  self.Interacted = DummyFunction
  self.box_MultipleOR_9 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_9
  l0._graph = self
  l0._name = "box_MultipleOR_9"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Interact Gameplay|414334658"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_9_Out
  self.box_MultipleOR_3 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_3
  l0._graph = self
  l0._name = "box_MultipleOR_3"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Interact Gameplay|644578709"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_3_Out
  self.box_MultipleOR_14 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_14
  l0._graph = self
  l0._name = "box_MultipleOR_14"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Interact Gameplay|873284095"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_14_Out
  self.box_Progression_Tag_Monitor_11 = cbox:CreateBox("Domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_11
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_11"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Interact Gameplay|1438033186"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = DummyFunction
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_11_HasNOT
  self.box_Progression_Tag_Monitor_2 = cbox:CreateBox("Domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_2
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_2"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Interact Gameplay|1488642679"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = DummyFunction
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_2_HasNOT
  self.box_InteractGameplayController_1 = cbox:CreateBox("Domino/System/InteractGameplayController.lua")
  l0 = self.box_InteractGameplayController_1
  l0._graph = self
  l0._name = "box_InteractGameplayController_1"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Interact Gameplay|1824472380"
  l0.Started = self.f_box_InteractGameplayController_1_Started
  l0.Stopped = DummyFunction
  l0.Completed = self.f_box_InteractGameplayController_1_Completed
  self.box_MultipleOR_7 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_7
  l0._graph = self
  l0._name = "box_MultipleOR_7"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Interact Gameplay|1967130359"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_7_Out
  self.box_Progression_Tag_Monitor_6 = cbox:CreateBox("Domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_6
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_6"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Interact Gameplay|1969418635"
  l0.Enabled = self.f_box_Progression_Tag_Monitor_6_Enabled
  l0.Disabled = self.f_box_Progression_Tag_Monitor_6_Disabled
  l0.TagIsOwned = self.f_box_Progression_Tag_Monitor_6_TagIsOwned
  l0.Has = DummyFunction
  l0.HasNOT = DummyFunction
  self.box_Progression_Tag_Monitor_8 = cbox:CreateBox("Domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_8
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_8"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Interact Gameplay|2080975812"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = self.f_box_Progression_Tag_Monitor_8_TagIsOwned
  l0.Has = DummyFunction
  l0.HasNOT = DummyFunction
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:PreStart()
  local l0
  l0 = self.box_Progression_Tag_Monitor_11
  l0.ProgressionTag = self.ProgressionTag
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Interact Gameplay|727202731", "727202731", "FreeRoam Interact Gameplay", "PreStart", "box_Progression_Tag_Monitor_11.HasProgressionTag", self, l0)
  l0:HasProgressionTag()
end
function export:Start()
  local l0
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = self.ProgressionTag
  l0._graph = self
  l0._name = "box_Test_if_Nil_15"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Interact Gameplay|1836592730"
  l0.Is_nil = self.f_box_Test_if_Nil_15_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_15_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Interact Gameplay|2101597484", "2101597484", "FreeRoam Interact Gameplay", "Start", "box_Test_if_Nil_15.In", self, l0)
  l0:In()
end
function export:Stop()
  local l0
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_4"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Interact Gameplay|1234975391"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_4_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_4_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Interact Gameplay|1653073175", "1653073175", "FreeRoam Interact Gameplay", "Stop", "box_Ordered_Output_4.In", self, l0)
  l0:In()
end
function export:f_box_Ordered_Output_12_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_9()
  l0 = self.box_MultipleOR_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Interact Gameplay|526967146", "526967146", "FreeRoam Interact Gameplay", "box_Ordered_Output_12.Out", "box_MultipleOR_9.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_12_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Interact Gameplay|964992815", "964992815", "FreeRoam Interact Gameplay", "box_Ordered_Output_12.Out", "Interacted", clone, self)
  self:Interacted()
end
function export:f_box_MultipleOR_9_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Progression_Tag_Monitor_8()
  l0 = self.box_MultipleOR_9
  l1 = self.box_Progression_Tag_Monitor_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Interact Gameplay|1725498756", "1725498756", "FreeRoam Interact Gameplay", "box_MultipleOR_9.Out", "box_Progression_Tag_Monitor_8.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MultipleOR_3_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_13"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Interact Gameplay|697112916"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_13_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_13_Out_1
  l0 = self.box_MultipleOR_3
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Interact Gameplay|233770324", "233770324", "FreeRoam Interact Gameplay", "box_MultipleOR_3.Out", "box_Ordered_Output_13.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_13_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_7()
  l0 = self.box_MultipleOR_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Interact Gameplay|279362211", "279362211", "FreeRoam Interact Gameplay", "box_Ordered_Output_13.Out", "box_MultipleOR_7.Input", clone, l0)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Interact Gameplay|1793951076", "1793951076", "FreeRoam Interact Gameplay", "box_Ordered_Output_13.Out", "Interacted", clone, self)
  self:Interacted()
end
function export:f_box_Ordered_Output_10_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Progression_Tag_Monitor_6()
  l0 = self.box_Progression_Tag_Monitor_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Interact Gameplay|495348140", "495348140", "FreeRoam Interact Gameplay", "box_Ordered_Output_10.Out", "box_Progression_Tag_Monitor_6.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_10_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_9()
  l0 = self.box_MultipleOR_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Interact Gameplay|986088382", "986088382", "FreeRoam Interact Gameplay", "box_Ordered_Output_10.Out", "box_MultipleOR_9.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_MultipleOR_14_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_InteractGameplayController_1()
  l0 = self.box_MultipleOR_14
  l1 = self.box_InteractGameplayController_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Interact Gameplay|1011660733", "1011660733", "FreeRoam Interact Gameplay", "box_MultipleOR_14.Out", "box_InteractGameplayController_1.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_4_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_7()
  l0 = self.box_MultipleOR_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Interact Gameplay|1887855134", "1887855134", "FreeRoam Interact Gameplay", "box_Ordered_Output_4.Out", "box_MultipleOR_7.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_4_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Interact Gameplay|274000950", "274000950", "FreeRoam Interact Gameplay", "box_Ordered_Output_4.Out", "Stopped", clone, self)
  self:Stopped()
end
function export:f_box_Progression_Tag_Monitor_11_HasNOT()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Progression_Tag_Monitor_8()
  l0 = self.box_Progression_Tag_Monitor_11
  l1 = self.box_Progression_Tag_Monitor_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Interact Gameplay|708040924", "708040924", "FreeRoam Interact Gameplay", "box_Progression_Tag_Monitor_11.HasNOT", "box_Progression_Tag_Monitor_8.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Progression_Tag_Monitor_2_HasNOT()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_10"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Interact Gameplay|830391967"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_10_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_10_Out_1
  l0 = self.box_Progression_Tag_Monitor_2
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Interact Gameplay|655342251", "655342251", "FreeRoam Interact Gameplay", "box_Progression_Tag_Monitor_2.HasNOT", "box_Ordered_Output_10.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_5_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_3()
  l0 = self.box_MultipleOR_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Interact Gameplay|749924206", "749924206", "FreeRoam Interact Gameplay", "box_Simple_Node_5.Out", "box_MultipleOR_3.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_InteractGameplayController_1_Completed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_3()
  l0 = self.box_InteractGameplayController_1
  l1 = self.box_MultipleOR_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Interact Gameplay|748708287", "748708287", "FreeRoam Interact Gameplay", "box_InteractGameplayController_1.Completed", "box_MultipleOR_3.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_InteractGameplayController_1_Started()
  local l0
  self = self._graph
  l0 = self.box_InteractGameplayController_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Interact Gameplay|103164530", "103164530", "FreeRoam Interact Gameplay", "box_InteractGameplayController_1.Started", "Started", l0, self)
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
  self:OnEnter_box_MultipleOR_14()
  l0 = self.box_MultipleOR_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Interact Gameplay|346705810", "346705810", "FreeRoam Interact Gameplay", "box_Test_if_Nil_15.Is_nil", "box_MultipleOR_14.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Test_if_Nil_15_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Progression_Tag_Monitor_2
  l0.ProgressionTag = self.ProgressionTag
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Interact Gameplay|1240954358", "1240954358", "FreeRoam Interact Gameplay", "box_Test_if_Nil_15.Is_not_nil", "box_Progression_Tag_Monitor_2.HasProgressionTag", clone, l0)
  l0:HasProgressionTag()
end
function export:f_box_MultipleOR_7_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Progression_Tag_Monitor_6()
  l0 = self.box_MultipleOR_7
  l1 = self.box_Progression_Tag_Monitor_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Interact Gameplay|1525539952", "1525539952", "FreeRoam Interact Gameplay", "box_MultipleOR_7.Out", "box_Progression_Tag_Monitor_6.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Progression_Tag_Monitor_6_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_InteractGameplayController_1()
  l0 = self.box_Progression_Tag_Monitor_6
  l1 = self.box_InteractGameplayController_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Interact Gameplay|2045130622", "2045130622", "FreeRoam Interact Gameplay", "box_Progression_Tag_Monitor_6.Disabled", "box_InteractGameplayController_1.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_Progression_Tag_Monitor_6_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_14()
  l0 = self.box_Progression_Tag_Monitor_6
  l1 = self.box_MultipleOR_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Interact Gameplay|283678403", "283678403", "FreeRoam Interact Gameplay", "box_Progression_Tag_Monitor_6.Enabled", "box_MultipleOR_14.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Progression_Tag_Monitor_6_TagIsOwned()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_5"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Interact Gameplay|1792815084"
  l0.Out = self.f_box_Simple_Node_5_Out
  l0 = self.box_Progression_Tag_Monitor_6
  l1 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Interact Gameplay|134338551", "134338551", "FreeRoam Interact Gameplay", "box_Progression_Tag_Monitor_6.TagIsOwned", "box_Simple_Node_5.In", l0, l1)
  l1:In()
end
function export:f_box_Progression_Tag_Monitor_8_TagIsOwned()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_12"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Interact Gameplay|334817647"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_12_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_12_Out_1
  l0 = self.box_Progression_Tag_Monitor_8
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Interact Gameplay|154293554", "154293554", "FreeRoam Interact Gameplay", "box_Progression_Tag_Monitor_8.TagIsOwned", "box_Ordered_Output_12.In", l0, l1)
  l1:In()
end
function export:OnEnter_box_MultipleOR_9()
end
function export:OnEnter_box_MultipleOR_3()
end
function export:OnEnter_box_MultipleOR_14()
end
function export:OnEnter_box_InteractGameplayController_1()
  local l0
  l0 = self.box_InteractGameplayController_1
  l0.MarkerLocId = self.MarkerLocId
  l0.CLO = self.CLO
  l0.IsManagingInteraction = self.IsManagingInteraction
  l0.UseStoryIcon = 1
end
function export:OnEnter_box_MultipleOR_7()
end
function export:OnEnter_box_Progression_Tag_Monitor_6()
  local l0
  l0 = self.box_Progression_Tag_Monitor_6
  l0.ProgressionTag = self.ProgressionTag
end
function export:OnEnter_box_Progression_Tag_Monitor_8()
  local l0
  l0 = self.box_Progression_Tag_Monitor_8
  l0.ProgressionTag = self.ProgressionTag
end
function export:Stopped()
end
function export:Started()
end
function export:Interacted()
end
_compilerVersion = 4
