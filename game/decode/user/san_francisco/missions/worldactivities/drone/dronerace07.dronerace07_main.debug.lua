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
  self._name = "DroneRace07_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace07.domino|@DroneRace07_Main"
  self.PlayerEntity = nil
  self.SongIndex = 0
  self.SongCount = 0
  self.Hour = 0
  self.SongsList = {}
  self.IsReplay = 0
  self.box_TriggerMonitor_v2_9 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_9
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace07.domino|@DroneRace07_Main|127909535"
  l0.Enabled = self.f_box_TriggerMonitor_v2_9_Enabled
  l0.Disabled = self.f_box_TriggerMonitor_v2_9_Disabled
  l0.Enter = DummyFunction
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace07.domino|@DroneRace07_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionCheckpointReach_14 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_14
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace07.domino|@DroneRace07_Main|226283688"
  l0.Out = self.f_box_MissionCheckpointReach_14_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_TriggerMonitor_v2_6 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_6
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace07.domino|@DroneRace07_Main|242786732"
  l0.Enabled = self.f_box_TriggerMonitor_v2_6_Enabled
  l0.Disabled = self.f_box_TriggerMonitor_v2_6_Disabled
  l0.Enter = DummyFunction
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_TriggerMonitor_v2_12 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_12
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace07.domino|@DroneRace07_Main|250932412"
  l0.Enabled = self.f_box_TriggerMonitor_v2_12_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MissionController_v4_10 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_10
  l0._graph = self
  l0._name = "box_MissionController_v4_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace07.domino|@DroneRace07_Main|551112272"
  self.box_TriggerMonitor_v2_11 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_11
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace07.domino|@DroneRace07_Main|1045857840"
  l0.Enabled = self.f_box_TriggerMonitor_v2_11_Enabled
  l0.Disabled = self.f_box_TriggerMonitor_v2_11_Disabled
  l0.Enter = DummyFunction
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MultipleOR_23 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_23
  l0._graph = self
  l0._name = "box_MultipleOR_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace07.domino|@DroneRace07_Main|1095400597"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_23_Out
  self.box_TriggerMonitor_v2_8 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_8
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace07.domino|@DroneRace07_Main|1328819790"
  l0.Enabled = self.f_box_TriggerMonitor_v2_8_Enabled
  l0.Disabled = self.f_box_TriggerMonitor_v2_8_Disabled
  l0.Enter = DummyFunction
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_TriggerMonitor_v2_13 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_13
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace07.domino|@DroneRace07_Main|1511423982"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MissionLayer_v2_5 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_5
  l0._graph = self
  l0._name = "box_MissionLayer_v2_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace07.domino|@DroneRace07_Main|1556070573"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_5_Unloaded
  l0.Reseted = DummyFunction
  self.box_RaceWithCinematic_4 = cbox:CreateBox("domino/Library/singleplayer/Racing/Racing_Helpers.RaceWithCinematic.debug.lua")
  l0 = self.box_RaceWithCinematic_4
  l0._graph = self
  l0._name = "box_RaceWithCinematic_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace07.domino|@DroneRace07_Main|1733174460"
  l0.OnRaceStarted = DummyFunction
  l0.OnRaceStopped = self.f_box_RaceWithCinematic_4_OnRaceStopped
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace07.domino|@DroneRace07_Main|1926275659", "1926275659", "DroneRace07_Main", "CheckPoint_0", "box_MultipleOR_23.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_23()
  l0 = self.box_MultipleOR_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace07.domino|@DroneRace07_Main|824674806", "824674806", "DroneRace07_Main", "In", "box_MultipleOR_23.Input", self, l0)
  l0:Input(0)
end
function export:f_box_TriggerMonitor_v2_9_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_11()
  l0 = self.box_TriggerMonitor_v2_9
  l1 = self.box_TriggerMonitor_v2_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace07.domino|@DroneRace07_Main|286686010", "286686010", "DroneRace07_Main", "box_TriggerMonitor_v2_9.Disabled", "box_TriggerMonitor_v2_11.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_TriggerMonitor_v2_9_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_11()
  l0 = self.box_TriggerMonitor_v2_9
  l1 = self.box_TriggerMonitor_v2_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace07.domino|@DroneRace07_Main|625261925", "625261925", "DroneRace07_Main", "box_TriggerMonitor_v2_9.Enabled", "box_TriggerMonitor_v2_11.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace07.domino|@DroneRace07_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MissionLayer_v2_2
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace07.domino|@DroneRace07_Main|1153310733", "1153310733", "DroneRace07_Main", "box_MissionLayer_v2_2.Loaded", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_MissionCheckpointReach_14_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_RaceWithCinematic_4
  l0.Config = "RaceDbConfig.9223372056074361456"
  l0.CinematicSceneEntity = "9223372059711210735"
  l0.CinematicSequenceFile = "sequences/DroneRaces/dronerace07.seq"
  l0 = self.box_MissionCheckpointReach_14
  l1 = self.box_RaceWithCinematic_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace07.domino|@DroneRace07_Main|109618066", "109618066", "DroneRace07_Main", "box_MissionCheckpointReach_14.Out", "box_RaceWithCinematic_4.StartRace", l0, l1)
  l1:StartRace()
