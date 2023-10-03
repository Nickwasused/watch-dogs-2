export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/Bind_v2.lua")
  cbox:RegisterBox("Domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("Domino/System/CLOMonitor.lua")
  cbox:RegisterBox("Domino/System/DrawWeapon_v2.lua")
  cbox:RegisterBox("Domino/System/GetPlayerID.lua")
  cbox:RegisterBox("Domino/System/SpawnerController.lua")
  cbox:RegisterBox("Domino/System/MapPointController_v3.lua")
  cbox:RegisterBox("Domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("Domino/System/MissionController_v2.lua")
  cbox:RegisterBox("Domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("Domino/System/MissionMessageController.lua")
  cbox:RegisterBox("Domino/System/MultipleAND.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/PawnHealthMonitor_v3.lua")
  cbox:RegisterBox("Domino/System/TeleportEntity.lua")
end
function export:Init(cbox)
  local l0
  self._name = "Test_World_Main"
  self._elementPathId = "DocumentContainer|Gyms\\Test_WorldSF\\Test_World.domino|@Test_World_Main"
  self.PlayerEntity = nil
  self.TraitorNPC = nil
  self.SearchNPC = nil
  self.AI_Backstreet_1 = nil
  self.AI_Courtyard_1 = nil
  self.box_CLOMonitor_3 = cbox:CreateBox("Domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_3
  l0._graph = self
  l0._name = "box_CLOMonitor_3"
  l0._elementPathId = "DocumentContainer|Gyms\\Test_WorldSF\\Test_World.domino|@Test_World_Main|14601869"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOMonitor_3_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self.box_CLOMonitor_13 = cbox:CreateBox("Domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_13
  l0._graph = self
  l0._name = "box_CLOMonitor_13"
  l0._elementPathId = "DocumentContainer|Gyms\\Test_WorldSF\\Test_World.domino|@Test_World_Main|33758162"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOMonitor_13_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self.box_MissionMessageController_8 = cbox:CreateBox("Domino/System/MissionMessageController.lua")
  l0 = self.box_MissionMessageController_8
  l0._graph = self
  l0._name = "box_MissionMessageController_8"
  l0._elementPathId = "DocumentContainer|Gyms\\Test_WorldSF\\Test_World.domino|@Test_World_Main|76593865"
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 2}
  l0.Out = DummyFunction
  l0.MessageRequested = self.f_box_MissionMessageController_8_MessageRequested
  l0.MessageCompleted = DummyFunction
  self.box_MissionLayer_v2_2 = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|Gyms\\Test_WorldSF\\Test_World.domino|@Test_World_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_Teleport_Entity_29 = cbox:CreateBox("Domino/System/TeleportEntity.lua")
  l0 = self.box_Teleport_Entity_29
  l0._graph = self
  l0._name = "box_Teleport_Entity_29"
  l0._elementPathId = "DocumentContainer|Gyms\\Test_WorldSF\\Test_World.domino|@Test_World_Main|284432012"
  l0.Out = DummyFunction
  l0.TeleportDone = DummyFunction
  self.box_PawnHealthMonitor_v3_11 = cbox:CreateBox("Domino/System/PawnHealthMonitor_v3.lua")
  l0 = self.box_PawnHealthMonitor_v3_11
  l0._graph = self
  l0._name = "box_PawnHealthMonitor_v3_11"
  l0._elementPathId = "DocumentContainer|Gyms\\Test_WorldSF\\Test_World.domino|@Test_World_Main|548003762"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Damaged = DummyFunction
  l0.Killed = self.f_box_PawnHealthMonitor_v3_11_Killed
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
  self.box_CLOMonitor_12 = cbox:CreateBox("Domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_12
  l0._graph = self
  l0._name = "box_CLOMonitor_12"
  l0._elementPathId = "DocumentContainer|Gyms\\Test_WorldSF\\Test_World.domino|@Test_World_Main|706071281"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOMonitor_12_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self.box_MissionLayer_v2_39 = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_39
  l0._graph = self
  l0._name = "box_MissionLayer_v2_39"
  l0._elementPathId = "DocumentContainer|Gyms\\Test_WorldSF\\Test_World.domino|@Test_World_Main|718693817"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_39_Unloaded
  l0.Reseted = DummyFunction
  self.box_LivingCity_Spawner_Controller_4 = cbox:CreateBox("Domino/System/SpawnerController.lua")
  l0 = self.box_LivingCity_Spawner_Controller_4
  l0._graph = self
  l0._name = "box_LivingCity_Spawner_Controller_4"
  l0._elementPathId = "DocumentContainer|Gyms\\Test_WorldSF\\Test_World.domino|@Test_World_Main|723493820"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Triggered = DummyFunction
  l0.InitialSpawnDone = DummyFunction
  self.box_MapPointController_v3_14 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_14
  l0._graph = self
  l0._name = "box_MapPointController_v3_14"
  l0._elementPathId = "DocumentContainer|Gyms\\Test_WorldSF\\Test_World.domino|@Test_World_Main|800430228"
  l0.Shown = self.f_box_MapPointController_v3_14_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_CinematicPrep_43 = cbox:CreateBox("Domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_43
  l0._graph = self
  l0._name = "box_CinematicPrep_43"
  l0._elementPathId = "DocumentContainer|Gyms\\Test_WorldSF\\Test_World.domino|@Test_World_Main|1061145397"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_43_PostOut
  self.box_MissionCheckpointReach_40 = cbox:CreateBox("Domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_40
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_40"
  l0._elementPathId = "DocumentContainer|Gyms\\Test_WorldSF\\Test_World.domino|@Test_World_Main|1211812466"
  l0.Out = DummyFunction
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MissionLayer_v2_44 = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_44
  l0._graph = self
  l0._name = "box_MissionLayer_v2_44"
  l0._elementPathId = "DocumentContainer|Gyms\\Test_WorldSF\\Test_World.domino|@Test_World_Main|1448463818"
  l0.Loaded = self.f_box_MissionLayer_v2_44_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MapPointController_v3_10 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_10
  l0._graph = self
  l0._name = "box_MapPointController_v3_10"
  l0._elementPathId = "DocumentContainer|Gyms\\Test_WorldSF\\Test_World.domino|@Test_World_Main|1577051210"
  l0.Shown = self.f_box_MapPointController_v3_10_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MultipleOR_42 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_42
  l0._graph = self
  l0._name = "box_MultipleOR_42"
  l0._elementPathId = "DocumentContainer|Gyms\\Test_WorldSF\\Test_World.domino|@Test_World_Main|1766458239"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_42_Out
  self.box_Multiple_AND_30 = cbox:CreateBox("Domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_30
  l0._graph = self
  l0._name = "box_Multiple_AND_30"
  l0._elementPathId = "DocumentContainer|Gyms\\Test_WorldSF\\Test_World.domino|@Test_World_Main|1784521446"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_30_Out
  self.box_PawnHealthMonitor_v3_15 = cbox:CreateBox("Domino/System/PawnHealthMonitor_v3.lua")
  l0 = self.box_PawnHealthMonitor_v3_15
  l0._graph = self
  l0._name = "box_PawnHealthMonitor_v3_15"
  l0._elementPathId = "DocumentContainer|Gyms\\Test_WorldSF\\Test_World.domino|@Test_World_Main|1924168491"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Damaged = DummyFunction
  l0.Killed = self.f_box_PawnHealthMonitor_v3_15_Killed
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
  self.box_CLOMonitor_5 = cbox:CreateBox("Domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_5
  l0._graph = self
  l0._name = "box_CLOMonitor_5"
  l0._elementPathId = "DocumentContainer|Gyms\\Test_WorldSF\\Test_World.domino|@Test_World_Main|2097208866"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOMonitor_5_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:Checkpoint_0()
  local l0
  l0 = self.box_MissionLayer_v2_44
  l0.LayerName = "TestWorld"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|Gyms\\Test_WorldSF\\Test_World.domino|@Test_World_Main|730863176", "730863176", "Test_World_Main", "Checkpoint_0", "box_MissionLayer_v2_44.Load", self, l0)
  l0:Load()
end
function export:In()
  local l0
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "TestWorld"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|Gyms\\Test_WorldSF\\Test_World.domino|@Test_World_Main|386644599", "386644599", "Test_World_Main", "In", "box_MissionLayer_v2_2.Load", self, l0)
  l0:Load()
end
function export:f_box_CLOMonitor_3_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_3
  self.AI_Backstreet_1 = l0.UserID
  l0 = Boxes[PathID("Domino/System/DrawWeapon_v2.lua")]
  l0.Pawn = self.AI_Backstreet_1
  l0._graph = self
  l0._name = "box_DrawWeapon_v2_16"
  l0._elementPathId = "DocumentContainer|Gyms\\Test_WorldSF\\Test_World.domino|@Test_World_Main|1684669897"
  l0.Out = DummyFunction
  l0.Holstered = DummyFunction
  l0.HandgunEquipped = DummyFunction
  l0.AssaultEquipped = DummyFunction
  l0.ShotGunEquipped = DummyFunction
  l0.SniperEquipped = DummyFunction
  l0 = self.box_CLOMonitor_3
  l1 = Boxes[PathID("Domino/System/DrawWeapon_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|Gyms\\Test_WorldSF\\Test_World.domino|@Test_World_Main|829197001", "829197001", "Test_World_Main", "box_CLOMonitor_3.OnUserInPlace", "box_DrawWeapon_v2_16.Sniper", l0, l1)
  l1:Sniper()
end
function export:f_box_CLOMonitor_13_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_13
  self.TraitorNPC = l0.UserID
  l0 = Boxes[PathID("Domino/System/Bind_v2.lua")]
  l0.Parent = self.TraitorNPC
  l0.Child = "9223372043673451377"
  l0.BoneName = nil
  l0.RemoveOffset = nil
  l0._graph = self
  l0._name = "box_Bind_v2_9"
  l0._elementPathId = "DocumentContainer|Gyms\\Test_WorldSF\\Test_World.domino|@Test_World_Main|336405198"
  l0.Bound = self.f_box_Bind_v2_9_Bound
  l0.UnBound = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_CLOMonitor_13
  l1 = Boxes[PathID("Domino/System/Bind_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|Gyms\\Test_WorldSF\\Test_World.domino|@Test_World_Main|1830776385", "1830776385", "Test_World_Main", "box_CLOMonitor_13.OnUserInPlace", "box_Bind_v2_9.Bind", l0, l1)
  l1:Bind()
end
function export:f_box_MissionMessageController_8_MessageRequested()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_39
  l0.LayerName = "TestWorld"
  l0 = self.box_MissionMessageController_8
  l1 = self.box_MissionLayer_v2_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|Gyms\\Test_WorldSF\\Test_World.domino|@Test_World_Main|1439950575", "1439950575", "Test_World_Main", "box_MissionMessageController_8.MessageRequested", "box_MissionLayer_v2_39.Load", l0, l1)
  l1:Load()
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|Gyms\\Test_WorldSF\\Test_World.domino|@Test_World_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MissionLayer_v2_2
  l1 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|Gyms\\Test_WorldSF\\Test_World.domino|@Test_World_Main|794668992", "794668992", "Test_World_Main", "box_MissionLayer_v2_2.Loaded", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_Bind_v2_9_Bound()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Bind_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MapPointController_v3_10()
  l0 = self.box_MapPointController_v3_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|Gyms\\Test_WorldSF\\Test_World.domino|@Test_World_Main|119700660", "119700660", "Test_World_Main", "box_Bind_v2_9.Bound", "box_MapPointController_v3_10.Show", clone, l0)
  l0:Show()
end
function export:f_box_PawnHealthMonitor_v3_11_Killed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_37"
  l0._elementPathId = "DocumentContainer|Gyms\\Test_WorldSF\\Test_World.domino|@Test_World_Main|768936047"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_37_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_37_Out_1
  l0 = self.box_PawnHealthMonitor_v3_11
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|Gyms\\Test_WorldSF\\Test_World.domino|@Test_World_Main|212356149", "212356149", "Test_World_Main", "box_PawnHealthMonitor_v3_11.Killed", "box_Ordered_Output_37.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_41_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Teleport_Entity_29
  l0.Entity = self.PlayerEntity
  l0.Destination = "9223372043673431000"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|Gyms\\Test_WorldSF\\Test_World.domino|@Test_World_Main|1585740885", "1585740885", "Test_World_Main", "box_Ordered_Output_41.Out", "box_Teleport_Entity_29.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_41_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_42()
  l0 = self.box_MultipleOR_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|Gyms\\Test_WorldSF\\Test_World.domino|@Test_World_Main|1415086348", "1415086348", "Test_World_Main", "box_Ordered_Output_41.Out", "box_MultipleOR_42.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_CLOMonitor_12_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_12
  self.AI_Courtyard_1 = l0.UserID
end
function export:f_box_MissionLayer_v2_39_Unloaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/MissionController_v2.lua")]
  l0.Mission = "MissionList.106034781"
  l0._graph = self
  l0._name = "box_MissionController_v2_38"
  l0._elementPathId = "DocumentContainer|Gyms\\Test_WorldSF\\Test_World.domino|@Test_World_Main|524497074"
  l0.Out = DummyFunction
  l0 = self.box_MissionLayer_v2_39
  l1 = Boxes[PathID("Domino/System/MissionController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|Gyms\\Test_WorldSF\\Test_World.domino|@Test_World_Main|1976791871", "1976791871", "Test_World_Main", "box_MissionLayer_v2_39.Unloaded", "box_MissionController_v2_38.TerminateMission", l0, l1)
  l1:TerminateMission()
end
function export:f_box_Ordered_Output_37_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MapPointController_v3_14()
  l0 = self.box_MapPointController_v3_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|Gyms\\Test_WorldSF\\Test_World.domino|@Test_World_Main|1539463975", "1539463975", "Test_World_Main", "box_Ordered_Output_37.Out", "box_MapPointController_v3_14.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Ordered_Output_37_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_30()
  l0 = self.box_Multiple_AND_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|Gyms\\Test_WorldSF\\Test_World.domino|@Test_World_Main|1825664533", "1825664533", "Test_World_Main", "box_Ordered_Output_37.Out", "box_Multiple_AND_30.Condition", clone, l0)
  l0:Condition(1)
end
function export:f_box_MapPointController_v3_14_Shown()
  local l0, l1
  self = self._graph
  l0 = self.box_PawnHealthMonitor_v3_11
  l0.Pawn = self.SearchNPC
  l0 = self.box_MapPointController_v3_14
  l1 = self.box_PawnHealthMonitor_v3_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|Gyms\\Test_WorldSF\\Test_World.domino|@Test_World_Main|1645505598", "1645505598", "Test_World_Main", "box_MapPointController_v3_14.Shown", "box_PawnHealthMonitor_v3_11.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Get_Player_ID_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_41"
  l0._elementPathId = "DocumentContainer|Gyms\\Test_WorldSF\\Test_World.domino|@Test_World_Main|693383367"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_41_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_41_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|Gyms\\Test_WorldSF\\Test_World.domino|@Test_World_Main|529939081", "529939081", "Test_World_Main", "box_Get_Player_ID_1.Out", "box_Ordered_Output_41.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_36_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MapPointController_v3_10()
  l0 = self.box_MapPointController_v3_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|Gyms\\Test_WorldSF\\Test_World.domino|@Test_World_Main|593779228", "593779228", "Test_World_Main", "box_Ordered_Output_36.Out", "box_MapPointController_v3_10.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Ordered_Output_36_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_30()
  l0 = self.box_Multiple_AND_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|Gyms\\Test_WorldSF\\Test_World.domino|@Test_World_Main|432124943", "432124943", "Test_World_Main", "box_Ordered_Output_36.Out", "box_Multiple_AND_30.Condition", clone, l0)
  l0:Condition(0)
end
function export:f_box_Bind_v2_28_Bound()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Bind_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MapPointController_v3_14()
  l0 = self.box_MapPointController_v3_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|Gyms\\Test_WorldSF\\Test_World.domino|@Test_World_Main|196642670", "196642670", "Test_World_Main", "box_Bind_v2_28.Bound", "box_MapPointController_v3_14.Show", clone, l0)
  l0:Show()
end
function export:f_box_CinematicPrep_43_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_45"
  l0._elementPathId = "DocumentContainer|Gyms\\Test_WorldSF\\Test_World.domino|@Test_World_Main|1161211687"
  l0.Out = self.f_box_Get_Player_ID_45_Out
  l0 = self.box_CinematicPrep_43
  l1 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|Gyms\\Test_WorldSF\\Test_World.domino|@Test_World_Main|1879059796", "1879059796", "Test_World_Main", "box_CinematicPrep_43.PostOut", "box_Get_Player_ID_45.In", l0, l1)
  l1:In()
end
function export:f_box_Get_Player_ID_45_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_42()
  l0 = self.box_MultipleOR_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|Gyms\\Test_WorldSF\\Test_World.domino|@Test_World_Main|1525261568", "1525261568", "Test_World_Main", "box_Get_Player_ID_45.Out", "box_MultipleOR_42.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_7_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOMonitor_13
  l0.CLO = "4011422619223293023"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|Gyms\\Test_WorldSF\\Test_World.domino|@Test_World_Main|1748694896", "1748694896", "Test_World_Main", "box_Ordered_Output_7.Out", "box_CLOMonitor_13.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_7_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOMonitor_5
  l0.CLO = "4758277768836844221"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|Gyms\\Test_WorldSF\\Test_World.domino|@Test_World_Main|64445289", "64445289", "Test_World_Main", "box_Ordered_Output_7.Out", "box_CLOMonitor_5.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_7_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOMonitor_12
  l0.CLO = "2364307284315776696"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|Gyms\\Test_WorldSF\\Test_World.domino|@Test_World_Main|1165435183", "1165435183", "Test_World_Main", "box_Ordered_Output_7.Out", "box_CLOMonitor_12.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_7_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOMonitor_3
  l0.CLO = "6022914201741116819"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|Gyms\\Test_WorldSF\\Test_World.domino|@Test_World_Main|2033119667", "2033119667", "Test_World_Main", "box_Ordered_Output_7.Out", "box_CLOMonitor_3.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MissionLayer_v2_44_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_43
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0 = self.box_MissionLayer_v2_44
  l1 = self.box_CinematicPrep_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|Gyms\\Test_WorldSF\\Test_World.domino|@Test_World_Main|950925303", "950925303", "Test_World_Main", "box_MissionLayer_v2_44.Loaded", "box_CinematicPrep_43.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_MapPointController_v3_10_Shown()
  local l0, l1
  self = self._graph
  l0 = self.box_PawnHealthMonitor_v3_15
  l0.Pawn = self.TraitorNPC
  l0 = self.box_MapPointController_v3_10
  l1 = self.box_PawnHealthMonitor_v3_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|Gyms\\Test_WorldSF\\Test_World.domino|@Test_World_Main|1559356149", "1559356149", "Test_World_Main", "box_MapPointController_v3_10.Shown", "box_PawnHealthMonitor_v3_15.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MultipleOR_42_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_18"
  l0._elementPathId = "DocumentContainer|Gyms\\Test_WorldSF\\Test_World.domino|@Test_World_Main|1789684691"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_18_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_18_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_18_Out_2
  l0 = self.box_MultipleOR_42
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|Gyms\\Test_WorldSF\\Test_World.domino|@Test_World_Main|509870663", "509870663", "Test_World_Main", "box_MultipleOR_42.Out", "box_Ordered_Output_18.In", l0, l1)
  l1:In()
end
function export:f_box_Multiple_AND_30_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_8
  l0.MissionName = "MissionList.106034781"
  l0.Objective = {
    section = "MISSIONS.COMMON.MESSAGES.MISSIONSUCCESS",
    item = "MissionComplete_upper",
    id = "165443"
  }
  l0 = self.box_Multiple_AND_30
  l1 = self.box_MissionMessageController_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|Gyms\\Test_WorldSF\\Test_World.domino|@Test_World_Main|2066309579", "2066309579", "Test_World_Main", "box_Multiple_AND_30.Out", "box_MissionMessageController_8.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_Ordered_Output_18_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_7"
  l0._elementPathId = "DocumentContainer|Gyms\\Test_WorldSF\\Test_World.domino|@Test_World_Main|1280348190"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_7_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_7_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_7_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_7_Out_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|Gyms\\Test_WorldSF\\Test_World.domino|@Test_World_Main|412728972", "412728972", "Test_World_Main", "box_Ordered_Output_18.Out", "box_Ordered_Output_7.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_18_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_40
  l0.Checkpoint = "Checkpoint_0"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|Gyms\\Test_WorldSF\\Test_World.domino|@Test_World_Main|1761761171", "1761761171", "Test_World_Main", "box_Ordered_Output_18.Out", "box_MissionCheckpointReach_40.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_18_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_LivingCity_Spawner_Controller_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|Gyms\\Test_WorldSF\\Test_World.domino|@Test_World_Main|1813904723", "1813904723", "Test_World_Main", "box_Ordered_Output_18.Out", "box_LivingCity_Spawner_Controller_4.TriggerInitialSpawn", clone, l0)
  l0:TriggerInitialSpawn()
end
function export:f_box_PawnHealthMonitor_v3_15_Killed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_36"
  l0._elementPathId = "DocumentContainer|Gyms\\Test_WorldSF\\Test_World.domino|@Test_World_Main|945151119"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_36_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_36_Out_1
  l0 = self.box_PawnHealthMonitor_v3_15
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|Gyms\\Test_WorldSF\\Test_World.domino|@Test_World_Main|1151443909", "1151443909", "Test_World_Main", "box_PawnHealthMonitor_v3_15.Killed", "box_Ordered_Output_36.In", l0, l1)
  l1:In()
end
function export:f_box_CLOMonitor_5_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_5
  self.SearchNPC = l0.UserID
  l0 = Boxes[PathID("Domino/System/Bind_v2.lua")]
  l0.Parent = self.SearchNPC
  l0.Child = "9223372043673429623"
  l0.BoneName = nil
  l0.RemoveOffset = nil
  l0._graph = self
  l0._name = "box_Bind_v2_28"
  l0._elementPathId = "DocumentContainer|Gyms\\Test_WorldSF\\Test_World.domino|@Test_World_Main|976912563"
  l0.Bound = self.f_box_Bind_v2_28_Bound
  l0.UnBound = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_CLOMonitor_5
  l1 = Boxes[PathID("Domino/System/Bind_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|Gyms\\Test_WorldSF\\Test_World.domino|@Test_World_Main|2125420812", "2125420812", "Test_World_Main", "box_CLOMonitor_5.OnUserInPlace", "box_Bind_v2_28.Bind", l0, l1)
  l1:Bind()
end
function export:OnEnter_box_MapPointController_v3_14()
  local l0
  l0 = self.box_MapPointController_v3_14
  l0.MapPoint = "9223372043673429623"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Kill",
    id = "200565"
  }
end
function export:OnEnter_box_MapPointController_v3_10()
  local l0
  l0 = self.box_MapPointController_v3_10
  l0.MapPoint = "9223372043673451377"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Kill",
    id = "200565"
  }
end
function export:OnEnter_box_MultipleOR_42()
end
function export:OnEnter_box_Multiple_AND_30()
end
_compilerVersion = 4
