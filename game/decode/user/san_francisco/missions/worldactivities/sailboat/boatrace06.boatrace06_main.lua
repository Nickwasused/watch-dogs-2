export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/Library/singleplayer/Racing/Racing_Helpers.RaceWithCinematic.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.LayerMain = "YachtRace06_Main"
  self.gpsPathsList = {}
  self.triggersList = {}
  self.index = 0
  self.tempData = nil
  self.result = 0
  self.boat01 = nil
  self.tempData2 = nil
  self.IsReplay = 0
  self[3] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[3]
  l0._graph = self
  self[1] = cbox:CreateBox("domino/Library/singleplayer/Racing/Racing_Helpers.RaceWithCinematic.lua")
  l0 = self[1]
  l0._graph = self
  l0.OnRaceStarted = DummyFunction
  l0.OnRaceStopped = self.f_1_OnRaceStopped
  self[4] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[4]
  l0._graph = self
  l0.Activated = self.f_4_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[9] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[9]
  l0._graph = self
  l0.Loaded = self.f_9_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[14] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[14]
  l0._graph = self
  l0.Activated = self.f_14_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[7] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[7]
  l0._graph = self
  l0.Out = self.f_7_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[8] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[8]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_8_Out
  self[5] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[5]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_5_Unloaded
  l0.Reseted = DummyFunction
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:CheckPoint_0()
  local l0
  l0 = self[8]
  l0:Input(1)
end
function export:In()
  local l0
  l0 = self[8]
  l0:Input(0)
end
function export:f_1_OnRaceStopped()
  local l0
  self = self._graph
  l0 = self[5]
  l0.LayerName = self.LayerMain
  l0:Unload()
end
function export:f_6_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[7]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_4_Activated()
  local l0
  self = self._graph
  l0 = self[14]
  l0.CLO = "9223372058476756821"
  l0.SpawnOutsideLoadingRing = 1
  l0:Activate()
end
function export:f_9_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_6_Out
  l0:In()
end
function export:f_14_Activated()
  local l0
  self = self._graph
  l0 = self[1]
  l0.Config = "RaceDbConfig.9223372056678001664"
  l0.CinematicSceneEntity = "9223372059756423225"
  l0.CinematicSequenceFile = "sequences/YachtRaces/yachtrace06.seq"
  l0:StartRace()
end
function export:f_7_Out()
  local l0
  self = self._graph
  l0 = self[4]
  l0.CLO = "9223372058476756822"
  l0.SpawnOutsideLoadingRing = 1
  l0:Activate()
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = self[9]
  l0.LayerName = self.LayerMain
  l0:Load()
end
function export:f_5_Unloaded()
  local l0
  self = self._graph
  l0 = self[3]
  l0:Succeed()
end
_compilerVersion = 4
