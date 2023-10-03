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
  self._name = "S20M060_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M060.domino|@S20M060_Main"
  self.PlayerEntity = nil
  self.LayerMain = "S20M060_Main"
  self.PlayerRank = 2
  self.RaceSpawnPoint = "9223372048124667061"
  self.LayerExtra = "StreetRace03_Main"
  self.box_MissionLayer_v2_20 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_20
  l0._graph = self
  l0._name = "box_MissionLayer_v2_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M060.domino|@S20M060_Main|638810226"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_20_Unloaded
  l0.Reseted = DummyFunction
  self.box_MissionController_v4_21 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_21
  l0._graph = self
  l0._name = "box_MissionController_v4_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M060.domino|@S20M060_Main|908119337"
  self.box_RaceBasic_3 = cbox:CreateBox("domino/Library/singleplayer/Racing/Racing_Helpers.RaceBasic.debug.lua")
  l0 = self.box_RaceBasic_3
  l0._graph = self
  l0._name = "box_RaceBasic_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M060.domino|@S20M060_Main|958316911"
  l0.OnRaceStarted = DummyFunction
  l0.OnRaceStopped = self.f_box_RaceBasic_3_OnRaceStopped
  self.box_MissionLayer_v2_13 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_13
  l0._graph = self
  l0._name = "box_MissionLayer_v2_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M060.domino|@S20M060_Main|1208171500"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_13_Unloaded
  l0.Reseted = DummyFunction
  self.box_MultipleOR_6 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_6
  l0._graph = self
  l0._name = "box_MultipleOR_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M060.domino|@S20M060_Main|1509653281"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_6_Out
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M060.domino|@S20M060_Main|1813708603"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionCheckpointReach_9 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_9
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M060.domino|@S20M060_Main|1980719047"
  l0.Out = self.f_box_MissionCheckpointReach_9_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MissionLayer_v2_4 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_4
  l0._graph = self
  l0._name = "box_MissionLayer_v2_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M060.domino|@S20M060_Main|2083397174"
  l0.Loaded = self.f_box_MissionLayer_v2_4_Loaded
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
  self:OnEnter_box_MultipleOR_6()
  l0 = self.box_MultipleOR_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M060.domino|@S20M060_Main|1102216861", "1102216861", "S20M060_Main", "CheckPoint_0", "box_MultipleOR_6.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_6()
  l0 = self.box_MultipleOR_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M060.domino|@S20M060_Main|2026667503", "2026667503", "S20M060_Main", "In", "box_MultipleOR_6.Input", self, l0)
  l0:Input(0)
end
function export:f_box_Get_Player_ID_11_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_9
  l0.Checkpoint = "CheckPoint_0"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M060.domino|@S20M060_Main|866151334", "866151334", "S20M060_Main", "box_Get_Player_ID_11.Out", "box_MissionCheckpointReach_9.In", clone, l0)
  l0:In()
end
function export:f_box_MissionLayer_v2_20_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_13
  l0.LayerName = self.LayerExtra
  l0 = self.box_MissionLayer_v2_20
  l1 = self.box_MissionLayer_v2_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M060.domino|@S20M060_Main|390338292", "390338292", "S20M060_Main", "box_MissionLayer_v2_20.Unloaded", "box_MissionLayer_v2_13.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_RaceBasic_3_OnRaceStopped()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_20
  l0.LayerName = self.LayerMain
  l0 = self.box_RaceBasic_3
  l1 = self.box_MissionLayer_v2_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M060.domino|@S20M060_Main|1426051226", "1426051226", "S20M060_Main", "box_RaceBasic_3.OnRaceStopped", "box_MissionLayer_v2_20.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_AI_Agent_Zone_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_RaceBasic_3
  l0.Config = "RaceDbConfig.9223372048334619787"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M060.domino|@S20M060_Main|1858330876", "1858330876", "S20M060_Main", "box_AI_Agent_Zone_1.Out", "box_RaceBasic_3.StartRace", clone, l0)
  l0:StartRace()
end
function export:f_box_MissionLayer_v2_13_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_13
  l1 = self.box_MissionController_v4_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M060.domino|@S20M060_Main|2016447908", "2016447908", "S20M060_Main", "box_MissionLayer_v2_13.Unloaded", "box_MissionController_v4_21.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_MultipleOR_6_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = self.LayerExtra
  l0 = self.box_MultipleOR_6
  l1 = self.box_MissionLayer_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M060.domino|@S20M060_Main|1056779560", "1056779560", "S20M060_Main", "box_MultipleOR_6.Out", "box_MissionLayer_v2_2.Load", l0, l1)
  l1:Load()
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_4
  l0.LayerName = self.LayerMain
  l0 = self.box_MissionLayer_v2_2
  l1 = self.box_MissionLayer_v2_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M060.domino|@S20M060_Main|71674399", "71674399", "S20M060_Main", "box_MissionLayer_v2_2.Loaded", "box_MissionLayer_v2_4.Load", l0, l1)
  l1:Load()
end
function export:f_box_MissionCheckpointReach_9_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372046851756075"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M060.domino|@S20M060_Main|1121507684"
  l0.Out = self.f_box_AI_Agent_Zone_1_Out
  l0 = self.box_MissionCheckpointReach_9
  l1 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M060.domino|@S20M060_Main|824380174", "824380174", "S20M060_Main", "box_MissionCheckpointReach_9.Out", "box_AI_Agent_Zone_1.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MissionLayer_v2_4_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M060.domino|@S20M060_Main|411714319"
  l0.Out = self.f_box_Get_Player_ID_11_Out
  l0 = self.box_MissionLayer_v2_4
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M060.domino|@S20M060_Main|735970638", "735970638", "S20M060_Main", "box_MissionLayer_v2_4.Loaded", "box_Get_Player_ID_11.In", l0, l1)
  l1:In()
end
function export:OnEnter_box_MultipleOR_6()
end
_compilerVersion = 4
