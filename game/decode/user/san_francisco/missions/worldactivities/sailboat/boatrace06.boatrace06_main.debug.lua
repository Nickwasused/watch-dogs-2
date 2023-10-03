export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/Library/singleplayer/Racing/Racing_Helpers.RaceWithCinematic.debug.lua")
end
function export:Init(cbox)
  local l0
  self._name = "BoatRace06_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\BoatRace06.domino|@BoatRace06_Main"
  self.PlayerEntity = nil
  self.LayerMain = "YachtRace06_Main"
  self.gpsPathsList = {}
  self.triggersList = {}
  self.index = 0
  self.tempData = nil
  self.result = 0
  self.boat01 = nil
  self.tempData2 = nil
  self.IsReplay = 0
  self.box_MissionController_v4_3 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_3
  l0._graph = self
  l0._name = "box_MissionController_v4_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\BoatRace06.domino|@BoatRace06_Main|7628197"
  self.box_RaceWithCinematic_1 = cbox:CreateBox("domino/Library/singleplayer/Racing/Racing_Helpers.RaceWithCinematic.debug.lua")
  l0 = self.box_RaceWithCinematic_1
  l0._graph = self
  l0._name = "box_RaceWithCinematic_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\BoatRace06.domino|@BoatRace06_Main|426955036"
  l0.OnRaceStarted = DummyFunction
  l0.OnRaceStopped = self.f_box_RaceWithCinematic_1_OnRaceStopped
  self.box_CLOController_4 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_4
  l0._graph = self
  l0._name = "box_CLOController_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\BoatRace06.domino|@BoatRace06_Main|549572248"
  l0.Activated = self.f_box_CLOController_4_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_MissionLayer_v2_9 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_9
  l0._graph = self
  l0._name = "box_MissionLayer_v2_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\BoatRace06.domino|@BoatRace06_Main|759581173"
  l0.Loaded = self.f_box_MissionLayer_v2_9_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_CLOController_14 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_14
  l0._graph = self
  l0._name = "box_CLOController_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\BoatRace06.domino|@BoatRace06_Main|940846908"
  l0.Activated = self.f_box_CLOController_14_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_MissionCheckpointReach_7 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_7
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\BoatRace06.domino|@BoatRace06_Main|1311222908"
  l0.Out = self.f_box_MissionCheckpointReach_7_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MultipleOR_8 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_8
  l0._graph = self
  l0._name = "box_MultipleOR_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\BoatRace06.domino|@BoatRace06_Main|1624418043"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_8_Out
  self.box_MissionLayer_v2_5 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_5
  l0._graph = self
  l0._name = "box_MissionLayer_v2_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\BoatRace06.domino|@BoatRace06_Main|1740247297"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_5_Unloaded
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
  self:OnEnter_box_MultipleOR_8()
  l0 = self.box_MultipleOR_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\BoatRace06.domino|@BoatRace06_Main|331051130", "331051130", "BoatRace06_Main", "CheckPoint_0", "box_MultipleOR_8.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_8()
  l0 = self.box_MultipleOR_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\BoatRace06.domino|@BoatRace06_Main|931157197", "931157197", "BoatRace06_Main", "In", "box_MultipleOR_8.Input", self, l0)
  l0:Input(0)
end
function export:f_box_RaceWithCinematic_1_OnRaceStopped()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_5
  l0.LayerName = self.LayerMain
  l0 = self.box_RaceWithCinematic_1
  l1 = self.box_MissionLayer_v2_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\BoatRace06.domino|@BoatRace06_Main|1748191969", "1748191969", "BoatRace06_Main", "box_RaceWithCinematic_1.OnRaceStopped", "box_MissionLayer_v2_5.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_Get_Player_ID_6_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_7
  l0.Checkpoint = "CheckPoint_0"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\BoatRace06.domino|@BoatRace06_Main|2004381250", "2004381250", "BoatRace06_Main", "box_Get_Player_ID_6.Out", "box_MissionCheckpointReach_7.In", clone, l0)
  l0:In()
end
function export:f_box_CLOController_4_Activated()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_14
  l0.CLO = "9223372058476756821"
  l0.SpawnOutsideLoadingRing = 1
  l0 = self.box_CLOController_4
  l1 = self.box_CLOController_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\BoatRace06.domino|@BoatRace06_Main|899795431", "899795431", "BoatRace06_Main", "box_CLOController_4.Activated", "box_CLOController_14.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_MissionLayer_v2_9_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\BoatRace06.domino|@BoatRace06_Main|446185778"
  l0.Out = self.f_box_Get_Player_ID_6_Out
  l0 = self.box_MissionLayer_v2_9
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\BoatRace06.domino|@BoatRace06_Main|2112226544", "2112226544", "BoatRace06_Main", "box_MissionLayer_v2_9.Loaded", "box_Get_Player_ID_6.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_14_Activated()
  local l0, l1
  self = self._graph
  l0 = self.box_RaceWithCinematic_1
  l0.Config = "RaceDbConfig.9223372056678001664"
  l0.CinematicSceneEntity = "9223372059756423225"
  l0.CinematicSequenceFile = "sequences/YachtRaces/yachtrace06.seq"
  l0 = self.box_CLOController_14
  l1 = self.box_RaceWithCinematic_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\BoatRace06.domino|@BoatRace06_Main|1453547542", "1453547542", "BoatRace06_Main", "box_CLOController_14.Activated", "box_RaceWithCinematic_1.StartRace", l0, l1)
  l1:StartRace()
end
function export:f_box_MissionCheckpointReach_7_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_4
  l0.CLO = "9223372058476756822"
  l0.SpawnOutsideLoadingRing = 1
  l0 = self.box_MissionCheckpointReach_7
  l1 = self.box_CLOController_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\BoatRace06.domino|@BoatRace06_Main|1610385163", "1610385163", "BoatRace06_Main", "box_MissionCheckpointReach_7.Out", "box_CLOController_4.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_MultipleOR_8_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_9
  l0.LayerName = self.LayerMain
  l0 = self.box_MultipleOR_8
  l1 = self.box_MissionLayer_v2_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\BoatRace06.domino|@BoatRace06_Main|2078313331", "2078313331", "BoatRace06_Main", "box_MultipleOR_8.Out", "box_MissionLayer_v2_9.Load", l0, l1)
  l1:Load()
end
function export:f_box_MissionLayer_v2_5_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_5
  l1 = self.box_MissionController_v4_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\BoatRace06.domino|@BoatRace06_Main|1543655158", "1543655158", "BoatRace06_Main", "box_MissionLayer_v2_5.Unloaded", "box_MissionController_v4_3.Succeed", l0, l1)
  l1:Succeed()
end
function export:OnEnter_box_MultipleOR_8()
end
_compilerVersion = 4
