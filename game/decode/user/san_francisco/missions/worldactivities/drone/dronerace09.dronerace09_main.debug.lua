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
  self._name = "DroneRace09_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace09.domino|@DroneRace09_Main"
  self.PlayerEntity = nil
  self.SongsList = {}
  self.Hour = 0
  self.SongIndex = 0
  self.SongCount = 0
  self.box_MissionLayer_v2_3 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_3
  l0._graph = self
  l0._name = "box_MissionLayer_v2_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace09.domino|@DroneRace09_Main|153714069"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_3_Unloaded
  l0.Reseted = DummyFunction
  self.box_RaceWithCinematic_4 = cbox:CreateBox("domino/Library/singleplayer/Racing/Racing_Helpers.RaceWithCinematic.debug.lua")
  l0 = self.box_RaceWithCinematic_4
  l0._graph = self
  l0._name = "box_RaceWithCinematic_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace09.domino|@DroneRace09_Main|196961484"
  l0.OnRaceStarted = DummyFunction
  l0.OnRaceStopped = self.f_box_RaceWithCinematic_4_OnRaceStopped
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace09.domino|@DroneRace09_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionCheckpointReach_13 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_13
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace09.domino|@DroneRace09_Main|1044307820"
  l0.Out = self.f_box_MissionCheckpointReach_13_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MultipleOR_17 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_17
  l0._graph = self
  l0._name = "box_MultipleOR_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace09.domino|@DroneRace09_Main|1673867635"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_17_Out
  self.box_MissionController_v4_6 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_6
  l0._graph = self
  l0._name = "box_MissionController_v4_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace09.domino|@DroneRace09_Main|2002019066"
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
  self:OnEnter_box_MultipleOR_17()
  l0 = self.box_MultipleOR_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace09.domino|@DroneRace09_Main|1145138926", "1145138926", "DroneRace09_Main", "CheckPoint_0", "box_MultipleOR_17.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_17()
  l0 = self.box_MultipleOR_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace09.domino|@DroneRace09_Main|1956273665", "1956273665", "DroneRace09_Main", "In", "box_MultipleOR_17.Input", self, l0)
  l0:Input(0)
end
function export:f_box_MissionLayer_v2_3_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_3
  l1 = self.box_MissionController_v4_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace09.domino|@DroneRace09_Main|1832072577", "1832072577", "DroneRace09_Main", "box_MissionLayer_v2_3.Unloaded", "box_MissionController_v4_6.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_RaceWithCinematic_4_OnRaceStopped()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_3
  l0.LayerName = "DroneRace_09_Main"
  l0 = self.box_RaceWithCinematic_4
  l1 = self.box_MissionLayer_v2_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace09.domino|@DroneRace09_Main|932825737", "932825737", "DroneRace09_Main", "box_RaceWithCinematic_4.OnRaceStopped", "box_MissionLayer_v2_3.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace09.domino|@DroneRace09_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MissionLayer_v2_2
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace09.domino|@DroneRace09_Main|794668992", "794668992", "DroneRace09_Main", "box_MissionLayer_v2_2.Loaded", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
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
  l0 = self.box_MissionCheckpointReach_13
  l0.Checkpoint = "CheckPoint_0"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace09.domino|@DroneRace09_Main|198964370", "198964370", "DroneRace09_Main", "box_Get_Player_ID_1.Out", "box_MissionCheckpointReach_13.In", clone, l0)
  l0:In()
end
function export:f_box_MissionCheckpointReach_13_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_RaceWithCinematic_4
  l0.Config = "RaceDbConfig.9223372056302488047"
  l0.CinematicSceneEntity = "9223372059495627937"
  l0.CinematicSequenceFile = "sequences/DroneRaces/dronerace09.seq"
  l0 = self.box_MissionCheckpointReach_13
  l1 = self.box_RaceWithCinematic_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace09.domino|@DroneRace09_Main|345603814", "345603814", "DroneRace09_Main", "box_MissionCheckpointReach_13.Out", "box_RaceWithCinematic_4.StartRace", l0, l1)
  l1:StartRace()
end
function export:f_box_MultipleOR_17_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "DroneRace_09_Main"
  l0 = self.box_MultipleOR_17
  l1 = self.box_MissionLayer_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace09.domino|@DroneRace09_Main|386344056", "386344056", "DroneRace09_Main", "box_MultipleOR_17.Out", "box_MissionLayer_v2_2.Load", l0, l1)
  l1:Load()
end
function export:OnEnter_box_MultipleOR_17()
end
_compilerVersion = 4
