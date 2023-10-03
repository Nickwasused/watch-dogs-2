export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/GetNPC.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S09M010_CIN_911Intro_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M010\\s09m010_cin_911intro.domino|@S09M010_CIN_911Intro_Main"
  self.EndCine = DummyFunction
  self.PlayerEntity = nil
  self.Josh = {}
  self.TBone = {}
  self.HQ_Talker = {}
  self.box_CinematicPrep_7 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_7
  l0._graph = self
  l0._name = "box_CinematicPrep_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M010\\s09m010_cin_911intro.domino|@S09M010_CIN_911Intro_Main|1295751162"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_7_PostOut
  self.box_GetNPC_20 = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self.box_GetNPC_20
  l0._graph = self
  l0._name = "box_GetNPC_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M010\\s09m010_cin_911intro.domino|@S09M010_CIN_911Intro_Main|1560889350"
  l0.GotNPCList = self.f_box_GetNPC_20_GotNPCList
  self.box_GetNPC_22 = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self.box_GetNPC_22
  l0._graph = self
  l0._name = "box_GetNPC_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M010\\s09m010_cin_911intro.domino|@S09M010_CIN_911Intro_Main|1585695999"
  l0.GotNPCList = self.f_box_GetNPC_22_GotNPCList
  self.box_CinematicPrep_3 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_3
  l0._graph = self
  l0._name = "box_CinematicPrep_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M010\\s09m010_cin_911intro.domino|@S09M010_CIN_911Intro_Main|1689254567"
  l0.PreOut = self.f_box_CinematicPrep_3_PreOut
  l0.PostOut = DummyFunction
  self.box_OnceOnly_v3_4 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_4
  l0._graph = self
  l0._name = "box_OnceOnly_v3_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M010\\s09m010_cin_911intro.domino|@S09M010_CIN_911Intro_Main|1721474405"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_4_Out
  l0.ResetOut = DummyFunction
  self.box_PlaySequence_v5_1 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_1
  l0._graph = self
  l0._name = "box_PlaySequence_v5_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M010\\s09m010_cin_911intro.domino|@S09M010_CIN_911Intro_Main|1984490804"
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
  l0 = self.box_CinematicPrep_3
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M010\\s09m010_cin_911intro.domino|@S09M010_CIN_911Intro_Main|109438769", "109438769", "S09M010_CIN_911Intro_Main", "In", "box_CinematicPrep_3.PreCinematic", self, l0)
  l0:PreCinematic()
end
function export:f_box_VisibilityController_v2_21_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_7
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M010\\s09m010_cin_911intro.domino|@S09M010_CIN_911Intro_Main|1069087395", "1069087395", "S09M010_CIN_911Intro_Main", "box_VisibilityController_v2_21.Shown", "box_CinematicPrep_7.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_VisibilityController_v2_5_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_1
  l0.SceneEntity = "9223372047779474441"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S09/S09_911Intro_CIN/s09_911intro_cin.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M010\\s09m010_cin_911intro.domino|@S09M010_CIN_911Intro_Main|133886028", "133886028", "S09M010_CIN_911Intro_Main", "box_VisibilityController_v2_5.Hidden", "box_PlaySequence_v5_1.Start", clone, l0)
  l0:Start()
end
function export:f_box_CinematicPrep_7_PostOut()
  local l0
  self = self._graph
  l0 = self.box_CinematicPrep_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M010\\s09m010_cin_911intro.domino|@S09M010_CIN_911Intro_Main|1309166520", "1309166520", "S09M010_CIN_911Intro_Main", "box_CinematicPrep_7.PostOut", "EndCine", l0, self)
  self:EndCine()
end
function export:f_box_GetNPC_20_GotNPCList()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_20
  self.HQ_Talker = l0.NPCList
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.HQ_Talker
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M010\\s09m010_cin_911intro.domino|@S09M010_CIN_911Intro_Main|1256575320"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_5_Hidden
  l0.Out = DummyFunction
  l0 = self.box_GetNPC_20
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M010\\s09m010_cin_911intro.domino|@S09M010_CIN_911Intro_Main|1567242542", "1567242542", "S09M010_CIN_911Intro_Main", "box_GetNPC_20.GotNPCList", "box_VisibilityController_v2_5.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_GetNPC_22_GotNPCList()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_22
  self.HQ_Talker = l0.NPCList
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.HQ_Talker
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M010\\s09m010_cin_911intro.domino|@S09M010_CIN_911Intro_Main|838883626"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_21_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_GetNPC_22
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M010\\s09m010_cin_911intro.domino|@S09M010_CIN_911Intro_Main|685386023", "685386023", "S09M010_CIN_911Intro_Main", "box_GetNPC_22.GotNPCList", "box_VisibilityController_v2_21.Show", l0, l1)
  l1:Show()
end
function export:f_box_CinematicPrep_3_PreOut()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_20
  l0.Group = "HQ_Talker"
  l0 = self.box_CinematicPrep_3
  l1 = self.box_GetNPC_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M010\\s09m010_cin_911intro.domino|@S09M010_CIN_911Intro_Main|1793420814", "1793420814", "S09M010_CIN_911Intro_Main", "box_CinematicPrep_3.PreOut", "box_GetNPC_20.GetAll", l0, l1)
  l1:GetAll()
end
function export:f_box_OnceOnly_v3_4_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_22
  l0.Group = "HQ_Talker"
  l0 = self.box_OnceOnly_v3_4
  l1 = self.box_GetNPC_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M010\\s09m010_cin_911intro.domino|@S09M010_CIN_911Intro_Main|2063399995", "2063399995", "S09M010_CIN_911Intro_Main", "box_OnceOnly_v3_4.Out", "box_GetNPC_22.GetAll", l0, l1)
  l1:GetAll()
end
function export:f_box_PlaySequence_v5_1_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_4()
  l0 = self.box_PlaySequence_v5_1
  l1 = self.box_OnceOnly_v3_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M010\\s09m010_cin_911intro.domino|@S09M010_CIN_911Intro_Main|1222725326", "1222725326", "S09M010_CIN_911Intro_Main", "box_PlaySequence_v5_1.Finished", "box_OnceOnly_v3_4.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_1_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_4()
  l0 = self.box_PlaySequence_v5_1
  l1 = self.box_OnceOnly_v3_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M010\\s09m010_cin_911intro.domino|@S09M010_CIN_911Intro_Main|795601948", "795601948", "S09M010_CIN_911Intro_Main", "box_PlaySequence_v5_1.Skipped", "box_OnceOnly_v3_4.In", l0, l1)
  l1:In(0)
end
function export:OnEnter_box_OnceOnly_v3_4()
end
function export:EndCine()
end
_compilerVersion = 4
