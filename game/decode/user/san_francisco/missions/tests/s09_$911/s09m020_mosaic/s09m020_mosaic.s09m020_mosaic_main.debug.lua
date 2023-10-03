export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AssignPatrol_v2.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PatrolPointMonitor_v2.lua")
  cbox:RegisterBox("domino/System/VehicleBhvMonitor.lua")
  cbox:RegisterBox("domino/System/VehicleBhvController.lua")
  cbox:RegisterBox("domino/System/VehicleSeatingController.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S09M020_Mosaic_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M020_Mosaic\\S09M020_Mosaic.domino|@S09M020_Mosaic_Main"
  self.Player = nil
  self.car = nil
  self.ridaz1 = nil
  self.ridaz2 = nil
  self.cops1 = nil
  self.cops2 = nil
  self.box_PatrolPointMonitor_v2_21 = cbox:CreateBox("domino/System/PatrolPointMonitor_v2.lua")
  l0 = self.box_PatrolPointMonitor_v2_21
  l0._graph = self
  l0._name = "box_PatrolPointMonitor_v2_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M020_Mosaic\\S09M020_Mosaic.domino|@S09M020_Mosaic_Main|161361560"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_PatrolPointMonitor_v2_21_Disabled
  l0.SpecificPointReached = DummyFunction
  l0.CurrentPointReached = DummyFunction
  l0.EndPointReached = self.f_box_PatrolPointMonitor_v2_21_EndPointReached
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M020_Mosaic\\S09M020_Mosaic.domino|@S09M020_Mosaic_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_Assign_Patrol_Controller_v2_15 = cbox:CreateBox("domino/System/AssignPatrol_v2.lua")
  l0 = self.box_Assign_Patrol_Controller_v2_15
  l0._graph = self
  l0._name = "box_Assign_Patrol_Controller_v2_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M020_Mosaic\\S09M020_Mosaic.domino|@S09M020_Mosaic_Main|261115600"
  l0.Out = DummyFunction
  l0.Assigned = self.f_box_Assign_Patrol_Controller_v2_15_Assigned
  l0.Unassigned = DummyFunction
  l0.SpeedSet = DummyFunction
  l0.Aborted = DummyFunction
  l0.Failed = DummyFunction
  self.box_Vehicle_Bhv_Monitor_9 = cbox:CreateBox("domino/System/VehicleBhvMonitor.lua")
  l0 = self.box_Vehicle_Bhv_Monitor_9
  l0._graph = self
  l0._name = "box_Vehicle_Bhv_Monitor_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M020_Mosaic\\S09M020_Mosaic.domino|@S09M020_Mosaic_Main|362916210"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Vehicle_Bhv_Monitor_9_Disabled
  l0.Stuck = DummyFunction
  l0.Broken = DummyFunction
  l0.TargetDetected = DummyFunction
  l0.InLOS = DummyFunction
  l0.ReacquireLOSTimerExpired = DummyFunction
  l0.LostLOSTimerExpired = DummyFunction
  l0.SuspiciousTargetAction = DummyFunction
  l0.SpecificPathPointReached = DummyFunction
  l0.PathPointReached = DummyFunction
  l0.EndPathPointReached = self.f_box_Vehicle_Bhv_Monitor_9_EndPathPointReached
  l0.InRange = DummyFunction
  l0.WarningRange = DummyFunction
  l0.OutsideRange = DummyFunction
  l0.OutsideTimerExpired = DummyFunction
  self.box_Assign_Patrol_Controller_v2_18 = cbox:CreateBox("domino/System/AssignPatrol_v2.lua")
  l0 = self.box_Assign_Patrol_Controller_v2_18
  l0._graph = self
  l0._name = "box_Assign_Patrol_Controller_v2_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M020_Mosaic\\S09M020_Mosaic.domino|@S09M020_Mosaic_Main|415925657"
  l0.Out = DummyFunction
  l0.Assigned = self.f_box_Assign_Patrol_Controller_v2_18_Assigned
  l0.Unassigned = DummyFunction
  l0.SpeedSet = DummyFunction
  l0.Aborted = DummyFunction
  l0.Failed = DummyFunction
  self.box_CLOController_14 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_14
  l0._graph = self
  l0._name = "box_CLOController_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M020_Mosaic\\S09M020_Mosaic.domino|@S09M020_Mosaic_Main|427973674"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_14_OnUserInPlace
  self.box_Assign_Patrol_Controller_v2_17 = cbox:CreateBox("domino/System/AssignPatrol_v2.lua")
  l0 = self.box_Assign_Patrol_Controller_v2_17
  l0._graph = self
  l0._name = "box_Assign_Patrol_Controller_v2_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M020_Mosaic\\S09M020_Mosaic.domino|@S09M020_Mosaic_Main|545615105"
  l0.Out = DummyFunction
  l0.Assigned = self.f_box_Assign_Patrol_Controller_v2_17_Assigned
  l0.Unassigned = DummyFunction
  l0.SpeedSet = DummyFunction
  l0.Aborted = DummyFunction
  l0.Failed = DummyFunction
  self.box_VehicleSeatingController_7 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_7
  l0._graph = self
  l0._name = "box_VehicleSeatingController_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M020_Mosaic\\S09M020_Mosaic.domino|@S09M020_Mosaic_Main|603581327"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_box_VehicleSeatingController_7_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_VehicleSeatingController_23 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_23
  l0._graph = self
  l0._name = "box_VehicleSeatingController_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M020_Mosaic\\S09M020_Mosaic.domino|@S09M020_Mosaic_Main|642165940"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_box_VehicleSeatingController_23_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_VehicleSeatingController_6 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_6
  l0._graph = self
  l0._name = "box_VehicleSeatingController_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M020_Mosaic\\S09M020_Mosaic.domino|@S09M020_Mosaic_Main|672861130"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_box_VehicleSeatingController_6_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_Multiple_AND_22 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_22
  l0._graph = self
  l0._name = "box_Multiple_AND_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M020_Mosaic\\S09M020_Mosaic.domino|@S09M020_Mosaic_Main|729373642"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_22_Out
  self.box_VehicleBhvController_8 = cbox:CreateBox("domino/System/VehicleBhvController.lua")
  l0 = self.box_VehicleBhvController_8
  l0._graph = self
  l0._name = "box_VehicleBhvController_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M020_Mosaic\\S09M020_Mosaic.domino|@S09M020_Mosaic_Main|758476053"
  l0.StartCompleted = self.f_box_VehicleBhvController_8_StartCompleted
  l0.StopCompleted = DummyFunction
  l0.ForcedFakeFollow = DummyFunction
  self.box_CLOController_13 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_13
  l0._graph = self
  l0._name = "box_CLOController_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M020_Mosaic\\S09M020_Mosaic.domino|@S09M020_Mosaic_Main|777221304"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_13_OnUserInPlace
  self.box_CLOController_5 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_5
  l0._graph = self
  l0._name = "box_CLOController_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M020_Mosaic\\S09M020_Mosaic.domino|@S09M020_Mosaic_Main|890828781"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_5_OnUserInPlace
  self.box_CLOController_4 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_4
  l0._graph = self
  l0._name = "box_CLOController_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M020_Mosaic\\S09M020_Mosaic.domino|@S09M020_Mosaic_Main|934058597"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_4_OnUserInPlace
  self.box_PatrolPointMonitor_v2_20 = cbox:CreateBox("domino/System/PatrolPointMonitor_v2.lua")
  l0 = self.box_PatrolPointMonitor_v2_20
  l0._graph = self
  l0._name = "box_PatrolPointMonitor_v2_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M020_Mosaic\\S09M020_Mosaic.domino|@S09M020_Mosaic_Main|1049523880"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_PatrolPointMonitor_v2_20_Disabled
  l0.SpecificPointReached = DummyFunction
  l0.CurrentPointReached = DummyFunction
  l0.EndPointReached = self.f_box_PatrolPointMonitor_v2_20_EndPointReached
  self.box_VehicleSeatingController_24 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_24
  l0._graph = self
  l0._name = "box_VehicleSeatingController_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M020_Mosaic\\S09M020_Mosaic.domino|@S09M020_Mosaic_Main|1054624663"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_box_VehicleSeatingController_24_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_VehicleBhvController_27 = cbox:CreateBox("domino/System/VehicleBhvController.lua")
  l0 = self.box_VehicleBhvController_27
  l0._graph = self
  l0._name = "box_VehicleBhvController_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M020_Mosaic\\S09M020_Mosaic.domino|@S09M020_Mosaic_Main|1251451652"
  l0.StartCompleted = DummyFunction
  l0.StopCompleted = DummyFunction
  l0.ForcedFakeFollow = DummyFunction
  self.box_Multiple_AND_12 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_12
  l0._graph = self
  l0._name = "box_Multiple_AND_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M020_Mosaic\\S09M020_Mosaic.domino|@S09M020_Mosaic_Main|1310099532"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_12_Out
  self.box_Multiple_AND_26 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_26
  l0._graph = self
  l0._name = "box_Multiple_AND_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M020_Mosaic\\S09M020_Mosaic.domino|@S09M020_Mosaic_Main|1464179642"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_26_Out
  self.box_VehicleSeatingController_10 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_10
  l0._graph = self
  l0._name = "box_VehicleSeatingController_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M020_Mosaic\\S09M020_Mosaic.domino|@S09M020_Mosaic_Main|1623969711"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = DummyFunction
  l0.UnassignCompleted = self.f_box_VehicleSeatingController_10_UnassignCompleted
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_Assign_Patrol_Controller_v2_16 = cbox:CreateBox("domino/System/AssignPatrol_v2.lua")
  l0 = self.box_Assign_Patrol_Controller_v2_16
  l0._graph = self
  l0._name = "box_Assign_Patrol_Controller_v2_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M020_Mosaic\\S09M020_Mosaic.domino|@S09M020_Mosaic_Main|1778644429"
  l0.Out = DummyFunction
  l0.Assigned = self.f_box_Assign_Patrol_Controller_v2_16_Assigned
  l0.Unassigned = DummyFunction
  l0.SpeedSet = DummyFunction
  l0.Aborted = DummyFunction
  l0.Failed = DummyFunction
  self.box_CLOController_3 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_3
  l0._graph = self
  l0._name = "box_CLOController_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M020_Mosaic\\S09M020_Mosaic.domino|@S09M020_Mosaic_Main|1955578588"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_3_OnUserInPlace
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
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "S09_M020_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M020_Mosaic\\S09M020_Mosaic.domino|@S09M020_Mosaic_Main|1359815299", "1359815299", "S09M020_Mosaic_Main", "In", "box_MissionLayer_v2_2.Load", self, l0)
  l0:Load()
