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
  self._name = "Motocross06_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross06.domino|@Motocross06_Main"
  self.PlayerEntity = nil
  self.Hour = 0
  self.box_MissionLayer_v2_6 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_6
  l0._graph = self
  l0._name = "box_MissionLayer_v2_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross06.domino|@Motocross06_Main|17910151"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_6_Unloaded
  l0.Reseted = DummyFunction
  self.box_MissionCheckpointReach_4 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_4
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross06.domino|@Motocross06_Main|117251319"
  l0.Out = self.f_box_MissionCheckpointReach_4_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_RaceWithCinematic_1 = cbox:CreateBox("domino/Library/singleplayer/Racing/Racing_Helpers.RaceWithCinematic.debug.lua")
  l0 = self.box_RaceWithCinematic_1
  l0._graph = self
  l0._name = "box_RaceWithCinematic_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross06.domino|@Motocross06_Main|620740252"
  l0.OnRaceStarted = DummyFunction
  l0.OnRaceStopped = self.f_box_RaceWithCinematic_1_OnRaceStopped
  self.box_MultipleOR_9 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_9
  l0._graph = self
  l0._name = "box_MultipleOR_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross06.domino|@Motocross06_Main|786049848"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_9_Out
  self.box_MissionLayer_v2_5 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_5
  l0._graph = self
  l0._name = "box_MissionLayer_v2_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross06.domino|@Motocross06_Main|882796121"
  l0.Loaded = self.f_box_MissionLayer_v2_5_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionController_v4_2 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_2
  l0._graph = self
  l0._name = "box_MissionController_v4_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross06.domino|@Motocross06_Main|1909716302"
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
  self:OnEnter_box_MultipleOR_9()
  l0 = self.box_MultipleOR_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross06.domino|@Motocross06_Main|1556577776", "1556577776", "Motocross06_Main", "CheckPoint_0", "box_MultipleOR_9.Input", self, l0)
  l0:Input(0)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_9()
  l0 = self.box_MultipleOR_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross06.domino|@Motocross06_Main|1477439906", "1477439906", "Motocross06_Main", "In", "box_MultipleOR_9.Input", self, l0)
  l0:Input(1)
end
function export:f_box_MissionLayer_v2_6_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_6
  l1 = self.box_MissionController_v4_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross06.domino|@Motocross06_Main|907204249", "907204249", "Motocross06_Main", "box_MissionLayer_v2_6.Unloaded", "box_MissionController_v4_2.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_MissionCheckpointReach_4_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_RaceWithCinematic_1
  l0.Config = "RaceDbConfig.9223372050202682666"
  l0.CinematicSceneEntity = "9223372059416026615"
  l0.CinematicSequenceFile = "sequences/MotocrossRace/motocrossrace06.seq"
  l0 = self.box_MissionCheckpointReach_4
  l1 = self.box_RaceWithCinematic_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross06.domino|@Motocross06_Main|1182328449", "1182328449", "Motocross06_Main", "box_MissionCheckpointReach_4.Out", "box_RaceWithCinematic_1.StartRace", l0, l1)
  l1:StartRace()
end
function export:f_box_RaceWithCinematic_1_OnRaceStopped()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_6
  l0.LayerName = "Motocross06_Main"
  l0 = self.box_RaceWithCinematic_1
  l1 = self.box_MissionLayer_v2_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross06.domino|@Motocross06_Main|536440046", "536440046", "Motocross06_Main", "box_RaceWithCinematic_1.OnRaceStopped", "box_MissionLayer_v2_6.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_MultipleOR_9_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_5
  l0.LayerName = "Motocross06_Main"
  l0 = self.box_MultipleOR_9
  l1 = self.box_MissionLayer_v2_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross06.domino|@Motocross06_Main|827630845", "827630845", "Motocross06_Main", "box_MultipleOR_9.Out", "box_MissionLayer_v2_5.Load", l0, l1)
  l1:Load()
end
function export:f_box_MissionLayer_v2_5_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross06.domino|@Motocross06_Main|2025993247"
  l0.Out = self.f_box_Get_Player_ID_7_Out
  l0 = self.box_MissionLayer_v2_5
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross06.domino|@Motocross06_Main|1389261120", "1389261120", "Motocross06_Main", "box_MissionLayer_v2_5.Loaded", "box_Get_Player_ID_7.In", l0, l1)
  l1:In()
end
function export:f_box_Get_Player_ID_7_Out()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross06.domino|@Motocross06_Main|15980388", "15980388", "Motocross06_Main", "box_Get_Player_ID_7.Out", "box_MissionCheckpointReach_4.In", clone, l0)
  l0:In()
end
function export:OnEnter_box_MultipleOR_9()
end
_compilerVersion = 4
