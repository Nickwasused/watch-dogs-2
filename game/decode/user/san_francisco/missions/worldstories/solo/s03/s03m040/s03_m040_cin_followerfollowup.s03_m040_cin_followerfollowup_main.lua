export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
end
function export:Init(cbox)
  local l0
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.Entity_Horatio = nil
  self.HQ_Horatio = {}
  self[11] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[11]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_11_Skipped
  l0.Finished = self.f_11_Finished
  self[9] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[9]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_9_Out
  l0.ResetOut = DummyFunction
  self[6] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[6]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_6_Skipped
  l0.Finished = self.f_6_Finished
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
  l0 = self[11]
  l0.SceneEntity = "9223372047779436062"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S03/S03_FollowerFollowUp_CIN/s03_followerfollowup_cin.seq"
  l0:Start()
end
function export:f_11_Finished()
  local l0
  self = self._graph
  l0 = self[9]
  l0:In(1)
end
function export:f_11_Skipped()
  local l0
  self = self._graph
  l0 = self[9]
  l0:In(0)
end
function export:f_9_Out()
  local l0
  self = self._graph
  l0 = self[6]
  l0.SceneEntity = "9223372049587978897"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S03/S03_DusanCyberDriver-FS_VID/s03_dusancyberdriver-fs_vid.seq"
  l0:Start()
end
function export:f_6_Finished()
  local l0
  self = self._graph
  l0 = self[8]
  l0:In(1)
end
function export:f_6_Skipped()
  local l0
  self = self._graph
  l0 = self[8]
  l0:In(0)
end
function export:f_8_Out()
  self = self._graph
  self:Out()
end
function export:Out()
end
_compilerVersion = 4