end
function export:f_box_Ordered_Output_25_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_VehicleSeatingController_23
  l0.Vehicle = self.car
  l0.Pawn = self.cops1
  l0.UseAnimation = 1
  l0.Seat = "Driver"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M020_Mosaic\\S09M020_Mosaic.domino|@S09M020_Mosaic_Main|848593987", "848593987", "S09M020_Mosaic_Main", "box_Ordered_Output_25.Out", "box_VehicleSeatingController_23.Assign", clone, l0)
  l0:Assign()
end
function export:f_box_Ordered_Output_25_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_VehicleSeatingController_24
  l0.Vehicle = self.car
  l0.Pawn = self.cops2
  l0.UseAnimation = 1
  l0.Seat = "FrontPassenger"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M020_Mosaic\\S09M020_Mosaic.domino|@S09M020_Mosaic_Main|2088728704", "2088728704", "S09M020_Mosaic_Main", "box_Ordered_Output_25.Out", "box_VehicleSeatingController_24.Assign", clone, l0)
  l0:Assign()
end
function export:f_box_PatrolPointMonitor_v2_21_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_22()
  l0 = self.box_PatrolPointMonitor_v2_21
  l1 = self.box_Multiple_AND_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M020_Mosaic\\S09M020_Mosaic.domino|@S09M020_Mosaic_Main|608827781", "608827781", "S09M020_Mosaic_Main", "box_PatrolPointMonitor_v2_21.Disabled", "box_Multiple_AND_22.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_PatrolPointMonitor_v2_21_EndPointReached()
  local l0
  self = self._graph
  self:OnEnter_box_PatrolPointMonitor_v2_21()
  l0 = self.box_PatrolPointMonitor_v2_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M020_Mosaic\\S09M020_Mosaic.domino|@S09M020_Mosaic_Main|1124349384", "1124349384", "S09M020_Mosaic_Main", "box_PatrolPointMonitor_v2_21.EndPointReached", "box_PatrolPointMonitor_v2_21.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M020_Mosaic\\S09M020_Mosaic.domino|@S09M020_Mosaic_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MissionLayer_v2_2
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M020_Mosaic\\S09M020_Mosaic.domino|@S09M020_Mosaic_Main|794668992", "794668992", "S09M020_Mosaic_Main", "box_MissionLayer_v2_2.Loaded", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_Assign_Patrol_Controller_v2_15_Assigned()
  local l0, l1
  self = self._graph
  l0 = self.box_Assign_Patrol_Controller_v2_16
  l0.NPC = self.ridaz2
  l0.Patrol = "9223372060194631225"
  l0 = self.box_Assign_Patrol_Controller_v2_15
  l1 = self.box_Assign_Patrol_Controller_v2_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M020_Mosaic\\S09M020_Mosaic.domino|@S09M020_Mosaic_Main|907972483", "907972483", "S09M020_Mosaic_Main", "box_Assign_Patrol_Controller_v2_15.Assigned", "box_Assign_Patrol_Controller_v2_16.Assign", l0, l1)
  l1:Assign()
