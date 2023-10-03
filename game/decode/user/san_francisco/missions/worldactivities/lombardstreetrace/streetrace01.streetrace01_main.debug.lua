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
  self._name = "StreetRace01_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace01.domino|@StreetRace01_Main"
  self.PlayerEntity = nil
  self.box_RaceWithCinematic_1 = cbox:CreateBox("domino/Library/singleplayer/Racing/Racing_Helpers.RaceWithCinematic.debug.lua")
  l0 = self.box_RaceWithCinematic_1
  l0._graph = self
  l0._name = "box_RaceWithCinematic_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace01.domino|@StreetRace01_Main|61158075"
  l0.OnRaceStarted = DummyFunction
  l0.OnRaceStopped = self.f_box_RaceWithCinematic_1_OnRaceStopped
  self.box_MissionController_v4_3 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_3
  l0._graph = self
  l0._name = "box_MissionController_v4_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace01.domino|@StreetRace01_Main|1355988164"
  self.box_MultipleOR_7 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_7
  l0._graph = self
  l0._name = "box_MultipleOR_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace01.domino|@StreetRace01_Main|1469947379"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_7_Out
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace01.domino|@StreetRace01_Main|1868330790"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionLayer_v2_10 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_10
  l0._graph = self
  l0._name = "box_MissionLayer_v2_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace01.domino|@StreetRace01_Main|1886820546"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_10_Unloaded
  l0.Reseted = DummyFunction
  self.box_MissionCheckpointReach_5 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_5
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace01.domino|@StreetRace01_Main|1952920054"
  l0.Out = self.f_box_MissionCheckpointReach_5_Out
  l0.AllCheckpointsDisabled = DummyFunction
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
  self:OnEnter_box_MultipleOR_7()
  l0 = self.box_MultipleOR_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace01.domino|@StreetRace01_Main|111948314", "111948314", "StreetRace01_Main", "CheckPoint_0", "box_MultipleOR_7.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_7()
  l0 = self.box_MultipleOR_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace01.domino|@StreetRace01_Main|139693067", "139693067", "StreetRace01_Main", "In", "box_MultipleOR_7.Input", self, l0)
  l0:Input(0)
end
function export:f_box_RaceWithCinematic_1_OnRaceStopped()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_10
  l0.LayerName = "StreetRace01_Main"
  l0 = self.box_RaceWithCinematic_1
  l1 = self.box_MissionLayer_v2_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace01.domino|@StreetRace01_Main|1917913469", "1917913469", "StreetRace01_Main", "box_RaceWithCinematic_1.OnRaceStopped", "box_MissionLayer_v2_10.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_MultipleOR_7_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "StreetRace01_Main"
  l0 = self.box_MultipleOR_7
  l1 = self.box_MissionLayer_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace01.domino|@StreetRace01_Main|1138677873", "1138677873", "StreetRace01_Main", "box_MultipleOR_7.Out", "box_MissionLayer_v2_2.Load", l0, l1)
  l1:Load()
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_5
  l0.Checkpoint = "CheckPoint_0"
  l0 = self.box_MissionLayer_v2_2
  l1 = self.box_MissionCheckpointReach_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace01.domino|@StreetRace01_Main|1415864964", "1415864964", "StreetRace01_Main", "box_MissionLayer_v2_2.Loaded", "box_MissionCheckpointReach_5.In", l0, l1)
  l1:In()
end
function export:f_box_MissionLayer_v2_10_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_10
  l1 = self.box_MissionController_v4_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace01.domino|@StreetRace01_Main|2050911025", "2050911025", "StreetRace01_Main", "box_MissionLayer_v2_10.Unloaded", "box_MissionController_v4_3.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_MissionCheckpointReach_5_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_RaceWithCinematic_1
  l0.Config = "RaceDbConfig.9223372046908759017"
  l0.CinematicSceneEntity = "9223372059218806925"
  l0.CinematicSequenceFile = "sequences/StreetRace/streetrace01.seq"
  l0 = self.box_MissionCheckpointReach_5
  l1 = self.box_RaceWithCinematic_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace01.domino|@StreetRace01_Main|1375304075", "1375304075", "StreetRace01_Main", "box_MissionCheckpointReach_5.Out", "box_RaceWithCinematic_1.StartRace", l0, l1)
  l1:StartRace()
end
function export:OnEnter_box_MultipleOR_7()
end
_compilerVersion = 4
