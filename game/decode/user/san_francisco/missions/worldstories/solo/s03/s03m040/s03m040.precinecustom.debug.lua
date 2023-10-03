export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/System/FlyingDroneController.lua")
  cbox:RegisterBox("domino/System/ForcePawnsVehicleStop_v2.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlayerPostFXController.lua")
  cbox:RegisterBox("domino/System/PlayerVehicleMonitor_v2.lua")
  cbox:RegisterBox("domino/System/SetActionMap_v2.lua")
  cbox:RegisterBox("domino/System/ShowOrHideAllUI.lua")
  cbox:RegisterBox("domino/System/TestIfNil.lua")
  cbox:RegisterBox("domino/System/ToyCarController.lua")
end
function export:Init(cbox)
  local l0
  self._name = "PreCineCustom"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@PreCineCustom"
  self.PreOut = DummyFunction
  self.box_Player_Vehicle_Monitor_v2_5 = cbox:CreateBox("domino/System/PlayerVehicleMonitor_v2.lua")
  l0 = self.box_Player_Vehicle_Monitor_v2_5
  l0._graph = self
  l0._name = "box_Player_Vehicle_Monitor_v2_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@PreCineCustom|70087151"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_Player_Vehicle_Monitor_v2_5_Enter
  l0.Leave = self.f_box_Player_Vehicle_Monitor_v2_5_Leave
  l0.ChangeSeat = DummyFunction
  self.box_MultipleOR_16 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_16
  l0._graph = self
  l0._name = "box_MultipleOR_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@PreCineCustom|79954917"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_16_Out
  self.box_MultipleOR_17 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_17
  l0._graph = self
  l0._name = "box_MultipleOR_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@PreCineCustom|351773910"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_17_Out
  self.box_MultipleOR_2 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_2
  l0._graph = self
  l0._name = "box_MultipleOR_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@PreCineCustom|498540590"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_2_Out
  self.box_Player_PostFX_Controller_6 = cbox:CreateBox("domino/System/PlayerPostFXController.lua")
  l0 = self.box_Player_PostFX_Controller_6
  l0._graph = self
  l0._name = "box_Player_PostFX_Controller_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@PreCineCustom|536883069"
  l0.Played = self.f_box_Player_PostFX_Controller_6_Played
  l0.Stopped = DummyFunction
  self.box_MultipleOR_8 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_8
  l0._graph = self
  l0._name = "box_MultipleOR_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@PreCineCustom|656348597"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_8_Out
  self.box_Player_Vehicle_Monitor_v2_20 = cbox:CreateBox("domino/System/PlayerVehicleMonitor_v2.lua")
  l0 = self.box_Player_Vehicle_Monitor_v2_20
  l0._graph = self
  l0._name = "box_Player_Vehicle_Monitor_v2_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@PreCineCustom|920426054"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_Player_Vehicle_Monitor_v2_20_Enter
  l0.Leave = self.f_box_Player_Vehicle_Monitor_v2_20_Leave
  l0.ChangeSeat = DummyFunction
  self.box_MultipleOR_19 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_19
  l0._graph = self
  l0._name = "box_MultipleOR_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@PreCineCustom|1283845846"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_19_Out
  self.box_MultipleOR_13 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_13
  l0._graph = self
  l0._name = "box_MultipleOR_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@PreCineCustom|2028556870"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_13_Out
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:PreCinematic()
  local l0
  self:OnEnter_box_Player_Vehicle_Monitor_v2_5()
  l0 = self.box_Player_Vehicle_Monitor_v2_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@PreCineCustom|1949103372", "1949103372", "PreCineCustom", "PreCinematic", "box_Player_Vehicle_Monitor_v2_5.Enable", self, l0)
  l0:Enable()