end
function export:f_box_Vehicle_Bhv_Monitor_9_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleSeatingController_10
  l0.Vehicle = self.car
  l0 = self.box_Vehicle_Bhv_Monitor_9
  l1 = self.box_VehicleSeatingController_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M020_Mosaic\\S09M020_Mosaic.domino|@S09M020_Mosaic_Main|146004783", "146004783", "S09M020_Mosaic_Main", "box_Vehicle_Bhv_Monitor_9.Disabled", "box_VehicleSeatingController_10.Unassign", l0, l1)
  l1:Unassign()
end
function export:f_box_Vehicle_Bhv_Monitor_9_EndPathPointReached()
  local l0
  self = self._graph
  self:OnEnter_box_Vehicle_Bhv_Monitor_9()
  l0 = self.box_Vehicle_Bhv_Monitor_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M020_Mosaic\\S09M020_Mosaic.domino|@S09M020_Mosaic_Main|128915421", "128915421", "S09M020_Mosaic_Main", "box_Vehicle_Bhv_Monitor_9.EndPathPointReached", "box_Vehicle_Bhv_Monitor_9.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Assign_Patrol_Controller_v2_18_Assigned()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PatrolPointMonitor_v2_21()
  l0 = self.box_Assign_Patrol_Controller_v2_18
  l1 = self.box_PatrolPointMonitor_v2_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M020_Mosaic\\S09M020_Mosaic.domino|@S09M020_Mosaic_Main|276879446", "276879446", "S09M020_Mosaic_Main", "box_Assign_Patrol_Controller_v2_18.Assigned", "box_PatrolPointMonitor_v2_21.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_CLOController_14_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_14
  self.cops2 = l0.UserID
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M020_Mosaic\\S09M020_Mosaic.domino|@S09M020_Mosaic_Main|720761103"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_11_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_11_Out_1
  l0 = self.box_CLOController_14
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M020_Mosaic\\S09M020_Mosaic.domino|@S09M020_Mosaic_Main|1151447974", "1151447974", "S09M020_Mosaic_Main", "box_CLOController_14.OnUserInPlace", "box_Ordered_Output_11.In", l0, l1)
  l1:In()
