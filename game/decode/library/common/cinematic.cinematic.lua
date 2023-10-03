export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/PlaySequence_v5.lua")
end
function export:Init(cbox)
  local l0
  self.Finished = DummyFunction
  self.Started = DummyFunction
  self.PlayerEntity = nil
  self[15] = cbox:CreateBox("Domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[15]
  l0._graph = self
  l0.PreOut = self.f_15_PreOut
  l0.PostOut = DummyFunction
  self[14] = cbox:CreateBox("Domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[14]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_14_PostOut
  self[12] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[12]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_12_Out
  self[13] = cbox:CreateBox("Domino/System/PlaySequence_v5.lua")
  l0 = self[13]
  l0._graph = self
  l0.Started = self.f_13_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_13_Skipped
  l0.Finished = self.f_13_Finished
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:Start()
  local l0
  l0 = self[15]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = self.KeepDrones
  l0.ForceStopVehicle = self.ForceStopVehicle
  l0:PreCinematic()
end
function export:f_15_PreOut()
  local l0
  self = self._graph
  l0 = self[13]
  l0.SceneEntity = self.SceneEntity
  l0.SequenceFile = self.SequenceFile
  l0:Start()
end
function export:f_14_PostOut()
  self = self._graph
  self:Finished()
end
function export:f_12_Out()
  local l0
  self = self._graph
  l0 = self[14]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = self.KeepDrones
  l0.ForceStopVehicle = self.ForceStopVehicle
  l0:PostCinematic()
end
function export:f_13_Finished()
  local l0
  self = self._graph
  l0 = self[12]
  l0:Input(1)
end
function export:f_13_Skipped()
  local l0
  self = self._graph
  l0 = self[12]
  l0:Input(0)
end
function export:f_13_Started()
  self = self._graph
  self:Started()
end
function export:Finished()
end
function export:Started()
end
_compilerVersion = 4
