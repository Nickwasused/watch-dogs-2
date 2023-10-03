export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AIAgentZoneController.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/Library/singleplayer/Racing/Racing_Helpers.RaceBasic.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.LayerMain = "S20M040_Main"
  self.PlayerRank = 2
  self.LayerExtra = "StreetRace04_Main"
  self.RaceSpawnPoint = "9223372048124668567"
  self[22] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[22]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_22_Unloaded
  l0.Reseted = DummyFunction
  self[9] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[9]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_9_Out
  self[11] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[11]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_11_Unloaded
  l0.Reseted = DummyFunction
  self[6] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[6]
  l0._graph = self
  self[5] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[5]
  l0._graph = self
  l0.Loaded = self.f_5_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[10] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[10]
  l0._graph = self
  l0.Out = self.f_10_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[3] = cbox:CreateBox("domino/Library/singleplayer/Racing/Racing_Helpers.RaceBasic.lua")
  l0 = self[3]
  l0._graph = self
  l0.OnRaceStarted = DummyFunction
  l0.OnRaceStopped = self.f_3_OnRaceStopped
  self[1] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[1]
  l0._graph = self
  l0.Loaded = self.f_1_Loaded
  l0.Unloaded = DummyFunction
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
  l0 = self[9]
  l0:Input(1)
end
function export:In()
  local l0
  l0 = self[9]
  l0:Input(0)
end
function export:f_7_Out()
  local l0
  self = self._graph
  l0 = self[10]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_22_Unloaded()
  local l0
  self = self._graph
  l0 = self[11]
  l0.LayerName = self.LayerExtra
  l0:Unload()
end
function export:f_9_Out()
  local l0
  self = self._graph
  l0 = self[1]
  l0.LayerName = self.LayerExtra
  l0:Load()
end
function export:f_11_Unloaded()
  local l0
  self = self._graph
  l0 = self[6]
  l0:Succeed()
end
function export:f_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372047518601075"
  l0.NPC = nil
  l0._graph = self
  l0.Out = self.f_7_Out
  l0:Enable()
end
function export:f_5_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_2_Out
  l0:In()
end
function export:f_10_Out()
  local l0
  self = self._graph
  l0 = self[3]
  l0.Config = "RaceDbConfig.9223372048334619788"
  l0:StartRace()
end
function export:f_3_OnRaceStopped()
  local l0
  self = self._graph
  l0 = self[22]
  l0.LayerName = self.LayerMain
  l0:Unload()
end
function export:f_1_Loaded()
  local l0
  self = self._graph
  l0 = self[5]
  l0.LayerName = self.LayerMain
  l0:Load()
end
_compilerVersion = 4
