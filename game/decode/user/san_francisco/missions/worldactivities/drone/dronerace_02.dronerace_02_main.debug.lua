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
  self._name = "DroneRace_02_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_02.domino|@DroneRace_02_Main"
  self.PlayerEntity = nil
  self.Hour = 0
  self.SongsList = {}
  self.IsReplay = 0
  self.box_MultipleOR_2 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_2
  l0._graph = self
  l0._name = "box_MultipleOR_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_02.domino|@DroneRace_02_Main|238152219"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_2_Out
  self.box_EntityLoadingMonitor_14 = cbox:CreateBox("domino/System/EntityLoadingMonitor.lua")
  l0 = self.box_EntityLoadingMonitor_14
  l0._graph = self
  l0._name = "box_EntityLoadingMonitor_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_02.domino|@DroneRace_02_Main|378440809"
  l0.Enabled = self.f_box_EntityLoadingMonitor_14_Enabled
  l0.Disabled = DummyFunction
  l0.AllLoaded = self.f_box_EntityLoadingMonitor_14_AllLoaded
  self.box_EntityLoadingMonitor_23 = cbox:CreateBox("domino/System/EntityLoadingMonitor.lua")
  l0 = self.box_EntityLoadingMonitor_23
  l0._graph = self
  l0._name = "box_EntityLoadingMonitor_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_02.domino|@DroneRace_02_Main|392494397"
  l0.Enabled = self.f_box_EntityLoadingMonitor_23_Enabled
  l0.Disabled = DummyFunction
  l0.AllLoaded = self.f_box_EntityLoadingMonitor_23_AllLoaded
  self.box_MissionController_v4_5 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_5
  l0._graph = self
  l0._name = "box_MissionController_v4_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_02.domino|@DroneRace_02_Main|554668053"
  self.box_MissionCheckpointReach_4 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_4
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_02.domino|@DroneRace_02_Main|849779159"
  l0.Out = self.f_box_MissionCheckpointReach_4_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_EntityLoadingMonitor_17 = cbox:CreateBox("domino/System/EntityLoadingMonitor.lua")
  l0 = self.box_EntityLoadingMonitor_17
  l0._graph = self
  l0._name = "box_EntityLoadingMonitor_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_02.domino|@DroneRace_02_Main|884536460"
  l0.Enabled = self.f_box_EntityLoadingMonitor_17_Enabled
  l0.Disabled = DummyFunction
  l0.AllLoaded = self.f_box_EntityLoadingMonitor_17_AllLoaded
  self.box_EntityLoadingMonitor_24 = cbox:CreateBox("domino/System/EntityLoadingMonitor.lua")
  l0 = self.box_EntityLoadingMonitor_24
  l0._graph = self
  l0._name = "box_EntityLoadingMonitor_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_02.domino|@DroneRace_02_Main|1074781607"
  l0.Enabled = self.f_box_EntityLoadingMonitor_24_Enabled
  l0.Disabled = DummyFunction
  l0.AllLoaded = self.f_box_EntityLoadingMonitor_24_AllLoaded
  self.box_MissionLayer_v2_6 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_6
  l0._graph = self
  l0._name = "box_MissionLayer_v2_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_02.domino|@DroneRace_02_Main|1125085576"
  l0.Loaded = self.f_box_MissionLayer_v2_6_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_TriggerMonitor_v2_25 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_25
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_02.domino|@DroneRace_02_Main|1402075495"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_25_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_RaceWithCinematic_1 = cbox:CreateBox("domino/Library/singleplayer/Racing/Racing_Helpers.RaceWithCinematic.debug.lua")
  l0 = self.box_RaceWithCinematic_1
  l0._graph = self
  l0._name = "box_RaceWithCinematic_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_02.domino|@DroneRace_02_Main|1411701167"
  l0.OnRaceStarted = self.f_box_RaceWithCinematic_1_OnRaceStarted
  l0.OnRaceStopped = self.f_box_RaceWithCinematic_1_OnRaceStopped
  self.box_EntityLoadingMonitor_13 = cbox:CreateBox("domino/System/EntityLoadingMonitor.lua")
  l0 = self.box_EntityLoadingMonitor_13
  l0._graph = self
  l0._name = "box_EntityLoadingMonitor_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_02.domino|@DroneRace_02_Main|1563357236"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.AllLoaded = self.f_box_EntityLoadingMonitor_13_AllLoaded
  self.box_EntityLoadingMonitor_19 = cbox:CreateBox("domino/System/EntityLoadingMonitor.lua")
  l0 = self.box_EntityLoadingMonitor_19
  l0._graph = self
  l0._name = "box_EntityLoadingMonitor_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_02.domino|@DroneRace_02_Main|1598497558"
  l0.Enabled = self.f_box_EntityLoadingMonitor_19_Enabled
  l0.Disabled = DummyFunction
  l0.AllLoaded = self.f_box_EntityLoadingMonitor_19_AllLoaded
  self.box_EntityLoadingMonitor_54 = cbox:CreateBox("domino/System/EntityLoadingMonitor.lua")
  l0 = self.box_EntityLoadingMonitor_54
  l0._graph = self
  l0._name = "box_EntityLoadingMonitor_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_02.domino|@DroneRace_02_Main|1757473320"
  l0.Enabled = self.f_box_EntityLoadingMonitor_54_Enabled
  l0.Disabled = DummyFunction
  l0.AllLoaded = self.f_box_EntityLoadingMonitor_54_AllLoaded
  self.box_EntityLoadingMonitor_53 = cbox:CreateBox("domino/System/EntityLoadingMonitor.lua")
  l0 = self.box_EntityLoadingMonitor_53
  l0._graph = self
  l0._name = "box_EntityLoadingMonitor_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_02.domino|@DroneRace_02_Main|1769061297"
  l0.Enabled = self.f_box_EntityLoadingMonitor_53_Enabled
  l0.Disabled = DummyFunction
  l0.AllLoaded = self.f_box_EntityLoadingMonitor_53_AllLoaded
  self.box_MissionLayer_v2_32 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_32
  l0._graph = self
  l0._name = "box_MissionLayer_v2_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_02.domino|@DroneRace_02_Main|1935316224"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_32_Unloaded
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
  self:OnEnter_box_MultipleOR_2()
  l0 = self.box_MultipleOR_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_02.domino|@DroneRace_02_Main|1075396416", "1075396416", "DroneRace_02_Main", "CheckPoint_0", "box_MultipleOR_2.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_2()
  l0 = self.box_MultipleOR_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_02.domino|@DroneRace_02_Main|1404699238", "1404699238", "DroneRace_02_Main", "In", "box_MultipleOR_2.Input", self, l0)
  l0:Input(0)
