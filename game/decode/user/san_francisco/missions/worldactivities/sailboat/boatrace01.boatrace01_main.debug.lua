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
  self._name = "BoatRace01_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\BoatRace01.domino|@BoatRace01_Main"
  self.PlayerEntity = nil
  self.EnemyYacht = nil
  self.Enemy = nil
  self.Collider = nil
  self.Player = nil
  self.Yacht = nil
  self.MissionLayerName = "BoatRace01_Main"
  self.CheckpointTrigger01 = "9223372045945594051"
  self.EnemyRacePath = "9223372045945594340"
  self.BoatPlayer = nil
  self.LayerMain = "YachtRace01_Main"
  self.IsReplay = 0
  self.box_RaceWithCinematic_3 = cbox:CreateBox("domino/Library/singleplayer/Racing/Racing_Helpers.RaceWithCinematic.debug.lua")
  l0 = self.box_RaceWithCinematic_3
  l0._graph = self
  l0._name = "box_RaceWithCinematic_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\BoatRace01.domino|@BoatRace01_Main|160685140"
  l0.OnRaceStarted = DummyFunction
  l0.OnRaceStopped = self.f_box_RaceWithCinematic_3_OnRaceStopped
  self.box_CLOController_5 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_5
  l0._graph = self
  l0._name = "box_CLOController_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\BoatRace01.domino|@BoatRace01_Main|618482487"
  l0.Activated = self.f_box_CLOController_5_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_MissionController_v4_2 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_2
  l0._graph = self
  l0._name = "box_MissionController_v4_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\BoatRace01.domino|@BoatRace01_Main|811131694"
  self.box_MissionLayer_v2_1 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_1
  l0._graph = self
  l0._name = "box_MissionLayer_v2_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\BoatRace01.domino|@BoatRace01_Main|895670096"
  l0.Loaded = self.f_box_MissionLayer_v2_1_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MultipleOR_6 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_6
  l0._graph = self
  l0._name = "box_MultipleOR_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\BoatRace01.domino|@BoatRace01_Main|1630805337"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_6_Out
  self.box_CLOController_7 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_7
  l0._graph = self
  l0._name = "box_CLOController_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\BoatRace01.domino|@BoatRace01_Main|1845006925"
  l0.Activated = self.f_box_CLOController_7_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_MissionCheckpointReach_4 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_4
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\BoatRace01.domino|@BoatRace01_Main|1998648084"
  l0.Out = self.f_box_MissionCheckpointReach_4_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MissionLayer_v2_10 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_10
  l0._graph = self
  l0._name = "box_MissionLayer_v2_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\BoatRace01.domino|@BoatRace01_Main|2050869224"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_10_Unloaded
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\BoatRace01.domino|@BoatRace01_Main|1121272380", "1121272380", "BoatRace01_Main", "CheckPoint_0", "box_MultipleOR_6.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_6()
  l0 = self.box_MultipleOR_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\BoatRace01.domino|@BoatRace01_Main|651471134", "651471134", "BoatRace01_Main", "In", "box_MultipleOR_6.Input", self, l0)
  l0:Input(0)
end
function export:f_box_RaceWithCinematic_3_OnRaceStopped()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_10
  l0.LayerName = self.LayerMain
  l0 = self.box_RaceWithCinematic_3
  l1 = self.box_MissionLayer_v2_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\BoatRace01.domino|@BoatRace01_Main|1683375693", "1683375693", "BoatRace01_Main", "box_RaceWithCinematic_3.OnRaceStopped", "box_MissionLayer_v2_10.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_CLOController_5_Activated()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_7
  l0.CLO = "9223372057710904925"
  l0.SpawnOutsideLoadingRing = 1
  l0 = self.box_CLOController_5
  l1 = self.box_CLOController_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\BoatRace01.domino|@BoatRace01_Main|1272089808", "1272089808", "BoatRace01_Main", "box_CLOController_5.Activated", "box_CLOController_7.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_MissionLayer_v2_1_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\BoatRace01.domino|@BoatRace01_Main|1647649517"
  l0.Out = self.f_box_Get_Player_ID_11_Out
  l0 = self.box_MissionLayer_v2_1
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\BoatRace01.domino|@BoatRace01_Main|1684764842", "1684764842", "BoatRace01_Main", "box_MissionLayer_v2_1.Loaded", "box_Get_Player_ID_11.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_6_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_1
  l0.LayerName = self.LayerMain
  l0 = self.box_MultipleOR_6
  l1 = self.box_MissionLayer_v2_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\BoatRace01.domino|@BoatRace01_Main|2121617660", "2121617660", "BoatRace01_Main", "box_MultipleOR_6.Out", "box_MissionLayer_v2_1.Load", l0, l1)
  l1:Load()
end
function export:f_box_Get_Player_ID_11_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_4
  l0.Checkpoint = "CheckPoint_0"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\BoatRace01.domino|@BoatRace01_Main|1223063207", "1223063207", "BoatRace01_Main", "box_Get_Player_ID_11.Out", "box_MissionCheckpointReach_4.In", clone, l0)
  l0:In()
end
function export:f_box_CLOController_7_Activated()
  local l0, l1
  self = self._graph
  l0 = self.box_RaceWithCinematic_3
  l0.Config = "RaceDbConfig.9223372047122140531"
  l0.CinematicSceneEntity = "9223372059756242120"
  l0.CinematicSequenceFile = "sequences/YachtRaces/yachtrace01.seq"
  l0 = self.box_CLOController_7
  l1 = self.box_RaceWithCinematic_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\BoatRace01.domino|@BoatRace01_Main|549360939", "549360939", "BoatRace01_Main", "box_CLOController_7.Activated", "box_RaceWithCinematic_3.StartRace", l0, l1)
  l1:StartRace()
end
function export:f_box_MissionCheckpointReach_4_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_5
  l0.CLO = "9223372057710904926"
  l0.SpawnOutsideLoadingRing = 1
  l0 = self.box_MissionCheckpointReach_4
  l1 = self.box_CLOController_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\BoatRace01.domino|@BoatRace01_Main|554884641", "554884641", "BoatRace01_Main", "box_MissionCheckpointReach_4.Out", "box_CLOController_5.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_MissionLayer_v2_10_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_10
  l1 = self.box_MissionController_v4_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\BoatRace01.domino|@BoatRace01_Main|1163301273", "1163301273", "BoatRace01_Main", "box_MissionLayer_v2_10.Unloaded", "box_MissionController_v4_2.Succeed", l0, l1)
  l1:Succeed()
end
function export:OnEnter_box_MultipleOR_6()
end
_compilerVersion = 4
