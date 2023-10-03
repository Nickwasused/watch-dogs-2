export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("Domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/GetPlayerID.lua")
  cbox:RegisterBox("Domino/System/LMALayerController.lua")
  cbox:RegisterBox("Domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("Domino/System/MissionController_v4.lua")
  cbox:RegisterBox("Domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("Domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("Domino/System/MultipleAND.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/PawnHealthMonitor_v4.lua")
  cbox:RegisterBox("Domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("Domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
end
function export:Init(cbox)
  local l0
  self._name = "Mission End"
  self._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End"
  self.IsPlayerAlive = 1
  self.box_MultipleOR_15 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_15
  l0._graph = self
  l0._name = "box_MultipleOR_15"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|11507311"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_15_Out
  self.box_MultipleOR_22 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_22
  l0._graph = self
  l0._name = "box_MultipleOR_22"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|31622090"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_22_Out
  self.box_MissionCheckpointReach_6 = cbox:CreateBox("Domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_6
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_6"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|302991659"
  l0.Out = self.f_box_MissionCheckpointReach_6_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MissionController_v4_5 = cbox:CreateBox("Domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_5
  l0._graph = self
  l0._name = "box_MissionController_v4_5"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|316748175"
  self.box_MultipleOR_23 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_23
  l0._graph = self
  l0._name = "box_MultipleOR_23"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|521420194"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_23_Out
  self.box_MissionLayer_v2_3 = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_3
  l0._graph = self
  l0._name = "box_MissionLayer_v2_3"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|567326074"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_3_Unloaded
  l0.Reseted = DummyFunction
  self.box_SetBoolean_v2_30 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_30
  l0._graph = self
  l0._name = "box_SetBoolean_v2_30"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|664304405"
  l0.Out = self.f_box_SetBoolean_v2_30_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_30_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_30_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_30_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_30_SetFromBool
  self.box_CinematicPrep_19 = cbox:CreateBox("Domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_19
  l0._graph = self
  l0._name = "box_CinematicPrep_19"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|674076422"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_19_PostOut
  self.box_MultipleOR_18 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_18
  l0._graph = self
  l0._name = "box_MultipleOR_18"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|682363785"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_18_Out
  self.box_PhoneCommunicationController_16 = cbox:CreateBox("Domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_16
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_16"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|716834458"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_16_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Multiple_AND_12 = cbox:CreateBox("Domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_12
  l0._graph = self
  l0._name = "box_Multiple_AND_12"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|899572767"
  l0._DynamicAnchors = {Condition = 3}
  l0.Out = self.f_box_Multiple_AND_12_Out
  self.box_PhoneCommunicationController_13 = cbox:CreateBox("Domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_13
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_13"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|955272060"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_13_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_SetBoolean_v2_28 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_28
  l0._graph = self
  l0._name = "box_SetBoolean_v2_28"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|980822524"
  l0.Out = self.f_box_SetBoolean_v2_28_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_28_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_28_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_28_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_28_SetFromBool
  self.box_MultipleOR_10 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_10
  l0._graph = self
  l0._name = "box_MultipleOR_10"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|1012500487"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_10_Out
  self.box_MultipleOR_2 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_2
  l0._graph = self
  l0._name = "box_MultipleOR_2"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|1325789445"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_2_Out
  self.box_MultipleOR_25 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_25
  l0._graph = self
  l0._name = "box_MultipleOR_25"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|1676826506"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_25_Out
  self.box_MultipleOR_11 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_11
  l0._graph = self
  l0._name = "box_MultipleOR_11"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|1709313366"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_11_Out
  self.box_PawnHealthMonitor_v4_26 = cbox:CreateBox("Domino/System/PawnHealthMonitor_v4.lua")
  l0 = self.box_PawnHealthMonitor_v4_26
  l0._graph = self
  l0._name = "box_PawnHealthMonitor_v4_26"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|1824447461"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Damaged = DummyFunction
  l0.DamageReceived = DummyFunction
  l0.Killed = self.f_box_PawnHealthMonitor_v4_26_Killed
  l0.DBNO = DummyFunction
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = self.f_box_PawnHealthMonitor_v4_26_DeadChecked
  l0.HealthChecked = DummyFunction
  self.box_LMA_Layer_Controller_8 = cbox:CreateBox("Domino/System/LMALayerController.lua")
  l0 = self.box_LMA_Layer_Controller_8
  l0._graph = self
  l0._name = "box_LMA_Layer_Controller_8"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|1916523297"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_LMA_Layer_Controller_8_Unloaded
  self.box_MissionMessageController_v3_1 = cbox:CreateBox("Domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_1
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_1"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|2025242138"
  l0.Out = self.f_box_MissionMessageController_v3_1_Out
  l0.MessageCompleted = self.f_box_MissionMessageController_v3_1_MessageCompleted
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
  l0._name = "box_Test_if_Nil_20"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|451312653"
  l0.Is_nil = self.f_box_Test_if_Nil_20_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_20_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|1337144752", "1337144752", "Mission End", "End", "box_Test_if_Nil_20.In", self, l0)
  l0:In()
end
function export:FromCheckpoint()
  local l0
  l0 = self.box_CinematicPrep_19
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|1469575635", "1469575635", "Mission End", "FromCheckpoint", "box_CinematicPrep_19.PostCinematic", self, l0)
  l0:PostCinematic()
end
function export:f_box_MultipleOR_15_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_18()
  l0 = self.box_MultipleOR_15
  l1 = self.box_MultipleOR_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|810616927", "810616927", "Mission End", "box_MultipleOR_15.Out", "box_MultipleOR_18.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MultipleOR_22_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MultipleOR_22
  l1 = self.box_MissionMessageController_v3_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|879728280", "879728280", "Mission End", "box_MultipleOR_22.Out", "box_MissionMessageController_v3_1.ShowMissionComplete", l0, l1)
  l1:ShowMissionComplete()
end
function export:f_box_MissionCheckpointReach_6_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_9"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|1458623952"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_9_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_9_Out_1
  l0 = self.box_MissionCheckpointReach_6
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|900699031", "900699031", "Mission End", "box_MissionCheckpointReach_6.Out", "box_Ordered_Output_9.In", l0, l1)
  l1:In()
end
function export:f_box_Test_if_Nil_20_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_22()
  l0 = self.box_MultipleOR_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|1523567381", "1523567381", "Mission End", "box_Test_if_Nil_20.Is_nil", "box_MultipleOR_22.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Test_if_Nil_20_Is_not_nil()
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
  l0._name = "box_Compare_Boolean_v2_21"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|475225685"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_21_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_21_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|379077807", "379077807", "Mission End", "box_Test_if_Nil_20.Is_not_nil", "box_Compare_Boolean_v2_21.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_21_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_24"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|1653318442"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_24_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_24_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|201269956", "201269956", "Mission End", "box_Compare_Boolean_v2_21.A_is_False", "box_Ordered_Output_24.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_21_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_22()
  l0 = self.box_MultipleOR_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|870071593", "870071593", "Mission End", "box_Compare_Boolean_v2_21.A_is_True", "box_MultipleOR_22.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_MultipleOR_23_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_6
  l0.CheckpointList = self.Checkpoint
  l0 = self.box_MultipleOR_23
  l1 = self.box_MissionCheckpointReach_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|395521143", "395521143", "Mission End", "box_MultipleOR_23.Out", "box_MissionCheckpointReach_6.In", l0, l1)
  l1:In()
end
function export:f_box_MissionLayer_v2_3_Unloaded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_10()
  l0 = self.box_MissionLayer_v2_3
  l1 = self.box_MultipleOR_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|235958275", "235958275", "Mission End", "box_MissionLayer_v2_3.Unloaded", "box_MultipleOR_10.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Test_if_Nil_17_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_15()
  l0 = self.box_MultipleOR_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|276218901", "276218901", "Mission End", "box_Test_if_Nil_17.Is_nil", "box_MultipleOR_15.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Test_if_Nil_17_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_16
  l0.PhoneCommunicationDb = self.TeamSpeak
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|1782208787", "1782208787", "Mission End", "box_Test_if_Nil_17.Is_not_nil", "box_PhoneCommunicationController_16.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_SetBoolean_v2_30_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_30
  self.IsPlayerAlive = l0.Target
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_27"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|1181021801"
  l0.Out = self.f_box_Get_Player_ID_27_Out
  l0 = self.box_SetBoolean_v2_30
  l1 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|1763255682", "1763255682", "Mission End", "box_SetBoolean_v2_30.Out", "box_Get_Player_ID_27.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_30_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_30
  self.IsPlayerAlive = l0.Target
end
function export:f_box_SetBoolean_v2_30_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_30
  self.IsPlayerAlive = l0.Target
end
function export:f_box_SetBoolean_v2_30_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_30
  self.IsPlayerAlive = l0.Target
end
function export:f_box_SetBoolean_v2_30_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_30
  self.IsPlayerAlive = l0.Target
end
function export:f_box_CinematicPrep_19_PostOut()
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
  l0.DBObject = self.TeamSpeak
  l0._graph = self
  l0._name = "box_Test_if_Nil_17"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|595973140"
  l0.Is_nil = self.f_box_Test_if_Nil_17_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_17_Is_not_nil
  l0 = self.box_CinematicPrep_19
  l1 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|1366336824", "1366336824", "Mission End", "box_CinematicPrep_19.PostOut", "box_Test_if_Nil_17.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_18_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MultipleOR_18
  l1 = self.box_SetBoolean_v2_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|1225670290", "1225670290", "Mission End", "box_MultipleOR_18.Out", "box_SetBoolean_v2_30.True", l0, l1)
  l1:True()
end
function export:f_box_PhoneCommunicationController_16_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_15()
  l0 = self.box_PhoneCommunicationController_16
  l1 = self.box_MultipleOR_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|1297486166", "1297486166", "Mission End", "box_PhoneCommunicationController_16.OnCommunicationFinished", "box_MultipleOR_15.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Compare_Boolean_v2_29_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionController_v4_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|1982343989", "1982343989", "Mission End", "box_Compare_Boolean_v2_29.A_is_True", "box_MissionController_v4_5.Succeed", clone, l0)
  l0:Succeed()
end
function export:f_box_Multiple_AND_12_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_18()
  l0 = self.box_Multiple_AND_12
  l1 = self.box_MultipleOR_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|1518846899", "1518846899", "Mission End", "box_Multiple_AND_12.Out", "box_MultipleOR_18.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_PhoneCommunicationController_13_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_2()
  l0 = self.box_PhoneCommunicationController_13
  l1 = self.box_MultipleOR_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|1327638688", "1327638688", "Mission End", "box_PhoneCommunicationController_13.OnCommunicationFinished", "box_MultipleOR_2.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_SetBoolean_v2_28_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_28
  self.IsPlayerAlive = l0.Target
end
function export:f_box_SetBoolean_v2_28_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_28
  self.IsPlayerAlive = l0.Target
end
function export:f_box_SetBoolean_v2_28_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_28
  self.IsPlayerAlive = l0.Target
end
function export:f_box_SetBoolean_v2_28_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_28
  self.IsPlayerAlive = l0.Target
end
function export:f_box_SetBoolean_v2_28_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_28
  self.IsPlayerAlive = l0.Target
end
function export:f_box_MultipleOR_10_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_12()
  l0 = self.box_MultipleOR_10
  l1 = self.box_Multiple_AND_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|748261775", "748261775", "Mission End", "box_MultipleOR_10.Out", "box_Multiple_AND_12.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_Get_Player_ID_27_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l1 = self.box_PawnHealthMonitor_v4_26
  l1.Pawn = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PawnHealthMonitor_v4_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|1442339896", "1442339896", "Mission End", "box_Get_Player_ID_27.Out", "box_PawnHealthMonitor_v4_26.CheckIfDead", clone, l0)
  l0:CheckIfDead()
end
function export:f_box_MultipleOR_2_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_12()
  l0 = self.box_MultipleOR_2
  l1 = self.box_Multiple_AND_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|2026199033", "2026199033", "Mission End", "box_MultipleOR_2.Out", "box_Multiple_AND_12.Condition", l0, l1)
  l1:Condition(2)
end
function export:f_box_Ordered_Output_9_Out_0()
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
  l0.String = self.MissionLayer
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_7"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|2101875096"
  l0.Is_nil = self.f_box_Test_if_Nil_7_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_7_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|1477977808", "1477977808", "Mission End", "box_Ordered_Output_9.Out", "box_Test_if_Nil_7.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_9_Out_1()
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
  l0.String = self.LmaLayer
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_4"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|1847565960"
  l0.Is_nil = self.f_box_Test_if_Nil_4_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_4_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|774841174", "774841174", "Mission End", "box_Ordered_Output_9.Out", "box_Test_if_Nil_4.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_24_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_23()
  l0 = self.box_MultipleOR_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|401152148", "401152148", "Mission End", "box_Ordered_Output_24.Out", "box_MultipleOR_23.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_24_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_25()
  l0 = self.box_MultipleOR_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|1442294863", "1442294863", "Mission End", "box_Ordered_Output_24.Out", "box_MultipleOR_25.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_MultipleOR_25_Out()
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
  l0.DBObject = self.TeamSpeak
  l0._graph = self
  l0._name = "box_Test_if_Nil_14"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|2102143164"
  l0.Is_nil = self.f_box_Test_if_Nil_14_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_14_Is_not_nil
  l0 = self.box_MultipleOR_25
  l1 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|2011537505", "2011537505", "Mission End", "box_MultipleOR_25.Out", "box_Test_if_Nil_14.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_11_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_12()
  l0 = self.box_MultipleOR_11
  l1 = self.box_Multiple_AND_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|2119452675", "2119452675", "Mission End", "box_MultipleOR_11.Out", "box_Multiple_AND_12.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_PawnHealthMonitor_v4_26_DeadChecked()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsPlayerAlive
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_29"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|866505433"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_29_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_PawnHealthMonitor_v4_26
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|140239332", "140239332", "Mission End", "box_PawnHealthMonitor_v4_26.DeadChecked", "box_Compare_Boolean_v2_29.In", l0, l1)
  l1:In()
end
function export:f_box_PawnHealthMonitor_v4_26_Killed()
  local l0, l1
  self = self._graph
  l0 = self.box_PawnHealthMonitor_v4_26
  l1 = self.box_SetBoolean_v2_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|1864221219", "1864221219", "Mission End", "box_PawnHealthMonitor_v4_26.Killed", "box_SetBoolean_v2_28.False", l0, l1)
  l1:False()
end
function export:f_box_Test_if_Nil_4_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_11()
  l0 = self.box_MultipleOR_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|400220146", "400220146", "Mission End", "box_Test_if_Nil_4.Is_nil", "box_MultipleOR_11.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Test_if_Nil_4_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_LMA_Layer_Controller_8
  l0.LMALayerName = self.LmaLayer
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|1086666841", "1086666841", "Mission End", "box_Test_if_Nil_4.Is_not_nil", "box_LMA_Layer_Controller_8.Unload", clone, l0)
  l0:Unload()
end
function export:f_box_LMA_Layer_Controller_8_Unloaded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_11()
  l0 = self.box_LMA_Layer_Controller_8
  l1 = self.box_MultipleOR_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|1881182106", "1881182106", "Mission End", "box_LMA_Layer_Controller_8.Unloaded", "box_MultipleOR_11.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MissionMessageController_v3_1_MessageCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_25()
  l0 = self.box_MissionMessageController_v3_1
  l1 = self.box_MultipleOR_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|1301946551", "1301946551", "Mission End", "box_MissionMessageController_v3_1.MessageCompleted", "box_MultipleOR_25.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MissionMessageController_v3_1_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_23()
  l0 = self.box_MissionMessageController_v3_1
  l1 = self.box_MultipleOR_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|897069875", "897069875", "Mission End", "box_MissionMessageController_v3_1.Out", "box_MultipleOR_23.Input", l0, l1)
  l1:Input(0)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|305195736", "305195736", "Mission End", "box_Test_if_Nil_7.Is_nil", "box_MultipleOR_10.Input", clone, l0)
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
  l0 = self.box_MissionLayer_v2_3
  l0.LayerName = self.MissionLayer
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|677961422", "677961422", "Mission End", "box_Test_if_Nil_7.Is_not_nil", "box_MissionLayer_v2_3.Unload", clone, l0)
  l0:Unload()
end
function export:f_box_Test_if_Nil_14_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_2()
  l0 = self.box_MultipleOR_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|1816645802", "1816645802", "Mission End", "box_Test_if_Nil_14.Is_nil", "box_MultipleOR_2.Input", clone, l0)
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
  l0 = self.box_PhoneCommunicationController_13
  l0.PhoneCommunicationDb = self.TeamSpeak
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Mission End|171827408", "171827408", "Mission End", "box_Test_if_Nil_14.Is_not_nil", "box_PhoneCommunicationController_13.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:OnEnter_box_MultipleOR_15()
end
function export:OnEnter_box_MultipleOR_22()
end
function export:OnEnter_box_MultipleOR_23()
end
function export:OnEnter_box_MultipleOR_18()
end
function export:OnEnter_box_Multiple_AND_12()
end
function export:OnEnter_box_MultipleOR_10()
end
function export:OnEnter_box_MultipleOR_2()
end
function export:OnEnter_box_MultipleOR_25()
end
function export:OnEnter_box_MultipleOR_11()
end
_compilerVersion = 4
