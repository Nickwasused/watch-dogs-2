export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/TeleportToSpawnPoint.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S02M050_CIN_ExposedBeliefs_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\s02m050_cin_exposedbeliefs.domino|@S02M050_CIN_ExposedBeliefs_Main"
  self.EndCine = DummyFunction
  self.PlayerEntity = nil
  self.box_OnceOnly_v3_5 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_5
  l0._graph = self
  l0._name = "box_OnceOnly_v3_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\s02m050_cin_exposedbeliefs.domino|@S02M050_CIN_ExposedBeliefs_Main|505703730"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_5_Out
  l0.ResetOut = DummyFunction
  self.box_PlaySequence_v5_1 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_1
  l0._graph = self
  l0._name = "box_PlaySequence_v5_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\s02m050_cin_exposedbeliefs.domino|@S02M050_CIN_ExposedBeliefs_Main|1469314622"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_1_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_1_Finished
  self.box_Teleport_To_SpawnPoint_3 = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self.box_Teleport_To_SpawnPoint_3
  l0._graph = self
  l0._name = "box_Teleport_To_SpawnPoint_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\s02m050_cin_exposedbeliefs.domino|@S02M050_CIN_ExposedBeliefs_Main|1827517960"
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_box_Teleport_To_SpawnPoint_3_TeleportDone
  self.box_CinematicPrep_2 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_2
  l0._graph = self
  l0._name = "box_CinematicPrep_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\s02m050_cin_exposedbeliefs.domino|@S02M050_CIN_ExposedBeliefs_Main|2008981526"
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
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\s02m050_cin_exposedbeliefs.domino|@S02M050_CIN_ExposedBeliefs_Main|987096184", "987096184", "S02M050_CIN_ExposedBeliefs_Main", "In", "box_CinematicPrep_2.PreCinematic", self, l0)
  l0:PreCinematic()
end
function export:f_box_OnceOnly_v3_5_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Teleport_To_SpawnPoint_3
  l0.SpawnPoint = "9223372048472072079"
  l0.UseFadeToBlack = 0
  l0.KeepBlackScreenOnExit = 1
  l0 = self.box_OnceOnly_v3_5
  l1 = self.box_Teleport_To_SpawnPoint_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\s02m050_cin_exposedbeliefs.domino|@S02M050_CIN_ExposedBeliefs_Main|1252972267", "1252972267", "S02M050_CIN_ExposedBeliefs_Main", "box_OnceOnly_v3_5.Out", "box_Teleport_To_SpawnPoint_3.In", l0, l1)
  l1:In()
end
function export:f_box_PlaySequence_v5_1_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_5()
  l0 = self.box_PlaySequence_v5_1
  l1 = self.box_OnceOnly_v3_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\s02m050_cin_exposedbeliefs.domino|@S02M050_CIN_ExposedBeliefs_Main|1096307301", "1096307301", "S02M050_CIN_ExposedBeliefs_Main", "box_PlaySequence_v5_1.Finished", "box_OnceOnly_v3_5.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_1_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_5()
  l0 = self.box_PlaySequence_v5_1
  l1 = self.box_OnceOnly_v3_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\s02m050_cin_exposedbeliefs.domino|@S02M050_CIN_ExposedBeliefs_Main|732482743", "732482743", "S02M050_CIN_ExposedBeliefs_Main", "box_PlaySequence_v5_1.Skipped", "box_OnceOnly_v3_5.In", l0, l1)
  l1:In(0)
end
function export:f_box_Teleport_To_SpawnPoint_3_TeleportDone()
  local l0
  self = self._graph
  l0 = self.box_Teleport_To_SpawnPoint_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\s02m050_cin_exposedbeliefs.domino|@S02M050_CIN_ExposedBeliefs_Main|779903349", "779903349", "S02M050_CIN_ExposedBeliefs_Main", "box_Teleport_To_SpawnPoint_3.TeleportDone", "EndCine", l0, self)
  self:EndCine()
end
function export:f_box_CinematicPrep_2_PreOut()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_1
  l0.SceneEntity = "9223372047235755679"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S02/S02_ExposedBeliefs_CIN/s02_exposedbeliefs_cin.seq"
  l0 = self.box_CinematicPrep_2
  l1 = self.box_PlaySequence_v5_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M050\\s02m050_cin_exposedbeliefs.domino|@S02M050_CIN_ExposedBeliefs_Main|18419185", "18419185", "S02M050_CIN_ExposedBeliefs_Main", "box_CinematicPrep_2.PreOut", "box_PlaySequence_v5_1.Start", l0, l1)
  l1:Start()
end
function export:OnEnter_box_OnceOnly_v3_5()
end
function export:EndCine()
end
_compilerVersion = 4
