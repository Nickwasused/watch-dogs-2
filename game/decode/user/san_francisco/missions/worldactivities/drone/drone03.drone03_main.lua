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
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/Library/singleplayer/Racing/Racing_Helpers.RaceWithCinematic.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.Hour = 3
  self.SongsList = {}
  self.SongCount = 0
  self.SongIndex = 0
  self.IsReplay = 0
  self[13] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[13]
  l0._graph = self
  l0.Enabled = self.f_13_Enabled
  l0.Disabled = self.f_13_Disabled
  l0.Enter = DummyFunction
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[4] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[4]
  l0._graph = self
  self[7] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[7]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_7_Unloaded
  l0.Reseted = DummyFunction
  self[15] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[15]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[3] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[3]
  l0._graph = self
  l0.Out = self.f_3_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[2] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[12] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[12]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_12_Out
  self[10] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[10]
  l0._graph = self
  l0.Enabled = self.f_10_Enabled
  l0.Disabled = self.f_10_Disabled
  l0.Enter = DummyFunction
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[11] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[11]
  l0._graph = self
  l0.Loaded = self.f_11_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[8] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[8]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[14] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[14]
  l0._graph = self
  l0.Enabled = self.f_14_Enabled
  l0.Disabled = self.f_14_Disabled
  l0.Enter = DummyFunction
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[1] = cbox:CreateBox("domino/Library/singleplayer/Racing/Racing_Helpers.RaceWithCinematic.lua")
  l0 = self[1]
  l0._graph = self
  l0.OnRaceStarted = self.f_1_OnRaceStarted
  l0.OnRaceStopped = self.f_1_OnRaceStopped
  self[9] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[9]
  l0._graph = self
  l0.Enabled = self.f_9_Enabled
  l0.Disabled = self.f_9_Disabled
  l0.Enter = DummyFunction
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
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
function export:f_13_Disabled()
  local l0
  self = self._graph
  self:en_14()
  l0 = self[14]
  l0:Disable()
end
function export:f_13_Enabled()
  local l0
  self = self._graph
  self:en_14()
  l0 = self[14]
  l0:Enable()
end
function export:f_18_Out_0()
  local l0
  self = self._graph
  self:en_13()
  l0 = self[13]
  l0:Disable()
end
function export:f_18_Out_1()
  local l0
  self = self._graph
  self:en_2()
  l0 = self[2]
  l0:Disable()
end
function export:f_16_Out_0()
  local l0
  self = self._graph
  self:en_10()
  l0 = self[10]
  l0:Enable()
end
function export:f_16_Out_1()
  local l0
  self = self._graph
  self:en_8()
  l0 = self[8]
  l0:Enable()
end
function export:f_6_Out_0()
  local l0
  self = self._graph
  l0 = self[7]
  l0.LayerName = "DroneRace_03_Main"
  l0:Unload()
end
function export:f_6_Out_1()
  local l0
  self = self._graph
  self:en_9()
  l0 = self[9]
  l0:Disable()
end
function export:f_20_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[3]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_7_Unloaded()
  local l0
  self = self._graph
  l0 = self[4]
  l0:Succeed()
end
function export:f_3_Out()
  local l0
  self = self._graph
  l0 = self[1]
  l0.Config = "RaceDbConfig.9223372055341983475"
  l0.CinematicSceneEntity = "9223372060032140121"
  l0.CinematicSequenceFile = "sequences/DroneRaces/dronerace03.seq"
  l0:StartRace()
end
function export:f_12_Out()
  local l0
  self = self._graph
  l0 = self[11]
  l0.LayerName = "DroneRace_03_Main"
  l0:Load()
end
function export:f_10_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_18_Out_0
  l0.Out[1] = self.f_18_Out_1
  l0:In()
end
function export:f_10_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_5_Out_0
  l0.Out[1] = self.f_5_Out_1
  l0:In()
end
function export:f_11_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_20_Out
  l0:In()
end
function export:f_17_Out_0()
  local l0
  self = self._graph
  self:en_10()
  l0 = self[10]
  l0:Disable()
end
function export:f_17_Out_1()
  local l0
  self = self._graph
  self:en_8()
  l0 = self[8]
  l0:Disable()
end
function export:f_5_Out_0()
  local l0
  self = self._graph
  self:en_13()
  l0 = self[13]
  l0:Enable()
end
function export:f_5_Out_1()
  local l0
  self = self._graph
  self:en_2()
  l0 = self[2]
  l0:Enable()
end
function export:f_14_Disabled()
  local l0
  self = self._graph
  self:en_15()
  l0 = self[15]
  l0:Disable()
end
function export:f_14_Enabled()
  local l0
  self = self._graph
  self:en_15()
  l0 = self[15]
  l0:Enable()
end
function export:f_1_OnRaceStarted()
  local l0
  self = self._graph
  self:en_9()
  l0 = self[9]
  l0:Enable()
end
function export:f_1_OnRaceStopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_6_Out_0
  l0.Out[1] = self.f_6_Out_1
  l0:In()
end
function export:f_9_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_17_Out_0
  l0.Out[1] = self.f_17_Out_1
  l0:In()
end
function export:f_9_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_16_Out_0
  l0.Out[1] = self.f_16_Out_1
  l0:In()
end
function export:en_13()
  local l0
  l0 = self[13]
  l0.Trigger = "9223372067629579544"
end
function export:en_15()
  local l0
  l0 = self[15]
  l0.Trigger = "9223372067629403018"
end
function export:en_2()
  local l0
  l0 = self[2]
  l0.Trigger = "9223372067629579546"
end
function export:en_10()
  local l0
  l0 = self[10]
  l0.Trigger = "9223372066760217328"
end
function export:en_8()
  local l0
  l0 = self[8]
  l0.Trigger = "9223372067629578382"
end
function export:en_14()
  local l0
  l0 = self[14]
  l0.Trigger = "9223372067629403016"
end
function export:en_9()
  local l0
  l0 = self[9]
  l0.Trigger = "9223372063506518776"
end
_compilerVersion = 4
