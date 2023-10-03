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
  self._name = "S07_M010_CIN_NviteIntro_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M010\\S07_M010_CIN_NviteIntro.domino|@S07_M010_CIN_NviteIntro_Main"
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.Sitara = {}
  self.Horatio = {}
  self.Wrench = {}
  self.Josh = {}
  self.HQ_Talker = {}
  self.box_PlaySequence_v5_2 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_2
  l0._graph = self
  l0._name = "box_PlaySequence_v5_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M010\\S07_M010_CIN_NviteIntro.domino|@S07_M010_CIN_NviteIntro_Main|360216001"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_2_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_2_Finished
  self.box_OnceOnly_v3_3 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_3
  l0._graph = self
  l0._name = "box_OnceOnly_v3_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M010\\S07_M010_CIN_NviteIntro.domino|@S07_M010_CIN_NviteIntro_Main|390531106"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_3_Out
  l0.ResetOut = DummyFunction
  self.box_CinematicPrep_1 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_1
  l0._graph = self
  l0._name = "box_CinematicPrep_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M010\\S07_M010_CIN_NviteIntro.domino|@S07_M010_CIN_NviteIntro_Main|713267945"
  l0.PreOut = self.f_box_CinematicPrep_1_PreOut
  l0.PostOut = DummyFunction
  self.box_CinematicPrep_4 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_4
  l0._graph = self
  l0._name = "box_CinematicPrep_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M010\\S07_M010_CIN_NviteIntro.domino|@S07_M010_CIN_NviteIntro_Main|1435740411"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_4_PostOut
  self.box_GetNPC_5 = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self.box_GetNPC_5
  l0._graph = self
  l0._name = "box_GetNPC_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M010\\S07_M010_CIN_NviteIntro.domino|@S07_M010_CIN_NviteIntro_Main|1448370396"
  l0.GotNPCList = self.f_box_GetNPC_5_GotNPCList
  self.box_GetNPC_8 = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self.box_GetNPC_8
  l0._graph = self
  l0._name = "box_GetNPC_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M010\\S07_M010_CIN_NviteIntro.domino|@S07_M010_CIN_NviteIntro_Main|1510845226"
  l0.GotNPCList = self.f_box_GetNPC_8_GotNPCList
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M010\\S07_M010_CIN_NviteIntro.domino|@S07_M010_CIN_NviteIntro_Main|328508320", "328508320", "S07_M010_CIN_NviteIntro_Main", "In", "box_CinematicPrep_1.PreCinematic", self, l0)
  l0:PreCinematic()
end
function export:f_box_PlaySequence_v5_2_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_3()
  l0 = self.box_PlaySequence_v5_2
  l1 = self.box_OnceOnly_v3_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M010\\S07_M010_CIN_NviteIntro.domino|@S07_M010_CIN_NviteIntro_Main|389205590", "389205590", "S07_M010_CIN_NviteIntro_Main", "box_PlaySequence_v5_2.Finished", "box_OnceOnly_v3_3.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_2_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_3()
  l0 = self.box_PlaySequence_v5_2
  l1 = self.box_OnceOnly_v3_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M010\\S07_M010_CIN_NviteIntro.domino|@S07_M010_CIN_NviteIntro_Main|1009761615", "1009761615", "S07_M010_CIN_NviteIntro_Main", "box_PlaySequence_v5_2.Skipped", "box_OnceOnly_v3_3.In", l0, l1)
  l1:In(0)
end
function export:f_box_OnceOnly_v3_3_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_5
  l0.Group = "HQ_Talker"
  l0 = self.box_OnceOnly_v3_3
  l1 = self.box_GetNPC_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M010\\S07_M010_CIN_NviteIntro.domino|@S07_M010_CIN_NviteIntro_Main|1372714321", "1372714321", "S07_M010_CIN_NviteIntro_Main", "box_OnceOnly_v3_3.Out", "box_GetNPC_5.GetAll", l0, l1)
  l1:GetAll()
end
function export:f_box_CinematicPrep_1_PreOut()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_8
  l0.Group = "HQ_Talker"
  l0 = self.box_CinematicPrep_1
  l1 = self.box_GetNPC_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M010\\S07_M010_CIN_NviteIntro.domino|@S07_M010_CIN_NviteIntro_Main|2062384065", "2062384065", "S07_M010_CIN_NviteIntro_Main", "box_CinematicPrep_1.PreOut", "box_GetNPC_8.GetAll", l0, l1)
  l1:GetAll()
end
function export:f_box_CinematicPrep_4_PostOut()
  local l0
  self = self._graph
  l0 = self.box_CinematicPrep_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M010\\S07_M010_CIN_NviteIntro.domino|@S07_M010_CIN_NviteIntro_Main|149118489", "149118489", "S07_M010_CIN_NviteIntro_Main", "box_CinematicPrep_4.PostOut", "Out", l0, self)
  self:Out()
end
function export:f_box_GetNPC_5_GotNPCList()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_5
  self.HQ_Talker = l0.NPCList
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.HQ_Talker
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M010\\S07_M010_CIN_NviteIntro.domino|@S07_M010_CIN_NviteIntro_Main|2065500972"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_6_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_GetNPC_5
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M010\\S07_M010_CIN_NviteIntro.domino|@S07_M010_CIN_NviteIntro_Main|678070150", "678070150", "S07_M010_CIN_NviteIntro_Main", "box_GetNPC_5.GotNPCList", "box_VisibilityController_v2_6.Show", l0, l1)
  l1:Show()
end
function export:f_box_GetNPC_8_GotNPCList()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_8
  self.HQ_Talker = l0.NPCList
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.HQ_Talker
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M010\\S07_M010_CIN_NviteIntro.domino|@S07_M010_CIN_NviteIntro_Main|1984266271"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_7_Hidden
  l0.Out = DummyFunction
  l0 = self.box_GetNPC_8
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M010\\S07_M010_CIN_NviteIntro.domino|@S07_M010_CIN_NviteIntro_Main|680894791", "680894791", "S07_M010_CIN_NviteIntro_Main", "box_GetNPC_8.GotNPCList", "box_VisibilityController_v2_7.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_VisibilityController_v2_7_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_2
  l0.SceneEntity = "9223372047779436077"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S07/S07_NViteIntro_CIN/s07_nviteintro_cin.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M010\\S07_M010_CIN_NviteIntro.domino|@S07_M010_CIN_NviteIntro_Main|1138980795", "1138980795", "S07_M010_CIN_NviteIntro_Main", "box_VisibilityController_v2_7.Hidden", "box_PlaySequence_v5_2.Start", clone, l0)
  l0:Start()
end
function export:f_box_VisibilityController_v2_6_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_4
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M010\\S07_M010_CIN_NviteIntro.domino|@S07_M010_CIN_NviteIntro_Main|1473836626", "1473836626", "S07_M010_CIN_NviteIntro_Main", "box_VisibilityController_v2_6.Shown", "box_CinematicPrep_4.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:OnEnter_box_OnceOnly_v3_3()
end
function export:Out()
end
_compilerVersion = 4
