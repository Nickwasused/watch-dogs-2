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
  self._name = "DroneRace11_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace11.domino|@DroneRace11_Main"
  self.PlayerEntity = nil
  self.Hour = 0
  self.SongsList = {}
  self.SongIndex = 0
  self.SongCount = 0
  self.Car01 = nil
  self.Firetruck01 = nil
  self.PoliceCar01 = nil
  self.PoliceCar02 = nil
  self.box_MissionCheckpointReach_10 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_10
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace11.domino|@DroneRace11_Main|70340172"
  l0.Out = self.f_box_MissionCheckpointReach_10_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MultipleOR_2 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_2
  l0._graph = self
  l0._name = "box_MultipleOR_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace11.domino|@DroneRace11_Main|167380909"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_2_Out
  self.box_MissionLayer_v2_1 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_1
  l0._graph = self
  l0._name = "box_MissionLayer_v2_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace11.domino|@DroneRace11_Main|252981748"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_1_Unloaded
  l0.Reseted = DummyFunction
  self.box_CLOController_43 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_43
  l0._graph = self
  l0._name = "box_CLOController_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace11.domino|@DroneRace11_Main|267705151"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_43_OnUserInPlace
  self.box_CLOController_34 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_34
  l0._graph = self
  l0._name = "box_CLOController_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace11.domino|@DroneRace11_Main|296882536"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_34_OnUserInPlace
  self.box_TriggerMonitor_v2_41 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_41
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace11.domino|@DroneRace11_Main|495070136"
  l0.Enabled = self.f_box_TriggerMonitor_v2_41_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_41_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MissionLayer_v2_15 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_15
  l0._graph = self
  l0._name = "box_MissionLayer_v2_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace11.domino|@DroneRace11_Main|646919505"
  l0.Loaded = self.f_box_MissionLayer_v2_15_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_TriggerMonitor_v2_47 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_47
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace11.domino|@DroneRace11_Main|1138734275"
  l0.Enabled = self.f_box_TriggerMonitor_v2_47_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_TriggerMonitor_v2_33 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_33
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace11.domino|@DroneRace11_Main|1382319012"
  l0.Enabled = self.f_box_TriggerMonitor_v2_33_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_33_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MissionController_v4_19 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_19
  l0._graph = self
  l0._name = "box_MissionController_v4_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace11.domino|@DroneRace11_Main|1556306474"
  self.box_RaceWithCinematic_3 = cbox:CreateBox("domino/Library/singleplayer/Racing/Racing_Helpers.RaceWithCinematic.debug.lua")
  l0 = self.box_RaceWithCinematic_3
  l0._graph = self
  l0._name = "box_RaceWithCinematic_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace11.domino|@DroneRace11_Main|1581204226"
  l0.OnRaceStarted = self.f_box_RaceWithCinematic_3_OnRaceStarted
  l0.OnRaceStopped = self.f_box_RaceWithCinematic_3_OnRaceStopped
  self.box_CLOController_38 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_38
  l0._graph = self
  l0._name = "box_CLOController_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace11.domino|@DroneRace11_Main|1598780712"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_38_OnUserInPlace
  self.box_TriggerMonitor_v2_37 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_37
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace11.domino|@DroneRace11_Main|1997539711"
  l0.Enabled = self.f_box_TriggerMonitor_v2_37_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_37_Enter
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
  self:OnEnter_box_MultipleOR_2()
  l0 = self.box_MultipleOR_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace11.domino|@DroneRace11_Main|96873220", "96873220", "DroneRace11_Main", "CheckPoint_0", "box_MultipleOR_2.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_2()
  l0 = self.box_MultipleOR_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace11.domino|@DroneRace11_Main|655509281", "655509281", "DroneRace11_Main", "In", "box_MultipleOR_2.Input", self, l0)
  l0:Input(0)
end
function export:f_box_SetVehicleLightAndSiren_v2_31_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_33()
  l0 = self.box_TriggerMonitor_v2_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace11.domino|@DroneRace11_Main|2090806613", "2090806613", "DroneRace11_Main", "box_SetVehicleLightAndSiren_v2_31.Out", "box_TriggerMonitor_v2_33.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_MissionCheckpointReach_10_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_RaceWithCinematic_3
  l0.Config = "RaceDbConfig.9223372057216458049"
  l0.CinematicSceneEntity = "9223372059495627902"
  l0.CinematicSequenceFile = "sequences/DroneRaces/dronerace11.seq"
  l0 = self.box_MissionCheckpointReach_10
  l1 = self.box_RaceWithCinematic_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace11.domino|@DroneRace11_Main|1049384251", "1049384251", "DroneRace11_Main", "box_MissionCheckpointReach_10.Out", "box_RaceWithCinematic_3.StartRace", l0, l1)
  l1:StartRace()
