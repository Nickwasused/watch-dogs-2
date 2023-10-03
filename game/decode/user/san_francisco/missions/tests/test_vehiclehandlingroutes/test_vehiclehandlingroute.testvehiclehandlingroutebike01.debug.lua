export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/MapPointController_v3.lua")
  cbox:RegisterBox("domino/System/MissionMessageController.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/SetEntity.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:RegisterBox("domino/System/VehicleMonitor_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "TestVehicleHandlingRouteBike01"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike01"
  self.Out = DummyFunction
  self._9223372047326078008 = nil
  self.Bike04 = nil
  self.Boat01 = nil
  self.box_MapPointController_v3_16 = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_16
  l0._graph = self
  l0._name = "box_MapPointController_v3_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike01|48116410"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v3_16_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MapPointController_v3_15 = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_15
  l0._graph = self
  l0._name = "box_MapPointController_v3_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike01|130548360"
  l0.Shown = self.f_box_MapPointController_v3_15_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_VehicleMonitor_v2_10 = cbox:CreateBox("domino/System/VehicleMonitor_v2.lua")
  l0 = self.box_VehicleMonitor_v2_10
  l0._graph = self
  l0._name = "box_VehicleMonitor_v2_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike01|157687001"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Entered = self.f_box_VehicleMonitor_v2_10_Entered
  l0.Leave = DummyFunction
  l0.Exiting = DummyFunction
  l0.ChangeSeat = DummyFunction
  l0.BailedOut = DummyFunction
  l0.IsPawnHiding = DummyFunction
  l0.PawnIsNotHiding = DummyFunction
  l0.StateChange = DummyFunction
  l0.TakenDamage = DummyFunction
  l0.IsUnusable = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.NoMoveTimer = DummyFunction
  l0.OnMoveTimer = DummyFunction
  l0.IsSlowEnoughToExit = DummyFunction
  l0.VehicleJump = DummyFunction
  l0.VehicleLanding = DummyFunction
  l0.BollardTakedown = DummyFunction
  l0.SteamPipeTakedown = DummyFunction
  l0.TrafficLightTakedown = DummyFunction
  l0.FullTakedown = DummyFunction
  l0.PartialTakedown = DummyFunction
  self.box_TriggerMonitor_v2_7 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_7
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike01|167485904"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_7_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MissionMessageController_5 = cbox:CreateBox("domino/System/MissionMessageController.lua")
  l0 = self.box_MissionMessageController_5
  l0._graph = self
  l0._name = "box_MissionMessageController_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike01|315054663"
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 2}
  l0.Out = DummyFunction
  l0.MessageRequested = self.f_box_MissionMessageController_5_MessageRequested
  l0.MessageCompleted = DummyFunction
  l0.DisplayStarted = DummyFunction
  self.box_MissionMessageController_11 = cbox:CreateBox("domino/System/MissionMessageController.lua")
  l0 = self.box_MissionMessageController_11
  l0._graph = self
  l0._name = "box_MissionMessageController_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike01|468541377"
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 2}
  l0.Out = DummyFunction
  l0.MessageRequested = self.f_box_MissionMessageController_11_MessageRequested
  l0.MessageCompleted = DummyFunction
  l0.DisplayStarted = DummyFunction
  self.box_MapPointController_v3_25 = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_25
  l0._graph = self
  l0._name = "box_MapPointController_v3_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike01|482964067"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v3_25_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MissionMessageController_20 = cbox:CreateBox("domino/System/MissionMessageController.lua")
  l0 = self.box_MissionMessageController_20
  l0._graph = self
  l0._name = "box_MissionMessageController_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike01|556504077"
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 2}
  l0.Out = DummyFunction
  l0.MessageRequested = self.f_box_MissionMessageController_20_MessageRequested
  l0.MessageCompleted = DummyFunction
  l0.DisplayStarted = DummyFunction
  self.box_MissionMessageController_2 = cbox:CreateBox("domino/System/MissionMessageController.lua")
  l0 = self.box_MissionMessageController_2
  l0._graph = self
  l0._name = "box_MissionMessageController_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike01|634182596"
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 2}
  l0.Out = DummyFunction
  l0.MessageRequested = self.f_box_MissionMessageController_2_MessageRequested
  l0.MessageCompleted = DummyFunction
  l0.DisplayStarted = DummyFunction
  self.box_SnapAndBind_9 = cbox:CreateBox("domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  l0 = self.box_SnapAndBind_9
  l0._graph = self
  l0._name = "box_SnapAndBind_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike01|682713320"
  l0.Attached = self.f_box_SnapAndBind_9_Attached
  self.box_MapPointController_v3_1 = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_1
  l0._graph = self
  l0._name = "box_MapPointController_v3_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike01|736008315"
  l0.Shown = self.f_box_MapPointController_v3_1_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_SnapAndBind_17 = cbox:CreateBox("domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  l0 = self.box_SnapAndBind_17
  l0._graph = self
  l0._name = "box_SnapAndBind_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike01|895728503"
  l0.Attached = self.f_box_SnapAndBind_17_Attached
  self.box_MissionMessageController_19 = cbox:CreateBox("domino/System/MissionMessageController.lua")
  l0 = self.box_MissionMessageController_19
  l0._graph = self
  l0._name = "box_MissionMessageController_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike01|1063897511"
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 2}
  l0.Out = DummyFunction
  l0.MessageRequested = self.f_box_MissionMessageController_19_MessageRequested
  l0.MessageCompleted = DummyFunction
  l0.DisplayStarted = DummyFunction
  self.box_CLOController_4 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_4
  l0._graph = self
  l0._name = "box_CLOController_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike01|1091359157"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_4_OnUserInPlace
  self.box_MapPointController_v3_21 = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_21
  l0._graph = self
  l0._name = "box_MapPointController_v3_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike01|1158560203"
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MapPointController_v3_13 = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_13
  l0._graph = self
  l0._name = "box_MapPointController_v3_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike01|1841156380"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v3_13_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_VehicleMonitor_v2_18 = cbox:CreateBox("domino/System/VehicleMonitor_v2.lua")
  l0 = self.box_VehicleMonitor_v2_18
  l0._graph = self
  l0._name = "box_VehicleMonitor_v2_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike01|1875301099"
  l0.Enabled = self.f_box_VehicleMonitor_v2_18_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Entered = self.f_box_VehicleMonitor_v2_18_Entered
  l0.Leave = self.f_box_VehicleMonitor_v2_18_Leave
  l0.Exiting = DummyFunction
  l0.ChangeSeat = DummyFunction
  l0.BailedOut = DummyFunction
  l0.IsPawnHiding = DummyFunction
  l0.PawnIsNotHiding = DummyFunction
  l0.StateChange = DummyFunction
  l0.TakenDamage = DummyFunction
  l0.IsUnusable = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.NoMoveTimer = DummyFunction
  l0.OnMoveTimer = DummyFunction
  l0.IsSlowEnoughToExit = DummyFunction
  l0.VehicleJump = DummyFunction
  l0.VehicleLanding = DummyFunction
  l0.BollardTakedown = DummyFunction
  l0.SteamPipeTakedown = DummyFunction
  l0.TrafficLightTakedown = DummyFunction
  l0.FullTakedown = DummyFunction
  l0.PartialTakedown = DummyFunction
  self.box_VehicleMonitor_v2_3 = cbox:CreateBox("domino/System/VehicleMonitor_v2.lua")
  l0 = self.box_VehicleMonitor_v2_3
  l0._graph = self
  l0._name = "box_VehicleMonitor_v2_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike01|1952013082"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_VehicleMonitor_v2_3_Disabled
  l0.Enter = DummyFunction
  l0.Entered = self.f_box_VehicleMonitor_v2_3_Entered
  l0.Leave = DummyFunction
  l0.Exiting = DummyFunction
  l0.ChangeSeat = DummyFunction
  l0.BailedOut = DummyFunction
  l0.IsPawnHiding = DummyFunction
  l0.PawnIsNotHiding = DummyFunction
  l0.StateChange = DummyFunction
  l0.TakenDamage = DummyFunction
  l0.IsUnusable = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.NoMoveTimer = DummyFunction
  l0.OnMoveTimer = DummyFunction
  l0.IsSlowEnoughToExit = DummyFunction
  l0.VehicleJump = DummyFunction
  l0.VehicleLanding = DummyFunction
  l0.BollardTakedown = DummyFunction
  l0.SteamPipeTakedown = DummyFunction
  l0.TrafficLightTakedown = DummyFunction
  l0.FullTakedown = DummyFunction
  l0.PartialTakedown = DummyFunction
  self.box_MissionMessageController_8 = cbox:CreateBox("domino/System/MissionMessageController.lua")
  l0 = self.box_MissionMessageController_8
  l0._graph = self
  l0._name = "box_MissionMessageController_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike01|1990078463"
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 2}
  l0.Out = self.f_box_MissionMessageController_8_Out
  l0.MessageRequested = DummyFunction
  l0.MessageCompleted = DummyFunction
  l0.DisplayStarted = DummyFunction
  self.box_CLOController_6 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_6
  l0._graph = self
  l0._name = "box_CLOController_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike01|1994273987"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_6_OnUserInPlace
  self.box_Timer_v2_12 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_12
  l0._graph = self
  l0._name = "box_Timer_v2_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike01|2044502958"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_12_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
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
  l0 = self.box_CLOController_4
  l0.CLO = "9223372045973799142"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike01|648813815", "648813815", "TestVehicleHandlingRouteBike01", "In", "box_CLOController_4.Activate", self, l0)
  l0:Activate()
