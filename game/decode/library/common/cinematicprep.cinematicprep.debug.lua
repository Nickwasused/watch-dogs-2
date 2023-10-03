export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CameraRealign.lua")
  cbox:RegisterBox("Domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/FlyingDroneController.lua")
  cbox:RegisterBox("Domino/System/ForcePawnsVehicleStop_v2.lua")
  cbox:RegisterBox("Domino/System/GetPlayerID.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/PlayerPostFXController.lua")
  cbox:RegisterBox("Domino/System/PlayerVehicleMonitor_v2.lua")
  cbox:RegisterBox("Domino/System/PostGameOver.lua")
  cbox:RegisterBox("Domino/System/RemoveLoadingScreen.lua")
  cbox:RegisterBox("Domino/System/SetActionMap_v2.lua")
  cbox:RegisterBox("Domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/ShowOrHideAllUI.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
  cbox:RegisterBox("Domino/System/ToyCarController.lua")
  cbox:RegisterBox("Domino/System/WaitQualitiesLoaded.lua")
end
function export:Init(cbox)
  local l0
  self._name = "CinematicPrep"
  self._elementPathId = "DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep"
  self.PreOut = DummyFunction
  self.PostOut = DummyFunction
  self.ActionMap = "cinematic"
  self.LocalPawn = nil
  self.isVehicleForceStop = 0
  self.box_CameraRealign_7 = cbox:CreateBox("Domino/System/CameraRealign.lua")
  l0 = self.box_CameraRealign_7
  l0._graph = self
  l0._name = "box_CameraRealign_7"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|4811388"
  l0.Out = self.f_box_CameraRealign_7_Out
  self.box_MultipleOR_23 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_23
  l0._graph = self
  l0._name = "box_MultipleOR_23"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|224505874"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_23_Out
  self.box_MultipleOR_1 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_1
  l0._graph = self
  l0._name = "box_MultipleOR_1"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|267347940"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_1_Out
  self.box_MultipleOR_45 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_45
  l0._graph = self
  l0._name = "box_MultipleOR_45"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|378523983"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_45_Out
  self.box_RemoveLoadingScreenBox_9 = cbox:CreateBox("Domino/System/RemoveLoadingScreen.lua")
  l0 = self.box_RemoveLoadingScreenBox_9
  l0._graph = self
  l0._name = "box_RemoveLoadingScreenBox_9"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|798828838"
  l0.Out = DummyFunction
  l0.LoadingScreenAlreadyRemoved = self.f_box_RemoveLoadingScreenBox_9_LoadingScreenAlreadyRemoved
  l0.LoadingScreenRemoved = self.f_box_RemoveLoadingScreenBox_9_LoadingScreenRemoved
  self.box_Wait_Qualities_Loaded_36 = cbox:CreateBox("Domino/System/WaitQualitiesLoaded.lua")
  l0 = self.box_Wait_Qualities_Loaded_36
  l0._graph = self
  l0._name = "box_Wait_Qualities_Loaded_36"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|808120292"
  l0.Out = DummyFunction
  l0.Loaded = self.f_box_Wait_Qualities_Loaded_36_Loaded
  self.box_SetBoolean_v2_26 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_26
  l0._graph = self
  l0._name = "box_SetBoolean_v2_26"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|826307239"
  l0.Out = self.f_box_SetBoolean_v2_26_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_26_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_26_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_26_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_26_SetFromBool
  self.box_Player_PostFX_Controller_3 = cbox:CreateBox("Domino/System/PlayerPostFXController.lua")
  l0 = self.box_Player_PostFX_Controller_3
  l0._graph = self
  l0._name = "box_Player_PostFX_Controller_3"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|845128959"
  l0.Played = self.f_box_Player_PostFX_Controller_3_Played
  l0.Stopped = DummyFunction
  self.box_MultipleOR_25 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_25
  l0._graph = self
  l0._name = "box_MultipleOR_25"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|871569646"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_25_Out
  self.box_MultipleOR_41 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_41
  l0._graph = self
  l0._name = "box_MultipleOR_41"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|995921169"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_41_Out
  self.box_MultipleOR_15 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_15
  l0._graph = self
  l0._name = "box_MultipleOR_15"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|1185345721"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_15_Out
  self.box_MultipleOR_28 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_28
  l0._graph = self
  l0._name = "box_MultipleOR_28"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|1310479418"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_28_Out
  self.box_MultipleOR_17 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_17
  l0._graph = self
  l0._name = "box_MultipleOR_17"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|1525396402"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_17_Out
  self.box_MultipleOR_12 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_12
  l0._graph = self
  l0._name = "box_MultipleOR_12"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|1559419352"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_12_Out
  self.box_MultipleOR_13 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_13
  l0._graph = self
  l0._name = "box_MultipleOR_13"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|1688114399"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_13_Out
  self.box_Player_PostFX_Controller_2 = cbox:CreateBox("Domino/System/PlayerPostFXController.lua")
  l0 = self.box_Player_PostFX_Controller_2
  l0._graph = self
  l0._name = "box_Player_PostFX_Controller_2"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|1697337974"
  l0.Played = self.f_box_Player_PostFX_Controller_2_Played
  l0.Stopped = DummyFunction
  self.box_RemoveLoadingScreenBox_10 = cbox:CreateBox("Domino/System/RemoveLoadingScreen.lua")
  l0 = self.box_RemoveLoadingScreenBox_10
  l0._graph = self
  l0._name = "box_RemoveLoadingScreenBox_10"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|1780028624"
  l0.Out = DummyFunction
  l0.LoadingScreenAlreadyRemoved = self.f_box_RemoveLoadingScreenBox_10_LoadingScreenAlreadyRemoved
  l0.LoadingScreenRemoved = self.f_box_RemoveLoadingScreenBox_10_LoadingScreenRemoved
  self.box_MultipleOR_11 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_11
  l0._graph = self
  l0._name = "box_MultipleOR_11"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|1788919866"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_11_Out
  self.box_MultipleOR_42 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_42
  l0._graph = self
  l0._name = "box_MultipleOR_42"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|1817872516"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_42_Out
  self.box_MultipleOR_14 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_14
  l0._graph = self
  l0._name = "box_MultipleOR_14"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|1897400367"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_14_Out
  self.box_Player_Vehicle_Monitor_v2_20 = cbox:CreateBox("Domino/System/PlayerVehicleMonitor_v2.lua")
  l0 = self.box_Player_Vehicle_Monitor_v2_20
  l0._graph = self
  l0._name = "box_Player_Vehicle_Monitor_v2_20"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|2017977397"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_Player_Vehicle_Monitor_v2_20_Enter
  l0.Leave = self.f_box_Player_Vehicle_Monitor_v2_20_Leave
  l0.ChangeSeat = DummyFunction
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:PostCinematic()
  local l0
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_4"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|1019071271"
  l0.Out = self.f_box_Get_Player_ID_4_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|368033643", "368033643", "CinematicPrep", "PostCinematic", "box_Get_Player_ID_4.In", self, l0)
  l0:In()
end
function export:PreCinematic()
  local l0
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = self.ForceStopVehicle
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_46"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|184881113"
  l0.Is_nil = self.f_box_Test_if_Nil_46_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_46_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|965407470", "965407470", "CinematicPrep", "PreCinematic", "box_Test_if_Nil_46.In", self, l0)
  l0:In()
end
function export:f_box_CameraRealign_7_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_12()
  l0 = self.box_CameraRealign_7
  l1 = self.box_MultipleOR_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|820084264", "820084264", "CinematicPrep", "box_CameraRealign_7.Out", "box_MultipleOR_12.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_SetActionMap_v2_32_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_33"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|1539729333"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_Show_Or_Hide_All_UI_33_Hidden
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|476215557", "476215557", "CinematicPrep", "box_SetActionMap_v2_32.Pushed", "box_Show_Or_Hide_All_UI_33.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Test_if_Nil_24_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_1()
  l0 = self.box_MultipleOR_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|1929715697", "1929715697", "CinematicPrep", "box_Test_if_Nil_24.Is_nil", "box_MultipleOR_1.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Test_if_Nil_24_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.SkipPostFX
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_21"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|1446770732"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_21_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_21_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|719470806", "719470806", "CinematicPrep", "box_Test_if_Nil_24.Is_not_nil", "box_Compare_Boolean_v2_21.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_46_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_28()
  l0 = self.box_MultipleOR_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|1251635448", "1251635448", "CinematicPrep", "box_Test_if_Nil_46.Is_nil", "box_MultipleOR_28.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Test_if_Nil_46_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.ForceStopVehicle
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_44"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|1108890082"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_44_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_44_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|330348684", "330348684", "CinematicPrep", "box_Test_if_Nil_46.Is_not_nil", "box_Compare_Boolean_v2_44.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_23_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_22"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|2122214087"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_22_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_22_Out_1
  l0 = self.box_MultipleOR_23
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|862204593", "862204593", "CinematicPrep", "box_MultipleOR_23.Out", "box_Ordered_Output_22.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_1_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Player_PostFX_Controller_3
  l0.SequenceName = "precinematic"
  l0 = self.box_MultipleOR_1
  l1 = self.box_Player_PostFX_Controller_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|1973730135", "1973730135", "CinematicPrep", "box_MultipleOR_1.Out", "box_Player_PostFX_Controller_3.StartPostFX", l0, l1)
  l1:StartPostFX()
end
function export:f_box_ForcePawnsVehicleStop_v2_16_ResetOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ForcePawnsVehicleStop_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_25()
  l0 = self.box_MultipleOR_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|520197755", "520197755", "CinematicPrep", "box_ForcePawnsVehicleStop_v2_16.ResetOut", "box_MultipleOR_25.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Compare_Boolean_v2_6_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_13()
  l0 = self.box_MultipleOR_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|2016679059", "2016679059", "CinematicPrep", "box_Compare_Boolean_v2_6.A_is_False", "box_MultipleOR_13.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Compare_Boolean_v2_6_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_12()
  l0 = self.box_MultipleOR_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|1499489949", "1499489949", "CinematicPrep", "box_Compare_Boolean_v2_6.A_is_True", "box_MultipleOR_12.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_PostGameOverBox_8_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/PostGameOver.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|899430712", "899430712", "CinematicPrep", "box_PostGameOverBox_8.Out", "PostOut", clone, self)
  self:PostOut()
end
function export:f_box_Show_Or_Hide_All_UI_31_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/PostGameOver.lua")]
  l0._graph = self
  l0._name = "box_PostGameOverBox_8"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|299477397"
  l0.Out = self.f_box_PostGameOverBox_8_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|1562811693", "1562811693", "CinematicPrep", "box_Show_Or_Hide_All_UI_31.Shown", "box_PostGameOverBox_8.RecoverFromGameOver", clone, l0)
  l0:RecoverFromGameOver()
end
function export:f_box_Test_if_Nil_5_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_13()
  l0 = self.box_MultipleOR_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|1826131907", "1826131907", "CinematicPrep", "box_Test_if_Nil_5.Is_nil", "box_MultipleOR_13.Input", clone, l0)
  l0:Input(1)
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
  l0.A = self.SkipCameraAlign
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_6"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|288683244"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_6_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_6_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|1346836249", "1346836249", "CinematicPrep", "box_Test_if_Nil_5.Is_not_nil", "box_Compare_Boolean_v2_6.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_45_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = self.SkipPostFX
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_24"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|157806566"
  l0.Is_nil = self.f_box_Test_if_Nil_24_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_24_Is_not_nil
  l0 = self.box_MultipleOR_45
  l1 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|1420818819", "1420818819", "CinematicPrep", "box_MultipleOR_45.Out", "box_Test_if_Nil_24.In", l0, l1)
  l1:In()
end
function export:f_box_Test_if_Nil_19_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_14()
  l0 = self.box_MultipleOR_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|91962306", "91962306", "CinematicPrep", "box_Test_if_Nil_19.Is_nil", "box_MultipleOR_14.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Test_if_Nil_19_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.SkipPostFX
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_27"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|1204340925"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_27_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_27_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|297189585", "297189585", "CinematicPrep", "box_Test_if_Nil_19.Is_not_nil", "box_Compare_Boolean_v2_27.In", clone, l0)
  l0:In()
end
function export:f_box_ForcePawnsVehicleStop_v2_30_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ForcePawnsVehicleStop_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_23()
  l0 = self.box_MultipleOR_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|666223588", "666223588", "CinematicPrep", "box_ForcePawnsVehicleStop_v2_30.Stopped", "box_MultipleOR_23.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_RemoveLoadingScreenBox_9_LoadingScreenAlreadyRemoved()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_17()
  l0 = self.box_RemoveLoadingScreenBox_9
  l1 = self.box_MultipleOR_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|538965725", "538965725", "CinematicPrep", "box_RemoveLoadingScreenBox_9.LoadingScreenAlreadyRemoved", "box_MultipleOR_17.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_RemoveLoadingScreenBox_9_LoadingScreenRemoved()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_17()
  l0 = self.box_RemoveLoadingScreenBox_9
  l1 = self.box_MultipleOR_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|2126532928", "2126532928", "CinematicPrep", "box_RemoveLoadingScreenBox_9.LoadingScreenRemoved", "box_MultipleOR_17.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Wait_Qualities_Loaded_36_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.isVehicleForceStop
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_43"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|1505444028"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_43_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_43_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_Wait_Qualities_Loaded_36
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|1562182739", "1562182739", "CinematicPrep", "box_Wait_Qualities_Loaded_36.Loaded", "box_Compare_Boolean_v2_43.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_26_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_26
  self.isVehicleForceStop = l0.Target
end
function export:f_box_SetBoolean_v2_26_SetFalse()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_26
  self.isVehicleForceStop = l0.Target
  self:OnEnter_box_MultipleOR_23()
  l1 = self.box_MultipleOR_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|1444800390", "1444800390", "CinematicPrep", "box_SetBoolean_v2_26.SetFalse", "box_MultipleOR_23.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_SetBoolean_v2_26_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_26
  self.isVehicleForceStop = l0.Target
end
function export:f_box_SetBoolean_v2_26_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_26
  self.isVehicleForceStop = l0.Target
  l0 = Boxes[PathID("Domino/System/ForcePawnsVehicleStop_v2.lua")]
  l0.PlayerEntity = nil
  l0.Brake = nil
  l0._graph = self
  l0._name = "box_ForcePawnsVehicleStop_v2_30"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|461031581"
  l0.Stopped = self.f_box_ForcePawnsVehicleStop_v2_30_Stopped
  l0.ResetOut = DummyFunction
  l0 = self.box_SetBoolean_v2_26
  l1 = Boxes[PathID("Domino/System/ForcePawnsVehicleStop_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|641942981", "641942981", "CinematicPrep", "box_SetBoolean_v2_26.SetTrue", "box_ForcePawnsVehicleStop_v2_30.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_SetBoolean_v2_26_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_26
  self.isVehicleForceStop = l0.Target
end
function export:f_box_Player_PostFX_Controller_3_Played()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_15()
  l0 = self.box_Player_PostFX_Controller_3
  l1 = self.box_MultipleOR_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|1484786030", "1484786030", "CinematicPrep", "box_Player_PostFX_Controller_3.Played", "box_MultipleOR_15.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MultipleOR_25_Out()
  local l0
  self = self._graph
  l0 = self.box_MultipleOR_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|1604973554", "1604973554", "CinematicPrep", "box_MultipleOR_25.Out", "PreOut", l0, self)
  self:PreOut()
end
function export:f_box_MultipleOR_41_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Wait_Qualities_Loaded_36
  l0.LoadingScreen = 0
  l0 = self.box_MultipleOR_41
  l1 = self.box_Wait_Qualities_Loaded_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|1561124486", "1561124486", "CinematicPrep", "box_MultipleOR_41.Out", "box_Wait_Qualities_Loaded_36.In", l0, l1)
  l1:In()
end
function export:f_box_Get_Player_ID_4_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.LocalPawn = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = self.SkipCameraAlign
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_5"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|370086040"
  l0.Is_nil = self.f_box_Test_if_Nil_5_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_5_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|2049518100", "2049518100", "CinematicPrep", "box_Get_Player_ID_4.Out", "box_Test_if_Nil_5.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_40_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Flying_Drone_Controller_35()
  l0 = Boxes[PathID("Domino/System/FlyingDroneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|680300668", "680300668", "CinematicPrep", "box_Ordered_Output_40.Out", "box_Flying_Drone_Controller_35.MakeDisconnectAvailable", clone, l0)
  l0:MakeDisconnectAvailable()
end
function export:f_box_Ordered_Output_40_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Toy_Car_Controller_39()
  l0 = Boxes[PathID("Domino/System/ToyCarController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|1081832817", "1081832817", "CinematicPrep", "box_Ordered_Output_40.Out", "box_Toy_Car_Controller_39.MakeDisconnectAvailable", clone, l0)
  l0:MakeDisconnectAvailable()
end
function export:f_box_Ordered_Output_40_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_41()
  l0 = self.box_MultipleOR_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|863072147", "863072147", "CinematicPrep", "box_Ordered_Output_40.Out", "box_MultipleOR_41.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Compare_Boolean_v2_44_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_45()
  l0 = self.box_MultipleOR_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|474995246", "474995246", "CinematicPrep", "box_Compare_Boolean_v2_44.A_is_False", "box_MultipleOR_45.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Compare_Boolean_v2_44_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_28()
  l0 = self.box_MultipleOR_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|1706246150", "1706246150", "CinematicPrep", "box_Compare_Boolean_v2_44.A_is_True", "box_MultipleOR_28.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_MultipleOR_15_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = self.KeepDrones
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_37"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|2073861762"
  l0.Is_nil = self.f_box_Test_if_Nil_37_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_37_Is_not_nil
  l0 = self.box_MultipleOR_15
  l1 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|188401779", "188401779", "CinematicPrep", "box_MultipleOR_15.Out", "box_Test_if_Nil_37.In", l0, l1)
  l1:In()
end
function export:f_box_Compare_Boolean_v2_27_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_14()
  l0 = self.box_MultipleOR_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|46164536", "46164536", "CinematicPrep", "box_Compare_Boolean_v2_27.A_is_False", "box_MultipleOR_14.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Compare_Boolean_v2_27_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_RemoveLoadingScreenBox_9
  l0.SkipPostFx = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|1999569485", "1999569485", "CinematicPrep", "box_Compare_Boolean_v2_27.A_is_True", "box_RemoveLoadingScreenBox_9.In", clone, l0)
  l0:In()
end
function export:f_box_Toy_Car_Controller_39_DisconnectAvailable()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ToyCarController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Toy_Car_Controller_39()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|1514929977", "1514929977", "CinematicPrep", "box_Toy_Car_Controller_39.DisconnectAvailable", "box_Toy_Car_Controller_39.Disconnect", clone, l0)
  l0:Disconnect()
end
function export:f_box_Toy_Car_Controller_39_Disconnected()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ToyCarController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Toy_Car_Controller_39()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|495401884", "495401884", "CinematicPrep", "box_Toy_Car_Controller_39.Disconnected", "box_Toy_Car_Controller_39.CallBack", clone, l0)
  l0:CallBack()
end
function export:f_box_MultipleOR_28_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Player_Vehicle_Monitor_v2_20()
  l0 = self.box_MultipleOR_28
  l1 = self.box_Player_Vehicle_Monitor_v2_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|1575611593", "1575611593", "CinematicPrep", "box_MultipleOR_28.Out", "box_Player_Vehicle_Monitor_v2_20.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Compare_Boolean_v2_21_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_1()
  l0 = self.box_MultipleOR_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|1037875868", "1037875868", "CinematicPrep", "box_Compare_Boolean_v2_21.A_is_False", "box_MultipleOR_1.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Compare_Boolean_v2_21_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_32"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|123234286"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_box_SetActionMap_v2_32_Pushed
  l0.Popped = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|650898224", "650898224", "CinematicPrep", "box_Compare_Boolean_v2_21.A_is_True", "box_SetActionMap_v2_32.Push", clone, l0)
  l0:Push()
end
function export:f_box_SetActionMap_v2_29_Popped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_11()
  l0 = self.box_MultipleOR_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|1155016372", "1155016372", "CinematicPrep", "box_SetActionMap_v2_29.Popped", "box_MultipleOR_11.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_Compare_Boolean_v2_43_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_25()
  l0 = self.box_MultipleOR_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|1854481725", "1854481725", "CinematicPrep", "box_Compare_Boolean_v2_43.A_is_False", "box_MultipleOR_25.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Compare_Boolean_v2_43_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/ForcePawnsVehicleStop_v2.lua")]
  l0.PlayerEntity = nil
  l0.Brake = nil
  l0._graph = self
  l0._name = "box_ForcePawnsVehicleStop_v2_16"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|272999133"
  l0.Stopped = DummyFunction
  l0.ResetOut = self.f_box_ForcePawnsVehicleStop_v2_16_ResetOut
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|23973557", "23973557", "CinematicPrep", "box_Compare_Boolean_v2_43.A_is_True", "box_ForcePawnsVehicleStop_v2_16.Reset", clone, l0)
  l0:Reset()
end
function export:f_box_MultipleOR_17_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_34"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|1692860633"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_box_SetActionMap_v2_34_Popped
  l0 = self.box_MultipleOR_17
  l1 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|1888994611", "1888994611", "CinematicPrep", "box_MultipleOR_17.Out", "box_SetActionMap_v2_34.Pop", l0, l1)
  l1:Pop()
end
function export:f_box_Show_Or_Hide_All_UI_33_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_15()
  l0 = self.box_MultipleOR_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|1040097750", "1040097750", "CinematicPrep", "box_Show_Or_Hide_All_UI_33.Hidden", "box_MultipleOR_15.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Flying_Drone_Controller_35_DisconnectAvailable()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FlyingDroneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Flying_Drone_Controller_35()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|1102073883", "1102073883", "CinematicPrep", "box_Flying_Drone_Controller_35.DisconnectAvailable", "box_Flying_Drone_Controller_35.Disconnect", clone, l0)
  l0:Disconnect()
end
function export:f_box_Flying_Drone_Controller_35_Disconnected()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FlyingDroneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Flying_Drone_Controller_35()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|156629879", "156629879", "CinematicPrep", "box_Flying_Drone_Controller_35.Disconnected", "box_Flying_Drone_Controller_35.CallBack", clone, l0)
  l0:CallBack()
end
function export:f_box_MultipleOR_12_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = self.SkipPostFX
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_19"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|432750496"
  l0.Is_nil = self.f_box_Test_if_Nil_19_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_19_Is_not_nil
  l0 = self.box_MultipleOR_12
  l1 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|27889245", "27889245", "CinematicPrep", "box_MultipleOR_12.Out", "box_Test_if_Nil_19.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_13_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CameraRealign_7
  l0.Player = self.LocalPawn
  l0 = self.box_MultipleOR_13
  l1 = self.box_CameraRealign_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|833815146", "833815146", "CinematicPrep", "box_MultipleOR_13.Out", "box_CameraRealign_7.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_SetActionMap_v2_34_Popped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_11()
  l0 = self.box_MultipleOR_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|724387413", "724387413", "CinematicPrep", "box_SetActionMap_v2_34.Popped", "box_MultipleOR_11.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Player_PostFX_Controller_2_Played()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_11()
  l0 = self.box_Player_PostFX_Controller_2
  l1 = self.box_MultipleOR_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|1089735104", "1089735104", "CinematicPrep", "box_Player_PostFX_Controller_2.Played", "box_MultipleOR_11.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Compare_Boolean_v2_38_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_42()
  l0 = self.box_MultipleOR_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|1358476847", "1358476847", "CinematicPrep", "box_Compare_Boolean_v2_38.A_is_False", "box_MultipleOR_42.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Compare_Boolean_v2_38_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_41()
  l0 = self.box_MultipleOR_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|2025565705", "2025565705", "CinematicPrep", "box_Compare_Boolean_v2_38.A_is_True", "box_MultipleOR_41.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_RemoveLoadingScreenBox_10_LoadingScreenAlreadyRemoved()
  local l0, l1
  self = self._graph
  l0 = self.box_Player_PostFX_Controller_2
  l0.SequenceName = "postcinematic"
  l0 = self.box_RemoveLoadingScreenBox_10
  l1 = self.box_Player_PostFX_Controller_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|884304936", "884304936", "CinematicPrep", "box_RemoveLoadingScreenBox_10.LoadingScreenAlreadyRemoved", "box_Player_PostFX_Controller_2.StartPostFX", l0, l1)
  l1:StartPostFX()
end
function export:f_box_RemoveLoadingScreenBox_10_LoadingScreenRemoved()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_29"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|1481794190"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_box_SetActionMap_v2_29_Popped
  l0 = self.box_RemoveLoadingScreenBox_10
  l1 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|1300714435", "1300714435", "CinematicPrep", "box_RemoveLoadingScreenBox_10.LoadingScreenRemoved", "box_SetActionMap_v2_29.Pop", l0, l1)
  l1:Pop()
end
function export:f_box_MultipleOR_11_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_31"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|361062368"
  l0.Out = DummyFunction
  l0.Shown = self.f_box_Show_Or_Hide_All_UI_31_Shown
  l0.Hidden = DummyFunction
  l0 = self.box_MultipleOR_11
  l1 = Boxes[PathID("Domino/System/ShowOrHideAllUI.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|2017422395", "2017422395", "CinematicPrep", "box_MultipleOR_11.Out", "box_Show_Or_Hide_All_UI_31.Show", l0, l1)
  l1:Show()
end
function export:f_box_MultipleOR_42_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_40"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|1039932673"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_40_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_40_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_40_Out_2
  l0 = self.box_MultipleOR_42
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|990973722", "990973722", "CinematicPrep", "box_MultipleOR_42.Out", "box_Ordered_Output_40.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_14_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_RemoveLoadingScreenBox_10
  l0.SkipPostFx = 0
  l0 = self.box_MultipleOR_14
  l1 = self.box_RemoveLoadingScreenBox_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|770393285", "770393285", "CinematicPrep", "box_MultipleOR_14.Out", "box_RemoveLoadingScreenBox_10.In", l0, l1)
  l1:In()
end
function export:f_box_Player_Vehicle_Monitor_v2_20_Enter()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SetBoolean_v2_26()
  l0 = self.box_Player_Vehicle_Monitor_v2_20
  l1 = self.box_SetBoolean_v2_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|1237314090", "1237314090", "CinematicPrep", "box_Player_Vehicle_Monitor_v2_20.Enter", "box_SetBoolean_v2_26.True", l0, l1)
  l1:True()
end
function export:f_box_Player_Vehicle_Monitor_v2_20_Leave()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SetBoolean_v2_26()
  l0 = self.box_Player_Vehicle_Monitor_v2_20
  l1 = self.box_SetBoolean_v2_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|2047262432", "2047262432", "CinematicPrep", "box_Player_Vehicle_Monitor_v2_20.Leave", "box_SetBoolean_v2_26.False", l0, l1)
  l1:False()
end
function export:f_box_Test_if_Nil_37_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_42()
  l0 = self.box_MultipleOR_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|1632906728", "1632906728", "CinematicPrep", "box_Test_if_Nil_37.Is_nil", "box_MultipleOR_42.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Test_if_Nil_37_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.KeepDrones
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_38"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|1735439007"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_38_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_38_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|523423990", "523423990", "CinematicPrep", "box_Test_if_Nil_37.Is_not_nil", "box_Compare_Boolean_v2_38.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_22_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Player_Vehicle_Monitor_v2_20()
  l0 = self.box_Player_Vehicle_Monitor_v2_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|668572822", "668572822", "CinematicPrep", "box_Ordered_Output_22.Out", "box_Player_Vehicle_Monitor_v2_20.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_22_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_45()
  l0 = self.box_MultipleOR_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|797680020", "797680020", "CinematicPrep", "box_Ordered_Output_22.Out", "box_MultipleOR_45.Input", clone, l0)
  l0:Input(0)
end
function export:OnEnter_box_MultipleOR_23()
end
function export:OnEnter_box_MultipleOR_1()
end
function export:OnEnter_box_MultipleOR_45()
end
function export:OnEnter_box_SetBoolean_v2_26()
end
function export:OnEnter_box_MultipleOR_25()
end
function export:OnEnter_box_MultipleOR_41()
end
function export:OnEnter_box_MultipleOR_15()
end
function export:OnEnter_box_Toy_Car_Controller_39()
  local l0
  l0 = Boxes[PathID("Domino/System/ToyCarController.lua")]
  l0.PlayerPawn = nil
  l0._graph = self
  l0._name = "box_Toy_Car_Controller_39"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|1274991715"
  l0.CalledBack = DummyFunction
  l0.Available = DummyFunction
  l0.Unavailable = DummyFunction
  l0.Connected = DummyFunction
  l0.Disconnected = self.f_box_Toy_Car_Controller_39_Disconnected
  l0.CallBackAvailable = DummyFunction
  l0.CallBackUnavailable = DummyFunction
  l0.DisconnectAvailable = self.f_box_Toy_Car_Controller_39_DisconnectAvailable
  l0.DisconnectUnavailable = DummyFunction
  l0.ConnectAvailable = DummyFunction
  l0.ConnectUnavailable = DummyFunction
end
function export:OnEnter_box_MultipleOR_28()
end
function export:OnEnter_box_MultipleOR_17()
end
function export:OnEnter_box_Flying_Drone_Controller_35()
  local l0
  l0 = Boxes[PathID("Domino/System/FlyingDroneController.lua")]
  l0.PlayerPawn = nil
  l0._graph = self
  l0._name = "box_Flying_Drone_Controller_35"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CinematicPrep.domino|@CinematicPrep|1556109550"
  l0.CalledBack = DummyFunction
  l0.Available = DummyFunction
  l0.Unavailable = DummyFunction
  l0.Connected = DummyFunction
  l0.Disconnected = self.f_box_Flying_Drone_Controller_35_Disconnected
  l0.CallBackAvailable = DummyFunction
  l0.CallBackUnavailable = DummyFunction
  l0.DisconnectAvailable = self.f_box_Flying_Drone_Controller_35_DisconnectAvailable
  l0.DisconnectUnavailable = DummyFunction
  l0.ConnectAvailable = DummyFunction
  l0.ConnectUnavailable = DummyFunction
end
function export:OnEnter_box_MultipleOR_12()
end
function export:OnEnter_box_MultipleOR_13()
end
function export:OnEnter_box_MultipleOR_11()
end
function export:OnEnter_box_MultipleOR_42()
end
function export:OnEnter_box_MultipleOR_14()
end
function export:OnEnter_box_Player_Vehicle_Monitor_v2_20()
  local l0
  l0 = self.box_Player_Vehicle_Monitor_v2_20
  l0.CheckNow = 1
end
function export:PreOut()
end
function export:PostOut()
end
_compilerVersion = 4
