export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CameraRealign.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/PlayerPostFXController.lua")
  cbox:RegisterBox("domino/System/PostGameOver.lua")
  cbox:RegisterBox("domino/System/RemoveLoadingScreen.lua")
  cbox:RegisterBox("domino/System/SetActionMap_v2.lua")
  cbox:RegisterBox("domino/System/TestIfNil.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S17M010_PostCinCredits_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010_PostCinCredits.domino|@S17M010_PostCinCredits_Main"
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.LocalPawn = nil
  self.box_RemoveLoadingScreenBox_7 = cbox:CreateBox("domino/System/RemoveLoadingScreen.lua")
  l0 = self.box_RemoveLoadingScreenBox_7
  l0._graph = self
  l0._name = "box_RemoveLoadingScreenBox_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010_PostCinCredits.domino|@S17M010_PostCinCredits_Main|2582403"
  l0.Out = DummyFunction
  l0.LoadingScreenAlreadyRemoved = self.f_box_RemoveLoadingScreenBox_7_LoadingScreenAlreadyRemoved
  l0.LoadingScreenRemoved = self.f_box_RemoveLoadingScreenBox_7_LoadingScreenRemoved
  self.box_Player_PostFX_Controller_18 = cbox:CreateBox("domino/System/PlayerPostFXController.lua")
  l0 = self.box_Player_PostFX_Controller_18
  l0._graph = self
  l0._name = "box_Player_PostFX_Controller_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010_PostCinCredits.domino|@S17M010_PostCinCredits_Main|45658454"
  l0.Played = self.f_box_Player_PostFX_Controller_18_Played
  l0.Stopped = DummyFunction
  self.box_MultipleOR_6 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_6
  l0._graph = self
  l0._name = "box_MultipleOR_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010_PostCinCredits.domino|@S17M010_PostCinCredits_Main|297324285"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_6_Out
  self.box_MultipleOR_17 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_17
  l0._graph = self
  l0._name = "box_MultipleOR_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010_PostCinCredits.domino|@S17M010_PostCinCredits_Main|514203182"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_17_Out
  self.box_CameraRealign_13 = cbox:CreateBox("domino/System/CameraRealign.lua")
  l0 = self.box_CameraRealign_13
  l0._graph = self
  l0._name = "box_CameraRealign_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010_PostCinCredits.domino|@S17M010_PostCinCredits_Main|556617934"
  l0.Out = self.f_box_CameraRealign_13_Out
  self.box_MultipleOR_9 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_9
  l0._graph = self
  l0._name = "box_MultipleOR_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010_PostCinCredits.domino|@S17M010_PostCinCredits_Main|733474399"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_9_Out
  self.box_MultipleOR_14 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_14
  l0._graph = self
  l0._name = "box_MultipleOR_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010_PostCinCredits.domino|@S17M010_PostCinCredits_Main|973000284"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_14_Out
  self.box_RemoveLoadingScreenBox_10 = cbox:CreateBox("domino/System/RemoveLoadingScreen.lua")
  l0 = self.box_RemoveLoadingScreenBox_10
  l0._graph = self
  l0._name = "box_RemoveLoadingScreenBox_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010_PostCinCredits.domino|@S17M010_PostCinCredits_Main|1425502444"
  l0.Out = DummyFunction
  l0.LoadingScreenAlreadyRemoved = self.f_box_RemoveLoadingScreenBox_10_LoadingScreenAlreadyRemoved
  l0.LoadingScreenRemoved = self.f_box_RemoveLoadingScreenBox_10_LoadingScreenRemoved
  self.box_MultipleOR_11 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_11
  l0._graph = self
  l0._name = "box_MultipleOR_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010_PostCinCredits.domino|@S17M010_PostCinCredits_Main|1500519958"
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
function export:In()
  local l0
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010_PostCinCredits.domino|@S17M010_PostCinCredits_Main|561039227"
  l0.Out = self.f_box_Get_Player_ID_8_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010_PostCinCredits.domino|@S17M010_PostCinCredits_Main|963611772", "963611772", "S17M010_PostCinCredits_Main", "In", "box_Get_Player_ID_8.In", self, l0)
  l0:In()
end
function export:f_box_RemoveLoadingScreenBox_7_LoadingScreenAlreadyRemoved()
  local l0, l1
  self = self._graph
  l0 = self.box_Player_PostFX_Controller_18
  l0.SequenceName = "postcinematic"
  l0 = self.box_RemoveLoadingScreenBox_7
  l1 = self.box_Player_PostFX_Controller_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010_PostCinCredits.domino|@S17M010_PostCinCredits_Main|627572288", "627572288", "S17M010_PostCinCredits_Main", "box_RemoveLoadingScreenBox_7.LoadingScreenAlreadyRemoved", "box_Player_PostFX_Controller_18.StartPostFX", l0, l1)
  l1:StartPostFX()
end
function export:f_box_RemoveLoadingScreenBox_7_LoadingScreenRemoved()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010_PostCinCredits.domino|@S17M010_PostCinCredits_Main|724506748"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_box_SetActionMap_v2_15_Popped
  l0 = self.box_RemoveLoadingScreenBox_7
  l1 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010_PostCinCredits.domino|@S17M010_PostCinCredits_Main|68961888", "68961888", "S17M010_PostCinCredits_Main", "box_RemoveLoadingScreenBox_7.LoadingScreenRemoved", "box_SetActionMap_v2_15.Pop", l0, l1)
  l1:Pop()
end
function export:f_box_Player_PostFX_Controller_18_Played()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_6()
  l0 = self.box_Player_PostFX_Controller_18
  l1 = self.box_MultipleOR_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010_PostCinCredits.domino|@S17M010_PostCinCredits_Main|2002192432", "2002192432", "S17M010_PostCinCredits_Main", "box_Player_PostFX_Controller_18.Played", "box_MultipleOR_6.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MultipleOR_6_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/PostGameOver.lua")]
  l0._graph = self
  l0._name = "box_PostGameOverBox_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010_PostCinCredits.domino|@S17M010_PostCinCredits_Main|1175059710"
  l0.Out = self.f_box_PostGameOverBox_16_Out
  l0 = self.box_MultipleOR_6
  l1 = Boxes[PathID("domino/System/PostGameOver.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010_PostCinCredits.domino|@S17M010_PostCinCredits_Main|701247251", "701247251", "S17M010_PostCinCredits_Main", "box_MultipleOR_6.Out", "box_PostGameOverBox_16.RecoverFromGameOver", l0, l1)
  l1:RecoverFromGameOver()
end
function export:f_box_SetActionMap_v2_4_Popped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_6()
  l0 = self.box_MultipleOR_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010_PostCinCredits.domino|@S17M010_PostCinCredits_Main|1156677294", "1156677294", "S17M010_PostCinCredits_Main", "box_SetActionMap_v2_4.Popped", "box_MultipleOR_6.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_MultipleOR_17_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CameraRealign_13
  l0.Player = self.LocalPawn
  l0 = self.box_MultipleOR_17
  l1 = self.box_CameraRealign_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010_PostCinCredits.domino|@S17M010_PostCinCredits_Main|1738407088", "1738407088", "S17M010_PostCinCredits_Main", "box_MultipleOR_17.Out", "box_CameraRealign_13.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_CameraRealign_13_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_11()
  l0 = self.box_CameraRealign_13
  l1 = self.box_MultipleOR_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010_PostCinCredits.domino|@S17M010_PostCinCredits_Main|1045307302", "1045307302", "S17M010_PostCinCredits_Main", "box_CameraRealign_13.Out", "box_MultipleOR_11.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Get_Player_ID_8_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.LocalPawn = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/TestIfNil.lua")]
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
  l0._name = "box_Test_if_Nil_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010_PostCinCredits.domino|@S17M010_PostCinCredits_Main|986248792"
  l0.Is_nil = self.f_box_Test_if_Nil_3_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_3_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010_PostCinCredits.domino|@S17M010_PostCinCredits_Main|1976865802", "1976865802", "S17M010_PostCinCredits_Main", "box_Get_Player_ID_8.Out", "box_Test_if_Nil_3.In", clone, l0)
  l0:In()
end
function export:f_box_SetActionMap_v2_15_Popped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_6()
  l0 = self.box_MultipleOR_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010_PostCinCredits.domino|@S17M010_PostCinCredits_Main|772854863", "772854863", "S17M010_PostCinCredits_Main", "box_SetActionMap_v2_15.Popped", "box_MultipleOR_6.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_MultipleOR_9_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_RemoveLoadingScreenBox_7
  l0.SkipPostFx = 0
  l0 = self.box_MultipleOR_9
  l1 = self.box_RemoveLoadingScreenBox_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010_PostCinCredits.domino|@S17M010_PostCinCredits_Main|1638403851", "1638403851", "S17M010_PostCinCredits_Main", "box_MultipleOR_9.Out", "box_RemoveLoadingScreenBox_7.In", l0, l1)
  l1:In()
end
function export:f_box_Compare_Boolean_v2_5_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_9()
  l0 = self.box_MultipleOR_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010_PostCinCredits.domino|@S17M010_PostCinCredits_Main|950980622", "950980622", "S17M010_PostCinCredits_Main", "box_Compare_Boolean_v2_5.A_is_False", "box_MultipleOR_9.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Compare_Boolean_v2_5_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_RemoveLoadingScreenBox_10
  l0.SkipPostFx = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010_PostCinCredits.domino|@S17M010_PostCinCredits_Main|1980598088", "1980598088", "S17M010_PostCinCredits_Main", "box_Compare_Boolean_v2_5.A_is_True", "box_RemoveLoadingScreenBox_10.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_14_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010_PostCinCredits.domino|@S17M010_PostCinCredits_Main|344324820"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_box_SetActionMap_v2_4_Popped
  l0 = self.box_MultipleOR_14
  l1 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010_PostCinCredits.domino|@S17M010_PostCinCredits_Main|1569479974", "1569479974", "S17M010_PostCinCredits_Main", "box_MultipleOR_14.Out", "box_SetActionMap_v2_4.Pop", l0, l1)
  l1:Pop()
end
function export:f_box_Test_if_Nil_3_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_17()
  l0 = self.box_MultipleOR_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010_PostCinCredits.domino|@S17M010_PostCinCredits_Main|1019015743", "1019015743", "S17M010_PostCinCredits_Main", "box_Test_if_Nil_3.Is_nil", "box_MultipleOR_17.Input", clone, l0)
  l0:Input(1)
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
  l0.A = self.SkipCameraAlign
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010_PostCinCredits.domino|@S17M010_PostCinCredits_Main|1290408780"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_12_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_12_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010_PostCinCredits.domino|@S17M010_PostCinCredits_Main|2084564675", "2084564675", "S17M010_PostCinCredits_Main", "box_Test_if_Nil_3.Is_not_nil", "box_Compare_Boolean_v2_12.In", clone, l0)
  l0:In()
end
function export:f_box_PostGameOverBox_16_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PostGameOver.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010_PostCinCredits.domino|@S17M010_PostCinCredits_Main|1300534534", "1300534534", "S17M010_PostCinCredits_Main", "box_PostGameOverBox_16.Out", "Out", clone, self)
  self:Out()
end
function export:f_box_Compare_Boolean_v2_12_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_17()
  l0 = self.box_MultipleOR_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010_PostCinCredits.domino|@S17M010_PostCinCredits_Main|1451261111", "1451261111", "S17M010_PostCinCredits_Main", "box_Compare_Boolean_v2_12.A_is_False", "box_MultipleOR_17.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Compare_Boolean_v2_12_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_11()
  l0 = self.box_MultipleOR_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010_PostCinCredits.domino|@S17M010_PostCinCredits_Main|1406566771", "1406566771", "S17M010_PostCinCredits_Main", "box_Compare_Boolean_v2_12.A_is_True", "box_MultipleOR_11.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_RemoveLoadingScreenBox_10_LoadingScreenAlreadyRemoved()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_14()
  l0 = self.box_RemoveLoadingScreenBox_10
  l1 = self.box_MultipleOR_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010_PostCinCredits.domino|@S17M010_PostCinCredits_Main|1949147135", "1949147135", "S17M010_PostCinCredits_Main", "box_RemoveLoadingScreenBox_10.LoadingScreenAlreadyRemoved", "box_MultipleOR_14.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_RemoveLoadingScreenBox_10_LoadingScreenRemoved()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_14()
  l0 = self.box_RemoveLoadingScreenBox_10
  l1 = self.box_MultipleOR_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010_PostCinCredits.domino|@S17M010_PostCinCredits_Main|1958098594", "1958098594", "S17M010_PostCinCredits_Main", "box_RemoveLoadingScreenBox_10.LoadingScreenRemoved", "box_MultipleOR_14.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MultipleOR_11_Out()
  local l0, l1
  self = self._graph
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
  l0._name = "box_Test_if_Nil_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010_PostCinCredits.domino|@S17M010_PostCinCredits_Main|2035731373"
  l0.Is_nil = self.f_box_Test_if_Nil_2_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_2_Is_not_nil
  l0 = self.box_MultipleOR_11
  l1 = Boxes[PathID("domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010_PostCinCredits.domino|@S17M010_PostCinCredits_Main|198485697", "198485697", "S17M010_PostCinCredits_Main", "box_MultipleOR_11.Out", "box_Test_if_Nil_2.In", l0, l1)
  l1:In()
end
function export:f_box_Test_if_Nil_2_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_9()
  l0 = self.box_MultipleOR_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010_PostCinCredits.domino|@S17M010_PostCinCredits_Main|413196347", "413196347", "S17M010_PostCinCredits_Main", "box_Test_if_Nil_2.Is_nil", "box_MultipleOR_9.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Test_if_Nil_2_Is_not_nil()
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
  l0._name = "box_Compare_Boolean_v2_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010_PostCinCredits.domino|@S17M010_PostCinCredits_Main|889336740"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_5_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_5_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010_PostCinCredits.domino|@S17M010_PostCinCredits_Main|2109852372", "2109852372", "S17M010_PostCinCredits_Main", "box_Test_if_Nil_2.Is_not_nil", "box_Compare_Boolean_v2_5.In", clone, l0)
  l0:In()
end
function export:OnEnter_box_MultipleOR_6()
end
function export:OnEnter_box_MultipleOR_17()
end
function export:OnEnter_box_MultipleOR_9()
end
function export:OnEnter_box_MultipleOR_14()
end
function export:OnEnter_box_MultipleOR_11()
end
function export:Out()
end
_compilerVersion = 4
