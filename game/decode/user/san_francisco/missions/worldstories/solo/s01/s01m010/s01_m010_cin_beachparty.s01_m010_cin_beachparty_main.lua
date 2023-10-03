export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/MissionMusicController.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
end
function export:Init(cbox)
  local l0
  self.Out = DummyFunction
  self.VentilationShaftEscape_CIN_Finish = DummyFunction
  self.VentilationShaftEscape_CIN_Started = DummyFunction
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
  self[3] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[3]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_3_Out
  l0.ResetOut = DummyFunction
  self[4] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[4]
  l0._graph = self
  l0.Started = self.f_4_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_4_Skipped
  l0.Finished = self.f_4_Finished
  self[8] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[8]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_8_Skipped
  l0.Finished = self.f_8_Finished
  self[1] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[1]
  l0._graph = self
  l0.PreOut = self.f_1_PreOut
  l0.PostOut = DummyFunction
  self[9] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[9]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_9_Out
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
  l0 = self[1]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:f_2_Finished()
  local l0
  self = self._graph
  l0 = self[3]
  l0:In(1)
end
function export:f_2_Skipped()
  local l0
  self = self._graph
  l0 = self[3]
  l0:In(0)
end
function export:f_6_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_5_Out_0
  l0.Out[1] = self.f_5_Out_1
  l0:In()
end
function export:f_3_Out()
  self = self._graph
  self:Out()
end
function export:f_5_Out_0()
  local l0
  self = self._graph
  l0 = self[8]
  l0.SceneEntity = "9223372067778522001"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S01/s01_m010_outro-fs_vid.seq"
  l0:Start()
end
function export:f_5_Out_1()
  self = self._graph
  self:VentilationShaftEscape_CIN_Finish()
end
function export:f_11_Out_0()
  local l0
  self = self._graph
  l0 = self[9]
  l0:In(1)
end
function export:f_11_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = nil
  l0.UseMusicScoreMode = nil
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0:Deactivate()
end
function export:f_4_Finished()
  local l0
  self = self._graph
  l0 = self[6]
  l0:In(1)
end
function export:f_4_Skipped()
  local l0
  self = self._graph
  l0 = self[6]
  l0:In(0)
end
function export:f_4_Started()
  self = self._graph
  self:VentilationShaftEscape_CIN_Started()
end
function export:f_8_Finished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_11_Out_0
  l0.Out[1] = self.f_11_Out_1
  l0:In()
end
function export:f_8_Skipped()
  local l0
  self = self._graph
  l0 = self[9]
  l0:In(0)
end
function export:f_1_PreOut()
  local l0
  self = self._graph
  l0 = self[4]
  l0.SceneEntity = "9223372051267532202"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S01/S01_VentilationShaftEscape_CIN/s01_ventilationshaftescape_cin.seq"
  l0:Start()
end
function export:f_9_Out()
  local l0
  self = self._graph
  l0 = self[2]
  l0.SceneEntity = "9223372049587983035"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S01/S01_BeachParty-FS_VID/s01_beachparty-fs_vid.seq"
  l0:Start()
end
function export:Out()
end
function export:VentilationShaftEscape_CIN_Finish()
end
function export:VentilationShaftEscape_CIN_Started()
end
_compilerVersion = 4
