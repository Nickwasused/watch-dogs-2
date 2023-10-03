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
  self.out = DummyFunction
  self.PlayerEntity = nil
  self.Player = nil
  self.Horatio_Entity = nil
  self[6] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[6]
  l0._graph = self
  l0._DynamicAnchors = {
    EntityIn = {"Horatio", "Bus"},
    EntityOut = {"Horatio", "Bus"}
  }
  l0.Started = self.f_6_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_6_Skipped
  l0.Finished = self.f_6_Finished
  self[9] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[9]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_9_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[4] = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self[4]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = DummyFunction
  l0.UnassignCompleted = self.f_4_UnassignCompleted
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self[1] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[1]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_1_Out
  l0.ResetOut = DummyFunction
  self[8] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[8]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_8_Out
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
  l0.EntityIsInVehicle = self.f_5_EntityIsInVehicle
  l0.EntityIsNotInVehicle = self.f_5_EntityIsNotInVehicle
  l0.VehicleIsEmpty = DummyFunction
  l0.VehicleIsNotEmpty = DummyFunction
  l0:IsInVehicle()
end
function export:f_6_Finished()
  local l0
  self = self._graph
  l0 = self[1]
  l0:In(1)
end
function export:f_6_Skipped()
  local l0
  self = self._graph
  l0 = self[1]
  l0:In(0)
end
function export:f_6_Started()
  local l0
  self = self._graph
  l0 = self[6]
  self.Horatio_Out = l0.EntityOut.Horatio
  self.bus_out = l0.EntityOut.Bus
end
function export:f_2_Out()
  local l0
  self = self._graph
  l0 = self[6]
  l0.SceneEntity = "9223372052868127781"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S08/S08_OnTheBus_CIN/s08_onthebus_01_cin.seq"
  l0.EntityIn.Horatio = self.Horatio
  l0.EntityIn.Bus = self.bus
  l0:Start()
end
function export:f_9_TimeElapsed()
  self = self._graph
  self:out()
end
function export:f_4_UnassignCompleted()
  local l0
  self = self._graph
  l0 = self[8]
  l0:In(0)
end
function export:f_5_EntityIsInVehicle()
  local l0
  self = self._graph
  l0 = self[4]
  l0.Pawn = self.Horatio
  l0:Unassign()
end
function export:f_5_EntityIsNotInVehicle()
  local l0
  self = self._graph
  l0 = self[8]
  l0:In(1)
end
function export:f_3_Out()
  local l0
  self = self._graph
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
  l0._DynamicAnchors = {NotRemovableEntity = 2}
  l0.Out = self.f_2_Out
  l0:CleanZone()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = self[9]
  l0:Start()
end
function export:f_8_Out()
  local l0
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
  l0.Out = self.f_3_Out
  l0:In()
end
function export:out()
end
_compilerVersion = 4
