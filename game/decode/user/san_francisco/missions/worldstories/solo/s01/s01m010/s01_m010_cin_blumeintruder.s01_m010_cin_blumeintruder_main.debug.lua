export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/SetActionMap_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S01_M010_CIN_BlumeIntruder_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BlumeIntruder.domino|@S01_M010_CIN_BlumeIntruder_Main"
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.box_CinematicPrep_6 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_6
  l0._graph = self
  l0._name = "box_CinematicPrep_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BlumeIntruder.domino|@S01_M010_CIN_BlumeIntruder_Main|939373826"
  l0.PreOut = self.f_box_CinematicPrep_6_PreOut
  l0.PostOut = DummyFunction
  self.box_OnceOnly_v3_2 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_2
  l0._graph = self
  l0._name = "box_OnceOnly_v3_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BlumeIntruder.domino|@S01_M010_CIN_BlumeIntruder_Main|1392425372"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_2_Out
  l0.ResetOut = DummyFunction
  self.box_PlaySequence_v5_5 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_5
  l0._graph = self
  l0._name = "box_PlaySequence_v5_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BlumeIntruder.domino|@S01_M010_CIN_BlumeIntruder_Main|1417912431"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_5_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_5_Finished
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
  l0 = self.box_CinematicPrep_6
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BlumeIntruder.domino|@S01_M010_CIN_BlumeIntruder_Main|529090281", "529090281", "S01_M010_CIN_BlumeIntruder_Main", "In", "box_CinematicPrep_6.PreCinematic", self, l0)
  l0:PreCinematic()
end
function export:f_box_SetActionMap_v2_7_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_5
  l0.SceneEntity = "9223372049459585614"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S01/S01_BlumeIntruder_FS_VID/s01_blumeintruder-fs_vid.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BlumeIntruder.domino|@S01_M010_CIN_BlumeIntruder_Main|424417842", "424417842", "S01_M010_CIN_BlumeIntruder_Main", "box_SetActionMap_v2_7.Pushed", "box_PlaySequence_v5_5.Start", clone, l0)
  l0:Start()
end
function export:f_box_CinematicPrep_6_PreOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BlumeIntruder.domino|@S01_M010_CIN_BlumeIntruder_Main|497563710"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_box_SetActionMap_v2_7_Pushed
  l0.Popped = DummyFunction
  l0 = self.box_CinematicPrep_6
  l1 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BlumeIntruder.domino|@S01_M010_CIN_BlumeIntruder_Main|1716135134", "1716135134", "S01_M010_CIN_BlumeIntruder_Main", "box_CinematicPrep_6.PreOut", "box_SetActionMap_v2_7.Push", l0, l1)
  l1:Push()
end
function export:f_box_OnceOnly_v3_2_Out()
  local l0
  self = self._graph
  l0 = self.box_OnceOnly_v3_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BlumeIntruder.domino|@S01_M010_CIN_BlumeIntruder_Main|688506689", "688506689", "S01_M010_CIN_BlumeIntruder_Main", "box_OnceOnly_v3_2.Out", "Out", l0, self)
  self:Out()
end
function export:f_box_PlaySequence_v5_5_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_2()
  l0 = self.box_PlaySequence_v5_5
  l1 = self.box_OnceOnly_v3_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BlumeIntruder.domino|@S01_M010_CIN_BlumeIntruder_Main|846427258", "846427258", "S01_M010_CIN_BlumeIntruder_Main", "box_PlaySequence_v5_5.Finished", "box_OnceOnly_v3_2.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_5_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_2()
  l0 = self.box_PlaySequence_v5_5
  l1 = self.box_OnceOnly_v3_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BlumeIntruder.domino|@S01_M010_CIN_BlumeIntruder_Main|837950808", "837950808", "S01_M010_CIN_BlumeIntruder_Main", "box_PlaySequence_v5_5.Skipped", "box_OnceOnly_v3_2.In", l0, l1)
  l1:In(0)
end
function export:OnEnter_box_OnceOnly_v3_2()
end
function export:Out()
end
_compilerVersion = 4
