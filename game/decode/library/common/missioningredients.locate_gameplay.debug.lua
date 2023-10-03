export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/KeyIntelController.lua")
  cbox:RegisterBox("Domino/System/LineOfSightMonitor.lua")
  cbox:RegisterBox("Domino/System/LocateGameplayController.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/PlayerProximityMonitor.lua")
  cbox:RegisterBox("Domino/System/SimpleNode.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
end
function export:Init(cbox)
  local l0
  self._name = "Locate Gameplay"
  self._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Locate Gameplay"
  self.Located = DummyFunction
  self.Stopped = DummyFunction
  self.Started = DummyFunction
  self.box_MultipleOR_6 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_6
  l0._graph = self
  l0._name = "box_MultipleOR_6"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Locate Gameplay|166097254"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_6_Out
  self.box_Player_Proximity_Monitor_12 = cbox:CreateBox("Domino/System/PlayerProximityMonitor.lua")
  l0 = self.box_Player_Proximity_Monitor_12
  l0._graph = self
  l0._name = "box_Player_Proximity_Monitor_12"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Locate Gameplay|606033057"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Player_Proximity_Monitor_12_Disabled
  l0.EnterRadius = self.f_box_Player_Proximity_Monitor_12_EnterRadius
  l0.ExitRadius = self.f_box_Player_Proximity_Monitor_12_ExitRadius
  l0.RCEnterRadius = DummyFunction
  l0.RCExitRadius = DummyFunction
  self.box_MultipleOR_17 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_17
  l0._graph = self
  l0._name = "box_MultipleOR_17"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Locate Gameplay|794803639"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_17_Out
  self.box_KeyIntel_Controller_9 = cbox:CreateBox("Domino/System/KeyIntelController.lua")
  l0 = self.box_KeyIntel_Controller_9
  l0._graph = self
  l0._name = "box_KeyIntel_Controller_9"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Locate Gameplay|1000805070"
  l0.Set = self.f_box_KeyIntel_Controller_9_Set
  l0.Reset = DummyFunction
  self.box_MultipleOR_15 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_15
  l0._graph = self
  l0._name = "box_MultipleOR_15"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Locate Gameplay|1007772095"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_15_Out
  self.box_MultipleOR_19 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_19
  l0._graph = self
  l0._name = "box_MultipleOR_19"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Locate Gameplay|1039446302"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_19_Out
  self.box_MultipleOR_10 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_10
  l0._graph = self
  l0._name = "box_MultipleOR_10"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Locate Gameplay|1249985604"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_10_Out
  self.box_LineOfSightMonitor_14 = cbox:CreateBox("Domino/System/LineOfSightMonitor.lua")
  l0 = self.box_LineOfSightMonitor_14
  l0._graph = self
  l0._name = "box_LineOfSightMonitor_14"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Locate Gameplay|2033890449"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.LOSAcquired = self.f_box_LineOfSightMonitor_14_LOSAcquired
  l0.LOSLost = DummyFunction
  self.box_LocateGameplayController_5 = cbox:CreateBox("Domino/System/LocateGameplayController.lua")
  l0 = self.box_LocateGameplayController_5
  l0._graph = self
  l0._name = "box_LocateGameplayController_5"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Locate Gameplay|2051162087"
  l0.Started = self.f_box_LocateGameplayController_5_Started
  l0.Stopped = self.f_box_LocateGameplayController_5_Stopped
  l0.Completed = self.f_box_LocateGameplayController_5_Completed
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
  self:OnEnter_box_LocateGameplayController_5()
  l0 = self.box_LocateGameplayController_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Locate Gameplay|362052720", "362052720", "Locate Gameplay", "Start", "box_LocateGameplayController_5.Start", self, l0)
  l0:Start()
end
function export:Stop()
  local l0
  self:OnEnter_box_MultipleOR_17()
  l0 = self.box_MultipleOR_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Locate Gameplay|1933426143", "1933426143", "Locate Gameplay", "Stop", "box_MultipleOR_17.Input", self, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_4_Out_0()
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
  l0.Entity = self.EntityToLocate
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_20"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Locate Gameplay|1054151895"
  l0.Is_nil = DummyFunction
  l0.Is_not_nil = self.f_box_Test_if_Nil_20_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Locate Gameplay|1989620525", "1989620525", "Locate Gameplay", "box_Ordered_Output_4.Out", "box_Test_if_Nil_20.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_4_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Locate Gameplay|764982190", "764982190", "Locate Gameplay", "box_Ordered_Output_4.Out", "Started", clone, self)
  self:Started()
end
function export:f_box_MultipleOR_6_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Player_Proximity_Monitor_12()
  l0 = self.box_MultipleOR_6
  l1 = self.box_Player_Proximity_Monitor_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Locate Gameplay|277138733", "277138733", "Locate Gameplay", "box_MultipleOR_6.Out", "box_Player_Proximity_Monitor_12.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Player_Proximity_Monitor_12_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_19()
  l0 = self.box_Player_Proximity_Monitor_12
  l1 = self.box_MultipleOR_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Locate Gameplay|122985263", "122985263", "Locate Gameplay", "box_Player_Proximity_Monitor_12.Disabled", "box_MultipleOR_19.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Player_Proximity_Monitor_12_EnterRadius()
  local l0, l1
  self = self._graph
  self:OnEnter_box_LineOfSightMonitor_14()
  l0 = self.box_Player_Proximity_Monitor_12
  l1 = self.box_LineOfSightMonitor_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Locate Gameplay|1273311375", "1273311375", "Locate Gameplay", "box_Player_Proximity_Monitor_12.EnterRadius", "box_LineOfSightMonitor_14.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Player_Proximity_Monitor_12_ExitRadius()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_19()
  l0 = self.box_Player_Proximity_Monitor_12
  l1 = self.box_MultipleOR_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Locate Gameplay|749591721", "749591721", "Locate Gameplay", "box_Player_Proximity_Monitor_12.ExitRadius", "box_MultipleOR_19.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MultipleOR_17_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_LocateGameplayController_5()
  l0 = self.box_MultipleOR_17
  l1 = self.box_LocateGameplayController_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Locate Gameplay|1480766072", "1480766072", "Locate Gameplay", "box_MultipleOR_17.Out", "box_LocateGameplayController_5.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_Test_if_Nil_7_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_10()
  l0 = self.box_MultipleOR_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Locate Gameplay|960315604", "960315604", "Locate Gameplay", "box_Test_if_Nil_7.Is_nil", "box_MultipleOR_10.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Test_if_Nil_7_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
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
  l0.Oasis = self.KeyIntelInfo
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_8"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Locate Gameplay|869117068"
  l0.Is_nil = self.f_box_Test_if_Nil_8_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_8_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Locate Gameplay|1317976639", "1317976639", "Locate Gameplay", "box_Test_if_Nil_7.Is_not_nil", "box_Test_if_Nil_8.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_8_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_10()
  l0 = self.box_MultipleOR_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Locate Gameplay|218358297", "218358297", "Locate Gameplay", "box_Test_if_Nil_8.Is_nil", "box_MultipleOR_10.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Test_if_Nil_8_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_KeyIntel_Controller_9
  l0.Entity = self.EntityToLocate
  l0.KeyIntelInfo = self.KeyIntelInfo
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Locate Gameplay|1694587078", "1694587078", "Locate Gameplay", "box_Test_if_Nil_8.Is_not_nil", "box_KeyIntel_Controller_9.SetKeyIntel", clone, l0)
  l0:SetKeyIntel()
end
function export:f_box_KeyIntel_Controller_9_Set()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_10()
  l0 = self.box_KeyIntel_Controller_9
  l1 = self.box_MultipleOR_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Locate Gameplay|915909964", "915909964", "Locate Gameplay", "box_KeyIntel_Controller_9.Set", "box_MultipleOR_10.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_MultipleOR_15_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_2"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Locate Gameplay|1465516063"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_2_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_2_Out_1
  l0 = self.box_MultipleOR_15
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Locate Gameplay|695154573", "695154573", "Locate Gameplay", "box_MultipleOR_15.Out", "box_Ordered_Output_2.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_19_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_LineOfSightMonitor_14()
  l0 = self.box_MultipleOR_19
  l1 = self.box_LineOfSightMonitor_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Locate Gameplay|450293164", "450293164", "Locate Gameplay", "box_MultipleOR_19.Out", "box_LineOfSightMonitor_14.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Test_if_Nil_20_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Player_Proximity_Monitor_12()
  l0 = self.box_Player_Proximity_Monitor_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Locate Gameplay|987158739", "987158739", "Locate Gameplay", "box_Test_if_Nil_20.Is_not_nil", "box_Player_Proximity_Monitor_12.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Simple_Node_21_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_15()
  l0 = self.box_MultipleOR_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Locate Gameplay|221070712", "221070712", "Locate Gameplay", "box_Simple_Node_21.Out", "box_MultipleOR_15.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_MultipleOR_10_Out()
  local l0
  self = self._graph
  l0 = self.box_MultipleOR_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Locate Gameplay|1949944631", "1949944631", "Locate Gameplay", "box_MultipleOR_10.Out", "Located", l0, self)
  self:Located()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Locate Gameplay|2089971324", "2089971324", "Locate Gameplay", "box_Ordered_Output_2.Out", "box_MultipleOR_6.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_2_Out_1()
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
  l0.Entity = self.EntityToLocate
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_7"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Locate Gameplay|821938966"
  l0.Is_nil = self.f_box_Test_if_Nil_7_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_7_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Locate Gameplay|12230544", "12230544", "Locate Gameplay", "box_Ordered_Output_2.Out", "box_Test_if_Nil_7.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_16_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_17()
  l0 = self.box_MultipleOR_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Locate Gameplay|791589097", "791589097", "Locate Gameplay", "box_Ordered_Output_16.Out", "box_MultipleOR_17.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_16_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_15()
  l0 = self.box_MultipleOR_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Locate Gameplay|1580264640", "1580264640", "Locate Gameplay", "box_Ordered_Output_16.Out", "box_MultipleOR_15.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_1_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Locate Gameplay|234612016", "234612016", "Locate Gameplay", "box_Ordered_Output_1.Out", "Stopped", clone, self)
  self:Stopped()
end
function export:f_box_Ordered_Output_1_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_6()
  l0 = self.box_MultipleOR_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Locate Gameplay|1934575894", "1934575894", "Locate Gameplay", "box_Ordered_Output_1.Out", "box_MultipleOR_6.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_LineOfSightMonitor_14_LOSAcquired()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_16"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Locate Gameplay|1604992447"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_16_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_16_Out_1
  l0 = self.box_LineOfSightMonitor_14
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Locate Gameplay|91970499", "91970499", "Locate Gameplay", "box_LineOfSightMonitor_14.LOSAcquired", "box_Ordered_Output_16.In", l0, l1)
  l1:In()
end
function export:f_box_LocateGameplayController_5_Completed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_21"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Locate Gameplay|1084839022"
  l0.Out = self.f_box_Simple_Node_21_Out
  l0 = self.box_LocateGameplayController_5
  l1 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Locate Gameplay|1606175617", "1606175617", "Locate Gameplay", "box_LocateGameplayController_5.Completed", "box_Simple_Node_21.In", l0, l1)
  l1:In()
end
function export:f_box_LocateGameplayController_5_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_4"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Locate Gameplay|66022403"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_4_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_4_Out_1
  l0 = self.box_LocateGameplayController_5
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Locate Gameplay|1003950966", "1003950966", "Locate Gameplay", "box_LocateGameplayController_5.Started", "box_Ordered_Output_4.In", l0, l1)
  l1:In()
end
function export:f_box_LocateGameplayController_5_Stopped()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_1"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Locate Gameplay|1969239569"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_1_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_1_Out_1
  l0 = self.box_LocateGameplayController_5
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Locate Gameplay|501400443", "501400443", "Locate Gameplay", "box_LocateGameplayController_5.Stopped", "box_Ordered_Output_1.In", l0, l1)
  l1:In()
end
function export:OnEnter_box_MultipleOR_6()
end
function export:OnEnter_box_Player_Proximity_Monitor_12()
  local l0
  l0 = self.box_Player_Proximity_Monitor_12
  l0.TargetEntity = self.EntityToLocate
  l0.Radius = 8
end
function export:OnEnter_box_MultipleOR_17()
end
function export:OnEnter_box_MultipleOR_15()
end
function export:OnEnter_box_MultipleOR_19()
end
function export:OnEnter_box_MultipleOR_10()
end
function export:OnEnter_box_LineOfSightMonitor_14()
  local l0
  l0 = self.box_LineOfSightMonitor_14
  l0.Target = self.EntityToLocate
end
function export:OnEnter_box_LocateGameplayController_5()
  local l0
  l0 = self.box_LocateGameplayController_5
  l0.MarkerLocId = self.MarkerLocId
  l0.TargetEntity = self.EntityToLocate
  l0.TargetCLO = self.CLO
  l0.MissionAreaEntity = self.MissionArea
end
function export:Located()
end
function export:Stopped()
end
function export:Started()
end
_compilerVersion = 4
