export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/Library/singleplayer/Racing/Racing_Helpers.RaceWithCinematic.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self[1] = cbox:CreateBox("domino/Library/singleplayer/Racing/Racing_Helpers.RaceWithCinematic.lua")
  l0 = self[1]
  l0._graph = self
  l0.OnRaceStarted = DummyFunction
  l0.OnRaceStopped = self.f_1_OnRaceStopped
  self[3] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[3]
  l0._graph = self
  self[7] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[7]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_7_Out
  self[2] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Loaded = self.f_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[10] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[10]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_10_Unloaded
  l0.Reseted = DummyFunction
  self[5] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[5]
  l0._graph = self
  l0.Out = self.f_5_Out
  l0.AllCheckpointsDisabled = DummyFunction
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
  l0 = self[7]
  l0:Input(1)
end
function export:In()
  local l0
  l0 = self[7]
  l0:Input(0)
end
function export:f_1_OnRaceStopped()
  local l0
  self = self._graph
  l0 = self[10]
  l0.LayerName = "StreetRace01_Main"
  l0:Unload()
end
function export:f_7_Out()
  local l0
  self = self._graph
  l0 = self[2]
  l0.LayerName = "StreetRace01_Main"
  l0:Load()
end
function export:f_2_Loaded()
  local l0
  self = self._graph
  l0 = self[5]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_10_Unloaded()
  local l0
  self = self._graph
  l0 = self[3]
  l0:Succeed()
end
function export:f_5_Out()
  local l0
  self = self._graph
  l0 = self[1]
  l0.Config = "RaceDbConfig.9223372046908759017"
  l0.CinematicSceneEntity = "9223372059218806925"
  l0.CinematicSequenceFile = "sequences/StreetRace/streetrace01.seq"
  l0:StartRace()
end
_compilerVersion = 4
