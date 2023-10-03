export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/EscapeGameplayController.lua")
  cbox:RegisterBox("Domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("Domino/System/MissionZoneController.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/PlayerConflictMonitor.lua")
  cbox:RegisterBox("Domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
end
function export:Init(cbox)
  local l0
  self._name = "Escape Gameplay"
  self._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Escape Gameplay"
  self.Stopped = DummyFunction
  self.Started = DummyFunction
  self.Escaped = DummyFunction
  self.LeftArea = DummyFunction
  self.Felony = 0
  self.Vanished = 0
  self.EvadedFelony = 0
  self.SafeFrom_SFPD = 0
  self.SafeFrom_OPD = 0
  self.SafeFrom_CorruptCops = 0
  self.SafeFrom_AFI = 0
  self.SafeFrom_P8 = 0
  self.SafeFrom_T13 = 0
  self.SafeFrom_Boys = 0
  self.SafeFrom_Ridaz = 0
  self.SafeFrom_Uzulu = 0
  self.SafeFrom_Bratva = 0
  self.SafeFrom_Wolves = 0
  self.SafeFrom_Emergency = 0
  self.ConflictTriggered = 0
  self.box_SetBoolean_v2_13 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_13
  l0._graph = self
  l0._name = "box_SetBoolean_v2_13"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Escape Gameplay|107362716"
  l0.Out = self.f_box_SetBoolean_v2_13_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_13_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_13_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_13_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_13_SetFromBool
  self.box_MultipleOR_5 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_5
  l0._graph = self
  l0._name = "box_MultipleOR_5"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Escape Gameplay|229159387"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_5_Out
  self.box_EscapeGameplayController_1 = cbox:CreateBox("Domino/System/EscapeGameplayController.lua")
  l0 = self.box_EscapeGameplayController_1
  l0._graph = self
  l0._name = "box_EscapeGameplayController_1"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Escape Gameplay|277662610"
  l0.Started = self.f_box_EscapeGameplayController_1_Started
  l0.Stopped = self.f_box_EscapeGameplayController_1_Stopped
  l0.Completed = self.f_box_EscapeGameplayController_1_Completed
  self.box_MultipleOR_7 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_7
  l0._graph = self
  l0._name = "box_MultipleOR_7"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Escape Gameplay|735471841"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_7_Out
  self.box_Player_Conflict_Monitor_11 = cbox:CreateBox("Domino/System/PlayerConflictMonitor.lua")
  l0 = self.box_Player_Conflict_Monitor_11
  l0._graph = self
  l0._name = "box_Player_Conflict_Monitor_11"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Escape Gameplay|1175545612"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.InConflict = self.f_box_Player_Conflict_Monitor_11_InConflict
  l0.NOTInConflict = self.f_box_Player_Conflict_Monitor_11_NOTInConflict
  self.box_MissionMessageController_v3_152 = cbox:CreateBox("Domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_152
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_152"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Escape Gameplay|1295382702"
  l0.Out = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_MissionMessageController_v3_151 = cbox:CreateBox("Domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_151
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_151"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Escape Gameplay|1592579736"
  l0.Out = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_SetBoolean_v2_2 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_2
  l0._graph = self
  l0._name = "box_SetBoolean_v2_2"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Escape Gameplay|1737816119"
  l0.Out = self.f_box_SetBoolean_v2_2_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_2_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_2_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_2_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_2_SetFromBool
  self.box_MissionMessageController_v3_6 = cbox:CreateBox("Domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_6
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_6"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Escape Gameplay|1865189766"
  l0.Out = self.f_box_MissionMessageController_v3_6_Out
  l0.MessageCompleted = DummyFunction
  self.box_MultipleOR_100 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_100
  l0._graph = self
  l0._name = "box_MultipleOR_100"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Escape Gameplay|1897188562"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_100_Out
  self.box_OnceOnly_v3_8 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_8
  l0._graph = self
  l0._name = "box_OnceOnly_v3_8"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Escape Gameplay|2064118255"
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_box_OnceOnly_v3_8_Out
  l0.ResetOut = DummyFunction
  self.box_OnceOnly_v3_3 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_3
  l0._graph = self
  l0._name = "box_OnceOnly_v3_3"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Escape Gameplay|2094947874"
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_box_OnceOnly_v3_3_Out
  l0.ResetOut = DummyFunction
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
  self:OnEnter_box_OnceOnly_v3_3()
  l0 = self.box_OnceOnly_v3_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Escape Gameplay|1294320943", "1294320943", "Escape Gameplay", "Start", "box_OnceOnly_v3_3.Reset", self, l0)
  l0:Reset()
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.MissionArea
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_99"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Escape Gameplay|1363836182"
  l0.Is_nil = self.f_box_Test_if_Nil_99_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_99_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Escape Gameplay|285490639", "285490639", "Escape Gameplay", "Start", "box_Test_if_Nil_99.In", self, l0)
  l0:In()
  self:OnEnter_box_OnceOnly_v3_8()
  l0 = self.box_OnceOnly_v3_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Escape Gameplay|2074291133", "2074291133", "Escape Gameplay", "Start", "box_OnceOnly_v3_8.Reset", self, l0)
  l0:Reset()
end
function export:Stop()
  local l0
  self:OnEnter_box_EscapeGameplayController_1()
  l0 = self.box_EscapeGameplayController_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Escape Gameplay|817571397", "817571397", "Escape Gameplay", "Stop", "box_EscapeGameplayController_1.Stop", self, l0)
  l0:Stop()
end
function export:f_box_SetBoolean_v2_13_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_13
  self.ConflictTriggered = l0.Target
end
function export:f_box_SetBoolean_v2_13_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_13
  self.ConflictTriggered = l0.Target
end
function export:f_box_SetBoolean_v2_13_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_13
  self.ConflictTriggered = l0.Target
end
function export:f_box_SetBoolean_v2_13_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_13
  self.ConflictTriggered = l0.Target
end
function export:f_box_SetBoolean_v2_13_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_13
  self.ConflictTriggered = l0.Target
end
function export:f_box_MultipleOR_5_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_EscapeGameplayController_1()
  l0 = self.box_MultipleOR_5
  l1 = self.box_EscapeGameplayController_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Escape Gameplay|1974872865", "1974872865", "Escape Gameplay", "box_MultipleOR_5.Out", "box_EscapeGameplayController_1.Start", l0, l1)
  l1:Start()
end
function export:f_box_EscapeGameplayController_1_Completed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_12"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Escape Gameplay|1130281978"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_12_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_12_Out_1
  l0 = self.box_EscapeGameplayController_1
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Escape Gameplay|306322934", "306322934", "Escape Gameplay", "box_EscapeGameplayController_1.Completed", "box_Ordered_Output_12.In", l0, l1)
  l1:In()
end
function export:f_box_EscapeGameplayController_1_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_8()
  l0 = self.box_EscapeGameplayController_1
  l1 = self.box_OnceOnly_v3_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Escape Gameplay|1501076627", "1501076627", "Escape Gameplay", "box_EscapeGameplayController_1.Started", "box_OnceOnly_v3_8.In", l0, l1)
  l1:In(0)
end
function export:f_box_EscapeGameplayController_1_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_3()
  l0 = self.box_EscapeGameplayController_1
  l1 = self.box_OnceOnly_v3_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Escape Gameplay|280584787", "280584787", "Escape Gameplay", "box_EscapeGameplayController_1.Stopped", "box_OnceOnly_v3_3.In", l0, l1)
  l1:In(0)
end
function export:f_box_Test_if_Nil_150_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_151
  l0.Objective = {
    section = "MISSIONS.COMMON.MESSAGES.OBJECTIVE",
    item = "Objective_Escape",
    id = "693233"
  }
  l0.HasObjectiveMarker = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Escape Gameplay|809212302", "809212302", "Escape Gameplay", "box_Test_if_Nil_150.Is_nil", "box_MissionMessageController_v3_151.UpdateObjective", clone, l0)
  l0:UpdateObjective()
end
function export:f_box_Test_if_Nil_150_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_152
  l0.Objective = self.EscapeFelonyLocID
  l0.HasObjectiveMarker = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Escape Gameplay|1647114299", "1647114299", "Escape Gameplay", "box_Test_if_Nil_150.Is_not_nil", "box_MissionMessageController_v3_152.UpdateObjective", clone, l0)
  l0:UpdateObjective()
end
function export:f_box_Ordered_Output_9_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Escape Gameplay|2030989994", "2030989994", "Escape Gameplay", "box_Ordered_Output_9.Out", "Stopped", clone, self)
  self:Stopped()
end
function export:f_box_Ordered_Output_9_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_7()
  l0 = self.box_MultipleOR_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Escape Gameplay|1789198501", "1789198501", "Escape Gameplay", "box_Ordered_Output_9.Out", "box_MultipleOR_7.Input", clone, l0)
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
  l0 = self.box_SetBoolean_v2_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Escape Gameplay|2052858217", "2052858217", "Escape Gameplay", "box_Ordered_Output_4.Out", "box_SetBoolean_v2_13.True", clone, l0)
  l0:True()
end
function export:f_box_Ordered_Output_4_Out_1()
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
  l0.Oasis = self.EscapeFelonyLocID
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_150"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Escape Gameplay|412105447"
  l0.Is_nil = self.f_box_Test_if_Nil_150_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_150_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Escape Gameplay|1242712713", "1242712713", "Escape Gameplay", "box_Ordered_Output_4.Out", "box_Test_if_Nil_150.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_7_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Player_Conflict_Monitor_11()
  l0 = self.box_MultipleOR_7
  l1 = self.box_Player_Conflict_Monitor_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Escape Gameplay|1238305756", "1238305756", "Escape Gameplay", "box_MultipleOR_7.Out", "box_Player_Conflict_Monitor_11.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MissionZoneController_v2_94_PropertiesUpdated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/MissionZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_100()
  l0 = self.box_MultipleOR_100
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Escape Gameplay|523140339", "523140339", "Escape Gameplay", "box_MissionZoneController_v2_94.PropertiesUpdated", "box_MultipleOR_100.Input", clone, l0)
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
  self:OnEnter_box_MultipleOR_7()
  l0 = self.box_MultipleOR_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Escape Gameplay|971297063", "971297063", "Escape Gameplay", "box_Ordered_Output_10.Out", "box_MultipleOR_7.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_10_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.ConflictTriggered
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_14"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Escape Gameplay|1140778892"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_14_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_14_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Escape Gameplay|1277088599", "1277088599", "Escape Gameplay", "box_Ordered_Output_10.Out", "box_Compare_Boolean_v2_14.In", clone, l0)
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
  self:OnEnter_box_Player_Conflict_Monitor_11()
  l0 = self.box_Player_Conflict_Monitor_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Escape Gameplay|778910087", "778910087", "Escape Gameplay", "box_Ordered_Output_12.Out", "box_Player_Conflict_Monitor_11.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_12_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Escape Gameplay|990033212", "990033212", "Escape Gameplay", "box_Ordered_Output_12.Out", "LeftArea", clone, self)
  self:LeftArea()
end
function export:f_box_Compare_Boolean_v2_14_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Escape Gameplay|1336406721", "1336406721", "Escape Gameplay", "box_Compare_Boolean_v2_14.A_is_False", "Escaped", clone, self)
  self:Escaped()
end
function export:f_box_Compare_Boolean_v2_14_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Escape Gameplay|57131285", "57131285", "Escape Gameplay", "box_Compare_Boolean_v2_14.A_is_True", "box_SetBoolean_v2_2.False", clone, l0)
  l0:False()
end
function export:f_box_Player_Conflict_Monitor_11_InConflict()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_4"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Escape Gameplay|494515837"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_4_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_4_Out_1
  l0 = self.box_Player_Conflict_Monitor_11
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Escape Gameplay|1314189513", "1314189513", "Escape Gameplay", "box_Player_Conflict_Monitor_11.InConflict", "box_Ordered_Output_4.In", l0, l1)
  l1:In()
end
function export:f_box_Player_Conflict_Monitor_11_NOTInConflict()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_10"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Escape Gameplay|1018670573"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_10_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_10_Out_1
  l0 = self.box_Player_Conflict_Monitor_11
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Escape Gameplay|257116769", "257116769", "Escape Gameplay", "box_Player_Conflict_Monitor_11.NOTInConflict", "box_Ordered_Output_10.In", l0, l1)
  l1:In()
end
function export:f_box_Test_if_Nil_99_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_100()
  l0 = self.box_MultipleOR_100
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Escape Gameplay|1776642701", "1776642701", "Escape Gameplay", "box_Test_if_Nil_99.Is_nil", "box_MultipleOR_100.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Test_if_Nil_99_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/MissionZoneController.lua")]
  l0.MissionZone = self.MissionArea
  l0.Red = nil
  l0.Green = nil
  l0.Blue = nil
  l0.Alpha = nil
  l0.Radius = nil
  l0.DrawType = "Inside"
  l0.ShapeType = nil
  l0.MinimapContext = nil
  l0.ObjectiveEnteringArea = nil
  l0.ObjectiveExitingArea = nil
  l0._graph = self
  l0._name = "box_MissionZoneController_v2_94"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Escape Gameplay|940367149"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.PropertiesUpdated = self.f_box_MissionZoneController_v2_94_PropertiesUpdated
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Escape Gameplay|1241173815", "1241173815", "Escape Gameplay", "box_Test_if_Nil_99.Is_not_nil", "box_MissionZoneController_v2_94.UpdateProperties", clone, l0)
  l0:UpdateProperties()
end
function export:f_box_SetBoolean_v2_2_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_2
  self.ConflictTriggered = l0.Target
end
function export:f_box_SetBoolean_v2_2_SetFalse()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_2
  self.ConflictTriggered = l0.Target
  l0 = self.box_MissionMessageController_v3_6
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S04.S04M040.Objectives.Objective040",
    item = "Objective",
    id = "496583"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_SetBoolean_v2_2
  l1 = self.box_MissionMessageController_v3_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Escape Gameplay|650909615", "650909615", "Escape Gameplay", "box_SetBoolean_v2_2.SetFalse", "box_MissionMessageController_v3_6.UpdateObjective", l0, l1)
  l1:UpdateObjective()
end
function export:f_box_SetBoolean_v2_2_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_2
  self.ConflictTriggered = l0.Target
end
function export:f_box_SetBoolean_v2_2_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_2
  self.ConflictTriggered = l0.Target
end
function export:f_box_SetBoolean_v2_2_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_2
  self.ConflictTriggered = l0.Target
end
function export:f_box_MissionMessageController_v3_6_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_5()
  l0 = self.box_MissionMessageController_v3_6
  l1 = self.box_MultipleOR_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Escape Gameplay|448180054", "448180054", "Escape Gameplay", "box_MissionMessageController_v3_6.Out", "box_MultipleOR_5.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MultipleOR_100_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_5()
  l0 = self.box_MultipleOR_100
  l1 = self.box_MultipleOR_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Escape Gameplay|999687315", "999687315", "Escape Gameplay", "box_MultipleOR_100.Out", "box_MultipleOR_5.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_OnceOnly_v3_8_Out()
  local l0
  self = self._graph
  l0 = self.box_OnceOnly_v3_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Escape Gameplay|1359464856", "1359464856", "Escape Gameplay", "box_OnceOnly_v3_8.Out", "Started", l0, self)
  self:Started()
end
function export:f_box_OnceOnly_v3_3_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_9"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Escape Gameplay|480561454"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_9_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_9_Out_1
  l0 = self.box_OnceOnly_v3_3
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Escape Gameplay|1568567653", "1568567653", "Escape Gameplay", "box_OnceOnly_v3_3.Out", "box_Ordered_Output_9.In", l0, l1)
  l1:In()
end
function export:OnEnter_box_MultipleOR_5()
end
function export:OnEnter_box_EscapeGameplayController_1()
  local l0
  l0 = self.box_EscapeGameplayController_1
  l0.MarkerLocId = self.MarkerLocId
  l0.Entity = self.Entity
  l0.MissionAreaEntity = self.MissionArea
  l0.AreaRadius = self.Entity_AreaRadius
end
function export:OnEnter_box_MultipleOR_7()
end
function export:OnEnter_box_Player_Conflict_Monitor_11()
end
function export:OnEnter_box_MultipleOR_100()
end
function export:OnEnter_box_OnceOnly_v3_8()
end
function export:OnEnter_box_OnceOnly_v3_3()
end
function export:Stopped()
end
function export:Started()
end
function export:Escaped()
end
function export:LeftArea()
end
_compilerVersion = 4
