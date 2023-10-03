export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/SetEntity.lua")
  cbox:RegisterBox("domino/System/VehicleSeatingController.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S08M010_SpawnAndAssignCLOtoBus02"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus02"
  self.Completed = DummyFunction
  self.BusPassenger04 = nil
  self.BusPassenger02 = nil
  self.BusPassenger03 = nil
  self.BusPassenger01 = nil
  self.Bus = nil
  self.box_CLOController_8 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_8
  l0._graph = self
  l0._name = "box_CLOController_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus02|288021381"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_8_OnUserInPlace
  self.box_OnceOnly_v3_13 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_13
  l0._graph = self
  l0._name = "box_OnceOnly_v3_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus02|381234012"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_13_Out
  l0.ResetOut = DummyFunction
  self.box_VehicleSeatingController_7 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_7
  l0._graph = self
  l0._name = "box_VehicleSeatingController_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus02|659061188"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_box_VehicleSeatingController_7_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = self.f_box_VehicleSeatingController_7_AbortMoveAndUseSeat
  l0.Out = DummyFunction
  self.box_VehicleSeatingController_2 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_2
  l0._graph = self
  l0._name = "box_VehicleSeatingController_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus02|802597696"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_box_VehicleSeatingController_2_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = self.f_box_VehicleSeatingController_2_AbortMoveAndUseSeat
  l0.Out = DummyFunction
  self.box_OnceOnly_v3_12 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_12
  l0._graph = self
  l0._name = "box_OnceOnly_v3_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus02|843202910"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_12_Out
  l0.ResetOut = DummyFunction
  self.box_OnceOnly_v3_14 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_14
  l0._graph = self
  l0._name = "box_OnceOnly_v3_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus02|1042223186"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_14_Out
  l0.ResetOut = DummyFunction
  self.box_VehicleSeatingController_4 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_4
  l0._graph = self
  l0._name = "box_VehicleSeatingController_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus02|1312250445"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_box_VehicleSeatingController_4_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = self.f_box_VehicleSeatingController_4_AbortMoveAndUseSeat
  l0.Out = DummyFunction
  self.box_VehicleSeatingController_10 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_10
  l0._graph = self
  l0._name = "box_VehicleSeatingController_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus02|1424971495"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_box_VehicleSeatingController_10_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = self.f_box_VehicleSeatingController_10_AbortMoveAndUseSeat
  l0.Out = DummyFunction
  self.box_OnceOnly_v3_11 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_11
  l0._graph = self
  l0._name = "box_OnceOnly_v3_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus02|1428308327"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_11_Out
  l0.ResetOut = DummyFunction
  self.box_ListWriter_9 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_9
  l0._graph = self
  l0._name = "box_ListWriter_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus02|1442593254"
  l0._DynamicAnchors = {Data = 4}
  l0.Added = self.f_box_ListWriter_9_Added
  l0.Removed = self.f_box_ListWriter_9_Removed
  l0.Out = self.f_box_ListWriter_9_Out
  self.box_CLOController_3 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_3
  l0._graph = self
  l0._name = "box_CLOController_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus02|1892998236"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_3_OnUserInPlace
  self.box_CLOController_5 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_5
  l0._graph = self
  l0._name = "box_CLOController_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus02|1983813984"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_5_OnUserInPlace
  self.box_CLOController_6 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_6
  l0._graph = self
  l0._name = "box_CLOController_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus02|2118147880"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_6_OnUserInPlace
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:Start()
  local l0
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = self.BusVehicle
  l0._graph = self
  l0._name = "box_Set_Entity_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus02|118173843"
  l0.Out = self.f_box_Set_Entity_1_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus02|881642471", "881642471", "S08M010_SpawnAndAssignCLOtoBus02", "Start", "box_Set_Entity_1.FromEntity", self, l0)
  l0:FromEntity()
end
function export:f_box_Set_Entity_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.Bus = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_6
  l0.CLO = self.CLO05
  l0.SpawnOutsideLoadingRing = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus02|2077528745", "2077528745", "S08M010_SpawnAndAssignCLOtoBus02", "box_Set_Entity_1.Out", "box_CLOController_6.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_CLOController_8_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_8
  self.BusPassenger02 = l0.UserID
  l0 = self.box_CLOController_5
  l0.CLO = self.CLO07
  l0.SpawnOutsideLoadingRing = 1
  l0 = self.box_CLOController_8
  l1 = self.box_CLOController_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus02|636921195", "636921195", "S08M010_SpawnAndAssignCLOtoBus02", "box_CLOController_8.OnUserInPlace", "box_CLOController_5.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_OnceOnly_v3_13_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleSeatingController_10
  l0.Vehicle = self.Bus
  l0.Pawn = self.BusPassenger04
  l0.Seat = "SeatPassenger_08"
  l0 = self.box_OnceOnly_v3_13
  l1 = self.box_VehicleSeatingController_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus02|1279131471", "1279131471", "S08M010_SpawnAndAssignCLOtoBus02", "box_OnceOnly_v3_13.Out", "box_VehicleSeatingController_10.Assign", l0, l1)
  l1:Assign()
end
function export:f_box_VehicleSeatingController_7_AbortMoveAndUseSeat()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_13()
  l0 = self.box_VehicleSeatingController_7
  l1 = self.box_OnceOnly_v3_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus02|370968320", "370968320", "S08M010_SpawnAndAssignCLOtoBus02", "box_VehicleSeatingController_7.AbortMoveAndUseSeat", "box_OnceOnly_v3_13.In", l0, l1)
  l1:In(1)
end
function export:f_box_VehicleSeatingController_7_AssignCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_13()
  l0 = self.box_VehicleSeatingController_7
  l1 = self.box_OnceOnly_v3_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus02|1254951176", "1254951176", "S08M010_SpawnAndAssignCLOtoBus02", "box_VehicleSeatingController_7.AssignCompleted", "box_OnceOnly_v3_13.In", l0, l1)
  l1:In(0)
end
function export:f_box_VehicleSeatingController_2_AbortMoveAndUseSeat()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_12()
  l0 = self.box_VehicleSeatingController_2
  l1 = self.box_OnceOnly_v3_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus02|1506308590", "1506308590", "S08M010_SpawnAndAssignCLOtoBus02", "box_VehicleSeatingController_2.AbortMoveAndUseSeat", "box_OnceOnly_v3_12.In", l0, l1)
  l1:In(1)
end
function export:f_box_VehicleSeatingController_2_AssignCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_12()
  l0 = self.box_VehicleSeatingController_2
  l1 = self.box_OnceOnly_v3_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus02|897813868", "897813868", "S08M010_SpawnAndAssignCLOtoBus02", "box_VehicleSeatingController_2.AssignCompleted", "box_OnceOnly_v3_12.In", l0, l1)
  l1:In(0)
end
function export:f_box_OnceOnly_v3_12_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleSeatingController_4
  l0.Vehicle = self.Bus
  l0.Pawn = self.BusPassenger02
  l0.Seat = "SeatPassenger_06"
  l0 = self.box_OnceOnly_v3_12
  l1 = self.box_VehicleSeatingController_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus02|100989139", "100989139", "S08M010_SpawnAndAssignCLOtoBus02", "box_OnceOnly_v3_12.Out", "box_VehicleSeatingController_4.Assign", l0, l1)
  l1:Assign()
end
function export:f_box_OnceOnly_v3_14_Out()
  local l0
  self = self._graph
  l0 = self.box_OnceOnly_v3_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus02|58967268", "58967268", "S08M010_SpawnAndAssignCLOtoBus02", "box_OnceOnly_v3_14.Out", "Completed", l0, self)
  self:Completed()
end
function export:f_box_VehicleSeatingController_4_AbortMoveAndUseSeat()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_11()
  l0 = self.box_VehicleSeatingController_4
  l1 = self.box_OnceOnly_v3_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus02|1404919022", "1404919022", "S08M010_SpawnAndAssignCLOtoBus02", "box_VehicleSeatingController_4.AbortMoveAndUseSeat", "box_OnceOnly_v3_11.In", l0, l1)
  l1:In(1)
end
function export:f_box_VehicleSeatingController_4_AssignCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_11()
  l0 = self.box_VehicleSeatingController_4
  l1 = self.box_OnceOnly_v3_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus02|1536521565", "1536521565", "S08M010_SpawnAndAssignCLOtoBus02", "box_VehicleSeatingController_4.AssignCompleted", "box_OnceOnly_v3_11.In", l0, l1)
  l1:In(0)
end
function export:f_box_VehicleSeatingController_10_AbortMoveAndUseSeat()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_14()
  l0 = self.box_VehicleSeatingController_10
  l1 = self.box_OnceOnly_v3_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus02|326306216", "326306216", "S08M010_SpawnAndAssignCLOtoBus02", "box_VehicleSeatingController_10.AbortMoveAndUseSeat", "box_OnceOnly_v3_14.In", l0, l1)
  l1:In(1)
end
function export:f_box_VehicleSeatingController_10_AssignCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_14()
  l0 = self.box_VehicleSeatingController_10
  l1 = self.box_OnceOnly_v3_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus02|675611176", "675611176", "S08M010_SpawnAndAssignCLOtoBus02", "box_VehicleSeatingController_10.AssignCompleted", "box_OnceOnly_v3_14.In", l0, l1)
  l1:In(0)
end
function export:f_box_OnceOnly_v3_11_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleSeatingController_7
  l0.Vehicle = self.Bus
  l0.Pawn = self.BusPassenger03
  l0.Seat = "SeatPassenger_07"
  l0 = self.box_OnceOnly_v3_11
  l1 = self.box_VehicleSeatingController_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus02|1933346550", "1933346550", "S08M010_SpawnAndAssignCLOtoBus02", "box_OnceOnly_v3_11.Out", "box_VehicleSeatingController_7.Assign", l0, l1)
  l1:Assign()
end
function export:f_box_ListWriter_9_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_9
  self.PassengerList_Out = l0.Target
  l0 = self.box_VehicleSeatingController_2
  l0.Vehicle = self.Bus
  l0.Pawn = self.BusPassenger01
  l0.Seat = "SeatPassenger_05"
  l0 = self.box_ListWriter_9
  l1 = self.box_VehicleSeatingController_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus02|794132171", "794132171", "S08M010_SpawnAndAssignCLOtoBus02", "box_ListWriter_9.Added", "box_VehicleSeatingController_2.Assign", l0, l1)
  l1:Assign()
end
function export:f_box_ListWriter_9_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_9
  self.PassengerList_Out = l0.Target
end
function export:f_box_ListWriter_9_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_9
  self.PassengerList_Out = l0.Target
end
function export:f_box_CLOController_3_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_3
  self.BusPassenger04 = l0.UserID
  l0 = self.box_ListWriter_9
  l0.Input = self.PassengerList_In
  l0.Data[0] = self.BusPassenger01
  l0.Data[1] = self.BusPassenger02
  l0.Data[2] = self.BusPassenger03
  l0.Data[3] = self.BusPassenger04
  l0 = self.box_CLOController_3
  l1 = self.box_ListWriter_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus02|782160809", "782160809", "S08M010_SpawnAndAssignCLOtoBus02", "box_CLOController_3.OnUserInPlace", "box_ListWriter_9.Add", l0, l1)
  l1:Add()
end
function export:f_box_CLOController_5_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_5
  self.BusPassenger03 = l0.UserID
  l0 = self.box_CLOController_3
  l0.CLO = self.CLO08
  l0.SpawnOutsideLoadingRing = 1
  l0 = self.box_CLOController_5
  l1 = self.box_CLOController_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus02|1796719798", "1796719798", "S08M010_SpawnAndAssignCLOtoBus02", "box_CLOController_5.OnUserInPlace", "box_CLOController_3.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_CLOController_6_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_6
  self.BusPassenger01 = l0.UserID
  l0 = self.box_CLOController_8
  l0.CLO = self.CLO06
  l0.SpawnOutsideLoadingRing = 1
  l0 = self.box_CLOController_6
  l1 = self.box_CLOController_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus02|1241975217", "1241975217", "S08M010_SpawnAndAssignCLOtoBus02", "box_CLOController_6.OnUserInPlace", "box_CLOController_8.Activate", l0, l1)
  l1:Activate()
end
function export:OnEnter_box_OnceOnly_v3_13()
end
function export:OnEnter_box_OnceOnly_v3_12()
end
function export:OnEnter_box_OnceOnly_v3_14()
end
function export:OnEnter_box_OnceOnly_v3_11()
end
function export:Completed()
end
_compilerVersion = 4
