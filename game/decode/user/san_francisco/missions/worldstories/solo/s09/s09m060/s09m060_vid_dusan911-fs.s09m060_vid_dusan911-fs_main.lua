export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self.EndVideo = DummyFunction
  self.PlayerEntity = nil
  self[2] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_2_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[1] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[1]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_1_Skipped
  l0.Finished = self.f_1_Finished
  self[3] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[3]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_3_Out
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
  l0 = self[2]
  l0:Start()
end
function export:f_2_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[1]
  l0.SceneEntity = "9223372049192219231"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S09/S09_Dusan911-FS_VID/s09_dusan911-fs_vid.seq"
  l0:Start()
end
function export:f_1_Finished()
  local l0
  self = self._graph
  l0 = self[3]
  l0:Input(0)
end
function export:f_1_Skipped()
  local l0
  self = self._graph
  l0 = self[3]
  l0:Input(1)
end
function export:f_3_Out()
  self = self._graph
  self:EndVideo()
end
function export:EndVideo()
end
_compilerVersion = 4
