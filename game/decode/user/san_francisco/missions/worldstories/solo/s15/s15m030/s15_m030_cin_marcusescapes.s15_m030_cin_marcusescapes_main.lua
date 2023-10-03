export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/TeleportToSpawnPoint.lua")
end
function export:Init(cbox)
  local l0
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self[10] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[10]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_10_Out
  l0.ResetOut = DummyFunction
  self[1] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[1]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_1_Skipped
  l0.Finished = self.f_1_Finished
  self[3] = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self[3]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_3_TeleportDone
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
  l0 = self[3]
  l0.SpawnPoint = "9223372050221835523"
  l0.KeepBlackScreenOnExit = 1
  l0:In()
end
function export:f_10_Out()
  self = self._graph
  self:Out()
end
function export:f_1_Finished()
  local l0
  self = self._graph
  l0 = self[10]
  l0:In(1)
end
function export:f_1_Skipped()
  local l0
  self = self._graph
  l0 = self[10]
  l0:In(0)
end
function export:f_3_TeleportDone()
  local l0
  self = self._graph
  l0 = self[1]
  l0.SceneEntity = "9223372047683076297"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S15/S15_MarcusEscapes_CIN/s15_marcusescapes_cin.seq"
  l0:Start()
end
function export:Out()
end
_compilerVersion = 4
