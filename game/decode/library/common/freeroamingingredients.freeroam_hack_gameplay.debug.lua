export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/HackGameplayController.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/ProgressionTagMonitor.lua")
  cbox:RegisterBox("Domino/System/SimpleNode.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
end
function export:Init(cbox)
  local l0
  self._name = "FreeRoam Hack Gameplay"
  self._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Hack Gameplay"
  self.Stopped = DummyFunction
  self.Started = DummyFunction
  self.Hacked = DummyFunction
  self.box_HackGameplayController_1 = cbox:CreateBox("Domino/System/HackGameplayController.lua")
  l0 = self.box_HackGameplayController_1
  l0._graph = self
  l0._name = "box_HackGameplayController_1"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Hack Gameplay|11243034"
  l0.Started = self.f_box_HackGameplayController_1_Started
  l0.Stopped = DummyFunction
  l0.Completed = self.f_box_HackGameplayController_1_Completed
  self.box_Progression_Tag_Monitor_12 = cbox:CreateBox("Domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_12
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_12"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Hack Gameplay|52910930"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = DummyFunction
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_12_HasNOT
  self.box_Progression_Tag_Monitor_11 = cbox:CreateBox("Domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_11
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_11"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Hack Gameplay|254950654"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = self.f_box_Progression_Tag_Monitor_11_TagIsOwned
  l0.Has = DummyFunction
  l0.HasNOT = DummyFunction
  self.box_MultipleOR_6 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_6
  l0._graph = self
  l0._name = "box_MultipleOR_6"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Hack Gameplay|723494879"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_6_Out
  self.box_Progression_Tag_Monitor_4 = cbox:CreateBox("Domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_4
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_4"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Hack Gameplay|929309529"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = DummyFunction
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_4_HasNOT
  self.box_MultipleOR_2 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_2
  l0._graph = self
  l0._name = "box_MultipleOR_2"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Hack Gameplay|999987522"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_2_Out
  self.box_MultipleOR_10 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_10
  l0._graph = self
  l0._name = "box_MultipleOR_10"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Hack Gameplay|1114910293"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_10_Out
  self.box_MultipleOR_15 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_15
  l0._graph = self
  l0._name = "box_MultipleOR_15"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Hack Gameplay|2091164995"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_15_Out
  self.box_Progression_Tag_Monitor_3 = cbox:CreateBox("Domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_3
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_3"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Hack Gameplay|2124154949"
  l0.Enabled = self.f_box_Progression_Tag_Monitor_3_Enabled
  l0.Disabled = self.f_box_Progression_Tag_Monitor_3_Disabled
  l0.TagIsOwned = self.f_box_Progression_Tag_Monitor_3_TagIsOwned
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
  l0 = self.box_Progression_Tag_Monitor_12
  l0.ProgressionTag = self.ProgressionTag
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Hack Gameplay|236778592", "236778592", "FreeRoam Hack Gameplay", "PreStart", "box_Progression_Tag_Monitor_12.HasProgressionTag", self, l0)
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
  l0._name = "box_Test_if_Nil_14"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Hack Gameplay|961383253"
  l0.Is_nil = self.f_box_Test_if_Nil_14_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_14_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Hack Gameplay|681929370", "681929370", "FreeRoam Hack Gameplay", "Start", "box_Test_if_Nil_14.In", self, l0)
  l0:In()
end
function export:Stop()
  local l0
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_5"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Hack Gameplay|1871310118"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_5_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_5_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Hack Gameplay|1128087669", "1128087669", "FreeRoam Hack Gameplay", "Stop", "box_Ordered_Output_5.In", self, l0)
  l0:In()
end
function export:f_box_HackGameplayController_1_Completed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_2()
  l0 = self.box_HackGameplayController_1
  l1 = self.box_MultipleOR_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Hack Gameplay|1012712860", "1012712860", "FreeRoam Hack Gameplay", "box_HackGameplayController_1.Completed", "box_MultipleOR_2.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_HackGameplayController_1_Started()
  local l0
  self = self._graph
  l0 = self.box_HackGameplayController_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Hack Gameplay|82943354", "82943354", "FreeRoam Hack Gameplay", "box_HackGameplayController_1.Started", "Started", l0, self)
  self:Started()
end
function export:f_box_Progression_Tag_Monitor_12_HasNOT()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Progression_Tag_Monitor_11()
  l0 = self.box_Progression_Tag_Monitor_12
  l1 = self.box_Progression_Tag_Monitor_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Hack Gameplay|1761795214", "1761795214", "FreeRoam Hack Gameplay", "box_Progression_Tag_Monitor_12.HasNOT", "box_Progression_Tag_Monitor_11.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Ordered_Output_9_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_10()
  l0 = self.box_MultipleOR_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Hack Gameplay|204623428", "204623428", "FreeRoam Hack Gameplay", "box_Ordered_Output_9.Out", "box_MultipleOR_10.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_9_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Hack Gameplay|1447766491", "1447766491", "FreeRoam Hack Gameplay", "box_Ordered_Output_9.Out", "Hacked", clone, self)
  self:Hacked()
end
function export:f_box_Progression_Tag_Monitor_11_TagIsOwned()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_9"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Hack Gameplay|223731594"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_9_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_9_Out_1
  l0 = self.box_Progression_Tag_Monitor_11
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Hack Gameplay|962032352", "962032352", "FreeRoam Hack Gameplay", "box_Progression_Tag_Monitor_11.TagIsOwned", "box_Ordered_Output_9.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_8_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Progression_Tag_Monitor_3()
  l0 = self.box_Progression_Tag_Monitor_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Hack Gameplay|330429733", "330429733", "FreeRoam Hack Gameplay", "box_Ordered_Output_8.Out", "box_Progression_Tag_Monitor_3.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_8_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_10()
  l0 = self.box_MultipleOR_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Hack Gameplay|1889633204", "1889633204", "FreeRoam Hack Gameplay", "box_Ordered_Output_8.Out", "box_MultipleOR_10.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_MultipleOR_6_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Progression_Tag_Monitor_3()
  l0 = self.box_MultipleOR_6
  l1 = self.box_Progression_Tag_Monitor_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Hack Gameplay|2089317775", "2089317775", "FreeRoam Hack Gameplay", "box_MultipleOR_6.Out", "box_Progression_Tag_Monitor_3.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Progression_Tag_Monitor_4_HasNOT()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_8"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Hack Gameplay|437472357"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_8_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_8_Out_1
  l0 = self.box_Progression_Tag_Monitor_4
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Hack Gameplay|1412112446", "1412112446", "FreeRoam Hack Gameplay", "box_Progression_Tag_Monitor_4.HasNOT", "box_Ordered_Output_8.In", l0, l1)
  l1:In()
end
function export:f_box_Test_if_Nil_14_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_15()
  l0 = self.box_MultipleOR_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Hack Gameplay|1739793104", "1739793104", "FreeRoam Hack Gameplay", "box_Test_if_Nil_14.Is_nil", "box_MultipleOR_15.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Test_if_Nil_14_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Progression_Tag_Monitor_4
  l0.ProgressionTag = self.ProgressionTag
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Hack Gameplay|1463513980", "1463513980", "FreeRoam Hack Gameplay", "box_Test_if_Nil_14.Is_not_nil", "box_Progression_Tag_Monitor_4.HasProgressionTag", clone, l0)
  l0:HasProgressionTag()
end
function export:f_box_MultipleOR_2_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_7"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Hack Gameplay|1455771574"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_7_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_7_Out_1
  l0 = self.box_MultipleOR_2
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Hack Gameplay|183129626", "183129626", "FreeRoam Hack Gameplay", "box_MultipleOR_2.Out", "box_Ordered_Output_7.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_10_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Progression_Tag_Monitor_11()
  l0 = self.box_MultipleOR_10
  l1 = self.box_Progression_Tag_Monitor_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Hack Gameplay|1279745105", "1279745105", "FreeRoam Hack Gameplay", "box_MultipleOR_10.Out", "box_Progression_Tag_Monitor_11.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Ordered_Output_7_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_6()
  l0 = self.box_MultipleOR_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Hack Gameplay|899757680", "899757680", "FreeRoam Hack Gameplay", "box_Ordered_Output_7.Out", "box_MultipleOR_6.Input", clone, l0)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Hack Gameplay|889180019", "889180019", "FreeRoam Hack Gameplay", "box_Ordered_Output_7.Out", "Hacked", clone, self)
  self:Hacked()
end
function export:f_box_Simple_Node_13_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_2()
  l0 = self.box_MultipleOR_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Hack Gameplay|2138350385", "2138350385", "FreeRoam Hack Gameplay", "box_Simple_Node_13.Out", "box_MultipleOR_2.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_5_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_6()
  l0 = self.box_MultipleOR_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Hack Gameplay|400815336", "400815336", "FreeRoam Hack Gameplay", "box_Ordered_Output_5.Out", "box_MultipleOR_6.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_5_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Hack Gameplay|2134465629", "2134465629", "FreeRoam Hack Gameplay", "box_Ordered_Output_5.Out", "Stopped", clone, self)
  self:Stopped()
end
function export:f_box_MultipleOR_15_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackGameplayController_1()
  l0 = self.box_MultipleOR_15
  l1 = self.box_HackGameplayController_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Hack Gameplay|131762844", "131762844", "FreeRoam Hack Gameplay", "box_MultipleOR_15.Out", "box_HackGameplayController_1.Start", l0, l1)
  l1:Start()
end
function export:f_box_Progression_Tag_Monitor_3_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackGameplayController_1()
  l0 = self.box_Progression_Tag_Monitor_3
  l1 = self.box_HackGameplayController_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Hack Gameplay|705347264", "705347264", "FreeRoam Hack Gameplay", "box_Progression_Tag_Monitor_3.Disabled", "box_HackGameplayController_1.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_Progression_Tag_Monitor_3_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_15()
  l0 = self.box_Progression_Tag_Monitor_3
  l1 = self.box_MultipleOR_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Hack Gameplay|1883932305", "1883932305", "FreeRoam Hack Gameplay", "box_Progression_Tag_Monitor_3.Enabled", "box_MultipleOR_15.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Progression_Tag_Monitor_3_TagIsOwned()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_13"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Hack Gameplay|1614946859"
  l0.Out = self.f_box_Simple_Node_13_Out
  l0 = self.box_Progression_Tag_Monitor_3
  l1 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Hack Gameplay|333080765", "333080765", "FreeRoam Hack Gameplay", "box_Progression_Tag_Monitor_3.TagIsOwned", "box_Simple_Node_13.In", l0, l1)
  l1:In()
end
function export:OnEnter_box_HackGameplayController_1()
  local l0
  l0 = self.box_HackGameplayController_1
  l0.MarkerLocId = self.MarkerLocId
  l0.HackCategoryType = self.HackCategory
  l0.CLO = self.CLO
  l0.IsManagingInteraction = self.IsManagingInteraction
  l0.UseStoryIcon = 1
end
function export:OnEnter_box_Progression_Tag_Monitor_11()
  local l0
  l0 = self.box_Progression_Tag_Monitor_11
  l0.ProgressionTag = self.ProgressionTag
end
function export:OnEnter_box_MultipleOR_6()
end
function export:OnEnter_box_MultipleOR_2()
end
function export:OnEnter_box_MultipleOR_10()
end
function export:OnEnter_box_MultipleOR_15()
end
function export:OnEnter_box_Progression_Tag_Monitor_3()
  local l0
  l0 = self.box_Progression_Tag_Monitor_3
  l0.ProgressionTag = self.ProgressionTag
end
function export:Stopped()
end
function export:Started()
end
function export:Hacked()
end
_compilerVersion = 4
