export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CinemaZoneCleanup.lua")
  cbox:RegisterBox("domino/System/LaneRestrictionsControl.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/VehicleSeatingController.lua")
  cbox:RegisterBox("domino/System/VehicleSeatingMonitor.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S08M010_CIN_OnTheBus_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_onthebus.domino|@S08M010_CIN_OnTheBus_Main"
  self.out = DummyFunction
  self.PlayerEntity = nil
  self.Player = nil
  self.Horatio_Entity = nil
  self.box_PlaySequence_v5_6 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_6
  l0._graph = self
  l0._name = "box_PlaySequence_v5_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_onthebus.domino|@S08M010_CIN_OnTheBus_Main|769305953"
  l0._DynamicAnchors = {
    EntityIn = {"Horatio", "Bus"},
    EntityOut = {"Horatio", "Bus"}
  }
  l0.Started = self.f_box_PlaySequence_v5_6_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_6_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_6_Finished
  self.box_Timer_v2_9 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_9
  l0._graph = self
  l0._name = "box_Timer_v2_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_onthebus.domino|@S08M010_CIN_OnTheBus_Main|1317718442"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_9_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_VehicleSeatingController_4 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_4
  l0._graph = self
  l0._name = "box_VehicleSeatingController_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_onthebus.domino|@S08M010_CIN_OnTheBus_Main|1329081270"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = DummyFunction
  l0.UnassignCompleted = self.f_box_VehicleSeatingController_4_UnassignCompleted
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_OnceOnly_v3_1 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_1
  l0._graph = self
  l0._name = "box_OnceOnly_v3_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_onthebus.domino|@S08M010_CIN_OnTheBus_Main|1814418287"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_1_Out
  l0.ResetOut = DummyFunction
  self.box_OnceOnly_v3_8 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_8
  l0._graph = self
  l0._name = "box_OnceOnly_v3_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_onthebus.domino|@S08M010_CIN_OnTheBus_Main|1953070494"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_8_Out
  l0.ResetOut = DummyFunction
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
  l0 = Boxes[PathID("domino/System/VehicleSeatingMonitor.lua")]
  l0.Pawn = self.Horatio
  l0.Vehicle = nil
  l0._graph = self
  l0._name = "box_VehicleSeatingMonitor_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_onthebus.domino|@S08M010_CIN_OnTheBus_Main|1404488794"
  l0.EntityIsInVehicle = self.f_box_VehicleSeatingMonitor_5_EntityIsInVehicle
  l0.EntityIsNotInVehicle = self.f_box_VehicleSeatingMonitor_5_EntityIsNotInVehicle
  l0.VehicleIsEmpty = DummyFunction
  l0.VehicleIsNotEmpty = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_onthebus.domino|@S08M010_CIN_OnTheBus_Main|1176449512", "1176449512", "S08M010_CIN_OnTheBus_Main", "In", "box_VehicleSeatingMonitor_5.IsInVehicle", self, l0)
  l0:IsInVehicle()
end
function export:f_box_PlaySequence_v5_6_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_1()
  l0 = self.box_PlaySequence_v5_6
  l1 = self.box_OnceOnly_v3_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_onthebus.domino|@S08M010_CIN_OnTheBus_Main|530435687", "530435687", "S08M010_CIN_OnTheBus_Main", "box_PlaySequence_v5_6.Finished", "box_OnceOnly_v3_1.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_6_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_1()
  l0 = self.box_PlaySequence_v5_6
  l1 = self.box_OnceOnly_v3_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_onthebus.domino|@S08M010_CIN_OnTheBus_Main|177555363", "177555363", "S08M010_CIN_OnTheBus_Main", "box_PlaySequence_v5_6.Skipped", "box_OnceOnly_v3_1.In", l0, l1)
  l1:In(0)
end
function export:f_box_PlaySequence_v5_6_Started()
  local l0
  self = self._graph
  l0 = self.box_PlaySequence_v5_6
  self.Horatio_Out = l0.EntityOut.Horatio
  self.bus_out = l0.EntityOut.Bus
end
function export:f_box_Cinema_Zone_Cleanup_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_6
  l0.SceneEntity = "9223372052868127781"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S08/S08_OnTheBus_CIN/s08_onthebus_01_cin.seq"
  l0.EntityIn.Horatio = self.Horatio
  l0.EntityIn.Bus = self.bus
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_onthebus.domino|@S08M010_CIN_OnTheBus_Main|128607886", "128607886", "S08M010_CIN_OnTheBus_Main", "box_Cinema_Zone_Cleanup_2.Out", "box_PlaySequence_v5_6.Start", clone, l0)
  l0:Start()
end
function export:f_box_Timer_v2_9_TimeElapsed()
  local l0
  self = self._graph
  l0 = self.box_Timer_v2_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_onthebus.domino|@S08M010_CIN_OnTheBus_Main|1799255622", "1799255622", "S08M010_CIN_OnTheBus_Main", "box_Timer_v2_9.TimeElapsed", "out", l0, self)
  self:out()
end
function export:f_box_VehicleSeatingController_4_UnassignCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_8()
  l0 = self.box_VehicleSeatingController_4
  l1 = self.box_OnceOnly_v3_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_onthebus.domino|@S08M010_CIN_OnTheBus_Main|1547038070", "1547038070", "S08M010_CIN_OnTheBus_Main", "box_VehicleSeatingController_4.UnassignCompleted", "box_OnceOnly_v3_8.In", l0, l1)
  l1:In(0)
end
function export:f_box_VehicleSeatingMonitor_5_EntityIsInVehicle()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleSeatingMonitor.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_VehicleSeatingController_4
  l0.Pawn = self.Horatio
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_onthebus.domino|@S08M010_CIN_OnTheBus_Main|1418403397", "1418403397", "S08M010_CIN_OnTheBus_Main", "box_VehicleSeatingMonitor_5.EntityIsInVehicle", "box_VehicleSeatingController_4.Unassign", clone, l0)
  l0:Unassign()
end
function export:f_box_VehicleSeatingMonitor_5_EntityIsNotInVehicle()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleSeatingMonitor.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_8()
  l0 = self.box_OnceOnly_v3_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_onthebus.domino|@S08M010_CIN_OnTheBus_Main|1094276611", "1094276611", "S08M010_CIN_OnTheBus_Main", "box_VehicleSeatingMonitor_5.EntityIsNotInVehicle", "box_OnceOnly_v3_8.In", clone, l0)
  l0:In(1)
end
function export:f_box_Lanes_Restrictions_Control_3_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  l0.TargetZone = "9223372057175220731"
  l0.SceneEntity = "9223372052868127781"
  l0.RemoveBreakable = 0
  l0.RemoveCharacter = 0
  l0.RemoveVehicle = nil
  l0.RemoveWeapon = nil
  l0.RemoveDeadBody = nil
  l0.RemoveRigidPhysObject = nil
  l0.StopDialog = nil
  l0.NotRemovableEntity[0] = self.bus
  l0.NotRemovableEntity[1] = self.Horatio
  l0._graph = self
  l0._name = "box_Cinema_Zone_Cleanup_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_onthebus.domino|@S08M010_CIN_OnTheBus_Main|968898376"
  l0._DynamicAnchors = {NotRemovableEntity = 2}
  l0.Out = self.f_box_Cinema_Zone_Cleanup_2_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_onthebus.domino|@S08M010_CIN_OnTheBus_Main|393879903", "393879903", "S08M010_CIN_OnTheBus_Main", "box_Lanes_Restrictions_Control_3.Out", "box_Cinema_Zone_Cleanup_2.CleanZone", clone, l0)
  l0:CleanZone()
end
function export:f_box_OnceOnly_v3_1_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_OnceOnly_v3_1
  l1 = self.box_Timer_v2_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_onthebus.domino|@S08M010_CIN_OnTheBus_Main|1952900133", "1952900133", "S08M010_CIN_OnTheBus_Main", "box_OnceOnly_v3_1.Out", "box_Timer_v2_9.Start", l0, l1)
  l1:Start()
end
function export:f_box_OnceOnly_v3_8_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372048305644578"
  l0.RestrictTraffic = nil
  l0.RestrictPedestrians = nil
  l0.RestrictParking = nil
  l0.ResetLivingCity = 1
  l0.ResetMissionWithLivingCity = nil
  l0.CivilianDensityDbObject = nil
  l0.ParkedCarsDensityDbObject = nil
  l0.TrafficDensityScale = nil
  l0.ApplyToEnticers = nil
  l0.ApplyToRoadNetwork = nil
  l0.RestrictHumanOnFoot = nil
  l0.RestrictHumanPassenger = nil
  l0.RestrictAnimal = nil
  l0.RestrictRobot = nil
  l0.RestrictRoadVehicle = nil
  l0.RestrictRail = nil
  l0.RestrictBoat = nil
  l0.RestrictParkedCar = nil
  l0.RestrictParkedBoat = nil
  l0.RestrictWorldAI = nil
  l0.RestrictReinforcementAI = nil
  l0.RestrictMissionAI = nil
  l0.RestrictCityObject = nil
  l0.RestrictMissionObject = nil
  l0._graph = self
  l0._name = "box_Lanes_Restrictions_Control_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_onthebus.domino|@S08M010_CIN_OnTheBus_Main|1671652732"
  l0.Out = self.f_box_Lanes_Restrictions_Control_3_Out
  l0 = self.box_OnceOnly_v3_8
  l1 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_onthebus.domino|@S08M010_CIN_OnTheBus_Main|1818342767", "1818342767", "S08M010_CIN_OnTheBus_Main", "box_OnceOnly_v3_8.Out", "box_Lanes_Restrictions_Control_3.In", l0, l1)
  l1:In()
end
function export:OnEnter_box_OnceOnly_v3_1()
end
function export:OnEnter_box_OnceOnly_v3_8()
end
function export:out()
end
_compilerVersion = 4
