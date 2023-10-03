export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self[2] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[2]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_2_Skipped
  l0.Finished = self.f_2_Finished
  self[6] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[6]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_6_Out
  l0.ResetOut = DummyFunction
  self[5] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[5]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_5_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[1] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[1]
  l0._graph = self
  l0.PreOut = self.f_1_PreOut
  l0.PostOut = DummyFunction
  self[4] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[4]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_4_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[10] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[10]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_10_Out
  l0.ResetOut = DummyFunction
  self[8] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[8]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_8_Skipped
  l0.Finished = self.f_8_Finished
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
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:f_2_Finished()
  local l0
  self = self._graph
  l0 = self[10]
  l0:In(1)
end
function export:f_2_Skipped()
  local l0
  self = self._graph
  l0 = self[10]
  l0:In(0)
end
function export:f_6_Out()
  local l0
  self = self._graph
  l0 = self[4]
  l0.Seconds = 4
  l0:Start()
end
function export:f_5_TimeElapsed()
  self = self._graph
  self:Out()
end
function export:f_1_PreOut()
  local l0
  self = self._graph
  l0 = self[8]
  l0.SceneEntity = "9223372047779474444"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S13/S13_Launch_CIN/s13_launch_cin.seq"
  l0:Start()
end
function export:f_4_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[2]
  l0.SceneEntity = "9223372055541730446"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S13/S13_M040_LaunchPostMarcusComputer/s13_m040_launchpostmarcuscomputer.seq"
  l0:Start()
end
function export:f_10_Out()
  local l0
  self = self._graph
  l0 = self[5]
  l0:Start()
end
function export:f_8_Finished()
  local l0
  self = self._graph
  l0 = self[6]
  l0:In(1)
end
function export:f_8_Skipped()
  local l0
  self = self._graph
  l0 = self[6]
  l0:In(0)
end
function export:Out()
end
_compilerVersion = 4