end
function export:f_box_MultipleOR_2_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_15
  l0.LayerName = "DroneRace_11_Main"
  l0 = self.box_MultipleOR_2
  l1 = self.box_MissionLayer_v2_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace11.domino|@DroneRace11_Main|1367553785", "1367553785", "DroneRace11_Main", "box_MultipleOR_2.Out", "box_MissionLayer_v2_15.Load", l0, l1)
  l1:Load()
end
function export:f_box_MissionLayer_v2_1_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_1
  l1 = self.box_MissionController_v4_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace11.domino|@DroneRace11_Main|404618164", "404618164", "DroneRace11_Main", "box_MissionLayer_v2_1.Unloaded", "box_MissionController_v4_19.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_CLOController_43_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_43
  self.PoliceCar02 = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.PoliceCar02
  l0._graph = self
  l0._name = "box_Vehicle_Controller_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace11.domino|@DroneRace11_Main|353300831"
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
  l0.EngineStarted = self.f_box_Vehicle_Controller_44_EngineStarted
  l0.VehicleExploded = DummyFunction
  l0.VehicleAlarmHackOn = DummyFunction
  l0.VehicleAlarmHackOff = DummyFunction
  l0 = self.box_CLOController_43
  l1 = Boxes[PathID("domino/System/VehicleController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace11.domino|@DroneRace11_Main|2053373014", "2053373014", "DroneRace11_Main", "box_CLOController_43.OnUserInPlace", "box_Vehicle_Controller_44.StartEngine", l0, l1)
  l1:StartEngine()
end
function export:f_box_CLOController_34_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_34
  self.Firetruck01 = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.Firetruck01
  l0._graph = self
  l0._name = "box_Vehicle_Controller_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace11.domino|@DroneRace11_Main|434457385"
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
  l0 = self.box_CLOController_34
  l1 = Boxes[PathID("domino/System/VehicleController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace11.domino|@DroneRace11_Main|1790664032", "1790664032", "DroneRace11_Main", "box_CLOController_34.OnUserInPlace", "box_Vehicle_Controller_35.StartEngine", l0, l1)
  l1:StartEngine()
end
function export:f_box_Vehicle_Controller_44_EngineStarted()
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
  l0._name = "box_SetVehicleLightAndSiren_v2_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace11.domino|@DroneRace11_Main|559661116"
  l0.Out = self.f_box_SetVehicleLightAndSiren_v2_42_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace11.domino|@DroneRace11_Main|1811052061", "1811052061", "DroneRace11_Main", "box_Vehicle_Controller_44.EngineStarted", "box_SetVehicleLightAndSiren_v2_42.SetLightsAndSiren", clone, l0)
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
  l0.Vehicle = self.Firetruck01
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = nil
  l0.FlasherOn = 1
  l0.FlasherSelection = "Both"
  l0.SpotlightOn = 1
  l0.SpotlightSelection = "Both"
  l0.SpotlightTarget = nil
  l0.SirenOn = 0
  l0._graph = self
  l0._name = "box_SetVehicleLightAndSiren_v2_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace11.domino|@DroneRace11_Main|60972673"
  l0.Out = self.f_box_SetVehicleLightAndSiren_v2_31_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace11.domino|@DroneRace11_Main|1412995340", "1412995340", "DroneRace11_Main", "box_Vehicle_Controller_35.EngineStarted", "box_SetVehicleLightAndSiren_v2_31.SetLightsAndSiren", clone, l0)
  l0:SetLightsAndSiren()
end
function export:f_box_TriggerMonitor_v2_41_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace11.domino|@DroneRace11_Main|1072096030"
  l0.Out = DummyFunction
  l0 = self.box_TriggerMonitor_v2_41
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace11.domino|@DroneRace11_Main|963009793", "963009793", "DroneRace11_Main", "box_TriggerMonitor_v2_41.Enabled", "box_Simple_Node_36.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_41_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_43
  l0.CLO = "9223372058706057205"
  l0 = self.box_TriggerMonitor_v2_41
  l1 = self.box_CLOController_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace11.domino|@DroneRace11_Main|1511929929", "1511929929", "DroneRace11_Main", "box_TriggerMonitor_v2_41.Enter", "box_CLOController_43.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_SetVehicleLightAndSiren_v2_42_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_41()
  l0 = self.box_TriggerMonitor_v2_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace11.domino|@DroneRace11_Main|1619084914", "1619084914", "DroneRace11_Main", "box_SetVehicleLightAndSiren_v2_42.Out", "box_TriggerMonitor_v2_41.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_MissionLayer_v2_15_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace11.domino|@DroneRace11_Main|1068590690"
  l0.Out = self.f_box_Get_Player_ID_9_Out
  l0 = self.box_MissionLayer_v2_15
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace11.domino|@DroneRace11_Main|2103606634", "2103606634", "DroneRace11_Main", "box_MissionLayer_v2_15.Loaded", "box_Get_Player_ID_9.In", l0, l1)
  l1:In()
end
function export:f_box_SetVehicleLightAndSiren_v2_39_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_37()
  l0 = self.box_TriggerMonitor_v2_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace11.domino|@DroneRace11_Main|450597690", "450597690", "DroneRace11_Main", "box_SetVehicleLightAndSiren_v2_39.Out", "box_TriggerMonitor_v2_37.Disable", clone, l0)
  l0:Disable()
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
  l0._name = "box_SetVehicleLightAndSiren_v2_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace11.domino|@DroneRace11_Main|743561746"
  l0.Out = self.f_box_SetVehicleLightAndSiren_v2_39_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace11.domino|@DroneRace11_Main|617560423", "617560423", "DroneRace11_Main", "box_Vehicle_Controller_40.EngineStarted", "box_SetVehicleLightAndSiren_v2_39.SetLightsAndSiren", clone, l0)
  l0:SetLightsAndSiren()
end
function export:f_box_Get_Player_ID_9_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_10
  l0.Checkpoint = "CheckPoint_0"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace11.domino|@DroneRace11_Main|1234033698", "1234033698", "DroneRace11_Main", "box_Get_Player_ID_9.Out", "box_MissionCheckpointReach_10.In", clone, l0)
  l0:In()
end
function export:f_box_TriggerMonitor_v2_47_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_41()
  l0 = self.box_TriggerMonitor_v2_47
  l1 = self.box_TriggerMonitor_v2_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace11.domino|@DroneRace11_Main|1141791464", "1141791464", "DroneRace11_Main", "box_TriggerMonitor_v2_47.Enabled", "box_TriggerMonitor_v2_41.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TriggerMonitor_v2_33_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_37()
  l0 = self.box_TriggerMonitor_v2_33
  l1 = self.box_TriggerMonitor_v2_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace11.domino|@DroneRace11_Main|90880523", "90880523", "DroneRace11_Main", "box_TriggerMonitor_v2_33.Enabled", "box_TriggerMonitor_v2_37.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TriggerMonitor_v2_33_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_34
  l0.CLO = "9223372058706055841"
  l0 = self.box_TriggerMonitor_v2_33
  l1 = self.box_CLOController_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace11.domino|@DroneRace11_Main|975741263", "975741263", "DroneRace11_Main", "box_TriggerMonitor_v2_33.Enter", "box_CLOController_34.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_RaceWithCinematic_3_OnRaceStarted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_33()
  l0 = self.box_RaceWithCinematic_3
  l1 = self.box_TriggerMonitor_v2_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace11.domino|@DroneRace11_Main|1825944859", "1825944859", "DroneRace11_Main", "box_RaceWithCinematic_3.OnRaceStarted", "box_TriggerMonitor_v2_33.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_RaceWithCinematic_3_OnRaceStopped()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_1
  l0.LayerName = "DroneRace_11_Main"
  l0 = self.box_RaceWithCinematic_3
  l1 = self.box_MissionLayer_v2_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace11.domino|@DroneRace11_Main|1418112767", "1418112767", "DroneRace11_Main", "box_RaceWithCinematic_3.OnRaceStopped", "box_MissionLayer_v2_1.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_CLOController_38_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_38
  self.PoliceCar01 = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.PoliceCar01
  l0._graph = self
  l0._name = "box_Vehicle_Controller_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace11.domino|@DroneRace11_Main|895063971"
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
  l0 = self.box_CLOController_38
  l1 = Boxes[PathID("domino/System/VehicleController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace11.domino|@DroneRace11_Main|2313443", "2313443", "DroneRace11_Main", "box_CLOController_38.OnUserInPlace", "box_Vehicle_Controller_40.StartEngine", l0, l1)
  l1:StartEngine()
end
function export:f_box_TriggerMonitor_v2_37_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_47
  l0.Trigger = "9223372057824256755"
  l0 = self.box_TriggerMonitor_v2_37
  l1 = self.box_TriggerMonitor_v2_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace11.domino|@DroneRace11_Main|1200902697", "1200902697", "DroneRace11_Main", "box_TriggerMonitor_v2_37.Enabled", "box_TriggerMonitor_v2_47.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TriggerMonitor_v2_37_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_38
  l0.CLO = "9223372058706056041"
  l0 = self.box_TriggerMonitor_v2_37
  l1 = self.box_CLOController_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace11.domino|@DroneRace11_Main|1482789171", "1482789171", "DroneRace11_Main", "box_TriggerMonitor_v2_37.Enter", "box_CLOController_38.Activate", l0, l1)
  l1:Activate()
end
function export:OnEnter_box_MultipleOR_2()
end
function export:OnEnter_box_TriggerMonitor_v2_41()
  local l0
  l0 = self.box_TriggerMonitor_v2_41
  l0.Trigger = "9223372057824256775"
end
function export:OnEnter_box_TriggerMonitor_v2_33()
  local l0
  l0 = self.box_TriggerMonitor_v2_33
  l0.Trigger = "9223372057216458199"
end
function export:OnEnter_box_TriggerMonitor_v2_37()
  local l0
  l0 = self.box_TriggerMonitor_v2_37
  l0.Trigger = "9223372057824256747"
end
_compilerVersion = 4
