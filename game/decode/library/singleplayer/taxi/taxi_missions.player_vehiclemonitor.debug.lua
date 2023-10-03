export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CompareEntity_v2.lua")
  cbox:RegisterBox("Domino/System/CompareFloats_v2.lua")
  cbox:RegisterBox("Domino/System/MapPointController_v3.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/SetEntity.lua")
  cbox:RegisterBox("Domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  cbox:RegisterBox("Domino/System/TimerToScreen.lua")
  cbox:RegisterBox("Domino/System/TutorialController.lua")
  cbox:RegisterBox("Domino/System/VehicleMonitor_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "Player_VehicleMonitor"
  self._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Player_VehicleMonitor"
  self.Entered = DummyFunction
  self.Out = DummyFunction
  self.Enabled = DummyFunction
  self.Disabled = DummyFunction
  self.Exited = DummyFunction
  self.VehicleWrecked = DummyFunction
  self.PlayerAbandonedVehicle = DummyFunction
  self.Vehicle_Icon = nil
  self.Player_Vehicle = nil
  self.curVehicle = nil
  self.box_VehicleMonitor_v2_7 = cbox:CreateBox("Domino/System/VehicleMonitor_v2.lua")
  l0 = self.box_VehicleMonitor_v2_7
  l0._graph = self
  l0._name = "box_VehicleMonitor_v2_7"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Player_VehicleMonitor|345206355"
  l0.Enabled = self.f_box_VehicleMonitor_v2_7_Enabled
  l0.Disabled = self.f_box_VehicleMonitor_v2_7_Disabled
  l0.Enter = self.f_box_VehicleMonitor_v2_7_Enter
  l0.Entered = self.f_box_VehicleMonitor_v2_7_Entered
  l0.Leave = self.f_box_VehicleMonitor_v2_7_Leave
  l0.Exiting = self.f_box_VehicleMonitor_v2_7_Exiting
  l0.ChangeSeat = self.f_box_VehicleMonitor_v2_7_ChangeSeat
  l0.BailedOut = self.f_box_VehicleMonitor_v2_7_BailedOut
  l0.IsPawnHiding = DummyFunction
  l0.PawnIsNotHiding = DummyFunction
  l0.StateChange = DummyFunction
  l0.TakenDamage = DummyFunction
  l0.IsUnusable = self.f_box_VehicleMonitor_v2_7_IsUnusable
  l0.IsUnderwater = DummyFunction
  l0.NoMoveTimer = DummyFunction
  l0.OnMoveTimer = DummyFunction
  l0.IsSlowEnoughToExit = DummyFunction
  l0.VehicleJump = DummyFunction
  l0.VehicleLanding = DummyFunction
  l0.BollardTakedown = DummyFunction
  l0.SteamPipeTakedown = DummyFunction
  l0.TrafficLightTakedown = DummyFunction
  l0.FullTakedown = self.f_box_VehicleMonitor_v2_7_FullTakedown
  l0.PartialTakedown = DummyFunction
  self.box_TutorialController_6 = cbox:CreateBox("Domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_6
  l0._graph = self
  l0._name = "box_TutorialController_6"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Player_VehicleMonitor|703389211"
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_box_TutorialController_6_DisplayRequested
  l0.NotificationHidden = self.f_box_TutorialController_6_NotificationHidden
  l0.MessageCompleted = DummyFunction
  self.box_MultipleOR_14 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_14
  l0._graph = self
  l0._name = "box_MultipleOR_14"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Player_VehicleMonitor|996537263"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_14_Out
  self.box_MapPointController_v3_21 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_21
  l0._graph = self
  l0._name = "box_MapPointController_v3_21"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Player_VehicleMonitor|1205069276"
  l0.Shown = self.f_box_MapPointController_v3_21_Shown
  l0.Hidden = self.f_box_MapPointController_v3_21_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_SnapAndBind_46 = cbox:CreateBox("Domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  l0 = self.box_SnapAndBind_46
  l0._graph = self
  l0._name = "box_SnapAndBind_46"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Player_VehicleMonitor|1208117948"
  l0.Attached = self.f_box_SnapAndBind_46_Attached
  self.box_TimerToScreen_10 = cbox:CreateBox("Domino/System/TimerToScreen.lua")
  l0 = self.box_TimerToScreen_10
  l0._graph = self
  l0._name = "box_TimerToScreen_10"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Player_VehicleMonitor|1222208999"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Stopped = DummyFunction
  l0.Restarted = DummyFunction
  l0.GotTime = DummyFunction
  l0.TimeElapsed = self.f_box_TimerToScreen_10_TimeElapsed
  self.box_MapPointController_v3_3 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_3
  l0._graph = self
  l0._name = "box_MapPointController_v3_3"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Player_VehicleMonitor|1400543053"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v3_3_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MultipleOR_18 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_18
  l0._graph = self
  l0._name = "box_MultipleOR_18"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Player_VehicleMonitor|1434770176"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_18_Out
  self.box_MultipleOR_9 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_9
  l0._graph = self
  l0._name = "box_MultipleOR_9"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Player_VehicleMonitor|1880878436"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_9_Out
  self.box_MultipleOR_22 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_22
  l0._graph = self
  l0._name = "box_MultipleOR_22"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Player_VehicleMonitor|2014761271"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_22_Out
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:Disable()
  local l0
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_12"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Player_VehicleMonitor|1530875063"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_12_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_12_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Player_VehicleMonitor|441451734", "441451734", "Player_VehicleMonitor", "Disable", "box_Ordered_Output_12.In", self, l0)
  l0:In()
end
function export:Enable()
  local l0
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_41"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Player_VehicleMonitor|636273022"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_41_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_41_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Player_VehicleMonitor|822347175", "822347175", "Player_VehicleMonitor", "Enable", "box_Ordered_Output_41.In", self, l0)
  l0:In()
end
function export:f_box_Ordered_Output_43_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Player_VehicleMonitor|377623585", "377623585", "Player_VehicleMonitor", "box_Ordered_Output_43.Out", "Exited", clone, self)
  self:Exited()
end
function export:f_box_Ordered_Output_43_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SnapAndBind_46
  l0.Parent = self.Player_Vehicle
  l0.Child = self.Vehicle_Icon
  l0.CarIcon = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Player_VehicleMonitor|1758122434", "1758122434", "Player_VehicleMonitor", "box_Ordered_Output_43.Out", "box_SnapAndBind_46.Attach", clone, l0)
  l0:Attach()
end
function export:f_box_VehicleMonitor_v2_7_BailedOut()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleMonitor_v2_7
  self.curVehicle = l0.VehicleID
  self:OnEnter_box_MultipleOR_18()
  l1 = self.box_MultipleOR_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Player_VehicleMonitor|260642202", "260642202", "Player_VehicleMonitor", "box_VehicleMonitor_v2_7.BailedOut", "box_MultipleOR_18.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_VehicleMonitor_v2_7_ChangeSeat()
  local l0
  self = self._graph
  l0 = self.box_VehicleMonitor_v2_7
  self.curVehicle = l0.VehicleID
end
function export:f_box_VehicleMonitor_v2_7_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v3_3
  l0.MapPoint = self.Vehicle_Icon
  l0 = self.box_VehicleMonitor_v2_7
  l1 = self.box_MapPointController_v3_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Player_VehicleMonitor|1656607631", "1656607631", "Player_VehicleMonitor", "box_VehicleMonitor_v2_7.Disabled", "box_MapPointController_v3_3.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_VehicleMonitor_v2_7_Enabled()
  local l0
  self = self._graph
  l0 = self.box_VehicleMonitor_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Player_VehicleMonitor|1680962718", "1680962718", "Player_VehicleMonitor", "box_VehicleMonitor_v2_7.Enabled", "Enabled", l0, self)
  self:Enabled()
end
function export:f_box_VehicleMonitor_v2_7_Enter()
  local l0
  self = self._graph
  l0 = self.box_VehicleMonitor_v2_7
  self.curVehicle = l0.VehicleID
end
function export:f_box_VehicleMonitor_v2_7_Entered()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleMonitor_v2_7
  self.curVehicle = l0.VehicleID
  l0 = Boxes[PathID("Domino/System/CompareEntity_v2.lua")]
  l0.Entity1 = self.Player_Vehicle
  l0.Entity2 = self.curVehicle
  l0._graph = self
  l0._name = "box_Compare_Entity_v2_5"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Player_VehicleMonitor|1053364413"
  l0.Out = DummyFunction
  l0.Equal = self.f_box_Compare_Entity_v2_5_Equal
  l0.NotEqual = DummyFunction
  l0 = self.box_VehicleMonitor_v2_7
  l1 = Boxes[PathID("Domino/System/CompareEntity_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Player_VehicleMonitor|2140009171", "2140009171", "Player_VehicleMonitor", "box_VehicleMonitor_v2_7.Entered", "box_Compare_Entity_v2_5.In", l0, l1)
  l1:In()
end
function export:f_box_VehicleMonitor_v2_7_Exiting()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleMonitor_v2_7
  self.curVehicle = l0.VehicleID
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_43"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Player_VehicleMonitor|79213814"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_43_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_43_Out_1
  l0 = self.box_VehicleMonitor_v2_7
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Player_VehicleMonitor|743088036", "743088036", "Player_VehicleMonitor", "box_VehicleMonitor_v2_7.Exiting", "box_Ordered_Output_43.In", l0, l1)
  l1:In()
end
function export:f_box_VehicleMonitor_v2_7_FullTakedown()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_18()
  l0 = self.box_VehicleMonitor_v2_7
  l1 = self.box_MultipleOR_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Player_VehicleMonitor|1524142993", "1524142993", "Player_VehicleMonitor", "box_VehicleMonitor_v2_7.FullTakedown", "box_MultipleOR_18.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_VehicleMonitor_v2_7_IsUnusable()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_18()
  l0 = self.box_VehicleMonitor_v2_7
  l1 = self.box_MultipleOR_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Player_VehicleMonitor|1633938319", "1633938319", "Player_VehicleMonitor", "box_VehicleMonitor_v2_7.IsUnusable", "box_MultipleOR_18.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_VehicleMonitor_v2_7_Leave()
  local l0
  self = self._graph
  l0 = self.box_VehicleMonitor_v2_7
  self.curVehicle = l0.VehicleID
end
function export:f_box_Set_Entity_23_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.Vehicle_Icon = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = self.VehiclePlayer
  l0._graph = self
  l0._name = "box_Set_Entity_26"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Player_VehicleMonitor|1650927302"
  l0.Out = self.f_box_Set_Entity_26_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Player_VehicleMonitor|310955586", "310955586", "Player_VehicleMonitor", "box_Set_Entity_23.Out", "box_Set_Entity_26.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_Ordered_Output_41_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_22()
  l0 = self.box_MultipleOR_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Player_VehicleMonitor|452735899", "452735899", "Player_VehicleMonitor", "box_Ordered_Output_41.Out", "box_MultipleOR_22.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_41_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = self.IconVehicle
  l0._graph = self
  l0._name = "box_Set_Entity_23"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Player_VehicleMonitor|623242739"
  l0.Out = self.f_box_Set_Entity_23_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Player_VehicleMonitor|31501703", "31501703", "Player_VehicleMonitor", "box_Ordered_Output_41.Out", "box_Set_Entity_23.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_TutorialController_6_DisplayRequested()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareFloats_v2.lua")]
  l0.A = self.TimeToReturnToVehicle
  l0.B = 0
  l0.Tolerance = nil
  l0._graph = self
  l0._name = "box_Compare_Floats_v2_4"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Player_VehicleMonitor|1066781105"
  l0.Out = DummyFunction
  l0.A_lt_B = DummyFunction
  l0.A_le_B = DummyFunction
  l0.A_eq_B = DummyFunction
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Floats_v2_4_A_gt_B
  l0.A_ne_B = DummyFunction
  l0 = self.box_TutorialController_6
  l1 = Boxes[PathID("Domino/System/CompareFloats_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Player_VehicleMonitor|1857976133", "1857976133", "Player_VehicleMonitor", "box_TutorialController_6.DisplayRequested", "box_Compare_Floats_v2_4.In", l0, l1)
  l1:In()
end
function export:f_box_TutorialController_6_NotificationHidden()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TimerToScreen_10()
  l0 = self.box_TutorialController_6
  l1 = self.box_TimerToScreen_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Player_VehicleMonitor|1665451890", "1665451890", "Player_VehicleMonitor", "box_TutorialController_6.NotificationHidden", "box_TimerToScreen_10.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_Ordered_Output_8_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Player_VehicleMonitor|467266339", "467266339", "Player_VehicleMonitor", "box_Ordered_Output_8.Out", "Disabled", clone, self)
  self:Disabled()
end
function export:f_box_Ordered_Output_8_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_9()
  l0 = self.box_MultipleOR_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Player_VehicleMonitor|1224403391", "1224403391", "Player_VehicleMonitor", "box_Ordered_Output_8.Out", "box_MultipleOR_9.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_MultipleOR_14_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VehicleMonitor_v2_7()
  l0 = self.box_MultipleOR_14
  l1 = self.box_VehicleMonitor_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Player_VehicleMonitor|125254631", "125254631", "Player_VehicleMonitor", "box_MultipleOR_14.Out", "box_VehicleMonitor_v2_7.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Compare_Entity_v2_5_Equal()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareEntity_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_2"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Player_VehicleMonitor|1098790969"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_2_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_2_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Player_VehicleMonitor|2132327488", "2132327488", "Player_VehicleMonitor", "box_Compare_Entity_v2_5.Equal", "box_Ordered_Output_2.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Floats_v2_4_A_gt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareFloats_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TimerToScreen_10()
  l0 = self.box_TimerToScreen_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Player_VehicleMonitor|1207994066", "1207994066", "Player_VehicleMonitor", "box_Compare_Floats_v2_4.A_gt_B", "box_TimerToScreen_10.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_2_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Player_VehicleMonitor|1984476148", "1984476148", "Player_VehicleMonitor", "box_Ordered_Output_2.Out", "Entered", clone, self)
  self:Entered()
end
function export:f_box_Ordered_Output_2_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_9()
  l0 = self.box_MultipleOR_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Player_VehicleMonitor|735396277", "735396277", "Player_VehicleMonitor", "box_Ordered_Output_2.Out", "box_MultipleOR_9.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_MapPointController_v3_21_Hidden()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_6()
  l0 = self.box_MapPointController_v3_21
  l1 = self.box_TutorialController_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Player_VehicleMonitor|340900264", "340900264", "Player_VehicleMonitor", "box_MapPointController_v3_21.Hidden", "box_TutorialController_6.HideNotification", l0, l1)
  l1:HideNotification()
end
function export:f_box_MapPointController_v3_21_Shown()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_6()
  l0 = self.box_MapPointController_v3_21
  l1 = self.box_TutorialController_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Player_VehicleMonitor|269990934", "269990934", "Player_VehicleMonitor", "box_MapPointController_v3_21.Shown", "box_TutorialController_6.Display", l0, l1)
  l1:Display()
end
function export:f_box_SnapAndBind_46_Attached()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v3_21()
  l0 = self.box_SnapAndBind_46
  l1 = self.box_MapPointController_v3_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Player_VehicleMonitor|416844997", "416844997", "Player_VehicleMonitor", "box_SnapAndBind_46.Attached", "box_MapPointController_v3_21.Show", l0, l1)
  l1:Show()
end
function export:f_box_TimerToScreen_10_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_11"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Player_VehicleMonitor|1450304599"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_11_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_11_Out_1
  l0 = self.box_TimerToScreen_10
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Player_VehicleMonitor|1254391644", "1254391644", "Player_VehicleMonitor", "box_TimerToScreen_10.TimeElapsed", "box_Ordered_Output_11.In", l0, l1)
  l1:In()
end
function export:f_box_MapPointController_v3_3_Hidden()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_8"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Player_VehicleMonitor|818638230"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_8_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_8_Out_1
  l0 = self.box_MapPointController_v3_3
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Player_VehicleMonitor|1724101981", "1724101981", "Player_VehicleMonitor", "box_MapPointController_v3_3.Hidden", "box_Ordered_Output_8.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_18_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_1"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Player_VehicleMonitor|2137652171"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_1_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_1_Out_1
  l0 = self.box_MultipleOR_18
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Player_VehicleMonitor|1349864970", "1349864970", "Player_VehicleMonitor", "box_MultipleOR_18.Out", "box_Ordered_Output_1.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_11_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Player_VehicleMonitor|236725001", "236725001", "Player_VehicleMonitor", "box_Ordered_Output_11.Out", "PlayerAbandonedVehicle", clone, self)
  self:PlayerAbandonedVehicle()
end
function export:f_box_Ordered_Output_11_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_14()
  l0 = self.box_MultipleOR_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Player_VehicleMonitor|1654124125", "1654124125", "Player_VehicleMonitor", "box_Ordered_Output_11.Out", "box_MultipleOR_14.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_Ordered_Output_12_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_22()
  l0 = self.box_MultipleOR_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Player_VehicleMonitor|696339947", "696339947", "Player_VehicleMonitor", "box_Ordered_Output_12.Out", "box_MultipleOR_22.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_12_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_14()
  l0 = self.box_MultipleOR_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Player_VehicleMonitor|1340031334", "1340031334", "Player_VehicleMonitor", "box_Ordered_Output_12.Out", "box_MultipleOR_14.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Set_Entity_26_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.Player_Vehicle = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VehicleMonitor_v2_7()
  l0 = self.box_VehicleMonitor_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Player_VehicleMonitor|1956183589", "1956183589", "Player_VehicleMonitor", "box_Set_Entity_26.Out", "box_VehicleMonitor_v2_7.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MultipleOR_9_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v3_21()
  l0 = self.box_MultipleOR_9
  l1 = self.box_MapPointController_v3_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Player_VehicleMonitor|1559506545", "1559506545", "Player_VehicleMonitor", "box_MultipleOR_9.Out", "box_MapPointController_v3_21.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_MultipleOR_22_Out()
  local l0
  self = self._graph
  l0 = self.box_MultipleOR_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Player_VehicleMonitor|1963109678", "1963109678", "Player_VehicleMonitor", "box_MultipleOR_22.Out", "Out", l0, self)
  self:Out()
end
function export:f_box_Ordered_Output_1_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_14()
  l0 = self.box_MultipleOR_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Player_VehicleMonitor|1095146565", "1095146565", "Player_VehicleMonitor", "box_Ordered_Output_1.Out", "box_MultipleOR_14.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_1_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Player_VehicleMonitor|2084272956", "2084272956", "Player_VehicleMonitor", "box_Ordered_Output_1.Out", "VehicleWrecked", clone, self)
  self:VehicleWrecked()
end
function export:OnEnter_box_VehicleMonitor_v2_7()
  local l0
  l0 = self.box_VehicleMonitor_v2_7
  l0.Vehicle = self.Player_Vehicle
  l0.CheckNow = self.CheckNow
end
function export:OnEnter_box_TutorialController_6()
  local l0
  l0 = self.box_TutorialController_6
  l0.Notification = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "ReturnToVehicle",
    id = "337817"
  }
  l0.Duration = -1
end
function export:OnEnter_box_MultipleOR_14()
end
function export:OnEnter_box_MapPointController_v3_21()
  local l0
  l0 = self.box_MapPointController_v3_21
  l0.MapPoint = self.Vehicle_Icon
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Acquire",
    id = "185984"
  }
end
function export:OnEnter_box_TimerToScreen_10()
  local l0
  l0 = self.box_TimerToScreen_10
  l0.Seconds = self.TimeToReturnToVehicle
end
function export:OnEnter_box_MultipleOR_18()
end
function export:OnEnter_box_MultipleOR_9()
end
function export:OnEnter_box_MultipleOR_22()
end
function export:Entered()
end
function export:Out()
end
function export:Enabled()
end
function export:Disabled()
end
function export:Exited()
end
function export:VehicleWrecked()
end
function export:PlayerAbandonedVehicle()
end
_compilerVersion = 4
