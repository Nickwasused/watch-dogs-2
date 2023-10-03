export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/LaneRestrictionsControl.lua")
  cbox:RegisterBox("domino/System/LoadingScreenMonitor_v2.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/TeleportToSpawnPoint.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/WaitQualitiesLoaded.lua")
end
function export:Init(cbox)
  local l0
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self[10] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[10]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_10_Skipped
  l0.Finished = self.f_10_Finished
  self[4] = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self[4]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_4_TeleportDone
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
  self[7] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[7]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_7_PostOut
  self[6] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[6]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_6_Out
  l0.ResetOut = DummyFunction
  self[1] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[1]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_1_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[13] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[13]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_13_Out
  l0.ResetOut = DummyFunction
  self[3] = cbox:CreateBox("domino/System/LoadingScreenMonitor_v2.lua")
  l0 = self[3]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_3_Disabled
  l0.LoadingScreenEnded = self.f_3_LoadingScreenEnded
  l0.LoadingScreenStarted = DummyFunction
  self[5] = cbox:CreateBox("domino/System/WaitQualitiesLoaded.lua")
  l0 = self[5]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Loaded = self.f_5_Loaded
  self[11] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[11]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_11_Out
  l0.ResetOut = DummyFunction
  self[2] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[2]
  l0._graph = self
  l0._DynamicAnchors = {
    SPOut = {
      "StartPropVid"
    }
  }
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_2_Skipped
  l0.Finished = self.f_2_Finished
  l0.SPOut.StartPropVid = self.f_2_SPOut__StartPropVid_
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
  l0 = self[4]
  l0.SpawnPoint = "9223372047998015763"
  l0.KeepBlackScreenOnExit = 1
  l0:In()
end
function export:f_9_Out_0()
  local l0
  self = self._graph
  l0 = self[10]
  l0.SceneEntity = "9223372049410244829"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S15/s15_pgv-fs_vid.seq"
  l0:Start()
end
function export:f_9_Out_1()
  local l0
  self = self._graph
  self:en_2()
  l0 = self[2]
  l0:Pause()
end
function export:f_10_Finished()
  local l0
  self = self._graph
  l0 = self[13]
  l0:In(1)
end
function export:f_10_Skipped()
  local l0
  self = self._graph
  l0 = self[13]
  l0:In(0)
end
function export:f_4_TeleportDone()
  local l0
  self = self._graph
  l0 = self[3]
  l0:Enable()
end
function export:f_8_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[7]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_7_PostOut()
  self = self._graph
  self:Out()
end
function export:f_12_Out()
  local l0
  self = self._graph
  l0 = self[1]
  l0.Seconds = 1
  l0:Start()
end
function export:f_6_Out()
  local l0
  self = self._graph
  l0 = self[8]
  l0.Seconds = 2
  l0:Start()
end
function export:f_1_TimeElapsed()
  local l0
  self = self._graph
  self:en_2()
  l0 = self[2]
  l0:Start()
end
function export:f_13_Out()
  local l0
  self = self._graph
  self:en_2()
  l0 = self[2]
  l0:Resume()
end
function export:f_3_Disabled()
  local l0
  self = self._graph
  l0 = self[5]
  l0:In()
end
function export:f_3_LoadingScreenEnded()
  local l0
  self = self._graph
  l0 = self[11]
  l0:In(0)
end
function export:f_5_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372050008542423"
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
  l0.Out = self.f_12_Out
  l0:In()
end
function export:f_11_Out()
  local l0
  self = self._graph
  l0 = self[3]
  l0:Disable()
end
function export:f_2_Finished()
  local l0
  self = self._graph
  l0 = self[6]
  l0:In(1)
end
function export:f_2_Skipped()
  local l0
  self = self._graph
  l0 = self[6]
  l0:In(0)
end
function export:f_2_SPOut__StartPropVid_()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_9_Out_0
  l0.Out[1] = self.f_9_Out_1
  l0:In()
end
function export:en_2()
  local l0
  l0 = self[2]
  l0.SceneEntity = "9223372047779435989"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S15/S15_BigAssPhone_CIN/s15_bigassphone_cin.seq"
end
function export:Out()
end
_compilerVersion = 4
