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
  self._name = "S08M010_SpawnAndAssignCLOtoBus01"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus01"
  self.Completed = DummyFunction
  self.BusPassenger03 = nil
  self.BusPassenger02 = nil
  self.BusPassenger04 = nil
  self.BusPassenger01 = nil
  self.Bus = nil
  self.box_VehicleSeatingController_8 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_8
  l0._graph = self
  l0._name = "box_VehicleSeatingController_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus01|571358808"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_box_VehicleSeatingController_8_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = self.f_box_VehicleSeatingController_8_AbortMoveAndUseSeat
  l0.Out = DummyFunction
  self.box_OnceOnly_v3_14 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_14
  l0._graph = self
  l0._name = "box_OnceOnly_v3_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus01|638902168"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_14_Out
  l0.ResetOut = DummyFunction
  self.box_ListWriter_5 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_5
  l0._graph = self
  l0._name = "box_ListWriter_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus01|754468723"
  l0._DynamicAnchors = {Data = 4}
  l0.Added = self.f_box_ListWriter_5_Added
  l0.Removed = self.f_box_ListWriter_5_Removed
  l0.Out = self.f_box_ListWriter_5_Out
  self.box_VehicleSeatingController_10 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_10
  l0._graph = self
  l0._name = "box_VehicleSeatingController_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus01|876402877"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_box_VehicleSeatingController_10_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = self.f_box_VehicleSeatingController_10_AbortMoveAndUseSeat
  l0.Out = DummyFunction
  self.box_CLOController_3 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_3
  l0._graph = self
  l0._name = "box_CLOController_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus01|915236787"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_3_OnUserInPlace
  self.box_VehicleSeatingController_9 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_9
  l0._graph = self
  l0._name = "box_VehicleSeatingController_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus01|923521689"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_box_VehicleSeatingController_9_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = self.f_box_VehicleSeatingController_9_AbortMoveAndUseSeat
  l0.Out = DummyFunction
  self.box_OnceOnly_v3_12 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_12
  l0._graph = self
  l0._name = "box_OnceOnly_v3_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus01|1150507597"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_12_Out
  l0.ResetOut = DummyFunction
  self.box_CLOController_4 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_4
  l0._graph = self
  l0._name = "box_CLOController_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus01|1607497189"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_4_OnUserInPlace
  self.box_OnceOnly_v3_13 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_13
  l0._graph = self
  l0._name = "box_OnceOnly_v3_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus01|1655545820"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_13_Out
  l0.ResetOut = DummyFunction
  self.box_CLOController_1 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_1
  l0._graph = self
  l0._name = "box_CLOController_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus01|1699438726"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_1_OnUserInPlace
  self.box_OnceOnly_v3_11 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_11
  l0._graph = self
  l0._name = "box_OnceOnly_v3_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus01|1783449877"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_11_Out
  l0.ResetOut = DummyFunction
  self.box_CLOController_2 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_2
  l0._graph = self
  l0._name = "box_CLOController_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus01|1876428916"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_2_OnUserInPlace
  self.box_VehicleSeatingController_7 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_7
  l0._graph = self
  l0._name = "box_VehicleSeatingController_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus01|2052829279"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_box_VehicleSeatingController_7_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = self.f_box_VehicleSeatingController_7_AbortMoveAndUseSeat
  l0.Out = DummyFunction
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
  l0._name = "box_Set_Entity_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus01|1741362753"
  l0.Out = self.f_box_Set_Entity_6_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus01|1934667187", "1934667187", "S08M010_SpawnAndAssignCLOtoBus01", "Start", "box_Set_Entity_6.FromEntity", self, l0)
  l0:FromEntity()
end
function export:f_box_VehicleSeatingController_8_AbortMoveAndUseSeat()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_12()
  l0 = self.box_VehicleSeatingController_8
  l1 = self.box_OnceOnly_v3_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus01|131797014", "131797014", "S08M010_SpawnAndAssignCLOtoBus01", "box_VehicleSeatingController_8.AbortMoveAndUseSeat", "box_OnceOnly_v3_12.In", l0, l1)
  l1:In(1)
