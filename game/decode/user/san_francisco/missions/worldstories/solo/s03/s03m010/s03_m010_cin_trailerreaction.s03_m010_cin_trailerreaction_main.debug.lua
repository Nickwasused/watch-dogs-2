export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S03_M010_CIN_TrailerReaction_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\s03_m010_cin_trailerreaction.domino|@S03_M010_CIN_TrailerReaction_Main"
  self.Out = DummyFunction
  self.Post_Cin_CLO = DummyFunction
  self.PlayerEntity = nil
  self.TalkersHQ = {}
  self.box_PlaySequence_v5_7 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_7
  l0._graph = self
  l0._name = "box_PlaySequence_v5_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\s03_m010_cin_trailerreaction.domino|@S03_M010_CIN_TrailerReaction_Main|881193007"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_7_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_7_Finished
  self.box_PlaySequence_v5_6 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_6
  l0._graph = self
  l0._name = "box_PlaySequence_v5_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\s03_m010_cin_trailerreaction.domino|@S03_M010_CIN_TrailerReaction_Main|971315111"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_6_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_6_Finished
  self.box_OnceOnly_v3_5 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_5
  l0._graph = self
  l0._name = "box_OnceOnly_v3_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\s03_m010_cin_trailerreaction.domino|@S03_M010_CIN_TrailerReaction_Main|1186664236"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_5_Out
  l0.ResetOut = DummyFunction
  self.box_CinematicPrep_2 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_2
  l0._graph = self
  l0._name = "box_CinematicPrep_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\s03_m010_cin_trailerreaction.domino|@S03_M010_CIN_TrailerReaction_Main|1778906706"
  l0.PreOut = self.f_box_CinematicPrep_2_PreOut
  l0.PostOut = DummyFunction
  self.box_OnceOnly_v3_8 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_8
  l0._graph = self
  l0._name = "box_OnceOnly_v3_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\s03_m010_cin_trailerreaction.domino|@S03_M010_CIN_TrailerReaction_Main|1838612247"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_8_Out
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
  l0 = self.box_CinematicPrep_2
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\s03_m010_cin_trailerreaction.domino|@S03_M010_CIN_TrailerReaction_Main|1657302592", "1657302592", "S03_M010_CIN_TrailerReaction_Main", "In", "box_CinematicPrep_2.PreCinematic", self, l0)
  l0:PreCinematic()
end
function export:f_box_Get_Player_ID_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_6
  l0.SceneEntity = "9223372047779436041"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S03/S03_TrailerReaction_CIN/s03_trailerreaction_cin.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\s03_m010_cin_trailerreaction.domino|@S03_M010_CIN_TrailerReaction_Main|2051476545", "2051476545", "S03_M010_CIN_TrailerReaction_Main", "box_Get_Player_ID_1.Out", "box_PlaySequence_v5_6.Start", clone, l0)
  l0:Start()
end
function export:f_box_PlaySequence_v5_7_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_8()
  l0 = self.box_PlaySequence_v5_7
  l1 = self.box_OnceOnly_v3_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\s03_m010_cin_trailerreaction.domino|@S03_M010_CIN_TrailerReaction_Main|1056760374", "1056760374", "S03_M010_CIN_TrailerReaction_Main", "box_PlaySequence_v5_7.Finished", "box_OnceOnly_v3_8.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_7_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_8()
  l0 = self.box_PlaySequence_v5_7
  l1 = self.box_OnceOnly_v3_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\s03_m010_cin_trailerreaction.domino|@S03_M010_CIN_TrailerReaction_Main|1974010808", "1974010808", "S03_M010_CIN_TrailerReaction_Main", "box_PlaySequence_v5_7.Skipped", "box_OnceOnly_v3_8.In", l0, l1)
  l1:In(0)
end
function export:f_box_PlaySequence_v5_6_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_5()
  l0 = self.box_PlaySequence_v5_6
  l1 = self.box_OnceOnly_v3_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\s03_m010_cin_trailerreaction.domino|@S03_M010_CIN_TrailerReaction_Main|1646138731", "1646138731", "S03_M010_CIN_TrailerReaction_Main", "box_PlaySequence_v5_6.Finished", "box_OnceOnly_v3_5.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_6_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_5()
  l0 = self.box_PlaySequence_v5_6
  l1 = self.box_OnceOnly_v3_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\s03_m010_cin_trailerreaction.domino|@S03_M010_CIN_TrailerReaction_Main|1484479967", "1484479967", "S03_M010_CIN_TrailerReaction_Main", "box_PlaySequence_v5_6.Skipped", "box_OnceOnly_v3_5.In", l0, l1)
  l1:In(0)
end
function export:f_box_OnceOnly_v3_5_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_7
  l0.SceneEntity = "9223372049527517761"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S03/S03_SOI-FS_VID/s03_soi-fs_vid.seq"
  l0 = self.box_OnceOnly_v3_5
  l1 = self.box_PlaySequence_v5_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\s03_m010_cin_trailerreaction.domino|@S03_M010_CIN_TrailerReaction_Main|2108067701", "2108067701", "S03_M010_CIN_TrailerReaction_Main", "box_OnceOnly_v3_5.Out", "box_PlaySequence_v5_7.Start", l0, l1)
  l1:Start()
end
function export:f_box_CinematicPrep_2_PreOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\s03_m010_cin_trailerreaction.domino|@S03_M010_CIN_TrailerReaction_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_CinematicPrep_2
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\s03_m010_cin_trailerreaction.domino|@S03_M010_CIN_TrailerReaction_Main|776444920", "776444920", "S03_M010_CIN_TrailerReaction_Main", "box_CinematicPrep_2.PreOut", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_OnceOnly_v3_8_Out()
  local l0
  self = self._graph
  l0 = self.box_OnceOnly_v3_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\s03_m010_cin_trailerreaction.domino|@S03_M010_CIN_TrailerReaction_Main|581476534", "581476534", "S03_M010_CIN_TrailerReaction_Main", "box_OnceOnly_v3_8.Out", "Out", l0, self)
  self:Out()
end
function export:OnEnter_box_OnceOnly_v3_5()
end
function export:OnEnter_box_OnceOnly_v3_8()
end
function export:Out()
end
function export:Post_Cin_CLO()
end
_compilerVersion = 4
