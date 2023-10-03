export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CompareFloats_v2.lua")
  cbox:RegisterBox("domino/System/CompareIntegers_v2.lua")
  cbox:RegisterBox("domino/System/GetDistance.lua")
  cbox:RegisterBox("domino/System/GetPosition.lua")
  cbox:RegisterBox("domino/System/IntegerArithmetics.lua")
  cbox:RegisterBox("domino/System/Lists/ListLength.lua")
  cbox:RegisterBox("domino/System/Lists/ListReader.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/MapPointController_v3.lua")
  cbox:RegisterBox("domino/System/MissionMessageController.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/SetEntity.lua")
  cbox:RegisterBox("domino/System/Lists/SetList.lua")
  cbox:RegisterBox("domino/System/SetInteger_v2.lua")
  cbox:RegisterBox("domino/System/SetPosition.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "TestVehicleHandlingRouteBoat01"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01"
  self.Out = DummyFunction
  self.ListLenght = 0
  self.TooltipIndex = 1
  self.CurrentIndex = 1
  self.Distance = 20
  self.CurrentIndexPlusOne = 1
  self.Checkpoints = {}
  self.NextCheckpoint = nil
  self.PlayerEntity = nil
  self.CurrentCheckpoint = nil
  self.CheckpointIcon = "9223372047124233553"
  self.CurrentVehicle = nil
  self.NextCheckpointIcon = "9223372046000333005"
  self.box_MultipleOR_10 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_10
  l0._graph = self
  l0._name = "box_MultipleOR_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|13289818"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_10_Out
  self.box_MapPointController_v3_16 = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_16
  l0._graph = self
  l0._name = "box_MapPointController_v3_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|104945459"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v3_16_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_CLOController_31 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_31
  l0._graph = self
  l0._name = "box_CLOController_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|549345367"
  l0.Activated = self.f_box_CLOController_31_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_31_OnUserInPlace
  self.box_MapPointController_v3_34 = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_34
  l0._graph = self
  l0._name = "box_MapPointController_v3_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|750900331"
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_Timer_v2_27 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_27
  l0._graph = self
  l0._name = "box_Timer_v2_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|785899505"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_27_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MapPointController_v3_32 = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_32
  l0._graph = self
  l0._name = "box_MapPointController_v3_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|1279943116"
  l0.Shown = self.f_box_MapPointController_v3_32_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MultipleOR_3 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_3
  l0._graph = self
  l0._name = "box_MultipleOR_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|1282581031"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_3_Out
  self.box_GetDistance_14 = cbox:CreateBox("domino/System/GetDistance.lua")
  l0 = self.box_GetDistance_14
  l0._graph = self
  l0._name = "box_GetDistance_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|1424588661"
  l0.Out = self.f_box_GetDistance_14_Out
  l0.OutViaRoad = self.f_box_GetDistance_14_OutViaRoad
  self.box_OnceOnly_v3_17 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_17
  l0._graph = self
  l0._name = "box_OnceOnly_v3_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|1445530317"
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_box_OnceOnly_v3_17_Out
  l0.ResetOut = DummyFunction
  self.box_ListWriter_8 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_8
  l0._graph = self
  l0._name = "box_ListWriter_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|1647897803"
  l0._DynamicAnchors = {Data = 17}
  l0.Added = self.f_box_ListWriter_8_Added
  l0.Removed = self.f_box_ListWriter_8_Removed
  l0.Out = self.f_box_ListWriter_8_Out
  self.box_ListReader_22 = cbox:CreateBox("domino/System/Lists/ListReader.lua")
  l0 = self.box_ListReader_22
  l0._graph = self
  l0._name = "box_ListReader_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|1655704642"
  l0.Out = self.f_box_ListReader_22_Out
  l0.EndOfList = self.f_box_ListReader_22_EndOfList
  self.box_MapPointController_v3_15 = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_15
  l0._graph = self
  l0._name = "box_MapPointController_v3_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|1687118587"
  l0.Shown = self.f_box_MapPointController_v3_15_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_Timer_v2_5 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_5
  l0._graph = self
  l0._name = "box_Timer_v2_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|1737955449"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_5_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionMessageController_29 = cbox:CreateBox("domino/System/MissionMessageController.lua")
  l0 = self.box_MissionMessageController_29
  l0._graph = self
  l0._name = "box_MissionMessageController_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|1774142109"
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 2}
  l0.Out = DummyFunction
  l0.MessageRequested = self.f_box_MissionMessageController_29_MessageRequested
  l0.MessageCompleted = DummyFunction
  l0.DisplayStarted = DummyFunction
  self.box_MapPointController_v3_30 = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_30
  l0._graph = self
  l0._name = "box_MapPointController_v3_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|1878196960"
  l0.Shown = self.f_box_MapPointController_v3_30_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_ListReader_18 = cbox:CreateBox("domino/System/Lists/ListReader.lua")
  l0 = self.box_ListReader_18
  l0._graph = self
  l0._name = "box_ListReader_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|1968313081"
  l0.Out = self.f_box_ListReader_18_Out
  l0.EndOfList = self.f_box_ListReader_18_EndOfList
  self.box_MapPointController_v3_33 = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_33
  l0._graph = self
  l0._name = "box_MapPointController_v3_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|2126799019"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v3_33_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
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
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = self.e_CurrentVehicle
  l0._graph = self
  l0._name = "box_Set_Entity_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|2043771343"
  l0.Out = self.f_box_Set_Entity_26_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|1317362688", "1317362688", "TestVehicleHandlingRouteBoat01", "In", "box_Set_Entity_26.FromEntity", self, l0)
  l0:FromEntity()
