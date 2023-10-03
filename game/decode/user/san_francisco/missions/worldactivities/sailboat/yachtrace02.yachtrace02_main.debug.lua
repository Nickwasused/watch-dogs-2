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
  self._name = "YachtRace02_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace02.domino|@YachtRace02_Main"
  self.PlayerEntity = nil
  self.Enemy = nil
  self.MissionLayerName = "YachtRace02_Main"
  self.EnemyYacht = nil
  self.EnemyRacePath = "9223372045945594340"
  self.Yacht = nil
  self.Collider = nil
  self.Player = nil
  self.CheckpointTrigger01 = "9223372045945594051"
  self.StartLocation = "9223372046049495704"
  self.CP01 = "9223372046049495706"
  self.MapIcon_CP01 = "9223372046049495712"
  self.CP02 = "9223372046049495710"
  self.MapIcon_CP02 = "9223372046049495714"
  self.LayerMain = "YachtRace02_Main"
  self.IsReplay = 0
  self.box_RaceWithCinematic_1 = cbox:CreateBox("domino/Library/singleplayer/Racing/Racing_Helpers.RaceWithCinematic.debug.lua")
  l0 = self.box_RaceWithCinematic_1
  l0._graph = self
  l0._name = "box_RaceWithCinematic_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace02.domino|@YachtRace02_Main|215819825"
  l0.OnRaceStarted = DummyFunction
  l0.OnRaceStopped = self.f_box_RaceWithCinematic_1_OnRaceStopped
  self.box_MultipleOR_3 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_3
  l0._graph = self
  l0._name = "box_MultipleOR_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace02.domino|@YachtRace02_Main|310556235"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_3_Out
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace02.domino|@YachtRace02_Main|588236477"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_2_Unloaded
  l0.Reseted = DummyFunction
  self.box_CLOController_4 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_4
  l0._graph = self
  l0._name = "box_CLOController_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace02.domino|@YachtRace02_Main|599971999"
  l0.Activated = self.f_box_CLOController_4_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_CLOController_10 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_10
  l0._graph = self
  l0._name = "box_CLOController_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace02.domino|@YachtRace02_Main|803526782"
  l0.Activated = self.f_box_CLOController_10_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_MissionController_v4_6 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_6
  l0._graph = self
  l0._name = "box_MissionController_v4_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace02.domino|@YachtRace02_Main|1041033686"
  self.box_MissionCheckpointReach_7 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_7
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace02.domino|@YachtRace02_Main|1237082024"
  l0.Out = self.f_box_MissionCheckpointReach_7_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MissionLayer_v2_8 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_8
  l0._graph = self
  l0._name = "box_MissionLayer_v2_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace02.domino|@YachtRace02_Main|1888298805"
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
  self:OnEnter_box_MultipleOR_3()
  l0 = self.box_MultipleOR_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace02.domino|@YachtRace02_Main|1029100823", "1029100823", "YachtRace02_Main", "CheckPoint_0", "box_MultipleOR_3.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_3()
  l0 = self.box_MultipleOR_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace02.domino|@YachtRace02_Main|558008296", "558008296", "YachtRace02_Main", "In", "box_MultipleOR_3.Input", self, l0)
  l0:Input(0)
end
function export:f_box_RaceWithCinematic_1_OnRaceStopped()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = self.LayerMain
  l0 = self.box_RaceWithCinematic_1
  l1 = self.box_MissionLayer_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace02.domino|@YachtRace02_Main|2100938951", "2100938951", "YachtRace02_Main", "box_RaceWithCinematic_1.OnRaceStopped", "box_MissionLayer_v2_2.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_MultipleOR_3_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_8
  l0.LayerName = self.LayerMain
  l0 = self.box_MultipleOR_3
  l1 = self.box_MissionLayer_v2_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace02.domino|@YachtRace02_Main|13405043", "13405043", "YachtRace02_Main", "box_MultipleOR_3.Out", "box_MissionLayer_v2_8.Load", l0, l1)
  l1:Load()
end
function export:f_box_MissionLayer_v2_2_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_2
  l1 = self.box_MissionController_v4_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace02.domino|@YachtRace02_Main|796092892", "796092892", "YachtRace02_Main", "box_MissionLayer_v2_2.Unloaded", "box_MissionController_v4_6.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_CLOController_4_Activated()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_10
  l0.CLO = "9223372057710903232"
  l0.SpawnOutsideLoadingRing = 1
  l0 = self.box_CLOController_4
  l1 = self.box_CLOController_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace02.domino|@YachtRace02_Main|104152794", "104152794", "YachtRace02_Main", "box_CLOController_4.Activated", "box_CLOController_10.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_CLOController_10_Activated()
  local l0, l1
  self = self._graph
  l0 = self.box_RaceWithCinematic_1
  l0.Config = "RaceDbConfig.9223372046748776836"
  l0.CinematicSceneEntity = "9223372059756423057"
  l0.CinematicSequenceFile = "sequences/YachtRaces/yachtrace02.seq"
  l0 = self.box_CLOController_10
  l1 = self.box_RaceWithCinematic_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace02.domino|@YachtRace02_Main|1094560991", "1094560991", "YachtRace02_Main", "box_CLOController_10.Activated", "box_RaceWithCinematic_1.StartRace", l0, l1)
  l1:StartRace()
end
function export:f_box_MissionCheckpointReach_7_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_4
  l0.CLO = "9223372057710903233"
  l0.SpawnOutsideLoadingRing = 1
  l0 = self.box_MissionCheckpointReach_7
  l1 = self.box_CLOController_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace02.domino|@YachtRace02_Main|905073025", "905073025", "YachtRace02_Main", "box_MissionCheckpointReach_7.Out", "box_CLOController_4.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_MissionLayer_v2_8_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace02.domino|@YachtRace02_Main|2104524694"
  l0.Out = self.f_box_Get_Player_ID_5_Out
  l0 = self.box_MissionLayer_v2_8
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace02.domino|@YachtRace02_Main|1486674010", "1486674010", "YachtRace02_Main", "box_MissionLayer_v2_8.Loaded", "box_Get_Player_ID_5.In", l0, l1)
  l1:In()
end
function export:f_box_Get_Player_ID_5_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_7
  l0.Checkpoint = "CheckPoint_0"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\YachtRace02.domino|@YachtRace02_Main|1878973891", "1878973891", "YachtRace02_Main", "box_Get_Player_ID_5.Out", "box_MissionCheckpointReach_7.In", clone, l0)
  l0:In()
end
function export:OnEnter_box_MultipleOR_3()
end
_compilerVersion = 4
