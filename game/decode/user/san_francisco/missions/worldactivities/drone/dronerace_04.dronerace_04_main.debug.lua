export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/Library/singleplayer/Racing/Racing_Helpers.RaceWithCinematic.debug.lua")
end
function export:Init(cbox)
  local l0
  self._name = "DroneRace_04_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_04.domino|@DroneRace_04_Main"
  self.PlayerEntity = nil
  self.Hour = 0
  self.SongIndex = 0
  self.SongsList = {}
  self.SongCount = 0
  self.IsReplay = 0
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_04.domino|@DroneRace_04_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionLayer_v2_13 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_13
  l0._graph = self
  l0._name = "box_MissionLayer_v2_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_04.domino|@DroneRace_04_Main|280816239"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_13_Unloaded
  l0.Reseted = DummyFunction
  self.box_RaceWithCinematic_3 = cbox:CreateBox("domino/Library/singleplayer/Racing/Racing_Helpers.RaceWithCinematic.debug.lua")
  l0 = self.box_RaceWithCinematic_3
  l0._graph = self
  l0._name = "box_RaceWithCinematic_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_04.domino|@DroneRace_04_Main|349854255"
  l0.OnRaceStarted = DummyFunction
  l0.OnRaceStopped = self.f_box_RaceWithCinematic_3_OnRaceStopped
  self.box_MultipleOR_4 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_4
  l0._graph = self
  l0._name = "box_MultipleOR_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_04.domino|@DroneRace_04_Main|731254303"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_4_Out
  self.box_MissionCheckpointReach_5 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_5
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_04.domino|@DroneRace_04_Main|1039611327"
  l0.Out = self.f_box_MissionCheckpointReach_5_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MissionController_v4_15 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_15
  l0._graph = self
  l0._name = "box_MissionController_v4_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_04.domino|@DroneRace_04_Main|1390129448"
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
  self:OnEnter_box_MultipleOR_4()
  l0 = self.box_MultipleOR_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_04.domino|@DroneRace_04_Main|1461754535", "1461754535", "DroneRace_04_Main", "CheckPoint_0", "box_MultipleOR_4.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_4()
  l0 = self.box_MultipleOR_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_04.domino|@DroneRace_04_Main|200705520", "200705520", "DroneRace_04_Main", "In", "box_MultipleOR_4.Input", self, l0)
  l0:Input(0)
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_04.domino|@DroneRace_04_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MissionLayer_v2_2
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_04.domino|@DroneRace_04_Main|794668992", "794668992", "DroneRace_04_Main", "box_MissionLayer_v2_2.Loaded", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_MissionLayer_v2_13_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_13
  l1 = self.box_MissionController_v4_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_04.domino|@DroneRace_04_Main|864912978", "864912978", "DroneRace_04_Main", "box_MissionLayer_v2_13.Unloaded", "box_MissionController_v4_15.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_RaceWithCinematic_3_OnRaceStopped()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_13
  l0.LayerName = "DroneRace_04_Main"
  l0 = self.box_RaceWithCinematic_3
  l1 = self.box_MissionLayer_v2_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_04.domino|@DroneRace_04_Main|226924625", "226924625", "DroneRace_04_Main", "box_RaceWithCinematic_3.OnRaceStopped", "box_MissionLayer_v2_13.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_MultipleOR_4_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "DroneRace_04_Main"
  l0 = self.box_MultipleOR_4
  l1 = self.box_MissionLayer_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_04.domino|@DroneRace_04_Main|1865847184", "1865847184", "DroneRace_04_Main", "box_MultipleOR_4.Out", "box_MissionLayer_v2_2.Load", l0, l1)
  l1:Load()
end
function export:f_box_Get_Player_ID_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_5
  l0.Checkpoint = "CheckPoint_0"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_04.domino|@DroneRace_04_Main|142183137", "142183137", "DroneRace_04_Main", "box_Get_Player_ID_1.Out", "box_MissionCheckpointReach_5.In", clone, l0)
  l0:In()
end
function export:f_box_MissionCheckpointReach_5_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_RaceWithCinematic_3
  l0.Config = "RaceDbConfig.9223372055744928598"
  l0.CinematicSceneEntity = "9223372059711210646"
  l0.CinematicSequenceFile = "sequences/DroneRaces/dronerace04.seq"
  l0 = self.box_MissionCheckpointReach_5
  l1 = self.box_RaceWithCinematic_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace_04.domino|@DroneRace_04_Main|471982096", "471982096", "DroneRace_04_Main", "box_MissionCheckpointReach_5.Out", "box_RaceWithCinematic_3.StartRace", l0, l1)
  l1:StartRace()
end
function export:OnEnter_box_MultipleOR_4()
end
_compilerVersion = 4
