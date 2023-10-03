export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/LoadCheckpoint.lua")
  cbox:RegisterBox("domino/System/MapPointController_v3.lua")
  cbox:RegisterBox("domino/System/MissionMessageController.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:RegisterBox("domino/System/VehicleMonitor_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "TestVehicleHandlingRouteBike02"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike02"
  self.StartChase = DummyFunction
  self.Bike04 = nil
  self.box_Timer_v2_4 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_4
  l0._graph = self
  l0._name = "box_Timer_v2_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike02|138787144"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_4_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_VehicleMonitor_v2_8 = cbox:CreateBox("domino/System/VehicleMonitor_v2.lua")
  l0 = self.box_VehicleMonitor_v2_8
  l0._graph = self
  l0._name = "box_VehicleMonitor_v2_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike02|281815891"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Entered = self.f_box_VehicleMonitor_v2_8_Entered
  l0.Leave = self.f_box_VehicleMonitor_v2_8_Leave
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
  self.box_TriggerMonitor_v2_16 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_16
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike02|384375029"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_16_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MissionMessageController_7 = cbox:CreateBox("domino/System/MissionMessageController.lua")
  l0 = self.box_MissionMessageController_7
  l0._graph = self
  l0._name = "box_MissionMessageController_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike02|385646560"
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 2}
  l0.Out = DummyFunction
  l0.MessageRequested = self.f_box_MissionMessageController_7_MessageRequested
  l0.MessageCompleted = DummyFunction
  l0.DisplayStarted = DummyFunction
  self.box_LoadCheckpoint_13 = cbox:CreateBox("domino/System/LoadCheckpoint.lua")
  l0 = self.box_LoadCheckpoint_13
  l0._graph = self
  l0._name = "box_LoadCheckpoint_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike02|508569499"
  l0.Out = DummyFunction
  self.box_MapPointController_v3_1 = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_1
  l0._graph = self
  l0._name = "box_MapPointController_v3_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike02|523298400"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v3_1_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MissionMessageController_6 = cbox:CreateBox("domino/System/MissionMessageController.lua")
  l0 = self.box_MissionMessageController_6
  l0._graph = self
  l0._name = "box_MissionMessageController_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike02|569728189"
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 2}
  l0.Out = DummyFunction
  l0.MessageRequested = DummyFunction
  l0.MessageCompleted = self.f_box_MissionMessageController_6_MessageCompleted
  l0.DisplayStarted = DummyFunction
  self.box_MissionMessageController_10 = cbox:CreateBox("domino/System/MissionMessageController.lua")
  l0 = self.box_MissionMessageController_10
  l0._graph = self
  l0._name = "box_MissionMessageController_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike02|659959981"
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 2}
  l0.Out = DummyFunction
  l0.MessageRequested = self.f_box_MissionMessageController_10_MessageRequested
  l0.MessageCompleted = DummyFunction
  l0.DisplayStarted = DummyFunction
  self.box_SnapAndBind_11 = cbox:CreateBox("domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  l0 = self.box_SnapAndBind_11
  l0._graph = self
  l0._name = "box_SnapAndBind_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike02|951788158"
  l0.Attached = self.f_box_SnapAndBind_11_Attached
  self.box_MissionMessageController_15 = cbox:CreateBox("domino/System/MissionMessageController.lua")
  l0 = self.box_MissionMessageController_15
  l0._graph = self
  l0._name = "box_MissionMessageController_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike02|1197171161"
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 2}
  l0.Out = self.f_box_MissionMessageController_15_Out
  l0.MessageRequested = DummyFunction
  l0.MessageCompleted = DummyFunction
  l0.DisplayStarted = DummyFunction
  self.box_MapPointController_v3_17 = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_17
  l0._graph = self
  l0._name = "box_MapPointController_v3_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike02|1495719574"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v3_17_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MapPointController_v3_9 = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_9
  l0._graph = self
  l0._name = "box_MapPointController_v3_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike02|1666331873"
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MapPointController_v3_3 = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_3
  l0._graph = self
  l0._name = "box_MapPointController_v3_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike02|1759433338"
  l0.Shown = self.f_box_MapPointController_v3_3_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_VehicleMonitor_v2_2 = cbox:CreateBox("domino/System/VehicleMonitor_v2.lua")
  l0 = self.box_VehicleMonitor_v2_2
  l0._graph = self
  l0._name = "box_VehicleMonitor_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike02|1925917766"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Entered = self.f_box_VehicleMonitor_v2_2_Entered
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
  l0 = self.box_VehicleMonitor_v2_2
  l0.Vehicle = self.e_CurrentVehicle
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike02|1765793655", "1765793655", "TestVehicleHandlingRouteBike02", "In", "box_VehicleMonitor_v2_2.Enable", self, l0)
  l0:Enable()
