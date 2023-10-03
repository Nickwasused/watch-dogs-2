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
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:RegisterBox("domino/System/VehicleController.lua")
end
function export:Init(cbox)
  local l0
  self._name = "DroneRace14_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace14.domino|@DroneRace14_Main"
  self.PlayerEntity = nil
  self.SongIndex = 0
  self.SongsList = {}
  self.SongCount = 0
  self.Hour = 0
  self.PoliceCar1 = nil
  self.PoliceBoat1 = nil
  self.PoliceBoat01 = nil
  self.PoliceBoat02 = nil
  self.box_MultipleOR_27 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_27
  l0._graph = self
  l0._name = "box_MultipleOR_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace14.domino|@DroneRace14_Main|230263479"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_27_Out
  self.box_CLOController_3 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_3
  l0._graph = self
  l0._name = "box_CLOController_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace14.domino|@DroneRace14_Main|443971409"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_3_OnUserInPlace
  self.box_MissionController_v4_18 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_18
  l0._graph = self
  l0._name = "box_MissionController_v4_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace14.domino|@DroneRace14_Main|593768558"
  self.box_RaceWithCinematic_1 = cbox:CreateBox("domino/Library/singleplayer/Racing/Racing_Helpers.RaceWithCinematic.debug.lua")
  l0 = self.box_RaceWithCinematic_1
  l0._graph = self
  l0._name = "box_RaceWithCinematic_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace14.domino|@DroneRace14_Main|644802260"
  l0.OnRaceStarted = self.f_box_RaceWithCinematic_1_OnRaceStarted
  l0.OnRaceStopped = self.f_box_RaceWithCinematic_1_OnRaceStopped
  self.box_CLOController_8 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_8
  l0._graph = self
  l0._name = "box_CLOController_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace14.domino|@DroneRace14_Main|1250680084"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_8_OnUserInPlace
  self.box_MissionLayer_v2_20 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_20
  l0._graph = self
  l0._name = "box_MissionLayer_v2_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace14.domino|@DroneRace14_Main|1410904201"
  l0.Loaded = self.f_box_MissionLayer_v2_20_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_TriggerMonitor_v2_29 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_29
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace14.domino|@DroneRace14_Main|1527355015"
  l0.Enabled = self.f_box_TriggerMonitor_v2_29_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_29_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MissionCheckpointReach_6 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_6
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace14.domino|@DroneRace14_Main|1585567600"
  l0.Out = self.f_box_MissionCheckpointReach_6_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MissionLayer_v2_9 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_9
  l0._graph = self
  l0._name = "box_MissionLayer_v2_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace14.domino|@DroneRace14_Main|1694932969"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_9_Unloaded
  l0.Reseted = DummyFunction
  self.box_TriggerMonitor_v2_10 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_10
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace14.domino|@DroneRace14_Main|1995329820"
  l0.Enabled = self.f_box_TriggerMonitor_v2_10_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_10_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_CLOController_30 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_30
  l0._graph = self
  l0._name = "box_CLOController_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace14.domino|@DroneRace14_Main|2075947514"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_30_OnUserInPlace
  self.box_TriggerMonitor_v2_4 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_4
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace14.domino|@DroneRace14_Main|2113878094"
  l0.Enabled = self.f_box_TriggerMonitor_v2_4_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_4_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
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
  self:OnEnter_box_MultipleOR_27()
  l0 = self.box_MultipleOR_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace14.domino|@DroneRace14_Main|435202407", "435202407", "DroneRace14_Main", "CheckPoint_0", "box_MultipleOR_27.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_27()
  l0 = self.box_MultipleOR_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace14.domino|@DroneRace14_Main|209556065", "209556065", "DroneRace14_Main", "In", "box_MultipleOR_27.Input", self, l0)
  l0:Input(0)
