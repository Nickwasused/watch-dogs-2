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
  self._name = "MotoCross03_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\MotoCross03.domino|@MotoCross03_Main"
  self.PlayerEntity = nil
  self.TheBike2 = nil
  self.Hour = 0
  self.box_MissionController_v4_4 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_4
  l0._graph = self
  l0._name = "box_MissionController_v4_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\MotoCross03.domino|@MotoCross03_Main|8515800"
  self.box_MultipleOR_5 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_5
  l0._graph = self
  l0._name = "box_MultipleOR_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\MotoCross03.domino|@MotoCross03_Main|207757639"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_5_Out
  self.box_RaceWithCinematic_2 = cbox:CreateBox("domino/Library/singleplayer/Racing/Racing_Helpers.RaceWithCinematic.debug.lua")
  l0 = self.box_RaceWithCinematic_2
  l0._graph = self
  l0._name = "box_RaceWithCinematic_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\MotoCross03.domino|@MotoCross03_Main|349567102"
  l0.OnRaceStarted = DummyFunction
  l0.OnRaceStopped = self.f_box_RaceWithCinematic_2_OnRaceStopped
  self.box_MissionLayer_v2_1 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_1
  l0._graph = self
  l0._name = "box_MissionLayer_v2_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\MotoCross03.domino|@MotoCross03_Main|555261913"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_1_Unloaded
  l0.Reseted = DummyFunction
  self.box_MissionCheckpointReach_35 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_35
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\MotoCross03.domino|@MotoCross03_Main|811369634"
  l0.Out = self.f_box_MissionCheckpointReach_35_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MissionLayer_v2_3 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_3
  l0._graph = self
  l0._name = "box_MissionLayer_v2_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\MotoCross03.domino|@MotoCross03_Main|1120798685"
  l0.Loaded = self.f_box_MissionLayer_v2_3_Loaded
  l0.Unloaded = DummyFunction
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
  self:OnEnter_box_MultipleOR_5()
  l0 = self.box_MultipleOR_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\MotoCross03.domino|@MotoCross03_Main|1115706676", "1115706676", "MotoCross03_Main", "CheckPoint_0", "box_MultipleOR_5.Input", self, l0)
  l0:Input(0)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_5()
  l0 = self.box_MultipleOR_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\MotoCross03.domino|@MotoCross03_Main|212215619", "212215619", "MotoCross03_Main", "In", "box_MultipleOR_5.Input", self, l0)
  l0:Input(1)
end
function export:f_box_MultipleOR_5_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_3
  l0.LayerName = "Motocross03_Main"
  l0 = self.box_MultipleOR_5
  l1 = self.box_MissionLayer_v2_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\MotoCross03.domino|@MotoCross03_Main|1136606975", "1136606975", "MotoCross03_Main", "box_MultipleOR_5.Out", "box_MissionLayer_v2_3.Load", l0, l1)
  l1:Load()
end
function export:f_box_RaceWithCinematic_2_OnRaceStopped()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_1
  l0.LayerName = "Motocross03_Main"
  l0 = self.box_RaceWithCinematic_2
  l1 = self.box_MissionLayer_v2_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\MotoCross03.domino|@MotoCross03_Main|333268730", "333268730", "MotoCross03_Main", "box_RaceWithCinematic_2.OnRaceStopped", "box_MissionLayer_v2_1.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_MissionLayer_v2_1_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_1
  l1 = self.box_MissionController_v4_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\MotoCross03.domino|@MotoCross03_Main|405340785", "405340785", "MotoCross03_Main", "box_MissionLayer_v2_1.Unloaded", "box_MissionController_v4_4.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_MissionCheckpointReach_35_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_RaceWithCinematic_2
  l0.Config = "RaceDbConfig.9223372050710022624"
  l0.CinematicSceneEntity = "9223372059416025210"
  l0.CinematicSequenceFile = "sequences/MotocrossRace/motocrossrace03.seq"
  l0 = self.box_MissionCheckpointReach_35
  l1 = self.box_RaceWithCinematic_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\MotoCross03.domino|@MotoCross03_Main|412327246", "412327246", "MotoCross03_Main", "box_MissionCheckpointReach_35.Out", "box_RaceWithCinematic_2.StartRace", l0, l1)
  l1:StartRace()
end
function export:f_box_MissionLayer_v2_3_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\MotoCross03.domino|@MotoCross03_Main|1514488026"
  l0.Out = self.f_box_Get_Player_ID_32_Out
  l0 = self.box_MissionLayer_v2_3
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\MotoCross03.domino|@MotoCross03_Main|1262092501", "1262092501", "MotoCross03_Main", "box_MissionLayer_v2_3.Loaded", "box_Get_Player_ID_32.In", l0, l1)
  l1:In()
end
function export:f_box_Get_Player_ID_32_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_35
  l0.Checkpoint = "CheckPoint_0"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\MotoCross03.domino|@MotoCross03_Main|120430167", "120430167", "MotoCross03_Main", "box_Get_Player_ID_32.Out", "box_MissionCheckpointReach_35.In", clone, l0)
  l0:In()
end
function export:OnEnter_box_MultipleOR_5()
end
_compilerVersion = 4