end
function export:f_box_Timer_v2_4_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_4
  l1 = self.box_LoadCheckpoint_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike02|210412344", "210412344", "TestVehicleHandlingRouteBike02", "box_Timer_v2_4.TimeElapsed", "box_LoadCheckpoint_13.LoadCheckpoint", l0, l1)
  l1:LoadCheckpoint()
end
function export:f_box_VehicleMonitor_v2_8_Entered()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_7
  l0.MissionName = "MissionList.9223372046401533754"
  l0.DebugObjective = "return to the park"
  l0 = self.box_VehicleMonitor_v2_8
  l1 = self.box_MissionMessageController_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike02|1579897867", "1579897867", "TestVehicleHandlingRouteBike02", "box_VehicleMonitor_v2_8.Entered", "box_MissionMessageController_7.UpdateObjective", l0, l1)
  l1:UpdateObjective()
end
function export:f_box_VehicleMonitor_v2_8_Leave()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_10
  l0.MissionName = "MissionList.9223372046401533754"
  l0.DebugObjective = "Get back to the bike"
  l0 = self.box_VehicleMonitor_v2_8
  l1 = self.box_MissionMessageController_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike02|2104217790", "2104217790", "TestVehicleHandlingRouteBike02", "box_VehicleMonitor_v2_8.Leave", "box_MissionMessageController_10.UpdateObjective", l0, l1)
  l1:UpdateObjective()
end
function export:f_box_TriggerMonitor_v2_16_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v3_17
  l0.MapPoint = "9223372047939285987"
  l0 = self.box_TriggerMonitor_v2_16
  l1 = self.box_MapPointController_v3_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike02|1801966729", "1801966729", "TestVehicleHandlingRouteBike02", "box_TriggerMonitor_v2_16.Enter", "box_MapPointController_v3_17.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_MissionMessageController_7_MessageRequested()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v3_9()
  l0 = self.box_MissionMessageController_7
  l1 = self.box_MapPointController_v3_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike02|144086605", "144086605", "TestVehicleHandlingRouteBike02", "box_MissionMessageController_7.MessageRequested", "box_MapPointController_v3_9.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_MapPointController_v3_1_Hidden()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v3_3
  l0.MapPoint = "9223372047939285987"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0 = self.box_MapPointController_v3_1
  l1 = self.box_MapPointController_v3_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike02|998045845", "998045845", "TestVehicleHandlingRouteBike02", "box_MapPointController_v3_1.Hidden", "box_MapPointController_v3_3.Show", l0, l1)
  l1:Show()
end
function export:f_box_MissionMessageController_6_MessageCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike02|1580895924"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_14_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_14_Out_1
  l0 = self.box_MissionMessageController_6
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike02|315278627", "315278627", "TestVehicleHandlingRouteBike02", "box_MissionMessageController_6.MessageCompleted", "box_Ordered_Output_14.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_10_MessageRequested()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v3_9()
  l0 = self.box_MissionMessageController_10
  l1 = self.box_MapPointController_v3_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike02|47111062", "47111062", "TestVehicleHandlingRouteBike02", "box_MissionMessageController_10.MessageRequested", "box_MapPointController_v3_9.Show", l0, l1)
  l1:Show()
