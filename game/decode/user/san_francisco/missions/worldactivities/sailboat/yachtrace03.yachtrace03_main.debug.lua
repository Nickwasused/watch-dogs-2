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
  self._name = "YachtRace03_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace03.domino|@YachtRace03_Main"
  self.PlayerEntity = nil
  self.MissionLayerName = "YachtRace03_Main"
  self.Player = nil
  self.CP01 = "9223372046049517861"
  self.Yacht = nil
  self.StartLocation = "9223372046049517857"
  self.MapIcon_CP02 = "9223372046049517869"
  self.CP02 = "9223372046049517867"
  self.MapIcon_CP01 = "9223372046049517859"
  self.CP03 = "9223372046049517863"
  self.MapIcon_CP03 = "9223372046049517865"
  self.LayerMain = "YachtRace03_Main"
  self.IsReplay = 0
  self.box_MultipleOR_7 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_7
  l0._graph = self
  l0._name = "box_MultipleOR_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace03.domino|@YachtRace03_Main|102684520"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_7_Out
  self.box_MissionCheckpointReach_3 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_3
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace03.domino|@YachtRace03_Main|415827086"
  l0.Out = self.f_box_MissionCheckpointReach_3_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_CLOController_10 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_10
  l0._graph = self
  l0._name = "box_CLOController_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace03.domino|@YachtRace03_Main|420951444"
  l0.Activated = self.f_box_CLOController_10_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_CLOController_11 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_11
  l0._graph = self
  l0._name = "box_CLOController_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace03.domino|@YachtRace03_Main|539566158"
  l0.Activated = self.f_box_CLOController_11_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_RaceWithCinematic_1 = cbox:CreateBox("domino/Library/singleplayer/Racing/Racing_Helpers.RaceWithCinematic.debug.lua")
  l0 = self.box_RaceWithCinematic_1
  l0._graph = self
  l0._name = "box_RaceWithCinematic_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace03.domino|@YachtRace03_Main|634124498"
  l0.OnRaceStarted = DummyFunction
  l0.OnRaceStopped = self.f_box_RaceWithCinematic_1_OnRaceStopped
  self.box_MissionLayer_v2_4 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_4
  l0._graph = self
  l0._name = "box_MissionLayer_v2_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace03.domino|@YachtRace03_Main|833621168"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_4_Unloaded
  l0.Reseted = DummyFunction
  self.box_MissionController_v4_2 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_2
  l0._graph = self
  l0._name = "box_MissionController_v4_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace03.domino|@YachtRace03_Main|1741359332"
  self.box_MissionLayer_v2_8 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_8
  l0._graph = self
  l0._name = "box_MissionLayer_v2_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace03.domino|@YachtRace03_Main|1983453170"
  l0.Loaded = self.f_box_MissionLayer_v2_8_Loaded
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
  self:OnEnter_box_MultipleOR_7()
  l0 = self.box_MultipleOR_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace03.domino|@YachtRace03_Main|1803582987", "1803582987", "YachtRace03_Main", "CheckPoint_0", "box_MultipleOR_7.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_7()
  l0 = self.box_MultipleOR_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace03.domino|@YachtRace03_Main|96110078", "96110078", "YachtRace03_Main", "In", "box_MultipleOR_7.Input", self, l0)
  l0:Input(0)
end
function export:f_box_MultipleOR_7_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_8
  l0.LayerName = self.LayerMain
  l0 = self.box_MultipleOR_7
  l1 = self.box_MissionLayer_v2_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace03.domino|@YachtRace03_Main|1759045505", "1759045505", "YachtRace03_Main", "box_MultipleOR_7.Out", "box_MissionLayer_v2_8.Load", l0, l1)
  l1:Load()
end
function export:f_box_MissionCheckpointReach_3_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_10
  l0.CLO = "9223372057710901551"
  l0.SpawnOutsideLoadingRing = 1
  l0 = self.box_MissionCheckpointReach_3
  l1 = self.box_CLOController_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace03.domino|@YachtRace03_Main|1576785000", "1576785000", "YachtRace03_Main", "box_MissionCheckpointReach_3.Out", "box_CLOController_10.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_CLOController_10_Activated()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_11
  l0.CLO = "9223372057710901550"
  l0.SpawnOutsideLoadingRing = 1
  l0 = self.box_CLOController_10
  l1 = self.box_CLOController_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace03.domino|@YachtRace03_Main|1628699220", "1628699220", "YachtRace03_Main", "box_CLOController_10.Activated", "box_CLOController_11.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_CLOController_11_Activated()
  local l0, l1
  self = self._graph
  l0 = self.box_RaceWithCinematic_1
  l0.Config = "RaceDbConfig.9223372047122214643"
  l0.CinematicSceneEntity = "9223372059756423158"
  l0.CinematicSequenceFile = "sequences/YachtRaces/yachtrace03.seq"
  l0 = self.box_CLOController_11
  l1 = self.box_RaceWithCinematic_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace03.domino|@YachtRace03_Main|1049097098", "1049097098", "YachtRace03_Main", "box_CLOController_11.Activated", "box_RaceWithCinematic_1.StartRace", l0, l1)
  l1:StartRace()
end
function export:f_box_RaceWithCinematic_1_OnRaceStopped()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_4
  l0.LayerName = self.LayerMain
  l0 = self.box_RaceWithCinematic_1
  l1 = self.box_MissionLayer_v2_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace03.domino|@YachtRace03_Main|201577585", "201577585", "YachtRace03_Main", "box_RaceWithCinematic_1.OnRaceStopped", "box_MissionLayer_v2_4.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_MissionLayer_v2_4_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_4
  l1 = self.box_MissionController_v4_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace03.domino|@YachtRace03_Main|1316067110", "1316067110", "YachtRace03_Main", "box_MissionLayer_v2_4.Unloaded", "box_MissionController_v4_2.Succeed", l0, l1)
  l1:Succeed()
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
  l0 = self.box_MissionCheckpointReach_3
  l0.Checkpoint = "CheckPoint_0"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace03.domino|@YachtRace03_Main|751959508", "751959508", "YachtRace03_Main", "box_Get_Player_ID_6.Out", "box_MissionCheckpointReach_3.In", clone, l0)
  l0:In()
end
function export:f_box_MissionLayer_v2_8_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace03.domino|@YachtRace03_Main|1479200081"
  l0.Out = self.f_box_Get_Player_ID_6_Out
  l0 = self.box_MissionLayer_v2_8
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace03.domino|@YachtRace03_Main|162427260", "162427260", "YachtRace03_Main", "box_MissionLayer_v2_8.Loaded", "box_Get_Player_ID_6.In", l0, l1)
  l1:In()
end
function export:OnEnter_box_MultipleOR_7()
end
_compilerVersion = 4