end
function export:f_box_MultipleOR_10_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = self.CurrentIndex
  l0.B = self.ListLenght
  l0._graph = self
  l0._name = "box_Compare_Integers_v2_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|1673010645"
  l0.Out = DummyFunction
  l0.A_lt_B = DummyFunction
  l0.A_le_B = self.f_box_Compare_Integers_v2_25_A_le_B
  l0.A_eq_B = self.f_box_Compare_Integers_v2_25_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Integers_v2_25_A_gt_B
  l0.A_ne_B = DummyFunction
  l0 = self.box_MultipleOR_10
  l1 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|878604403", "878604403", "TestVehicleHandlingRouteBoat01", "box_MultipleOR_10.Out", "box_Compare_Integers_v2_25.In", l0, l1)
  l1:In()
end
function export:f_box_GetPosition_19_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPosition.lua")]
  self._sld_xPos_box_GetPosition_19 = l0.xPos
  self._sld_yPos_box_GetPosition_19 = l0.yPos
  self._sld_zPos_box_GetPosition_19 = l0.zPos
  self._sld_zRot_box_GetPosition_19 = l0.zRot
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetPosition.lua")]
  l0.Entity = self.CheckpointIcon
  l0.xPos = self._sld_xPos_box_GetPosition_19
  l0.yPos = self._sld_yPos_box_GetPosition_19
  l0.zPos = self._sld_zPos_box_GetPosition_19
  l0.xRot = nil
  l0.yRot = nil
  l0.zRot = self._sld_zRot_box_GetPosition_19
  l0.Additive = 0
  l0.Local = 0
  l0._graph = self
  l0._name = "box_SetPosition_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|479356194"
  l0.Out = self.f_box_SetPosition_23_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|228151660", "228151660", "TestVehicleHandlingRouteBoat01", "box_GetPosition_19.Out", "box_SetPosition_23.In", clone, l0)
  l0:In()
end
function export:f_box_MapPointController_v3_16_Hidden()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v3_30
  l0.MapPoint = "9223372047747307766"
  l0 = self.box_MapPointController_v3_16
  l1 = self.box_MapPointController_v3_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|15141623", "15141623", "TestVehicleHandlingRouteBoat01", "box_MapPointController_v3_16.Hidden", "box_MapPointController_v3_30.Show", l0, l1)
  l1:Show()
end
function export:f_box_Ordered_Output_20_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_3()
  l0 = self.box_MultipleOR_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|822218743", "822218743", "TestVehicleHandlingRouteBoat01", "box_Ordered_Output_20.Out", "box_MultipleOR_3.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_20_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  l0.A = self.CurrentIndex
  l0.B = 1
  l0._graph = self
  l0._name = "box_Integer_Arithmetics_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|1126783338"
  l0.Out = self.f_box_Integer_Arithmetics_28_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|1446657845", "1446657845", "TestVehicleHandlingRouteBoat01", "box_Ordered_Output_20.Out", "box_Integer_Arithmetics_28.Add", clone, l0)
  l0:Add()
