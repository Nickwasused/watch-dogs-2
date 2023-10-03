export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S02M010_VID_SOI-FS_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M010\\S02M010_VID_SOI-FS.domino|@S02M010_VID_SOI-FS_Main"
  self.EndVideo = DummyFunction
  self.PlayerEntity = nil
  self.box_OnceOnly_v3_4 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_4
  l0._graph = self
  l0._name = "box_OnceOnly_v3_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M010\\S02M010_VID_SOI-FS.domino|@S02M010_VID_SOI-FS_Main|366543879"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_4_Out
  l0.ResetOut = DummyFunction
  self.box_CinematicPrep_3 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_3
  l0._graph = self
  l0._name = "box_CinematicPrep_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M010\\S02M010_VID_SOI-FS.domino|@S02M010_VID_SOI-FS_Main|1127224294"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_3_PostOut
  self.box_PlaySequence_v5_1 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_1
  l0._graph = self
  l0._name = "box_PlaySequence_v5_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M010\\S02M010_VID_SOI-FS.domino|@S02M010_VID_SOI-FS_Main|1440693585"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_1_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_1_Finished
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
  l0 = self.box_PlaySequence_v5_1
  l0.SceneEntity = "9223372049192073763"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S02/S02_SOI-FS_VID/s02_soi-fs_vid.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M010\\S02M010_VID_SOI-FS.domino|@S02M010_VID_SOI-FS_Main|1270511193", "1270511193", "S02M010_VID_SOI-FS_Main", "In", "box_PlaySequence_v5_1.Start", self, l0)
  l0:Start()
end
function export:f_box_OnceOnly_v3_4_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_3
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_OnceOnly_v3_4
  l1 = self.box_CinematicPrep_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M010\\S02M010_VID_SOI-FS.domino|@S02M010_VID_SOI-FS_Main|1849356964", "1849356964", "S02M010_VID_SOI-FS_Main", "box_OnceOnly_v3_4.Out", "box_CinematicPrep_3.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_CinematicPrep_3_PostOut()
  local l0
  self = self._graph
  l0 = self.box_CinematicPrep_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M010\\S02M010_VID_SOI-FS.domino|@S02M010_VID_SOI-FS_Main|1252406224", "1252406224", "S02M010_VID_SOI-FS_Main", "box_CinematicPrep_3.PostOut", "EndVideo", l0, self)
  self:EndVideo()
end
function export:f_box_PlaySequence_v5_1_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_4()
  l0 = self.box_PlaySequence_v5_1
  l1 = self.box_OnceOnly_v3_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M010\\S02M010_VID_SOI-FS.domino|@S02M010_VID_SOI-FS_Main|1660475333", "1660475333", "S02M010_VID_SOI-FS_Main", "box_PlaySequence_v5_1.Finished", "box_OnceOnly_v3_4.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_1_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_4()
  l0 = self.box_PlaySequence_v5_1
  l1 = self.box_OnceOnly_v3_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M010\\S02M010_VID_SOI-FS.domino|@S02M010_VID_SOI-FS_Main|2020343494", "2020343494", "S02M010_VID_SOI-FS_Main", "box_PlaySequence_v5_1.Skipped", "box_OnceOnly_v3_4.In", l0, l1)
  l1:In(0)
end
function export:OnEnter_box_OnceOnly_v3_4()
end
function export:EndVideo()
end
_compilerVersion = 4
