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
  self._name = "Motocross01_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross01.domino|@Motocross01_Main"
  self.PlayerEntity = nil
  self.TheBike = nil
  self.Hour = 0
  self.box_MultipleOR_3 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_3
  l0._graph = self
  l0._name = "box_MultipleOR_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross01.domino|@Motocross01_Main|54908443"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_3_Out
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross01.domino|@Motocross01_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionCheckpointReach_1 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_1
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross01.domino|@Motocross01_Main|864927958"
  l0.Out = self.f_box_MissionCheckpointReach_1_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_RaceWithCinematic_4 = cbox:CreateBox("domino/Library/singleplayer/Racing/Racing_Helpers.RaceWithCinematic.debug.lua")
  l0 = self.box_RaceWithCinematic_4
  l0._graph = self
  l0._name = "box_RaceWithCinematic_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross01.domino|@Motocross01_Main|1084968002"
  l0.OnRaceStarted = DummyFunction
  l0.OnRaceStopped = self.f_box_RaceWithCinematic_4_OnRaceStopped
  self.box_MissionController_v4_35 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_35
  l0._graph = self
  l0._name = "box_MissionController_v4_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross01.domino|@Motocross01_Main|1135353076"
  self.box_MissionLayer_v2_5 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_5
  l0._graph = self
  l0._name = "box_MissionLayer_v2_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross01.domino|@Motocross01_Main|1662668607"
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
  self:OnEnter_box_MultipleOR_3()
  l0 = self.box_MultipleOR_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross01.domino|@Motocross01_Main|1851020199", "1851020199", "Motocross01_Main", "CheckPoint_0", "box_MultipleOR_3.Input", self, l0)
  l0:Input(0)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_3()
  l0 = self.box_MultipleOR_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross01.domino|@Motocross01_Main|882791324", "882791324", "Motocross01_Main", "In", "box_MultipleOR_3.Input", self, l0)
  l0:Input(1)
end
function export:f_box_MultipleOR_3_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "Motocross01_Main"
  l0 = self.box_MultipleOR_3
  l1 = self.box_MissionLayer_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross01.domino|@Motocross01_Main|1291356926", "1291356926", "Motocross01_Main", "box_MultipleOR_3.Out", "box_MissionLayer_v2_2.Load", l0, l1)
  l1:Load()
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross01.domino|@Motocross01_Main|1885224224"
  l0.Out = self.f_box_Get_Player_ID_8_Out
  l0 = self.box_MissionLayer_v2_2
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross01.domino|@Motocross01_Main|1324994635", "1324994635", "Motocross01_Main", "box_MissionLayer_v2_2.Loaded", "box_Get_Player_ID_8.In", l0, l1)
  l1:In()
end
function export:f_box_MissionCheckpointReach_1_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_RaceWithCinematic_4
  l0.Config = "RaceDbConfig.9223372047547842170"
  l0.CinematicSceneEntity = "9223372059218982017"
  l0.CinematicSequenceFile = "sequences/MotocrossRace/motocrossrace01.seq"
  l0 = self.box_MissionCheckpointReach_1
  l1 = self.box_RaceWithCinematic_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross01.domino|@Motocross01_Main|1772141030", "1772141030", "Motocross01_Main", "box_MissionCheckpointReach_1.Out", "box_RaceWithCinematic_4.StartRace", l0, l1)
  l1:StartRace()
end
function export:f_box_RaceWithCinematic_4_OnRaceStopped()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_5
  l0.LayerName = "Motocross01_Main"
  l0 = self.box_RaceWithCinematic_4
  l1 = self.box_MissionLayer_v2_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross01.domino|@Motocross01_Main|1937194679", "1937194679", "Motocross01_Main", "box_RaceWithCinematic_4.OnRaceStopped", "box_MissionLayer_v2_5.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_MissionLayer_v2_5_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_5
  l1 = self.box_MissionController_v4_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross01.domino|@Motocross01_Main|1999542198", "1999542198", "Motocross01_Main", "box_MissionLayer_v2_5.Unloaded", "box_MissionController_v4_35.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_Get_Player_ID_8_Out()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross01.domino|@Motocross01_Main|1807341605", "1807341605", "Motocross01_Main", "box_Get_Player_ID_8.Out", "box_MissionCheckpointReach_1.In", clone, l0)
  l0:In()
end
function export:OnEnter_box_MultipleOR_3()
end
_compilerVersion = 4
