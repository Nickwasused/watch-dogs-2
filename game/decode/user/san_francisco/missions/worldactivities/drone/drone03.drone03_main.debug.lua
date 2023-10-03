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
  self._name = "Drone03_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\Drone03.domino|@Drone03_Main"
  self.PlayerEntity = nil
  self.Hour = 3
  self.SongsList = {}
  self.SongCount = 0
  self.SongIndex = 0
  self.IsReplay = 0
  self.box_TriggerMonitor_v2_13 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_13
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\Drone03.domino|@Drone03_Main|107462278"
  l0.Enabled = self.f_box_TriggerMonitor_v2_13_Enabled
  l0.Disabled = self.f_box_TriggerMonitor_v2_13_Disabled
  l0.Enter = DummyFunction
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MissionController_v4_4 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_4
  l0._graph = self
  l0._name = "box_MissionController_v4_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\Drone03.domino|@Drone03_Main|291065055"
  self.box_MissionLayer_v2_7 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_7
  l0._graph = self
  l0._name = "box_MissionLayer_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\Drone03.domino|@Drone03_Main|495242399"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_7_Unloaded
  l0.Reseted = DummyFunction
  self.box_TriggerMonitor_v2_15 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_15
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\Drone03.domino|@Drone03_Main|511913007"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MissionCheckpointReach_3 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_3
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\Drone03.domino|@Drone03_Main|736373361"
  l0.Out = self.f_box_MissionCheckpointReach_3_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_TriggerMonitor_v2_2 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_2
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\Drone03.domino|@Drone03_Main|895005350"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MultipleOR_12 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_12
  l0._graph = self
  l0._name = "box_MultipleOR_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\Drone03.domino|@Drone03_Main|996535138"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_12_Out
  self.box_TriggerMonitor_v2_10 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_10
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\Drone03.domino|@Drone03_Main|1035048985"
  l0.Enabled = self.f_box_TriggerMonitor_v2_10_Enabled
  l0.Disabled = self.f_box_TriggerMonitor_v2_10_Disabled
  l0.Enter = DummyFunction
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MissionLayer_v2_11 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_11
  l0._graph = self
  l0._name = "box_MissionLayer_v2_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\Drone03.domino|@Drone03_Main|1049060294"
  l0.Loaded = self.f_box_MissionLayer_v2_11_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_TriggerMonitor_v2_8 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_8
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\Drone03.domino|@Drone03_Main|1312571965"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_TriggerMonitor_v2_14 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_14
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\Drone03.domino|@Drone03_Main|1899262259"
  l0.Enabled = self.f_box_TriggerMonitor_v2_14_Enabled
  l0.Disabled = self.f_box_TriggerMonitor_v2_14_Disabled
  l0.Enter = DummyFunction
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_RaceWithCinematic_1 = cbox:CreateBox("domino/Library/singleplayer/Racing/Racing_Helpers.RaceWithCinematic.debug.lua")
  l0 = self.box_RaceWithCinematic_1
  l0._graph = self
  l0._name = "box_RaceWithCinematic_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\Drone03.domino|@Drone03_Main|1935899852"
  l0.OnRaceStarted = self.f_box_RaceWithCinematic_1_OnRaceStarted
  l0.OnRaceStopped = self.f_box_RaceWithCinematic_1_OnRaceStopped
  self.box_TriggerMonitor_v2_9 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_9
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\Drone03.domino|@Drone03_Main|2105512605"
  l0.Enabled = self.f_box_TriggerMonitor_v2_9_Enabled
  l0.Disabled = self.f_box_TriggerMonitor_v2_9_Disabled
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
  self:OnEnter_box_MultipleOR_12()
  l0 = self.box_MultipleOR_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\Drone03.domino|@Drone03_Main|914832262", "914832262", "Drone03_Main", "CheckPoint_0", "box_MultipleOR_12.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_12()
  l0 = self.box_MultipleOR_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\Drone03.domino|@Drone03_Main|709182254", "709182254", "Drone03_Main", "In", "box_MultipleOR_12.Input", self, l0)
  l0:Input(0)