end
function export:f_box_Show_Or_Hide_All_UI_15_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_17()
  l0 = self.box_MultipleOR_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@PreCineCustom|214600340", "214600340", "PreCineCustom", "box_Show_Or_Hide_All_UI_15.Hidden", "box_MultipleOR_17.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Player_Vehicle_Monitor_v2_5_Enter()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ForcePawnsVehicleStop_v2.lua")]
  l0.PlayerEntity = nil
  l0.Brake = nil
  l0._graph = self
  l0._name = "box_ForcePawnsVehicleStop_v2_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@PreCineCustom|812403626"
  l0.Stopped = self.f_box_ForcePawnsVehicleStop_v2_11_Stopped
  l0.ResetOut = DummyFunction
  l0 = self.box_Player_Vehicle_Monitor_v2_5
  l1 = Boxes[PathID("domino/System/ForcePawnsVehicleStop_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@PreCineCustom|932632874", "932632874", "PreCineCustom", "box_Player_Vehicle_Monitor_v2_5.Enter", "box_ForcePawnsVehicleStop_v2_11.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_Player_Vehicle_Monitor_v2_5_Leave()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_16()
  l0 = self.box_Player_Vehicle_Monitor_v2_5
  l1 = self.box_MultipleOR_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@PreCineCustom|617555999", "617555999", "PreCineCustom", "box_Player_Vehicle_Monitor_v2_5.Leave", "box_MultipleOR_16.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MultipleOR_16_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@PreCineCustom|2102161770"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_1_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_1_Out_1
  l0 = self.box_MultipleOR_16
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@PreCineCustom|1079462335", "1079462335", "PreCineCustom", "box_MultipleOR_16.Out", "box_Ordered_Output_1.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_17_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/TestIfNil.lua")]
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
  l0._name = "box_Test_if_Nil_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@PreCineCustom|846070430"
  l0.Is_nil = self.f_box_Test_if_Nil_3_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_3_Is_not_nil
  l0 = self.box_MultipleOR_17
  l1 = Boxes[PathID("domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@PreCineCustom|1625548208", "1625548208", "PreCineCustom", "box_MultipleOR_17.Out", "box_Test_if_Nil_3.In", l0, l1)
  l1:In()
end
function export:f_box_ForcePawnsVehicleStop_v2_12_ResetOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ForcePawnsVehicleStop_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_2()
  l0 = self.box_MultipleOR_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@PreCineCustom|47566927", "47566927", "PreCineCustom", "box_ForcePawnsVehicleStop_v2_12.ResetOut", "box_MultipleOR_2.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Compare_Boolean_v2_18_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_13()
  l0 = self.box_MultipleOR_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@PreCineCustom|1439223831", "1439223831", "PreCineCustom", "box_Compare_Boolean_v2_18.A_is_False", "box_MultipleOR_13.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Compare_Boolean_v2_18_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@PreCineCustom|765686750"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_box_SetActionMap_v2_23_Pushed
  l0.Popped = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@PreCineCustom|172807416", "172807416", "PreCineCustom", "box_Compare_Boolean_v2_18.A_is_True", "box_SetActionMap_v2_23.Push", clone, l0)
  l0:Push()
end
function export:f_box_MultipleOR_2_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@PreCineCustom|859111774"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_14_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_14_Out_1
  l0 = self.box_MultipleOR_2
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@PreCineCustom|1981969976", "1981969976", "PreCineCustom", "box_MultipleOR_2.Out", "box_Ordered_Output_14.In", l0, l1)
  l1:In()
end
function export:f_box_Player_PostFX_Controller_6_Played()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_17()
  l0 = self.box_Player_PostFX_Controller_6
  l1 = self.box_MultipleOR_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@PreCineCustom|917073181", "917073181", "PreCineCustom", "box_Player_PostFX_Controller_6.Played", "box_MultipleOR_17.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MultipleOR_8_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@PreCineCustom|1962242187"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_9_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_9_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_9_Out_2
  l0 = self.box_MultipleOR_8
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@PreCineCustom|629244406", "629244406", "PreCineCustom", "box_MultipleOR_8.Out", "box_Ordered_Output_9.In", l0, l1)
  l1:In()
end
function export:f_box_Test_if_Nil_4_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_13()
  l0 = self.box_MultipleOR_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@PreCineCustom|741527768", "741527768", "PreCineCustom", "box_Test_if_Nil_4.Is_nil", "box_MultipleOR_13.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Test_if_Nil_4_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.SkipPostFX
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@PreCineCustom|441805944"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_18_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_18_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@PreCineCustom|460793120", "460793120", "PreCineCustom", "box_Test_if_Nil_4.Is_not_nil", "box_Compare_Boolean_v2_18.In", clone, l0)
  l0:In()
end
function export:f_box_SetActionMap_v2_23_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@PreCineCustom|35428622"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_Show_Or_Hide_All_UI_15_Hidden
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@PreCineCustom|425152353", "425152353", "PreCineCustom", "box_SetActionMap_v2_23.Pushed", "box_Show_Or_Hide_All_UI_15.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_ForcePawnsVehicleStop_v2_11_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ForcePawnsVehicleStop_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_16()
  l0 = self.box_MultipleOR_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@PreCineCustom|854320586", "854320586", "PreCineCustom", "box_ForcePawnsVehicleStop_v2_11.Stopped", "box_MultipleOR_16.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Test_if_Nil_3_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_8()
  l0 = self.box_MultipleOR_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@PreCineCustom|498973175", "498973175", "PreCineCustom", "box_Test_if_Nil_3.Is_nil", "box_MultipleOR_8.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Test_if_Nil_3_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.KeepDrones
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@PreCineCustom|2046347322"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_21_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_21_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@PreCineCustom|1083111381", "1083111381", "PreCineCustom", "box_Test_if_Nil_3.Is_not_nil", "box_Compare_Boolean_v2_21.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_14_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Player_Vehicle_Monitor_v2_20()
  l0 = self.box_Player_Vehicle_Monitor_v2_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@PreCineCustom|759183512", "759183512", "PreCineCustom", "box_Ordered_Output_14.Out", "box_Player_Vehicle_Monitor_v2_20.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_14_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@PreCineCustom|1901096716", "1901096716", "PreCineCustom", "box_Ordered_Output_14.Out", "PreOut", clone, self)
  self:PreOut()
end
function export:f_box_Player_Vehicle_Monitor_v2_20_Enter()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ForcePawnsVehicleStop_v2.lua")]
  l0.PlayerEntity = nil
  l0.Brake = nil
  l0._graph = self
  l0._name = "box_ForcePawnsVehicleStop_v2_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@PreCineCustom|400374679"
  l0.Stopped = DummyFunction
  l0.ResetOut = self.f_box_ForcePawnsVehicleStop_v2_12_ResetOut
  l0 = self.box_Player_Vehicle_Monitor_v2_20
  l1 = Boxes[PathID("domino/System/ForcePawnsVehicleStop_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@PreCineCustom|584138206", "584138206", "PreCineCustom", "box_Player_Vehicle_Monitor_v2_20.Enter", "box_ForcePawnsVehicleStop_v2_12.Reset", l0, l1)
  l1:Reset()
end
function export:f_box_Player_Vehicle_Monitor_v2_20_Leave()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_2()
  l0 = self.box_Player_Vehicle_Monitor_v2_20
  l1 = self.box_MultipleOR_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@PreCineCustom|1434885291", "1434885291", "PreCineCustom", "box_Player_Vehicle_Monitor_v2_20.Leave", "box_MultipleOR_2.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MultipleOR_19_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Player_Vehicle_Monitor_v2_20()
  l0 = self.box_MultipleOR_19
  l1 = self.box_Player_Vehicle_Monitor_v2_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@PreCineCustom|2056145825", "2056145825", "PreCineCustom", "box_MultipleOR_19.Out", "box_Player_Vehicle_Monitor_v2_20.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Ordered_Output_9_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/FlyingDroneController.lua")]
  l0.PlayerPawn = nil
  l0._graph = self
  l0._name = "box_Flying_Drone_Controller_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@PreCineCustom|1994542827"
  l0.CalledBack = DummyFunction
  l0.Available = DummyFunction
  l0.Unavailable = DummyFunction
  l0.Connected = DummyFunction
  l0.Disconnected = DummyFunction
  l0.CallBackAvailable = DummyFunction
  l0.CallBackUnavailable = DummyFunction
  l0.DisconnectAvailable = DummyFunction
  l0.DisconnectUnavailable = DummyFunction
  l0.ConnectAvailable = DummyFunction
  l0.ConnectUnavailable = DummyFunction
  l0.Destroyed = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@PreCineCustom|1084992631", "1084992631", "PreCineCustom", "box_Ordered_Output_9.Out", "box_Flying_Drone_Controller_7.CallBack", clone, l0)
  l0:CallBack()
end
function export:f_box_Ordered_Output_9_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ToyCarController.lua")]
  l0.PlayerPawn = nil
  l0.RCEntity = nil
  l0._graph = self
  l0._name = "box_Toy_Car_Controller_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@PreCineCustom|195555477"
  l0.CalledBack = DummyFunction
  l0.Available = DummyFunction
  l0.Unavailable = DummyFunction
  l0.Connected = DummyFunction
  l0.Disconnected = DummyFunction
  l0.CallBackAvailable = DummyFunction
  l0.CallBackUnavailable = DummyFunction
  l0.DisconnectAvailable = DummyFunction
  l0.DisconnectUnavailable = DummyFunction
  l0.ConnectAvailable = DummyFunction
  l0.ConnectUnavailable = DummyFunction
  l0.Destroyed = DummyFunction
  l0.DestroyedUncontrolledRC = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@PreCineCustom|1363250212", "1363250212", "PreCineCustom", "box_Ordered_Output_9.Out", "box_Toy_Car_Controller_22.CallBack", clone, l0)
  l0:CallBack()
end
function export:f_box_Ordered_Output_9_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_19()
  l0 = self.box_MultipleOR_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@PreCineCustom|999011250", "999011250", "PreCineCustom", "box_Ordered_Output_9.Out", "box_MultipleOR_19.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_MultipleOR_13_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Player_PostFX_Controller_6
  l0.SequenceName = "precinematic"
  l0 = self.box_MultipleOR_13
  l1 = self.box_Player_PostFX_Controller_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@PreCineCustom|39103138", "39103138", "PreCineCustom", "box_MultipleOR_13.Out", "box_Player_PostFX_Controller_6.StartPostFX", l0, l1)
  l1:StartPostFX()
end
function export:f_box_Compare_Boolean_v2_21_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_8()
  l0 = self.box_MultipleOR_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@PreCineCustom|38960457", "38960457", "PreCineCustom", "box_Compare_Boolean_v2_21.A_is_False", "box_MultipleOR_8.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Compare_Boolean_v2_21_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_19()
  l0 = self.box_MultipleOR_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@PreCineCustom|1319136220", "1319136220", "PreCineCustom", "box_Compare_Boolean_v2_21.A_is_True", "box_MultipleOR_19.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_1_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Player_Vehicle_Monitor_v2_5()
  l0 = self.box_Player_Vehicle_Monitor_v2_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@PreCineCustom|1797283756", "1797283756", "PreCineCustom", "box_Ordered_Output_1.Out", "box_Player_Vehicle_Monitor_v2_5.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_1_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/TestIfNil.lua")]
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
  l0._name = "box_Test_if_Nil_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@PreCineCustom|736303514"
  l0.Is_nil = self.f_box_Test_if_Nil_4_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_4_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@PreCineCustom|469213348", "469213348", "PreCineCustom", "box_Ordered_Output_1.Out", "box_Test_if_Nil_4.In", clone, l0)
  l0:In()
end
function export:OnEnter_box_Player_Vehicle_Monitor_v2_5()
  local l0
  l0 = self.box_Player_Vehicle_Monitor_v2_5
  l0.CheckNow = 1
end
function export:OnEnter_box_MultipleOR_16()
end
function export:OnEnter_box_MultipleOR_17()
end
function export:OnEnter_box_MultipleOR_2()
end
function export:OnEnter_box_MultipleOR_8()
end
function export:OnEnter_box_Player_Vehicle_Monitor_v2_20()
  local l0
  l0 = self.box_Player_Vehicle_Monitor_v2_20
  l0.CheckNow = 1
end
function export:OnEnter_box_MultipleOR_19()
end
function export:OnEnter_box_MultipleOR_13()
end
function export:PreOut()
end
_compilerVersion = 4
