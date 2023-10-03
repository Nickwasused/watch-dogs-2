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
  self.Completed = DummyFunction
  self.BusPassenger04 = nil
  self.BusPassenger02 = nil
  self.BusPassenger03 = nil
  self.BusPassenger01 = nil
  self.Bus = nil
  self[8] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[8]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_8_OnUserInPlace
  self[13] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[13]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_13_Out
  l0.ResetOut = DummyFunction
  self[7] = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self[7]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_7_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = self.f_7_AbortMoveAndUseSeat
  l0.Out = DummyFunction
  self[2] = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self[2]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_2_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = self.f_2_AbortMoveAndUseSeat
  l0.Out = DummyFunction
  self[12] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[12]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_12_Out
  l0.ResetOut = DummyFunction
  self[14] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[14]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_14_Out
  l0.ResetOut = DummyFunction
  self[4] = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self[4]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_4_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = self.f_4_AbortMoveAndUseSeat
  l0.Out = DummyFunction
  self[10] = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self[10]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_10_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = self.f_10_AbortMoveAndUseSeat
  l0.Out = DummyFunction
  self[11] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[11]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_11_Out
  l0.ResetOut = DummyFunction
  self[9] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[9]
  l0._graph = self
  l0._DynamicAnchors = {Data = 4}
  l0.Added = self.f_9_Added
  l0.Removed = self.f_9_Removed
  l0.Out = self.f_9_Out
  self[3] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[3]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_3_OnUserInPlace
  self[5] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[5]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_5_OnUserInPlace
  self[6] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[6]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_6_OnUserInPlace
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
  l0.Out = self.f_1_Out
  l0:FromEntity()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.Bus = l0.Target
  l0 = self[6]
  l0.CLO = self.CLO05
  l0.SpawnOutsideLoadingRing = 1
  l0:Activate()
end
function export:f_8_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[8]
  self.BusPassenger02 = l0.UserID
  l0 = self[5]
  l0.CLO = self.CLO07
  l0.SpawnOutsideLoadingRing = 1
  l0:Activate()
end
function export:f_13_Out()
  local l0
  self = self._graph
  l0 = self[10]
  l0.Vehicle = self.Bus
  l0.Pawn = self.BusPassenger04
  l0.Seat = "SeatPassenger_08"
  l0:Assign()
end
function export:f_7_AbortMoveAndUseSeat()
  local l0
  self = self._graph
  l0 = self[13]
  l0:In(1)
end
function export:f_7_AssignCompleted()
  local l0
  self = self._graph
  l0 = self[13]
  l0:In(0)
end
function export:f_2_AbortMoveAndUseSeat()
  local l0
  self = self._graph
  l0 = self[12]
  l0:In(1)
end
function export:f_2_AssignCompleted()
  local l0
  self = self._graph
  l0 = self[12]
  l0:In(0)
end
function export:f_12_Out()
  local l0
  self = self._graph
  l0 = self[4]
  l0.Vehicle = self.Bus
  l0.Pawn = self.BusPassenger02
  l0.Seat = "SeatPassenger_06"
  l0:Assign()
end
function export:f_14_Out()
  self = self._graph
  self:Completed()
end
function export:f_4_AbortMoveAndUseSeat()
  local l0
  self = self._graph
  l0 = self[11]
  l0:In(1)
end
function export:f_4_AssignCompleted()
  local l0
  self = self._graph
  l0 = self[11]
  l0:In(0)
end
function export:f_10_AbortMoveAndUseSeat()
  local l0
  self = self._graph
  l0 = self[14]
  l0:In(1)
end
function export:f_10_AssignCompleted()
  local l0
  self = self._graph
  l0 = self[14]
  l0:In(0)
end
function export:f_11_Out()
  local l0
  self = self._graph
  l0 = self[7]
  l0.Vehicle = self.Bus
  l0.Pawn = self.BusPassenger03
  l0.Seat = "SeatPassenger_07"
  l0:Assign()
end
function export:f_9_Added()
  local l0
  self = self._graph
  l0 = self[9]
  self.PassengerList_Out = l0.Target
  l0 = self[2]
  l0.Vehicle = self.Bus
  l0.Pawn = self.BusPassenger01
  l0.Seat = "SeatPassenger_05"
  l0:Assign()
end
function export:f_9_Out()
  local l0
  self = self._graph
  l0 = self[9]
  self.PassengerList_Out = l0.Target
end
function export:f_9_Removed()
  local l0
  self = self._graph
  l0 = self[9]
  self.PassengerList_Out = l0.Target
end
function export:f_3_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[3]
  self.BusPassenger04 = l0.UserID
  l0 = self[9]
  l0.Input = self.PassengerList_In
  l0.Data[0] = self.BusPassenger01
  l0.Data[1] = self.BusPassenger02
  l0.Data[2] = self.BusPassenger03
  l0.Data[3] = self.BusPassenger04
  l0:Add()
end
function export:f_5_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[5]
  self.BusPassenger03 = l0.UserID
  l0 = self[3]
  l0.CLO = self.CLO08
  l0.SpawnOutsideLoadingRing = 1
  l0:Activate()
end
function export:f_6_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[6]
  self.BusPassenger01 = l0.UserID
  l0 = self[8]
  l0.CLO = self.CLO06
  l0.SpawnOutsideLoadingRing = 1
  l0:Activate()
end
function export:Completed()
end
_compilerVersion = 4