end
function export:f_box_MultipleOR_27_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_20
  l0.LayerName = "DroneRace_14_Main"
  l0 = self.box_MultipleOR_27
  l1 = self.box_MissionLayer_v2_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace14.domino|@DroneRace14_Main|1845734209", "1845734209", "DroneRace14_Main", "box_MultipleOR_27.Out", "box_MissionLayer_v2_20.Load", l0, l1)
  l1:Load()
end
function export:f_box_SetVehicleLightAndSiren_v2_31_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_29()
  l0 = self.box_TriggerMonitor_v2_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace14.domino|@DroneRace14_Main|744908242", "744908242", "DroneRace14_Main", "box_SetVehicleLightAndSiren_v2_31.Out", "box_TriggerMonitor_v2_29.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Vehicle_Controller_11_EngineStarted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.PoliceBoat02
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = nil
  l0.FlasherOn = 1
  l0.FlasherSelection = "Both"
  l0.SpotlightOn = 1
  l0.SpotlightSelection = nil
  l0.SpotlightTarget = nil
  l0.SirenOn = 0
  l0._graph = self
  l0._name = "box_SetVehicleLightAndSiren_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace14.domino|@DroneRace14_Main|1780220170"
  l0.Out = self.f_box_SetVehicleLightAndSiren_v2_7_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace14.domino|@DroneRace14_Main|974916352", "974916352", "DroneRace14_Main", "box_Vehicle_Controller_11.EngineStarted", "box_SetVehicleLightAndSiren_v2_7.SetLightsAndSiren", clone, l0)
  l0:SetLightsAndSiren()