end
function export:f_box_Assign_Patrol_Controller_v2_17_Assigned()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PatrolPointMonitor_v2_20()
  l0 = self.box_Assign_Patrol_Controller_v2_17
  l1 = self.box_PatrolPointMonitor_v2_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M020_Mosaic\\S09M020_Mosaic.domino|@S09M020_Mosaic_Main|1636745803", "1636745803", "S09M020_Mosaic_Main", "box_Assign_Patrol_Controller_v2_17.Assigned", "box_PatrolPointMonitor_v2_20.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_VehicleSeatingController_7_AssignCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_12()
  l0 = self.box_VehicleSeatingController_7
  l1 = self.box_Multiple_AND_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M020_Mosaic\\S09M020_Mosaic.domino|@S09M020_Mosaic_Main|1494196527", "1494196527", "S09M020_Mosaic_Main", "box_VehicleSeatingController_7.AssignCompleted", "box_Multiple_AND_12.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_VehicleSeatingController_23_AssignCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_26()
  l0 = self.box_VehicleSeatingController_23
  l1 = self.box_Multiple_AND_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M020_Mosaic\\S09M020_Mosaic.domino|@S09M020_Mosaic_Main|84098739", "84098739", "S09M020_Mosaic_Main", "box_VehicleSeatingController_23.AssignCompleted", "box_Multiple_AND_26.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_VehicleSeatingController_6_AssignCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_12()
  l0 = self.box_VehicleSeatingController_6
  l1 = self.box_Multiple_AND_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M020_Mosaic\\S09M020_Mosaic.domino|@S09M020_Mosaic_Main|361240026", "361240026", "S09M020_Mosaic_Main", "box_VehicleSeatingController_6.AssignCompleted", "box_Multiple_AND_12.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_Ordered_Output_11_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_VehicleSeatingController_6
  l0.Vehicle = self.car
  l0.Pawn = self.ridaz1
  l0.Seat = "Driver"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M020_Mosaic\\S09M020_Mosaic.domino|@S09M020_Mosaic_Main|1139917140", "1139917140", "S09M020_Mosaic_Main", "box_Ordered_Output_11.Out", "box_VehicleSeatingController_6.Assign", clone, l0)
  l0:Assign()