end
function export:f_box_MapPointController_v3_16_Hidden()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VehicleMonitor_v2_18()
  l0 = self.box_MapPointController_v3_16
  l1 = self.box_VehicleMonitor_v2_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike01|1039442127", "1039442127", "TestVehicleHandlingRouteBike01", "box_MapPointController_v3_16.Hidden", "box_VehicleMonitor_v2_18.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MapPointController_v3_15_Shown()
  local l0, l1
  self = self._graph
  l0 = self.box_SnapAndBind_17
  l0.Parent = self.Bike04
  l0.Child = "9223372047747309698"
  l0.zPosOffset = 1.5
  l0 = self.box_MapPointController_v3_15
  l1 = self.box_SnapAndBind_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike01|1059585500", "1059585500", "TestVehicleHandlingRouteBike01", "box_MapPointController_v3_15.Shown", "box_SnapAndBind_17.Attach", l0, l1)
  l1:Attach()
end
function export:f_box_VehicleMonitor_v2_10_Entered()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_11
  l0.MissionName = "MissionList.9223372046401533754"
  l0.DebugObjective = "Follow the waypoints"
  l0 = self.box_VehicleMonitor_v2_10
  l1 = self.box_MissionMessageController_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike01|668219942", "668219942", "TestVehicleHandlingRouteBike01", "box_VehicleMonitor_v2_10.Entered", "box_MissionMessageController_11.UpdateObjective", l0, l1)
  l1:UpdateObjective()
