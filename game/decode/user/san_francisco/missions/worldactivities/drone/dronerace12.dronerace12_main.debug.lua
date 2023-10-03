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
  cbox:RegisterBox("domino/System/VehicleLightAndSiren_v2.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/TeleportEntity.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:RegisterBox("domino/System/VehicleController.lua")
end
function export:Init(cbox)
  local l0
  self._name = "DroneRace12_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace12.domino|@DroneRace12_Main"
  self.PlayerEntity = nil
  self.SongCount = 0
  self.Hour = 0
  self.SongIndex = 0
  self.SongsList = {}
  self.Car01 = nil
  self.Car02 = nil
  self.Car03 = nil
  self.PoliceCar01 = nil
  self.Firetruck01 = nil
  self.PoliceCar02 = nil
  self.Car04 = nil
  self.Ambulance01 = nil
  self.Car05 = nil
  self.box_TriggerMonitor_v2_42 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_42
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace12.domino|@DroneRace12_Main|166116444"
  l0.Enabled = self.f_box_TriggerMonitor_v2_42_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_42_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MissionCheckpointReach_4 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_4
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace12.domino|@DroneRace12_Main|187892970"
  l0.Out = self.f_box_MissionCheckpointReach_4_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MissionLayer_v2_12 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_12
  l0._graph = self
  l0._name = "box_MissionLayer_v2_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace12.domino|@DroneRace12_Main|210779281"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_12_Unloaded
  l0.Reseted = DummyFunction
  self.box_MultipleOR_5 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_5
  l0._graph = self
  l0._name = "box_MultipleOR_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace12.domino|@DroneRace12_Main|608238641"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_5_Out
  self.box_CLOController_48 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_48
  l0._graph = self
  l0._name = "box_CLOController_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace12.domino|@DroneRace12_Main|659727449"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_48_OnUserInPlace
  self.box_MissionLayer_v2_25 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_25
  l0._graph = self
  l0._name = "box_MissionLayer_v2_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace12.domino|@DroneRace12_Main|786210024"
  l0.Loaded = self.f_box_MissionLayer_v2_25_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_CLOController_44 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_44
  l0._graph = self
  l0._name = "box_CLOController_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace12.domino|@DroneRace12_Main|868843611"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_44_OnUserInPlace
  self.box_CLOController_39 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_39
  l0._graph = self
  l0._name = "box_CLOController_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace12.domino|@DroneRace12_Main|998111578"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_39_OnUserInPlace
  self.box_TriggerMonitor_v2_49 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_49
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace12.domino|@DroneRace12_Main|1021460784"
  l0.Enabled = self.f_box_TriggerMonitor_v2_49_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_49_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_Teleport_Entity_53 = cbox:CreateBox("domino/System/TeleportEntity.lua")
  l0 = self.box_Teleport_Entity_53
  l0._graph = self
  l0._name = "box_Teleport_Entity_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace12.domino|@DroneRace12_Main|1163406880"
  l0.Out = DummyFunction
  l0.TeleportDone = self.f_box_Teleport_Entity_53_TeleportDone
  self.box_RaceWithCinematic_1 = cbox:CreateBox("domino/Library/singleplayer/Racing/Racing_Helpers.RaceWithCinematic.debug.lua")
  l0 = self.box_RaceWithCinematic_1
  l0._graph = self
  l0._name = "box_RaceWithCinematic_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace12.domino|@DroneRace12_Main|1355292249"
  l0.OnRaceStarted = self.f_box_RaceWithCinematic_1_OnRaceStarted
  l0.OnRaceStopped = self.f_box_RaceWithCinematic_1_OnRaceStopped
  self.box_TriggerMonitor_v2_46 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_46
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace12.domino|@DroneRace12_Main|1395193296"
  l0.Enabled = self.f_box_TriggerMonitor_v2_46_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_46_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_CLOController_54 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_54
  l0._graph = self
  l0._name = "box_CLOController_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace12.domino|@DroneRace12_Main|1518078447"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_54_OnUserInPlace
  self.box_MissionController_v4_20 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_20
  l0._graph = self
  l0._name = "box_MissionController_v4_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace12.domino|@DroneRace12_Main|1571795125"
  self.box_CLOController_50 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_50
  l0._graph = self
  l0._name = "box_CLOController_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace12.domino|@DroneRace12_Main|1965212666"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_50_OnUserInPlace
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace12.domino|@DroneRace12_Main|341575582", "341575582", "DroneRace12_Main", "CheckPoint_0", "box_MultipleOR_5.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_5()
  l0 = self.box_MultipleOR_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace12.domino|@DroneRace12_Main|1482452230", "1482452230", "DroneRace12_Main", "In", "box_MultipleOR_5.Input", self, l0)
  l0:Input(0)
end
function export:f_box_Vehicle_Controller_40_EngineStarted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.PoliceCar01
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = nil
  l0.FlasherOn = 1
  l0.FlasherSelection = "Both"
  l0.SpotlightOn = 1
  l0.SpotlightSelection = "Both"
  l0.SpotlightTarget = nil
  l0.SirenOn = 0
  l0._graph = self
  l0._name = "box_SetVehicleLightAndSiren_v2_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace12.domino|@DroneRace12_Main|1493803857"
  l0.Out = self.f_box_SetVehicleLightAndSiren_v2_41_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace12.domino|@DroneRace12_Main|950170884", "950170884", "DroneRace12_Main", "box_Vehicle_Controller_40.EngineStarted", "box_SetVehicleLightAndSiren_v2_41.SetLightsAndSiren", clone, l0)
  l0:SetLightsAndSiren()
end
function export:f_box_TriggerMonitor_v2_42_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_49()
  l0 = self.box_TriggerMonitor_v2_42
  l1 = self.box_TriggerMonitor_v2_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace12.domino|@DroneRace12_Main|78447017", "78447017", "DroneRace12_Main", "box_TriggerMonitor_v2_42.Enabled", "box_TriggerMonitor_v2_49.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TriggerMonitor_v2_42_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_39
  l0.CLO = "9223372058706238407"
  l0 = self.box_TriggerMonitor_v2_42
  l1 = self.box_CLOController_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace12.domino|@DroneRace12_Main|703463668", "703463668", "DroneRace12_Main", "box_TriggerMonitor_v2_42.Enter", "box_CLOController_39.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_MissionCheckpointReach_4_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_RaceWithCinematic_1
  l0.Config = "RaceDbConfig.9223372057216458050"
  l0.CinematicSceneEntity = "9223372059495809521"
  l0.CinematicSequenceFile = "sequences/DroneRaces/dronerace12.seq"
  l0 = self.box_MissionCheckpointReach_4
  l1 = self.box_RaceWithCinematic_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace12.domino|@DroneRace12_Main|976298041", "976298041", "DroneRace12_Main", "box_MissionCheckpointReach_4.Out", "box_RaceWithCinematic_1.StartRace", l0, l1)
  l1:StartRace()
end
function export:f_box_MissionLayer_v2_12_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_12
  l1 = self.box_MissionController_v4_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace12.domino|@DroneRace12_Main|491890409", "491890409", "DroneRace12_Main", "box_MissionLayer_v2_12.Unloaded", "box_MissionController_v4_20.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_SetVehicleLightAndSiren_v2_52_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_49()
  l0 = self.box_TriggerMonitor_v2_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace12.domino|@DroneRace12_Main|1284689987", "1284689987", "DroneRace12_Main", "box_SetVehicleLightAndSiren_v2_52.Out", "box_TriggerMonitor_v2_49.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_MultipleOR_5_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_25
  l0.LayerName = "DroneRace_12_Main"
  l0 = self.box_MultipleOR_5
  l1 = self.box_MissionLayer_v2_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace12.domino|@DroneRace12_Main|421276153", "421276153", "DroneRace12_Main", "box_MultipleOR_5.Out", "box_MissionLayer_v2_25.Load", l0, l1)
  l1:Load()
end
function export:f_box_Vehicle_Controller_55_VehicleExploded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_46()
  l0 = self.box_TriggerMonitor_v2_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace12.domino|@DroneRace12_Main|1651213395", "1651213395", "DroneRace12_Main", "box_Vehicle_Controller_55.VehicleExploded", "box_TriggerMonitor_v2_46.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_CLOController_48_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_48
  self.Car04 = l0.UserID
  self:OnEnter_box_TriggerMonitor_v2_42()
  l1 = self.box_TriggerMonitor_v2_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace12.domino|@DroneRace12_Main|498333670", "498333670", "DroneRace12_Main", "box_CLOController_48.OnUserInPlace", "box_TriggerMonitor_v2_42.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MissionLayer_v2_25_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace12.domino|@DroneRace12_Main|1925961718"
  l0.Out = self.f_box_Get_Player_ID_11_Out
  l0 = self.box_MissionLayer_v2_25
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace12.domino|@DroneRace12_Main|1745025194", "1745025194", "DroneRace12_Main", "box_MissionLayer_v2_25.Loaded", "box_Get_Player_ID_11.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_44_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_44
  self.PoliceCar02 = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.PoliceCar02
  l0._graph = self
  l0._name = "box_Vehicle_Controller_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace12.domino|@DroneRace12_Main|1963147414"
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.Destructable = DummyFunction
  l0.Indestructable = DummyFunction
  l0.Deflatable = DummyFunction
  l0.Undeflatable = DummyFunction
  l0.Unmovable = DummyFunction
  l0.Movable = DummyFunction
  l0.EngineBroken = DummyFunction
  l0.EngineShutDown = DummyFunction
  l0.EngineStarted = self.f_box_Vehicle_Controller_45_EngineStarted
  l0.VehicleExploded = DummyFunction
  l0.VehicleAlarmHackOn = DummyFunction
  l0.VehicleAlarmHackOff = DummyFunction
  l0 = self.box_CLOController_44
  l1 = Boxes[PathID("domino/System/VehicleController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace12.domino|@DroneRace12_Main|1100297081", "1100297081", "DroneRace12_Main", "box_CLOController_44.OnUserInPlace", "box_Vehicle_Controller_45.StartEngine", l0, l1)
  l1:StartEngine()
end
function export:f_box_Vehicle_Controller_51_EngineStarted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.Ambulance01
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = nil
  l0.FlasherOn = 1
  l0.FlasherSelection = "Both"
  l0.SpotlightOn = 1
  l0.SpotlightSelection = "Both"
  l0.SpotlightTarget = nil
  l0.SirenOn = 0
  l0._graph = self
  l0._name = "box_SetVehicleLightAndSiren_v2_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace12.domino|@DroneRace12_Main|305677880"
  l0.Out = self.f_box_SetVehicleLightAndSiren_v2_52_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace12.domino|@DroneRace12_Main|1842316435", "1842316435", "DroneRace12_Main", "box_Vehicle_Controller_51.EngineStarted", "box_SetVehicleLightAndSiren_v2_52.SetLightsAndSiren", clone, l0)
  l0:SetLightsAndSiren()
end
function export:f_box_CLOController_39_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_39
  self.PoliceCar01 = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.PoliceCar01
  l0._graph = self
  l0._name = "box_Vehicle_Controller_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace12.domino|@DroneRace12_Main|55597909"
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.Destructable = DummyFunction
  l0.Indestructable = DummyFunction
  l0.Deflatable = DummyFunction
  l0.Undeflatable = DummyFunction
  l0.Unmovable = DummyFunction
  l0.Movable = DummyFunction
  l0.EngineBroken = DummyFunction
  l0.EngineShutDown = DummyFunction
  l0.EngineStarted = self.f_box_Vehicle_Controller_40_EngineStarted
  l0.VehicleExploded = DummyFunction
  l0.VehicleAlarmHackOn = DummyFunction
  l0.VehicleAlarmHackOff = DummyFunction
  l0 = self.box_CLOController_39
  l1 = Boxes[PathID("domino/System/VehicleController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace12.domino|@DroneRace12_Main|724586544", "724586544", "DroneRace12_Main", "box_CLOController_39.OnUserInPlace", "box_Vehicle_Controller_40.StartEngine", l0, l1)
  l1:StartEngine()
end
function export:f_box_TriggerMonitor_v2_49_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_46()
  l0 = self.box_TriggerMonitor_v2_49
  l1 = self.box_TriggerMonitor_v2_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace12.domino|@DroneRace12_Main|1164144126", "1164144126", "DroneRace12_Main", "box_TriggerMonitor_v2_49.Enabled", "box_TriggerMonitor_v2_46.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TriggerMonitor_v2_49_Enter()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.Car04
  l0._graph = self
  l0._name = "box_Vehicle_Controller_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace12.domino|@DroneRace12_Main|1532433683"
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.Destructable = DummyFunction
  l0.Indestructable = DummyFunction
  l0.Deflatable = DummyFunction
  l0.Undeflatable = DummyFunction
  l0.Unmovable = DummyFunction
  l0.Movable = DummyFunction
  l0.EngineBroken = DummyFunction
  l0.EngineShutDown = DummyFunction
  l0.EngineStarted = DummyFunction
  l0.VehicleExploded = self.f_box_Vehicle_Controller_47_VehicleExploded
  l0.VehicleAlarmHackOn = DummyFunction
  l0.VehicleAlarmHackOff = DummyFunction
  l0 = self.box_TriggerMonitor_v2_49
  l1 = Boxes[PathID("domino/System/VehicleController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace12.domino|@DroneRace12_Main|989118854", "989118854", "DroneRace12_Main", "box_TriggerMonitor_v2_49.Enter", "box_Vehicle_Controller_47.ExplodeVehicle", l0, l1)
  l1:ExplodeVehicle()
end
function export:f_box_SetVehicleLightAndSiren_v2_43_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_54
  l0.CLO = "9223372058706239852"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace12.domino|@DroneRace12_Main|1900721566", "1900721566", "DroneRace12_Main", "box_SetVehicleLightAndSiren_v2_43.Out", "box_CLOController_54.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Teleport_Entity_53_TeleportDone()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_50
  l0.CLO = "9223372058706239487"
  l0 = self.box_Teleport_Entity_53
  l1 = self.box_CLOController_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace12.domino|@DroneRace12_Main|83201295", "83201295", "DroneRace12_Main", "box_Teleport_Entity_53.TeleportDone", "box_CLOController_50.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_RaceWithCinematic_1_OnRaceStarted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_42()
  l0 = self.box_RaceWithCinematic_1
  l1 = self.box_TriggerMonitor_v2_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace12.domino|@DroneRace12_Main|1724544492", "1724544492", "DroneRace12_Main", "box_RaceWithCinematic_1.OnRaceStarted", "box_TriggerMonitor_v2_42.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_RaceWithCinematic_1_OnRaceStopped()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_12
  l0.LayerName = "DroneRace_12_Main"
  l0 = self.box_RaceWithCinematic_1
  l1 = self.box_MissionLayer_v2_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace12.domino|@DroneRace12_Main|1007836532", "1007836532", "DroneRace12_Main", "box_RaceWithCinematic_1.OnRaceStopped", "box_MissionLayer_v2_12.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_TriggerMonitor_v2_46_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace12.domino|@DroneRace12_Main|1034265532"
  l0.Out = DummyFunction
  l0 = self.box_TriggerMonitor_v2_46
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace12.domino|@DroneRace12_Main|195350597", "195350597", "DroneRace12_Main", "box_TriggerMonitor_v2_46.Enabled", "box_Simple_Node_35.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_46_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_44
  l0.CLO = "9223372058706238767"
  l0 = self.box_TriggerMonitor_v2_46
  l1 = self.box_CLOController_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace12.domino|@DroneRace12_Main|357505656", "357505656", "DroneRace12_Main", "box_TriggerMonitor_v2_46.Enter", "box_CLOController_44.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_SetVehicleLightAndSiren_v2_41_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_48
  l0.CLO = "9223372058706239127"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace12.domino|@DroneRace12_Main|87326819", "87326819", "DroneRace12_Main", "box_SetVehicleLightAndSiren_v2_41.Out", "box_CLOController_48.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_CLOController_54_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_54
  self.Car05 = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.Car05
  l0._graph = self
  l0._name = "box_Vehicle_Controller_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace12.domino|@DroneRace12_Main|642845836"
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.Destructable = DummyFunction
  l0.Indestructable = DummyFunction
  l0.Deflatable = DummyFunction
  l0.Undeflatable = DummyFunction
  l0.Unmovable = DummyFunction
  l0.Movable = DummyFunction
  l0.EngineBroken = DummyFunction
  l0.EngineShutDown = DummyFunction
  l0.EngineStarted = DummyFunction
  l0.VehicleExploded = self.f_box_Vehicle_Controller_55_VehicleExploded
  l0.VehicleAlarmHackOn = DummyFunction
  l0.VehicleAlarmHackOff = DummyFunction
  l0 = self.box_CLOController_54
  l1 = Boxes[PathID("domino/System/VehicleController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace12.domino|@DroneRace12_Main|1592636688", "1592636688", "DroneRace12_Main", "box_CLOController_54.OnUserInPlace", "box_Vehicle_Controller_55.ExplodeVehicle", l0, l1)
  l1:ExplodeVehicle()
end
function export:f_box_Vehicle_Controller_47_VehicleExploded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Teleport_Entity_53
  l0.Entity = self.PoliceCar01
  l0.Destination = "9223372058706239847"
  l0.UseFadeToBlack = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace12.domino|@DroneRace12_Main|1791314359", "1791314359", "DroneRace12_Main", "box_Vehicle_Controller_47.VehicleExploded", "box_Teleport_Entity_53.In", clone, l0)
  l0:In()
end
function export:f_box_Get_Player_ID_11_Out()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace12.domino|@DroneRace12_Main|1901929487", "1901929487", "DroneRace12_Main", "box_Get_Player_ID_11.Out", "box_MissionCheckpointReach_4.In", clone, l0)
  l0:In()
end
function export:f_box_Vehicle_Controller_45_EngineStarted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.PoliceCar02
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = nil
  l0.FlasherOn = 1
  l0.FlasherSelection = "Both"
  l0.SpotlightOn = 1
  l0.SpotlightSelection = "Both"
  l0.SpotlightTarget = nil
  l0.SirenOn = 0
  l0._graph = self
  l0._name = "box_SetVehicleLightAndSiren_v2_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace12.domino|@DroneRace12_Main|1071590786"
  l0.Out = self.f_box_SetVehicleLightAndSiren_v2_43_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace12.domino|@DroneRace12_Main|906991971", "906991971", "DroneRace12_Main", "box_Vehicle_Controller_45.EngineStarted", "box_SetVehicleLightAndSiren_v2_43.SetLightsAndSiren", clone, l0)
  l0:SetLightsAndSiren()
end
function export:f_box_CLOController_50_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_50
  self.Ambulance01 = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.Ambulance01
  l0._graph = self
  l0._name = "box_Vehicle_Controller_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace12.domino|@DroneRace12_Main|918189109"
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.Destructable = DummyFunction
  l0.Indestructable = DummyFunction
  l0.Deflatable = DummyFunction
  l0.Undeflatable = DummyFunction
  l0.Unmovable = DummyFunction
  l0.Movable = DummyFunction
  l0.EngineBroken = DummyFunction
  l0.EngineShutDown = DummyFunction
  l0.EngineStarted = self.f_box_Vehicle_Controller_51_EngineStarted
  l0.VehicleExploded = DummyFunction
  l0.VehicleAlarmHackOn = DummyFunction
  l0.VehicleAlarmHackOff = DummyFunction
  l0 = self.box_CLOController_50
  l1 = Boxes[PathID("domino/System/VehicleController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace12.domino|@DroneRace12_Main|490565865", "490565865", "DroneRace12_Main", "box_CLOController_50.OnUserInPlace", "box_Vehicle_Controller_51.StartEngine", l0, l1)
  l1:StartEngine()
end
function export:OnEnter_box_TriggerMonitor_v2_42()
  local l0
  l0 = self.box_TriggerMonitor_v2_42
  l0.Trigger = "9223372057358567971"
end
function export:OnEnter_box_MultipleOR_5()
end
function export:OnEnter_box_TriggerMonitor_v2_49()
  local l0
  l0 = self.box_TriggerMonitor_v2_49
  l0.Trigger = "9223372057358569626"
end
function export:OnEnter_box_TriggerMonitor_v2_46()
  local l0
  l0 = self.box_TriggerMonitor_v2_46
  l0.Trigger = "9223372057358568003"
end
_compilerVersion = 4
