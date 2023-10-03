export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
end
function export:Init(cbox)
  local l0
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self[3] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[3]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_3_PostOut
  self[1] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[1]
  l0._graph = self
  l0._DynamicAnchors = {
    SPOut = {
      "CollisionOFf"
    }
  }
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = self.f_1_Finished
  l0.SPOut.CollisionOFf = DummyFunction
  self[2] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[2]
  l0._graph = self
  l0.PreOut = self.f_2_PreOut
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
  l0 = self[2]
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:f_3_PostOut()
  self = self._graph
  self:Out()
end
function export:f_1_Finished()
  local l0
  self = self._graph
  l0 = self[3]
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_2_PreOut()
  local l0
  self = self._graph
  l0 = self[1]
  l0.SceneEntity = "9223372055208985411"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S12/S12_M060_MarcusDropManHole/s12_m060_marcusdropmanhole.seq"
  l0:Start()
end
function export:Out()
end
_compilerVersion = 4