end
function export:f_box_Ordered_Output_11_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_VehicleSeatingController_7
  l0.Vehicle = self.car
  l0.Pawn = self.ridaz2
  l0.Seat = "FrontPassenger"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M020_Mosaic\\S09M020_Mosaic.domino|@S09M020_Mosaic_Main|1420379701", "1420379701", "S09M020_Mosaic_Main", "box_Ordered_Output_11.Out", "box_VehicleSeatingController_7.Assign", clone, l0)
  l0:Assign()
end
function export:f_box_Multiple_AND_22_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M020_Mosaic\\S09M020_Mosaic.domino|@S09M020_Mosaic_Main|78066059"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_25_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_25_Out_1
  l0 = self.box_Multiple_AND_22
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M020_Mosaic\\S09M020_Mosaic.domino|@S09M020_Mosaic_Main|382219785", "382219785", "S09M020_Mosaic_Main", "box_Multiple_AND_22.Out", "box_Ordered_Output_25.In", l0, l1)
  l1:In()
end
function export:f_box_VehicleBhvController_8_StartCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Vehicle_Bhv_Monitor_9()
  l0 = self.box_VehicleBhvController_8
  l1 = self.box_Vehicle_Bhv_Monitor_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M020_Mosaic\\S09M020_Mosaic.domino|@S09M020_Mosaic_Main|837741458", "837741458", "S09M020_Mosaic_Main", "box_VehicleBhvController_8.StartCompleted", "box_Vehicle_Bhv_Monitor_9.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_CLOController_13_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_13
  self.cops1 = l0.UserID
  l0 = self.box_CLOController_14
  l0.CLO = "9223372060194631220"
  l0 = self.box_CLOController_13
  l1 = self.box_CLOController_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M020_Mosaic\\S09M020_Mosaic.domino|@S09M020_Mosaic_Main|1590027567", "1590027567", "S09M020_Mosaic_Main", "box_CLOController_13.OnUserInPlace", "box_CLOController_14.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Get_Player_ID_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.Player = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_3
  l0.CLO = "9223372060194631215"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M020_Mosaic\\S09M020_Mosaic.domino|@S09M020_Mosaic_Main|1292423333", "1292423333", "S09M020_Mosaic_Main", "box_Get_Player_ID_1.Out", "box_CLOController_3.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_CLOController_5_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_5
  self.ridaz2 = l0.UserID
  l0 = self.box_CLOController_13
  l0.CLO = "9223372060194631221"
  l0 = self.box_CLOController_5
  l1 = self.box_CLOController_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M020_Mosaic\\S09M020_Mosaic.domino|@S09M020_Mosaic_Main|385370746", "385370746", "S09M020_Mosaic_Main", "box_CLOController_5.OnUserInPlace", "box_CLOController_13.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_CLOController_4_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_4
  self.ridaz1 = l0.UserID
  l0 = self.box_CLOController_5
  l0.CLO = "9223372060194631217"
  l0 = self.box_CLOController_4
  l1 = self.box_CLOController_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M020_Mosaic\\S09M020_Mosaic.domino|@S09M020_Mosaic_Main|1468894869", "1468894869", "S09M020_Mosaic_Main", "box_CLOController_4.OnUserInPlace", "box_CLOController_5.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_PatrolPointMonitor_v2_20_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_22()
  l0 = self.box_PatrolPointMonitor_v2_20
  l1 = self.box_Multiple_AND_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M020_Mosaic\\S09M020_Mosaic.domino|@S09M020_Mosaic_Main|112729734", "112729734", "S09M020_Mosaic_Main", "box_PatrolPointMonitor_v2_20.Disabled", "box_Multiple_AND_22.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_PatrolPointMonitor_v2_20_EndPointReached()
  local l0
  self = self._graph
  self:OnEnter_box_PatrolPointMonitor_v2_20()
  l0 = self.box_PatrolPointMonitor_v2_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M020_Mosaic\\S09M020_Mosaic.domino|@S09M020_Mosaic_Main|1146680436", "1146680436", "S09M020_Mosaic_Main", "box_PatrolPointMonitor_v2_20.EndPointReached", "box_PatrolPointMonitor_v2_20.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_VehicleSeatingController_24_AssignCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_26()
  l0 = self.box_VehicleSeatingController_24
  l1 = self.box_Multiple_AND_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M020_Mosaic\\S09M020_Mosaic.domino|@S09M020_Mosaic_Main|2076640113", "2076640113", "S09M020_Mosaic_Main", "box_VehicleSeatingController_24.AssignCompleted", "box_Multiple_AND_26.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_Multiple_AND_12_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleBhvController_8
  l0.VehicleMaster = self.car
  l0.VehicleTarget = self.Player
  l0.PathOrPos = "9223372060194631219"
  l0.Config = "VehicleBhvSetup.9223372048779328408"
  l0 = self.box_Multiple_AND_12
  l1 = self.box_VehicleBhvController_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M020_Mosaic\\S09M020_Mosaic.domino|@S09M020_Mosaic_Main|485167535", "485167535", "S09M020_Mosaic_Main", "box_Multiple_AND_12.Out", "box_VehicleBhvController_8.Start", l0, l1)
  l1:Start()