end
function export:f_box_TriggerMonitor_v2_7_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_SnapAndBind_9
  l0.Parent = self.Boat01
  l0.Child = "9223372047939285985"
  l0.zPosOffset = 1.5
  l0 = self.box_TriggerMonitor_v2_7
  l1 = self.box_SnapAndBind_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike01|1793087631", "1793087631", "TestVehicleHandlingRouteBike01", "box_TriggerMonitor_v2_7.Enter", "box_SnapAndBind_9.Attach", l0, l1)
  l1:Attach()
end
function export:f_box_Simple_Node_22_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike01|2012929784"
  l0.Out = self.f_box_Simple_Node_24_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike01|448767383", "448767383", "TestVehicleHandlingRouteBike01", "box_Simple_Node_22.Out", "box_Simple_Node_24.In", clone, l0)
  l0:In()
end
function export:f_box_MissionMessageController_5_MessageRequested()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v3_1
  l0.MapPoint = "9223372047939285985"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0 = self.box_MissionMessageController_5
  l1 = self.box_MapPointController_v3_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike01|1026678597", "1026678597", "TestVehicleHandlingRouteBike01", "box_MissionMessageController_5.MessageRequested", "box_MapPointController_v3_1.Show", l0, l1)
  l1:Show()
end
function export:f_box_MissionMessageController_11_MessageRequested()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v3_13
  l0.MapPoint = "9223372047939285985"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0 = self.box_MissionMessageController_11
  l1 = self.box_MapPointController_v3_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike01|2098762220", "2098762220", "TestVehicleHandlingRouteBike01", "box_MissionMessageController_11.MessageRequested", "box_MapPointController_v3_13.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_MapPointController_v3_25_Hidden()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = self.Boat01
  l0._graph = self
  l0._name = "box_Set_Entity_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike01|1642284846"
  l0.Out = self.f_box_Set_Entity_14_Out
  l0 = self.box_MapPointController_v3_25
  l1 = Boxes[PathID("domino/System/SetEntity.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike01|1192864551", "1192864551", "TestVehicleHandlingRouteBike01", "box_MapPointController_v3_25.Hidden", "box_Set_Entity_14.FromEntity", l0, l1)
  l1:FromEntity()
end
function export:f_box_MissionMessageController_20_MessageRequested()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v3_21()
  l0 = self.box_MissionMessageController_20
  l1 = self.box_MapPointController_v3_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike01|402648216", "402648216", "TestVehicleHandlingRouteBike01", "box_MissionMessageController_20.MessageRequested", "box_MapPointController_v3_21.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_MissionMessageController_2_MessageRequested()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VehicleMonitor_v2_3()
  l0 = self.box_MissionMessageController_2
  l1 = self.box_VehicleMonitor_v2_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike01|886359896", "886359896", "TestVehicleHandlingRouteBike01", "box_MissionMessageController_2.MessageRequested", "box_VehicleMonitor_v2_3.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_SnapAndBind_9_Attached()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_8
  l0.MissionName = "MissionList.9223372046401533754"
  l0.DebugObjective = "Switch to the Boat"
  l0 = self.box_SnapAndBind_9
  l1 = self.box_MissionMessageController_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike01|2108426382", "2108426382", "TestVehicleHandlingRouteBike01", "box_SnapAndBind_9.Attached", "box_MissionMessageController_8.UpdateObjective", l0, l1)
  l1:UpdateObjective()
end
function export:f_box_MapPointController_v3_1_Shown()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_6
  l0.CLO = "9223372047326078008"
  l0.SpawnOutsideLoadingRing = 1
  l0 = self.box_MapPointController_v3_1
  l1 = self.box_CLOController_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike01|62507799", "62507799", "TestVehicleHandlingRouteBike01", "box_MapPointController_v3_1.Shown", "box_CLOController_6.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_SnapAndBind_17_Attached()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_2
  l0.MissionName = "MissionList.9223372046401533754"
  l0.DebugObjective = "Get on the Bike"
  l0 = self.box_SnapAndBind_17
  l1 = self.box_MissionMessageController_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike01|763882820", "763882820", "TestVehicleHandlingRouteBike01", "box_SnapAndBind_17.Attached", "box_MissionMessageController_2.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_Ordered_Output_23_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_VehicleMonitor_v2_10
  l0.Vehicle = self.Boat01
  l0.Pawn = self.e_PlayerEntity
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike01|606123771", "606123771", "TestVehicleHandlingRouteBike01", "box_Ordered_Output_23.Out", "box_VehicleMonitor_v2_10.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_23_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike01|223183043"
  l0.Out = self.f_box_Simple_Node_22_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike01|54526320", "54526320", "TestVehicleHandlingRouteBike01", "box_Ordered_Output_23.Out", "box_Simple_Node_22.In", clone, l0)
  l0:In()
end
function export:f_box_MissionMessageController_19_MessageRequested()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v3_21()
  l0 = self.box_MissionMessageController_19
  l1 = self.box_MapPointController_v3_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike01|737771310", "737771310", "TestVehicleHandlingRouteBike01", "box_MissionMessageController_19.MessageRequested", "box_MapPointController_v3_21.Show", l0, l1)
  l1:Show()
end
function export:f_box_CLOController_4_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_4
  self.Bike04 = l0.UserID
  l0 = self.box_MapPointController_v3_15
  l0.MapPoint = "9223372047747309698"
  l0 = self.box_CLOController_4
  l1 = self.box_MapPointController_v3_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike01|1206777397", "1206777397", "TestVehicleHandlingRouteBike01", "box_CLOController_4.OnUserInPlace", "box_MapPointController_v3_15.Show", l0, l1)
  l1:Show()
end
function export:f_box_Set_Entity_14_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.e_CurrentVehicle = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike01|2079445056", "2079445056", "TestVehicleHandlingRouteBike01", "box_Set_Entity_14.Out", "Out", clone, self)
  self:Out()
end
function export:f_box_MapPointController_v3_13_Hidden()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v3_25
  l0.MapPoint = "9223372047747309698"
  l0 = self.box_MapPointController_v3_13
  l1 = self.box_MapPointController_v3_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike01|2013029010", "2013029010", "TestVehicleHandlingRouteBike01", "box_MapPointController_v3_13.Hidden", "box_MapPointController_v3_25.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_VehicleMonitor_v2_18_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_5
  l0.MissionName = "MissionList.9223372046401533754"
  l0.DebugObjective = "Ride to the Marina"
  l0 = self.box_VehicleMonitor_v2_18
  l1 = self.box_MissionMessageController_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike01|1407903380", "1407903380", "TestVehicleHandlingRouteBike01", "box_VehicleMonitor_v2_18.Enabled", "box_MissionMessageController_5.UpdateObjective", l0, l1)
  l1:UpdateObjective()
end
function export:f_box_VehicleMonitor_v2_18_Entered()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_20
  l0.MissionName = "MissionList.9223372046401533754"
  l0.DebugObjective = "Ride to the Marina"
  l0 = self.box_VehicleMonitor_v2_18
  l1 = self.box_MissionMessageController_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike01|725848296", "725848296", "TestVehicleHandlingRouteBike01", "box_VehicleMonitor_v2_18.Entered", "box_MissionMessageController_20.UpdateObjective", l0, l1)
  l1:UpdateObjective()
end
function export:f_box_VehicleMonitor_v2_18_Leave()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_19
  l0.MissionName = "MissionList.9223372046401533754"
  l0.DebugObjective = "Get back to the bike"
  l0 = self.box_VehicleMonitor_v2_18
  l1 = self.box_MissionMessageController_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike01|1429967169", "1429967169", "TestVehicleHandlingRouteBike01", "box_VehicleMonitor_v2_18.Leave", "box_MissionMessageController_19.UpdateObjective", l0, l1)
  l1:UpdateObjective()
end
function export:f_box_VehicleMonitor_v2_3_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v3_16
  l0.MapPoint = "9223372047747309698"
  l0 = self.box_VehicleMonitor_v2_3
  l1 = self.box_MapPointController_v3_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike01|1368799804", "1368799804", "TestVehicleHandlingRouteBike01", "box_VehicleMonitor_v2_3.Disabled", "box_MapPointController_v3_16.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_VehicleMonitor_v2_3_Entered()
  local l0
  self = self._graph
  self:OnEnter_box_VehicleMonitor_v2_3()
  l0 = self.box_VehicleMonitor_v2_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike01|419149308", "419149308", "TestVehicleHandlingRouteBike01", "box_VehicleMonitor_v2_3.Entered", "box_VehicleMonitor_v2_3.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_MissionMessageController_8_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike01|957495662"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_23_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_23_Out_1
  l0 = self.box_MissionMessageController_8
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike01|2140348685", "2140348685", "TestVehicleHandlingRouteBike01", "box_MissionMessageController_8.Out", "box_Ordered_Output_23.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_6_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_6
  self.Boat01 = l0.UserID
  l0 = self.box_Timer_v2_12
  l0.Seconds = 0.1
  l0 = self.box_CLOController_6
  l1 = self.box_Timer_v2_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike01|775105203", "775105203", "TestVehicleHandlingRouteBike01", "box_CLOController_6.OnUserInPlace", "box_Timer_v2_12.Start", l0, l1)
  l1:Start()
end
function export:f_box_Simple_Node_24_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VehicleMonitor_v2_18()
  l0 = self.box_VehicleMonitor_v2_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike01|587411284", "587411284", "TestVehicleHandlingRouteBike01", "box_Simple_Node_24.Out", "box_VehicleMonitor_v2_18.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Timer_v2_12_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_7
  l0.Trigger = "9223372047747233237"
  l0 = self.box_Timer_v2_12
  l1 = self.box_TriggerMonitor_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike01|832487941", "832487941", "TestVehicleHandlingRouteBike01", "box_Timer_v2_12.TimeElapsed", "box_TriggerMonitor_v2_7.Enable", l0, l1)
  l1:Enable()
end
function export:OnEnter_box_MapPointController_v3_21()
  local l0
  l0 = self.box_MapPointController_v3_21
  l0.MapPoint = "9223372047747309698"
end
function export:OnEnter_box_VehicleMonitor_v2_18()
  local l0
  l0 = self.box_VehicleMonitor_v2_18
  l0.Vehicle = self.Bike04
  l0.Pawn = self.e_PlayerEntity
end
function export:OnEnter_box_VehicleMonitor_v2_3()
  local l0
  l0 = self.box_VehicleMonitor_v2_3
  l0.Vehicle = self.Bike04
  l0.Pawn = self.e_PlayerEntity
end
function export:Out()
end
_compilerVersion = 4
