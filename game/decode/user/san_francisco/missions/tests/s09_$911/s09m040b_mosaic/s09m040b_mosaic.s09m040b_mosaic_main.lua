export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("Domino/System/CLOController.lua")
  cbox:RegisterBox("Domino/System/DebugExecuteConsole_v2.lua")
  cbox:RegisterBox("Domino/System/GetPlayerID.lua")
  cbox:RegisterBox("Domino/System/Lists/ListGetRandom.lua")
  cbox:RegisterBox("Domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("Domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("Domino/Library/singleplayer/Prepare/Prepare_Helpers.PrepareSpawnAndAction.lua")
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
  self[17] = cbox:CreateBox("Domino/Library/singleplayer/Prepare/Prepare_Helpers.PrepareSpawnAndAction.lua")
  l0 = self[17]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Prepped = self.f_17_Prepped
  l0.Started = self.f_17_Started
  l0.VehiclesSpawned = self.f_17_VehiclesSpawned
  l0.NPCsSpawned = self.f_17_NPCsSpawned
  l0.ConvoyStarted = DummyFunction
  l0.DestinationReached = DummyFunction
  l0.NPCsUnassigned = DummyFunction
  l0.NPCsStartedMoving = DummyFunction
  l0.ConvoyStuck = DummyFunction
  l0.StuckNPCsUnassigned = DummyFunction
  l0.StuckNPCsStartedMoving = DummyFunction
  l0.VIPDied = DummyFunction
  l0.VipVehicleDestroyed = DummyFunction
  self[19] = cbox:CreateBox("Domino/System/Lists/ListWriter.lua")
  l0 = self[19]
  l0._graph = self
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_19_Added
  l0.Removed = self.f_19_Removed
  l0.Out = self.f_19_Out
  self[21] = cbox:CreateBox("Domino/System/Lists/ListWriter.lua")
  l0 = self[21]
  l0._graph = self
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_21_Added
  l0.Removed = self.f_21_Removed
  l0.Out = self.f_21_Out
  self[1] = cbox:CreateBox("Domino/System/VehicleSeatingController.lua")
  l0 = self[1]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_1_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self[4] = cbox:CreateBox("Domino/System/TeleportEntity.lua")
  l0 = self[4]
  l0._graph = self
  l0.Out = DummyFunction
  l0.TeleportDone = self.f_4_TeleportDone
  self[5] = cbox:CreateBox("Domino/System/VehicleSeatingController.lua")
  l0 = self[5]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = DummyFunction
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self[18] = cbox:CreateBox("Domino/System/Lists/ListWriter.lua")
  l0 = self[18]
  l0._graph = self
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_18_Added
  l0.Removed = self.f_18_Removed
  l0.Out = self.f_18_Out
  self[15] = cbox:CreateBox("Domino/System/VehicleBhvController.lua")
  l0 = self[15]
  l0._graph = self
  l0.StartCompleted = self.f_15_StartCompleted
  l0.StopCompleted = DummyFunction
  l0.ForcedFakeFollow = DummyFunction
  self[10] = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self[10]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = DummyFunction
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[12] = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self[12]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_12_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_12_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[9] = cbox:CreateBox("Domino/Library/singleplayer/Prepare/Prepare_Helpers.PrepareSpawnAndAction.lua")
  l0 = self[9]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Prepped = self.f_9_Prepped
  l0.Started = self.f_9_Started
  l0.VehiclesSpawned = self.f_9_VehiclesSpawned
  l0.NPCsSpawned = self.f_9_NPCsSpawned
  l0.ConvoyStarted = DummyFunction
  l0.DestinationReached = DummyFunction
  l0.NPCsUnassigned = DummyFunction
  l0.NPCsStartedMoving = DummyFunction
  l0.ConvoyStuck = DummyFunction
  l0.StuckNPCsUnassigned = DummyFunction
  l0.StuckNPCsStartedMoving = DummyFunction
  l0.VIPDied = DummyFunction
  l0.VipVehicleDestroyed = DummyFunction
  self[7] = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self[7]
  l0._graph = self
  l0.Loaded = self.f_7_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[14] = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self[14]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_14_OnUserInPlace
  self[8] = cbox:CreateBox("Domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[8]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_8_PostOut
  self[20] = cbox:CreateBox("Domino/System/Lists/ListWriter.lua")
  l0 = self[20]
  l0._graph = self
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_20_Added
  l0.Removed = self.f_20_Removed
  l0.Out = self.f_20_Out
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
  l0 = self[7]
  l0.LayerName = "S09_M040b_Main"
  l0:Load()
end
function export:f_17_NPCsSpawned()
  local l0
  self = self._graph
  l0 = self[17]
  self.AmbDriver = l0.VipNPC
end
function export:f_17_Prepped()
  local l0
  self = self._graph
  self:en_17()
  l0 = self[17]
  l0:Start()
end
function export:f_17_Started()
  local l0
  self = self._graph
  l0 = self[14]
  l0.CLO = "9223372055504173979"
  l0:Activate()
end
function export:f_17_VehiclesSpawned()
  local l0
  self = self._graph
  l0 = self[17]
  self.Ambulance = l0.VipVehicle
end
function export:f_19_Added()
  local l0
  self = self._graph
  l0 = self[19]
  self.AmbDriverStuck = l0.Target
  self:en_17()
  l0 = self[17]
  l0:Prep()
end
function export:f_19_Out()
  local l0
  self = self._graph
  l0 = self[19]
  self.AmbDriverStuck = l0.Target
end
function export:f_19_Removed()
  local l0
  self = self._graph
  l0 = self[19]
  self.AmbDriverStuck = l0.Target
end
function export:f_21_Added()
  local l0
  self = self._graph
  l0 = self[21]
  self.CC1Stuck = l0.Target
  self:en_9()
  l0 = self[9]
  l0:Prep()
end
function export:f_21_Out()
  local l0
  self = self._graph
  l0 = self[21]
  self.CC1Stuck = l0.Target
end
function export:f_21_Removed()
  local l0
  self = self._graph
  l0 = self[21]
  self.CC1Stuck = l0.Target
end
function export:f_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[4]
  l0.Entity = self.PlayerEntity
  l0.Destination = "9223372055504174335"
  l0:In()
end
function export:f_1_AssignCompleted()
  local l0
  self = self._graph
  l0 = self[15]
  l0.VehicleMaster = self.Ambulance
  l0.VehicleTarget = self.PlayerEntity
  l0.Config = "VehicleBhvSetup.9223372048779328402"
  l0:Start()
end
function export:f_4_TeleportDone()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "new_spawner_disable 1"
  l0._graph = self
  l0.Executed = self.f_11_Executed
  l0:Execute()
end
function export:f_6_Hidden()
  local l0
  self = self._graph
  l0 = self[8]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0:PostCinematic()
end
function export:f_18_Added()
  local l0
  self = self._graph
  l0 = self[18]
  self.AmbDriverPatrol = l0.Target
  l0 = self[19]
  l0.Input = self.AmbDriverStuck
  l0.Data[0] = "9223372055504172559"
  l0:Add()
end
function export:f_18_Out()
  local l0
  self = self._graph
  l0 = self[18]
  self.AmbDriverPatrol = l0.Target
end
function export:f_18_Removed()
  local l0
  self = self._graph
  l0 = self[18]
  self.AmbDriverPatrol = l0.Target
end
function export:f_15_StartCompleted()
  local l0
  self = self._graph
  l0 = self[10]
  l0.Seconds = 20
  l0:Start()
end
function export:f_16_EnterForced()
  local l0
  self = self._graph
  l0 = self[20]
  l0.Input = self.CC1Patrol
  l0.Data[0] = "9223372055504172568"
  l0:Add()
end
function export:f_12_Started()
  local l0
  self = self._graph
  l0 = self[5]
  l0.Vehicle = self.Ambulance
  l0:Unassign()
end
function export:f_12_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/ListGetRandom.lua")]
  l0.Input = self.CarCorrupt1
  l0._graph = self
  l0.Out = self.f_13_Out
  l0:In()
end
function export:f_13_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/ListGetRandom.lua")]
  self.FleeDriver = l0.Data
  l0 = self[1]
  l0.Vehicle = self.Ambulance
  l0.Pawn = self.FleeDriver
  l0.Seat = "Driver"
  l0:Assign()
end
function export:f_9_NPCsSpawned()
  local l0
  self = self._graph
  l0 = self[9]
  self.CCDriver1 = l0.VipNPC
end
function export:f_9_Prepped()
  local l0
  self = self._graph
  self:en_9()
  l0 = self[9]
  l0:Start()
end
function export:f_9_Started()
  local l0
  self = self._graph
  l0 = self[12]
  l0.Seconds = 10
  l0:Start()
end
function export:f_9_VehiclesSpawned()
  local l0
  self = self._graph
  l0 = self[9]
  self.CCCar1 = l0.VipVehicle
end
function export:f_11_Executed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_6_Hidden
  l0:Hide()
end
function export:f_3_Hidden()
  local l0
  self = self._graph
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
  l0.EnterSet = DummyFunction
  l0.CanExitSet = DummyFunction
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = self.f_16_EnterForced
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0:ForceEnter()
end
function export:f_7_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_2_Out
  l0:In()
end
function export:f_14_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[14]
  self.cam02 = l0.UserID
  l0 = Boxes[PathID("Domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.cam02
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_3_Hidden
  l0.Out = DummyFunction
  l0:Hide()
end
function export:f_8_PostOut()
  local l0
  self = self._graph
  l0 = self[18]
  l0.Input = self.AmbDriverPatrol
  l0.Data[0] = "9223372055504172559"
  l0:Add()
end
function export:f_20_Added()
  local l0
  self = self._graph
  l0 = self[20]
  self.CC1Patrol = l0.Target
  l0 = self[21]
  l0.Input = self.CC1Stuck
  l0.Data[0] = "9223372055504172568"
  l0:Add()
end
function export:f_20_Out()
  local l0
  self = self._graph
  l0 = self[20]
  self.CC1Patrol = l0.Target
end
function export:f_20_Removed()
  local l0
  self = self._graph
  l0 = self[20]
  self.CC1Patrol = l0.Target
end
function export:en_17()
  local l0
  l0 = self[17]
  l0.VipCLO = "9223372055504172557"
  l0.VipVehicleCLO = "9223372055504172554"
  l0.ConvoyConfig = "ConvoyConfig.9223372057147934442"
  l0.Destination = "9223372058516572721"
  l0.DestinationPatrolsList = self.AmbDriverPatrol
  l0.StuckPatrolsList = self.AmbDriverStuck
  l0.AutoUnassign = 1
end
function export:en_9()
  local l0
  l0 = self[9]
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
