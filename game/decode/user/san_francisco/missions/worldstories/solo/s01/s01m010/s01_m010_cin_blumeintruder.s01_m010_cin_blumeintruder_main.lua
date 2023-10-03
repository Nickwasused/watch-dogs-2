export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/SetActionMap_v2.lua")
end
function export:Init(cbox)
  local l0
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self[6] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[6]
  l0._graph = self
  l0.PreOut = self.f_6_PreOut
  l0.PostOut = DummyFunction
  self[2] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[2]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_2_Out
  l0.ResetOut = DummyFunction
  self[5] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[5]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_5_Skipped
  l0.Finished = self.f_5_Finished
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
  l0 = self[6]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:f_7_Pushed()
  local l0
  self = self._graph
  l0 = self[5]
  l0.SceneEntity = "9223372049459585614"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S01/S01_BlumeIntruder_FS_VID/s01_blumeintruder-fs_vid.seq"
  l0:Start()
end
function export:f_6_PreOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_7_Pushed
  l0.Popped = DummyFunction
  l0:Push()
end
function export:f_2_Out()
  self = self._graph
  self:Out()
end
function export:f_5_Finished()
  local l0
  self = self._graph
  l0 = self[2]
  l0:In(1)
end
function export:f_5_Skipped()
  local l0
  self = self._graph
  l0 = self[2]
  l0:In(0)
end
function export:Out()
end
_compilerVersion = 4
