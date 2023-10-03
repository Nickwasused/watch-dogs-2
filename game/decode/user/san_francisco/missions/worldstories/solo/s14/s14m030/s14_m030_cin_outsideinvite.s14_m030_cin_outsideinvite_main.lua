export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CinemaZoneCleanup.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/LaneRestrictionsControl.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/ShowOrHideAllUI.lua")
  cbox:RegisterBox("domino/System/TeleportToSpawnPoint.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.Sitara = nil
  self[8] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[8]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_8_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[11] = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self[11]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_11_TeleportDone
  self[7] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[7]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_7_Out
  l0.ResetOut = DummyFunction
  self[9] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[9]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_9_PostOut
  self[3] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[3]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_3_Skipped
  l0.Finished = self.f_3_Finished
  self[12] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[12]
  l0._graph = self
  l0.PreOut = self.f_12_PreOut
  l0.PostOut = DummyFunction
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
  l0 = self[12]
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:f_13_Out()
  local l0
  self = self._graph
  l0 = self[3]
  l0.SceneEntity = "9223372047235832776"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S14/S14_OutsideNvite_CIN/s14_outsidenvite_cin.seq"
  l0:Start()
end
function export:f_8_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[9]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_11_TeleportDone()
  local l0
  self = self._graph
  l0 = self[8]
  l0.Seconds = 0.5
  l0:Start()
end
function export:f_7_Out()
  local l0
  self = self._graph
  l0 = self[11]
  l0.SpawnPoint = "9223372047969942947"
  l0:In()
end
function export:f_9_PostOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Shown = self.f_1_Shown
  l0.Hidden = DummyFunction
  l0:Show()
end
function export:f_1_Shown()
  self = self._graph
  self:Out()
end
function export:f_3_Finished()
  local l0
  self = self._graph
  l0 = self[7]
  l0:In(1)
end
function export:f_3_Skipped()
  local l0
  self = self._graph
  l0 = self[7]
  l0:In(0)
end
function export:f_12_PreOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  l0.TargetZone = "9223372061714825492"
  l0.SceneEntity = "9223372047235832776"
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
  l0.Out = self.f_20_Out
  l0:CleanZone()
end
function export:f_20_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372055527644350"
  l0.RestrictTraffic = nil
  l0.RestrictPedestrians = nil
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
  l0.Out = self.f_13_Out
  l0:In()
end
function export:Out()
end
_compilerVersion = 4
