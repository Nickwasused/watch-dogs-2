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
  self._name = "Motocross02_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross02.domino|@Motocross02_Main"
  self.PlayerEntity = nil
  self.Hour = 0
  self.PlayerVehicle = nil
  self.box_MultipleOR_2 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_2
  l0._graph = self
  l0._name = "box_MultipleOR_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross02.domino|@Motocross02_Main|354565298"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_2_Out
  self.box_RaceWithCinematic_4 = cbox:CreateBox("domino/Library/singleplayer/Racing/Racing_Helpers.RaceWithCinematic.debug.lua")
  l0 = self.box_RaceWithCinematic_4
  l0._graph = self
  l0._name = "box_RaceWithCinematic_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross02.domino|@Motocross02_Main|627706268"
  l0.OnRaceStarted = DummyFunction
  l0.OnRaceStopped = self.f_box_RaceWithCinematic_4_OnRaceStopped
  self.box_MissionController_v4_7 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_7
  l0._graph = self
  l0._name = "box_MissionController_v4_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross02.domino|@Motocross02_Main|925110349"
  self.box_MissionLayer_v2_3 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_3
  l0._graph = self
  l0._name = "box_MissionLayer_v2_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross02.domino|@Motocross02_Main|1063093464"
  l0.Loaded = self.f_box_MissionLayer_v2_3_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionLayer_v2_8 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_8
  l0._graph = self
  l0._name = "box_MissionLayer_v2_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross02.domino|@Motocross02_Main|1187724311"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_8_Unloaded
  l0.Reseted = DummyFunction
  self.box_MissionCheckpointReach_1 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_1
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross02.domino|@Motocross02_Main|1446976085"
  l0.Out = self.f_box_MissionCheckpointReach_1_Out
  l0.AllCheckpointsDisabled = DummyFunction
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
  self:OnEnter_box_MultipleOR_2()
  l0 = self.box_MultipleOR_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross02.domino|@Motocross02_Main|292268992", "292268992", "Motocross02_Main", "CheckPoint_0", "box_MultipleOR_2.Input", self, l0)
  l0:Input(0)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_2()
  l0 = self.box_MultipleOR_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross02.domino|@Motocross02_Main|2065760076", "2065760076", "Motocross02_Main", "In", "box_MultipleOR_2.Input", self, l0)
  l0:Input(1)
end
function export:f_box_MultipleOR_2_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_3
  l0.LayerName = "Motocross02_Main"
  l0 = self.box_MultipleOR_2
  l1 = self.box_MissionLayer_v2_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross02.domino|@Motocross02_Main|273708647", "273708647", "Motocross02_Main", "box_MultipleOR_2.Out", "box_MissionLayer_v2_3.Load", l0, l1)
  l1:Load()
end
function export:f_box_RaceWithCinematic_4_OnRaceStopped()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_8
  l0.LayerName = "Motocross02_Main"
  l0 = self.box_RaceWithCinematic_4
  l1 = self.box_MissionLayer_v2_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross02.domino|@Motocross02_Main|293374164", "293374164", "Motocross02_Main", "box_RaceWithCinematic_4.OnRaceStopped", "box_MissionLayer_v2_8.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_MissionLayer_v2_3_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross02.domino|@Motocross02_Main|1071713883"
  l0.Out = self.f_box_Get_Player_ID_6_Out
  l0 = self.box_MissionLayer_v2_3
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross02.domino|@Motocross02_Main|1873002029", "1873002029", "Motocross02_Main", "box_MissionLayer_v2_3.Loaded", "box_Get_Player_ID_6.In", l0, l1)
  l1:In()
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
  l0 = self.box_MissionCheckpointReach_1
  l0.Checkpoint = "CheckPoint_0"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross02.domino|@Motocross02_Main|1074057211", "1074057211", "Motocross02_Main", "box_Get_Player_ID_6.Out", "box_MissionCheckpointReach_1.In", clone, l0)
  l0:In()
end
function export:f_box_MissionLayer_v2_8_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_8
  l1 = self.box_MissionController_v4_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross02.domino|@Motocross02_Main|57956241", "57956241", "Motocross02_Main", "box_MissionLayer_v2_8.Unloaded", "box_MissionController_v4_7.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_MissionCheckpointReach_1_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_RaceWithCinematic_4
  l0.Config = "RaceDbConfig.9223372047861992514"
  l0.CinematicSceneEntity = "9223372059416024642"
  l0.CinematicSequenceFile = "sequences/MotocrossRace/motocrossrace02.seq"
  l0 = self.box_MissionCheckpointReach_1
  l1 = self.box_RaceWithCinematic_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross02.domino|@Motocross02_Main|752639457", "752639457", "Motocross02_Main", "box_MissionCheckpointReach_1.Out", "box_RaceWithCinematic_4.StartRace", l0, l1)
  l1:StartRace()
end
function export:OnEnter_box_MultipleOR_2()
end
_compilerVersion = 4
