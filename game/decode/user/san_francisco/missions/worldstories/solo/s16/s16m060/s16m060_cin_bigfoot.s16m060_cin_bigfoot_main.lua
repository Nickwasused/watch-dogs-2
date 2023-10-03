export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/LaneRestrictionsControl.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S16/S16M060/s16m060_scr.sc16m060_SCR_Main.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self.cin_out = DummyFunction
  self.PlayerEntity = nil
  self[8] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S16/S16M060/s16m060_scr.sc16m060_SCR_Main.lua")
  l0 = self[8]
  l0._graph = self
  l0.out = DummyFunction
  l0.DroneUnspawned = self.f_8_DroneUnspawned
  self[6] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[6]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_6_Skipped
  l0.Finished = self.f_6_Finished
  self[2] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[2]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_2_Out
  self[7] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[7]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_7_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[1] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[1]
  l0._graph = self
  l0.PreOut = self.f_1_PreOut
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
  l0 = self[1]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:f_8_DroneUnspawned()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372052004915798"
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
  l0.Out = self.f_4_Out
  l0:In()
end
function export:f_6_Finished()
  local l0
  self = self._graph
  l0 = self[2]
  l0:Input(1)
end
function export:f_6_Skipped()
  local l0
  self = self._graph
  l0 = self[2]
  l0:Input(0)
end
function export:f_2_Out()
  self = self._graph
  self:cin_out()
end
function export:f_7_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[6]
  l0.SceneEntity = "9223372047235835169"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S16/S16_BigFoot_CIN/s16_bigfoot_cin.seq"
  l0:Start()
end
function export:f_4_Out()
  local l0
  self = self._graph
  l0 = self[7]
  l0:Start()
end
function export:f_1_PreOut()
  local l0
  self = self._graph
  l0 = self[8]
  l0:UnspawnDrone()
end
function export:cin_out()
end
_compilerVersion = 4