end
function export:f_box_TriggerMonitor_v2_6_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_8()
  l0 = self.box_TriggerMonitor_v2_6
  l1 = self.box_TriggerMonitor_v2_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace07.domino|@DroneRace07_Main|451569354", "451569354", "DroneRace07_Main", "box_TriggerMonitor_v2_6.Disabled", "box_TriggerMonitor_v2_8.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_TriggerMonitor_v2_6_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_8()
  l0 = self.box_TriggerMonitor_v2_6
  l1 = self.box_TriggerMonitor_v2_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace07.domino|@DroneRace07_Main|1494460232", "1494460232", "DroneRace07_Main", "box_TriggerMonitor_v2_6.Enabled", "box_TriggerMonitor_v2_8.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TriggerMonitor_v2_12_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_13
  l0.Trigger = "9223372070211538034"
  l0 = self.box_TriggerMonitor_v2_12
  l1 = self.box_TriggerMonitor_v2_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace07.domino|@DroneRace07_Main|1361578732", "1361578732", "DroneRace07_Main", "box_TriggerMonitor_v2_12.Enabled", "box_TriggerMonitor_v2_13.Enable", l0, l1)
  l1:Enable()
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
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace07.domino|@DroneRace07_Main|1064954799"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_7_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_7_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace07.domino|@DroneRace07_Main|1875657911", "1875657911", "DroneRace07_Main", "box_Get_Player_ID_1.Out", "box_Ordered_Output_7.In", clone, l0)
  l0:In()
end
function export:f_box_TriggerMonitor_v2_11_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_12()
  l0 = self.box_TriggerMonitor_v2_11
  l1 = self.box_TriggerMonitor_v2_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace07.domino|@DroneRace07_Main|968997558", "968997558", "DroneRace07_Main", "box_TriggerMonitor_v2_11.Disabled", "box_TriggerMonitor_v2_12.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_TriggerMonitor_v2_11_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_12()
  l0 = self.box_TriggerMonitor_v2_11
  l1 = self.box_TriggerMonitor_v2_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace07.domino|@DroneRace07_Main|412206298", "412206298", "DroneRace07_Main", "box_TriggerMonitor_v2_11.Enabled", "box_TriggerMonitor_v2_12.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Ordered_Output_7_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_14
  l0.Checkpoint = "CheckPoint_0"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace07.domino|@DroneRace07_Main|713582908", "713582908", "DroneRace07_Main", "box_Ordered_Output_7.Out", "box_MissionCheckpointReach_14.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_7_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_6()
  l0 = self.box_TriggerMonitor_v2_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace07.domino|@DroneRace07_Main|2096660559", "2096660559", "DroneRace07_Main", "box_Ordered_Output_7.Out", "box_TriggerMonitor_v2_6.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MultipleOR_23_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "DroneRace_07_Main"
  l0 = self.box_MultipleOR_23
  l1 = self.box_MissionLayer_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace07.domino|@DroneRace07_Main|936216326", "936216326", "DroneRace07_Main", "box_MultipleOR_23.Out", "box_MissionLayer_v2_2.Load", l0, l1)
  l1:Load()
end
function export:f_box_TriggerMonitor_v2_8_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_9()
  l0 = self.box_TriggerMonitor_v2_8
  l1 = self.box_TriggerMonitor_v2_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace07.domino|@DroneRace07_Main|757409793", "757409793", "DroneRace07_Main", "box_TriggerMonitor_v2_8.Disabled", "box_TriggerMonitor_v2_9.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_TriggerMonitor_v2_8_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_9()
  l0 = self.box_TriggerMonitor_v2_8
  l1 = self.box_TriggerMonitor_v2_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace07.domino|@DroneRace07_Main|1877242681", "1877242681", "DroneRace07_Main", "box_TriggerMonitor_v2_8.Enabled", "box_TriggerMonitor_v2_9.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Ordered_Output_3_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_6()
  l0 = self.box_TriggerMonitor_v2_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace07.domino|@DroneRace07_Main|1834029502", "1834029502", "DroneRace07_Main", "box_Ordered_Output_3.Out", "box_TriggerMonitor_v2_6.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_3_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionLayer_v2_5
  l0.LayerName = "DroneRace_07_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace07.domino|@DroneRace07_Main|1163730205", "1163730205", "DroneRace07_Main", "box_Ordered_Output_3.Out", "box_MissionLayer_v2_5.Unload", clone, l0)
  l0:Unload()
end
function export:f_box_MissionLayer_v2_5_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_5
  l1 = self.box_MissionController_v4_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace07.domino|@DroneRace07_Main|134232554", "134232554", "DroneRace07_Main", "box_MissionLayer_v2_5.Unloaded", "box_MissionController_v4_10.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_RaceWithCinematic_4_OnRaceStopped()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace07.domino|@DroneRace07_Main|1414873465"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_3_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_3_Out_1
  l0 = self.box_RaceWithCinematic_4
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace07.domino|@DroneRace07_Main|660612423", "660612423", "DroneRace07_Main", "box_RaceWithCinematic_4.OnRaceStopped", "box_Ordered_Output_3.In", l0, l1)
  l1:In()
end
function export:OnEnter_box_TriggerMonitor_v2_9()
  local l0
  l0 = self.box_TriggerMonitor_v2_9
  l0.Trigger = "9223372070211538028"
end
function export:OnEnter_box_TriggerMonitor_v2_6()
  local l0
  l0 = self.box_TriggerMonitor_v2_6
  l0.Trigger = "9223372066760217279"
end
function export:OnEnter_box_TriggerMonitor_v2_12()
  local l0
  l0 = self.box_TriggerMonitor_v2_12
  l0.Trigger = "9223372070211538032"
end
function export:OnEnter_box_TriggerMonitor_v2_11()
  local l0
  l0 = self.box_TriggerMonitor_v2_11
  l0.Trigger = "9223372070211538030"
end
function export:OnEnter_box_MultipleOR_23()
end
function export:OnEnter_box_TriggerMonitor_v2_8()
  local l0
  l0 = self.box_TriggerMonitor_v2_8
  l0.Trigger = "9223372069127225967"
end
_compilerVersion = 4