end
function export:f_box_VehicleSeatingController_8_AssignCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_12()
  l0 = self.box_VehicleSeatingController_8
  l1 = self.box_OnceOnly_v3_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus01|1861182877", "1861182877", "S08M010_SpawnAndAssignCLOtoBus01", "box_VehicleSeatingController_8.AssignCompleted", "box_OnceOnly_v3_12.In", l0, l1)
  l1:In(0)
end
function export:f_box_OnceOnly_v3_14_Out()
  local l0
  self = self._graph
  l0 = self.box_OnceOnly_v3_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus01|1831493629", "1831493629", "S08M010_SpawnAndAssignCLOtoBus01", "box_OnceOnly_v3_14.Out", "Completed", l0, self)
  self:Completed()
end
function export:f_box_ListWriter_5_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_5
  self.PassengerList_Out = l0.Target
  l0 = self.box_VehicleSeatingController_7
  l0.Vehicle = self.Bus
  l0.Pawn = self.BusPassenger01
  l0.Seat = "RearPassengerRight"
  l0 = self.box_ListWriter_5
  l1 = self.box_VehicleSeatingController_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus01|1941780783", "1941780783", "S08M010_SpawnAndAssignCLOtoBus01", "box_ListWriter_5.Added", "box_VehicleSeatingController_7.Assign", l0, l1)
  l1:Assign()
end
function export:f_box_ListWriter_5_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_5
  self.PassengerList_Out = l0.Target
end
function export:f_box_ListWriter_5_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_5
  self.PassengerList_Out = l0.Target
end
function export:f_box_VehicleSeatingController_10_AbortMoveAndUseSeat()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_14()
  l0 = self.box_VehicleSeatingController_10
  l1 = self.box_OnceOnly_v3_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus01|670173396", "670173396", "S08M010_SpawnAndAssignCLOtoBus01", "box_VehicleSeatingController_10.AbortMoveAndUseSeat", "box_OnceOnly_v3_14.In", l0, l1)
  l1:In(1)
end
function export:f_box_VehicleSeatingController_10_AssignCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_14()
  l0 = self.box_VehicleSeatingController_10
  l1 = self.box_OnceOnly_v3_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus01|1708040272", "1708040272", "S08M010_SpawnAndAssignCLOtoBus01", "box_VehicleSeatingController_10.AssignCompleted", "box_OnceOnly_v3_14.In", l0, l1)
  l1:In(0)
end
function export:f_box_CLOController_3_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_3
  self.BusPassenger03 = l0.UserID
  l0 = self.box_CLOController_4
  l0.CLO = self.CLO04
  l0.SpawnOutsideLoadingRing = 1
  l0 = self.box_CLOController_3
  l1 = self.box_CLOController_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus01|984553338", "984553338", "S08M010_SpawnAndAssignCLOtoBus01", "box_CLOController_3.OnUserInPlace", "box_CLOController_4.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_VehicleSeatingController_9_AbortMoveAndUseSeat()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_13()
  l0 = self.box_VehicleSeatingController_9
  l1 = self.box_OnceOnly_v3_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus01|1298091674", "1298091674", "S08M010_SpawnAndAssignCLOtoBus01", "box_VehicleSeatingController_9.AbortMoveAndUseSeat", "box_OnceOnly_v3_13.In", l0, l1)
  l1:In(1)
end
function export:f_box_VehicleSeatingController_9_AssignCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_13()
  l0 = self.box_VehicleSeatingController_9
  l1 = self.box_OnceOnly_v3_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus01|1101662056", "1101662056", "S08M010_SpawnAndAssignCLOtoBus01", "box_VehicleSeatingController_9.AssignCompleted", "box_OnceOnly_v3_13.In", l0, l1)
  l1:In(0)
end
function export:f_box_OnceOnly_v3_12_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleSeatingController_9
  l0.Vehicle = self.Bus
  l0.Pawn = self.BusPassenger03
  l0.Seat = "SeatPassenger_03"
  l0 = self.box_OnceOnly_v3_12
  l1 = self.box_VehicleSeatingController_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus01|634985994", "634985994", "S08M010_SpawnAndAssignCLOtoBus01", "box_OnceOnly_v3_12.Out", "box_VehicleSeatingController_9.Assign", l0, l1)
  l1:Assign()
