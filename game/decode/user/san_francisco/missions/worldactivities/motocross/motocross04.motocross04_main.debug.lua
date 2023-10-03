export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/EntityLoadingMonitor.lua")
  cbox:RegisterBox("domino/System/GateController.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/Library/singleplayer/Racing/Racing_Helpers.RaceWithCinematic.debug.lua")
  cbox:RegisterBox("domino/System/TriggerController.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "Motocross04_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross04.domino|@Motocross04_Main"
  self.PlayerEntity = nil
  self.Hour = 0
  self.box_EntityLoadingMonitor_4 = cbox:CreateBox("domino/System/EntityLoadingMonitor.lua")
  l0 = self.box_EntityLoadingMonitor_4
  l0._graph = self
  l0._name = "box_EntityLoadingMonitor_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross04.domino|@Motocross04_Main|165137772"
  l0.Enabled = self.f_box_EntityLoadingMonitor_4_Enabled
  l0.Disabled = DummyFunction
  l0.AllLoaded = self.f_box_EntityLoadingMonitor_4_AllLoaded
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross04.domino|@Motocross04_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_EntityLoadingMonitor_13 = cbox:CreateBox("domino/System/EntityLoadingMonitor.lua")
  l0 = self.box_EntityLoadingMonitor_13
  l0._graph = self
  l0._name = "box_EntityLoadingMonitor_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross04.domino|@Motocross04_Main|294756309"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.AllLoaded = self.f_box_EntityLoadingMonitor_13_AllLoaded
  self.box_MissionCheckpointReach_3 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_3
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross04.domino|@Motocross04_Main|1044450432"
  l0.Out = self.f_box_MissionCheckpointReach_3_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_EntityLoadingMonitor_12 = cbox:CreateBox("domino/System/EntityLoadingMonitor.lua")
  l0 = self.box_EntityLoadingMonitor_12
  l0._graph = self
  l0._name = "box_EntityLoadingMonitor_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross04.domino|@Motocross04_Main|1077399172"
  l0.Enabled = self.f_box_EntityLoadingMonitor_12_Enabled
  l0.Disabled = DummyFunction
  l0.AllLoaded = self.f_box_EntityLoadingMonitor_12_AllLoaded
  self.box_TriggerMonitor_v2_17 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_17
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross04.domino|@Motocross04_Main|1191299314"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_17_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MissionLayer_v2_8 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_8
  l0._graph = self
  l0._name = "box_MissionLayer_v2_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross04.domino|@Motocross04_Main|1344598100"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_8_Unloaded
  l0.Reseted = DummyFunction
  self.box_EntityLoadingMonitor_16 = cbox:CreateBox("domino/System/EntityLoadingMonitor.lua")
  l0 = self.box_EntityLoadingMonitor_16
  l0._graph = self
  l0._name = "box_EntityLoadingMonitor_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross04.domino|@Motocross04_Main|1505251339"
  l0.Enabled = self.f_box_EntityLoadingMonitor_16_Enabled
  l0.Disabled = DummyFunction
  l0.AllLoaded = self.f_box_EntityLoadingMonitor_16_AllLoaded
  self.box_RaceWithCinematic_5 = cbox:CreateBox("domino/Library/singleplayer/Racing/Racing_Helpers.RaceWithCinematic.debug.lua")
  l0 = self.box_RaceWithCinematic_5
  l0._graph = self
  l0._name = "box_RaceWithCinematic_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross04.domino|@Motocross04_Main|1858332253"
  l0.OnRaceStarted = self.f_box_RaceWithCinematic_5_OnRaceStarted
  l0.OnRaceStopped = self.f_box_RaceWithCinematic_5_OnRaceStopped
  self.box_MissionController_v4_6 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_6
  l0._graph = self
  l0._name = "box_MissionController_v4_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross04.domino|@Motocross04_Main|1874929075"
  self.box_MultipleOR_9 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_9
  l0._graph = self
  l0._name = "box_MultipleOR_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross04.domino|@Motocross04_Main|1937955753"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_9_Out
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross04.domino|@Motocross04_Main|71725657", "71725657", "Motocross04_Main", "CheckPoint_0", "box_MultipleOR_9.Input", self, l0)
  l0:Input(0)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_9()
  l0 = self.box_MultipleOR_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross04.domino|@Motocross04_Main|42303672", "42303672", "Motocross04_Main", "In", "box_MultipleOR_9.Input", self, l0)
  l0:Input(1)
end
function export:f_box_EntityLoadingMonitor_4_AllLoaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/TriggerController.lua")]
  l0.Trigger = "9223372061701084321"
  l0.CheckLookAt = nil
  l0.CheckAngle = nil
  l0.IconZOffset = nil
  l0.OasisId = nil
  l0._graph = self
  l0._name = "box_Trigger_Controller_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross04.domino|@Motocross04_Main|2059567899"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.IconOffsetSet = DummyFunction
  l0.CustomOasisIdSet = DummyFunction
  l0.NoInteractionTextSet = DummyFunction
  l0 = self.box_EntityLoadingMonitor_4
  l1 = Boxes[PathID("domino/System/TriggerController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross04.domino|@Motocross04_Main|1446840165", "1446840165", "Motocross04_Main", "box_EntityLoadingMonitor_4.AllLoaded", "box_Trigger_Controller_14.SetDisabled", l0, l1)
  l1:SetDisabled()
end
function export:f_box_EntityLoadingMonitor_4_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_EntityLoadingMonitor_16
  l0.Entity = "9223372061701084284"
  l0 = self.box_EntityLoadingMonitor_4
  l1 = self.box_EntityLoadingMonitor_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross04.domino|@Motocross04_Main|603810128", "603810128", "Motocross04_Main", "box_EntityLoadingMonitor_4.Enabled", "box_EntityLoadingMonitor_16.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross04.domino|@Motocross04_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MissionLayer_v2_2
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross04.domino|@Motocross04_Main|1355410536", "1355410536", "Motocross04_Main", "box_MissionLayer_v2_2.Loaded", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_EntityLoadingMonitor_13_AllLoaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GateController.lua")]
  l0.GateEntity = "9223372061701084274"
  l0.SetOpen = nil
  l0.Instant = nil
  l0._graph = self
  l0._name = "box_GateController_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross04.domino|@Motocross04_Main|1494641423"
  l0.Out = DummyFunction
  l0.Opened = DummyFunction
  l0.Closed = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0 = self.box_EntityLoadingMonitor_13
  l1 = Boxes[PathID("domino/System/GateController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross04.domino|@Motocross04_Main|1280385197", "1280385197", "Motocross04_Main", "box_EntityLoadingMonitor_13.AllLoaded", "box_GateController_11.Open", l0, l1)
  l1:Open()
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
  l0 = self.box_MissionCheckpointReach_3
  l0.Checkpoint = "CheckPoint_0"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross04.domino|@Motocross04_Main|578767670", "578767670", "Motocross04_Main", "box_Get_Player_ID_1.Out", "box_MissionCheckpointReach_3.In", clone, l0)
  l0:In()
end
function export:f_box_MissionCheckpointReach_3_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_RaceWithCinematic_5
  l0.Config = "RaceDbConfig.9223372052943161646"
  l0.CinematicSceneEntity = "9223372059416026383"
  l0.CinematicSequenceFile = "sequences/MotocrossRace/motocrossrace04.seq"
  l0 = self.box_MissionCheckpointReach_3
  l1 = self.box_RaceWithCinematic_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross04.domino|@Motocross04_Main|406509256", "406509256", "Motocross04_Main", "box_MissionCheckpointReach_3.Out", "box_RaceWithCinematic_5.StartRace", l0, l1)
  l1:StartRace()
end
function export:f_box_EntityLoadingMonitor_12_AllLoaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GateController.lua")]
  l0.GateEntity = "9223372061701084311"
  l0.SetOpen = nil
  l0.Instant = nil
  l0._graph = self
  l0._name = "box_GateController_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross04.domino|@Motocross04_Main|408413957"
  l0.Out = DummyFunction
  l0.Opened = DummyFunction
  l0.Closed = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0 = self.box_EntityLoadingMonitor_12
  l1 = Boxes[PathID("domino/System/GateController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross04.domino|@Motocross04_Main|1770450564", "1770450564", "Motocross04_Main", "box_EntityLoadingMonitor_12.AllLoaded", "box_GateController_7.Open", l0, l1)
  l1:Open()
end
function export:f_box_EntityLoadingMonitor_12_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_EntityLoadingMonitor_13
  l0.Entity = "9223372061701084274"
  l0 = self.box_EntityLoadingMonitor_12
  l1 = self.box_EntityLoadingMonitor_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross04.domino|@Motocross04_Main|974327513", "974327513", "Motocross04_Main", "box_EntityLoadingMonitor_12.Enabled", "box_EntityLoadingMonitor_13.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TriggerMonitor_v2_17_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_EntityLoadingMonitor_4
  l0.Entity = "9223372061701084321"
  l0 = self.box_TriggerMonitor_v2_17
  l1 = self.box_EntityLoadingMonitor_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross04.domino|@Motocross04_Main|1403760041", "1403760041", "Motocross04_Main", "box_TriggerMonitor_v2_17.Enter", "box_EntityLoadingMonitor_4.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MissionLayer_v2_8_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_8
  l1 = self.box_MissionController_v4_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross04.domino|@Motocross04_Main|1252603834", "1252603834", "Motocross04_Main", "box_MissionLayer_v2_8.Unloaded", "box_MissionController_v4_6.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_EntityLoadingMonitor_16_AllLoaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/TriggerController.lua")]
  l0.Trigger = "9223372061701084284"
  l0.CheckLookAt = nil
  l0.CheckAngle = nil
  l0.IconZOffset = nil
  l0.OasisId = nil
  l0._graph = self
  l0._name = "box_Trigger_Controller_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross04.domino|@Motocross04_Main|560980051"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.IconOffsetSet = DummyFunction
  l0.CustomOasisIdSet = DummyFunction
  l0.NoInteractionTextSet = DummyFunction
  l0 = self.box_EntityLoadingMonitor_16
  l1 = Boxes[PathID("domino/System/TriggerController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross04.domino|@Motocross04_Main|1125631674", "1125631674", "Motocross04_Main", "box_EntityLoadingMonitor_16.AllLoaded", "box_Trigger_Controller_15.SetDisabled", l0, l1)
  l1:SetDisabled()
end
function export:f_box_EntityLoadingMonitor_16_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_17()
  l0 = self.box_EntityLoadingMonitor_16
  l1 = self.box_TriggerMonitor_v2_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross04.domino|@Motocross04_Main|113744761", "113744761", "Motocross04_Main", "box_EntityLoadingMonitor_16.Enabled", "box_TriggerMonitor_v2_17.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_RaceWithCinematic_5_OnRaceStarted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross04.domino|@Motocross04_Main|2010499755"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_10_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_10_Out_1
  l0 = self.box_RaceWithCinematic_5
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross04.domino|@Motocross04_Main|711668038", "711668038", "Motocross04_Main", "box_RaceWithCinematic_5.OnRaceStarted", "box_Ordered_Output_10.In", l0, l1)
  l1:In()
end
function export:f_box_RaceWithCinematic_5_OnRaceStopped()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_8
  l0.LayerName = "Motocross04_Main"
  l0 = self.box_RaceWithCinematic_5
  l1 = self.box_MissionLayer_v2_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross04.domino|@Motocross04_Main|1492963501", "1492963501", "Motocross04_Main", "box_RaceWithCinematic_5.OnRaceStopped", "box_MissionLayer_v2_8.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_MultipleOR_9_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "Motocross04_Main"
  l0 = self.box_MultipleOR_9
  l1 = self.box_MissionLayer_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross04.domino|@Motocross04_Main|1308898197", "1308898197", "Motocross04_Main", "box_MultipleOR_9.Out", "box_MissionLayer_v2_2.Load", l0, l1)
  l1:Load()
end
function export:f_box_Ordered_Output_10_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_17()
  l0 = self.box_TriggerMonitor_v2_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross04.domino|@Motocross04_Main|2142678305", "2142678305", "Motocross04_Main", "box_Ordered_Output_10.Out", "box_TriggerMonitor_v2_17.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_10_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_EntityLoadingMonitor_12
  l0.Entity = "9223372061701084311"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross04.domino|@Motocross04_Main|1963348848", "1963348848", "Motocross04_Main", "box_Ordered_Output_10.Out", "box_EntityLoadingMonitor_12.Enable", clone, l0)
  l0:Enable()
end
function export:OnEnter_box_TriggerMonitor_v2_17()
  local l0
  l0 = self.box_TriggerMonitor_v2_17
  l0.Trigger = "9223372069350301141"
end
function export:OnEnter_box_MultipleOR_9()
end
_compilerVersion = 4