end
function export:f_box_TriggerMonitor_v2_13_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_14()
  l0 = self.box_TriggerMonitor_v2_13
  l1 = self.box_TriggerMonitor_v2_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\Drone03.domino|@Drone03_Main|1541769293", "1541769293", "Drone03_Main", "box_TriggerMonitor_v2_13.Disabled", "box_TriggerMonitor_v2_14.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_TriggerMonitor_v2_13_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_14()
  l0 = self.box_TriggerMonitor_v2_13
  l1 = self.box_TriggerMonitor_v2_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\Drone03.domino|@Drone03_Main|428820449", "428820449", "Drone03_Main", "box_TriggerMonitor_v2_13.Enabled", "box_TriggerMonitor_v2_14.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Ordered_Output_18_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_13()
  l0 = self.box_TriggerMonitor_v2_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\Drone03.domino|@Drone03_Main|1964247669", "1964247669", "Drone03_Main", "box_Ordered_Output_18.Out", "box_TriggerMonitor_v2_13.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_18_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_2()
  l0 = self.box_TriggerMonitor_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\Drone03.domino|@Drone03_Main|1302005282", "1302005282", "Drone03_Main", "box_Ordered_Output_18.Out", "box_TriggerMonitor_v2_2.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_16_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_10()
  l0 = self.box_TriggerMonitor_v2_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\Drone03.domino|@Drone03_Main|2037429111", "2037429111", "Drone03_Main", "box_Ordered_Output_16.Out", "box_TriggerMonitor_v2_10.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_16_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_8()
  l0 = self.box_TriggerMonitor_v2_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\Drone03.domino|@Drone03_Main|1170407596", "1170407596", "Drone03_Main", "box_Ordered_Output_16.Out", "box_TriggerMonitor_v2_8.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_6_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionLayer_v2_7
  l0.LayerName = "DroneRace_03_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\Drone03.domino|@Drone03_Main|749390646", "749390646", "Drone03_Main", "box_Ordered_Output_6.Out", "box_MissionLayer_v2_7.Unload", clone, l0)
  l0:Unload()
end
function export:f_box_Ordered_Output_6_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_9()
  l0 = self.box_TriggerMonitor_v2_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\Drone03.domino|@Drone03_Main|1212728454", "1212728454", "Drone03_Main", "box_Ordered_Output_6.Out", "box_TriggerMonitor_v2_9.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Get_Player_ID_20_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_3
  l0.Checkpoint = "CheckPoint_0"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\Drone03.domino|@Drone03_Main|1771109328", "1771109328", "Drone03_Main", "box_Get_Player_ID_20.Out", "box_MissionCheckpointReach_3.In", clone, l0)
  l0:In()
end
function export:f_box_MissionLayer_v2_7_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_7
  l1 = self.box_MissionController_v4_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\Drone03.domino|@Drone03_Main|623235332", "623235332", "Drone03_Main", "box_MissionLayer_v2_7.Unloaded", "box_MissionController_v4_4.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_MissionCheckpointReach_3_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_RaceWithCinematic_1
  l0.Config = "RaceDbConfig.9223372055341983475"
  l0.CinematicSceneEntity = "9223372060032140121"
  l0.CinematicSequenceFile = "sequences/DroneRaces/dronerace03.seq"
  l0 = self.box_MissionCheckpointReach_3
  l1 = self.box_RaceWithCinematic_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\Drone03.domino|@Drone03_Main|587831592", "587831592", "Drone03_Main", "box_MissionCheckpointReach_3.Out", "box_RaceWithCinematic_1.StartRace", l0, l1)
  l1:StartRace()
end
function export:f_box_MultipleOR_12_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_11
  l0.LayerName = "DroneRace_03_Main"
  l0 = self.box_MultipleOR_12
  l1 = self.box_MissionLayer_v2_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\Drone03.domino|@Drone03_Main|1563557278", "1563557278", "Drone03_Main", "box_MultipleOR_12.Out", "box_MissionLayer_v2_11.Load", l0, l1)
  l1:Load()
end
function export:f_box_TriggerMonitor_v2_10_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\Drone03.domino|@Drone03_Main|168135913"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_18_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_18_Out_1
  l0 = self.box_TriggerMonitor_v2_10
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\Drone03.domino|@Drone03_Main|168881871", "168881871", "Drone03_Main", "box_TriggerMonitor_v2_10.Disabled", "box_Ordered_Output_18.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_10_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\Drone03.domino|@Drone03_Main|1428729208"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_5_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_5_Out_1
  l0 = self.box_TriggerMonitor_v2_10
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\Drone03.domino|@Drone03_Main|190153260", "190153260", "Drone03_Main", "box_TriggerMonitor_v2_10.Enabled", "box_Ordered_Output_5.In", l0, l1)
  l1:In()
