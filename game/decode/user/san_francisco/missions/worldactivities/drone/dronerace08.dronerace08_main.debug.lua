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
  cbox:RegisterBox("domino/Library/singleplayer/Racing/Racing_Helpers.RaceWithCinematic.debug.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "DroneRace08_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace08.domino|@DroneRace08_Main"
  self.PlayerEntity = nil
  self.Hour = 0
  self.SongsList = {}
  self.SongIndex = 0
  self.SongCount = 0
  self.box_MultipleOR_23 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_23
  l0._graph = self
  l0._name = "box_MultipleOR_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace08.domino|@DroneRace08_Main|67154938"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_23_Out
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace08.domino|@DroneRace08_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_TriggerMonitor_v2_4 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_4
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace08.domino|@DroneRace08_Main|472205779"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MissionCheckpointReach_17 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_17
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace08.domino|@DroneRace08_Main|519403366"
  l0.Out = self.f_box_MissionCheckpointReach_17_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MissionController_v4_5 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_5
  l0._graph = self
  l0._name = "box_MissionController_v4_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace08.domino|@DroneRace08_Main|672797759"
  self.box_RaceWithCinematic_3 = cbox:CreateBox("domino/Library/singleplayer/Racing/Racing_Helpers.RaceWithCinematic.debug.lua")
  l0 = self.box_RaceWithCinematic_3
  l0._graph = self
  l0._name = "box_RaceWithCinematic_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace08.domino|@DroneRace08_Main|750381895"
  l0.OnRaceStarted = self.f_box_RaceWithCinematic_3_OnRaceStarted
  l0.OnRaceStopped = self.f_box_RaceWithCinematic_3_OnRaceStopped
  self.box_MissionLayer_v2_13 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_13
  l0._graph = self
  l0._name = "box_MissionLayer_v2_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace08.domino|@DroneRace08_Main|1667248409"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_13_Unloaded
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
  self:OnEnter_box_MultipleOR_23()
  l0 = self.box_MultipleOR_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace08.domino|@DroneRace08_Main|1648434605", "1648434605", "DroneRace08_Main", "CheckPoint_0", "box_MultipleOR_23.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_23()
  l0 = self.box_MultipleOR_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace08.domino|@DroneRace08_Main|1863266694", "1863266694", "DroneRace08_Main", "In", "box_MultipleOR_23.Input", self, l0)
  l0:Input(0)
end
function export:f_box_MultipleOR_23_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "DroneRace_08_Main"
  l0 = self.box_MultipleOR_23
  l1 = self.box_MissionLayer_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace08.domino|@DroneRace08_Main|222133977", "222133977", "DroneRace08_Main", "box_MultipleOR_23.Out", "box_MissionLayer_v2_2.Load", l0, l1)
  l1:Load()
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace08.domino|@DroneRace08_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MissionLayer_v2_2
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace08.domino|@DroneRace08_Main|1050317587", "1050317587", "DroneRace08_Main", "box_MissionLayer_v2_2.Loaded", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_MissionCheckpointReach_17_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_RaceWithCinematic_3
  l0.Config = "RaceDbConfig.9223372056231769800"
  l0.CinematicSceneEntity = "9223372059711210765"
  l0.CinematicSequenceFile = "sequences/DroneRaces/dronerace08.seq"
  l0 = self.box_MissionCheckpointReach_17
  l1 = self.box_RaceWithCinematic_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace08.domino|@DroneRace08_Main|620361332", "620361332", "DroneRace08_Main", "box_MissionCheckpointReach_17.Out", "box_RaceWithCinematic_3.StartRace", l0, l1)
  l1:StartRace()
end
function export:f_box_Ordered_Output_8_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_4()
  l0 = self.box_TriggerMonitor_v2_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace08.domino|@DroneRace08_Main|1139848684", "1139848684", "DroneRace08_Main", "box_Ordered_Output_8.Out", "box_TriggerMonitor_v2_4.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_8_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionLayer_v2_13
  l0.LayerName = "DroneRace_08_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace08.domino|@DroneRace08_Main|1705797808", "1705797808", "DroneRace08_Main", "box_Ordered_Output_8.Out", "box_MissionLayer_v2_13.Unload", clone, l0)
  l0:Unload()
end
function export:f_box_RaceWithCinematic_3_OnRaceStarted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_4()
  l0 = self.box_RaceWithCinematic_3
  l1 = self.box_TriggerMonitor_v2_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace08.domino|@DroneRace08_Main|1183452535", "1183452535", "DroneRace08_Main", "box_RaceWithCinematic_3.OnRaceStarted", "box_TriggerMonitor_v2_4.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_RaceWithCinematic_3_OnRaceStopped()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace08.domino|@DroneRace08_Main|563585003"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_8_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_8_Out_1
  l0 = self.box_RaceWithCinematic_3
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace08.domino|@DroneRace08_Main|233802039", "233802039", "DroneRace08_Main", "box_RaceWithCinematic_3.OnRaceStopped", "box_Ordered_Output_8.In", l0, l1)
  l1:In()
end
function export:f_box_Get_Player_ID_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_17
  l0.Checkpoint = "CheckPoint_0"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace08.domino|@DroneRace08_Main|589817049", "589817049", "DroneRace08_Main", "box_Get_Player_ID_1.Out", "box_MissionCheckpointReach_17.In", clone, l0)
  l0:In()
end
function export:f_box_MissionLayer_v2_13_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_13
  l1 = self.box_MissionController_v4_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace08.domino|@DroneRace08_Main|176296564", "176296564", "DroneRace08_Main", "box_MissionLayer_v2_13.Unloaded", "box_MissionController_v4_5.Succeed", l0, l1)
  l1:Succeed()
end
function export:OnEnter_box_MultipleOR_23()
end
function export:OnEnter_box_TriggerMonitor_v2_4()
  local l0
  l0 = self.box_TriggerMonitor_v2_4
  l0.Trigger = "9223372066760217050"
end
_compilerVersion = 4
