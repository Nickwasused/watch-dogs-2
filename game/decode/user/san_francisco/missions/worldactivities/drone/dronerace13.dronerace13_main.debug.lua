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
  cbox:RegisterBox("domino/Library/singleplayer/Racing/Racing_Helpers.RaceBasic.debug.lua")
end
function export:Init(cbox)
  local l0
  self._name = "DroneRace13_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace13.domino|@DroneRace13_Main"
  self.PlayerEntity = nil
  self.SongIndex = 0
  self.SongCount = 0
  self.SongsList = {}
  self.Hour = 0
  self.box_MissionCheckpointReach_3 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_3
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace13.domino|@DroneRace13_Main|579626270"
  l0.Out = self.f_box_MissionCheckpointReach_3_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MultipleOR_1 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_1
  l0._graph = self
  l0._name = "box_MultipleOR_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace13.domino|@DroneRace13_Main|693345208"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_1_Out
  self.box_MissionLayer_v2_4 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_4
  l0._graph = self
  l0._name = "box_MissionLayer_v2_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace13.domino|@DroneRace13_Main|934774312"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_4_Unloaded
  l0.Reseted = DummyFunction
  self.box_MissionLayer_v2_6 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_6
  l0._graph = self
  l0._name = "box_MissionLayer_v2_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace13.domino|@DroneRace13_Main|977158964"
  l0.Loaded = self.f_box_MissionLayer_v2_6_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_RaceBasic_2 = cbox:CreateBox("domino/Library/singleplayer/Racing/Racing_Helpers.RaceBasic.debug.lua")
  l0 = self.box_RaceBasic_2
  l0._graph = self
  l0._name = "box_RaceBasic_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace13.domino|@DroneRace13_Main|1257540793"
  l0.OnRaceStarted = DummyFunction
  l0.OnRaceStopped = self.f_box_RaceBasic_2_OnRaceStopped
  self.box_MissionController_v4_5 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_5
  l0._graph = self
  l0._name = "box_MissionController_v4_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace13.domino|@DroneRace13_Main|1467123477"
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
  self:OnEnter_box_MultipleOR_1()
  l0 = self.box_MultipleOR_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace13.domino|@DroneRace13_Main|1006999009", "1006999009", "DroneRace13_Main", "CheckPoint_0", "box_MultipleOR_1.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_1()
  l0 = self.box_MultipleOR_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace13.domino|@DroneRace13_Main|1299679174", "1299679174", "DroneRace13_Main", "In", "box_MultipleOR_1.Input", self, l0)
  l0:Input(0)
end
function export:f_box_MissionCheckpointReach_3_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_RaceBasic_2
  l0.Config = "RaceDbConfig.9223372057216458051"
  l0 = self.box_MissionCheckpointReach_3
  l1 = self.box_RaceBasic_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace13.domino|@DroneRace13_Main|1916463036", "1916463036", "DroneRace13_Main", "box_MissionCheckpointReach_3.Out", "box_RaceBasic_2.StartRace", l0, l1)
  l1:StartRace()
end
function export:f_box_MultipleOR_1_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_6
  l0.LayerName = "DroneRace_13_Main"
  l0 = self.box_MultipleOR_1
  l1 = self.box_MissionLayer_v2_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace13.domino|@DroneRace13_Main|274072693", "274072693", "DroneRace13_Main", "box_MultipleOR_1.Out", "box_MissionLayer_v2_6.Load", l0, l1)
  l1:Load()
end
function export:f_box_MissionLayer_v2_4_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_4
  l1 = self.box_MissionController_v4_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace13.domino|@DroneRace13_Main|25578493", "25578493", "DroneRace13_Main", "box_MissionLayer_v2_4.Unloaded", "box_MissionController_v4_5.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_MissionLayer_v2_6_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace13.domino|@DroneRace13_Main|1651476987"
  l0.Out = self.f_box_Get_Player_ID_7_Out
  l0 = self.box_MissionLayer_v2_6
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace13.domino|@DroneRace13_Main|1484173026", "1484173026", "DroneRace13_Main", "box_MissionLayer_v2_6.Loaded", "box_Get_Player_ID_7.In", l0, l1)
  l1:In()
end
function export:f_box_RaceBasic_2_OnRaceStopped()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_4
  l0.LayerName = "DroneRace_13_Main"
  l0 = self.box_RaceBasic_2
  l1 = self.box_MissionLayer_v2_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace13.domino|@DroneRace13_Main|1995254289", "1995254289", "DroneRace13_Main", "box_RaceBasic_2.OnRaceStopped", "box_MissionLayer_v2_4.Unload", l0, l1)
  l1:Unload()
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
  l0 = self.box_MissionCheckpointReach_3
  l0.Checkpoint = "CheckPoint_0"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace13.domino|@DroneRace13_Main|1948704982", "1948704982", "DroneRace13_Main", "box_Get_Player_ID_7.Out", "box_MissionCheckpointReach_3.In", clone, l0)
  l0:In()
end
function export:OnEnter_box_MultipleOR_1()
end
_compilerVersion = 4
