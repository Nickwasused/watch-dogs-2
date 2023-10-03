export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CinemaZoneCleanup.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/DPadHackableController.lua")
  cbox:RegisterBox("domino/System/GateController.lua")
  cbox:RegisterBox("domino/System/LaneRestrictionsControl.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/VehicleController.lua")
end
function export:Init(cbox)
  local l0
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.CHIP = nil
  self[4] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[4]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_4_Out
  l0.ResetOut = DummyFunction
  self[3] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[3]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_3_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[6] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[6]
  l0._graph = self
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_6_Out
  l0.ResetOut = DummyFunction
  self[7] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[7]
  l0._graph = self
  l0.Started = self.f_7_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_7_Skipped
  l0.Finished = self.f_7_Finished
  self[1] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[1]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_1_OnUserInPlace
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
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  l0.TargetZone = "9223372067236849306"
  l0.SceneEntity = nil
  l0.RemoveBreakable = nil
  l0.RemoveCharacter = nil
  l0.RemoveVehicle = nil
  l0.RemoveWeapon = nil
  l0.RemoveDeadBody = nil
  l0.RemoveRigidPhysObject = nil
  l0.StopDialog = nil
  l0.NotRemovableEntity[0] = nil
  l0.NotRemovableEntity[1] = nil
  l0._graph = self
  l0._DynamicAnchors = {NotRemovableEntity = 2}
  l0.Out = self.f_2_Out
  l0:CleanZone()
end
function export:f_8_Closed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GateController.lua")]
  l0.GateEntity = "9223372050108852870"
  l0.SetOpen = nil
  l0.Instant = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Opened = DummyFunction
  l0.Closed = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0:Close()
end
function export:f_4_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372064823612182"
  l0.RestrictTraffic = nil
  l0.RestrictPedestrians = 0
  l0.RestrictParking = nil
  l0.ResetLivingCity = nil
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
  l0.Out = self.f_10_Out
  l0:In()
end
function export:f_3_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GateController.lua")]
  l0.GateEntity = "9223372050108852804"
  l0.SetOpen = nil
  l0.Instant = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Opened = DummyFunction
  l0.Closed = self.f_8_Closed
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0:Close()
end
function export:f_6_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  l0.HackableEntity = self.CHIP
  l0.HackableEntityList = nil
  l0.HackCategoryType[0] = nil
  l0.HackCategoryType[1] = nil
  l0._graph = self
  l0._DynamicAnchors = {HackCategoryType = 2}
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = DummyFunction
  l0.Removed = DummyFunction
  l0.RemovedAll = self.f_11_RemovedAll
  l0.HackingDisabled = DummyFunction
  l0:RemoveAll()
end
function export:f_7_Finished()
  local l0
  self = self._graph
  l0 = self[4]
  l0:In(1)
end
function export:f_7_Skipped()
  local l0
  self = self._graph
  l0 = self[4]
  l0:In(0)
end
function export:f_7_Started()
  local l0
  self = self._graph
  l0 = self[3]
  l0.Seconds = 2
  l0:Start()
end
function export:f_2_Out()
  local l0
  self = self._graph
  l0 = self[7]
  l0.SceneEntity = "9223372047235756300"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S03/S03_SmartCar_CIN/s03_smartcar_cin.seq"
  l0:Start()
end
function export:f_1_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[1]
  self.CHIP = l0.UserID
  self:en_5()
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0:SetAsUnusable()
end
function export:f_10_Out()
  local l0
  self = self._graph
  l0 = self[1]
  l0.CLO = "9223372055593937501"
  l0:Activate()
end
function export:f_5_Out()
  local l0
  self = self._graph
  l0 = self[6]
  l0:In(0)
end
function export:f_5_Unusable()
  local l0
  self = self._graph
  self:en_5()
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0:DisableForPlayer()
end
function export:f_11_RemovedAll()
  self = self._graph
  self:Out()
end
function export:en_5()
  local l0
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.CHIP
  l0._graph = self
  l0.Out = self.f_5_Out
  l0.Usable = DummyFunction
  l0.Unusable = self.f_5_Unusable
  l0.Destructable = DummyFunction
  l0.Indestructable = DummyFunction
  l0.Deflatable = DummyFunction
  l0.Undeflatable = DummyFunction
  l0.Unmovable = DummyFunction
  l0.Movable = DummyFunction
  l0.EngineBroken = DummyFunction
  l0.EngineShutDown = DummyFunction
  l0.EngineStarted = DummyFunction
  l0.VehicleExploded = DummyFunction
  l0.VehicleAlarmHackOn = DummyFunction
  l0.VehicleAlarmHackOff = DummyFunction
end
function export:Out()
end
_compilerVersion = 4
