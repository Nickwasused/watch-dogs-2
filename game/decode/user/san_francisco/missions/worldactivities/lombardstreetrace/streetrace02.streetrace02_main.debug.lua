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
  self._name = "StreetRace02_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace02.domino|@StreetRace02_Main"
  self.PlayerEntity = nil
  self.car = nil
  self.box_MultipleOR_6 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_6
  l0._graph = self
  l0._name = "box_MultipleOR_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace02.domino|@StreetRace02_Main|39828635"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_6_Out
  self.box_MissionCheckpointReach_3 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_3
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace02.domino|@StreetRace02_Main|70671066"
  l0.Out = self.f_box_MissionCheckpointReach_3_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MissionController_v4_7 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_7
  l0._graph = self
  l0._name = "box_MissionController_v4_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace02.domino|@StreetRace02_Main|573062842"
  self.box_RaceWithCinematic_1 = cbox:CreateBox("domino/Library/singleplayer/Racing/Racing_Helpers.RaceWithCinematic.debug.lua")
  l0 = self.box_RaceWithCinematic_1
  l0._graph = self
  l0._name = "box_RaceWithCinematic_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace02.domino|@StreetRace02_Main|1148126956"
  l0.OnRaceStarted = DummyFunction
  l0.OnRaceStopped = self.f_box_RaceWithCinematic_1_OnRaceStopped
  self.box_MissionLayer_v2_10 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_10
  l0._graph = self
  l0._name = "box_MissionLayer_v2_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace02.domino|@StreetRace02_Main|1350967583"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_10_Unloaded
  l0.Reseted = DummyFunction
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace02.domino|@StreetRace02_Main|1370007532"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace02.domino|@StreetRace02_Main|1353222283", "1353222283", "StreetRace02_Main", "CheckPoint_0", "box_MultipleOR_6.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_6()
  l0 = self.box_MultipleOR_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace02.domino|@StreetRace02_Main|939286671", "939286671", "StreetRace02_Main", "In", "box_MultipleOR_6.Input", self, l0)
  l0:Input(0)
end
function export:f_box_MultipleOR_6_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "StreetRace02_Main"
  l0 = self.box_MultipleOR_6
  l1 = self.box_MissionLayer_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace02.domino|@StreetRace02_Main|2061259885", "2061259885", "StreetRace02_Main", "box_MultipleOR_6.Out", "box_MissionLayer_v2_2.Load", l0, l1)
  l1:Load()
end
function export:f_box_MissionCheckpointReach_3_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_RaceWithCinematic_1
  l0.Config = "RaceDbConfig.9223372047288118905"
  l0.CinematicSceneEntity = "9223372059218807166"
  l0.CinematicSequenceFile = "sequences/StreetRace/streetrace02.seq"
  l0 = self.box_MissionCheckpointReach_3
  l1 = self.box_RaceWithCinematic_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace02.domino|@StreetRace02_Main|1304918472", "1304918472", "StreetRace02_Main", "box_MissionCheckpointReach_3.Out", "box_RaceWithCinematic_1.StartRace", l0, l1)
  l1:StartRace()
end
function export:f_box_RaceWithCinematic_1_OnRaceStopped()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_10
  l0.LayerName = "StreetRace02_Main"
  l0 = self.box_RaceWithCinematic_1
  l1 = self.box_MissionLayer_v2_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace02.domino|@StreetRace02_Main|1060919254", "1060919254", "StreetRace02_Main", "box_RaceWithCinematic_1.OnRaceStopped", "box_MissionLayer_v2_10.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_MissionLayer_v2_10_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_10
  l1 = self.box_MissionController_v4_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace02.domino|@StreetRace02_Main|1375000278", "1375000278", "StreetRace02_Main", "box_MissionLayer_v2_10.Unloaded", "box_MissionController_v4_7.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_3
  l0.Checkpoint = "CheckPoint_0"
  l0 = self.box_MissionLayer_v2_2
  l1 = self.box_MissionCheckpointReach_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\LombardStreetRace\\StreetRace02.domino|@StreetRace02_Main|2065297537", "2065297537", "StreetRace02_Main", "box_MissionLayer_v2_2.Loaded", "box_MissionCheckpointReach_3.In", l0, l1)
  l1:In()
end
function export:OnEnter_box_MultipleOR_6()
end
_compilerVersion = 4
