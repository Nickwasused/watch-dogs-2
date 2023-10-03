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
  self._name = "Motocross05_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross05.domino|@Motocross05_Main"
  self.PlayerEntity = nil
  self.Hour = 0
  self.box_TriggerMonitor_v2_12 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_12
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross05.domino|@Motocross05_Main|17525853"
  l0.Enabled = self.f_box_TriggerMonitor_v2_12_Enabled
  l0.Disabled = self.f_box_TriggerMonitor_v2_12_Disabled
  l0.Enter = DummyFunction
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MissionLayer_v2_6 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_6
  l0._graph = self
  l0._name = "box_MissionLayer_v2_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross05.domino|@Motocross05_Main|17910151"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_6_Unloaded
  l0.Reseted = DummyFunction
  self.box_MissionCheckpointReach_4 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_4
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross05.domino|@Motocross05_Main|117251319"
  l0.Out = self.f_box_MissionCheckpointReach_4_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_TriggerMonitor_v2_13 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_13
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross05.domino|@Motocross05_Main|769349226"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MultipleOR_9 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_9
  l0._graph = self
  l0._name = "box_MultipleOR_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross05.domino|@Motocross05_Main|786049848"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_9_Out
  self.box_RaceWithCinematic_1 = cbox:CreateBox("domino/Library/singleplayer/Racing/Racing_Helpers.RaceWithCinematic.debug.lua")
  l0 = self.box_RaceWithCinematic_1
  l0._graph = self
  l0._name = "box_RaceWithCinematic_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross05.domino|@Motocross05_Main|861892348"
  l0.OnRaceStarted = DummyFunction
  l0.OnRaceStopped = self.f_box_RaceWithCinematic_1_OnRaceStopped
  self.box_MissionLayer_v2_5 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_5
  l0._graph = self
  l0._name = "box_MissionLayer_v2_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross05.domino|@Motocross05_Main|882796121"
  l0.Loaded = self.f_box_MissionLayer_v2_5_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_TriggerMonitor_v2_3 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_3
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross05.domino|@Motocross05_Main|1562271557"
  l0.Enabled = self.f_box_TriggerMonitor_v2_3_Enabled
  l0.Disabled = self.f_box_TriggerMonitor_v2_3_Disabled
  l0.Enter = DummyFunction
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MissionController_v4_2 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_2
  l0._graph = self
  l0._name = "box_MissionController_v4_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross05.domino|@Motocross05_Main|1909716302"
  self.box_TriggerMonitor_v2_11 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_11
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross05.domino|@Motocross05_Main|2066143224"
  l0.Enabled = self.f_box_TriggerMonitor_v2_11_Enabled
  l0.Disabled = self.f_box_TriggerMonitor_v2_11_Disabled
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
  self:OnEnter_box_MultipleOR_9()
  l0 = self.box_MultipleOR_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross05.domino|@Motocross05_Main|1556577776", "1556577776", "Motocross05_Main", "CheckPoint_0", "box_MultipleOR_9.Input", self, l0)
  l0:Input(0)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_9()
  l0 = self.box_MultipleOR_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross05.domino|@Motocross05_Main|1477439906", "1477439906", "Motocross05_Main", "In", "box_MultipleOR_9.Input", self, l0)
  l0:Input(1)
end
function export:f_box_TriggerMonitor_v2_12_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_13()
  l0 = self.box_TriggerMonitor_v2_12
  l1 = self.box_TriggerMonitor_v2_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross05.domino|@Motocross05_Main|985993390", "985993390", "Motocross05_Main", "box_TriggerMonitor_v2_12.Disabled", "box_TriggerMonitor_v2_13.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_TriggerMonitor_v2_12_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_13()
  l0 = self.box_TriggerMonitor_v2_12
  l1 = self.box_TriggerMonitor_v2_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross05.domino|@Motocross05_Main|677167097", "677167097", "Motocross05_Main", "box_TriggerMonitor_v2_12.Enabled", "box_TriggerMonitor_v2_13.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MissionLayer_v2_6_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_6
  l1 = self.box_MissionController_v4_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross05.domino|@Motocross05_Main|675063502", "675063502", "Motocross05_Main", "box_MissionLayer_v2_6.Unloaded", "box_MissionController_v4_2.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_MissionCheckpointReach_4_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_RaceWithCinematic_1
  l0.Config = "RaceDbConfig.9223372055060909192"
  l0.CinematicSceneEntity = "9223372060032139887"
  l0.CinematicSequenceFile = "sequences/MotocrossRace/motocrossrace05.seq"
  l0 = self.box_MissionCheckpointReach_4
  l1 = self.box_RaceWithCinematic_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross05.domino|@Motocross05_Main|423865881", "423865881", "Motocross05_Main", "box_MissionCheckpointReach_4.Out", "box_RaceWithCinematic_1.StartRace", l0, l1)
  l1:StartRace()
