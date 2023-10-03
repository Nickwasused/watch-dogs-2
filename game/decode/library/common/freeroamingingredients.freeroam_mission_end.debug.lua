export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("Domino/System/MissionController_v4.lua")
  cbox:RegisterBox("Domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
  cbox:RegisterBox("Domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "FreeRoam Mission End"
  self._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Mission End"
  self.box_MissionMessageController_v3_7 = cbox:CreateBox("Domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_7
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_7"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Mission End|280673135"
  l0.Out = DummyFunction
  l0.MessageCompleted = self.f_box_MissionMessageController_v3_7_MessageCompleted
  self.box_MissionController_v4_2 = cbox:CreateBox("Domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_2
  l0._graph = self
  l0._name = "box_MissionController_v4_2"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Mission End|573928030"
  self.box_MultipleOR_8 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_8
  l0._graph = self
  l0._name = "box_MultipleOR_8"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Mission End|589988733"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_8_Out
  self.box_MultipleOR_4 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_4
  l0._graph = self
  l0._name = "box_MultipleOR_4"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Mission End|610415014"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_4_Out
  self.box_Timer_v2_3 = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_3
  l0._graph = self
  l0._name = "box_Timer_v2_3"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Mission End|835417349"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_3_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PhoneCommunicationController_9 = cbox:CreateBox("Domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_9
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_9"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Mission End|1133907158"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_9_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionCheckpointReach_10 = cbox:CreateBox("Domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_10
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_10"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Mission End|1202635523"
  l0.Out = self.f_box_MissionCheckpointReach_10_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MultipleOR_15 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_15
  l0._graph = self
  l0._name = "box_MultipleOR_15"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Mission End|1204135743"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_15_Out
  self.box_MultipleOR_11 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_11
  l0._graph = self
  l0._name = "box_MultipleOR_11"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Mission End|2135207935"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_11_Out
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:End()
  local l0
  l0 = self.box_MissionCheckpointReach_10
  l0.CheckpointList = self.Checkpoint
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Mission End|678073832", "678073832", "FreeRoam Mission End", "End", "box_MissionCheckpointReach_10.In", self, l0)
  l0:In()
end
function export:FromCheckpoint()
  local l0
  self:OnEnter_box_MultipleOR_4()
  l0 = self.box_MultipleOR_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Mission End|95937526", "95937526", "FreeRoam Mission End", "FromCheckpoint", "box_MultipleOR_4.Input", self, l0)
  l0:Input(2)
end
function export:f_box_MissionMessageController_v3_7_MessageCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_4()
  l0 = self.box_MissionMessageController_v3_7
  l1 = self.box_MultipleOR_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Mission End|1380942942", "1380942942", "FreeRoam Mission End", "box_MissionMessageController_v3_7.MessageCompleted", "box_MultipleOR_4.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Test_if_Nil_5_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_11()
  l0 = self.box_MultipleOR_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Mission End|1783836044", "1783836044", "FreeRoam Mission End", "box_Test_if_Nil_5.Is_nil", "box_MultipleOR_11.Input", clone, l0)
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
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.BypassObjectiveCompleteMessage
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_6"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Mission End|1639452919"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_6_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_6_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Mission End|1165342893", "1165342893", "FreeRoam Mission End", "box_Test_if_Nil_5.Is_not_nil", "box_Compare_Boolean_v2_6.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_13_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_15()
  l0 = self.box_MultipleOR_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Mission End|1472882913", "1472882913", "FreeRoam Mission End", "box_Compare_Boolean_v2_13.A_is_False", "box_MultipleOR_15.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Compare_Boolean_v2_13_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionMessageController_v3_7()
  l0 = self.box_MissionMessageController_v3_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Mission End|454585311", "454585311", "FreeRoam Mission End", "box_Compare_Boolean_v2_13.A_is_True", "box_MissionMessageController_v3_7.ShowMissionComplete", clone, l0)
  l0:ShowMissionComplete()
end
function export:f_box_Test_if_Nil_1_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_8()
  l0 = self.box_MultipleOR_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Mission End|845432575", "845432575", "FreeRoam Mission End", "box_Test_if_Nil_1.Is_nil", "box_MultipleOR_8.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Test_if_Nil_1_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_9
  l0.PhoneCommunicationDb = self.Teamspeak
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Mission End|1418995106", "1418995106", "FreeRoam Mission End", "box_Test_if_Nil_1.Is_not_nil", "box_PhoneCommunicationController_9.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_MultipleOR_8_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MultipleOR_8
  l1 = self.box_MissionController_v4_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Mission End|2039158659", "2039158659", "FreeRoam Mission End", "box_MultipleOR_8.Out", "box_MissionController_v4_2.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_MultipleOR_4_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_3
  l0.Seconds = 2
  l0 = self.box_MultipleOR_4
  l1 = self.box_Timer_v2_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Mission End|505273503", "505273503", "FreeRoam Mission End", "box_MultipleOR_4.Out", "box_Timer_v2_3.Start", l0, l1)
  l1:Start()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Mission End|1741480788", "1741480788", "FreeRoam Mission End", "box_Test_if_Nil_14.Is_nil", "box_MultipleOR_15.Input", clone, l0)
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
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.ShowMissionComplete
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_13"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Mission End|394771502"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_13_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_13_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Mission End|1424221929", "1424221929", "FreeRoam Mission End", "box_Test_if_Nil_14.Is_not_nil", "box_Compare_Boolean_v2_13.In", clone, l0)
  l0:In()
end
function export:f_box_Timer_v2_3_TimeElapsed()
  local l0, l1
  self = self._graph
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
  l0.DBObject = self.Teamspeak
  l0._graph = self
  l0._name = "box_Test_if_Nil_1"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Mission End|511425518"
  l0.Is_nil = self.f_box_Test_if_Nil_1_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_1_Is_not_nil
  l0 = self.box_Timer_v2_3
  l1 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Mission End|244871985", "244871985", "FreeRoam Mission End", "box_Timer_v2_3.TimeElapsed", "box_Test_if_Nil_1.In", l0, l1)
  l1:In()
end
function export:f_box_PhoneCommunicationController_9_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_8()
  l0 = self.box_PhoneCommunicationController_9
  l1 = self.box_MultipleOR_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Mission End|1288709100", "1288709100", "FreeRoam Mission End", "box_PhoneCommunicationController_9.OnCommunicationFinished", "box_MultipleOR_8.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MissionCheckpointReach_10_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = self.ShowMissionComplete
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_14"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Mission End|834142085"
  l0.Is_nil = self.f_box_Test_if_Nil_14_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_14_Is_not_nil
  l0 = self.box_MissionCheckpointReach_10
  l1 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Mission End|1609969304", "1609969304", "FreeRoam Mission End", "box_MissionCheckpointReach_10.Out", "box_Test_if_Nil_14.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_15_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = self.BypassObjectiveCompleteMessage
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_5"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Mission End|325545516"
  l0.Is_nil = self.f_box_Test_if_Nil_5_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_5_Is_not_nil
  l0 = self.box_MultipleOR_15
  l1 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Mission End|201777794", "201777794", "FreeRoam Mission End", "box_MultipleOR_15.Out", "box_Test_if_Nil_5.In", l0, l1)
  l1:In()
end
function export:f_box_Compare_Boolean_v2_6_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_11()
  l0 = self.box_MultipleOR_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Mission End|777664973", "777664973", "FreeRoam Mission End", "box_Compare_Boolean_v2_6.A_is_False", "box_MultipleOR_11.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Compare_Boolean_v2_6_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_4()
  l0 = self.box_MultipleOR_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Mission End|1313183434", "1313183434", "FreeRoam Mission End", "box_Compare_Boolean_v2_6.A_is_True", "box_MultipleOR_4.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_MultipleOR_11_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MissionMessageController_v3_7()
  l0 = self.box_MultipleOR_11
  l1 = self.box_MissionMessageController_v3_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Mission End|334472830", "334472830", "FreeRoam Mission End", "box_MultipleOR_11.Out", "box_MissionMessageController_v3_7.ShowLastObjectiveComplete", l0, l1)
  l1:ShowLastObjectiveComplete()
end
function export:OnEnter_box_MissionMessageController_v3_7()
end
function export:OnEnter_box_MultipleOR_8()
end
function export:OnEnter_box_MultipleOR_4()
end
function export:OnEnter_box_MultipleOR_15()
end
function export:OnEnter_box_MultipleOR_11()
end
_compilerVersion = 4
