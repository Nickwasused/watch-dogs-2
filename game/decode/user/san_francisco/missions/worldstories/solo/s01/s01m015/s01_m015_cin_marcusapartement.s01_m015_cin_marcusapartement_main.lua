export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/FreeFormTextController.lua")
  cbox:RegisterBox("domino/System/LaneRestrictionsControl.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/PlayMusic.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:LoadResource("soundbinary/3557064792.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.Soundpoint_S01M015_OpeningScriptedMusic = "9223372066903663491"
  self[5] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[5]
  l0._graph = self
  l0.PreOut = self.f_5_PreOut
  l0.PostOut = DummyFunction
  self[3] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[3]
  l0._graph = self
  l0.PreOut = self.f_3_PreOut
  l0.PostOut = DummyFunction
  self[7] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[7]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_7_Out
  l0.ResetOut = DummyFunction
  self[2] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[2]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_2_PostOut
  self[9] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[9]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_9_Skipped
  l0.Finished = self.f_9_Finished
  self[10] = cbox:CreateBox("domino/System/FreeFormTextController.lua")
  l0 = self[10]
  l0._graph = self
  l0.OnFreeFormTextRequested = DummyFunction
  l0.OnFreeFormTextHidden = DummyFunction
  self[4] = cbox:CreateBox("domino/System/FreeFormTextController.lua")
  l0 = self[4]
  l0._graph = self
  l0.OnFreeFormTextRequested = DummyFunction
  l0.OnFreeFormTextHidden = DummyFunction
  self[8] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[8]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_8_Out
  l0.ResetOut = DummyFunction
  self[1] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[1]
  l0._graph = self
  l0._DynamicAnchors = {
    SPOut = {
      "Ubisoft Presents",
      "Production"
    }
  }
  l0.Started = self.f_1_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_1_Skipped
  l0.Finished = self.f_1_Finished
  l0.SPOut["Ubisoft Presents"] = self.f_1_SPOut__Ubisoft_Presents_
  l0.SPOut.Production = self.f_1_SPOut__Production_
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
  l0 = self[3]
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:f_5_PreOut()
  local l0
  self = self._graph
  l0 = self[8]
  l0:In(0)
end
function export:f_3_PreOut()
  local l0
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
  l0.Out = self.f_11_Out
  l0:In()
end
function export:f_7_Out()
  local l0
  self = self._graph
  l0 = self[2]
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_2_PostOut()
  self = self._graph
  self:Out()
end
function export:f_9_Finished()
  local l0
  self = self._graph
  l0 = self[7]
  l0:In(1)
end
function export:f_9_Skipped()
  local l0
  self = self._graph
  l0 = self[7]
  l0:In(0)
end
function export:f_11_Out()
  local l0
  self = self._graph
  l0 = self[1]
  l0.SceneEntity = "9223372047779512959"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S01/S01_MarcusApartment_CIN/s01_marcusapartment_cin.seq"
  l0.RemoveLoadingScreen = 1
  l0:Start()
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = self[9]
  l0.SceneEntity = "9223372060743314482"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S01/S01_M015_CIN_EstablishShotOutApartment/s01_m015_cin_establishshotoutapartment.seq"
  l0:Start()
end
function export:f_1_Finished()
  local l0
  self = self._graph
  l0 = self[8]
  l0:In(1)
end
function export:f_1_Skipped()
  local l0
  self = self._graph
  l0 = self[5]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:f_1_SPOut__Production_()
  local l0
  self = self._graph
  l0 = self[4]
  l0.FreeFormText = "FreeFormTextDB.9223372062017259313"
  l0:Open()
end
function export:f_1_SPOut__Ubisoft_Presents_()
  local l0
  self = self._graph
  l0 = self[10]
  l0.FreeFormText = "FreeFormTextDB.9223372062017259312"
  l0:Open()
end
function export:f_1_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayMusic.lua")]
  l0.SoundId = "soundbinary/3557064792.bnk"
  l0.FadeOutTime = nil
  l0.Object = "9223372066903663491"
  l0.KeepLoaded = 1
  l0.MusicType = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0:In()
end
function export:Out()
end
_compilerVersion = 4