end
function export:f_box_MultipleOR_9_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_5
  l0.LayerName = "Motocross05_Main"
  l0 = self.box_MultipleOR_9
  l1 = self.box_MissionLayer_v2_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross05.domino|@Motocross05_Main|827630845", "827630845", "Motocross05_Main", "box_MultipleOR_9.Out", "box_MissionLayer_v2_5.Load", l0, l1)
  l1:Load()
end
function export:f_box_Ordered_Output_8_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_4
  l0.Checkpoint = "CheckPoint_0"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross05.domino|@Motocross05_Main|436305843", "436305843", "Motocross05_Main", "box_Ordered_Output_8.Out", "box_MissionCheckpointReach_4.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_8_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_3()
  l0 = self.box_TriggerMonitor_v2_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross05.domino|@Motocross05_Main|1206833771", "1206833771", "Motocross05_Main", "box_Ordered_Output_8.Out", "box_TriggerMonitor_v2_3.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_RaceWithCinematic_1_OnRaceStopped()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross05.domino|@Motocross05_Main|2086633190"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_10_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_10_Out_1
  l0 = self.box_RaceWithCinematic_1
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross05.domino|@Motocross05_Main|2049185929", "2049185929", "Motocross05_Main", "box_RaceWithCinematic_1.OnRaceStopped", "box_Ordered_Output_10.In", l0, l1)
  l1:In()
end
function export:f_box_MissionLayer_v2_5_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross05.domino|@Motocross05_Main|2025993247"
  l0.Out = self.f_box_Get_Player_ID_7_Out
  l0 = self.box_MissionLayer_v2_5
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross05.domino|@Motocross05_Main|1389261120", "1389261120", "Motocross05_Main", "box_MissionLayer_v2_5.Loaded", "box_Get_Player_ID_7.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_3_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_11()
  l0 = self.box_TriggerMonitor_v2_3
  l1 = self.box_TriggerMonitor_v2_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross05.domino|@Motocross05_Main|1016276666", "1016276666", "Motocross05_Main", "box_TriggerMonitor_v2_3.Disabled", "box_TriggerMonitor_v2_11.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_TriggerMonitor_v2_3_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_11()
  l0 = self.box_TriggerMonitor_v2_3
  l1 = self.box_TriggerMonitor_v2_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross05.domino|@Motocross05_Main|520178619", "520178619", "Motocross05_Main", "box_TriggerMonitor_v2_3.Enabled", "box_TriggerMonitor_v2_11.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Get_Player_ID_7_Out()
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
  l0._name = "box_Ordered_Output_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross05.domino|@Motocross05_Main|787677734"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_8_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_8_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross05.domino|@Motocross05_Main|74583108", "74583108", "Motocross05_Main", "box_Get_Player_ID_7.Out", "box_Ordered_Output_8.In", clone, l0)
  l0:In()
end
function export:f_box_TriggerMonitor_v2_11_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_12()
  l0 = self.box_TriggerMonitor_v2_11
  l1 = self.box_TriggerMonitor_v2_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross05.domino|@Motocross05_Main|566844195", "566844195", "Motocross05_Main", "box_TriggerMonitor_v2_11.Disabled", "box_TriggerMonitor_v2_12.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_TriggerMonitor_v2_11_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_12()
  l0 = self.box_TriggerMonitor_v2_11
  l1 = self.box_TriggerMonitor_v2_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross05.domino|@Motocross05_Main|2098742187", "2098742187", "Motocross05_Main", "box_TriggerMonitor_v2_11.Enabled", "box_TriggerMonitor_v2_12.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Ordered_Output_10_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionLayer_v2_6
  l0.LayerName = "Motocross05_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross05.domino|@Motocross05_Main|669705819", "669705819", "Motocross05_Main", "box_Ordered_Output_10.Out", "box_MissionLayer_v2_6.Unload", clone, l0)
  l0:Unload()
end
function export:f_box_Ordered_Output_10_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_3()
  l0 = self.box_TriggerMonitor_v2_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross05.domino|@Motocross05_Main|294892230", "294892230", "Motocross05_Main", "box_Ordered_Output_10.Out", "box_TriggerMonitor_v2_3.Disable", clone, l0)
  l0:Disable()
end
function export:OnEnter_box_TriggerMonitor_v2_12()
  local l0
  l0 = self.box_TriggerMonitor_v2_12
  l0.Trigger = "9223372071668802790"
end
function export:OnEnter_box_TriggerMonitor_v2_13()
  local l0
  l0 = self.box_TriggerMonitor_v2_13
  l0.Trigger = "9223372072769807086"
end
function export:OnEnter_box_MultipleOR_9()
end
function export:OnEnter_box_TriggerMonitor_v2_3()
  local l0
  l0 = self.box_TriggerMonitor_v2_3
  l0.Trigger = "9223372069402302021"
end
function export:OnEnter_box_TriggerMonitor_v2_11()
  local l0
  l0 = self.box_TriggerMonitor_v2_11
  l0.Trigger = "9223372069783720047"
end
_compilerVersion = 4