end
function export:f_box_SetPosition_23_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetPosition.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|324502466"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_20_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_20_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|73879471", "73879471", "TestVehicleHandlingRouteBoat01", "box_SetPosition_23.Out", "box_Ordered_Output_20.In", clone, l0)
  l0:In()
end
function export:f_box_CLOController_31_Activated()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  l0.Input = self.Checkpoints
  l0._graph = self
  l0._name = "box_ListLength_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|655112798"
  l0.Out = self.f_box_ListLength_21_Out
  l0.Empty = self.f_box_ListLength_21_Empty
  l0.NotEmpty = self.f_box_ListLength_21_NotEmpty
  l0 = self.box_CLOController_31
  l1 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|1301136406", "1301136406", "TestVehicleHandlingRouteBoat01", "box_CLOController_31.Activated", "box_ListLength_21.GetLength", l0, l1)
  l1:GetLength()
end
function export:f_box_CLOController_31_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self.box_CLOController_31
  self.e_Bike02 = l0.UserID
end
function export:f_box_Integer_Arithmetics_4_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  self.CurrentIndex = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_10()
  l0 = self.box_MultipleOR_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|1753118913", "1753118913", "TestVehicleHandlingRouteBoat01", "box_Integer_Arithmetics_4.Out", "box_MultipleOR_10.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_ListLength_21_Empty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  self.ListLenght = l0.Length
end
function export:f_box_ListLength_21_NotEmpty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  self.ListLenght = l0.Length
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MapPointController_v3_15
  l0.MapPoint = self.CheckpointIcon
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|255931449", "255931449", "TestVehicleHandlingRouteBoat01", "box_ListLength_21.NotEmpty", "box_MapPointController_v3_15.Show", clone, l0)
  l0:Show()
end
function export:f_box_ListLength_21_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  self.ListLenght = l0.Length
end
function export:f_box_Compare_Floats_v2_7_A_gt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareFloats_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_5
  l0.Seconds = 0.5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|1172521627", "1172521627", "TestVehicleHandlingRouteBoat01", "box_Compare_Floats_v2_7.A_gt_B", "box_Timer_v2_5.Start", clone, l0)
  l0:Start()
end
function export:f_box_Compare_Floats_v2_7_A_le_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareFloats_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_27
  l0.Seconds = 0.1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|1689073571", "1689073571", "TestVehicleHandlingRouteBoat01", "box_Compare_Floats_v2_7.A_le_B", "box_Timer_v2_27.Start", clone, l0)
  l0:Start()
end
function export:f_box_SetInteger_v2_13_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  self.CurrentIndex = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/Lists/SetList.lua")]
  l0.List = {}
  l0._graph = self
  l0._name = "box_Set_List_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|1472082627"
  l0.Out = self.f_box_Set_List_9_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|917015858", "917015858", "TestVehicleHandlingRouteBoat01", "box_SetInteger_v2_13.Out", "box_Set_List_9.FromList", clone, l0)
  l0:FromList()
end
function export:f_box_Timer_v2_27_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  l0.A = self.CurrentIndex
  l0.B = 1
  l0._graph = self
  l0._name = "box_Integer_Arithmetics_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|612414351"
  l0.Out = self.f_box_Integer_Arithmetics_4_Out
  l0 = self.box_Timer_v2_27
  l1 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|2071690854", "2071690854", "TestVehicleHandlingRouteBoat01", "box_Timer_v2_27.TimeElapsed", "box_Integer_Arithmetics_4.Add", l0, l1)
  l1:Add()