end
function export:f_box_CLOController_3_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_3
  self.PoliceBoat01 = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.PoliceBoat01
  l0._graph = self
  l0._name = "box_Vehicle_Controller_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace14.domino|@DroneRace14_Main|726320779"
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
  l0.EngineStarted = self.f_box_Vehicle_Controller_5_EngineStarted
  l0.VehicleExploded = DummyFunction
  l0.VehicleAlarmHackOn = DummyFunction
  l0.VehicleAlarmHackOff = DummyFunction
  l0 = self.box_CLOController_3
  l1 = Boxes[PathID("domino/System/VehicleController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace14.domino|@DroneRace14_Main|1885538624", "1885538624", "DroneRace14_Main", "box_CLOController_3.OnUserInPlace", "box_Vehicle_Controller_5.StartEngine", l0, l1)
  l1:StartEngine()
end
function export:f_box_RaceWithCinematic_1_OnRaceStarted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace14.domino|@DroneRace14_Main|685365184"
  l0.Out = self.f_box_Simple_Node_23_Out
  l0 = self.box_RaceWithCinematic_1
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace14.domino|@DroneRace14_Main|1767493069", "1767493069", "DroneRace14_Main", "box_RaceWithCinematic_1.OnRaceStarted", "box_Simple_Node_23.In", l0, l1)
  l1:In()
end
function export:f_box_RaceWithCinematic_1_OnRaceStopped()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_9
  l0.LayerName = "DroneRace_14_Main"
  l0 = self.box_RaceWithCinematic_1
  l1 = self.box_MissionLayer_v2_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace14.domino|@DroneRace14_Main|796569774", "796569774", "DroneRace14_Main", "box_RaceWithCinematic_1.OnRaceStopped", "box_MissionLayer_v2_9.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_Simple_Node_23_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_29()
  l0 = self.box_TriggerMonitor_v2_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace14.domino|@DroneRace14_Main|1567784107", "1567784107", "DroneRace14_Main", "box_Simple_Node_23.Out", "box_TriggerMonitor_v2_29.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Vehicle_Controller_5_EngineStarted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.PoliceBoat01
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = nil
  l0.FlasherOn = 1
  l0.FlasherSelection = "Both"
  l0.SpotlightOn = 1
  l0.SpotlightSelection = nil
  l0.SpotlightTarget = nil
  l0.SirenOn = 0
  l0._graph = self
  l0._name = "box_SetVehicleLightAndSiren_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace14.domino|@DroneRace14_Main|1919259526"
  l0.Out = self.f_box_SetVehicleLightAndSiren_v2_2_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace14.domino|@DroneRace14_Main|1777080228", "1777080228", "DroneRace14_Main", "box_Vehicle_Controller_5.EngineStarted", "box_SetVehicleLightAndSiren_v2_2.SetLightsAndSiren", clone, l0)
  l0:SetLightsAndSiren()
end
function export:f_box_Vehicle_Controller_35_EngineStarted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.PoliceCar1
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = nil
  l0.FlasherOn = 1
  l0.FlasherSelection = "Both"
  l0.SpotlightOn = 1
  l0.SpotlightSelection = nil
  l0.SpotlightTarget = nil
  l0.SirenOn = 0
  l0._graph = self
  l0._name = "box_SetVehicleLightAndSiren_v2_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace14.domino|@DroneRace14_Main|256435654"
  l0.Out = self.f_box_SetVehicleLightAndSiren_v2_31_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace14.domino|@DroneRace14_Main|1427081613", "1427081613", "DroneRace14_Main", "box_Vehicle_Controller_35.EngineStarted", "box_SetVehicleLightAndSiren_v2_31.SetLightsAndSiren", clone, l0)
  l0:SetLightsAndSiren()
end
function export:f_box_CLOController_8_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_8
  self.PoliceBoat02 = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.PoliceBoat02
  l0._graph = self
  l0._name = "box_Vehicle_Controller_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace14.domino|@DroneRace14_Main|405768083"
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
  l0.EngineStarted = self.f_box_Vehicle_Controller_11_EngineStarted
  l0.VehicleExploded = DummyFunction
  l0.VehicleAlarmHackOn = DummyFunction
  l0.VehicleAlarmHackOff = DummyFunction
  l0 = self.box_CLOController_8
  l1 = Boxes[PathID("domino/System/VehicleController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace14.domino|@DroneRace14_Main|218595530", "218595530", "DroneRace14_Main", "box_CLOController_8.OnUserInPlace", "box_Vehicle_Controller_11.StartEngine", l0, l1)
  l1:StartEngine()
end
function export:f_box_MissionLayer_v2_20_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace14.domino|@DroneRace14_Main|2036607513"
  l0.Out = self.f_box_Get_Player_ID_13_Out
  l0 = self.box_MissionLayer_v2_20
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace14.domino|@DroneRace14_Main|171063974", "171063974", "DroneRace14_Main", "box_MissionLayer_v2_20.Loaded", "box_Get_Player_ID_13.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_29_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_10()
  l0 = self.box_TriggerMonitor_v2_29
  l1 = self.box_TriggerMonitor_v2_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace14.domino|@DroneRace14_Main|147927966", "147927966", "DroneRace14_Main", "box_TriggerMonitor_v2_29.Enabled", "box_TriggerMonitor_v2_10.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TriggerMonitor_v2_29_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_30
  l0.CLO = "9223372058496933850"
  l0 = self.box_TriggerMonitor_v2_29
  l1 = self.box_CLOController_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace14.domino|@DroneRace14_Main|1836705035", "1836705035", "DroneRace14_Main", "box_TriggerMonitor_v2_29.Enter", "box_CLOController_30.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_MissionCheckpointReach_6_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_RaceWithCinematic_1
  l0.Config = "RaceDbConfig.9223372057657398418"
  l0.CinematicSceneEntity = "9223372059495628102"
  l0.CinematicSequenceFile = "sequences/DroneRaces/dronerace14.seq"
  l0 = self.box_MissionCheckpointReach_6
  l1 = self.box_RaceWithCinematic_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace14.domino|@DroneRace14_Main|151294871", "151294871", "DroneRace14_Main", "box_MissionCheckpointReach_6.Out", "box_RaceWithCinematic_1.StartRace", l0, l1)
  l1:StartRace()
end
function export:f_box_MissionLayer_v2_9_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_9
  l1 = self.box_MissionController_v4_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace14.domino|@DroneRace14_Main|147745167", "147745167", "DroneRace14_Main", "box_MissionLayer_v2_9.Unloaded", "box_MissionController_v4_18.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_SetVehicleLightAndSiren_v2_7_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_10()
  l0 = self.box_TriggerMonitor_v2_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace14.domino|@DroneRace14_Main|861190697", "861190697", "DroneRace14_Main", "box_SetVehicleLightAndSiren_v2_7.Out", "box_TriggerMonitor_v2_10.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_SetVehicleLightAndSiren_v2_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_4()
  l0 = self.box_TriggerMonitor_v2_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace14.domino|@DroneRace14_Main|403895914", "403895914", "DroneRace14_Main", "box_SetVehicleLightAndSiren_v2_2.Out", "box_TriggerMonitor_v2_4.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_TriggerMonitor_v2_10_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_4()
  l0 = self.box_TriggerMonitor_v2_10
  l1 = self.box_TriggerMonitor_v2_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace14.domino|@DroneRace14_Main|1626480142", "1626480142", "DroneRace14_Main", "box_TriggerMonitor_v2_10.Enabled", "box_TriggerMonitor_v2_4.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TriggerMonitor_v2_10_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_8
  l0.CLO = "9223372070572139094"
  l0 = self.box_TriggerMonitor_v2_10
  l1 = self.box_CLOController_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace14.domino|@DroneRace14_Main|759263379", "759263379", "DroneRace14_Main", "box_TriggerMonitor_v2_10.Enter", "box_CLOController_8.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Get_Player_ID_13_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_6
  l0.Checkpoint = "CheckPoint_0"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace14.domino|@DroneRace14_Main|953923659", "953923659", "DroneRace14_Main", "box_Get_Player_ID_13.Out", "box_MissionCheckpointReach_6.In", clone, l0)
  l0:In()
end
function export:f_box_CLOController_30_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_30
  self.PoliceCar1 = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.PoliceCar1
  l0._graph = self
  l0._name = "box_Vehicle_Controller_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace14.domino|@DroneRace14_Main|831977767"
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
  l0.EngineStarted = self.f_box_Vehicle_Controller_35_EngineStarted
  l0.VehicleExploded = DummyFunction
  l0.VehicleAlarmHackOn = DummyFunction
  l0.VehicleAlarmHackOff = DummyFunction
  l0 = self.box_CLOController_30
  l1 = Boxes[PathID("domino/System/VehicleController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace14.domino|@DroneRace14_Main|702224467", "702224467", "DroneRace14_Main", "box_CLOController_30.OnUserInPlace", "box_Vehicle_Controller_35.StartEngine", l0, l1)
  l1:StartEngine()
end
function export:f_box_TriggerMonitor_v2_4_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace14.domino|@DroneRace14_Main|1685983305"
  l0.Out = DummyFunction
  l0 = self.box_TriggerMonitor_v2_4
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace14.domino|@DroneRace14_Main|548736129", "548736129", "DroneRace14_Main", "box_TriggerMonitor_v2_4.Enabled", "box_Simple_Node_32.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_4_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_3
  l0.CLO = "9223372070572138909"
  l0 = self.box_TriggerMonitor_v2_4
  l1 = self.box_CLOController_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace14.domino|@DroneRace14_Main|875498444", "875498444", "DroneRace14_Main", "box_TriggerMonitor_v2_4.Enter", "box_CLOController_3.Activate", l0, l1)
  l1:Activate()
end
function export:OnEnter_box_MultipleOR_27()
end
function export:OnEnter_box_TriggerMonitor_v2_29()
  local l0
  l0 = self.box_TriggerMonitor_v2_29
  l0.Trigger = "9223372057657398362"
end
function export:OnEnter_box_TriggerMonitor_v2_10()
  local l0
  l0 = self.box_TriggerMonitor_v2_10
  l0.Trigger = "9223372057657398368"
end
function export:OnEnter_box_TriggerMonitor_v2_4()
  local l0
  l0 = self.box_TriggerMonitor_v2_4
  l0.Trigger = "9223372057657398380"
end
_compilerVersion = 4