end
function export:f_box_SnapAndBind_11_Attached()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike02|1398445764"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_12_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_12_Out_1
  l0 = self.box_SnapAndBind_11
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike02|1596675330", "1596675330", "TestVehicleHandlingRouteBike02", "box_SnapAndBind_11.Attached", "box_Ordered_Output_12.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_15_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_4
  l0.Seconds = 5
  l0 = self.box_MissionMessageController_15
  l1 = self.box_Timer_v2_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike02|1573910308", "1573910308", "TestVehicleHandlingRouteBike02", "box_MissionMessageController_15.Out", "box_Timer_v2_4.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_12_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_6
  l0.MissionName = "MissionList.9223372046401533754"
  l0.DebugObjective = "Return to the Park and evade the police"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike02|1047073873", "1047073873", "TestVehicleHandlingRouteBike02", "box_Ordered_Output_12.Out", "box_MissionMessageController_6.UpdateObjective", clone, l0)
  l0:UpdateObjective()
end
function export:f_box_Ordered_Output_12_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_VehicleMonitor_v2_8
  l0.Vehicle = self.e_CurrentVehicle
  l0.Pawn = self.e_PlayerEntity
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike02|2069319066", "2069319066", "TestVehicleHandlingRouteBike02", "box_Ordered_Output_12.Out", "box_VehicleMonitor_v2_8.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MapPointController_v3_17_Hidden()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_15
  l0.MissionName = "MissionList.9223372046401533754"
  l0.DebugObjective = "Thanks for playing!"
  l0 = self.box_MapPointController_v3_17
  l1 = self.box_MissionMessageController_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike02|1849219491", "1849219491", "TestVehicleHandlingRouteBike02", "box_MapPointController_v3_17.Hidden", "box_MissionMessageController_15.UpdateObjective", l0, l1)
  l1:UpdateObjective()
end
function export:f_box_Ordered_Output_14_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike02|879160820", "879160820", "TestVehicleHandlingRouteBike02", "box_Ordered_Output_14.Out", "StartChase", clone, self)
  self:StartChase()
end
function export:f_box_Ordered_Output_14_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TriggerMonitor_v2_16
  l0.Trigger = "9223372047939362971"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike02|734688667", "734688667", "TestVehicleHandlingRouteBike02", "box_Ordered_Output_14.Out", "box_TriggerMonitor_v2_16.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MapPointController_v3_3_Shown()
  local l0, l1
  self = self._graph
  l0 = self.box_SnapAndBind_11
  l0.Parent = self.e_CurrentVehicle
  l0.Child = "9223372047747307766"
  l0.zPosOffset = 1.5
  l0 = self.box_MapPointController_v3_3
  l1 = self.box_SnapAndBind_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike02|1830529324", "1830529324", "TestVehicleHandlingRouteBike02", "box_MapPointController_v3_3.Shown", "box_SnapAndBind_11.Attach", l0, l1)
  l1:Attach()
end
function export:f_box_VehicleMonitor_v2_2_Entered()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v3_1
  l0.MapPoint = "9223372047747307766"
  l0 = self.box_VehicleMonitor_v2_2
  l1 = self.box_MapPointController_v3_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@TestVehicleHandlingRouteBike02|1519460243", "1519460243", "TestVehicleHandlingRouteBike02", "box_VehicleMonitor_v2_2.Entered", "box_MapPointController_v3_1.Hide", l0, l1)
  l1:Hide()
end
function export:OnEnter_box_MapPointController_v3_9()
  local l0
  l0 = self.box_MapPointController_v3_9
  l0.MapPoint = "9223372047747307766"
end
function export:StartChase()
end
_compilerVersion = 4
