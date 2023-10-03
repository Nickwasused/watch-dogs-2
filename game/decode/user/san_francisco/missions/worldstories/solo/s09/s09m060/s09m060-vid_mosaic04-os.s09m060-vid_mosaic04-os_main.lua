export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:LoadResource("soundbinary/2023657118.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1643593712.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.EndVideo = DummyFunction
  self.VideoStarted = DummyFunction
  self.PlayerEntity = nil
  self[6] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[6]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[2] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[2]
  l0._graph = self
  l0.PreOut = self.f_2_PreOut
  l0.PostOut = DummyFunction
  self[1] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[1]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[5] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[5]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_5_Out
  l0.ResetOut = DummyFunction
  self[3] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[3]
  l0._graph = self
  l0.Started = self.f_3_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_3_Skipped
  l0.Finished = self.f_3_Finished
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
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:f_2_PreOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_4_Out_0
  l0.Out[1] = self.f_4_Out_1
  l0:In()
end
function export:f_5_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_7_Out_0
  l0.Out[1] = self.f_7_Out_1
  l0:In()
end
function export:f_3_Finished()
  local l0
  self = self._graph
  l0 = self[5]
  l0:In(1)
end
function export:f_3_Skipped()
  local l0
  self = self._graph
  l0 = self[5]
  l0:In(0)
end
function export:f_3_Started()
  self = self._graph
  self:VideoStarted()
end
function export:f_4_Out_0()
  local l0
  self = self._graph
  l0 = self[3]
  l0.SceneEntity = "9223372049192219229"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S09/S09_Mosaic04-OS_VID/s09_mosaic04-os_vid.seq"
  l0:Start()
end
function export:f_4_Out_1()
  local l0
  self = self._graph
  l0 = self[6]
  l0.SoundId = "soundbinary/1643593712.bnk"
  l0:Play()
end
function export:f_7_Out_0()
  self = self._graph
  self:EndVideo()
end
function export:f_7_Out_1()
  local l0
  self = self._graph
  l0 = self[1]
  l0.SoundId = "soundbinary/2023657118.bnk"
  l0:Play()
end
function export:EndVideo()
end
function export:VideoStarted()
end
_compilerVersion = 4