end
function export:f_box_CLOController_4_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_4
  self.BusPassenger04 = l0.UserID
  l0 = self.box_ListWriter_5
  l0.Input = self.PassengerList_In
  l0.Data[0] = self.BusPassenger01
  l0.Data[1] = self.BusPassenger02
  l0.Data[2] = self.BusPassenger03
  l0.Data[3] = self.BusPassenger04
  l0 = self.box_CLOController_4
  l1 = self.box_ListWriter_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus01|1858003239", "1858003239", "S08M010_SpawnAndAssignCLOtoBus01", "box_CLOController_4.OnUserInPlace", "box_ListWriter_5.Add", l0, l1)
  l1:Add()
end
function export:f_box_OnceOnly_v3_13_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleSeatingController_10
  l0.Vehicle = self.Bus
  l0.Pawn = self.BusPassenger04
  l0.Seat = "SeatPassenger_04"
  l0 = self.box_OnceOnly_v3_13
  l1 = self.box_VehicleSeatingController_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus01|1801280654", "1801280654", "S08M010_SpawnAndAssignCLOtoBus01", "box_OnceOnly_v3_13.Out", "box_VehicleSeatingController_10.Assign", l0, l1)
  l1:Assign()
end
function export:f_box_CLOController_1_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_1
  self.BusPassenger01 = l0.UserID
  l0 = self.box_CLOController_2
  l0.CLO = self.CLO02
  l0.SpawnOutsideLoadingRing = 1
  l0 = self.box_CLOController_1
  l1 = self.box_CLOController_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus01|281503517", "281503517", "S08M010_SpawnAndAssignCLOtoBus01", "box_CLOController_1.OnUserInPlace", "box_CLOController_2.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Set_Entity_6_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.Bus = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_1
  l0.CLO = self.CLO01
  l0.SpawnOutsideLoadingRing = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus01|1643938934", "1643938934", "S08M010_SpawnAndAssignCLOtoBus01", "box_Set_Entity_6.Out", "box_CLOController_1.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_OnceOnly_v3_11_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleSeatingController_8
  l0.Vehicle = self.Bus
  l0.Pawn = self.BusPassenger02
  l0.Seat = "SeatPassenger_02"
  l0 = self.box_OnceOnly_v3_11
  l1 = self.box_VehicleSeatingController_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus01|556194741", "556194741", "S08M010_SpawnAndAssignCLOtoBus01", "box_OnceOnly_v3_11.Out", "box_VehicleSeatingController_8.Assign", l0, l1)
  l1:Assign()
end
function export:f_box_CLOController_2_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_2
  self.BusPassenger02 = l0.UserID
  l0 = self.box_CLOController_3
  l0.CLO = self.CLO03
  l0.SpawnOutsideLoadingRing = 1
  l0 = self.box_CLOController_2
  l1 = self.box_CLOController_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus01|586937363", "586937363", "S08M010_SpawnAndAssignCLOtoBus01", "box_CLOController_2.OnUserInPlace", "box_CLOController_3.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_VehicleSeatingController_7_AbortMoveAndUseSeat()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_11()
  l0 = self.box_VehicleSeatingController_7
  l1 = self.box_OnceOnly_v3_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus01|1975696058", "1975696058", "S08M010_SpawnAndAssignCLOtoBus01", "box_VehicleSeatingController_7.AbortMoveAndUseSeat", "box_OnceOnly_v3_11.In", l0, l1)
  l1:In(1)
end
function export:f_box_VehicleSeatingController_7_AssignCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_11()
  l0 = self.box_VehicleSeatingController_7
  l1 = self.box_OnceOnly_v3_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_SpawnAndAssignCLOtoBus01|1711482294", "1711482294", "S08M010_SpawnAndAssignCLOtoBus01", "box_VehicleSeatingController_7.AssignCompleted", "box_OnceOnly_v3_11.In", l0, l1)
  l1:In(0)
end
function export:OnEnter_box_OnceOnly_v3_14()
end
function export:OnEnter_box_OnceOnly_v3_12()
end
function export:OnEnter_box_OnceOnly_v3_13()
end
function export:OnEnter_box_OnceOnly_v3_11()
end
function export:Completed()
end
_compilerVersion = 4
