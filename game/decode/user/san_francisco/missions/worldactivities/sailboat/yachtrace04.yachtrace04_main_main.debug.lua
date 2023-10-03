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
  self._name = "YachtRace04_Main_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace04.domino|@YachtRace04_Main_Main"
  self.LayerMain = "YachtRace04_Main"
  self.PlayerEntity = nil
  self.IsReplay = 0
  self.box_MissionController_v4_10 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_10
  l0._graph = self
  l0._name = "box_MissionController_v4_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace04.domino|@YachtRace04_Main_Main|219324866"
  self.box_MissionLayer_v2_8 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_8
  l0._graph = self
  l0._name = "box_MissionLayer_v2_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace04.domino|@YachtRace04_Main_Main|241112863"
  l0.Loaded = self.f_box_MissionLayer_v2_8_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_CLOController_2 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_2
  l0._graph = self
  l0._name = "box_CLOController_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace04.domino|@YachtRace04_Main_Main|668597778"
  l0.Activated = self.f_box_CLOController_2_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_CLOController_3 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_3
  l0._graph = self
  l0._name = "box_CLOController_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace04.domino|@YachtRace04_Main_Main|941873648"
  l0.Activated = self.f_box_CLOController_3_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_MissionCheckpointReach_13 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_13
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace04.domino|@YachtRace04_Main_Main|1258806957"
  l0.Out = self.f_box_MissionCheckpointReach_13_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_RaceWithCinematic_1 = cbox:CreateBox("domino/Library/singleplayer/Racing/Racing_Helpers.RaceWithCinematic.debug.lua")
  l0 = self.box_RaceWithCinematic_1
  l0._graph = self
  l0._name = "box_RaceWithCinematic_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace04.domino|@YachtRace04_Main_Main|1404908890"
  l0.OnRaceStarted = DummyFunction
  l0.OnRaceStopped = self.f_box_RaceWithCinematic_1_OnRaceStopped
  self.box_MultipleOR_7 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_7
  l0._graph = self
  l0._name = "box_MultipleOR_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace04.domino|@YachtRace04_Main_Main|1511316279"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_7_Out
  self.box_MissionLayer_v2_11 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_11
  l0._graph = self
  l0._name = "box_MissionLayer_v2_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace04.domino|@YachtRace04_Main_Main|1951485232"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_11_Unloaded
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
  self:OnEnter_box_MultipleOR_7()
  l0 = self.box_MultipleOR_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace04.domino|@YachtRace04_Main_Main|1694960045", "1694960045", "YachtRace04_Main_Main", "CheckPoint_0", "box_MultipleOR_7.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_7()
  l0 = self.box_MultipleOR_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace04.domino|@YachtRace04_Main_Main|1151728349", "1151728349", "YachtRace04_Main_Main", "In", "box_MultipleOR_7.Input", self, l0)
  l0:Input(0)
end
function export:f_box_Get_Player_ID_9_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_13
  l0.Checkpoint = "CheckPoint_0"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace04.domino|@YachtRace04_Main_Main|1928397650", "1928397650", "YachtRace04_Main_Main", "box_Get_Player_ID_9.Out", "box_MissionCheckpointReach_13.In", clone, l0)
  l0:In()
end
function export:f_box_MissionLayer_v2_8_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace04.domino|@YachtRace04_Main_Main|227517264"
  l0.Out = self.f_box_Get_Player_ID_9_Out
  l0 = self.box_MissionLayer_v2_8
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace04.domino|@YachtRace04_Main_Main|181881752", "181881752", "YachtRace04_Main_Main", "box_MissionLayer_v2_8.Loaded", "box_Get_Player_ID_9.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_2_Activated()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_3
  l0.CLO = "9223372057660786657"
  l0.SpawnOutsideLoadingRing = 1
  l0 = self.box_CLOController_2
  l1 = self.box_CLOController_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace04.domino|@YachtRace04_Main_Main|1408044654", "1408044654", "YachtRace04_Main_Main", "box_CLOController_2.Activated", "box_CLOController_3.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_CLOController_3_Activated()
  local l0, l1
  self = self._graph
  l0 = self.box_RaceWithCinematic_1
  l0.Config = "RaceDbConfig.9223372047037774487"
  l0.CinematicSceneEntity = "9223372059756423180"
  l0.CinematicSequenceFile = "sequences/YachtRaces/yachtrace04.seq"
  l0 = self.box_CLOController_3
  l1 = self.box_RaceWithCinematic_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace04.domino|@YachtRace04_Main_Main|1858461339", "1858461339", "YachtRace04_Main_Main", "box_CLOController_3.Activated", "box_RaceWithCinematic_1.StartRace", l0, l1)
  l1:StartRace()
end
function export:f_box_MissionCheckpointReach_13_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_2
  l0.CLO = "9223372057660786655"
  l0.SpawnOutsideLoadingRing = 1
  l0 = self.box_MissionCheckpointReach_13
  l1 = self.box_CLOController_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace04.domino|@YachtRace04_Main_Main|1752637565", "1752637565", "YachtRace04_Main_Main", "box_MissionCheckpointReach_13.Out", "box_CLOController_2.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_RaceWithCinematic_1_OnRaceStopped()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_11
  l0.LayerName = self.LayerMain
  l0 = self.box_RaceWithCinematic_1
  l1 = self.box_MissionLayer_v2_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace04.domino|@YachtRace04_Main_Main|1899948684", "1899948684", "YachtRace04_Main_Main", "box_RaceWithCinematic_1.OnRaceStopped", "box_MissionLayer_v2_11.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_MultipleOR_7_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_8
  l0.LayerName = self.LayerMain
  l0 = self.box_MultipleOR_7
  l1 = self.box_MissionLayer_v2_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace04.domino|@YachtRace04_Main_Main|1710354758", "1710354758", "YachtRace04_Main_Main", "box_MultipleOR_7.Out", "box_MissionLayer_v2_8.Load", l0, l1)
  l1:Load()
end
function export:f_box_MissionLayer_v2_11_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_11
  l1 = self.box_MissionController_v4_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace04.domino|@YachtRace04_Main_Main|749557347", "749557347", "YachtRace04_Main_Main", "box_MissionLayer_v2_11.Unloaded", "box_MissionController_v4_10.Succeed", l0, l1)
  l1:Succeed()
end
function export:OnEnter_box_MultipleOR_7()
end
_compilerVersion = 4
