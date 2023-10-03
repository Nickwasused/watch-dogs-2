export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/ShowOrHideAllUI.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self.out = DummyFunction
  self.PlayerEntity = nil
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
  self[4] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[4]
  l0._graph = self
  l0.PreOut = self.f_4_PreOut
  l0.PostOut = DummyFunction
  self[1] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[1]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_1_Out
  l0.ResetOut = DummyFunction
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
  self[6] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[6]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_6_Skipped
  l0.Finished = self.f_6_Finished
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
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_2_Hidden
  l0:Hide()
end
function export:f_5_TimeElapsed()
  self = self._graph
  self:out()
end
function export:f_4_PreOut()
  local l0
  self = self._graph
  l0 = self[1]
  l0:In(0)
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = self[5]
  l0:Start()
end
function export:f_9_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[6]
  l0.SceneEntity = "9223372050139325806"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S08/S08_HoratioLeave-FS_VID/s08_horatioleave-fs_vid.seq"
  l0:Start()
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
  l0 = self[4]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:f_2_Hidden()
  local l0
  self = self._graph
  l0 = self[9]
  l0:Start()
end
function export:out()
end
_compilerVersion = 4
