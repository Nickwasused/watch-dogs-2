export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
end
function export:Init(cbox)
  local l0
  self.Out = DummyFunction
  self.Started = DummyFunction
  self.PlayerEntity = nil
  self[13] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[13]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_13_Out
  l0.ResetOut = DummyFunction
  self[1] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[1]
  l0._graph = self
  l0.PreOut = self.f_1_PreOut
  l0.PostOut = DummyFunction
  self[11] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[11]
  l0._graph = self
  l0.Started = self.f_11_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_11_Skipped
  l0.Finished = self.f_11_Finished
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
function export:f_13_Out()
  self = self._graph
  self:Out()
end
function export:f_1_PreOut()
  local l0
  self = self._graph
  l0 = self[11]
  l0.SceneEntity = "9223372047779436033"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S01/S01_HackerSpaceBigPlan_CIN/s01_hackerspacebigplan_cin.seq"
  l0:Start()
end
function export:f_11_Finished()
  local l0
  self = self._graph
  l0 = self[13]
  l0:In(1)
end
function export:f_11_Skipped()
  local l0
  self = self._graph
  l0 = self[13]
  l0:In(0)
end
function export:f_11_Started()
  self = self._graph
  self:Started()
end
function export:Out()
end
function export:Started()
end
_compilerVersion = 4
