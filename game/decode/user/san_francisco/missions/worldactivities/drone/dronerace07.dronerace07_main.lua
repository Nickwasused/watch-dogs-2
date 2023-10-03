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
  self.SongIndex = 0
  self.SongCount = 0
  self.Hour = 0
  self.SongsList = {}
  self.IsReplay = 0
  self[9] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[9]
  l0._graph = self
  l0.Enabled = self.f_9_Enabled
  l0.Disabled = self.f_9_Disabled
  l0.Enter = DummyFunction
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[2] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Loaded = self.f_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[14] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[14]
  l0._graph = self
  l0.Out = self.f_14_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[6] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[6]
  l0._graph = self
  l0.Enabled = self.f_6_Enabled
  l0.Disabled = self.f_6_Disabled
  l0.Enter = DummyFunction
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[12] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[12]
  l0._graph = self
  l0.Enabled = self.f_12_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[10] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[10]
  l0._graph = self
  self[11] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[11]
  l0._graph = self
  l0.Enabled = self.f_11_Enabled
  l0.Disabled = self.f_11_Disabled
  l0.Enter = DummyFunction
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[23] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[23]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_23_Out
  self[8] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[8]
  l0._graph = self
  l0.Enabled = self.f_8_Enabled
  l0.Disabled = self.f_8_Disabled
  l0.Enter = DummyFunction
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[13] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[13]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[5] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[5]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_5_Unloaded
  l0.Reseted = DummyFunction
  self[4] = cbox:CreateBox("domino/Library/singleplayer/Racing/Racing_Helpers.RaceWithCinematic.lua")
  l0 = self[4]
  l0._graph = self
  l0.OnRaceStarted = DummyFunction
  l0.OnRaceStopped = self.f_4_OnRaceStopped
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
  l0 = self[23]
  l0:Input(1)
end
function export:In()
  local l0
  l0 = self[23]
  l0:Input(0)
end
function export:f_9_Disabled()
  local l0
  self = self._graph
  self:en_11()
  l0 = self[11]
  l0:Disable()
end
function export:f_9_Enabled()
  local l0
  self = self._graph
  self:en_11()
  l0 = self[11]
  l0:Enable()
end
function export:f_2_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:In()
end
function export:f_14_Out()
  local l0
  self = self._graph
  l0 = self[4]
  l0.Config = "RaceDbConfig.9223372056074361456"
  l0.CinematicSceneEntity = "9223372059711210735"
  l0.CinematicSequenceFile = "sequences/DroneRaces/dronerace07.seq"
  l0:StartRace()
end
function export:f_6_Disabled()
  local l0
  self = self._graph
  self:en_8()
  l0 = self[8]
  l0:Disable()
end
function export:f_6_Enabled()
  local l0
  self = self._graph
  self:en_8()
  l0 = self[8]
  l0:Enable()
end
function export:f_12_Enabled()
  local l0
  self = self._graph
  l0 = self[13]
  l0.Trigger = "9223372070211538034"
  l0:Enable()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_7_Out_0
  l0.Out[1] = self.f_7_Out_1
  l0:In()
end
function export:f_11_Disabled()
  local l0
  self = self._graph
  self:en_12()
  l0 = self[12]
  l0:Disable()
end
function export:f_11_Enabled()
  local l0
  self = self._graph
  self:en_12()
  l0 = self[12]
  l0:Enable()
end
function export:f_7_Out_0()
  local l0
  self = self._graph
  l0 = self[14]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_7_Out_1()
  local l0
  self = self._graph
  self:en_6()
  l0 = self[6]
  l0:Enable()
end
function export:f_23_Out()
  local l0
  self = self._graph
  l0 = self[2]
  l0.LayerName = "DroneRace_07_Main"
  l0:Load()
end
function export:f_8_Disabled()
  local l0
  self = self._graph
  self:en_9()
  l0 = self[9]
  l0:Disable()
end
function export:f_8_Enabled()
  local l0
  self = self._graph
  self:en_9()
  l0 = self[9]
  l0:Enable()
end
function export:f_3_Out_0()
  local l0
  self = self._graph
  self:en_6()
  l0 = self[6]
  l0:Disable()
end
function export:f_3_Out_1()
  local l0
  self = self._graph
  l0 = self[5]
  l0.LayerName = "DroneRace_07_Main"
  l0:Unload()
end
function export:f_5_Unloaded()
  local l0
  self = self._graph
  l0 = self[10]
  l0:Succeed()
end
function export:f_4_OnRaceStopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_3_Out_0
  l0.Out[1] = self.f_3_Out_1
  l0:In()
end
function export:en_9()
  local l0
  l0 = self[9]
  l0.Trigger = "9223372070211538028"
end
function export:en_6()
  local l0
  l0 = self[6]
  l0.Trigger = "9223372066760217279"
end
function export:en_12()
  local l0
  l0 = self[12]
  l0.Trigger = "9223372070211538032"
end
function export:en_11()
  local l0
  l0 = self[11]
  l0.Trigger = "9223372070211538030"
end
function export:en_8()
  local l0
  l0 = self[8]
  l0.Trigger = "9223372069127225967"
end
_compilerVersion = 4
