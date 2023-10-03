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
  self._name = "S20M020_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M020.domino|@S20M020_Main"
  self.PlayerEntity = nil
  self.LayerMain = "S20M020_Main"
  self.PlayerRank = 2
  self.LayerExtra = "StreetRace05_Main"
  self.RaceSpawnPoint = "9223372048124668571"
  self.box_MissionLayer_v2_11 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_11
  l0._graph = self
  l0._name = "box_MissionLayer_v2_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M020.domino|@S20M020_Main|21563022"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_11_Unloaded
  l0.Reseted = DummyFunction
  self.box_MissionLayer_v2_5 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_5
  l0._graph = self
  l0._name = "box_MissionLayer_v2_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M020.domino|@S20M020_Main|263705308"
  l0.Loaded = self.f_box_MissionLayer_v2_5_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionLayer_v2_1 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_1
  l0._graph = self
  l0._name = "box_MissionLayer_v2_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M020.domino|@S20M020_Main|445342707"
  l0.Loaded = self.f_box_MissionLayer_v2_1_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionCheckpointReach_9 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_9
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M020.domino|@S20M020_Main|524868165"
  l0.Out = self.f_box_MissionCheckpointReach_9_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MissionController_v4_8 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_8
  l0._graph = self
  l0._name = "box_MissionController_v4_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M020.domino|@S20M020_Main|538095430"
  self.box_MissionLayer_v2_7 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_7
  l0._graph = self
  l0._name = "box_MissionLayer_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M020.domino|@S20M020_Main|885528982"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_7_Unloaded
  l0.Reseted = DummyFunction
  self.box_MultipleOR_2 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_2
  l0._graph = self
  l0._name = "box_MultipleOR_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M020.domino|@S20M020_Main|1411835300"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_2_Out
  self.box_RaceWithCinematic_4 = cbox:CreateBox("domino/Library/singleplayer/Racing/Racing_Helpers.RaceWithCinematic.debug.lua")
  l0 = self.box_RaceWithCinematic_4
  l0._graph = self
  l0._name = "box_RaceWithCinematic_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M020.domino|@S20M020_Main|1484916355"
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
  self:OnEnter_box_MultipleOR_2()
  l0 = self.box_MultipleOR_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M020.domino|@S20M020_Main|1914848645", "1914848645", "S20M020_Main", "CheckPoint_0", "box_MultipleOR_2.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_2()
  l0 = self.box_MultipleOR_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M020.domino|@S20M020_Main|252535073", "252535073", "S20M020_Main", "In", "box_MultipleOR_2.Input", self, l0)
  l0:Input(0)
end
function export:f_box_MissionLayer_v2_11_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_11
  l1 = self.box_MissionController_v4_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M020.domino|@S20M020_Main|175611966", "175611966", "S20M020_Main", "box_MissionLayer_v2_11.Unloaded", "box_MissionController_v4_8.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_MissionLayer_v2_5_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M020.domino|@S20M020_Main|1773884350"
  l0.Out = self.f_box_Get_Player_ID_3_Out
  l0 = self.box_MissionLayer_v2_5
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M020.domino|@S20M020_Main|297889450", "297889450", "S20M020_Main", "box_MissionLayer_v2_5.Loaded", "box_Get_Player_ID_3.In", l0, l1)
  l1:In()
end
function export:f_box_MissionLayer_v2_1_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_5
  l0.LayerName = self.LayerMain
  l0 = self.box_MissionLayer_v2_1
  l1 = self.box_MissionLayer_v2_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M020.domino|@S20M020_Main|387955073", "387955073", "S20M020_Main", "box_MissionLayer_v2_1.Loaded", "box_MissionLayer_v2_5.Load", l0, l1)
  l1:Load()
end
function export:f_box_MissionCheckpointReach_9_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_RaceWithCinematic_4
  l0.Config = "RaceDbConfig.9223372048334619789"
  l0.CinematicSceneEntity = "9223372059218980782"
  l0.CinematicSequenceFile = "sequences/StreetRace/streetrace05.seq"
  l0 = self.box_MissionCheckpointReach_9
  l1 = self.box_RaceWithCinematic_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M020.domino|@S20M020_Main|1695186813", "1695186813", "S20M020_Main", "box_MissionCheckpointReach_9.Out", "box_RaceWithCinematic_4.StartRace", l0, l1)
  l1:StartRace()
end
function export:f_box_AI_Agent_Zone_6_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_9
  l0.Checkpoint = "CheckPoint_0"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M020.domino|@S20M020_Main|1160394481", "1160394481", "S20M020_Main", "box_AI_Agent_Zone_6.Out", "box_MissionCheckpointReach_9.In", clone, l0)
  l0:In()
end
function export:f_box_MissionLayer_v2_7_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_11
  l0.LayerName = self.LayerExtra
  l0 = self.box_MissionLayer_v2_7
  l1 = self.box_MissionLayer_v2_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M020.domino|@S20M020_Main|481368994", "481368994", "S20M020_Main", "box_MissionLayer_v2_7.Unloaded", "box_MissionLayer_v2_11.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_MultipleOR_2_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_1
  l0.LayerName = self.LayerExtra
  l0 = self.box_MultipleOR_2
  l1 = self.box_MissionLayer_v2_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M020.domino|@S20M020_Main|198616388", "198616388", "S20M020_Main", "box_MultipleOR_2.Out", "box_MissionLayer_v2_1.Load", l0, l1)
  l1:Load()
end
function export:f_box_RaceWithCinematic_4_OnRaceStopped()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_7
  l0.LayerName = self.LayerMain
  l0 = self.box_RaceWithCinematic_4
  l1 = self.box_MissionLayer_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M020.domino|@S20M020_Main|808296461", "808296461", "S20M020_Main", "box_RaceWithCinematic_4.OnRaceStopped", "box_MissionLayer_v2_7.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_Get_Player_ID_3_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372047631573108"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M020.domino|@S20M020_Main|775913605"
  l0.Out = self.f_box_AI_Agent_Zone_6_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M020.domino|@S20M020_Main|266413196", "266413196", "S20M020_Main", "box_Get_Player_ID_3.Out", "box_AI_Agent_Zone_6.Enable", clone, l0)
  l0:Enable()
end
function export:OnEnter_box_MultipleOR_2()
end
_compilerVersion = 4
