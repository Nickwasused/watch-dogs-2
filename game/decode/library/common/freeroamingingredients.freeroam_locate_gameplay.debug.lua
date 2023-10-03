export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/LocateGameplayController.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/ProgressionTagMonitor.lua")
  cbox:RegisterBox("Domino/System/SimpleNode.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
end
function export:Init(cbox)
  local l0
  self._name = "FreeRoam Locate Gameplay"
  self._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Locate Gameplay"
  self.Located = DummyFunction
  self.Stopped = DummyFunction
  self.Started = DummyFunction
  self.box_Progression_Tag_Monitor_8 = cbox:CreateBox("Domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_8
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_8"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Locate Gameplay|628987083"
  l0.Enabled = self.f_box_Progression_Tag_Monitor_8_Enabled
  l0.Disabled = self.f_box_Progression_Tag_Monitor_8_Disabled
  l0.TagIsOwned = self.f_box_Progression_Tag_Monitor_8_TagIsOwned
  l0.Has = DummyFunction
  l0.HasNOT = DummyFunction
  self.box_MultipleOR_6 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_6
  l0._graph = self
  l0._name = "box_MultipleOR_6"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Locate Gameplay|664566919"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_6_Out
  self.box_MultipleOR_1 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_1
  l0._graph = self
  l0._name = "box_MultipleOR_1"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Locate Gameplay|767690440"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_1_Out
  self.box_Progression_Tag_Monitor_7 = cbox:CreateBox("Domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_7
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_7"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Locate Gameplay|1573538489"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = DummyFunction
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_7_HasNOT
  self.box_LocateGameplayController_5 = cbox:CreateBox("Domino/System/LocateGameplayController.lua")
  l0 = self.box_LocateGameplayController_5
  l0._graph = self
  l0._name = "box_LocateGameplayController_5"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Locate Gameplay|2051162087"
  l0.Started = self.f_box_LocateGameplayController_5_Started
  l0.Stopped = DummyFunction
  l0.Completed = self.f_box_LocateGameplayController_5_Completed
  self.box_MultipleOR_10 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_10
  l0._graph = self
  l0._name = "box_MultipleOR_10"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Locate Gameplay|2135702182"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_10_Out
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
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Locate Gameplay|1806928606"
  l0.Is_nil = self.f_box_Test_if_Nil_9_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_9_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Locate Gameplay|1841325018", "1841325018", "FreeRoam Locate Gameplay", "Start", "box_Test_if_Nil_9.In", self, l0)
  l0:In()
end
function export:Stop()
  local l0
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_4"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Locate Gameplay|324867036"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_4_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_4_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Locate Gameplay|882666974", "882666974", "FreeRoam Locate Gameplay", "Stop", "box_Ordered_Output_4.In", self, l0)
  l0:In()
end
function export:f_box_Ordered_Output_4_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_6()
  l0 = self.box_MultipleOR_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Locate Gameplay|665962436", "665962436", "FreeRoam Locate Gameplay", "box_Ordered_Output_4.Out", "box_MultipleOR_6.Input", clone, l0)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Locate Gameplay|244750267", "244750267", "FreeRoam Locate Gameplay", "box_Ordered_Output_4.Out", "Stopped", clone, self)
  self:Stopped()
end
function export:f_box_Progression_Tag_Monitor_8_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_LocateGameplayController_5()
  l0 = self.box_Progression_Tag_Monitor_8
  l1 = self.box_LocateGameplayController_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Locate Gameplay|687573671", "687573671", "FreeRoam Locate Gameplay", "box_Progression_Tag_Monitor_8.Disabled", "box_LocateGameplayController_5.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_Progression_Tag_Monitor_8_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_10()
  l0 = self.box_Progression_Tag_Monitor_8
  l1 = self.box_MultipleOR_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Locate Gameplay|1057104871", "1057104871", "FreeRoam Locate Gameplay", "box_Progression_Tag_Monitor_8.Enabled", "box_MultipleOR_10.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Progression_Tag_Monitor_8_TagIsOwned()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_3"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Locate Gameplay|1918930272"
  l0.Out = self.f_box_Simple_Node_3_Out
  l0 = self.box_Progression_Tag_Monitor_8
  l1 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Locate Gameplay|485247089", "485247089", "FreeRoam Locate Gameplay", "box_Progression_Tag_Monitor_8.TagIsOwned", "box_Simple_Node_3.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_6_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Progression_Tag_Monitor_8()
  l0 = self.box_MultipleOR_6
  l1 = self.box_Progression_Tag_Monitor_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Locate Gameplay|2045045460", "2045045460", "FreeRoam Locate Gameplay", "box_MultipleOR_6.Out", "box_Progression_Tag_Monitor_8.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MultipleOR_1_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_2"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Locate Gameplay|1070277164"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_2_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_2_Out_1
  l0 = self.box_MultipleOR_1
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Locate Gameplay|64498273", "64498273", "FreeRoam Locate Gameplay", "box_MultipleOR_1.Out", "box_Ordered_Output_2.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_2_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_6()
  l0 = self.box_MultipleOR_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Locate Gameplay|1436223101", "1436223101", "FreeRoam Locate Gameplay", "box_Ordered_Output_2.Out", "box_MultipleOR_6.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_2_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Locate Gameplay|316390213", "316390213", "FreeRoam Locate Gameplay", "box_Ordered_Output_2.Out", "Located", clone, self)
  self:Located()
end
function export:f_box_Progression_Tag_Monitor_7_HasNOT()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Progression_Tag_Monitor_8()
  l0 = self.box_Progression_Tag_Monitor_7
  l1 = self.box_Progression_Tag_Monitor_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Locate Gameplay|890816160", "890816160", "FreeRoam Locate Gameplay", "box_Progression_Tag_Monitor_7.HasNOT", "box_Progression_Tag_Monitor_8.Enable", l0, l1)
  l1:Enable()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Locate Gameplay|1846896488", "1846896488", "FreeRoam Locate Gameplay", "box_Test_if_Nil_9.Is_nil", "box_MultipleOR_10.Input", clone, l0)
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
  l0 = self.box_Progression_Tag_Monitor_7
  l0.ProgressionTag = self.ProgressionTag
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Locate Gameplay|223277577", "223277577", "FreeRoam Locate Gameplay", "box_Test_if_Nil_9.Is_not_nil", "box_Progression_Tag_Monitor_7.HasProgressionTag", clone, l0)
  l0:HasProgressionTag()
end
function export:f_box_Simple_Node_3_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_1()
  l0 = self.box_MultipleOR_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Locate Gameplay|456883357", "456883357", "FreeRoam Locate Gameplay", "box_Simple_Node_3.Out", "box_MultipleOR_1.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_LocateGameplayController_5_Completed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_1()
  l0 = self.box_LocateGameplayController_5
  l1 = self.box_MultipleOR_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Locate Gameplay|1494008818", "1494008818", "FreeRoam Locate Gameplay", "box_LocateGameplayController_5.Completed", "box_MultipleOR_1.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_LocateGameplayController_5_Started()
  local l0
  self = self._graph
  l0 = self.box_LocateGameplayController_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Locate Gameplay|689031906", "689031906", "FreeRoam Locate Gameplay", "box_LocateGameplayController_5.Started", "Started", l0, self)
  self:Started()
end
function export:f_box_MultipleOR_10_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_LocateGameplayController_5()
  l0 = self.box_MultipleOR_10
  l1 = self.box_LocateGameplayController_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Locate Gameplay|206705797", "206705797", "FreeRoam Locate Gameplay", "box_MultipleOR_10.Out", "box_LocateGameplayController_5.Start", l0, l1)
  l1:Start()
end
function export:OnEnter_box_Progression_Tag_Monitor_8()
  local l0
  l0 = self.box_Progression_Tag_Monitor_8
  l0.ProgressionTag = self.ProgressionTag
end
function export:OnEnter_box_MultipleOR_6()
end
function export:OnEnter_box_MultipleOR_1()
end
function export:OnEnter_box_LocateGameplayController_5()
  local l0
  l0 = self.box_LocateGameplayController_5
  l0.MarkerLocId = self.MarkerLocId
  l0.TargetCLO = self.CLO
  l0.DistrictDB = self.DistrictsDB
  l0.UseStoryIcon = 1
end
function export:OnEnter_box_MultipleOR_10()
end
function export:Located()
end
function export:Stopped()
end
function export:Started()
end
_compilerVersion = 4
