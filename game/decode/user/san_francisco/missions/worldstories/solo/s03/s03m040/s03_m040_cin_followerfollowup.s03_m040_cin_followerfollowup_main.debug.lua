export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S03_M040_CIN_FollowerFollowUp_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03_m040_cin_followerfollowup.domino|@S03_M040_CIN_FollowerFollowUp_Main"
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.Entity_Horatio = nil
  self.HQ_Horatio = {}
  self.box_PlaySequence_v5_11 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_11
  l0._graph = self
  l0._name = "box_PlaySequence_v5_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03_m040_cin_followerfollowup.domino|@S03_M040_CIN_FollowerFollowUp_Main|405302503"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_11_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_11_Finished
  self.box_OnceOnly_v3_9 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_9
  l0._graph = self
  l0._name = "box_OnceOnly_v3_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03_m040_cin_followerfollowup.domino|@S03_M040_CIN_FollowerFollowUp_Main|970785463"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_9_Out
  l0.ResetOut = DummyFunction
  self.box_PlaySequence_v5_6 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_6
  l0._graph = self
  l0._name = "box_PlaySequence_v5_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03_m040_cin_followerfollowup.domino|@S03_M040_CIN_FollowerFollowUp_Main|1615265639"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_6_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_6_Finished
  self.box_OnceOnly_v3_8 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_8
  l0._graph = self
  l0._name = "box_OnceOnly_v3_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03_m040_cin_followerfollowup.domino|@S03_M040_CIN_FollowerFollowUp_Main|2143378384"
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
  l0 = self.box_PlaySequence_v5_11
  l0.SceneEntity = "9223372047779436062"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S03/S03_FollowerFollowUp_CIN/s03_followerfollowup_cin.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03_m040_cin_followerfollowup.domino|@S03_M040_CIN_FollowerFollowUp_Main|233293647", "233293647", "S03_M040_CIN_FollowerFollowUp_Main", "In", "box_PlaySequence_v5_11.Start", self, l0)
  l0:Start()
end
function export:f_box_PlaySequence_v5_11_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_9()
  l0 = self.box_PlaySequence_v5_11
  l1 = self.box_OnceOnly_v3_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03_m040_cin_followerfollowup.domino|@S03_M040_CIN_FollowerFollowUp_Main|555910131", "555910131", "S03_M040_CIN_FollowerFollowUp_Main", "box_PlaySequence_v5_11.Finished", "box_OnceOnly_v3_9.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_11_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_9()
  l0 = self.box_PlaySequence_v5_11
  l1 = self.box_OnceOnly_v3_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03_m040_cin_followerfollowup.domino|@S03_M040_CIN_FollowerFollowUp_Main|1097928008", "1097928008", "S03_M040_CIN_FollowerFollowUp_Main", "box_PlaySequence_v5_11.Skipped", "box_OnceOnly_v3_9.In", l0, l1)
  l1:In(0)
end
function export:f_box_OnceOnly_v3_9_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_6
  l0.SceneEntity = "9223372049587978897"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S03/S03_DusanCyberDriver-FS_VID/s03_dusancyberdriver-fs_vid.seq"
  l0 = self.box_OnceOnly_v3_9
  l1 = self.box_PlaySequence_v5_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03_m040_cin_followerfollowup.domino|@S03_M040_CIN_FollowerFollowUp_Main|1622314726", "1622314726", "S03_M040_CIN_FollowerFollowUp_Main", "box_OnceOnly_v3_9.Out", "box_PlaySequence_v5_6.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlaySequence_v5_6_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_8()
  l0 = self.box_PlaySequence_v5_6
  l1 = self.box_OnceOnly_v3_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03_m040_cin_followerfollowup.domino|@S03_M040_CIN_FollowerFollowUp_Main|586884051", "586884051", "S03_M040_CIN_FollowerFollowUp_Main", "box_PlaySequence_v5_6.Finished", "box_OnceOnly_v3_8.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_6_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_8()
  l0 = self.box_PlaySequence_v5_6
  l1 = self.box_OnceOnly_v3_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03_m040_cin_followerfollowup.domino|@S03_M040_CIN_FollowerFollowUp_Main|971134482", "971134482", "S03_M040_CIN_FollowerFollowUp_Main", "box_PlaySequence_v5_6.Skipped", "box_OnceOnly_v3_8.In", l0, l1)
  l1:In(0)
end
function export:f_box_OnceOnly_v3_8_Out()
  local l0
  self = self._graph
  l0 = self.box_OnceOnly_v3_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03_m040_cin_followerfollowup.domino|@S03_M040_CIN_FollowerFollowUp_Main|1913573791", "1913573791", "S03_M040_CIN_FollowerFollowUp_Main", "box_OnceOnly_v3_8.Out", "Out", l0, self)
  self:Out()
end
function export:OnEnter_box_OnceOnly_v3_9()
end
function export:OnEnter_box_OnceOnly_v3_8()
end
function export:Out()
end
_compilerVersion = 4
