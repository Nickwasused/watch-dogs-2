export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/DebugExecuteConsole_v2.lua")
  cbox:RegisterBox("domino/System/LaneRestrictionsControl.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:LoadResource("soundbinary/2605024495.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.Out_Cin = DummyFunction
  self.PlayerEntity = nil
  self[13] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[13]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_13_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[4] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[4]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_4_Out
  l0.ResetOut = DummyFunction
  self[1] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[1]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[2] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[2]
  l0._graph = self
  l0.Started = self.f_2_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_2_Skipped
  l0.Finished = self.f_2_Finished
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
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "gfx_reflectionUpdateCountPerFrame 15"
  l0._graph = self
  l0.Executed = self.f_9_Executed
  l0:Execute()
end
function export:f_12_Executed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "fx_lightProbesForceUpdateAll 0"
  l0._graph = self
  l0.Executed = DummyFunction
  l0:Execute()
end
function export:f_13_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "gfx_reflectionUpdateCountPerFrame 1"
  l0._graph = self
  l0.Executed = self.f_12_Executed
  l0:Execute()
end
function export:f_4_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372065022209691"
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
  l0.Out = self.f_15_Out
  l0:In()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = self[4]
  l0:In(0)
end
function export:f_2_Finished()
  local l0
  self = self._graph
  l0 = self[4]
  l0:In(1)
end
function export:f_2_Skipped()
  local l0
  self = self._graph
  l0 = self[1]
  l0.SoundId = "soundbinary/2605024495.bnk"
  l0:Play()
end
function export:f_2_Started()
  local l0
  self = self._graph
  l0 = self[13]
  l0:Start()
end
function export:f_15_Out()
  self = self._graph
  self:Out_Cin()
end
function export:f_10_Executed()
  local l0
  self = self._graph
  l0 = self[2]
  l0.SceneEntity = "9223372048764591431"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S03/S03_FixCarMontage_PRE/s03_fixcarmontage_pre.seq"
  l0:Start()
end
function export:f_9_Executed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "gfx_lightProbesForceUpdateAll 1"
  l0._graph = self
  l0.Executed = self.f_10_Executed
  l0:Execute()
end
function export:Out_Cin()
end
_compilerVersion = 4
