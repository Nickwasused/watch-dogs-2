export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/FreeFormTextController.lua")
  cbox:RegisterBox("domino/System/LaneRestrictionsControl.lua")
  cbox:RegisterBox("domino/System/LMALayerController.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/TeleportToSpawnPoint.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S17M010_CIN_DusanPenthouseIntro_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010_CIN_DusanPenthouseIntro.domino|@S17M010_CIN_DusanPenthouseIntro_Main"
  self.EndCine = DummyFunction
  self.PlayerEntity = nil
  self.box_Teleport_To_SpawnPoint_8 = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self.box_Teleport_To_SpawnPoint_8
  l0._graph = self
  l0._name = "box_Teleport_To_SpawnPoint_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010_CIN_DusanPenthouseIntro.domino|@S17M010_CIN_DusanPenthouseIntro_Main|88327720"
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_box_Teleport_To_SpawnPoint_8_TeleportDone
  self.box_Teleport_To_SpawnPoint_9 = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self.box_Teleport_To_SpawnPoint_9
  l0._graph = self
  l0._name = "box_Teleport_To_SpawnPoint_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010_CIN_DusanPenthouseIntro.domino|@S17M010_CIN_DusanPenthouseIntro_Main|263305794"
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_box_Teleport_To_SpawnPoint_9_TeleportDone
  self.box_LMA_Layer_Controller_5 = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self.box_LMA_Layer_Controller_5
  l0._graph = self
  l0._name = "box_LMA_Layer_Controller_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010_CIN_DusanPenthouseIntro.domino|@S17M010_CIN_DusanPenthouseIntro_Main|442490739"
  l0.Loaded = self.f_box_LMA_Layer_Controller_5_Loaded
  l0.Unloaded = DummyFunction
  self.box_CinematicPrep_12 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_12
  l0._graph = self
  l0._name = "box_CinematicPrep_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010_CIN_DusanPenthouseIntro.domino|@S17M010_CIN_DusanPenthouseIntro_Main|858058464"
  l0.PreOut = self.f_box_CinematicPrep_12_PreOut
  l0.PostOut = DummyFunction
  self.box_PlaySequence_v5_1 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_1
  l0._graph = self
  l0._name = "box_PlaySequence_v5_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010_CIN_DusanPenthouseIntro.domino|@S17M010_CIN_DusanPenthouseIntro_Main|1065098522"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_1_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_1_Finished
  self.box_OnceOnly_v3_4 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_4
  l0._graph = self
  l0._name = "box_OnceOnly_v3_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010_CIN_DusanPenthouseIntro.domino|@S17M010_CIN_DusanPenthouseIntro_Main|1129523565"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_4_Out
  l0.ResetOut = DummyFunction
  self.box_PlaySequence_v5_7 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_7
  l0._graph = self
  l0._name = "box_PlaySequence_v5_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010_CIN_DusanPenthouseIntro.domino|@S17M010_CIN_DusanPenthouseIntro_Main|1538444287"
  l0._DynamicAnchors = {
    SPOut = {"Text_01"}
  }
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = self.f_box_PlaySequence_v5_7_Finished
  l0.SPOut.Text_01 = self.f_box_PlaySequence_v5_7_SPOut__Text_01_
  self.box_FreeFormTextController_2 = cbox:CreateBox("domino/System/FreeFormTextController.lua")
  l0 = self.box_FreeFormTextController_2
  l0._graph = self
  l0._name = "box_FreeFormTextController_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010_CIN_DusanPenthouseIntro.domino|@S17M010_CIN_DusanPenthouseIntro_Main|1668869673"
  l0.OnFreeFormTextRequested = DummyFunction
  l0.OnFreeFormTextHidden = DummyFunction
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
  l0 = self.box_CinematicPrep_12
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010_CIN_DusanPenthouseIntro.domino|@S17M010_CIN_DusanPenthouseIntro_Main|1215245347", "1215245347", "S17M010_CIN_DusanPenthouseIntro_Main", "In", "box_CinematicPrep_12.PreCinematic", self, l0)
  l0:PreCinematic()
end
function export:f_box_Teleport_To_SpawnPoint_8_TeleportDone()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372058096843571"
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
  l0._name = "box_Lanes_Restrictions_Control_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010_CIN_DusanPenthouseIntro.domino|@S17M010_CIN_DusanPenthouseIntro_Main|1867093562"
  l0.Out = self.f_box_Lanes_Restrictions_Control_10_Out
  l0 = self.box_Teleport_To_SpawnPoint_8
  l1 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010_CIN_DusanPenthouseIntro.domino|@S17M010_CIN_DusanPenthouseIntro_Main|477180766", "477180766", "S17M010_CIN_DusanPenthouseIntro_Main", "box_Teleport_To_SpawnPoint_8.TeleportDone", "box_Lanes_Restrictions_Control_10.In", l0, l1)
  l1:In()
end
function export:f_box_Teleport_To_SpawnPoint_9_TeleportDone()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_1
  l0.SceneEntity = "9223372047779435996"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S17/S17_DusanPenthouseIntro_PRE/s17_dusanpenthouseintro_pre.seq"
  l0 = self.box_Teleport_To_SpawnPoint_9
  l1 = self.box_PlaySequence_v5_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010_CIN_DusanPenthouseIntro.domino|@S17M010_CIN_DusanPenthouseIntro_Main|1851842732", "1851842732", "S17M010_CIN_DusanPenthouseIntro_Main", "box_Teleport_To_SpawnPoint_9.TeleportDone", "box_PlaySequence_v5_1.Start", l0, l1)
  l1:Start()
end
function export:f_box_LMA_Layer_Controller_5_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_Teleport_To_SpawnPoint_8
  l0.SpawnPoint = "9223372052595526398"
  l0.KeepBlackScreenOnExit = 1
  l0 = self.box_LMA_Layer_Controller_5
  l1 = self.box_Teleport_To_SpawnPoint_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010_CIN_DusanPenthouseIntro.domino|@S17M010_CIN_DusanPenthouseIntro_Main|618171285", "618171285", "S17M010_CIN_DusanPenthouseIntro_Main", "box_LMA_Layer_Controller_5.Loaded", "box_Teleport_To_SpawnPoint_8.In", l0, l1)
  l1:In()
end
function export:f_box_CinematicPrep_12_PreOut()
  local l0, l1
  self = self._graph
  l0 = self.box_LMA_Layer_Controller_5
  l0.LMALayerName = "SF_08_DusanPenthouse_LMA"
  l0 = self.box_CinematicPrep_12
  l1 = self.box_LMA_Layer_Controller_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010_CIN_DusanPenthouseIntro.domino|@S17M010_CIN_DusanPenthouseIntro_Main|497657583", "497657583", "S17M010_CIN_DusanPenthouseIntro_Main", "box_CinematicPrep_12.PreOut", "box_LMA_Layer_Controller_5.Load", l0, l1)
  l1:Load()
end
function export:f_box_PlaySequence_v5_1_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_4()
  l0 = self.box_PlaySequence_v5_1
  l1 = self.box_OnceOnly_v3_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010_CIN_DusanPenthouseIntro.domino|@S17M010_CIN_DusanPenthouseIntro_Main|1116268405", "1116268405", "S17M010_CIN_DusanPenthouseIntro_Main", "box_PlaySequence_v5_1.Finished", "box_OnceOnly_v3_4.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_1_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_4()
  l0 = self.box_PlaySequence_v5_1
  l1 = self.box_OnceOnly_v3_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010_CIN_DusanPenthouseIntro.domino|@S17M010_CIN_DusanPenthouseIntro_Main|523904809", "523904809", "S17M010_CIN_DusanPenthouseIntro_Main", "box_PlaySequence_v5_1.Skipped", "box_OnceOnly_v3_4.In", l0, l1)
  l1:In(0)
end
function export:f_box_OnceOnly_v3_4_Out()
  local l0
  self = self._graph
  l0 = self.box_OnceOnly_v3_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010_CIN_DusanPenthouseIntro.domino|@S17M010_CIN_DusanPenthouseIntro_Main|238990178", "238990178", "S17M010_CIN_DusanPenthouseIntro_Main", "box_OnceOnly_v3_4.Out", "EndCine", l0, self)
  self:EndCine()
end
function export:f_box_PlaySequence_v5_7_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_Teleport_To_SpawnPoint_9
  l0.SpawnPoint = "9223372048413602374"
  l0.KeepBlackScreenOnExit = 1
  l0 = self.box_PlaySequence_v5_7
  l1 = self.box_Teleport_To_SpawnPoint_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010_CIN_DusanPenthouseIntro.domino|@S17M010_CIN_DusanPenthouseIntro_Main|101184070", "101184070", "S17M010_CIN_DusanPenthouseIntro_Main", "box_PlaySequence_v5_7.Finished", "box_Teleport_To_SpawnPoint_9.In", l0, l1)
  l1:In()
end
function export:f_box_PlaySequence_v5_7_SPOut__Text_01_()
  local l0, l1
  self = self._graph
  l0 = self.box_FreeFormTextController_2
  l0.FreeFormText = "FreeFormTextDB.9223372069363743740"
  l0 = self.box_PlaySequence_v5_7
  l1 = self.box_FreeFormTextController_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010_CIN_DusanPenthouseIntro.domino|@S17M010_CIN_DusanPenthouseIntro_Main|1808571827", "1808571827", "S17M010_CIN_DusanPenthouseIntro_Main", "box_PlaySequence_v5_7.SPOut", "box_FreeFormTextController_2.Open", l0, l1)
  l1:Open()
end
function export:f_box_Lanes_Restrictions_Control_10_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_7
  l0.SceneEntity = "9223372052595526396"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S17/S17M010_SCR_IntroDusan/s17m010_scr_introdusan.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010_CIN_DusanPenthouseIntro.domino|@S17M010_CIN_DusanPenthouseIntro_Main|234465445", "234465445", "S17M010_CIN_DusanPenthouseIntro_Main", "box_Lanes_Restrictions_Control_10.Out", "box_PlaySequence_v5_7.Start", clone, l0)
  l0:Start()
end
function export:OnEnter_box_OnceOnly_v3_4()
end
function export:EndCine()
end
_compilerVersion = 4