end
function export:f_box_Multiple_AND_26_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleBhvController_27
  l0.VehicleMaster = self.car
  l0.VehicleTarget = self.Player
  l0.Config = "VehicleBhvSetup.9223372048779328402"
  l0 = self.box_Multiple_AND_26
  l1 = self.box_VehicleBhvController_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M020_Mosaic\\S09M020_Mosaic.domino|@S09M020_Mosaic_Main|297617719", "297617719", "S09M020_Mosaic_Main", "box_Multiple_AND_26.Out", "box_VehicleBhvController_27.Start", l0, l1)
  l1:Start()
end
function export:f_box_VehicleSeatingController_10_UnassignCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_Assign_Patrol_Controller_v2_15
  l0.NPC = self.ridaz1
  l0.Patrol = "9223372060194631223"
  l0 = self.box_VehicleSeatingController_10
  l1 = self.box_Assign_Patrol_Controller_v2_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M020_Mosaic\\S09M020_Mosaic.domino|@S09M020_Mosaic_Main|1419310649", "1419310649", "S09M020_Mosaic_Main", "box_VehicleSeatingController_10.UnassignCompleted", "box_Assign_Patrol_Controller_v2_15.Assign", l0, l1)
  l1:Assign()
end
function export:f_box_Assign_Patrol_Controller_v2_16_Assigned()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M020_Mosaic\\S09M020_Mosaic.domino|@S09M020_Mosaic_Main|1828200994"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_19_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_19_Out_1
  l0 = self.box_Assign_Patrol_Controller_v2_16
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M020_Mosaic\\S09M020_Mosaic.domino|@S09M020_Mosaic_Main|1703547840", "1703547840", "S09M020_Mosaic_Main", "box_Assign_Patrol_Controller_v2_16.Assigned", "box_Ordered_Output_19.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_19_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Assign_Patrol_Controller_v2_17
  l0.NPC = self.cops1
  l0.Patrol = "9223372060194631227"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M020_Mosaic\\S09M020_Mosaic.domino|@S09M020_Mosaic_Main|1476829103", "1476829103", "S09M020_Mosaic_Main", "box_Ordered_Output_19.Out", "box_Assign_Patrol_Controller_v2_17.Assign", clone, l0)
  l0:Assign()