end
function export:f_box_ListLength_12_Empty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  self._sld_Length_box_ListLength_12 = l0.Length
end
function export:f_box_ListLength_12_NotEmpty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  self._sld_Length_box_ListLength_12 = l0.Length
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = self._sld_Length_box_ListLength_12
  l0.B = self.CurrentIndexPlusOne
  l0._graph = self
  l0._name = "box_Compare_Integers_v2_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|1937770925"
  l0.Out = DummyFunction
  l0.A_lt_B = DummyFunction
  l0.A_le_B = DummyFunction
  l0.A_eq_B = DummyFunction
  l0.A_ge_B = self.f_box_Compare_Integers_v2_24_A_ge_B
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|1894313673", "1894313673", "TestVehicleHandlingRouteBoat01", "box_ListLength_12.NotEmpty", "box_Compare_Integers_v2_24.In", clone, l0)
  l0:In()
end
function export:f_box_ListLength_12_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  self._sld_Length_box_ListLength_12 = l0.Length
end
function export:f_box_Integer_Arithmetics_28_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  self.CurrentIndexPlusOne = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  l0.Input = self.Checkpoints
  l0._graph = self
  l0._name = "box_ListLength_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|1056737035"
  l0.Out = self.f_box_ListLength_12_Out
  l0.Empty = self.f_box_ListLength_12_Empty
  l0.NotEmpty = self.f_box_ListLength_12_NotEmpty
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|1217598508", "1217598508", "TestVehicleHandlingRouteBoat01", "box_Integer_Arithmetics_28.Out", "box_ListLength_12.GetLength", clone, l0)
  l0:GetLength()
end
function export:f_box_MapPointController_v3_32_Shown()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_10()
  l0 = self.box_MapPointController_v3_32
  l1 = self.box_MultipleOR_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|700500552", "700500552", "TestVehicleHandlingRouteBoat01", "box_MapPointController_v3_32.Shown", "box_MultipleOR_10.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MultipleOR_3_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_GetDistance_14
  l0.Entity1 = self.CurrentCheckpoint
  l0.Entity2 = self.PlayerEntity
  l0 = self.box_MultipleOR_3
  l1 = self.box_GetDistance_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|1663079104", "1663079104", "TestVehicleHandlingRouteBoat01", "box_MultipleOR_3.Out", "box_GetDistance_14.Distance2D", l0, l1)
  l1:Distance2D()