end
function export:f_box_MultipleOR_2_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_6
  l0.LayerName = "DroneRace_02_Main"
  l0 = self.box_MultipleOR_2
  l1 = self.box_MissionLayer_v2_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_02.domino|@DroneRace_02_Main|1406380843", "1406380843", "DroneRace_02_Main", "box_MultipleOR_2.Out", "box_MissionLayer_v2_6.Load", l0, l1)
  l1:Load()
end
function export:f_box_Get_Player_ID_28_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_4
  l0.Checkpoint = "CheckPoint_0"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_02.domino|@DroneRace_02_Main|904916740", "904916740", "DroneRace_02_Main", "box_Get_Player_ID_28.Out", "box_MissionCheckpointReach_4.In", clone, l0)
  l0:In()
end
function export:f_box_EntityLoadingMonitor_14_AllLoaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GateController.lua")]
  l0.GateEntity = "9223372052020372967"
  l0.SetOpen = nil
  l0.Instant = nil
  l0._graph = self
  l0._name = "box_GateController_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_02.domino|@DroneRace_02_Main|1330900818"
  l0.Out = DummyFunction
  l0.Opened = DummyFunction
  l0.Closed = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0 = self.box_EntityLoadingMonitor_14
  l1 = Boxes[PathID("domino/System/GateController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_02.domino|@DroneRace_02_Main|707214385", "707214385", "DroneRace_02_Main", "box_EntityLoadingMonitor_14.AllLoaded", "box_GateController_12.Open", l0, l1)
  l1:Open()
end
function export:f_box_EntityLoadingMonitor_14_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_EntityLoadingMonitor_13
  l0.Entity = "9223372052020372939"
  l0 = self.box_EntityLoadingMonitor_14
  l1 = self.box_EntityLoadingMonitor_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_02.domino|@DroneRace_02_Main|83800551", "83800551", "DroneRace_02_Main", "box_EntityLoadingMonitor_14.Enabled", "box_EntityLoadingMonitor_13.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_EntityLoadingMonitor_23_AllLoaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/TriggerController.lua")]
  l0.Trigger = "9223372056232141106"
  l0.CheckLookAt = nil
  l0.CheckAngle = nil
  l0.IconZOffset = nil
  l0.OasisId = nil
  l0._graph = self
  l0._name = "box_Trigger_Controller_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_02.domino|@DroneRace_02_Main|423583051"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.IconOffsetSet = DummyFunction
  l0.CustomOasisIdSet = DummyFunction
  l0.NoInteractionTextSet = DummyFunction
  l0 = self.box_EntityLoadingMonitor_23
  l1 = Boxes[PathID("domino/System/TriggerController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_02.domino|@DroneRace_02_Main|1763973711", "1763973711", "DroneRace_02_Main", "box_EntityLoadingMonitor_23.AllLoaded", "box_Trigger_Controller_11.SetDisabled", l0, l1)
  l1:SetDisabled()
end
function export:f_box_EntityLoadingMonitor_23_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_EntityLoadingMonitor_17
  l0.Entity = "9223372056232141249"
  l0 = self.box_EntityLoadingMonitor_23
  l1 = self.box_EntityLoadingMonitor_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_02.domino|@DroneRace_02_Main|716781109", "716781109", "DroneRace_02_Main", "box_EntityLoadingMonitor_23.Enabled", "box_EntityLoadingMonitor_17.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Ordered_Output_16_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_25()
  l0 = self.box_TriggerMonitor_v2_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_02.domino|@DroneRace_02_Main|600597346", "600597346", "DroneRace_02_Main", "box_Ordered_Output_16.Out", "box_TriggerMonitor_v2_25.Enable", clone, l0)
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
  l0 = self.box_EntityLoadingMonitor_53
  l0.Entity = "9223372052020372995"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_02.domino|@DroneRace_02_Main|2110529242", "2110529242", "DroneRace_02_Main", "box_Ordered_Output_16.Out", "box_EntityLoadingMonitor_53.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MissionCheckpointReach_4_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_RaceWithCinematic_1
  l0.Config = "RaceDbConfig.9223372049685035359"
  l0.CinematicSceneEntity = "9223372052542326312"
  l0.CinematicSequenceFile = "sequences/DroneRaces/dronerace02.seq"
  l0 = self.box_MissionCheckpointReach_4
  l1 = self.box_RaceWithCinematic_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_02.domino|@DroneRace_02_Main|458608649", "458608649", "DroneRace_02_Main", "box_MissionCheckpointReach_4.Out", "box_RaceWithCinematic_1.StartRace", l0, l1)
  l1:StartRace()
end
function export:f_box_EntityLoadingMonitor_17_AllLoaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/TriggerController.lua")]
  l0.Trigger = "9223372056232141249"
  l0.CheckLookAt = nil
  l0.CheckAngle = nil
  l0.IconZOffset = nil
  l0.OasisId = nil
  l0._graph = self
  l0._name = "box_Trigger_Controller_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_02.domino|@DroneRace_02_Main|1178228736"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.IconOffsetSet = DummyFunction
  l0.CustomOasisIdSet = DummyFunction
  l0.NoInteractionTextSet = DummyFunction
  l0 = self.box_EntityLoadingMonitor_17
  l1 = Boxes[PathID("domino/System/TriggerController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_02.domino|@DroneRace_02_Main|209744667", "209744667", "DroneRace_02_Main", "box_EntityLoadingMonitor_17.AllLoaded", "box_Trigger_Controller_15.SetDisabled", l0, l1)
  l1:SetDisabled()
end
function export:f_box_EntityLoadingMonitor_17_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_25()
  l0 = self.box_EntityLoadingMonitor_17
  l1 = self.box_TriggerMonitor_v2_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_02.domino|@DroneRace_02_Main|520152940", "520152940", "DroneRace_02_Main", "box_EntityLoadingMonitor_17.Enabled", "box_TriggerMonitor_v2_25.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_EntityLoadingMonitor_24_AllLoaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/TriggerController.lua")]
  l0.Trigger = "9223372056232141128"
  l0.CheckLookAt = nil
  l0.CheckAngle = nil
  l0.IconZOffset = nil
  l0.OasisId = nil
  l0._graph = self
  l0._name = "box_Trigger_Controller_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_02.domino|@DroneRace_02_Main|1794041770"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.IconOffsetSet = DummyFunction
  l0.CustomOasisIdSet = DummyFunction
  l0.NoInteractionTextSet = DummyFunction
  l0 = self.box_EntityLoadingMonitor_24
  l1 = Boxes[PathID("domino/System/TriggerController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_02.domino|@DroneRace_02_Main|688802927", "688802927", "DroneRace_02_Main", "box_EntityLoadingMonitor_24.AllLoaded", "box_Trigger_Controller_8.SetDisabled", l0, l1)
  l1:SetDisabled()
end
function export:f_box_EntityLoadingMonitor_24_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_EntityLoadingMonitor_23
  l0.Entity = "9223372056232141106"
  l0 = self.box_EntityLoadingMonitor_24
  l1 = self.box_EntityLoadingMonitor_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_02.domino|@DroneRace_02_Main|452567345", "452567345", "DroneRace_02_Main", "box_EntityLoadingMonitor_24.Enabled", "box_EntityLoadingMonitor_23.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MissionLayer_v2_6_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_02.domino|@DroneRace_02_Main|271233045"
  l0.Out = self.f_box_Get_Player_ID_28_Out
  l0 = self.box_MissionLayer_v2_6
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_02.domino|@DroneRace_02_Main|722668988", "722668988", "DroneRace_02_Main", "box_MissionLayer_v2_6.Loaded", "box_Get_Player_ID_28.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_25_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_EntityLoadingMonitor_19
  l0.Entity = "9223372056232140525"
  l0 = self.box_TriggerMonitor_v2_25
  l1 = self.box_EntityLoadingMonitor_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_02.domino|@DroneRace_02_Main|1287626857", "1287626857", "DroneRace_02_Main", "box_TriggerMonitor_v2_25.Enter", "box_EntityLoadingMonitor_19.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_RaceWithCinematic_1_OnRaceStarted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_02.domino|@DroneRace_02_Main|432896416"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_16_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_16_Out_1
  l0 = self.box_RaceWithCinematic_1
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_02.domino|@DroneRace_02_Main|1089776079", "1089776079", "DroneRace_02_Main", "box_RaceWithCinematic_1.OnRaceStarted", "box_Ordered_Output_16.In", l0, l1)
  l1:In()
end
function export:f_box_RaceWithCinematic_1_OnRaceStopped()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_32
  l0.LayerName = "DroneRace_02_Main"
  l0 = self.box_RaceWithCinematic_1
  l1 = self.box_MissionLayer_v2_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_02.domino|@DroneRace_02_Main|737271542", "737271542", "DroneRace_02_Main", "box_RaceWithCinematic_1.OnRaceStopped", "box_MissionLayer_v2_32.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_EntityLoadingMonitor_13_AllLoaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GateController.lua")]
  l0.GateEntity = "9223372052020372939"
  l0.SetOpen = nil
  l0.Instant = nil
  l0._graph = self
  l0._name = "box_GateController_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_02.domino|@DroneRace_02_Main|1378992978"
  l0.Out = DummyFunction
  l0.Opened = DummyFunction
  l0.Closed = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0 = self.box_EntityLoadingMonitor_13
  l1 = Boxes[PathID("domino/System/GateController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_02.domino|@DroneRace_02_Main|1181505107", "1181505107", "DroneRace_02_Main", "box_EntityLoadingMonitor_13.AllLoaded", "box_GateController_9.Open", l0, l1)
  l1:Open()
end
function export:f_box_EntityLoadingMonitor_19_AllLoaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/TriggerController.lua")]
  l0.Trigger = "9223372056232140525"
  l0.CheckLookAt = nil
  l0.CheckAngle = nil
  l0.IconZOffset = nil
  l0.OasisId = nil
  l0._graph = self
  l0._name = "box_Trigger_Controller_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_02.domino|@DroneRace_02_Main|407450979"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.IconOffsetSet = DummyFunction
  l0.CustomOasisIdSet = DummyFunction
  l0.NoInteractionTextSet = DummyFunction
  l0 = self.box_EntityLoadingMonitor_19
  l1 = Boxes[PathID("domino/System/TriggerController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_02.domino|@DroneRace_02_Main|1209555421", "1209555421", "DroneRace_02_Main", "box_EntityLoadingMonitor_19.AllLoaded", "box_Trigger_Controller_3.SetDisabled", l0, l1)
  l1:SetDisabled()
end
function export:f_box_EntityLoadingMonitor_19_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_EntityLoadingMonitor_24
  l0.Entity = "9223372056232141128"
  l0 = self.box_EntityLoadingMonitor_19
  l1 = self.box_EntityLoadingMonitor_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_02.domino|@DroneRace_02_Main|1006451109", "1006451109", "DroneRace_02_Main", "box_EntityLoadingMonitor_19.Enabled", "box_EntityLoadingMonitor_24.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_EntityLoadingMonitor_54_AllLoaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GateController.lua")]
  l0.GateEntity = "9223372052020372981"
  l0.SetOpen = nil
  l0.Instant = nil
  l0._graph = self
  l0._name = "box_GateController_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_02.domino|@DroneRace_02_Main|532358388"
  l0.Out = DummyFunction
  l0.Opened = DummyFunction
  l0.Closed = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0 = self.box_EntityLoadingMonitor_54
  l1 = Boxes[PathID("domino/System/GateController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_02.domino|@DroneRace_02_Main|2123137964", "2123137964", "DroneRace_02_Main", "box_EntityLoadingMonitor_54.AllLoaded", "box_GateController_10.Open", l0, l1)
  l1:Open()
end
function export:f_box_EntityLoadingMonitor_54_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_EntityLoadingMonitor_14
  l0.Entity = "9223372052020372967"
  l0 = self.box_EntityLoadingMonitor_54
  l1 = self.box_EntityLoadingMonitor_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_02.domino|@DroneRace_02_Main|1185814738", "1185814738", "DroneRace_02_Main", "box_EntityLoadingMonitor_54.Enabled", "box_EntityLoadingMonitor_14.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_EntityLoadingMonitor_53_AllLoaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GateController.lua")]
  l0.GateEntity = "9223372052020372995"
  l0.SetOpen = nil
  l0.Instant = nil
  l0._graph = self
  l0._name = "box_GateController_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_02.domino|@DroneRace_02_Main|613999756"
  l0.Out = DummyFunction
  l0.Opened = DummyFunction
  l0.Closed = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0 = self.box_EntityLoadingMonitor_53
  l1 = Boxes[PathID("domino/System/GateController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_02.domino|@DroneRace_02_Main|1926850692", "1926850692", "DroneRace_02_Main", "box_EntityLoadingMonitor_53.AllLoaded", "box_GateController_7.Open", l0, l1)
  l1:Open()
end
function export:f_box_EntityLoadingMonitor_53_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_EntityLoadingMonitor_54
  l0.Entity = "9223372052020372981"
  l0 = self.box_EntityLoadingMonitor_53
  l1 = self.box_EntityLoadingMonitor_54
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_02.domino|@DroneRace_02_Main|483354371", "483354371", "DroneRace_02_Main", "box_EntityLoadingMonitor_53.Enabled", "box_EntityLoadingMonitor_54.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MissionLayer_v2_32_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_32
  l1 = self.box_MissionController_v4_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_02.domino|@DroneRace_02_Main|831514445", "831514445", "DroneRace_02_Main", "box_MissionLayer_v2_32.Unloaded", "box_MissionController_v4_5.Succeed", l0, l1)
  l1:Succeed()
end
function export:OnEnter_box_MultipleOR_2()
end
function export:OnEnter_box_TriggerMonitor_v2_25()
  local l0
  l0 = self.box_TriggerMonitor_v2_25
  l0.Trigger = "9223372053910215785"
end
_compilerVersion = 4