end
function export:f_box_Ordered_Output_19_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Assign_Patrol_Controller_v2_18
  l0.NPC = self.cops2
  l0.Patrol = "9223372060194631229"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M020_Mosaic\\S09M020_Mosaic.domino|@S09M020_Mosaic_Main|1357643507", "1357643507", "S09M020_Mosaic_Main", "box_Ordered_Output_19.Out", "box_Assign_Patrol_Controller_v2_18.Assign", clone, l0)
  l0:Assign()
end
function export:f_box_CLOController_3_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_3
  self.car = l0.UserID
  l0 = self.box_CLOController_4
  l0.CLO = "9223372060194631216"
  l0 = self.box_CLOController_3
  l1 = self.box_CLOController_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M020_Mosaic\\S09M020_Mosaic.domino|@S09M020_Mosaic_Main|2046167938", "2046167938", "S09M020_Mosaic_Main", "box_CLOController_3.OnUserInPlace", "box_CLOController_4.Activate", l0, l1)
  l1:Activate()
end
function export:OnEnter_box_PatrolPointMonitor_v2_21()
  local l0
  l0 = self.box_PatrolPointMonitor_v2_21
  l0.NPC = self.cops2
end
function export:OnEnter_box_Vehicle_Bhv_Monitor_9()
  local l0
  l0 = self.box_Vehicle_Bhv_Monitor_9
  l0.Vehicle = self.car
end
function export:OnEnter_box_Multiple_AND_22()
end
function export:OnEnter_box_PatrolPointMonitor_v2_20()
  local l0
  l0 = self.box_PatrolPointMonitor_v2_20
  l0.NPC = self.cops1
end
function export:OnEnter_box_Multiple_AND_12()
end
function export:OnEnter_box_Multiple_AND_26()
end
_compilerVersion = 4
