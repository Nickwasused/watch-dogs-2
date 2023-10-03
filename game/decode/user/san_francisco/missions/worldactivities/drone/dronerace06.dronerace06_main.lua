export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
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
  self.SongCount = 0
  self.Hour = 0
  self.SongIndex = 0
  self.SongsList = {}
  self.IsReplay = 0
  self[4] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[4]
  l0._graph = self
  l0.Out = self.f_4_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[2] = cbox:CreateBox("domino/Library/singleplayer/Racing/Racing_Helpers.RaceWithCinematic.lua")
  l0 = self[2]
  l0._graph = self
  l0.OnRaceStarted = DummyFunction
  l0.OnRaceStopped = self.f_2_OnRaceStopped
  self[6] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[6]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_6_Unloaded
  l0.Reseted = DummyFunction
  self[1] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[1]
  l0._graph = self
  self[11] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[11]
  l0._graph = self
  l0.Loaded = self.f_11_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[12] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[12]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_12_Out
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
  l0 = self[12]
  l0:Input(1)
end
function export:In()
  local l0
  l0 = self[12]
  l0:Input(0)
end
function export:f_4_Out()
  local l0
  self = self._graph
  l0 = self[2]
  l0.Config = "RaceDbConfig.9223372055927653387"
  l0.CinematicSceneEntity = "9223372060032140033"
  l0.CinematicSequenceFile = "sequences/DroneRaces/dronerace06.seq"
  l0:StartRace()
end
function export:f_2_OnRaceStopped()
  local l0
  self = self._graph
  l0 = self[6]
  l0.LayerName = "DroneRace_06_Main"
  l0:Unload()
end
function export:f_20_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[4]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_6_Unloaded()
  local l0
  self = self._graph
  l0 = self[1]
  l0:Succeed()
end
function export:f_11_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_20_Out
  l0:In()
end
function export:f_12_Out()
  local l0
  self = self._graph
  l0 = self[11]
  l0.LayerName = "DroneRace_06_Main"
  l0:Load()
end
_compilerVersion = 4
