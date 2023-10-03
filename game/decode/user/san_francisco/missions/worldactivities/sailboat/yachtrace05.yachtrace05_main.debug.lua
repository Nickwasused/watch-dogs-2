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
  self._name = "YachtRace05_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace05.domino|@YachtRace05_Main"
  self.PlayerEntity = nil
  self.LayerMain = "YachtRace05_Main"
  self.IsReplay = 0
  self.box_MissionLayer_v2_8 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_8
  l0._graph = self
  l0._name = "box_MissionLayer_v2_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace05.domino|@YachtRace05_Main|223580188"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_8_Unloaded
  l0.Reseted = DummyFunction
  self.box_CLOController_3 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_3
  l0._graph = self
  l0._name = "box_CLOController_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace05.domino|@YachtRace05_Main|598159924"
  l0.Activated = self.f_box_CLOController_3_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_MultipleOR_13 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_13
  l0._graph = self
  l0._name = "box_MultipleOR_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace05.domino|@YachtRace05_Main|795176056"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_13_Out
  self.box_MissionController_v4_7 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_7
  l0._graph = self
  l0._name = "box_MissionController_v4_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace05.domino|@YachtRace05_Main|833669279"
  self.box_RaceWithCinematic_2 = cbox:CreateBox("domino/Library/singleplayer/Racing/Racing_Helpers.RaceWithCinematic.debug.lua")
  l0 = self.box_RaceWithCinematic_2
  l0._graph = self
  l0._name = "box_RaceWithCinematic_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace05.domino|@YachtRace05_Main|838157977"
  l0.OnRaceStarted = DummyFunction
  l0.OnRaceStopped = self.f_box_RaceWithCinematic_2_OnRaceStopped
  self.box_MissionCheckpointReach_11 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_11
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace05.domino|@YachtRace05_Main|1614985955"
  l0.Out = self.f_box_MissionCheckpointReach_11_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MissionLayer_v2_9 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_9
  l0._graph = self
  l0._name = "box_MissionLayer_v2_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace05.domino|@YachtRace05_Main|1766052200"
  l0.Loaded = self.f_box_MissionLayer_v2_9_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_CLOController_1 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_1
  l0._graph = self
  l0._name = "box_CLOController_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace05.domino|@YachtRace05_Main|1894262908"
  l0.Activated = self.f_box_CLOController_1_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
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
  self:OnEnter_box_MultipleOR_13()
  l0 = self.box_MultipleOR_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace05.domino|@YachtRace05_Main|1722204078", "1722204078", "YachtRace05_Main", "CheckPoint_0", "box_MultipleOR_13.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_13()
  l0 = self.box_MultipleOR_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace05.domino|@YachtRace05_Main|1324396706", "1324396706", "YachtRace05_Main", "In", "box_MultipleOR_13.Input", self, l0)
  l0:Input(0)
end
function export:f_box_MissionLayer_v2_8_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_8
  l1 = self.box_MissionController_v4_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace05.domino|@YachtRace05_Main|1834930121", "1834930121", "YachtRace05_Main", "box_MissionLayer_v2_8.Unloaded", "box_MissionController_v4_7.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_Get_Player_ID_14_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_11
  l0.Checkpoint = "CheckPoint_0"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace05.domino|@YachtRace05_Main|340822660", "340822660", "YachtRace05_Main", "box_Get_Player_ID_14.Out", "box_MissionCheckpointReach_11.In", clone, l0)
  l0:In()
end
function export:f_box_CLOController_3_Activated()
  local l0, l1
  self = self._graph
  l0 = self.box_RaceWithCinematic_2
  l0.Config = "RaceDbConfig.9223372047437408686"
  l0.CinematicSceneEntity = "9223372059756423201"
  l0.CinematicSequenceFile = "sequences/YachtRaces/yachtrace05.seq"
  l0 = self.box_CLOController_3
  l1 = self.box_RaceWithCinematic_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace05.domino|@YachtRace05_Main|1374685116", "1374685116", "YachtRace05_Main", "box_CLOController_3.Activated", "box_RaceWithCinematic_2.StartRace", l0, l1)
  l1:StartRace()
end
function export:f_box_MultipleOR_13_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_9
  l0.LayerName = self.LayerMain
  l0 = self.box_MultipleOR_13
  l1 = self.box_MissionLayer_v2_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace05.domino|@YachtRace05_Main|221898583", "221898583", "YachtRace05_Main", "box_MultipleOR_13.Out", "box_MissionLayer_v2_9.Load", l0, l1)
  l1:Load()
end
function export:f_box_RaceWithCinematic_2_OnRaceStopped()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_8
  l0.LayerName = self.LayerMain
  l0 = self.box_RaceWithCinematic_2
  l1 = self.box_MissionLayer_v2_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace05.domino|@YachtRace05_Main|834983218", "834983218", "YachtRace05_Main", "box_RaceWithCinematic_2.OnRaceStopped", "box_MissionLayer_v2_8.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_MissionCheckpointReach_11_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_1
  l0.CLO = "9223372057710674008"
  l0.SpawnOutsideLoadingRing = 1
  l0 = self.box_MissionCheckpointReach_11
  l1 = self.box_CLOController_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace05.domino|@YachtRace05_Main|574825643", "574825643", "YachtRace05_Main", "box_MissionCheckpointReach_11.Out", "box_CLOController_1.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_MissionLayer_v2_9_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace05.domino|@YachtRace05_Main|338401714"
  l0.Out = self.f_box_Get_Player_ID_14_Out
  l0 = self.box_MissionLayer_v2_9
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace05.domino|@YachtRace05_Main|1286982183", "1286982183", "YachtRace05_Main", "box_MissionLayer_v2_9.Loaded", "box_Get_Player_ID_14.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_1_Activated()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_3
  l0.CLO = "9223372057710787203"
  l0.SpawnOutsideLoadingRing = 1
  l0 = self.box_CLOController_1
  l1 = self.box_CLOController_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace05.domino|@YachtRace05_Main|1285923443", "1285923443", "YachtRace05_Main", "box_CLOController_1.Activated", "box_CLOController_3.Activate", l0, l1)
  l1:Activate()
end
function export:OnEnter_box_MultipleOR_13()
end
_compilerVersion = 4
