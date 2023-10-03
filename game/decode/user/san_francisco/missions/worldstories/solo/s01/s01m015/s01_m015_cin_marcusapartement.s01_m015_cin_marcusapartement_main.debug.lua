export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/FreeFormTextController.lua")
  cbox:RegisterBox("domino/System/LaneRestrictionsControl.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/PlayMusic.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:LoadResource("soundbinary/3557064792.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "S01_M015_CIN_MarcusApartement_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01_M015_CIN_MarcusApartement.domino|@S01_M015_CIN_MarcusApartement_Main"
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.Soundpoint_S01M015_OpeningScriptedMusic = "9223372066903663491"
  self.box_CinematicPrep_5 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_5
  l0._graph = self
  l0._name = "box_CinematicPrep_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01_M015_CIN_MarcusApartement.domino|@S01_M015_CIN_MarcusApartement_Main|915492327"
  l0.PreOut = self.f_box_CinematicPrep_5_PreOut
  l0.PostOut = DummyFunction
  self.box_CinematicPrep_3 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_3
  l0._graph = self
  l0._name = "box_CinematicPrep_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01_M015_CIN_MarcusApartement.domino|@S01_M015_CIN_MarcusApartement_Main|932820403"
  l0.PreOut = self.f_box_CinematicPrep_3_PreOut
  l0.PostOut = DummyFunction
  self.box_OnceOnly_v3_7 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_7
  l0._graph = self
  l0._name = "box_OnceOnly_v3_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01_M015_CIN_MarcusApartement.domino|@S01_M015_CIN_MarcusApartement_Main|1006772004"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_7_Out
  l0.ResetOut = DummyFunction
  self.box_CinematicPrep_2 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_2
  l0._graph = self
  l0._name = "box_CinematicPrep_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01_M015_CIN_MarcusApartement.domino|@S01_M015_CIN_MarcusApartement_Main|1472703019"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_2_PostOut
  self.box_PlaySequence_v5_9 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_9
  l0._graph = self
  l0._name = "box_PlaySequence_v5_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01_M015_CIN_MarcusApartement.domino|@S01_M015_CIN_MarcusApartement_Main|1705007173"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_9_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_9_Finished
  self.box_FreeFormTextController_10 = cbox:CreateBox("domino/System/FreeFormTextController.lua")
  l0 = self.box_FreeFormTextController_10
  l0._graph = self
  l0._name = "box_FreeFormTextController_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01_M015_CIN_MarcusApartement.domino|@S01_M015_CIN_MarcusApartement_Main|1807443528"
  l0.OnFreeFormTextRequested = DummyFunction
  l0.OnFreeFormTextHidden = DummyFunction
  self.box_FreeFormTextController_4 = cbox:CreateBox("domino/System/FreeFormTextController.lua")
  l0 = self.box_FreeFormTextController_4
  l0._graph = self
  l0._name = "box_FreeFormTextController_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01_M015_CIN_MarcusApartement.domino|@S01_M015_CIN_MarcusApartement_Main|1841004927"
  l0.OnFreeFormTextRequested = DummyFunction
  l0.OnFreeFormTextHidden = DummyFunction
  self.box_OnceOnly_v3_8 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_8
  l0._graph = self
  l0._name = "box_OnceOnly_v3_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01_M015_CIN_MarcusApartement.domino|@S01_M015_CIN_MarcusApartement_Main|1957963074"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_8_Out
  l0.ResetOut = DummyFunction
  self.box_PlaySequence_v5_1 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_1
  l0._graph = self
  l0._name = "box_PlaySequence_v5_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01_M015_CIN_MarcusApartement.domino|@S01_M015_CIN_MarcusApartement_Main|2078789788"
  l0._DynamicAnchors = {
    SPOut = {
      "Ubisoft Presents",
      "Production"
    }
  }
  l0.Started = self.f_box_PlaySequence_v5_1_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_1_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_1_Finished
  l0.SPOut["Ubisoft Presents"] = self.f_box_PlaySequence_v5_1_SPOut__Ubisoft_Presents_
  l0.SPOut.Production = self.f_box_PlaySequence_v5_1_SPOut__Production_
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01_M015_CIN_MarcusApartement.domino|@S01_M015_CIN_MarcusApartement_Main|1632260221", "1632260221", "S01_M015_CIN_MarcusApartement_Main", "In", "box_CinematicPrep_3.PreCinematic", self, l0)
  l0:PreCinematic()
end
function export:f_box_CinematicPrep_5_PreOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_8()
  l0 = self.box_CinematicPrep_5
  l1 = self.box_OnceOnly_v3_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01_M015_CIN_MarcusApartement.domino|@S01_M015_CIN_MarcusApartement_Main|1423676567", "1423676567", "S01_M015_CIN_MarcusApartement_Main", "box_CinematicPrep_5.PreOut", "box_OnceOnly_v3_8.In", l0, l1)
  l1:In(0)
end
function export:f_box_CinematicPrep_3_PreOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372050668066673"
  l0.RestrictTraffic = nil
  l0.RestrictPedestrians = nil
  l0.RestrictParking = nil
  l0.ResetLivingCity = 1
  l0.ResetMissionWithLivingCity = nil
  l0.CivilianDensityDbObject = nil
  l0.ParkedCarsDensityDbObject = nil
  l0.TrafficDensityScale = nil
  l0.ApplyToEnticers = nil
  l0.ApplyToRoadNetwork = nil
  l0.RestrictHumanOnFoot = nil
  l0.RestrictHumanPassenger = nil
  l0.RestrictAnimal = nil
  l0.RestrictRobot = nil
  l0.RestrictRoadVehicle = nil
  l0.RestrictRail = nil
  l0.RestrictBoat = nil
  l0.RestrictParkedCar = nil
  l0.RestrictParkedBoat = nil
  l0.RestrictWorldAI = nil
  l0.RestrictReinforcementAI = nil
  l0.RestrictMissionAI = nil
  l0.RestrictCityObject = nil
  l0.RestrictMissionObject = nil
  l0._graph = self
  l0._name = "box_Lanes_Restrictions_Control_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01_M015_CIN_MarcusApartement.domino|@S01_M015_CIN_MarcusApartement_Main|1707454750"
  l0.Out = self.f_box_Lanes_Restrictions_Control_11_Out
  l0 = self.box_CinematicPrep_3
  l1 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01_M015_CIN_MarcusApartement.domino|@S01_M015_CIN_MarcusApartement_Main|830562827", "830562827", "S01_M015_CIN_MarcusApartement_Main", "box_CinematicPrep_3.PreOut", "box_Lanes_Restrictions_Control_11.In", l0, l1)
  l1:In()
end
function export:f_box_OnceOnly_v3_7_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_2
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_OnceOnly_v3_7
  l1 = self.box_CinematicPrep_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01_M015_CIN_MarcusApartement.domino|@S01_M015_CIN_MarcusApartement_Main|891513776", "891513776", "S01_M015_CIN_MarcusApartement_Main", "box_OnceOnly_v3_7.Out", "box_CinematicPrep_2.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_CinematicPrep_2_PostOut()
  local l0
  self = self._graph
  l0 = self.box_CinematicPrep_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01_M015_CIN_MarcusApartement.domino|@S01_M015_CIN_MarcusApartement_Main|344720945", "344720945", "S01_M015_CIN_MarcusApartement_Main", "box_CinematicPrep_2.PostOut", "Out", l0, self)
  self:Out()
end
function export:f_box_PlaySequence_v5_9_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_7()
  l0 = self.box_PlaySequence_v5_9
  l1 = self.box_OnceOnly_v3_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01_M015_CIN_MarcusApartement.domino|@S01_M015_CIN_MarcusApartement_Main|395618449", "395618449", "S01_M015_CIN_MarcusApartement_Main", "box_PlaySequence_v5_9.Finished", "box_OnceOnly_v3_7.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_9_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_7()
  l0 = self.box_PlaySequence_v5_9
  l1 = self.box_OnceOnly_v3_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01_M015_CIN_MarcusApartement.domino|@S01_M015_CIN_MarcusApartement_Main|98066526", "98066526", "S01_M015_CIN_MarcusApartement_Main", "box_PlaySequence_v5_9.Skipped", "box_OnceOnly_v3_7.In", l0, l1)
  l1:In(0)
end
function export:f_box_Lanes_Restrictions_Control_11_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_1
  l0.SceneEntity = "9223372047779512959"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S01/S01_MarcusApartment_CIN/s01_marcusapartment_cin.seq"
  l0.RemoveLoadingScreen = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01_M015_CIN_MarcusApartement.domino|@S01_M015_CIN_MarcusApartement_Main|1430908363", "1430908363", "S01_M015_CIN_MarcusApartement_Main", "box_Lanes_Restrictions_Control_11.Out", "box_PlaySequence_v5_1.Start", clone, l0)
  l0:Start()
end
function export:f_box_OnceOnly_v3_8_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_9
  l0.SceneEntity = "9223372060743314482"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S01/S01_M015_CIN_EstablishShotOutApartment/s01_m015_cin_establishshotoutapartment.seq"
  l0 = self.box_OnceOnly_v3_8
  l1 = self.box_PlaySequence_v5_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01_M015_CIN_MarcusApartement.domino|@S01_M015_CIN_MarcusApartement_Main|756784497", "756784497", "S01_M015_CIN_MarcusApartement_Main", "box_OnceOnly_v3_8.Out", "box_PlaySequence_v5_9.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlaySequence_v5_1_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_8()
  l0 = self.box_PlaySequence_v5_1
  l1 = self.box_OnceOnly_v3_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01_M015_CIN_MarcusApartement.domino|@S01_M015_CIN_MarcusApartement_Main|1343700287", "1343700287", "S01_M015_CIN_MarcusApartement_Main", "box_PlaySequence_v5_1.Finished", "box_OnceOnly_v3_8.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_1_Skipped()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_5
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_PlaySequence_v5_1
  l1 = self.box_CinematicPrep_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01_M015_CIN_MarcusApartement.domino|@S01_M015_CIN_MarcusApartement_Main|1380119287", "1380119287", "S01_M015_CIN_MarcusApartement_Main", "box_PlaySequence_v5_1.Skipped", "box_CinematicPrep_5.PreCinematic", l0, l1)
  l1:PreCinematic()
end
function export:f_box_PlaySequence_v5_1_SPOut__Production_()
  local l0, l1
  self = self._graph
  l0 = self.box_FreeFormTextController_4
  l0.FreeFormText = "FreeFormTextDB.9223372062017259313"
  l0 = self.box_PlaySequence_v5_1
  l1 = self.box_FreeFormTextController_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01_M015_CIN_MarcusApartement.domino|@S01_M015_CIN_MarcusApartement_Main|1470427168", "1470427168", "S01_M015_CIN_MarcusApartement_Main", "box_PlaySequence_v5_1.SPOut", "box_FreeFormTextController_4.Open", l0, l1)
  l1:Open()
end
function export:f_box_PlaySequence_v5_1_SPOut__Ubisoft_Presents_()
  local l0, l1
  self = self._graph
  l0 = self.box_FreeFormTextController_10
  l0.FreeFormText = "FreeFormTextDB.9223372062017259312"
  l0 = self.box_PlaySequence_v5_1
  l1 = self.box_FreeFormTextController_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01_M015_CIN_MarcusApartement.domino|@S01_M015_CIN_MarcusApartement_Main|1014758213", "1014758213", "S01_M015_CIN_MarcusApartement_Main", "box_PlaySequence_v5_1.SPOut", "box_FreeFormTextController_10.Open", l0, l1)
  l1:Open()
end
function export:f_box_PlaySequence_v5_1_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayMusic.lua")]
  l0.SoundId = "soundbinary/3557064792.bnk"
  l0.FadeOutTime = nil
  l0.Object = "9223372066903663491"
  l0.KeepLoaded = 1
  l0.MusicType = nil
  l0._graph = self
  l0._name = "box_PlayMusic_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01_M015_CIN_MarcusApartement.domino|@S01_M015_CIN_MarcusApartement_Main|1011347384"
  l0.Out = DummyFunction
  l0 = self.box_PlaySequence_v5_1
  l1 = Boxes[PathID("domino/System/PlayMusic.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01_M015_CIN_MarcusApartement.domino|@S01_M015_CIN_MarcusApartement_Main|1624014744", "1624014744", "S01_M015_CIN_MarcusApartement_Main", "box_PlaySequence_v5_1.Started", "box_PlayMusic_6.In", l0, l1)
  l1:In()
end
function export:OnEnter_box_OnceOnly_v3_7()
end
function export:OnEnter_box_OnceOnly_v3_8()
end
function export:Out()
end
_compilerVersion = 4
