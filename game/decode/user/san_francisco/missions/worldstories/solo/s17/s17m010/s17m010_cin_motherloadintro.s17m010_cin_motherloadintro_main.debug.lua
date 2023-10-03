export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/FreeFormTextController.lua")
  cbox:RegisterBox("domino/System/GetNPC.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S17M010_CIN_MotherloadIntro_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_cin_motherloadintro.domino|@S17M010_CIN_MotherloadIntro_Main"
  self.EndCine = DummyFunction
  self.PlayerEntity = nil
  self.HQ_talkers_to_hide = {}
  self.box_GetNPC_5 = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self.box_GetNPC_5
  l0._graph = self
  l0._name = "box_GetNPC_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_cin_motherloadintro.domino|@S17M010_CIN_MotherloadIntro_Main|110083930"
  l0.GotNPCList = self.f_box_GetNPC_5_GotNPCList
  self.box_PlaySequence_v5_1 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_1
  l0._graph = self
  l0._name = "box_PlaySequence_v5_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_cin_motherloadintro.domino|@S17M010_CIN_MotherloadIntro_Main|373904112"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_1_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_1_Finished
  self.box_FreeFormTextController_2 = cbox:CreateBox("domino/System/FreeFormTextController.lua")
  l0 = self.box_FreeFormTextController_2
  l0._graph = self
  l0._name = "box_FreeFormTextController_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_cin_motherloadintro.domino|@S17M010_CIN_MotherloadIntro_Main|671456652"
  l0.OnFreeFormTextRequested = DummyFunction
  l0.OnFreeFormTextHidden = DummyFunction
  self.box_PlaySequence_v5_14 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_14
  l0._graph = self
  l0._name = "box_PlaySequence_v5_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_cin_motherloadintro.domino|@S17M010_CIN_MotherloadIntro_Main|1453438002"
  l0._DynamicAnchors = {
    SPOut = {"Text_01"}
  }
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_14_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_14_Finished
  l0.SPOut.Text_01 = self.f_box_PlaySequence_v5_14_SPOut__Text_01_
  self.box_MultipleOR_8 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_8
  l0._graph = self
  l0._name = "box_MultipleOR_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_cin_motherloadintro.domino|@S17M010_CIN_MotherloadIntro_Main|1516437046"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_8_Out
  self.box_OnceOnly_v3_4 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_4
  l0._graph = self
  l0._name = "box_OnceOnly_v3_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_cin_motherloadintro.domino|@S17M010_CIN_MotherloadIntro_Main|1737391757"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_4_Out
  l0.ResetOut = DummyFunction
  self.box_GetNPC_3 = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self.box_GetNPC_3
  l0._graph = self
  l0._name = "box_GetNPC_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_cin_motherloadintro.domino|@S17M010_CIN_MotherloadIntro_Main|1953882857"
  l0.GotNPCList = self.f_box_GetNPC_3_GotNPCList
  self.box_CinematicPrep_10 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_10
  l0._graph = self
  l0._name = "box_CinematicPrep_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_cin_motherloadintro.domino|@S17M010_CIN_MotherloadIntro_Main|2061308764"
  l0.PreOut = self.f_box_CinematicPrep_10_PreOut
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
  l0 = self.box_CinematicPrep_10
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_cin_motherloadintro.domino|@S17M010_CIN_MotherloadIntro_Main|209042671", "209042671", "S17M010_CIN_MotherloadIntro_Main", "In", "box_CinematicPrep_10.PreCinematic", self, l0)
  l0:PreCinematic()
end
function export:f_box_VisibilityController_v2_12_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.HQ_talkers_to_hide
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_cin_motherloadintro.domino|@S17M010_CIN_MotherloadIntro_Main|807485905"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_6_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_cin_motherloadintro.domino|@S17M010_CIN_MotherloadIntro_Main|1831122866", "1831122866", "S17M010_CIN_MotherloadIntro_Main", "box_VisibilityController_v2_12.Hidden", "box_VisibilityController_v2_6.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_GetNPC_5_GotNPCList()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_5
  self.HQ_talkers_to_hide = l0.NPCList
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.HQ_talkers_to_hide
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_cin_motherloadintro.domino|@S17M010_CIN_MotherloadIntro_Main|1619929673"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_7_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_GetNPC_5
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_cin_motherloadintro.domino|@S17M010_CIN_MotherloadIntro_Main|116059227", "116059227", "S17M010_CIN_MotherloadIntro_Main", "box_GetNPC_5.GotNPCList", "box_VisibilityController_v2_7.Show", l0, l1)
  l1:Show()
end
function export:f_box_VisibilityController_v2_13_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_cin_motherloadintro.domino|@S17M010_CIN_MotherloadIntro_Main|854957881", "854957881", "S17M010_CIN_MotherloadIntro_Main", "box_VisibilityController_v2_13.Shown", "EndCine", clone, self)
  self:EndCine()
end
function export:f_box_PlaySequence_v5_1_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_4()
  l0 = self.box_PlaySequence_v5_1
  l1 = self.box_OnceOnly_v3_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_cin_motherloadintro.domino|@S17M010_CIN_MotherloadIntro_Main|1295537400", "1295537400", "S17M010_CIN_MotherloadIntro_Main", "box_PlaySequence_v5_1.Finished", "box_OnceOnly_v3_4.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_1_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_4()
  l0 = self.box_PlaySequence_v5_1
  l1 = self.box_OnceOnly_v3_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_cin_motherloadintro.domino|@S17M010_CIN_MotherloadIntro_Main|175704512", "175704512", "S17M010_CIN_MotherloadIntro_Main", "box_PlaySequence_v5_1.Skipped", "box_OnceOnly_v3_4.In", l0, l1)
  l1:In(0)
end
function export:f_box_VisibilityController_v2_6_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_1
  l0.SceneEntity = "9223372047779474451"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S17/S17_MotherloadIntro_CIN/s17_motherloadintro_cin.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_cin_motherloadintro.domino|@S17M010_CIN_MotherloadIntro_Main|1530226545", "1530226545", "S17M010_CIN_MotherloadIntro_Main", "box_VisibilityController_v2_6.Hidden", "box_PlaySequence_v5_1.Start", clone, l0)
  l0:Start()
end
function export:f_box_PlaySequence_v5_14_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_8()
  l0 = self.box_PlaySequence_v5_14
  l1 = self.box_MultipleOR_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_cin_motherloadintro.domino|@S17M010_CIN_MotherloadIntro_Main|898734885", "898734885", "S17M010_CIN_MotherloadIntro_Main", "box_PlaySequence_v5_14.Finished", "box_MultipleOR_8.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_PlaySequence_v5_14_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_8()
  l0 = self.box_PlaySequence_v5_14
  l1 = self.box_MultipleOR_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_cin_motherloadintro.domino|@S17M010_CIN_MotherloadIntro_Main|81695610", "81695610", "S17M010_CIN_MotherloadIntro_Main", "box_PlaySequence_v5_14.Skipped", "box_MultipleOR_8.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_PlaySequence_v5_14_SPOut__Text_01_()
  local l0, l1
  self = self._graph
  l0 = self.box_FreeFormTextController_2
  l0.FreeFormText = "FreeFormTextDB.9223372069363743741"
  l0 = self.box_PlaySequence_v5_14
  l1 = self.box_FreeFormTextController_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_cin_motherloadintro.domino|@S17M010_CIN_MotherloadIntro_Main|937737347", "937737347", "S17M010_CIN_MotherloadIntro_Main", "box_PlaySequence_v5_14.SPOut", "box_FreeFormTextController_2.Open", l0, l1)
  l1:Open()
end
function export:f_box_MultipleOR_8_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_3
  l0.Group = "HQ_Talker"
  l0 = self.box_MultipleOR_8
  l1 = self.box_GetNPC_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_cin_motherloadintro.domino|@S17M010_CIN_MotherloadIntro_Main|1407015539", "1407015539", "S17M010_CIN_MotherloadIntro_Main", "box_MultipleOR_8.Out", "box_GetNPC_3.GetAll", l0, l1)
  l1:GetAll()
end
function export:f_box_VisibilityController_v2_7_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372057842297284"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_cin_motherloadintro.domino|@S17M010_CIN_MotherloadIntro_Main|371330154"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_13_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_cin_motherloadintro.domino|@S17M010_CIN_MotherloadIntro_Main|1952033415", "1952033415", "S17M010_CIN_MotherloadIntro_Main", "box_VisibilityController_v2_7.Shown", "box_VisibilityController_v2_13.Show", clone, l0)
  l0:Show()
end
function export:f_box_OnceOnly_v3_4_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_5
  l0.Group = "HQ_Talker"
  l0 = self.box_OnceOnly_v3_4
  l1 = self.box_GetNPC_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_cin_motherloadintro.domino|@S17M010_CIN_MotherloadIntro_Main|570669929", "570669929", "S17M010_CIN_MotherloadIntro_Main", "box_OnceOnly_v3_4.Out", "box_GetNPC_5.GetAll", l0, l1)
  l1:GetAll()
end
function export:f_box_GetNPC_3_GotNPCList()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_3
  self.HQ_talkers_to_hide = l0.NPCList
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372057842297284"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_cin_motherloadintro.domino|@S17M010_CIN_MotherloadIntro_Main|96854786"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_12_Hidden
  l0.Out = DummyFunction
  l0 = self.box_GetNPC_3
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_cin_motherloadintro.domino|@S17M010_CIN_MotherloadIntro_Main|1446497174", "1446497174", "S17M010_CIN_MotherloadIntro_Main", "box_GetNPC_3.GotNPCList", "box_VisibilityController_v2_12.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_CinematicPrep_10_PreOut()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_14
  l0.SceneEntity = "9223372050219024361"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S16/S16_DusanActs-FS_VID/s16_dusanacts-fs_vid.seq"
  l0 = self.box_CinematicPrep_10
  l1 = self.box_PlaySequence_v5_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_cin_motherloadintro.domino|@S17M010_CIN_MotherloadIntro_Main|787106730", "787106730", "S17M010_CIN_MotherloadIntro_Main", "box_CinematicPrep_10.PreOut", "box_PlaySequence_v5_14.Start", l0, l1)
  l1:Start()
end
function export:OnEnter_box_MultipleOR_8()
end
function export:OnEnter_box_OnceOnly_v3_4()
end
function export:EndCine()
end
_compilerVersion = 4