end
function export:f_box_MissionLayer_v2_11_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\Drone03.domino|@Drone03_Main|460392445"
  l0.Out = self.f_box_Get_Player_ID_20_Out
  l0 = self.box_MissionLayer_v2_11
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\Drone03.domino|@Drone03_Main|1856435690", "1856435690", "Drone03_Main", "box_MissionLayer_v2_11.Loaded", "box_Get_Player_ID_20.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_17_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_10()
  l0 = self.box_TriggerMonitor_v2_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\Drone03.domino|@Drone03_Main|889232491", "889232491", "Drone03_Main", "box_Ordered_Output_17.Out", "box_TriggerMonitor_v2_10.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_17_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_8()
  l0 = self.box_TriggerMonitor_v2_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\Drone03.domino|@Drone03_Main|1684496337", "1684496337", "Drone03_Main", "box_Ordered_Output_17.Out", "box_TriggerMonitor_v2_8.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_5_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_13()
  l0 = self.box_TriggerMonitor_v2_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\Drone03.domino|@Drone03_Main|1077357317", "1077357317", "Drone03_Main", "box_Ordered_Output_5.Out", "box_TriggerMonitor_v2_13.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_5_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_2()
  l0 = self.box_TriggerMonitor_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\Drone03.domino|@Drone03_Main|1999053017", "1999053017", "Drone03_Main", "box_Ordered_Output_5.Out", "box_TriggerMonitor_v2_2.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_TriggerMonitor_v2_14_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_15()
  l0 = self.box_TriggerMonitor_v2_14
  l1 = self.box_TriggerMonitor_v2_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\Drone03.domino|@Drone03_Main|2098560553", "2098560553", "Drone03_Main", "box_TriggerMonitor_v2_14.Disabled", "box_TriggerMonitor_v2_15.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_TriggerMonitor_v2_14_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_15()
  l0 = self.box_TriggerMonitor_v2_14
  l1 = self.box_TriggerMonitor_v2_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\Drone03.domino|@Drone03_Main|1065144377", "1065144377", "Drone03_Main", "box_TriggerMonitor_v2_14.Enabled", "box_TriggerMonitor_v2_15.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_RaceWithCinematic_1_OnRaceStarted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_9()
  l0 = self.box_RaceWithCinematic_1
  l1 = self.box_TriggerMonitor_v2_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\Drone03.domino|@Drone03_Main|361188999", "361188999", "Drone03_Main", "box_RaceWithCinematic_1.OnRaceStarted", "box_TriggerMonitor_v2_9.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_RaceWithCinematic_1_OnRaceStopped()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\Drone03.domino|@Drone03_Main|427033693"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_6_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_6_Out_1
  l0 = self.box_RaceWithCinematic_1
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\Drone03.domino|@Drone03_Main|1226806552", "1226806552", "Drone03_Main", "box_RaceWithCinematic_1.OnRaceStopped", "box_Ordered_Output_6.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_9_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\Drone03.domino|@Drone03_Main|1240604382"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_17_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_17_Out_1
  l0 = self.box_TriggerMonitor_v2_9
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\Drone03.domino|@Drone03_Main|2002127022", "2002127022", "Drone03_Main", "box_TriggerMonitor_v2_9.Disabled", "box_Ordered_Output_17.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_9_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\Drone03.domino|@Drone03_Main|241317355"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_16_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_16_Out_1
  l0 = self.box_TriggerMonitor_v2_9
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\Drone03.domino|@Drone03_Main|102341001", "102341001", "Drone03_Main", "box_TriggerMonitor_v2_9.Enabled", "box_Ordered_Output_16.In", l0, l1)
  l1:In()
end
function export:OnEnter_box_TriggerMonitor_v2_13()
  local l0
  l0 = self.box_TriggerMonitor_v2_13
  l0.Trigger = "9223372067629579544"
end
function export:OnEnter_box_TriggerMonitor_v2_15()
  local l0
  l0 = self.box_TriggerMonitor_v2_15
  l0.Trigger = "9223372067629403018"
end
function export:OnEnter_box_TriggerMonitor_v2_2()
  local l0
  l0 = self.box_TriggerMonitor_v2_2
  l0.Trigger = "9223372067629579546"
end
function export:OnEnter_box_MultipleOR_12()
end
function export:OnEnter_box_TriggerMonitor_v2_10()
  local l0
  l0 = self.box_TriggerMonitor_v2_10
  l0.Trigger = "9223372066760217328"
end
function export:OnEnter_box_TriggerMonitor_v2_8()
  local l0
  l0 = self.box_TriggerMonitor_v2_8
  l0.Trigger = "9223372067629578382"
end
function export:OnEnter_box_TriggerMonitor_v2_14()
  local l0
  l0 = self.box_TriggerMonitor_v2_14
  l0.Trigger = "9223372067629403016"
end
function export:OnEnter_box_TriggerMonitor_v2_9()
  local l0
  l0 = self.box_TriggerMonitor_v2_9
  l0.Trigger = "9223372063506518776"
end
_compilerVersion = 4
