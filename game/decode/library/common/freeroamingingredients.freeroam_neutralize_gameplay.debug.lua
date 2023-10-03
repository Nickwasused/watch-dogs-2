export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/NeutralizeGameplayController.lua")
  cbox:RegisterBox("Domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/ProgressionTagMonitor.lua")
  cbox:RegisterBox("Domino/System/RewardComponentController_V3.lua")
  cbox:RegisterBox("Domino/System/SimpleNode.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
end
function export:Init(cbox)
  local l0
  self._name = "FreeRoam Neutralize Gameplay"
  self._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Neutralize Gameplay"
  self.Stopped = DummyFunction
  self.Started = DummyFunction
  self.Neutralized = DummyFunction
  self.box_OnceOnly_v3_12 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_12
  l0._graph = self
  l0._name = "box_OnceOnly_v3_12"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Neutralize Gameplay|85189469"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_12_Out
  l0.ResetOut = DummyFunction
  self.box_RewardController_v3_11 = cbox:CreateBox("Domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_11
  l0._graph = self
  l0._name = "box_RewardController_v3_11"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Neutralize Gameplay|411534623"
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_box_RewardController_v3_11_RewardsExecuted
  self.box_NeutralizeGameplayController_1 = cbox:CreateBox("Domino/System/NeutralizeGameplayController.lua")
  l0 = self.box_NeutralizeGameplayController_1
  l0._graph = self
  l0._name = "box_NeutralizeGameplayController_1"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Neutralize Gameplay|493119435"
  l0.Started = self.f_box_NeutralizeGameplayController_1_Started
  l0.Stopped = DummyFunction
  l0.Completed = self.f_box_NeutralizeGameplayController_1_Completed
  self.box_MultipleOR_10 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_10
  l0._graph = self
  l0._name = "box_MultipleOR_10"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Neutralize Gameplay|842369797"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_10_Out
  self.box_MultipleOR_6 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_6
  l0._graph = self
  l0._name = "box_MultipleOR_6"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Neutralize Gameplay|978048650"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_6_Out
  self.box_Progression_Tag_Monitor_2 = cbox:CreateBox("Domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_2
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_2"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Neutralize Gameplay|1349763933"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = DummyFunction
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_2_HasNOT
  self.box_MultipleOR_7 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_7
  l0._graph = self
  l0._name = "box_MultipleOR_7"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Neutralize Gameplay|1858639059"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_7_Out
  self.box_Progression_Tag_Monitor_3 = cbox:CreateBox("Domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_3
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_3"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Neutralize Gameplay|1944250893"
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
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Neutralize Gameplay|956882978"
  l0.Is_nil = self.f_box_Test_if_Nil_9_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_9_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Neutralize Gameplay|1672532685", "1672532685", "FreeRoam Neutralize Gameplay", "Start", "box_Test_if_Nil_9.In", self, l0)
  l0:In()
end
function export:Stop()
  local l0
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_4"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Neutralize Gameplay|1969453754"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_4_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_4_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Neutralize Gameplay|264248186", "264248186", "FreeRoam Neutralize Gameplay", "Stop", "box_Ordered_Output_4.In", self, l0)
  l0:In()
end
function export:f_box_OnceOnly_v3_12_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_5"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Neutralize Gameplay|1396196988"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_5_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_5_Out_1
  l0 = self.box_OnceOnly_v3_12
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Neutralize Gameplay|463866839", "463866839", "FreeRoam Neutralize Gameplay", "box_OnceOnly_v3_12.Out", "box_Ordered_Output_5.In", l0, l1)
  l1:In()
end
function export:f_box_RewardController_v3_11_RewardsExecuted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_7()
  l0 = self.box_RewardController_v3_11
  l1 = self.box_MultipleOR_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Neutralize Gameplay|583566258", "583566258", "FreeRoam Neutralize Gameplay", "box_RewardController_v3_11.RewardsExecuted", "box_MultipleOR_7.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_NeutralizeGameplayController_1_Completed()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_11
  l0.ItemDB = self.ProgressionTagItem
  l0 = self.box_NeutralizeGameplayController_1
  l1 = self.box_RewardController_v3_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Neutralize Gameplay|752690397", "752690397", "FreeRoam Neutralize Gameplay", "box_NeutralizeGameplayController_1.Completed", "box_RewardController_v3_11.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_NeutralizeGameplayController_1_Started()
  local l0
  self = self._graph
  l0 = self.box_NeutralizeGameplayController_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Neutralize Gameplay|60244885", "60244885", "FreeRoam Neutralize Gameplay", "box_NeutralizeGameplayController_1.Started", "Started", l0, self)
  self:Started()
end
function export:f_box_MultipleOR_10_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_NeutralizeGameplayController_1()
  l0 = self.box_MultipleOR_10
  l1 = self.box_NeutralizeGameplayController_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Neutralize Gameplay|1272423949", "1272423949", "FreeRoam Neutralize Gameplay", "box_MultipleOR_10.Out", "box_NeutralizeGameplayController_1.Start", l0, l1)
  l1:Start()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Neutralize Gameplay|1643928125", "1643928125", "FreeRoam Neutralize Gameplay", "box_Test_if_Nil_9.Is_nil", "box_MultipleOR_10.Input", clone, l0)
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
  l0 = self.box_Progression_Tag_Monitor_2
  l0.ProgressionTag = self.ProgressionTag
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Neutralize Gameplay|473908544", "473908544", "FreeRoam Neutralize Gameplay", "box_Test_if_Nil_9.Is_not_nil", "box_Progression_Tag_Monitor_2.HasProgressionTag", clone, l0)
  l0:HasProgressionTag()
end
function export:f_box_MultipleOR_6_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Progression_Tag_Monitor_3()
  l0 = self.box_MultipleOR_6
  l1 = self.box_Progression_Tag_Monitor_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Neutralize Gameplay|1209408904", "1209408904", "FreeRoam Neutralize Gameplay", "box_MultipleOR_6.Out", "box_Progression_Tag_Monitor_3.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Progression_Tag_Monitor_2_HasNOT()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Progression_Tag_Monitor_3()
  l0 = self.box_Progression_Tag_Monitor_2
  l1 = self.box_Progression_Tag_Monitor_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Neutralize Gameplay|1467752241", "1467752241", "FreeRoam Neutralize Gameplay", "box_Progression_Tag_Monitor_2.HasNOT", "box_Progression_Tag_Monitor_3.Enable", l0, l1)
  l1:Enable()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Neutralize Gameplay|1044825097", "1044825097", "FreeRoam Neutralize Gameplay", "box_Ordered_Output_5.Out", "box_MultipleOR_6.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_5_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Neutralize Gameplay|1065276177", "1065276177", "FreeRoam Neutralize Gameplay", "box_Ordered_Output_5.Out", "Neutralized", clone, self)
  self:Neutralized()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Neutralize Gameplay|2043321134", "2043321134", "FreeRoam Neutralize Gameplay", "box_Simple_Node_8.Out", "box_MultipleOR_7.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_MultipleOR_7_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MultipleOR_7
  l1 = self.box_OnceOnly_v3_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Neutralize Gameplay|1981582965", "1981582965", "FreeRoam Neutralize Gameplay", "box_MultipleOR_7.Out", "box_OnceOnly_v3_12.In", l0, l1)
  l1:In(0)
end
function export:f_box_Progression_Tag_Monitor_3_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_NeutralizeGameplayController_1()
  l0 = self.box_Progression_Tag_Monitor_3
  l1 = self.box_NeutralizeGameplayController_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Neutralize Gameplay|1233162102", "1233162102", "FreeRoam Neutralize Gameplay", "box_Progression_Tag_Monitor_3.Disabled", "box_NeutralizeGameplayController_1.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_Progression_Tag_Monitor_3_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_10()
  l0 = self.box_Progression_Tag_Monitor_3
  l1 = self.box_MultipleOR_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Neutralize Gameplay|941046788", "941046788", "FreeRoam Neutralize Gameplay", "box_Progression_Tag_Monitor_3.Enabled", "box_MultipleOR_10.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Progression_Tag_Monitor_3_TagIsOwned()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_8"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Neutralize Gameplay|1603950551"
  l0.Out = self.f_box_Simple_Node_8_Out
  l0 = self.box_Progression_Tag_Monitor_3
  l1 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Neutralize Gameplay|776695159", "776695159", "FreeRoam Neutralize Gameplay", "box_Progression_Tag_Monitor_3.TagIsOwned", "box_Simple_Node_8.In", l0, l1)
  l1:In()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Neutralize Gameplay|648000112", "648000112", "FreeRoam Neutralize Gameplay", "box_Ordered_Output_4.Out", "box_MultipleOR_6.Input", clone, l0)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Neutralize Gameplay|1507484856", "1507484856", "FreeRoam Neutralize Gameplay", "box_Ordered_Output_4.Out", "Stopped", clone, self)
  self:Stopped()
end
function export:OnEnter_box_NeutralizeGameplayController_1()
  local l0
  l0 = self.box_NeutralizeGameplayController_1
  l0.MarkerLocId = self.MarkerLocId
  l0.CLO = self.CLO
  l0.UseStoryIcon = 1
end
function export:OnEnter_box_MultipleOR_10()
end
function export:OnEnter_box_MultipleOR_6()
end
function export:OnEnter_box_MultipleOR_7()
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
function export:Neutralized()
end
_compilerVersion = 4
