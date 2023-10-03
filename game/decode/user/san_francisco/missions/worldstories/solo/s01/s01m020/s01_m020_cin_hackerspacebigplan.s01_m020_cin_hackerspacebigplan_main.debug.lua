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
  self._name = "S01_M020_CIN_HackerSpaceBigPlan_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01_M020_CIN_HackerSpaceBigPlan.domino|@S01_M020_CIN_HackerSpaceBigPlan_Main"
  self.Out = DummyFunction
  self.Started = DummyFunction
  self.PlayerEntity = nil
  self.box_OnceOnly_v3_13 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_13
  l0._graph = self
  l0._name = "box_OnceOnly_v3_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01_M020_CIN_HackerSpaceBigPlan.domino|@S01_M020_CIN_HackerSpaceBigPlan_Main|263192045"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_13_Out
  l0.ResetOut = DummyFunction
  self.box_CinematicPrep_1 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_1
  l0._graph = self
  l0._name = "box_CinematicPrep_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01_M020_CIN_HackerSpaceBigPlan.domino|@S01_M020_CIN_HackerSpaceBigPlan_Main|389977901"
  l0.PreOut = self.f_box_CinematicPrep_1_PreOut
  l0.PostOut = DummyFunction
  self.box_PlaySequence_v5_11 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_11
  l0._graph = self
  l0._name = "box_PlaySequence_v5_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01_M020_CIN_HackerSpaceBigPlan.domino|@S01_M020_CIN_HackerSpaceBigPlan_Main|1833083129"
  l0.Started = self.f_box_PlaySequence_v5_11_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_11_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_11_Finished
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
  l0 = self.box_CinematicPrep_1
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01_M020_CIN_HackerSpaceBigPlan.domino|@S01_M020_CIN_HackerSpaceBigPlan_Main|357992723", "357992723", "S01_M020_CIN_HackerSpaceBigPlan_Main", "In", "box_CinematicPrep_1.PreCinematic", self, l0)
  l0:PreCinematic()
end
function export:f_box_OnceOnly_v3_13_Out()
  local l0
  self = self._graph
  l0 = self.box_OnceOnly_v3_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01_M020_CIN_HackerSpaceBigPlan.domino|@S01_M020_CIN_HackerSpaceBigPlan_Main|766633938", "766633938", "S01_M020_CIN_HackerSpaceBigPlan_Main", "box_OnceOnly_v3_13.Out", "Out", l0, self)
  self:Out()
end
function export:f_box_CinematicPrep_1_PreOut()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_11
  l0.SceneEntity = "9223372047779436033"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S01/S01_HackerSpaceBigPlan_CIN/s01_hackerspacebigplan_cin.seq"
  l0 = self.box_CinematicPrep_1
  l1 = self.box_PlaySequence_v5_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01_M020_CIN_HackerSpaceBigPlan.domino|@S01_M020_CIN_HackerSpaceBigPlan_Main|772124758", "772124758", "S01_M020_CIN_HackerSpaceBigPlan_Main", "box_CinematicPrep_1.PreOut", "box_PlaySequence_v5_11.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlaySequence_v5_11_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_13()
  l0 = self.box_PlaySequence_v5_11
  l1 = self.box_OnceOnly_v3_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01_M020_CIN_HackerSpaceBigPlan.domino|@S01_M020_CIN_HackerSpaceBigPlan_Main|1342728417", "1342728417", "S01_M020_CIN_HackerSpaceBigPlan_Main", "box_PlaySequence_v5_11.Finished", "box_OnceOnly_v3_13.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_11_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_13()
  l0 = self.box_PlaySequence_v5_11
  l1 = self.box_OnceOnly_v3_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01_M020_CIN_HackerSpaceBigPlan.domino|@S01_M020_CIN_HackerSpaceBigPlan_Main|874601928", "874601928", "S01_M020_CIN_HackerSpaceBigPlan_Main", "box_PlaySequence_v5_11.Skipped", "box_OnceOnly_v3_13.In", l0, l1)
  l1:In(0)
end
function export:f_box_PlaySequence_v5_11_Started()
  local l0
  self = self._graph
  l0 = self.box_PlaySequence_v5_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01_M020_CIN_HackerSpaceBigPlan.domino|@S01_M020_CIN_HackerSpaceBigPlan_Main|1163678673", "1163678673", "S01_M020_CIN_HackerSpaceBigPlan_Main", "box_PlaySequence_v5_11.Started", "Started", l0, self)
  self:Started()
end
function export:OnEnter_box_OnceOnly_v3_13()
end
function export:Out()
end
function export:Started()
end
_compilerVersion = 4
