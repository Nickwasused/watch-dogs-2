export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/ProgressionTagMonitor.lua")
  cbox:RegisterBox("Domino/System/ReachGameplayController.lua")
  cbox:RegisterBox("Domino/System/SimpleNode.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
end
function export:Init(cbox)
  local l0
  self._name = "FreeRoam Reach Gameplay"
  self._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Reach Gameplay"
  self.Stopped = DummyFunction
  self.Reached = DummyFunction
  self.Started = DummyFunction
  self.box_MultipleOR_6 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_6
  l0._graph = self
  l0._name = "box_MultipleOR_6"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Reach Gameplay|603289047"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_6_Out
  self.box_MultipleOR_10 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_10
  l0._graph = self
  l0._name = "box_MultipleOR_10"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Reach Gameplay|821086199"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_10_Out
  self.box_ReachGameplayController_4 = cbox:CreateBox("Domino/System/ReachGameplayController.lua")
  l0 = self.box_ReachGameplayController_4
  l0._graph = self
  l0._name = "box_ReachGameplayController_4"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Reach Gameplay|998395786"
  l0.Started = self.f_box_ReachGameplayController_4_Started
  l0.Stopped = DummyFunction
  l0.Completed = self.f_box_ReachGameplayController_4_Completed
  self.box_Progression_Tag_Monitor_2 = cbox:CreateBox("Domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_2
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_2"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Reach Gameplay|1347972621"
  l0.Enabled = self.f_box_Progression_Tag_Monitor_2_Enabled
  l0.Disabled = self.f_box_Progression_Tag_Monitor_2_Disabled
  l0.TagIsOwned = self.f_box_Progression_Tag_Monitor_2_TagIsOwned
  l0.Has = DummyFunction
  l0.HasNOT = DummyFunction
  self.box_MultipleOR_7 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_7
  l0._graph = self
  l0._name = "box_MultipleOR_7"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Reach Gameplay|1585670410"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_7_Out
  self.box_Progression_Tag_Monitor_3 = cbox:CreateBox("Domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_3
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_3"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Reach Gameplay|1678405417"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = DummyFunction
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_3_HasNOT
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
  l0._name = "box_Test_if_Nil_9"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Reach Gameplay|1653583281"
  l0.Is_nil = self.f_box_Test_if_Nil_9_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_9_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Reach Gameplay|273502378", "273502378", "FreeRoam Reach Gameplay", "Start", "box_Test_if_Nil_9.In", self, l0)
  l0:In()
end
function export:Stop()
  local l0
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_5"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Reach Gameplay|387046269"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_5_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_5_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Reach Gameplay|1840943998", "1840943998", "FreeRoam Reach Gameplay", "Stop", "box_Ordered_Output_5.In", self, l0)
  l0:In()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Reach Gameplay|2065581013", "2065581013", "FreeRoam Reach Gameplay", "box_Ordered_Output_5.Out", "box_MultipleOR_6.Input", clone, l0)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Reach Gameplay|350266088", "350266088", "FreeRoam Reach Gameplay", "box_Ordered_Output_5.Out", "Stopped", clone, self)
  self:Stopped()
end
function export:f_box_MultipleOR_6_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Progression_Tag_Monitor_2()
  l0 = self.box_MultipleOR_6
  l1 = self.box_Progression_Tag_Monitor_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Reach Gameplay|1577831898", "1577831898", "FreeRoam Reach Gameplay", "box_MultipleOR_6.Out", "box_Progression_Tag_Monitor_2.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MultipleOR_10_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_ReachGameplayController_4()
  l0 = self.box_MultipleOR_10
  l1 = self.box_ReachGameplayController_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Reach Gameplay|795959187", "795959187", "FreeRoam Reach Gameplay", "box_MultipleOR_10.Out", "box_ReachGameplayController_4.Start", l0, l1)
  l1:Start()
end
function export:f_box_ReachGameplayController_4_Completed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_7()
  l0 = self.box_ReachGameplayController_4
  l1 = self.box_MultipleOR_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Reach Gameplay|753391016", "753391016", "FreeRoam Reach Gameplay", "box_ReachGameplayController_4.Completed", "box_MultipleOR_7.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_ReachGameplayController_4_Started()
  local l0
  self = self._graph
  l0 = self.box_ReachGameplayController_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Reach Gameplay|690172772", "690172772", "FreeRoam Reach Gameplay", "box_ReachGameplayController_4.Started", "Started", l0, self)
  self:Started()
end
function export:f_box_Simple_Node_8_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_7()
  l0 = self.box_MultipleOR_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Reach Gameplay|682592614", "682592614", "FreeRoam Reach Gameplay", "box_Simple_Node_8.Out", "box_MultipleOR_7.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_1_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_6()
  l0 = self.box_MultipleOR_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Reach Gameplay|896111594", "896111594", "FreeRoam Reach Gameplay", "box_Ordered_Output_1.Out", "box_MultipleOR_6.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_1_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Reach Gameplay|1955224334", "1955224334", "FreeRoam Reach Gameplay", "box_Ordered_Output_1.Out", "Reached", clone, self)
  self:Reached()
end
function export:f_box_Progression_Tag_Monitor_2_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_ReachGameplayController_4()
  l0 = self.box_Progression_Tag_Monitor_2
  l1 = self.box_ReachGameplayController_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Reach Gameplay|980682889", "980682889", "FreeRoam Reach Gameplay", "box_Progression_Tag_Monitor_2.Disabled", "box_ReachGameplayController_4.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_Progression_Tag_Monitor_2_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_10()
  l0 = self.box_Progression_Tag_Monitor_2
  l1 = self.box_MultipleOR_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Reach Gameplay|914083976", "914083976", "FreeRoam Reach Gameplay", "box_Progression_Tag_Monitor_2.Enabled", "box_MultipleOR_10.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Progression_Tag_Monitor_2_TagIsOwned()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_8"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Reach Gameplay|1208112646"
  l0.Out = self.f_box_Simple_Node_8_Out
  l0 = self.box_Progression_Tag_Monitor_2
  l1 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Reach Gameplay|179403634", "179403634", "FreeRoam Reach Gameplay", "box_Progression_Tag_Monitor_2.TagIsOwned", "box_Simple_Node_8.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_7_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_1"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Reach Gameplay|1247483485"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_1_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_1_Out_1
  l0 = self.box_MultipleOR_7
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Reach Gameplay|1281392700", "1281392700", "FreeRoam Reach Gameplay", "box_MultipleOR_7.Out", "box_Ordered_Output_1.In", l0, l1)
  l1:In()
end
function export:f_box_Test_if_Nil_9_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_10()
  l0 = self.box_MultipleOR_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Reach Gameplay|653543767", "653543767", "FreeRoam Reach Gameplay", "box_Test_if_Nil_9.Is_nil", "box_MultipleOR_10.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Test_if_Nil_9_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Progression_Tag_Monitor_3
  l0.ProgressionTag = self.ProgressionTag
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Reach Gameplay|1853978648", "1853978648", "FreeRoam Reach Gameplay", "box_Test_if_Nil_9.Is_not_nil", "box_Progression_Tag_Monitor_3.HasProgressionTag", clone, l0)
  l0:HasProgressionTag()
end
function export:f_box_Progression_Tag_Monitor_3_HasNOT()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Progression_Tag_Monitor_2()
  l0 = self.box_Progression_Tag_Monitor_3
  l1 = self.box_Progression_Tag_Monitor_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Reach Gameplay|1303380818", "1303380818", "FreeRoam Reach Gameplay", "box_Progression_Tag_Monitor_3.HasNOT", "box_Progression_Tag_Monitor_2.Enable", l0, l1)
  l1:Enable()
end
function export:OnEnter_box_MultipleOR_6()
end
function export:OnEnter_box_MultipleOR_10()
end
function export:OnEnter_box_ReachGameplayController_4()
  local l0
  l0 = self.box_ReachGameplayController_4
  l0.MarkerLocId = self.MarkerLocId
  l0.MarkerEntity = self.MarkerEntity
  l0.Entity = self.Entity
  l0.MissionAreaEntity = self.MissionArea
  l0.AreaRadius = self.Entity_AreaRadius
  l0.UseStoryIcon = 1
  l0.AutoSetGPS = self.AutoGPS
end
function export:OnEnter_box_Progression_Tag_Monitor_2()
  local l0
  l0 = self.box_Progression_Tag_Monitor_2
  l0.ProgressionTag = self.ProgressionTag
end
function export:OnEnter_box_MultipleOR_7()
end
function export:Stopped()
end
function export:Reached()
end
function export:Started()
end
_compilerVersion = 4
