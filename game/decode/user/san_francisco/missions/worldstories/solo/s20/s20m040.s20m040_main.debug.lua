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
  cbox:RegisterBox("domino/Library/singleplayer/Racing/Racing_Helpers.RaceBasic.debug.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S20M040_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M040.domino|@S20M040_Main"
  self.PlayerEntity = nil
  self.LayerMain = "S20M040_Main"
  self.PlayerRank = 2
  self.LayerExtra = "StreetRace04_Main"
  self.RaceSpawnPoint = "9223372048124668567"
  self.box_MissionLayer_v2_22 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_22
  l0._graph = self
  l0._name = "box_MissionLayer_v2_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M040.domino|@S20M040_Main|240608655"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_22_Unloaded
  l0.Reseted = DummyFunction
  self.box_MultipleOR_9 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_9
  l0._graph = self
  l0._name = "box_MultipleOR_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M040.domino|@S20M040_Main|324156216"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_9_Out
  self.box_MissionLayer_v2_11 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_11
  l0._graph = self
  l0._name = "box_MissionLayer_v2_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M040.domino|@S20M040_Main|371341969"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_11_Unloaded
  l0.Reseted = DummyFunction
  self.box_MissionController_v4_6 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_6
  l0._graph = self
  l0._name = "box_MissionController_v4_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M040.domino|@S20M040_Main|414746258"
  self.box_MissionLayer_v2_5 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_5
  l0._graph = self
  l0._name = "box_MissionLayer_v2_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M040.domino|@S20M040_Main|1222867930"
  l0.Loaded = self.f_box_MissionLayer_v2_5_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionCheckpointReach_10 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_10
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M040.domino|@S20M040_Main|1379663879"
  l0.Out = self.f_box_MissionCheckpointReach_10_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_RaceBasic_3 = cbox:CreateBox("domino/Library/singleplayer/Racing/Racing_Helpers.RaceBasic.debug.lua")
  l0 = self.box_RaceBasic_3
  l0._graph = self
  l0._name = "box_RaceBasic_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M040.domino|@S20M040_Main|1769334305"
  l0.OnRaceStarted = DummyFunction
  l0.OnRaceStopped = self.f_box_RaceBasic_3_OnRaceStopped
  self.box_MissionLayer_v2_1 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_1
  l0._graph = self
  l0._name = "box_MissionLayer_v2_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M040.domino|@S20M040_Main|2057328465"
  l0.Loaded = self.f_box_MissionLayer_v2_1_Loaded
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
  self:OnEnter_box_MultipleOR_9()
  l0 = self.box_MultipleOR_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M040.domino|@S20M040_Main|570736135", "570736135", "S20M040_Main", "CheckPoint_0", "box_MultipleOR_9.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_9()
  l0 = self.box_MultipleOR_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M040.domino|@S20M040_Main|491235921", "491235921", "S20M040_Main", "In", "box_MultipleOR_9.Input", self, l0)
  l0:Input(0)
end
function export:f_box_AI_Agent_Zone_7_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_10
  l0.Checkpoint = "CheckPoint_0"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M040.domino|@S20M040_Main|365006925", "365006925", "S20M040_Main", "box_AI_Agent_Zone_7.Out", "box_MissionCheckpointReach_10.In", clone, l0)
  l0:In()
end
function export:f_box_MissionLayer_v2_22_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_11
  l0.LayerName = self.LayerExtra
  l0 = self.box_MissionLayer_v2_22
  l1 = self.box_MissionLayer_v2_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M040.domino|@S20M040_Main|1662938409", "1662938409", "S20M040_Main", "box_MissionLayer_v2_22.Unloaded", "box_MissionLayer_v2_11.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_MultipleOR_9_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_1
  l0.LayerName = self.LayerExtra
  l0 = self.box_MultipleOR_9
  l1 = self.box_MissionLayer_v2_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M040.domino|@S20M040_Main|1983232672", "1983232672", "S20M040_Main", "box_MultipleOR_9.Out", "box_MissionLayer_v2_1.Load", l0, l1)
  l1:Load()
end
function export:f_box_MissionLayer_v2_11_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_11
  l1 = self.box_MissionController_v4_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M040.domino|@S20M040_Main|1775707882", "1775707882", "S20M040_Main", "box_MissionLayer_v2_11.Unloaded", "box_MissionController_v4_6.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_Get_Player_ID_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372047518601075"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M040.domino|@S20M040_Main|234474474"
  l0.Out = self.f_box_AI_Agent_Zone_7_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M040.domino|@S20M040_Main|1671053314", "1671053314", "S20M040_Main", "box_Get_Player_ID_2.Out", "box_AI_Agent_Zone_7.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MissionLayer_v2_5_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M040.domino|@S20M040_Main|943723589"
  l0.Out = self.f_box_Get_Player_ID_2_Out
  l0 = self.box_MissionLayer_v2_5
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M040.domino|@S20M040_Main|604523824", "604523824", "S20M040_Main", "box_MissionLayer_v2_5.Loaded", "box_Get_Player_ID_2.In", l0, l1)
  l1:In()
end
function export:f_box_MissionCheckpointReach_10_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_RaceBasic_3
  l0.Config = "RaceDbConfig.9223372048334619788"
  l0 = self.box_MissionCheckpointReach_10
  l1 = self.box_RaceBasic_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M040.domino|@S20M040_Main|952027767", "952027767", "S20M040_Main", "box_MissionCheckpointReach_10.Out", "box_RaceBasic_3.StartRace", l0, l1)
  l1:StartRace()
end
function export:f_box_RaceBasic_3_OnRaceStopped()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_22
  l0.LayerName = self.LayerMain
  l0 = self.box_RaceBasic_3
  l1 = self.box_MissionLayer_v2_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M040.domino|@S20M040_Main|1903794769", "1903794769", "S20M040_Main", "box_RaceBasic_3.OnRaceStopped", "box_MissionLayer_v2_22.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_MissionLayer_v2_1_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_5
  l0.LayerName = self.LayerMain
  l0 = self.box_MissionLayer_v2_1
  l1 = self.box_MissionLayer_v2_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M040.domino|@S20M040_Main|563731355", "563731355", "S20M040_Main", "box_MissionLayer_v2_1.Loaded", "box_MissionLayer_v2_5.Load", l0, l1)
  l1:Load()
end
function export:OnEnter_box_MultipleOR_9()
end
_compilerVersion = 4
