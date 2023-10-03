export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/InteractGameplayController.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/NetworkSurfingController.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/ProgressionTagMonitor.lua")
  cbox:RegisterBox("Domino/System/SimpleNode.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
end
function export:Init(cbox)
  local l0
  self._name = "FreeRoam IOP Interact Gameplay"
  self._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam IOP Interact Gameplay"
  self.Started = DummyFunction
  self.Stopped = DummyFunction
  self.Interacted = DummyFunction
  self.box_MultipleOR_8 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_8
  l0._graph = self
  l0._name = "box_MultipleOR_8"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam IOP Interact Gameplay|343073630"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_8_Out
  self.box_Progression_Tag_Monitor_3 = cbox:CreateBox("Domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_3
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_3"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam IOP Interact Gameplay|891858050"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = DummyFunction
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_3_HasNOT
  self.box_InteractGameplayController_1 = cbox:CreateBox("Domino/System/InteractGameplayController.lua")
  l0 = self.box_InteractGameplayController_1
  l0._graph = self
  l0._name = "box_InteractGameplayController_1"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam IOP Interact Gameplay|1127180099"
  l0.Started = self.f_box_InteractGameplayController_1_Started
  l0.Stopped = DummyFunction
  l0.Completed = self.f_box_InteractGameplayController_1_Completed
  self.box_MultipleOR_2 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_2
  l0._graph = self
  l0._name = "box_MultipleOR_2"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam IOP Interact Gameplay|1235462136"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_2_Out
  self.box_Network_Surfing_Controller_11 = cbox:CreateBox("Domino/System/NetworkSurfingController.lua")
  l0 = self.box_Network_Surfing_Controller_11
  l0._graph = self
  l0._name = "box_Network_Surfing_Controller_11"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam IOP Interact Gameplay|1325123727"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_Network_Surfing_Controller_11_Deactivated
  self.box_Progression_Tag_Monitor_4 = cbox:CreateBox("Domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_4
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_4"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam IOP Interact Gameplay|1460885309"
  l0.Enabled = self.f_box_Progression_Tag_Monitor_4_Enabled
  l0.Disabled = self.f_box_Progression_Tag_Monitor_4_Disabled
  l0.TagIsOwned = self.f_box_Progression_Tag_Monitor_4_TagIsOwned
  l0.Has = DummyFunction
  l0.HasNOT = DummyFunction
  self.box_MultipleOR_9 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_9
  l0._graph = self
  l0._name = "box_MultipleOR_9"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam IOP Interact Gameplay|1795770858"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_9_Out
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
  l0._name = "box_Test_if_Nil_5"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam IOP Interact Gameplay|1827583144"
  l0.Is_nil = self.f_box_Test_if_Nil_5_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_5_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam IOP Interact Gameplay|703517244", "703517244", "FreeRoam IOP Interact Gameplay", "Start", "box_Test_if_Nil_5.In", self, l0)
  l0:In()
end
function export:Stop()
  local l0
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_6"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam IOP Interact Gameplay|942481661"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_6_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_6_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam IOP Interact Gameplay|1117638480", "1117638480", "FreeRoam IOP Interact Gameplay", "Stop", "box_Ordered_Output_6.In", self, l0)
  l0:In()
end
function export:f_box_Simple_Node_7_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_9()
  l0 = self.box_MultipleOR_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam IOP Interact Gameplay|1452957664", "1452957664", "FreeRoam IOP Interact Gameplay", "box_Simple_Node_7.Out", "box_MultipleOR_9.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_10_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_2()
  l0 = self.box_MultipleOR_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam IOP Interact Gameplay|1543998404", "1543998404", "FreeRoam IOP Interact Gameplay", "box_Ordered_Output_10.Out", "box_MultipleOR_2.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_10_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Network_Surfing_Controller_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam IOP Interact Gameplay|56381246", "56381246", "FreeRoam IOP Interact Gameplay", "box_Ordered_Output_10.Out", "box_Network_Surfing_Controller_11.Deactivate", clone, l0)
  l0:Deactivate()
end
function export:f_box_MultipleOR_8_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_InteractGameplayController_1()
  l0 = self.box_MultipleOR_8
  l1 = self.box_InteractGameplayController_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam IOP Interact Gameplay|1444541215", "1444541215", "FreeRoam IOP Interact Gameplay", "box_MultipleOR_8.Out", "box_InteractGameplayController_1.Start", l0, l1)
  l1:Start()
end
function export:f_box_Progression_Tag_Monitor_3_HasNOT()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Progression_Tag_Monitor_4()
  l0 = self.box_Progression_Tag_Monitor_3
  l1 = self.box_Progression_Tag_Monitor_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam IOP Interact Gameplay|1435208859", "1435208859", "FreeRoam IOP Interact Gameplay", "box_Progression_Tag_Monitor_3.HasNOT", "box_Progression_Tag_Monitor_4.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Ordered_Output_6_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_2()
  l0 = self.box_MultipleOR_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam IOP Interact Gameplay|648451125", "648451125", "FreeRoam IOP Interact Gameplay", "box_Ordered_Output_6.Out", "box_MultipleOR_2.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_6_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam IOP Interact Gameplay|1772644549", "1772644549", "FreeRoam IOP Interact Gameplay", "box_Ordered_Output_6.Out", "Stopped", clone, self)
  self:Stopped()
end
function export:f_box_InteractGameplayController_1_Completed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_9()
  l0 = self.box_InteractGameplayController_1
  l1 = self.box_MultipleOR_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam IOP Interact Gameplay|522463461", "522463461", "FreeRoam IOP Interact Gameplay", "box_InteractGameplayController_1.Completed", "box_MultipleOR_9.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_InteractGameplayController_1_Started()
  local l0
  self = self._graph
  l0 = self.box_InteractGameplayController_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam IOP Interact Gameplay|1094448306", "1094448306", "FreeRoam IOP Interact Gameplay", "box_InteractGameplayController_1.Started", "Started", l0, self)
  self:Started()
end
function export:f_box_MultipleOR_2_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Progression_Tag_Monitor_4()
  l0 = self.box_MultipleOR_2
  l1 = self.box_Progression_Tag_Monitor_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam IOP Interact Gameplay|2049230879", "2049230879", "FreeRoam IOP Interact Gameplay", "box_MultipleOR_2.Out", "box_Progression_Tag_Monitor_4.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Network_Surfing_Controller_11_Deactivated()
  local l0
  self = self._graph
  l0 = self.box_Network_Surfing_Controller_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam IOP Interact Gameplay|910942117", "910942117", "FreeRoam IOP Interact Gameplay", "box_Network_Surfing_Controller_11.Deactivated", "Interacted", l0, self)
  self:Interacted()
end
function export:f_box_Progression_Tag_Monitor_4_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_InteractGameplayController_1()
  l0 = self.box_Progression_Tag_Monitor_4
  l1 = self.box_InteractGameplayController_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam IOP Interact Gameplay|694227833", "694227833", "FreeRoam IOP Interact Gameplay", "box_Progression_Tag_Monitor_4.Disabled", "box_InteractGameplayController_1.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_Progression_Tag_Monitor_4_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_8()
  l0 = self.box_Progression_Tag_Monitor_4
  l1 = self.box_MultipleOR_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam IOP Interact Gameplay|1190325880", "1190325880", "FreeRoam IOP Interact Gameplay", "box_Progression_Tag_Monitor_4.Enabled", "box_MultipleOR_8.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Progression_Tag_Monitor_4_TagIsOwned()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_7"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam IOP Interact Gameplay|84151131"
  l0.Out = self.f_box_Simple_Node_7_Out
  l0 = self.box_Progression_Tag_Monitor_4
  l1 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam IOP Interact Gameplay|1181652967", "1181652967", "FreeRoam IOP Interact Gameplay", "box_Progression_Tag_Monitor_4.TagIsOwned", "box_Simple_Node_7.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_9_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_10"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam IOP Interact Gameplay|145318496"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_10_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_10_Out_1
  l0 = self.box_MultipleOR_9
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam IOP Interact Gameplay|495494933", "495494933", "FreeRoam IOP Interact Gameplay", "box_MultipleOR_9.Out", "box_Ordered_Output_10.In", l0, l1)
  l1:In()
end
function export:f_box_Test_if_Nil_5_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_8()
  l0 = self.box_MultipleOR_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam IOP Interact Gameplay|660840099", "660840099", "FreeRoam IOP Interact Gameplay", "box_Test_if_Nil_5.Is_nil", "box_MultipleOR_8.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Test_if_Nil_5_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Progression_Tag_Monitor_3
  l0.ProgressionTag = self.ProgressionTag
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam IOP Interact Gameplay|1305979286", "1305979286", "FreeRoam IOP Interact Gameplay", "box_Test_if_Nil_5.Is_not_nil", "box_Progression_Tag_Monitor_3.HasProgressionTag", clone, l0)
  l0:HasProgressionTag()
end
function export:OnEnter_box_MultipleOR_8()
end
function export:OnEnter_box_InteractGameplayController_1()
  local l0
  l0 = self.box_InteractGameplayController_1
  l0.MarkerEntity = self.MapPoint
  l0.Entity = self.IOPBoxEntity
  l0.IsManagingInteraction = 0
  l0.UseStoryIcon = 1
end
function export:OnEnter_box_MultipleOR_2()
end
function export:OnEnter_box_Progression_Tag_Monitor_4()
  local l0
  l0 = self.box_Progression_Tag_Monitor_4
  l0.ProgressionTag = self.ProgressionTag
end
function export:OnEnter_box_MultipleOR_9()
end
function export:Started()
end
function export:Stopped()
end
function export:Interacted()
end
_compilerVersion = 4
