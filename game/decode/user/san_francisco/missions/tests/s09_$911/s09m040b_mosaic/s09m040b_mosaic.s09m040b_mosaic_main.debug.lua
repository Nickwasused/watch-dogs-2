export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("Domino/System/CLOController.lua")
  cbox:RegisterBox("Domino/System/DebugExecuteConsole_v2.lua")
  cbox:RegisterBox("Domino/System/GetPlayerID.lua")
  cbox:RegisterBox("Domino/System/Lists/ListGetRandom.lua")
  cbox:RegisterBox("Domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("Domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("Domino/Library/singleplayer/Prepare/Prepare_Helpers.PrepareSpawnAndAction.debug.lua")
  cbox:RegisterBox("Domino/System/SecurityCamController.lua")
  cbox:RegisterBox("Domino/System/ShowOrHideAllUI.lua")
  cbox:RegisterBox("Domino/System/TeleportEntity.lua")
  cbox:RegisterBox("Domino/System/Timer_v2.lua")
  cbox:RegisterBox("Domino/System/VehicleBhvController.lua")
  cbox:RegisterBox("Domino/System/VehicleSeatingController.lua")
  cbox:RegisterBox("Domino/System/VisibilityController_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S09M040b_Mosaic_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s09_$911\\s09m040b_mosaic\\s09m040b_mosaic.domino|@S09M040b_Mosaic_Main"
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.ct1 = nil
  self.CarCorrupt2 = {}
  self.Ambulance = nil
  self.CarTezca1 = {}
  self.FleeDriver = nil
  self.cc1 = nil
  self.CarCorrupt1 = {}
  self.ct2 = nil
  self.cc2 = nil
  self.AmbulanceDriver = {}
  self.cam02 = nil
  self.CarTezca2 = {}
  self.AmbDriver = nil
  self.AmbDriverStuck = {}
  self.AmbDriverPatrol = {}
  self.CC1Patrol = {}
  self.CC1Stuck = {}
  self.CCDriver1 = nil
  self.CCCar1 = nil
  self.box_PrepareSpawnAndAction_17 = cbox:CreateBox("Domino/Library/singleplayer/Prepare/Prepare_Helpers.PrepareSpawnAndAction.debug.lua")
  l0 = self.box_PrepareSpawnAndAction_17
  l0._graph = self
  l0._name = "box_PrepareSpawnAndAction_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s09_$911\\s09m040b_mosaic\\s09m040b_mosaic.domino|@S09M040b_Mosaic_Main|55816953"
  l0.Out = DummyFunction
  l0.Prepped = self.f_box_PrepareSpawnAndAction_17_Prepped
  l0.Started = self.f_box_PrepareSpawnAndAction_17_Started
  l0.VehiclesSpawned = self.f_box_PrepareSpawnAndAction_17_VehiclesSpawned
  l0.NPCsSpawned = self.f_box_PrepareSpawnAndAction_17_NPCsSpawned
  l0.ConvoyStarted = DummyFunction
  l0.DestinationReached = DummyFunction
  l0.NPCsUnassigned = DummyFunction
  l0.NPCsStartedMoving = DummyFunction
  l0.ConvoyStuck = DummyFunction
  l0.StuckNPCsUnassigned = DummyFunction
  l0.StuckNPCsStartedMoving = DummyFunction
  l0.VIPDied = DummyFunction
  l0.VipVehicleDestroyed = DummyFunction
  self.box_ListWriter_19 = cbox:CreateBox("Domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_19
  l0._graph = self
  l0._name = "box_ListWriter_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s09_$911\\s09m040b_mosaic\\s09m040b_mosaic.domino|@S09M040b_Mosaic_Main|91449160"
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_box_ListWriter_19_Added
  l0.Removed = self.f_box_ListWriter_19_Removed
  l0.Out = self.f_box_ListWriter_19_Out
  self.box_ListWriter_21 = cbox:CreateBox("Domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_21
  l0._graph = self
  l0._name = "box_ListWriter_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s09_$911\\s09m040b_mosaic\\s09m040b_mosaic.domino|@S09M040b_Mosaic_Main|180442390"
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_box_ListWriter_21_Added
  l0.Removed = self.f_box_ListWriter_21_Removed
  l0.Out = self.f_box_ListWriter_21_Out
  self.box_VehicleSeatingController_1 = cbox:CreateBox("Domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_1
  l0._graph = self
  l0._name = "box_VehicleSeatingController_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s09_$911\\s09m040b_mosaic\\s09m040b_mosaic.domino|@S09M040b_Mosaic_Main|273109902"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_box_VehicleSeatingController_1_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_Teleport_Entity_4 = cbox:CreateBox("Domino/System/TeleportEntity.lua")
  l0 = self.box_Teleport_Entity_4
  l0._graph = self
  l0._name = "box_Teleport_Entity_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s09_$911\\s09m040b_mosaic\\s09m040b_mosaic.domino|@S09M040b_Mosaic_Main|435556990"
  l0.Out = DummyFunction
  l0.TeleportDone = self.f_box_Teleport_Entity_4_TeleportDone
  self.box_VehicleSeatingController_5 = cbox:CreateBox("Domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_5
  l0._graph = self
  l0._name = "box_VehicleSeatingController_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s09_$911\\s09m040b_mosaic\\s09m040b_mosaic.domino|@S09M040b_Mosaic_Main|783161009"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = DummyFunction
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_ListWriter_18 = cbox:CreateBox("Domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_18
  l0._graph = self
  l0._name = "box_ListWriter_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s09_$911\\s09m040b_mosaic\\s09m040b_mosaic.domino|@S09M040b_Mosaic_Main|852814120"
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_box_ListWriter_18_Added
  l0.Removed = self.f_box_ListWriter_18_Removed
  l0.Out = self.f_box_ListWriter_18_Out
  self.box_VehicleBhvController_15 = cbox:CreateBox("Domino/System/VehicleBhvController.lua")
  l0 = self.box_VehicleBhvController_15
  l0._graph = self
  l0._name = "box_VehicleBhvController_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s09_$911\\s09m040b_mosaic\\s09m040b_mosaic.domino|@S09M040b_Mosaic_Main|867522789"
  l0.StartCompleted = self.f_box_VehicleBhvController_15_StartCompleted
  l0.StopCompleted = DummyFunction
  l0.ForcedFakeFollow = DummyFunction
  self.box_Timer_v2_10 = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_10
  l0._graph = self
  l0._name = "box_Timer_v2_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s09_$911\\s09m040b_mosaic\\s09m040b_mosaic.domino|@S09M040b_Mosaic_Main|1133643232"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = DummyFunction
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_12 = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_12
  l0._graph = self
  l0._name = "box_Timer_v2_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s09_$911\\s09m040b_mosaic\\s09m040b_mosaic.domino|@S09M040b_Mosaic_Main|1214378157"
  l0.Out = DummyFunction
  l0.Started = self.f_box_Timer_v2_12_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_12_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PrepareSpawnAndAction_9 = cbox:CreateBox("Domino/Library/singleplayer/Prepare/Prepare_Helpers.PrepareSpawnAndAction.debug.lua")
  l0 = self.box_PrepareSpawnAndAction_9
  l0._graph = self
  l0._name = "box_PrepareSpawnAndAction_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s09_$911\\s09m040b_mosaic\\s09m040b_mosaic.domino|@S09M040b_Mosaic_Main|1443652197"
  l0.Out = DummyFunction
  l0.Prepped = self.f_box_PrepareSpawnAndAction_9_Prepped
  l0.Started = self.f_box_PrepareSpawnAndAction_9_Started
  l0.VehiclesSpawned = self.f_box_PrepareSpawnAndAction_9_VehiclesSpawned
  l0.NPCsSpawned = self.f_box_PrepareSpawnAndAction_9_NPCsSpawned
  l0.ConvoyStarted = DummyFunction
  l0.DestinationReached = DummyFunction
  l0.NPCsUnassigned = DummyFunction
  l0.NPCsStartedMoving = DummyFunction
  l0.ConvoyStuck = DummyFunction
  l0.StuckNPCsUnassigned = DummyFunction
  l0.StuckNPCsStartedMoving = DummyFunction
  l0.VIPDied = DummyFunction
  l0.VipVehicleDestroyed = DummyFunction
  self.box_MissionLayer_v2_7 = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_7
  l0._graph = self
  l0._name = "box_MissionLayer_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s09_$911\\s09m040b_mosaic\\s09m040b_mosaic.domino|@S09M040b_Mosaic_Main|1493016153"
  l0.Loaded = self.f_box_MissionLayer_v2_7_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_CLOController_14 = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self.box_CLOController_14
  l0._graph = self
  l0._name = "box_CLOController_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s09_$911\\s09m040b_mosaic\\s09m040b_mosaic.domino|@S09M040b_Mosaic_Main|1852310110"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_14_OnUserInPlace
  self.box_CinematicPrep_8 = cbox:CreateBox("Domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_8
  l0._graph = self
  l0._name = "box_CinematicPrep_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s09_$911\\s09m040b_mosaic\\s09m040b_mosaic.domino|@S09M040b_Mosaic_Main|1995381847"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_8_PostOut
  self.box_ListWriter_20 = cbox:CreateBox("Domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_20
  l0._graph = self
  l0._name = "box_ListWriter_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s09_$911\\s09m040b_mosaic\\s09m040b_mosaic.domino|@S09M040b_Mosaic_Main|2080069788"
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_box_ListWriter_20_Added
  l0.Removed = self.f_box_ListWriter_20_Removed
  l0.Out = self.f_box_ListWriter_20_Out
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:In()
  local l0
  l0 = self.box_MissionLayer_v2_7
  l0.LayerName = "S09_M040b_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s09_$911\\s09m040b_mosaic\\s09m040b_mosaic.domino|@S09M040b_Mosaic_Main|512724593", "512724593", "S09M040b_Mosaic_Main", "In", "box_MissionLayer_v2_7.Load", self, l0)
  l0:Load()
end
function export:f_box_PrepareSpawnAndAction_17_NPCsSpawned()
  local l0
  self = self._graph
  l0 = self.box_PrepareSpawnAndAction_17
  self.AmbDriver = l0.VipNPC
end
function export:f_box_PrepareSpawnAndAction_17_Prepped()
  local l0
  self = self._graph
  self:OnEnter_box_PrepareSpawnAndAction_17()
  l0 = self.box_PrepareSpawnAndAction_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s09_$911\\s09m040b_mosaic\\s09m040b_mosaic.domino|@S09M040b_Mosaic_Main|1691733257", "1691733257", "S09M040b_Mosaic_Main", "box_PrepareSpawnAndAction_17.Prepped", "box_PrepareSpawnAndAction_17.Start", l0, l0)
  l0:Start()
end
function export:f_box_PrepareSpawnAndAction_17_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_14
  l0.CLO = "9223372055504173979"
  l0 = self.box_PrepareSpawnAndAction_17
  l1 = self.box_CLOController_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s09_$911\\s09m040b_mosaic\\s09m040b_mosaic.domino|@S09M040b_Mosaic_Main|1247120984", "1247120984", "S09M040b_Mosaic_Main", "box_PrepareSpawnAndAction_17.Started", "box_CLOController_14.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_PrepareSpawnAndAction_17_VehiclesSpawned()
  local l0
  self = self._graph
  l0 = self.box_PrepareSpawnAndAction_17
  self.Ambulance = l0.VipVehicle
end
function export:f_box_ListWriter_19_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_19
  self.AmbDriverStuck = l0.Target
  self:OnEnter_box_PrepareSpawnAndAction_17()
  l1 = self.box_PrepareSpawnAndAction_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s09_$911\\s09m040b_mosaic\\s09m040b_mosaic.domino|@S09M040b_Mosaic_Main|525705860", "525705860", "S09M040b_Mosaic_Main", "box_ListWriter_19.Added", "box_PrepareSpawnAndAction_17.Prep", l0, l1)
  l1:Prep()
end
function export:f_box_ListWriter_19_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_19
  self.AmbDriverStuck = l0.Target
end
function export:f_box_ListWriter_19_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_19
  self.AmbDriverStuck = l0.Target
end
function export:f_box_ListWriter_21_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_21
  self.CC1Stuck = l0.Target
  self:OnEnter_box_PrepareSpawnAndAction_9()
  l1 = self.box_PrepareSpawnAndAction_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s09_$911\\s09m040b_mosaic\\s09m040b_mosaic.domino|@S09M040b_Mosaic_Main|2132625446", "2132625446", "S09M040b_Mosaic_Main", "box_ListWriter_21.Added", "box_PrepareSpawnAndAction_9.Prep", l0, l1)
  l1:Prep()
end
function export:f_box_ListWriter_21_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_21
  self.CC1Stuck = l0.Target
end
function export:f_box_ListWriter_21_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_21
  self.CC1Stuck = l0.Target
end
function export:f_box_Get_Player_ID_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Teleport_Entity_4
  l0.Entity = self.PlayerEntity
  l0.Destination = "9223372055504174335"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s09_$911\\s09m040b_mosaic\\s09m040b_mosaic.domino|@S09M040b_Mosaic_Main|784669464", "784669464", "S09M040b_Mosaic_Main", "box_Get_Player_ID_2.Out", "box_Teleport_Entity_4.In", clone, l0)
  l0:In()
end
function export:f_box_VehicleSeatingController_1_AssignCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleBhvController_15
  l0.VehicleMaster = self.Ambulance
  l0.VehicleTarget = self.PlayerEntity
  l0.Config = "VehicleBhvSetup.9223372048779328402"
  l0 = self.box_VehicleSeatingController_1
  l1 = self.box_VehicleBhvController_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s09_$911\\s09m040b_mosaic\\s09m040b_mosaic.domino|@S09M040b_Mosaic_Main|1782990278", "1782990278", "S09M040b_Mosaic_Main", "box_VehicleSeatingController_1.AssignCompleted", "box_VehicleBhvController_15.Start", l0, l1)
  l1:Start()
end
function export:f_box_Teleport_Entity_4_TeleportDone()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "new_spawner_disable 1"
  l0._graph = self
  l0._name = "box_DebugExecuteConsole_v2_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s09_$911\\s09m040b_mosaic\\s09m040b_mosaic.domino|@S09M040b_Mosaic_Main|1473193002"
  l0.Executed = self.f_box_DebugExecuteConsole_v2_11_Executed
  l0 = self.box_Teleport_Entity_4
  l1 = Boxes[PathID("Domino/System/DebugExecuteConsole_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s09_$911\\s09m040b_mosaic\\s09m040b_mosaic.domino|@S09M040b_Mosaic_Main|507704853", "507704853", "S09M040b_Mosaic_Main", "box_Teleport_Entity_4.TeleportDone", "box_DebugExecuteConsole_v2_11.Execute", l0, l1)
  l1:Execute()
end
function export:f_box_Show_Or_Hide_All_UI_6_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_8
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s09_$911\\s09m040b_mosaic\\s09m040b_mosaic.domino|@S09M040b_Mosaic_Main|754471757", "754471757", "S09M040b_Mosaic_Main", "box_Show_Or_Hide_All_UI_6.Hidden", "box_CinematicPrep_8.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_ListWriter_18_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_18
  self.AmbDriverPatrol = l0.Target
  l0 = self.box_ListWriter_19
  l0.Input = self.AmbDriverStuck
  l0.Data[0] = "9223372055504172559"
  l0 = self.box_ListWriter_18
  l1 = self.box_ListWriter_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s09_$911\\s09m040b_mosaic\\s09m040b_mosaic.domino|@S09M040b_Mosaic_Main|1577416163", "1577416163", "S09M040b_Mosaic_Main", "box_ListWriter_18.Added", "box_ListWriter_19.Add", l0, l1)
  l1:Add()
end
function export:f_box_ListWriter_18_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_18
  self.AmbDriverPatrol = l0.Target
end
function export:f_box_ListWriter_18_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_18
  self.AmbDriverPatrol = l0.Target
end
function export:f_box_VehicleBhvController_15_StartCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_10
  l0.Seconds = 20
  l0 = self.box_VehicleBhvController_15
  l1 = self.box_Timer_v2_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s09_$911\\s09m040b_mosaic\\s09m040b_mosaic.domino|@S09M040b_Mosaic_Main|1951045488", "1951045488", "S09M040b_Mosaic_Main", "box_VehicleBhvController_15.StartCompleted", "box_Timer_v2_10.Start", l0, l1)
  l1:Start()
end
function export:f_box_SecurityCamController_16_EnterForced()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_20
  l0.Input = self.CC1Patrol
  l0.Data[0] = "9223372055504172568"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s09_$911\\s09m040b_mosaic\\s09m040b_mosaic.domino|@S09M040b_Mosaic_Main|623058506", "623058506", "S09M040b_Mosaic_Main", "box_SecurityCamController_16.EnterForced", "box_ListWriter_20.Add", clone, l0)
  l0:Add()
end
function export:f_box_Timer_v2_12_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleSeatingController_5
  l0.Vehicle = self.Ambulance
  l0 = self.box_Timer_v2_12
  l1 = self.box_VehicleSeatingController_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s09_$911\\s09m040b_mosaic\\s09m040b_mosaic.domino|@S09M040b_Mosaic_Main|509386458", "509386458", "S09M040b_Mosaic_Main", "box_Timer_v2_12.Started", "box_VehicleSeatingController_5.Unassign", l0, l1)
  l1:Unassign()
end
function export:f_box_Timer_v2_12_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/ListGetRandom.lua")]
  l0.Input = self.CarCorrupt1
  l0._graph = self
  l0._name = "box_ListGetRandom_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s09_$911\\s09m040b_mosaic\\s09m040b_mosaic.domino|@S09M040b_Mosaic_Main|1391728914"
  l0.Out = self.f_box_ListGetRandom_13_Out
  l0 = self.box_Timer_v2_12
  l1 = Boxes[PathID("Domino/System/Lists/ListGetRandom.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s09_$911\\s09m040b_mosaic\\s09m040b_mosaic.domino|@S09M040b_Mosaic_Main|733123652", "733123652", "S09M040b_Mosaic_Main", "box_Timer_v2_12.TimeElapsed", "box_ListGetRandom_13.In", l0, l1)
  l1:In()
end
function export:f_box_ListGetRandom_13_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/ListGetRandom.lua")]
  self.FleeDriver = l0.Data
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_VehicleSeatingController_1
  l0.Vehicle = self.Ambulance
  l0.Pawn = self.FleeDriver
  l0.Seat = "Driver"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s09_$911\\s09m040b_mosaic\\s09m040b_mosaic.domino|@S09M040b_Mosaic_Main|210583027", "210583027", "S09M040b_Mosaic_Main", "box_ListGetRandom_13.Out", "box_VehicleSeatingController_1.Assign", clone, l0)
  l0:Assign()
end
function export:f_box_PrepareSpawnAndAction_9_NPCsSpawned()
  local l0
  self = self._graph
  l0 = self.box_PrepareSpawnAndAction_9
  self.CCDriver1 = l0.VipNPC
end
function export:f_box_PrepareSpawnAndAction_9_Prepped()
  local l0
  self = self._graph
  self:OnEnter_box_PrepareSpawnAndAction_9()
  l0 = self.box_PrepareSpawnAndAction_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s09_$911\\s09m040b_mosaic\\s09m040b_mosaic.domino|@S09M040b_Mosaic_Main|54992876", "54992876", "S09M040b_Mosaic_Main", "box_PrepareSpawnAndAction_9.Prepped", "box_PrepareSpawnAndAction_9.Start", l0, l0)
  l0:Start()
end
function export:f_box_PrepareSpawnAndAction_9_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_12
  l0.Seconds = 10
  l0 = self.box_PrepareSpawnAndAction_9
  l1 = self.box_Timer_v2_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s09_$911\\s09m040b_mosaic\\s09m040b_mosaic.domino|@S09M040b_Mosaic_Main|1574558245", "1574558245", "S09M040b_Mosaic_Main", "box_PrepareSpawnAndAction_9.Started", "box_Timer_v2_12.Start", l0, l1)
  l1:Start()
end
function export:f_box_PrepareSpawnAndAction_9_VehiclesSpawned()
  local l0
  self = self._graph
  l0 = self.box_PrepareSpawnAndAction_9
  self.CCCar1 = l0.VipVehicle
end
function export:f_box_DebugExecuteConsole_v2_11_Executed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/DebugExecuteConsole_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s09_$911\\s09m040b_mosaic\\s09m040b_mosaic.domino|@S09M040b_Mosaic_Main|510380205"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_Show_Or_Hide_All_UI_6_Hidden
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s09_$911\\s09m040b_mosaic\\s09m040b_mosaic.domino|@S09M040b_Mosaic_Main|1976895933", "1976895933", "S09M040b_Mosaic_Main", "box_DebugExecuteConsole_v2_11.Executed", "box_Show_Or_Hide_All_UI_6.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_VisibilityController_v2_3_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = self.cam02
  l0.CameraEntityList = nil
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = nil
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0._name = "box_SecurityCamController_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s09_$911\\s09m040b_mosaic\\s09m040b_mosaic.domino|@S09M040b_Mosaic_Main|1064330914"
  l0.EnterSet = DummyFunction
  l0.CanExitSet = DummyFunction
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = self.f_box_SecurityCamController_16_EnterForced
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s09_$911\\s09m040b_mosaic\\s09m040b_mosaic.domino|@S09M040b_Mosaic_Main|1612366876", "1612366876", "S09M040b_Mosaic_Main", "box_VisibilityController_v2_3.Hidden", "box_SecurityCamController_16.ForceEnter", clone, l0)
  l0:ForceEnter()
end
function export:f_box_MissionLayer_v2_7_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s09_$911\\s09m040b_mosaic\\s09m040b_mosaic.domino|@S09M040b_Mosaic_Main|256450722"
  l0.Out = self.f_box_Get_Player_ID_2_Out
  l0 = self.box_MissionLayer_v2_7
  l1 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s09_$911\\s09m040b_mosaic\\s09m040b_mosaic.domino|@S09M040b_Mosaic_Main|1966622322", "1966622322", "S09M040b_Mosaic_Main", "box_MissionLayer_v2_7.Loaded", "box_Get_Player_ID_2.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_14_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_14
  self.cam02 = l0.UserID
  l0 = Boxes[PathID("Domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.cam02
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s09_$911\\s09m040b_mosaic\\s09m040b_mosaic.domino|@S09M040b_Mosaic_Main|1478602561"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_3_Hidden
  l0.Out = DummyFunction
  l0 = self.box_CLOController_14
  l1 = Boxes[PathID("Domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s09_$911\\s09m040b_mosaic\\s09m040b_mosaic.domino|@S09M040b_Mosaic_Main|862397822", "862397822", "S09M040b_Mosaic_Main", "box_CLOController_14.OnUserInPlace", "box_VisibilityController_v2_3.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_CinematicPrep_8_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_18
  l0.Input = self.AmbDriverPatrol
  l0.Data[0] = "9223372055504172559"
  l0 = self.box_CinematicPrep_8
  l1 = self.box_ListWriter_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s09_$911\\s09m040b_mosaic\\s09m040b_mosaic.domino|@S09M040b_Mosaic_Main|1898695830", "1898695830", "S09M040b_Mosaic_Main", "box_CinematicPrep_8.PostOut", "box_ListWriter_18.Add", l0, l1)
  l1:Add()
end
function export:f_box_ListWriter_20_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_20
  self.CC1Patrol = l0.Target
  l0 = self.box_ListWriter_21
  l0.Input = self.CC1Stuck
  l0.Data[0] = "9223372055504172568"
  l0 = self.box_ListWriter_20
  l1 = self.box_ListWriter_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s09_$911\\s09m040b_mosaic\\s09m040b_mosaic.domino|@S09M040b_Mosaic_Main|141893354", "141893354", "S09M040b_Mosaic_Main", "box_ListWriter_20.Added", "box_ListWriter_21.Add", l0, l1)
  l1:Add()
end
function export:f_box_ListWriter_20_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_20
  self.CC1Patrol = l0.Target
end
function export:f_box_ListWriter_20_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_20
  self.CC1Patrol = l0.Target
end
function export:OnEnter_box_PrepareSpawnAndAction_17()
  local l0
  l0 = self.box_PrepareSpawnAndAction_17
  l0.VipCLO = "9223372055504172557"
  l0.VipVehicleCLO = "9223372055504172554"
  l0.ConvoyConfig = "ConvoyConfig.9223372057147934442"
  l0.Destination = "9223372058516572721"
  l0.DestinationPatrolsList = self.AmbDriverPatrol
  l0.StuckPatrolsList = self.AmbDriverStuck
  l0.AutoUnassign = 1
end
function export:OnEnter_box_PrepareSpawnAndAction_9()
  local l0
  l0 = self.box_PrepareSpawnAndAction_9
  l0.VipCLO = "9223372055504172564"
  l0.VipVehicleCLO = "9223372055504172560"
  l0.ConvoyConfig = "ConvoyConfig.9223372057147934442"
  l0.Destination = "9223372058516572723"
  l0.DestinationPatrolsList = self.CC1Patrol
  l0.StuckPatrolsList = self.CC1Stuck
  l0.AutoUnassign = 1
end
function export:Out()
end
_compilerVersion = 4
