export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/FreeFormTextController.lua")
  cbox:RegisterBox("domino/System/LaneRestrictionsControl.lua")
  cbox:RegisterBox("domino/System/LMALayerController.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/TeleportToSpawnPoint.lua")
end
function export:Init(cbox)
  local l0
  self.EndCine = DummyFunction
  self.PlayerEntity = nil
  self[8] = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self[8]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_8_TeleportDone
  self[9] = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self[9]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_9_TeleportDone
  self[5] = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self[5]
  l0._graph = self
  l0.Loaded = self.f_5_Loaded
  l0.Unloaded = DummyFunction
  self[12] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[12]
  l0._graph = self
  l0.PreOut = self.f_12_PreOut
  l0.PostOut = DummyFunction
  self[1] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[1]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_1_Skipped
  l0.Finished = self.f_1_Finished
  self[4] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[4]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_4_Out
  l0.ResetOut = DummyFunction
  self[7] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[7]
  l0._graph = self
  l0._DynamicAnchors = {
    SPOut = {"Text_01"}
  }
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = self.f_7_Finished
  l0.SPOut.Text_01 = self.f_7_SPOut__Text_01_
  self[2] = cbox:CreateBox("domino/System/FreeFormTextController.lua")
  l0 = self[2]
  l0._graph = self
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
  l0 = self[12]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:f_8_TeleportDone()
  local l0
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
  l0.Out = self.f_10_Out
  l0:In()
end
function export:f_9_TeleportDone()
  local l0
  self = self._graph
  l0 = self[1]
  l0.SceneEntity = "9223372047779435996"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S17/S17_DusanPenthouseIntro_PRE/s17_dusanpenthouseintro_pre.seq"
  l0:Start()
end
function export:f_5_Loaded()
  local l0
  self = self._graph
  l0 = self[8]
  l0.SpawnPoint = "9223372052595526398"
  l0.KeepBlackScreenOnExit = 1
  l0:In()
end
function export:f_12_PreOut()
  local l0
  self = self._graph
  l0 = self[5]
  l0.LMALayerName = "SF_08_DusanPenthouse_LMA"
  l0:Load()
end
function export:f_1_Finished()
  local l0
  self = self._graph
  l0 = self[4]
  l0:In(1)
end
function export:f_1_Skipped()
  local l0
  self = self._graph
  l0 = self[4]
  l0:In(0)
end
function export:f_4_Out()
  self = self._graph
  self:EndCine()
end
function export:f_7_Finished()
  local l0
  self = self._graph
  l0 = self[9]
  l0.SpawnPoint = "9223372048413602374"
  l0.KeepBlackScreenOnExit = 1
  l0:In()
end
function export:f_7_SPOut__Text_01_()
  local l0
  self = self._graph
  l0 = self[2]
  l0.FreeFormText = "FreeFormTextDB.9223372069363743740"
  l0:Open()
end
function export:f_10_Out()
  local l0
  self = self._graph
  l0 = self[7]
  l0.SceneEntity = "9223372052595526396"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S17/S17M010_SCR_IntroDusan/s17m010_scr_introdusan.seq"
  l0:Start()
end
function export:EndCine()
end
_compilerVersion = 4
