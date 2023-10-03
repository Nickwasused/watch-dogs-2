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
  cbox:RegisterBox("domino/Library/singleplayer/Racing/Racing_Helpers.RaceWithCinematic.debug.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S20M080_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M080.domino|@S20M080_Main"
  self.PlayerEntity = nil
  self.LayerMain = "S20M080_Main"
  self.PlayerRank = 2
  self.RaceSpawnPoint = "9223372056670523528"
  self.LayerExtra = "StreetRace01_Main"
  self.box_MissionCheckpointReach_8 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_8
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M080.domino|@S20M080_Main|147645178"
  l0.Out = self.f_box_MissionCheckpointReach_8_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MultipleOR_11 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_11
  l0._graph = self
  l0._name = "box_MultipleOR_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M080.domino|@S20M080_Main|320884531"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_11_Out
  self.box_MissionLayer_v2_21 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_21
  l0._graph = self
  l0._name = "box_MissionLayer_v2_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M080.domino|@S20M080_Main|356509050"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_21_Unloaded
  l0.Reseted = DummyFunction
  self.box_RaceWithCinematic_3 = cbox:CreateBox("domino/Library/singleplayer/Racing/Racing_Helpers.RaceWithCinematic.debug.lua")
  l0 = self.box_RaceWithCinematic_3
  l0._graph = self
  l0._name = "box_RaceWithCinematic_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M080.domino|@S20M080_Main|459655786"
  l0.OnRaceStarted = DummyFunction
  l0.OnRaceStopped = self.f_box_RaceWithCinematic_3_OnRaceStopped
  self.box_MissionController_v4_20 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_20
  l0._graph = self
  l0._name = "box_MissionController_v4_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M080.domino|@S20M080_Main|827393570"
  self.box_MissionLayer_v2_1 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_1
  l0._graph = self
  l0._name = "box_MissionLayer_v2_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M080.domino|@S20M080_Main|1038206927"
  l0.Loaded = self.f_box_MissionLayer_v2_1_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionLayer_v2_4 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_4
  l0._graph = self
  l0._name = "box_MissionLayer_v2_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M080.domino|@S20M080_Main|1118699752"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_4_Unloaded
  l0.Reseted = DummyFunction
  self.box_MissionLayer_v2_7 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_7
  l0._graph = self
  l0._name = "box_MissionLayer_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M080.domino|@S20M080_Main|2080405926"
  l0.Loaded = self.f_box_MissionLayer_v2_7_Loaded
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
  self:OnEnter_box_MultipleOR_11()
  l0 = self.box_MultipleOR_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M080.domino|@S20M080_Main|726886428", "726886428", "S20M080_Main", "CheckPoint_0", "box_MultipleOR_11.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_11()
  l0 = self.box_MultipleOR_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M080.domino|@S20M080_Main|461879205", "461879205", "S20M080_Main", "In", "box_MultipleOR_11.Input", self, l0)
  l0:Input(0)
end
function export:f_box_MissionCheckpointReach_8_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372056670523556"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M080.domino|@S20M080_Main|1979059842"
  l0.Out = self.f_box_AI_Agent_Zone_2_Out
  l0 = self.box_MissionCheckpointReach_8
  l1 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M080.domino|@S20M080_Main|1961242050", "1961242050", "S20M080_Main", "box_MissionCheckpointReach_8.Out", "box_AI_Agent_Zone_2.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MultipleOR_11_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_7
  l0.LayerName = self.LayerExtra
  l0 = self.box_MultipleOR_11
  l1 = self.box_MissionLayer_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M080.domino|@S20M080_Main|1948038640", "1948038640", "S20M080_Main", "box_MultipleOR_11.Out", "box_MissionLayer_v2_7.Load", l0, l1)
  l1:Load()
end
function export:f_box_MissionLayer_v2_21_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_21
  l1 = self.box_MissionController_v4_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M080.domino|@S20M080_Main|281759981", "281759981", "S20M080_Main", "box_MissionLayer_v2_21.Unloaded", "box_MissionController_v4_20.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_RaceWithCinematic_3_OnRaceStopped()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_4
  l0.LayerName = self.LayerMain
  l0 = self.box_RaceWithCinematic_3
  l1 = self.box_MissionLayer_v2_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M080.domino|@S20M080_Main|1368469369", "1368469369", "S20M080_Main", "box_RaceWithCinematic_3.OnRaceStopped", "box_MissionLayer_v2_4.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_MissionLayer_v2_1_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M080.domino|@S20M080_Main|1593446741"
  l0.Out = self.f_box_Get_Player_ID_5_Out
  l0 = self.box_MissionLayer_v2_1
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M080.domino|@S20M080_Main|339100279", "339100279", "S20M080_Main", "box_MissionLayer_v2_1.Loaded", "box_Get_Player_ID_5.In", l0, l1)
  l1:In()
end
function export:f_box_MissionLayer_v2_4_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_21
  l0.LayerName = self.LayerExtra
  l0 = self.box_MissionLayer_v2_4
  l1 = self.box_MissionLayer_v2_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M080.domino|@S20M080_Main|1861390476", "1861390476", "S20M080_Main", "box_MissionLayer_v2_4.Unloaded", "box_MissionLayer_v2_21.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_Get_Player_ID_5_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_8
  l0.Checkpoint = "CheckPoint_0"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M080.domino|@S20M080_Main|1364738341", "1364738341", "S20M080_Main", "box_Get_Player_ID_5.Out", "box_MissionCheckpointReach_8.In", clone, l0)
  l0:In()
end
function export:f_box_AI_Agent_Zone_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_RaceWithCinematic_3
  l0.Config = "RaceDbConfig.9223372048334619785"
  l0.CinematicSceneEntity = "9223372059218806925"
  l0.CinematicSequenceFile = "sequences/StreetRace/streetrace01.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M080.domino|@S20M080_Main|1139710270", "1139710270", "S20M080_Main", "box_AI_Agent_Zone_2.Out", "box_RaceWithCinematic_3.StartRace", clone, l0)
  l0:StartRace()
end
function export:f_box_MissionLayer_v2_7_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_1
  l0.LayerName = self.LayerMain
  l0 = self.box_MissionLayer_v2_7
  l1 = self.box_MissionLayer_v2_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M080.domino|@S20M080_Main|1877129310", "1877129310", "S20M080_Main", "box_MissionLayer_v2_7.Loaded", "box_MissionLayer_v2_1.Load", l0, l1)
  l1:Load()
end
function export:OnEnter_box_MultipleOR_11()
end
_compilerVersion = 4
