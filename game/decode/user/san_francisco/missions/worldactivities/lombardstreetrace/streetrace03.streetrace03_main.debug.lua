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
  self._name = "StreetRace03_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace03.domino|@StreetRace03_Main"
  self.PlayerEntity = nil
  self.box_RaceWithCinematic_2 = cbox:CreateBox("domino/Library/singleplayer/Racing/Racing_Helpers.RaceWithCinematic.debug.lua")
  l0 = self.box_RaceWithCinematic_2
  l0._graph = self
  l0._name = "box_RaceWithCinematic_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace03.domino|@StreetRace03_Main|1187230532"
  l0.OnRaceStarted = DummyFunction
  l0.OnRaceStopped = self.f_box_RaceWithCinematic_2_OnRaceStopped
  self.box_MissionController_v4_7 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_7
  l0._graph = self
  l0._name = "box_MissionController_v4_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace03.domino|@StreetRace03_Main|1258092544"
  self.box_MissionLayer_v2_5 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_5
  l0._graph = self
  l0._name = "box_MissionLayer_v2_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace03.domino|@StreetRace03_Main|1404677478"
  l0.Loaded = self.f_box_MissionLayer_v2_5_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionCheckpointReach_3 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_3
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace03.domino|@StreetRace03_Main|1493742759"
  l0.Out = self.f_box_MissionCheckpointReach_3_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MissionLayer_v2_9 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_9
  l0._graph = self
  l0._name = "box_MissionLayer_v2_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace03.domino|@StreetRace03_Main|2083109950"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_9_Unloaded
  l0.Reseted = DummyFunction
  self.box_MultipleOR_1 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_1
  l0._graph = self
  l0._name = "box_MultipleOR_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace03.domino|@StreetRace03_Main|2132410657"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_1_Out
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace03.domino|@StreetRace03_Main|810816325", "810816325", "StreetRace03_Main", "CheckPoint_0", "box_MultipleOR_1.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_1()
  l0 = self.box_MultipleOR_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace03.domino|@StreetRace03_Main|1136666811", "1136666811", "StreetRace03_Main", "In", "box_MultipleOR_1.Input", self, l0)
  l0:Input(0)
end
function export:f_box_RaceWithCinematic_2_OnRaceStopped()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_9
  l0.LayerName = "StreetRace03_Main"
  l0 = self.box_RaceWithCinematic_2
  l1 = self.box_MissionLayer_v2_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace03.domino|@StreetRace03_Main|205823857", "205823857", "StreetRace03_Main", "box_RaceWithCinematic_2.OnRaceStopped", "box_MissionLayer_v2_9.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_MissionLayer_v2_5_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_3
  l0.Checkpoint = "CheckPoint_0"
  l0 = self.box_MissionLayer_v2_5
  l1 = self.box_MissionCheckpointReach_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace03.domino|@StreetRace03_Main|1331160534", "1331160534", "StreetRace03_Main", "box_MissionLayer_v2_5.Loaded", "box_MissionCheckpointReach_3.In", l0, l1)
  l1:In()
end
function export:f_box_MissionCheckpointReach_3_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_RaceWithCinematic_2
  l0.Config = "RaceDbConfig.9223372047288118906"
  l0.CinematicSceneEntity = "9223372059218807213"
  l0.CinematicSequenceFile = "sequences/StreetRace/streetrace03.seq"
  l0 = self.box_MissionCheckpointReach_3
  l1 = self.box_RaceWithCinematic_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace03.domino|@StreetRace03_Main|351825954", "351825954", "StreetRace03_Main", "box_MissionCheckpointReach_3.Out", "box_RaceWithCinematic_2.StartRace", l0, l1)
  l1:StartRace()
end
function export:f_box_MissionLayer_v2_9_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_9
  l1 = self.box_MissionController_v4_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace03.domino|@StreetRace03_Main|858763027", "858763027", "StreetRace03_Main", "box_MissionLayer_v2_9.Unloaded", "box_MissionController_v4_7.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_MultipleOR_1_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_5
  l0.LayerName = "StreetRace03_Main"
  l0 = self.box_MultipleOR_1
  l1 = self.box_MissionLayer_v2_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace03.domino|@StreetRace03_Main|2113960668", "2113960668", "StreetRace03_Main", "box_MultipleOR_1.Out", "box_MissionLayer_v2_5.Load", l0, l1)
  l1:Load()
end
function export:OnEnter_box_MultipleOR_1()
end
_compilerVersion = 4
