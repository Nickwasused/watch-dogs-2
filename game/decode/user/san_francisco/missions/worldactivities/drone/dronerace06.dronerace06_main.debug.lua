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
  self._name = "DroneRace06_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace06.domino|@DroneRace06_Main"
  self.PlayerEntity = nil
  self.SongCount = 0
  self.Hour = 0
  self.SongIndex = 0
  self.SongsList = {}
  self.IsReplay = 0
  self.box_MissionCheckpointReach_4 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_4
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace06.domino|@DroneRace06_Main|117830951"
  l0.Out = self.f_box_MissionCheckpointReach_4_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_RaceWithCinematic_2 = cbox:CreateBox("domino/Library/singleplayer/Racing/Racing_Helpers.RaceWithCinematic.debug.lua")
  l0 = self.box_RaceWithCinematic_2
  l0._graph = self
  l0._name = "box_RaceWithCinematic_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace06.domino|@DroneRace06_Main|405185030"
  l0.OnRaceStarted = DummyFunction
  l0.OnRaceStopped = self.f_box_RaceWithCinematic_2_OnRaceStopped
  self.box_MissionLayer_v2_6 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_6
  l0._graph = self
  l0._name = "box_MissionLayer_v2_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace06.domino|@DroneRace06_Main|1643637978"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_6_Unloaded
  l0.Reseted = DummyFunction
  self.box_MissionController_v4_1 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_1
  l0._graph = self
  l0._name = "box_MissionController_v4_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace06.domino|@DroneRace06_Main|1658359780"
  self.box_MissionLayer_v2_11 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_11
  l0._graph = self
  l0._name = "box_MissionLayer_v2_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace06.domino|@DroneRace06_Main|2036734886"
  l0.Loaded = self.f_box_MissionLayer_v2_11_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MultipleOR_12 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_12
  l0._graph = self
  l0._name = "box_MultipleOR_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace06.domino|@DroneRace06_Main|2047260823"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_12_Out
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
  self:OnEnter_box_MultipleOR_12()
  l0 = self.box_MultipleOR_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace06.domino|@DroneRace06_Main|140964845", "140964845", "DroneRace06_Main", "CheckPoint_0", "box_MultipleOR_12.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_12()
  l0 = self.box_MultipleOR_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace06.domino|@DroneRace06_Main|384534480", "384534480", "DroneRace06_Main", "In", "box_MultipleOR_12.Input", self, l0)
  l0:Input(0)
end
function export:f_box_MissionCheckpointReach_4_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_RaceWithCinematic_2
  l0.Config = "RaceDbConfig.9223372055927653387"
  l0.CinematicSceneEntity = "9223372060032140033"
  l0.CinematicSequenceFile = "sequences/DroneRaces/dronerace06.seq"
  l0 = self.box_MissionCheckpointReach_4
  l1 = self.box_RaceWithCinematic_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace06.domino|@DroneRace06_Main|637860303", "637860303", "DroneRace06_Main", "box_MissionCheckpointReach_4.Out", "box_RaceWithCinematic_2.StartRace", l0, l1)
  l1:StartRace()
end
function export:f_box_RaceWithCinematic_2_OnRaceStopped()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_6
  l0.LayerName = "DroneRace_06_Main"
  l0 = self.box_RaceWithCinematic_2
  l1 = self.box_MissionLayer_v2_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace06.domino|@DroneRace06_Main|1694933047", "1694933047", "DroneRace06_Main", "box_RaceWithCinematic_2.OnRaceStopped", "box_MissionLayer_v2_6.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_Get_Player_ID_20_Out()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace06.domino|@DroneRace06_Main|308460217", "308460217", "DroneRace06_Main", "box_Get_Player_ID_20.Out", "box_MissionCheckpointReach_4.In", clone, l0)
  l0:In()
end
function export:f_box_MissionLayer_v2_6_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_6
  l1 = self.box_MissionController_v4_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace06.domino|@DroneRace06_Main|1102283169", "1102283169", "DroneRace06_Main", "box_MissionLayer_v2_6.Unloaded", "box_MissionController_v4_1.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_MissionLayer_v2_11_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace06.domino|@DroneRace06_Main|996265097"
  l0.Out = self.f_box_Get_Player_ID_20_Out
  l0 = self.box_MissionLayer_v2_11
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace06.domino|@DroneRace06_Main|475722948", "475722948", "DroneRace06_Main", "box_MissionLayer_v2_11.Loaded", "box_Get_Player_ID_20.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_12_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_11
  l0.LayerName = "DroneRace_06_Main"
  l0 = self.box_MultipleOR_12
  l1 = self.box_MissionLayer_v2_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace06.domino|@DroneRace06_Main|517851079", "517851079", "DroneRace06_Main", "box_MultipleOR_12.Out", "box_MissionLayer_v2_11.Load", l0, l1)
  l1:Load()
end
function export:OnEnter_box_MultipleOR_12()
end
_compilerVersion = 4
