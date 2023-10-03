export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
end
function export:Init(cbox)
  local l0
  self._name = "s12_m060_scr_MarcusDrop_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\s12_m060_scr_marcusdrop.domino|@s12_m060_scr_MarcusDrop_Main"
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.box_CinematicPrep_3 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_3
  l0._graph = self
  l0._name = "box_CinematicPrep_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\s12_m060_scr_marcusdrop.domino|@s12_m060_scr_MarcusDrop_Main|452185389"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_3_PostOut
  self.box_PlaySequence_v5_1 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_1
  l0._graph = self
  l0._name = "box_PlaySequence_v5_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\s12_m060_scr_marcusdrop.domino|@s12_m060_scr_MarcusDrop_Main|803522525"
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
  l0.Finished = self.f_box_PlaySequence_v5_1_Finished
  l0.SPOut.CollisionOFf = DummyFunction
  self.box_CinematicPrep_2 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_2
  l0._graph = self
  l0._name = "box_CinematicPrep_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\s12_m060_scr_marcusdrop.domino|@s12_m060_scr_MarcusDrop_Main|1864762523"
  l0.PreOut = self.f_box_CinematicPrep_2_PreOut
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
  l0 = self.box_CinematicPrep_2
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\s12_m060_scr_marcusdrop.domino|@s12_m060_scr_MarcusDrop_Main|1235940120", "1235940120", "s12_m060_scr_MarcusDrop_Main", "In", "box_CinematicPrep_2.PreCinematic", self, l0)
  l0:PreCinematic()
end
function export:f_box_CinematicPrep_3_PostOut()
  local l0
  self = self._graph
  l0 = self.box_CinematicPrep_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\s12_m060_scr_marcusdrop.domino|@s12_m060_scr_MarcusDrop_Main|1251971229", "1251971229", "s12_m060_scr_MarcusDrop_Main", "box_CinematicPrep_3.PostOut", "Out", l0, self)
  self:Out()
end
function export:f_box_PlaySequence_v5_1_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_3
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_PlaySequence_v5_1
  l1 = self.box_CinematicPrep_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\s12_m060_scr_marcusdrop.domino|@s12_m060_scr_MarcusDrop_Main|1093063207", "1093063207", "s12_m060_scr_MarcusDrop_Main", "box_PlaySequence_v5_1.Finished", "box_CinematicPrep_3.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_CinematicPrep_2_PreOut()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_1
  l0.SceneEntity = "9223372055208985411"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S12/S12_M060_MarcusDropManHole/s12_m060_marcusdropmanhole.seq"
  l0 = self.box_CinematicPrep_2
  l1 = self.box_PlaySequence_v5_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\s12_m060_scr_marcusdrop.domino|@s12_m060_scr_MarcusDrop_Main|1493062951", "1493062951", "s12_m060_scr_MarcusDrop_Main", "box_CinematicPrep_2.PreOut", "box_PlaySequence_v5_1.Start", l0, l1)
  l1:Start()
end
function export:Out()
end
_compilerVersion = 4