end
function export:f_box_GetDistance_14_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_GetDistance_14
  self.Distance = l0.Distance
  l0 = Boxes[PathID("domino/System/CompareFloats_v2.lua")]
  l0.A = self.Distance
  l0.B = 20
  l0.Tolerance = nil
  l0._graph = self
  l0._name = "box_Compare_Floats_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|657302495"
  l0.Out = DummyFunction
  l0.A_lt_B = DummyFunction
  l0.A_le_B = self.f_box_Compare_Floats_v2_7_A_le_B
  l0.A_eq_B = DummyFunction
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Floats_v2_7_A_gt_B
  l0.A_ne_B = DummyFunction
  l0 = self.box_GetDistance_14
  l1 = Boxes[PathID("domino/System/CompareFloats_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|2026916485", "2026916485", "TestVehicleHandlingRouteBoat01", "box_GetDistance_14.Out", "box_Compare_Floats_v2_7.In", l0, l1)
  l1:In()
end
function export:f_box_GetDistance_14_OutViaRoad()
  local l0
  self = self._graph
  l0 = self.box_GetDistance_14
  self.Distance = l0.Distance
end
function export:f_box_OnceOnly_v3_17_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_8
  l0.Input = self.Checkpoints
  l0.Data[0] = "9223372047919671349"
  l0.Data[1] = "9223372047939474125"
  l0.Data[2] = "9223372047939474127"
  l0.Data[3] = "9223372047939474129"
  l0.Data[4] = "9223372047939474131"
  l0.Data[5] = "9223372047939474133"
  l0.Data[6] = "9223372047939474135"
  l0.Data[7] = "9223372047939474137"
  l0.Data[8] = "9223372047939474139"
  l0.Data[9] = "9223372047939474141"
  l0.Data[10] = "9223372047939474143"
  l0.Data[11] = "9223372047939474145"
  l0.Data[12] = "9223372047939474147"
  l0.Data[13] = "9223372047939474149"
  l0.Data[14] = "9223372047939474151"
  l0.Data[15] = "9223372047939474153"
  l0.Data[16] = "9223372047939474155"
  l0 = self.box_OnceOnly_v3_17
  l1 = self.box_ListWriter_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|1241037389", "1241037389", "TestVehicleHandlingRouteBoat01", "box_OnceOnly_v3_17.Out", "box_ListWriter_8.Add", l0, l1)
  l1:Add()
end
function export:f_box_Set_List_9_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/SetList.lua")]
  self.Checkpoints = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MapPointController_v3_33
  l0.MapPoint = self.NextCheckpointIcon
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|1040304290", "1040304290", "TestVehicleHandlingRouteBoat01", "box_Set_List_9.Out", "box_MapPointController_v3_33.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_ListWriter_8_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_8
  self.Checkpoints = l0.Target
  l0 = self.box_CLOController_31
  l0.CLO = "9223372047747307764"
  l0.SpawnOutsideLoadingRing = 1
  l0 = self.box_ListWriter_8
  l1 = self.box_CLOController_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|973475831", "973475831", "TestVehicleHandlingRouteBoat01", "box_ListWriter_8.Added", "box_CLOController_31.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_ListWriter_8_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_8
  self.Checkpoints = l0.Target
end
function export:f_box_ListWriter_8_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_8
  self.Checkpoints = l0.Target
end
function export:f_box_ListReader_22_EndOfList()
  local l0
  self = self._graph
  l0 = self.box_ListReader_22
  self.CurrentCheckpoint = l0.Data
end
function export:f_box_ListReader_22_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListReader_22
  self.CurrentCheckpoint = l0.Data
  l0 = Boxes[PathID("domino/System/GetPosition.lua")]
  l0.Entity = self.CurrentCheckpoint
  l0.BoneName = nil
  l0.LocalBonePostion = nil
  l0._graph = self
  l0._name = "box_GetPosition_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|13612871"
  l0.Out = self.f_box_GetPosition_19_Out
  l0 = self.box_ListReader_22
  l1 = Boxes[PathID("domino/System/GetPosition.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|171344477", "171344477", "TestVehicleHandlingRouteBoat01", "box_ListReader_22.Out", "box_GetPosition_19.In", l0, l1)
  l1:In()
end
function export:f_box_Compare_Integers_v2_25_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MapPointController_v3_34
  l0.MapPoint = self.NextCheckpointIcon
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|585569375", "585569375", "TestVehicleHandlingRouteBoat01", "box_Compare_Integers_v2_25.A_eq_B", "box_MapPointController_v3_34.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Compare_Integers_v2_25_A_gt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  l0.Integer = 1
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0._name = "box_SetInteger_v2_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|754727987"
  l0.Out = self.f_box_SetInteger_v2_13_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|1555908913", "1555908913", "TestVehicleHandlingRouteBoat01", "box_Compare_Integers_v2_25.A_gt_B", "box_SetInteger_v2_13.FromInteger", clone, l0)
  l0:FromInteger()
end
function export:f_box_Compare_Integers_v2_25_A_le_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListReader_22
  l0.Input = self.Checkpoints
  l0.Index = self.CurrentIndex
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|995494967", "995494967", "TestVehicleHandlingRouteBoat01", "box_Compare_Integers_v2_25.A_le_B", "box_ListReader_22.Read", clone, l0)
  l0:Read()
end
function export:f_box_MapPointController_v3_15_Shown()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v3_32
  l0.MapPoint = self.NextCheckpointIcon
  l0 = self.box_MapPointController_v3_15
  l1 = self.box_MapPointController_v3_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|1854729852", "1854729852", "TestVehicleHandlingRouteBoat01", "box_MapPointController_v3_15.Shown", "box_MapPointController_v3_32.Show", l0, l1)
  l1:Show()
end
function export:f_box_Timer_v2_5_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_3()
  l0 = self.box_Timer_v2_5
  l1 = self.box_MultipleOR_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|1535693340", "1535693340", "TestVehicleHandlingRouteBoat01", "box_Timer_v2_5.TimeElapsed", "box_MultipleOR_3.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MissionMessageController_29_MessageRequested()
  local l0
  self = self._graph
  l0 = self.box_MissionMessageController_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|1922324538", "1922324538", "TestVehicleHandlingRouteBoat01", "box_MissionMessageController_29.MessageRequested", "Out", l0, self)
  self:Out()
end
function export:f_box_GetPosition_6_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPosition.lua")]
  self._sld_xPos_box_GetPosition_6 = l0.xPos
  self._sld_yPos_box_GetPosition_6 = l0.yPos
  self._sld_zPos_box_GetPosition_6 = l0.zPos
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetPosition.lua")]
  l0.Entity = self.NextCheckpointIcon
  l0.xPos = self._sld_xPos_box_GetPosition_6
  l0.yPos = self._sld_yPos_box_GetPosition_6
  l0.zPos = self._sld_zPos_box_GetPosition_6
  l0.xRot = nil
  l0.yRot = nil
  l0.zRot = nil
  l0.Additive = 0
  l0.Local = 0
  l0._graph = self
  l0._name = "box_SetPosition_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|1784311934"
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|493327005", "493327005", "TestVehicleHandlingRouteBoat01", "box_GetPosition_6.Out", "box_SetPosition_11.In", clone, l0)
  l0:In()
end
function export:f_box_MapPointController_v3_30_Shown()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_29
  l0.MissionName = "MissionList.9223372046401533754"
  l0.DebugObjective = "Switch to the Superbike"
  l0 = self.box_MapPointController_v3_30
  l1 = self.box_MissionMessageController_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|1328011682", "1328011682", "TestVehicleHandlingRouteBoat01", "box_MapPointController_v3_30.Shown", "box_MissionMessageController_29.UpdateObjective", l0, l1)
  l1:UpdateObjective()
end
function export:f_box_Set_Entity_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.PlayerEntity = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_OnceOnly_v3_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|1313437173", "1313437173", "TestVehicleHandlingRouteBoat01", "box_Set_Entity_2.Out", "box_OnceOnly_v3_17.In", clone, l0)
  l0:In(0)
end
function export:f_box_Compare_Integers_v2_24_A_ge_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListReader_18
  l0.Input = self.Checkpoints
  l0.Index = self.CurrentIndexPlusOne
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|270667001", "270667001", "TestVehicleHandlingRouteBoat01", "box_Compare_Integers_v2_24.A_ge_B", "box_ListReader_18.Read", clone, l0)
  l0:Read()
end
function export:f_box_ListReader_18_EndOfList()
  local l0
  self = self._graph
  l0 = self.box_ListReader_18
  self.NextCheckpoint = l0.Data
end
function export:f_box_ListReader_18_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListReader_18
  self.NextCheckpoint = l0.Data
  l0 = Boxes[PathID("domino/System/GetPosition.lua")]
  l0.Entity = self.NextCheckpoint
  l0.BoneName = nil
  l0.LocalBonePostion = nil
  l0._graph = self
  l0._name = "box_GetPosition_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|1874207218"
  l0.Out = self.f_box_GetPosition_6_Out
  l0 = self.box_ListReader_18
  l1 = Boxes[PathID("domino/System/GetPosition.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|1636878893", "1636878893", "TestVehicleHandlingRouteBoat01", "box_ListReader_18.Out", "box_GetPosition_6.In", l0, l1)
  l1:In()
end
function export:f_box_Set_Entity_26_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.CurrentVehicle = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = self.e_PlayerEntity
  l0._graph = self
  l0._name = "box_Set_Entity_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|1894099534"
  l0.Out = self.f_box_Set_Entity_2_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|1740015575", "1740015575", "TestVehicleHandlingRouteBoat01", "box_Set_Entity_26.Out", "box_Set_Entity_2.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_MapPointController_v3_33_Hidden()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v3_16
  l0.MapPoint = self.CheckpointIcon
  l0 = self.box_MapPointController_v3_33
  l1 = self.box_MapPointController_v3_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBoat01|543147990", "543147990", "TestVehicleHandlingRouteBoat01", "box_MapPointController_v3_33.Hidden", "box_MapPointController_v3_16.Hide", l0, l1)
  l1:Hide()
end
function export:OnEnter_box_MultipleOR_10()
end
function export:OnEnter_box_MultipleOR_3()
end
function export:Out()
end
_compilerVersion = 4
