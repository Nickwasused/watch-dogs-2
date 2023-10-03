export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/Library/singleplayer/Racing/Racing_Helpers.RaceWithCinematic.debug.lua")
end
function export:Init(cbox)
  local l0
  self._name = "StreetRace04_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace04.domino|@StreetRace04_Main"
  self.PlayerEntity = nil
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace04.domino|@StreetRace04_Main|447133704"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MultipleOR_6 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_6
  l0._graph = self
  l0._name = "box_MultipleOR_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace04.domino|@StreetRace04_Main|527548237"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_6_Out
  self.box_MissionCheckpointReach_1 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_1
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace04.domino|@StreetRace04_Main|710303754"
  l0.Out = self.f_box_MissionCheckpointReach_1_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MissionController_v4_3 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_3
  l0._graph = self
  l0._name = "box_MissionController_v4_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace04.domino|@StreetRace04_Main|1455954861"
  self.box_MissionLayer_v2_10 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_10
  l0._graph = self
  l0._name = "box_MissionLayer_v2_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace04.domino|@StreetRace04_Main|1883439977"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_10_Unloaded
  l0.Reseted = DummyFunction
  self.box_RaceWithCinematic_4 = cbox:CreateBox("domino/Library/singleplayer/Racing/Racing_Helpers.RaceWithCinematic.debug.lua")
  l0 = self.box_RaceWithCinematic_4
  l0._graph = self
  l0._name = "box_RaceWithCinematic_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace04.domino|@StreetRace04_Main|1905520472"
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
  self:OnEnter_box_MultipleOR_6()
  l0 = self.box_MultipleOR_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace04.domino|@StreetRace04_Main|1831908161", "1831908161", "StreetRace04_Main", "CheckPoint_0", "box_MultipleOR_6.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_6()
  l0 = self.box_MultipleOR_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace04.domino|@StreetRace04_Main|2118506783", "2118506783", "StreetRace04_Main", "In", "box_MultipleOR_6.Input", self, l0)
  l0:Input(0)
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_1
  l0.Checkpoint = "CheckPoint_0"
  l0 = self.box_MissionLayer_v2_2
  l1 = self.box_MissionCheckpointReach_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace04.domino|@StreetRace04_Main|1654080383", "1654080383", "StreetRace04_Main", "box_MissionLayer_v2_2.Loaded", "box_MissionCheckpointReach_1.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_6_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "StreetRace04_Main"
  l0 = self.box_MultipleOR_6
  l1 = self.box_MissionLayer_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace04.domino|@StreetRace04_Main|494302246", "494302246", "StreetRace04_Main", "box_MultipleOR_6.Out", "box_MissionLayer_v2_2.Load", l0, l1)
  l1:Load()
end
function export:f_box_MissionCheckpointReach_1_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_RaceWithCinematic_4
  l0.Config = "RaceDbConfig.9223372047288118907"
  l0.CinematicSceneEntity = "9223372059218807345"
  l0.CinematicSequenceFile = "sequences/StreetRace/streetrace04.seq"
  l0 = self.box_MissionCheckpointReach_1
  l1 = self.box_RaceWithCinematic_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace04.domino|@StreetRace04_Main|1100546557", "1100546557", "StreetRace04_Main", "box_MissionCheckpointReach_1.Out", "box_RaceWithCinematic_4.StartRace", l0, l1)
  l1:StartRace()
end
function export:f_box_MissionLayer_v2_10_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_10
  l1 = self.box_MissionController_v4_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace04.domino|@StreetRace04_Main|298560134", "298560134", "StreetRace04_Main", "box_MissionLayer_v2_10.Unloaded", "box_MissionController_v4_3.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_RaceWithCinematic_4_OnRaceStopped()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_10
  l0.LayerName = "StreetRace04_Main"
  l0 = self.box_RaceWithCinematic_4
  l1 = self.box_MissionLayer_v2_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace04.domino|@StreetRace04_Main|700596388", "700596388", "StreetRace04_Main", "box_RaceWithCinematic_4.OnRaceStopped", "box_MissionLayer_v2_10.Unload", l0, l1)
  l1:Unload()
end
function export:OnEnter_box_MultipleOR_6()
end
_compilerVersion = 4
