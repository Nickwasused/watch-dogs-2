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
  self._name = "StreetRace05_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace05.domino|@StreetRace05_Main"
  self.PlayerEntity = nil
  self.box_MissionLayer_v2_7 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_7
  l0._graph = self
  l0._name = "box_MissionLayer_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace05.domino|@StreetRace05_Main|504420946"
  l0.Loaded = self.f_box_MissionLayer_v2_7_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionLayer_v2_9 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_9
  l0._graph = self
  l0._name = "box_MissionLayer_v2_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace05.domino|@StreetRace05_Main|885119461"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_9_Unloaded
  l0.Reseted = DummyFunction
  self.box_MissionCheckpointReach_6 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_6
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace05.domino|@StreetRace05_Main|1439560790"
  l0.Out = self.f_box_MissionCheckpointReach_6_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_RaceWithCinematic_3 = cbox:CreateBox("domino/Library/singleplayer/Racing/Racing_Helpers.RaceWithCinematic.debug.lua")
  l0 = self.box_RaceWithCinematic_3
  l0._graph = self
  l0._name = "box_RaceWithCinematic_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace05.domino|@StreetRace05_Main|1461649614"
  l0.OnRaceStarted = DummyFunction
  l0.OnRaceStopped = self.f_box_RaceWithCinematic_3_OnRaceStopped
  self.box_MultipleOR_1 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_1
  l0._graph = self
  l0._name = "box_MultipleOR_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace05.domino|@StreetRace05_Main|1494033728"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_1_Out
  self.box_MissionController_v4_2 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_2
  l0._graph = self
  l0._name = "box_MissionController_v4_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace05.domino|@StreetRace05_Main|1634498933"
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
  self:OnEnter_box_MultipleOR_1()
  l0 = self.box_MultipleOR_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace05.domino|@StreetRace05_Main|1933963733", "1933963733", "StreetRace05_Main", "CheckPoint_0", "box_MultipleOR_1.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_1()
  l0 = self.box_MultipleOR_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace05.domino|@StreetRace05_Main|1530933245", "1530933245", "StreetRace05_Main", "In", "box_MultipleOR_1.Input", self, l0)
  l0:Input(0)
end
function export:f_box_MissionLayer_v2_7_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_6
  l0.Checkpoint = "CheckPoint_0"
  l0 = self.box_MissionLayer_v2_7
  l1 = self.box_MissionCheckpointReach_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace05.domino|@StreetRace05_Main|1514737656", "1514737656", "StreetRace05_Main", "box_MissionLayer_v2_7.Loaded", "box_MissionCheckpointReach_6.In", l0, l1)
  l1:In()
end
function export:f_box_MissionLayer_v2_9_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_9
  l1 = self.box_MissionController_v4_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace05.domino|@StreetRace05_Main|873052319", "873052319", "StreetRace05_Main", "box_MissionLayer_v2_9.Unloaded", "box_MissionController_v4_2.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_MissionCheckpointReach_6_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_RaceWithCinematic_3
  l0.Config = "RaceDbConfig.9223372047288118908"
  l0.CinematicSceneEntity = "9223372059218980782"
  l0.CinematicSequenceFile = "sequences/StreetRace/streetrace05.seq"
  l0 = self.box_MissionCheckpointReach_6
  l1 = self.box_RaceWithCinematic_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace05.domino|@StreetRace05_Main|717368912", "717368912", "StreetRace05_Main", "box_MissionCheckpointReach_6.Out", "box_RaceWithCinematic_3.StartRace", l0, l1)
  l1:StartRace()
end
function export:f_box_RaceWithCinematic_3_OnRaceStopped()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_9
  l0.LayerName = "StreetRace05_Main"
  l0 = self.box_RaceWithCinematic_3
  l1 = self.box_MissionLayer_v2_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace05.domino|@StreetRace05_Main|1431169376", "1431169376", "StreetRace05_Main", "box_RaceWithCinematic_3.OnRaceStopped", "box_MissionLayer_v2_9.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_MultipleOR_1_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_7
  l0.LayerName = "StreetRace05_Main"
  l0 = self.box_MultipleOR_1
  l1 = self.box_MissionLayer_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace05.domino|@StreetRace05_Main|2091942604", "2091942604", "StreetRace05_Main", "box_MultipleOR_1.Out", "box_MissionLayer_v2_7.Load", l0, l1)
  l1:Load()
end
function export:OnEnter_box_MultipleOR_1()
end
_compilerVersion = 4
