export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/AISquadRelationshipController.lua")
  cbox:RegisterBox("Domino/System/AssignPatrol_v2.lua")
  cbox:RegisterBox("Domino/System/CLOController.lua")
  cbox:RegisterBox("Domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/CompareEntity_v2.lua")
  cbox:RegisterBox("Domino/System/ConvoyController.lua")
  cbox:RegisterBox("Domino/System/ConvoyMonitor.lua")
  cbox:RegisterBox("Domino/System/GetPlayerID.lua")
  cbox:RegisterBox("Domino/System/Lists/ListForEach.lua")
  cbox:RegisterBox("Domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("Domino/System/LogicGate_v2.lua")
  cbox:RegisterBox("Domino/System/MultipleAND.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/PawnHealthMonitor_v3.lua")
  cbox:RegisterBox("Domino/System/SetEntity.lua")
  cbox:RegisterBox("Domino/System/Lists/SetList.lua")
  cbox:RegisterBox("Domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/SetInteger_v2.lua")
  cbox:RegisterBox("Domino/System/SwitchOutput_v3.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
  cbox:RegisterBox("Domino/System/Timer_v2.lua")
  cbox:RegisterBox("Domino/System/VehicleSeatingController.lua")
end
function export:Init(cbox)
  local l0
  self._name = "PrepareSpawnAndAction"
  self._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction"
  self.Out = DummyFunction
  self.Prepped = DummyFunction
  self.NPCsSpawned = DummyFunction
  self.DestinationReached = DummyFunction
  self.NPCsStartedMoving = DummyFunction
  self.Started = DummyFunction
  self.NPCsUnassigned = DummyFunction
  self.ConvoyStarted = DummyFunction
  self.VIPDied = DummyFunction
  self.VipVehicleDestroyed = DummyFunction
  self.ConvoyStuck = DummyFunction
  self.VehiclesSpawned = DummyFunction
  self.StuckNPCsUnassigned = DummyFunction
  self.StuckNPCsStartedMoving = DummyFunction
  self.ConvoyAggro = DummyFunction
  self.ConvoyStopped = DummyFunction
  self.ConvoyAggroNotPlayer = DummyFunction
  self.tempNPC = nil
  self.tempCLO = nil
  self.tempNPCPath = nil
  self.tempNPCPoint = nil
  self.Vip = nil
  self.vipVehicle = nil
  self.tempListNPCs = {}
  self.tempListVehicles = {}
  self.convoyID = 0
  self.index = 0
  self.stuckPatrolsList = {}
  self.destinationPatrolsList = {}
  self.tempPath = nil
  self.indexPlus = 0
  self.tmpPatrols = {}
  self.ConvoyIsStuck = 0
  self.tempVehicle = nil
  self.All_NPCs = {}
  self.EscortVehicle = nil
  self.Escort_Driver = nil
  self.Escort_FrontPassenger = nil
  self.Escort_RearLeftPassenger = nil
  self.Escort_RearRightPassenger = nil
  self.Player = nil
  self.Instigator = nil
  self.EscortVehicleID = nil
  self.NoEscortVehicle = 1
  self.Escort_RearLeftPassengerID = nil
  self.Escort_RearRightPassengerID = nil
  self.Escort_DriverID = nil
  self.Escort_FrontPassengerID = nil
  self.box_MultipleOR_13 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_13
  l0._graph = self
  l0._name = "box_MultipleOR_13"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|3385699"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_13_Out
  self.box_OnceOnly_v3_47 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_47
  l0._graph = self
  l0._name = "box_OnceOnly_v3_47"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|13746311"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_47_Out
  l0.ResetOut = DummyFunction
  self.box_MultipleOR_30 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_30
  l0._graph = self
  l0._name = "box_MultipleOR_30"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|64387027"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_30_Out
  self.box_OnceOnly_v3_81 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_81
  l0._graph = self
  l0._name = "box_OnceOnly_v3_81"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|102086555"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_81_Out
  l0.ResetOut = DummyFunction
  self.box_MultipleOR_93 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_93
  l0._graph = self
  l0._name = "box_MultipleOR_93"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|165873419"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_93_Out
  self.box_MultipleOR_63 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_63
  l0._graph = self
  l0._name = "box_MultipleOR_63"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|198366504"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_63_Out
  self.box_CLOController_7 = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self.box_CLOController_7
  l0._graph = self
  l0._name = "box_CLOController_7"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|202440954"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_7_OnUserInPlace
  self.box_VehicleSeatingController_18 = cbox:CreateBox("Domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_18
  l0._graph = self
  l0._name = "box_VehicleSeatingController_18"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|208192615"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = DummyFunction
  l0.UnassignCompleted = self.f_box_VehicleSeatingController_18_UnassignCompleted
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_MultipleOR_19 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_19
  l0._graph = self
  l0._name = "box_MultipleOR_19"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|253543910"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_19_Out
  self.box_Multiple_AND_64 = cbox:CreateBox("Domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_64
  l0._graph = self
  l0._name = "box_Multiple_AND_64"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|294460638"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_64_Out
  self.box_ListWriter_55 = cbox:CreateBox("Domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_55
  l0._graph = self
  l0._name = "box_ListWriter_55"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|349405328"
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_box_ListWriter_55_Added
  l0.Removed = self.f_box_ListWriter_55_Removed
  l0.Out = self.f_box_ListWriter_55_Out
  self.box_ConvoyMonitor_62 = cbox:CreateBox("Domino/System/ConvoyMonitor.lua")
  l0 = self.box_ConvoyMonitor_62
  l0._graph = self
  l0._name = "box_ConvoyMonitor_62"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|375709095"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.StartMoving = self.f_box_ConvoyMonitor_62_StartMoving
  l0.DestinationReached = self.f_box_ConvoyMonitor_62_DestinationReached
  l0.VIPDied = self.f_box_ConvoyMonitor_62_VIPDied
  l0.VIPVehicleDestroyed = self.f_box_ConvoyMonitor_62_VIPVehicleDestroyed
  l0.VIPHijacked = self.f_box_ConvoyMonitor_62_VIPHijacked
  l0.EscortDied = self.f_box_ConvoyMonitor_62_EscortDied
  l0.EscortVehicleDestroyed = self.f_box_ConvoyMonitor_62_EscortVehicleDestroyed
  l0.EscortHijacked = self.f_box_ConvoyMonitor_62_EscortHijacked
  l0.ConvoyStuck = self.f_box_ConvoyMonitor_62_ConvoyStuck
  l0.ConvoyStopped = self.f_box_ConvoyMonitor_62_ConvoyStopped
  l0.HardDisturbance = self.f_box_ConvoyMonitor_62_HardDisturbance
  l0.SoftDisturbance = self.f_box_ConvoyMonitor_62_SoftDisturbance
  self.box_ListWriter_28 = cbox:CreateBox("Domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_28
  l0._graph = self
  l0._name = "box_ListWriter_28"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|430722024"
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_box_ListWriter_28_Added
  l0.Removed = self.f_box_ListWriter_28_Removed
  l0.Out = self.f_box_ListWriter_28_Out
  self.box_CLOController_14 = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self.box_CLOController_14
  l0._graph = self
  l0._name = "box_CLOController_14"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|498519823"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_14_OnUserInPlace
  self.box_MultipleOR_95 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_95
  l0._graph = self
  l0._name = "box_MultipleOR_95"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|624702587"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_95_Out
  self.box_MultipleOR_53 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_53
  l0._graph = self
  l0._name = "box_MultipleOR_53"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|658956347"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_53_Out
  self.box_VehicleSeatingController_92 = cbox:CreateBox("Domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_92
  l0._graph = self
  l0._name = "box_VehicleSeatingController_92"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|722926884"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = DummyFunction
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = self.f_box_VehicleSeatingController_92_Out
  self.box_LogicGate_v2_57 = cbox:CreateBox("Domino/System/LogicGate_v2.lua")
  l0 = self.box_LogicGate_v2_57
  l0._graph = self
  l0._name = "box_LogicGate_v2_57"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|782186010"
  l0.Out = self.f_box_LogicGate_v2_57_Out
  l0.Opened = self.f_box_LogicGate_v2_57_Opened
  l0.Closed = self.f_box_LogicGate_v2_57_Closed
  self.box_Assign_Patrol_Controller_v2_89 = cbox:CreateBox("Domino/System/AssignPatrol_v2.lua")
  l0 = self.box_Assign_Patrol_Controller_v2_89
  l0._graph = self
  l0._name = "box_Assign_Patrol_Controller_v2_89"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|804285115"
  l0.Out = self.f_box_Assign_Patrol_Controller_v2_89_Out
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.SpeedSet = DummyFunction
  l0.Aborted = DummyFunction
  l0.Failed = DummyFunction
  self.box_MultipleOR_25 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_25
  l0._graph = self
  l0._name = "box_MultipleOR_25"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|816620825"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_25_Out
  self.box_CLOController_29 = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self.box_CLOController_29
  l0._graph = self
  l0._name = "box_CLOController_29"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|842194111"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_29_OnUserInPlace
  self.box_MultipleOR_9 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_9
  l0._graph = self
  l0._name = "box_MultipleOR_9"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|887603409"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_9_Out
  self.box_CLOController_26 = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self.box_CLOController_26
  l0._graph = self
  l0._name = "box_CLOController_26"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|911395053"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_26_OnUserInPlace
  self.box_SetBoolean_v2_39 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_39
  l0._graph = self
  l0._name = "box_SetBoolean_v2_39"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|920930028"
  l0.Out = self.f_box_SetBoolean_v2_39_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_39_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_39_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_39_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_39_SetFromBool
  self.box_ListWriter_61 = cbox:CreateBox("Domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_61
  l0._graph = self
  l0._name = "box_ListWriter_61"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|975906909"
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_box_ListWriter_61_Added
  l0.Removed = self.f_box_ListWriter_61_Removed
  l0.Out = self.f_box_ListWriter_61_Out
  self.box_ListForEach_91 = cbox:CreateBox("Domino/System/Lists/ListForEach.lua")
  l0 = self.box_ListForEach_91
  l0._graph = self
  l0._name = "box_ListForEach_91"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|993559942"
  l0.Started = self.f_box_ListForEach_91_Started
  l0.Stopped = self.f_box_ListForEach_91_Stopped
  l0.ForEach = self.f_box_ListForEach_91_ForEach
  l0.GotNext = self.f_box_ListForEach_91_GotNext
  l0.EndOfList = self.f_box_ListForEach_91_EndOfList
  self.box_Multiple_AND_34 = cbox:CreateBox("Domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_34
  l0._graph = self
  l0._name = "box_Multiple_AND_34"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1076982753"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_34_Out
  self.box_ListForEach_35 = cbox:CreateBox("Domino/System/Lists/ListForEach.lua")
  l0 = self.box_ListForEach_35
  l0._graph = self
  l0._name = "box_ListForEach_35"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1078989513"
  l0.Started = self.f_box_ListForEach_35_Started
  l0.Stopped = self.f_box_ListForEach_35_Stopped
  l0.ForEach = self.f_box_ListForEach_35_ForEach
  l0.GotNext = self.f_box_ListForEach_35_GotNext
  l0.EndOfList = self.f_box_ListForEach_35_EndOfList
  self.box_MultipleOR_69 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_69
  l0._graph = self
  l0._name = "box_MultipleOR_69"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1125658381"
  l0._DynamicAnchors = {Input = 8}
  l0.Out = self.f_box_MultipleOR_69_Out
  self.box_ListWriter_51 = cbox:CreateBox("Domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_51
  l0._graph = self
  l0._name = "box_ListWriter_51"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1146927846"
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_box_ListWriter_51_Added
  l0.Removed = self.f_box_ListWriter_51_Removed
  l0.Out = self.f_box_ListWriter_51_Out
  self.box_Timer_v2_45 = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_45
  l0._graph = self
  l0._name = "box_Timer_v2_45"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1398990777"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_45_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_SetBoolean_v2_41 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_41
  l0._graph = self
  l0._name = "box_SetBoolean_v2_41"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1438559072"
  l0.Out = self.f_box_SetBoolean_v2_41_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_41_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_41_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_41_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_41_SetFromBool
  self.box_MultipleOR_10 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_10
  l0._graph = self
  l0._name = "box_MultipleOR_10"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1570062880"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_10_Out
  self.box_Multiple_AND_32 = cbox:CreateBox("Domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_32
  l0._graph = self
  l0._name = "box_Multiple_AND_32"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1640537309"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_32_Out
  self.box_ListForEach_90 = cbox:CreateBox("Domino/System/Lists/ListForEach.lua")
  l0 = self.box_ListForEach_90
  l0._graph = self
  l0._name = "box_ListForEach_90"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1671814866"
  l0.Started = self.f_box_ListForEach_90_Started
  l0.Stopped = self.f_box_ListForEach_90_Stopped
  l0.ForEach = self.f_box_ListForEach_90_ForEach
  l0.GotNext = self.f_box_ListForEach_90_GotNext
  l0.EndOfList = self.f_box_ListForEach_90_EndOfList
  self.box_ListForEach_40 = cbox:CreateBox("Domino/System/Lists/ListForEach.lua")
  l0 = self.box_ListForEach_40
  l0._graph = self
  l0._name = "box_ListForEach_40"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1674999090"
  l0.Started = self.f_box_ListForEach_40_Started
  l0.Stopped = self.f_box_ListForEach_40_Stopped
  l0.ForEach = self.f_box_ListForEach_40_ForEach
  l0.GotNext = self.f_box_ListForEach_40_GotNext
  l0.EndOfList = self.f_box_ListForEach_40_EndOfList
  self.box_AISquadRelationshipController_67 = cbox:CreateBox("Domino/System/AISquadRelationshipController.lua")
  l0 = self.box_AISquadRelationshipController_67
  l0._graph = self
  l0._name = "box_AISquadRelationshipController_67"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1705956938"
  l0.RelationshipSet = self.f_box_AISquadRelationshipController_67_RelationshipSet
  l0.RelationshipReset = DummyFunction
  self.box_PawnHealthMonitor_v3_56 = cbox:CreateBox("Domino/System/PawnHealthMonitor_v3.lua")
  l0 = self.box_PawnHealthMonitor_v3_56
  l0._graph = self
  l0._name = "box_PawnHealthMonitor_v3_56"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1846627749"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Damaged = DummyFunction
  l0.Killed = self.f_box_PawnHealthMonitor_v3_56_Killed
  l0.DBNO = DummyFunction
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = self.f_box_PawnHealthMonitor_v3_56_DeadChecked
  l0.HealthChecked = DummyFunction
  self.box_SwitchOutput_v3_73 = cbox:CreateBox("Domino/System/SwitchOutput_v3.lua")
  l0 = self.box_SwitchOutput_v3_73
  l0._graph = self
  l0._name = "box_SwitchOutput_v3_73"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1925601801"
  l0._DynamicAnchors = {Output = 2}
  l0.Out = DummyFunction
  l0.Output[0] = self.f_box_SwitchOutput_v3_73_Output_0
  l0.Output[1] = self.f_box_SwitchOutput_v3_73_Output_1
  l0.None = DummyFunction
  l0.WasReset = DummyFunction
  self.box_MultipleOR_4 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_4
  l0._graph = self
  l0._name = "box_MultipleOR_4"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1940008028"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_4_Out
  self.box_MultipleOR_43 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_43
  l0._graph = self
  l0._name = "box_MultipleOR_43"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|2032847556"
  l0._DynamicAnchors = {Input = 6}
  l0.Out = self.f_box_MultipleOR_43_Out
  self.box_ListForEach_15 = cbox:CreateBox("Domino/System/Lists/ListForEach.lua")
  l0 = self.box_ListForEach_15
  l0._graph = self
  l0._name = "box_ListForEach_15"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|2122591566"
  l0.Started = self.f_box_ListForEach_15_Started
  l0.Stopped = self.f_box_ListForEach_15_Stopped
  l0.ForEach = self.f_box_ListForEach_15_ForEach
  l0.GotNext = self.f_box_ListForEach_15_GotNext
  l0.EndOfList = self.f_box_ListForEach_15_EndOfList
  self.box_MultipleOR_72 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_72
  l0._graph = self
  l0._name = "box_MultipleOR_72"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|2132029848"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_72_Out
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:Prep()
  local l0
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_37"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1232496230"
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_box_Ordered_Output_37_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_37_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_37_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_37_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_37_Out_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|2139533200", "2139533200", "PrepareSpawnAndAction", "Prep", "box_Ordered_Output_37.In", self, l0)
  l0:In()
end
function export:Start()
  local l0
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_3"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|325443822"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_3_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_3_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1173704750", "1173704750", "PrepareSpawnAndAction", "Start", "box_Ordered_Output_3.In", self, l0)
  l0:In()
end
function export:Stop()
  local l0
  self:OnEnter_box_MultipleOR_72()
  l0 = self.box_MultipleOR_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1174230166", "1174230166", "PrepareSpawnAndAction", "Stop", "box_MultipleOR_72.Input", self, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_68_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|419690265", "419690265", "PrepareSpawnAndAction", "box_Ordered_Output_68.Out", "VipVehicleDestroyed", clone, self)
  self:VipVehicleDestroyed()
end
function export:f_box_Ordered_Output_68_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_69()
  l0 = self.box_MultipleOR_69
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|779083165", "779083165", "PrepareSpawnAndAction", "box_Ordered_Output_68.Out", "box_MultipleOR_69.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_MultipleOR_13_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_34()
  l0 = self.box_MultipleOR_13
  l1 = self.box_Multiple_AND_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1501833034", "1501833034", "PrepareSpawnAndAction", "box_MultipleOR_13.Out", "box_Multiple_AND_34.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_OnceOnly_v3_47_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_71"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|2124992659"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_71_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_71_Out_1
  l0 = self.box_OnceOnly_v3_47
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1428230137", "1428230137", "PrepareSpawnAndAction", "box_OnceOnly_v3_47.Out", "box_Ordered_Output_71.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_30_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_64()
  l0 = self.box_MultipleOR_30
  l1 = self.box_Multiple_AND_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1299855163", "1299855163", "PrepareSpawnAndAction", "box_MultipleOR_30.Out", "box_Multiple_AND_64.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_ConvoyController_152_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ConvoyController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_151"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1628052339"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_151_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_151_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|968593109", "968593109", "PrepareSpawnAndAction", "box_ConvoyController_152.Stopped", "box_Ordered_Output_151.In", clone, l0)
  l0:In()
end
function export:f_box_ConvoyController_16_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ConvoyController.lua")]
  self.convoyID = l0.OutConvoyId
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_43()
  l0 = self.box_MultipleOR_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1598204002", "1598204002", "PrepareSpawnAndAction", "box_ConvoyController_16.Started", "box_MultipleOR_43.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_6_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|857894446", "857894446", "PrepareSpawnAndAction", "box_Ordered_Output_6.Out", "VehiclesSpawned", clone, self)
  self:VehiclesSpawned()
end
function export:f_box_Ordered_Output_6_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_32()
  l0 = self.box_Multiple_AND_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1234867482", "1234867482", "PrepareSpawnAndAction", "box_Ordered_Output_6.Out", "box_Multiple_AND_32.Condition", clone, l0)
  l0:Condition(0)
end
function export:f_box_Test_if_Nil_54_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.VipVehicleCLO
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_42"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1226286750"
  l0.Is_nil = self.f_box_Test_if_Nil_42_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_42_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|674867736", "674867736", "PrepareSpawnAndAction", "box_Test_if_Nil_54.Is_nil", "box_Test_if_Nil_42.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_54_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.VipVehicleCLO
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_59"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1168803122"
  l0.Is_nil = self.f_box_Test_if_Nil_59_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_59_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|436420416", "436420416", "PrepareSpawnAndAction", "box_Test_if_Nil_54.Is_not_nil", "box_Test_if_Nil_59.In", clone, l0)
  l0:In()
end
function export:f_box_OnceOnly_v3_81_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = self.EscortNPCsCLOs
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_87"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1006933577"
  l0.Is_nil = self.f_box_Test_if_Nil_87_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_87_Is_not_nil
  l0 = self.box_OnceOnly_v3_81
  l1 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|363054387", "363054387", "PrepareSpawnAndAction", "box_OnceOnly_v3_81.Out", "box_Test_if_Nil_87.In", l0, l1)
  l1:In()
end
function export:f_box_Test_if_Nil_22_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_93()
  l0 = self.box_MultipleOR_93
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|252956693", "252956693", "PrepareSpawnAndAction", "box_Test_if_Nil_22.Is_not_nil", "box_MultipleOR_93.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_MultipleOR_93_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_90
  l0.List = self.All_NPCs
  l0 = self.box_MultipleOR_93
  l1 = self.box_ListForEach_90
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|172029010", "172029010", "PrepareSpawnAndAction", "box_MultipleOR_93.Out", "box_ListForEach_90.GetNext", l0, l1)
  l1:GetNext()
end
function export:f_box_MultipleOR_63_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/SetList.lua")]
  l0.List = self.All_NPCs
  l0._graph = self
  l0._name = "box_Set_List_52"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1836013489"
  l0.Out = self.f_box_Set_List_52_Out
  l0 = self.box_MultipleOR_63
  l1 = Boxes[PathID("Domino/System/Lists/SetList.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|209133311", "209133311", "PrepareSpawnAndAction", "box_MultipleOR_63.Out", "box_Set_List_52.FromList", l0, l1)
  l1:FromList()
end
function export:f_box_CLOController_7_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_7
  self.tempNPC = l0.UserID
  l0 = self.box_ListWriter_28
  l0.Input = self.tempListVehicles
  l0.Data[0] = self.tempNPC
  l0 = self.box_CLOController_7
  l1 = self.box_ListWriter_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|453655231", "453655231", "PrepareSpawnAndAction", "box_CLOController_7.OnUserInPlace", "box_ListWriter_28.Add", l0, l1)
  l1:Add()
end
function export:f_box_VehicleSeatingController_18_UnassignCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_25()
  l0 = self.box_VehicleSeatingController_18
  l1 = self.box_MultipleOR_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|288059662", "288059662", "PrepareSpawnAndAction", "box_VehicleSeatingController_18.UnassignCompleted", "box_MultipleOR_25.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Compare_Boolean_v2_97_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_45
  l0.Seconds = 3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|524337087", "524337087", "PrepareSpawnAndAction", "box_Compare_Boolean_v2_97.A_is_True", "box_Timer_v2_45.Start", clone, l0)
  l0:Start()
end
function export:f_box_MultipleOR_19_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_40
  l0.List = self.EscortVehiclesCLOs
  l0 = self.box_MultipleOR_19
  l1 = self.box_ListForEach_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|2004745634", "2004745634", "PrepareSpawnAndAction", "box_MultipleOR_19.Out", "box_ListForEach_40.GetNext", l0, l1)
  l1:GetNext()
end
function export:f_box_ConvoyController_60_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ConvoyController.lua")]
  self.convoyID = l0.OutConvoyId
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_43()
  l0 = self.box_MultipleOR_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|888319712", "888319712", "PrepareSpawnAndAction", "box_ConvoyController_60.Started", "box_MultipleOR_43.Input", clone, l0)
  l0:Input(4)
end
function export:f_box_Multiple_AND_64_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_6"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|87366518"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_6_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_6_Out_1
  l0 = self.box_Multiple_AND_64
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1662318735", "1662318735", "PrepareSpawnAndAction", "box_Multiple_AND_64.Out", "box_Ordered_Output_6.In", l0, l1)
  l1:In()
end
function export:f_box_Compare_Boolean_v2_48_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|452857277", "452857277", "PrepareSpawnAndAction", "box_Compare_Boolean_v2_48.A_is_False", "NPCsUnassigned", clone, self)
  self:NPCsUnassigned()
end
function export:f_box_Compare_Boolean_v2_48_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|2100800855", "2100800855", "PrepareSpawnAndAction", "box_Compare_Boolean_v2_48.A_is_True", "StuckNPCsUnassigned", clone, self)
  self:StuckNPCsUnassigned()
end
function export:f_box_Compare_Boolean_v2_48_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.AutoAssignPatrol
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_12"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|865492506"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_12_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1056727548", "1056727548", "PrepareSpawnAndAction", "box_Compare_Boolean_v2_48.Out", "box_Compare_Boolean_v2_12.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_3_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|366663904", "366663904", "PrepareSpawnAndAction", "box_Ordered_Output_3.Out", "Started", clone, self)
  self:Started()
end
function export:f_box_Ordered_Output_3_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = self.EscortNPCsCLOs
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_17"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1491915464"
  l0.Is_nil = self.f_box_Test_if_Nil_17_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_17_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|972874625", "972874625", "PrepareSpawnAndAction", "box_Ordered_Output_3.Out", "box_Test_if_Nil_17.In", clone, l0)
  l0:In()
end
function export:f_box_ListWriter_55_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_55
  self.tempListNPCs = l0.Target
  self:OnEnter_box_MultipleOR_10()
  l1 = self.box_MultipleOR_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|666874156", "666874156", "PrepareSpawnAndAction", "box_ListWriter_55.Added", "box_MultipleOR_10.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_ListWriter_55_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_55
  self.tempListNPCs = l0.Target
end
function export:f_box_ListWriter_55_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_55
  self.tempListNPCs = l0.Target
end
function export:f_box_ConvoyMonitor_62_ConvoyStopped()
  local l0
  self = self._graph
  l0 = self.box_ConvoyMonitor_62
  self.Instigator = l0.Instigator
end
function export:f_box_ConvoyMonitor_62_ConvoyStuck()
  local l0, l1
  self = self._graph
  l0 = self.box_ConvoyMonitor_62
  l1 = self.box_SwitchOutput_v3_73
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1979678233", "1979678233", "PrepareSpawnAndAction", "box_ConvoyMonitor_62.ConvoyStuck", "box_SwitchOutput_v3_73.In", l0, l1)
  l1:In()
end
function export:f_box_ConvoyMonitor_62_DestinationReached()
  local l0, l1
  self = self._graph
  l0 = self.box_ConvoyMonitor_62
  l1 = self.box_SetBoolean_v2_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1376235604", "1376235604", "PrepareSpawnAndAction", "box_ConvoyMonitor_62.DestinationReached", "box_SetBoolean_v2_41.False", l0, l1)
  l1:False()
end
function export:f_box_ConvoyMonitor_62_EscortDied()
  local l0, l1
  self = self._graph
  l0 = self.box_ConvoyMonitor_62
  self.Instigator = l0.Instigator
  self:OnEnter_box_MultipleOR_69()
  l1 = self.box_MultipleOR_69
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|512396121", "512396121", "PrepareSpawnAndAction", "box_ConvoyMonitor_62.EscortDied", "box_MultipleOR_69.Input", l0, l1)
  l1:Input(3)
end
function export:f_box_ConvoyMonitor_62_EscortHijacked()
  local l0, l1
  self = self._graph
  l0 = self.box_ConvoyMonitor_62
  self.Instigator = l0.Instigator
  self:OnEnter_box_MultipleOR_69()
  l1 = self.box_MultipleOR_69
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1701021833", "1701021833", "PrepareSpawnAndAction", "box_ConvoyMonitor_62.EscortHijacked", "box_MultipleOR_69.Input", l0, l1)
  l1:Input(5)
end
function export:f_box_ConvoyMonitor_62_EscortVehicleDestroyed()
  local l0, l1
  self = self._graph
  l0 = self.box_ConvoyMonitor_62
  self.Instigator = l0.Instigator
  self:OnEnter_box_MultipleOR_69()
  l1 = self.box_MultipleOR_69
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|36512620", "36512620", "PrepareSpawnAndAction", "box_ConvoyMonitor_62.EscortVehicleDestroyed", "box_MultipleOR_69.Input", l0, l1)
  l1:Input(4)
end
function export:f_box_ConvoyMonitor_62_HardDisturbance()
  local l0, l1
  self = self._graph
  l0 = self.box_ConvoyMonitor_62
  self.Instigator = l0.Instigator
  self:OnEnter_box_MultipleOR_69()
  l1 = self.box_MultipleOR_69
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|530494161", "530494161", "PrepareSpawnAndAction", "box_ConvoyMonitor_62.HardDisturbance", "box_MultipleOR_69.Input", l0, l1)
  l1:Input(6)
end
function export:f_box_ConvoyMonitor_62_SoftDisturbance()
  local l0, l1
  self = self._graph
  l0 = self.box_ConvoyMonitor_62
  self.Instigator = l0.Instigator
  self:OnEnter_box_MultipleOR_69()
  l1 = self.box_MultipleOR_69
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|258361155", "258361155", "PrepareSpawnAndAction", "box_ConvoyMonitor_62.SoftDisturbance", "box_MultipleOR_69.Input", l0, l1)
  l1:Input(7)
end
function export:f_box_ConvoyMonitor_62_StartMoving()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetInteger_v2.lua")]
  l0.Integer = self.convoyID
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0._name = "box_SetInteger_v2_58"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1839892406"
  l0.Out = self.f_box_SetInteger_v2_58_Out
  l0 = self.box_ConvoyMonitor_62
  l1 = Boxes[PathID("Domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1246063784", "1246063784", "PrepareSpawnAndAction", "box_ConvoyMonitor_62.StartMoving", "box_SetInteger_v2_58.FromInteger", l0, l1)
  l1:FromInteger()
end
function export:f_box_ConvoyMonitor_62_VIPDied()
  local l0, l1
  self = self._graph
  l0 = self.box_ConvoyMonitor_62
  self.Instigator = l0.Instigator
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_70"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1280333391"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_70_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_70_Out_1
  l0 = self.box_ConvoyMonitor_62
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1801467232", "1801467232", "PrepareSpawnAndAction", "box_ConvoyMonitor_62.VIPDied", "box_Ordered_Output_70.In", l0, l1)
  l1:In()
end
function export:f_box_ConvoyMonitor_62_VIPHijacked()
  local l0, l1
  self = self._graph
  l0 = self.box_ConvoyMonitor_62
  self.Instigator = l0.Instigator
  self:OnEnter_box_MultipleOR_69()
  l1 = self.box_MultipleOR_69
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|30479940", "30479940", "PrepareSpawnAndAction", "box_ConvoyMonitor_62.VIPHijacked", "box_MultipleOR_69.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_ConvoyMonitor_62_VIPVehicleDestroyed()
  local l0, l1
  self = self._graph
  l0 = self.box_ConvoyMonitor_62
  self.Instigator = l0.Instigator
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_68"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|534228"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_68_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_68_Out_1
  l0 = self.box_ConvoyMonitor_62
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1351566215", "1351566215", "PrepareSpawnAndAction", "box_ConvoyMonitor_62.VIPVehicleDestroyed", "box_Ordered_Output_68.In", l0, l1)
  l1:In()
end
function export:f_box_ListWriter_28_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_28
  self.tempListVehicles = l0.Target
  self:OnEnter_box_MultipleOR_19()
  l1 = self.box_MultipleOR_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|2073786386", "2073786386", "PrepareSpawnAndAction", "box_ListWriter_28.Added", "box_MultipleOR_19.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_ListWriter_28_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_28
  self.tempListVehicles = l0.Target
end
function export:f_box_ListWriter_28_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_28
  self.tempListVehicles = l0.Target
end
function export:f_box_Test_if_Nil_44_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_53()
  l0 = self.box_MultipleOR_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|495864888", "495864888", "PrepareSpawnAndAction", "box_Test_if_Nil_44.Is_nil", "box_MultipleOR_53.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Test_if_Nil_44_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_14
  l0.CLO = self.VipCLO
  l0.SpawnOutsideLoadingRing = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|969899146", "969899146", "PrepareSpawnAndAction", "box_Test_if_Nil_44.Is_not_nil", "box_CLOController_14.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Compare_Entity_v2_76_Equal()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareEntity_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AISquadRelationshipController_67
  l0.Affiliation = self.Affiliation
  l0.Relationship = "Threat"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|210235250", "210235250", "PrepareSpawnAndAction", "box_Compare_Entity_v2_76.Equal", "box_AISquadRelationshipController_67.SetRelationship", clone, l0)
  l0:SetRelationship()
end
function export:f_box_Compare_Entity_v2_76_NotEqual()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareEntity_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_98"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|2102162325"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_98_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_98_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|945452585", "945452585", "PrepareSpawnAndAction", "box_Compare_Entity_v2_76.NotEqual", "box_Ordered_Output_98.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_27_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_25()
  l0 = self.box_MultipleOR_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1587148753", "1587148753", "PrepareSpawnAndAction", "box_Test_if_Nil_27.Is_nil", "box_MultipleOR_25.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Test_if_Nil_27_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_VehicleSeatingController_18
  l0.Vehicle = self.vipVehicle
  l0.UseAnimation = 1
  l0.WalkType = "Walk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1454537532", "1454537532", "PrepareSpawnAndAction", "box_Test_if_Nil_27.Is_not_nil", "box_VehicleSeatingController_18.Unassign", clone, l0)
  l0:Unassign()
end
function export:f_box_CLOController_14_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_14
  self.Vip = l0.UserID
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = self.Vip
  l0._graph = self
  l0._name = "box_Set_Entity_2"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1185108947"
  l0.Out = self.f_box_Set_Entity_2_Out
  l0 = self.box_CLOController_14
  l1 = Boxes[PathID("Domino/System/SetEntity.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|237307694", "237307694", "PrepareSpawnAndAction", "box_CLOController_14.OnUserInPlace", "box_Set_Entity_2.FromEntity", l0, l1)
  l1:FromEntity()
end
function export:f_box_Test_if_Nil_24_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_9()
  l0 = self.box_MultipleOR_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|2075656605", "2075656605", "PrepareSpawnAndAction", "box_Test_if_Nil_24.Is_nil", "box_MultipleOR_9.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Test_if_Nil_24_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_95()
  l0 = self.box_MultipleOR_95
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|315281088", "315281088", "PrepareSpawnAndAction", "box_Test_if_Nil_24.Is_not_nil", "box_MultipleOR_95.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Test_if_Nil_96_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.VipVehicleCLO
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_85"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|691767586"
  l0.Is_nil = self.f_box_Test_if_Nil_85_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_85_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|224724227", "224724227", "PrepareSpawnAndAction", "box_Test_if_Nil_96.Is_nil", "box_Test_if_Nil_85.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_96_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.VipVehicleCLO
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_83"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1058087435"
  l0.Is_nil = self.f_box_Test_if_Nil_83_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_83_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1945488242", "1945488242", "PrepareSpawnAndAction", "box_Test_if_Nil_96.Is_not_nil", "box_Test_if_Nil_83.In", clone, l0)
  l0:In()
end
function export:f_box_Set_List_31_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/SetList.lua")]
  self.EscortCars = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_4()
  l0 = self.box_MultipleOR_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|562047800", "562047800", "PrepareSpawnAndAction", "box_Set_List_31.Out", "box_MultipleOR_4.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_MultipleOR_95_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_91
  l0.List = self.tempListVehicles
  l0 = self.box_MultipleOR_95
  l1 = self.box_ListForEach_91
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|69175891", "69175891", "PrepareSpawnAndAction", "box_MultipleOR_95.Out", "box_ListForEach_91.GetNext", l0, l1)
  l1:GetNext()
end
function export:f_box_MultipleOR_53_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_34()
  l0 = self.box_MultipleOR_53
  l1 = self.box_Multiple_AND_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|2131938991", "2131938991", "PrepareSpawnAndAction", "box_MultipleOR_53.Out", "box_Multiple_AND_34.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_Ordered_Output_74_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_72()
  l0 = self.box_MultipleOR_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1086880118", "1086880118", "PrepareSpawnAndAction", "box_Ordered_Output_74.Out", "box_MultipleOR_72.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_Ordered_Output_74_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|497609554", "497609554", "PrepareSpawnAndAction", "box_Ordered_Output_74.Out", "ConvoyStuck", clone, self)
  self:ConvoyStuck()
end
function export:f_box_Test_if_Nil_85_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/ConvoyController.lua")]
  l0.Destination = self.Updated_Destination
  l0.VIPCharacter = self.Vip
  l0.VIPVehicle = nil
  l0.EscortCharacters = self.tempListNPCs
  l0.EscortVehicles = nil
  l0.ConvoyConfig = self.Updated_ConvoyConfig
  l0.ObjectiveText = self.ObjectiveText
  l0.InConvoyId = self.convoyID
  l0._graph = self
  l0._name = "box_ConvoyController_88"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|2122235023"
  l0.Started = DummyFunction
  l0.Updated = DummyFunction
  l0.Stopped = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1796470307", "1796470307", "PrepareSpawnAndAction", "box_Test_if_Nil_85.Is_nil", "box_ConvoyController_88.Update", clone, l0)
  l0:Update()
end
function export:f_box_Test_if_Nil_85_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/ConvoyController.lua")]
  l0.Destination = self.Updated_Destination
  l0.VIPCharacter = self.Vip
  l0.VIPVehicle = self.vipVehicle
  l0.EscortCharacters = self.tempListNPCs
  l0.EscortVehicles = nil
  l0.ConvoyConfig = self.Updated_ConvoyConfig
  l0.ObjectiveText = self.ObjectiveText
  l0.InConvoyId = self.convoyID
  l0._graph = self
  l0._name = "box_ConvoyController_86"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|944876114"
  l0.Started = DummyFunction
  l0.Updated = DummyFunction
  l0.Stopped = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|81266310", "81266310", "PrepareSpawnAndAction", "box_Test_if_Nil_85.Is_not_nil", "box_ConvoyController_86.Update", clone, l0)
  l0:Update()
end
function export:f_box_VehicleSeatingController_92_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_95()
  l0 = self.box_VehicleSeatingController_92
  l1 = self.box_MultipleOR_95
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1943577416", "1943577416", "PrepareSpawnAndAction", "box_VehicleSeatingController_92.Out", "box_MultipleOR_95.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_LogicGate_v2_57_Closed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_93()
  l0 = self.box_LogicGate_v2_57
  l1 = self.box_MultipleOR_93
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1551912149", "1551912149", "PrepareSpawnAndAction", "box_LogicGate_v2_57.Closed", "box_MultipleOR_93.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_LogicGate_v2_57_Opened()
  local l0, l1
  self = self._graph
  l0 = self.box_PawnHealthMonitor_v3_56
  l0.Pawn = self.tempNPC
  l0.CheckNow = 1
  l0 = self.box_LogicGate_v2_57
  l1 = self.box_PawnHealthMonitor_v3_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|748531013", "748531013", "PrepareSpawnAndAction", "box_LogicGate_v2_57.Opened", "box_PawnHealthMonitor_v3_56.CheckIfDead", l0, l1)
  l1:CheckIfDead()
end
function export:f_box_LogicGate_v2_57_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Assign_Patrol_Controller_v2_89
  l0.NPC = self.tempNPC
  l0.Patrol = self.tempPath
  l0 = self.box_LogicGate_v2_57
  l1 = self.box_Assign_Patrol_Controller_v2_89
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|653223700", "653223700", "PrepareSpawnAndAction", "box_LogicGate_v2_57.Out", "box_Assign_Patrol_Controller_v2_89.Assign", l0, l1)
  l1:Assign()
end
function export:f_box_Assign_Patrol_Controller_v2_89_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_93()
  l0 = self.box_Assign_Patrol_Controller_v2_89
  l1 = self.box_MultipleOR_93
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|860393162", "860393162", "PrepareSpawnAndAction", "box_Assign_Patrol_Controller_v2_89.Out", "box_MultipleOR_93.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MultipleOR_25_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = self.EscortVehiclesCLOs
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_24"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|500447135"
  l0.Is_nil = self.f_box_Test_if_Nil_24_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_24_Is_not_nil
  l0 = self.box_MultipleOR_25
  l1 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|831837599", "831837599", "PrepareSpawnAndAction", "box_MultipleOR_25.Out", "box_Test_if_Nil_24.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_29_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_29
  self.vipVehicle = l0.UserID
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = self.vipVehicle
  l0._graph = self
  l0._name = "box_Set_Entity_21"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1792821895"
  l0.Out = self.f_box_Set_Entity_21_Out
  l0 = self.box_CLOController_29
  l1 = Boxes[PathID("Domino/System/SetEntity.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|561673627", "561673627", "PrepareSpawnAndAction", "box_CLOController_29.OnUserInPlace", "box_Set_Entity_21.FromEntity", l0, l1)
  l1:FromEntity()
end
function export:f_box_Test_if_Nil_38_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_4()
  l0 = self.box_MultipleOR_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1378028822", "1378028822", "PrepareSpawnAndAction", "box_Test_if_Nil_38.Is_nil", "box_MultipleOR_4.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Test_if_Nil_38_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_19()
  l0 = self.box_MultipleOR_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|2046480907", "2046480907", "PrepareSpawnAndAction", "box_Test_if_Nil_38.Is_not_nil", "box_MultipleOR_19.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Test_if_Nil_82_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/ConvoyController.lua")]
  l0.Destination = self.Updated_Destination
  l0.VIPCharacter = self.Vip
  l0.VIPVehicle = nil
  l0.EscortCharacters = nil
  l0.EscortVehicles = nil
  l0.ConvoyConfig = self.Updated_ConvoyConfig
  l0.ObjectiveText = self.ObjectiveText
  l0.InConvoyId = self.convoyID
  l0._graph = self
  l0._name = "box_ConvoyController_84"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1400799826"
  l0.Started = DummyFunction
  l0.Updated = DummyFunction
  l0.Stopped = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1983959749", "1983959749", "PrepareSpawnAndAction", "box_Test_if_Nil_82.Is_nil", "box_ConvoyController_84.Update", clone, l0)
  l0:Update()
end
function export:f_box_Test_if_Nil_82_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/ConvoyController.lua")]
  l0.Destination = self.Updated_Destination
  l0.VIPCharacter = self.Vip
  l0.VIPVehicle = self.vipVehicle
  l0.EscortCharacters = nil
  l0.EscortVehicles = nil
  l0.ConvoyConfig = self.Updated_ConvoyConfig
  l0.ObjectiveText = self.ObjectiveText
  l0.InConvoyId = self.convoyID
  l0._graph = self
  l0._name = "box_ConvoyController_80"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|64387524"
  l0.Started = DummyFunction
  l0.Updated = DummyFunction
  l0.Stopped = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1849232022", "1849232022", "PrepareSpawnAndAction", "box_Test_if_Nil_82.Is_not_nil", "box_ConvoyController_80.Update", clone, l0)
  l0:Update()
end
function export:f_box_Compare_Boolean_v2_12_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = self.tmpPatrols
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_22"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|156885117"
  l0.Is_nil = DummyFunction
  l0.Is_not_nil = self.f_box_Test_if_Nil_22_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|379392888", "379392888", "PrepareSpawnAndAction", "box_Compare_Boolean_v2_12.A_is_True", "box_Test_if_Nil_22.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_9_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.ConvoyIsStuck
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_48"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|303156694"
  l0.Out = self.f_box_Compare_Boolean_v2_48_Out
  l0.A_is_True = self.f_box_Compare_Boolean_v2_48_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_48_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_MultipleOR_9
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|2004436053", "2004436053", "PrepareSpawnAndAction", "box_MultipleOR_9.Out", "box_Compare_Boolean_v2_48.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_65_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_32()
  l0 = self.box_Multiple_AND_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1151262932", "1151262932", "PrepareSpawnAndAction", "box_Ordered_Output_65.Out", "box_Multiple_AND_32.Condition", clone, l0)
  l0:Condition(1)
end
function export:f_box_Ordered_Output_65_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|682470364", "682470364", "PrepareSpawnAndAction", "box_Ordered_Output_65.Out", "NPCsSpawned", clone, self)
  self:NPCsSpawned()
end
function export:f_box_CLOController_26_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_26
  self.tempNPC = l0.UserID
  l0 = self.box_ListWriter_51
  l0.Input = self.All_NPCs
  l0.Data[0] = self.tempNPC
  l0 = self.box_CLOController_26
  l1 = self.box_ListWriter_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1265357201", "1265357201", "PrepareSpawnAndAction", "box_CLOController_26.OnUserInPlace", "box_ListWriter_51.Add", l0, l1)
  l1:Add()
end
function export:f_box_SetBoolean_v2_39_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_39
  self.ConvoyIsStuck = l0.Target
end
function export:f_box_SetBoolean_v2_39_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_39
  self.ConvoyIsStuck = l0.Target
end
function export:f_box_SetBoolean_v2_39_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_39
  self.ConvoyIsStuck = l0.Target
end
function export:f_box_SetBoolean_v2_39_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_39
  self.ConvoyIsStuck = l0.Target
  l0 = Boxes[PathID("Domino/System/Lists/SetList.lua")]
  l0.List = self.StuckPatrolsList
  l0._graph = self
  l0._name = "box_Set_List_46"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1130337582"
  l0.Out = self.f_box_Set_List_46_Out
  l0 = self.box_SetBoolean_v2_39
  l1 = Boxes[PathID("Domino/System/Lists/SetList.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|715852297", "715852297", "PrepareSpawnAndAction", "box_SetBoolean_v2_39.SetTrue", "box_Set_List_46.FromList", l0, l1)
  l1:FromList()
end
function export:f_box_SetBoolean_v2_39_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_39
  self.ConvoyIsStuck = l0.Target
end
function export:f_box_Test_if_Nil_11_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_13()
  l0 = self.box_MultipleOR_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1185598970", "1185598970", "PrepareSpawnAndAction", "box_Test_if_Nil_11.Is_nil", "box_MultipleOR_13.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Test_if_Nil_11_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_10()
  l0 = self.box_MultipleOR_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1709765034", "1709765034", "PrepareSpawnAndAction", "box_Test_if_Nil_11.Is_not_nil", "box_MultipleOR_10.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_ListWriter_61_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_61
  self.All_NPCs = l0.Target
  self:OnEnter_box_MultipleOR_63()
  l1 = self.box_MultipleOR_63
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1493737944", "1493737944", "PrepareSpawnAndAction", "box_ListWriter_61.Added", "box_MultipleOR_63.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_ListWriter_61_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_61
  self.All_NPCs = l0.Target
end
function export:f_box_ListWriter_61_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_61
  self.All_NPCs = l0.Target
end
function export:f_box_ListForEach_91_EndOfList()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_91
  self.tempVehicle = l0.Data
  self:OnEnter_box_MultipleOR_9()
  l1 = self.box_MultipleOR_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|281175618", "281175618", "PrepareSpawnAndAction", "box_ListForEach_91.EndOfList", "box_MultipleOR_9.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_ListForEach_91_ForEach()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_91
  self.tempVehicle = l0.Data
end
function export:f_box_ListForEach_91_GotNext()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_91
  self.tempVehicle = l0.Data
  l0 = self.box_VehicleSeatingController_92
  l0.Vehicle = self.tempVehicle
  l0.UseAnimation = 1
  l0.WalkType = "Walk"
  l0 = self.box_ListForEach_91
  l1 = self.box_VehicleSeatingController_92
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|194278137", "194278137", "PrepareSpawnAndAction", "box_ListForEach_91.GotNext", "box_VehicleSeatingController_92.Unassign", l0, l1)
  l1:Unassign()
end
function export:f_box_ListForEach_91_Started()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_91
  self.tempVehicle = l0.Data
end
function export:f_box_ListForEach_91_Stopped()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_91
  self.tempVehicle = l0.Data
end
function export:f_box_Test_if_Nil_87_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.VipVehicleCLO
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_82"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|855357689"
  l0.Is_nil = self.f_box_Test_if_Nil_82_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_82_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1185275291", "1185275291", "PrepareSpawnAndAction", "box_Test_if_Nil_87.Is_nil", "box_Test_if_Nil_82.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_87_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = self.EscortVehiclesCLOs
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_96"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|591691758"
  l0.Is_nil = self.f_box_Test_if_Nil_96_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_96_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|455923712", "455923712", "PrepareSpawnAndAction", "box_Test_if_Nil_87.Is_not_nil", "box_Test_if_Nil_96.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_83_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/ConvoyController.lua")]
  l0.Destination = self.Updated_Destination
  l0.VIPCharacter = self.Vip
  l0.VIPVehicle = nil
  l0.EscortCharacters = self.tempListNPCs
  l0.EscortVehicles = self.tempListVehicles
  l0.ConvoyConfig = self.Updated_ConvoyConfig
  l0.ObjectiveText = self.ObjectiveText
  l0.InConvoyId = self.convoyID
  l0._graph = self
  l0._name = "box_ConvoyController_78"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|663288501"
  l0.Started = DummyFunction
  l0.Updated = DummyFunction
  l0.Stopped = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1298255754", "1298255754", "PrepareSpawnAndAction", "box_Test_if_Nil_83.Is_nil", "box_ConvoyController_78.Update", clone, l0)
  l0:Update()
end
function export:f_box_Test_if_Nil_83_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/ConvoyController.lua")]
  l0.Destination = self.Updated_Destination
  l0.VIPCharacter = self.Vip
  l0.VIPVehicle = self.vipVehicle
  l0.EscortCharacters = self.tempListNPCs
  l0.EscortVehicles = self.tempListVehicles
  l0.ConvoyConfig = self.Updated_ConvoyConfig
  l0.ObjectiveText = self.ObjectiveText
  l0.InConvoyId = self.convoyID
  l0._graph = self
  l0._name = "box_ConvoyController_94"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|424017794"
  l0.Started = DummyFunction
  l0.Updated = DummyFunction
  l0.Stopped = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|2060634496", "2060634496", "PrepareSpawnAndAction", "box_Test_if_Nil_83.Is_not_nil", "box_ConvoyController_94.Update", clone, l0)
  l0:Update()
end
function export:f_box_Multiple_AND_34_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.VipCLO
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_66"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1741806129"
  l0.Is_nil = self.f_box_Test_if_Nil_66_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_66_Is_not_nil
  l0 = self.box_Multiple_AND_34
  l1 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|948947149", "948947149", "PrepareSpawnAndAction", "box_Multiple_AND_34.Out", "box_Test_if_Nil_66.In", l0, l1)
  l1:In()
end
function export:f_box_ListForEach_35_EndOfList()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_35
  self.tempPath = l0.Data
end
function export:f_box_ListForEach_35_ForEach()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_35
  self.tempPath = l0.Data
end
function export:f_box_ListForEach_35_GotNext()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_35
  self.tempPath = l0.Data
  self:OnEnter_box_LogicGate_v2_57()
  l1 = self.box_LogicGate_v2_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|905589792", "905589792", "PrepareSpawnAndAction", "box_ListForEach_35.GotNext", "box_LogicGate_v2_57.Open", l0, l1)
  l1:Open()
end
function export:f_box_ListForEach_35_Started()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_35
  self.tempPath = l0.Data
end
function export:f_box_ListForEach_35_Stopped()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_35
  self.tempPath = l0.Data
end
function export:f_box_MultipleOR_69_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_77"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1362675681"
  l0.Out = self.f_box_Get_Player_ID_77_Out
  l0 = self.box_MultipleOR_69
  l1 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1135765825", "1135765825", "PrepareSpawnAndAction", "box_MultipleOR_69.Out", "box_Get_Player_ID_77.In", l0, l1)
  l1:In()
end
function export:f_box_Set_List_46_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/SetList.lua")]
  self.tmpPatrols = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_74"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|667724081"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_74_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_74_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|300850462", "300850462", "PrepareSpawnAndAction", "box_Set_List_46.Out", "box_Ordered_Output_74.In", clone, l0)
  l0:In()
end
function export:f_box_ListWriter_51_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_51
  self.All_NPCs = l0.Target
  l0 = self.box_ListWriter_55
  l0.Input = self.tempListNPCs
  l0.Data[0] = self.tempNPC
  l0 = self.box_ListWriter_51
  l1 = self.box_ListWriter_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|279193787", "279193787", "PrepareSpawnAndAction", "box_ListWriter_51.Added", "box_ListWriter_55.Add", l0, l1)
  l1:Add()
end
function export:f_box_ListWriter_51_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_51
  self.All_NPCs = l0.Target
end
function export:f_box_ListWriter_51_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_51
  self.All_NPCs = l0.Target
end
function export:f_box_Test_if_Nil_59_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/ConvoyController.lua")]
  l0.Destination = self.Destination
  l0.VIPCharacter = self.Vip
  l0.VIPVehicle = nil
  l0.EscortCharacters = self.tempListNPCs
  l0.EscortVehicles = self.tempListVehicles
  l0.ConvoyConfig = self.ConvoyConfig
  l0.ObjectiveText = self.ObjectiveText
  l0.InConvoyId = nil
  l0._graph = self
  l0._name = "box_ConvoyController_60"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|274219320"
  l0.Started = self.f_box_ConvoyController_60_Started
  l0.Updated = DummyFunction
  l0.Stopped = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|690562821", "690562821", "PrepareSpawnAndAction", "box_Test_if_Nil_59.Is_nil", "box_ConvoyController_60.Start", clone, l0)
  l0:Start()
end
function export:f_box_Test_if_Nil_59_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/ConvoyController.lua")]
  l0.Destination = self.Destination
  l0.VIPCharacter = self.Vip
  l0.VIPVehicle = self.vipVehicle
  l0.EscortCharacters = self.tempListNPCs
  l0.EscortVehicles = self.tempListVehicles
  l0.ConvoyConfig = self.ConvoyConfig
  l0.ObjectiveText = self.ObjectiveText
  l0.InConvoyId = nil
  l0._graph = self
  l0._name = "box_ConvoyController_20"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1173623812"
  l0.Started = self.f_box_ConvoyController_20_Started
  l0.Updated = DummyFunction
  l0.Stopped = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|940594719", "940594719", "PrepareSpawnAndAction", "box_Test_if_Nil_59.Is_not_nil", "box_ConvoyController_20.Start", clone, l0)
  l0:Start()
end
function export:f_box_ConvoyController_20_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ConvoyController.lua")]
  self.convoyID = l0.OutConvoyId
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_43()
  l0 = self.box_MultipleOR_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1370235893", "1370235893", "PrepareSpawnAndAction", "box_ConvoyController_20.Started", "box_MultipleOR_43.Input", clone, l0)
  l0:Input(5)
end
function export:f_box_Set_Entity_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.VipNPC = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_53()
  l0 = self.box_MultipleOR_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|907192541", "907192541", "PrepareSpawnAndAction", "box_Set_Entity_2.Out", "box_MultipleOR_53.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_ConvoyController_36_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ConvoyController.lua")]
  self.convoyID = l0.OutConvoyId
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_43()
  l0 = self.box_MultipleOR_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|844983124", "844983124", "PrepareSpawnAndAction", "box_ConvoyController_36.Started", "box_MultipleOR_43.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Test_if_Nil_42_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/ConvoyController.lua")]
  l0.Destination = self.Destination
  l0.VIPCharacter = self.Vip
  l0.VIPVehicle = nil
  l0.EscortCharacters = self.tempListNPCs
  l0.EscortVehicles = nil
  l0.ConvoyConfig = self.ConvoyConfig
  l0.ObjectiveText = self.ObjectiveText
  l0.InConvoyId = nil
  l0._graph = self
  l0._name = "box_ConvoyController_50"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1813973439"
  l0.Started = self.f_box_ConvoyController_50_Started
  l0.Updated = DummyFunction
  l0.Stopped = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|2139486123", "2139486123", "PrepareSpawnAndAction", "box_Test_if_Nil_42.Is_nil", "box_ConvoyController_50.Start", clone, l0)
  l0:Start()
end
function export:f_box_Test_if_Nil_42_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/ConvoyController.lua")]
  l0.Destination = self.Destination
  l0.VIPCharacter = self.Vip
  l0.VIPVehicle = self.vipVehicle
  l0.EscortCharacters = self.tempListNPCs
  l0.EscortVehicles = nil
  l0.ConvoyConfig = self.ConvoyConfig
  l0.ObjectiveText = self.ObjectiveText
  l0.InConvoyId = nil
  l0._graph = self
  l0._name = "box_ConvoyController_5"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1622306540"
  l0.Started = self.f_box_ConvoyController_5_Started
  l0.Updated = DummyFunction
  l0.Stopped = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1804363029", "1804363029", "PrepareSpawnAndAction", "box_Test_if_Nil_42.Is_not_nil", "box_ConvoyController_5.Start", clone, l0)
  l0:Start()
end
function export:f_box_Set_List_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/SetList.lua")]
  self.tmpPatrols = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_47()
  l0 = self.box_OnceOnly_v3_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|948699570", "948699570", "PrepareSpawnAndAction", "box_Set_List_1.Out", "box_OnceOnly_v3_47.In", clone, l0)
  l0:In(0)
end
function export:f_box_Ordered_Output_37_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|841006168", "841006168", "PrepareSpawnAndAction", "box_Ordered_Output_37.Out", "Out", clone, self)
  self:Out()
end
function export:f_box_Ordered_Output_37_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.VipVehicleCLO
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_33"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1742860932"
  l0.Is_nil = self.f_box_Test_if_Nil_33_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_33_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|271438214", "271438214", "PrepareSpawnAndAction", "box_Ordered_Output_37.Out", "box_Test_if_Nil_33.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_37_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = self.EscortVehiclesCLOs
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_38"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|843637674"
  l0.Is_nil = self.f_box_Test_if_Nil_38_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_38_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|2019980370", "2019980370", "PrepareSpawnAndAction", "box_Ordered_Output_37.Out", "box_Test_if_Nil_38.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_37_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.VipCLO
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_44"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|465851013"
  l0.Is_nil = self.f_box_Test_if_Nil_44_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_44_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|998362291", "998362291", "PrepareSpawnAndAction", "box_Ordered_Output_37.Out", "box_Test_if_Nil_44.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_37_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = self.EscortNPCsCLOs
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_11"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|972582624"
  l0.Is_nil = self.f_box_Test_if_Nil_11_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_11_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1473187539", "1473187539", "PrepareSpawnAndAction", "box_Ordered_Output_37.Out", "box_Test_if_Nil_11.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_75_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_72()
  l0 = self.box_MultipleOR_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1869376637", "1869376637", "PrepareSpawnAndAction", "box_Ordered_Output_75.Out", "box_MultipleOR_72.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_75_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1326534667", "1326534667", "PrepareSpawnAndAction", "box_Ordered_Output_75.Out", "ConvoyAggro", clone, self)
  self:ConvoyAggro()
end
function export:f_box_Ordered_Output_70_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|673905600", "673905600", "PrepareSpawnAndAction", "box_Ordered_Output_70.Out", "VIPDied", clone, self)
  self:VIPDied()
end
function export:f_box_Ordered_Output_70_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_69()
  l0 = self.box_MultipleOR_69
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|2135875378", "2135875378", "PrepareSpawnAndAction", "box_Ordered_Output_70.Out", "box_MultipleOR_69.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Get_Player_ID_77_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.Player = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareEntity_v2.lua")]
  l0.Entity1 = self.Instigator
  l0.Entity2 = self.Player
  l0._graph = self
  l0._name = "box_Compare_Entity_v2_76"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|479227351"
  l0.Out = DummyFunction
  l0.Equal = self.f_box_Compare_Entity_v2_76_Equal
  l0.NotEqual = self.f_box_Compare_Entity_v2_76_NotEqual
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1444592118", "1444592118", "PrepareSpawnAndAction", "box_Get_Player_ID_77.Out", "box_Compare_Entity_v2_76.In", clone, l0)
  l0:In()
end
function export:f_box_Timer_v2_45_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.VipVehicleCLO
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_27"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|487043938"
  l0.Is_nil = self.f_box_Test_if_Nil_27_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_27_Is_not_nil
  l0 = self.box_Timer_v2_45
  l1 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|2065939750", "2065939750", "PrepareSpawnAndAction", "box_Timer_v2_45.TimeElapsed", "box_Test_if_Nil_27.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_41_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_41
  self.ConvoyIsStuck = l0.Target
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1922625624", "1922625624", "PrepareSpawnAndAction", "box_SetBoolean_v2_41.Out", "DestinationReached", l0, self)
  self:DestinationReached()
end
function export:f_box_SetBoolean_v2_41_SetFalse()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_41
  self.ConvoyIsStuck = l0.Target
  l0 = Boxes[PathID("Domino/System/Lists/SetList.lua")]
  l0.List = self.DestinationPatrolsList
  l0._graph = self
  l0._name = "box_Set_List_1"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1232203617"
  l0.Out = self.f_box_Set_List_1_Out
  l0 = self.box_SetBoolean_v2_41
  l1 = Boxes[PathID("Domino/System/Lists/SetList.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|714794044", "714794044", "PrepareSpawnAndAction", "box_SetBoolean_v2_41.SetFalse", "box_Set_List_1.FromList", l0, l1)
  l1:FromList()
end
function export:f_box_SetBoolean_v2_41_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_41
  self.ConvoyIsStuck = l0.Target
end
function export:f_box_SetBoolean_v2_41_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_41
  self.ConvoyIsStuck = l0.Target
end
function export:f_box_SetBoolean_v2_41_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_41
  self.ConvoyIsStuck = l0.Target
end
function export:f_box_Test_if_Nil_23_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/ConvoyController.lua")]
  l0.Destination = self.Destination
  l0.VIPCharacter = self.Vip
  l0.VIPVehicle = nil
  l0.EscortCharacters = nil
  l0.EscortVehicles = nil
  l0.ConvoyConfig = self.ConvoyConfig
  l0.ObjectiveText = self.ObjectiveText
  l0.InConvoyId = nil
  l0._graph = self
  l0._name = "box_ConvoyController_36"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1218549052"
  l0.Started = self.f_box_ConvoyController_36_Started
  l0.Updated = DummyFunction
  l0.Stopped = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1379174312", "1379174312", "PrepareSpawnAndAction", "box_Test_if_Nil_23.Is_nil", "box_ConvoyController_36.Start", clone, l0)
  l0:Start()
end
function export:f_box_Test_if_Nil_23_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/ConvoyController.lua")]
  l0.Destination = self.Destination
  l0.VIPCharacter = self.Vip
  l0.VIPVehicle = self.vipVehicle
  l0.EscortCharacters = nil
  l0.EscortVehicles = nil
  l0.ConvoyConfig = self.ConvoyConfig
  l0.ObjectiveText = self.ObjectiveText
  l0.InConvoyId = nil
  l0._graph = self
  l0._name = "box_ConvoyController_16"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|86607669"
  l0.Started = self.f_box_ConvoyController_16_Started
  l0.Updated = DummyFunction
  l0.Stopped = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|2107156642", "2107156642", "PrepareSpawnAndAction", "box_Test_if_Nil_23.Is_not_nil", "box_ConvoyController_16.Start", clone, l0)
  l0:Start()
end
function export:f_box_Test_if_Nil_17_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.VipVehicleCLO
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_23"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1489184326"
  l0.Is_nil = self.f_box_Test_if_Nil_23_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_23_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|170096776", "170096776", "PrepareSpawnAndAction", "box_Test_if_Nil_17.Is_nil", "box_Test_if_Nil_23.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_17_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = self.EscortVehiclesCLOs
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_54"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|100803305"
  l0.Is_nil = self.f_box_Test_if_Nil_54_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_54_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|2019837644", "2019837644", "PrepareSpawnAndAction", "box_Test_if_Nil_17.Is_not_nil", "box_Test_if_Nil_54.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_10_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_15
  l0.List = self.EscortNPCsCLOs
  l0 = self.box_MultipleOR_10
  l1 = self.box_ListForEach_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1966910992", "1966910992", "PrepareSpawnAndAction", "box_MultipleOR_10.Out", "box_ListForEach_15.GetNext", l0, l1)
  l1:GetNext()
end
function export:f_box_ConvoyController_5_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ConvoyController.lua")]
  self.convoyID = l0.OutConvoyId
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_43()
  l0 = self.box_MultipleOR_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|625164201", "625164201", "PrepareSpawnAndAction", "box_ConvoyController_5.Started", "box_MultipleOR_43.Input", clone, l0)
  l0:Input(3)
end
function export:f_box_Ordered_Output_151_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_47()
  l0 = self.box_OnceOnly_v3_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|835244642", "835244642", "PrepareSpawnAndAction", "box_Ordered_Output_151.Out", "box_OnceOnly_v3_47.In", clone, l0)
  l0:In(1)
end
function export:f_box_Ordered_Output_151_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1062154498", "1062154498", "PrepareSpawnAndAction", "box_Ordered_Output_151.Out", "ConvoyStopped", clone, self)
  self:ConvoyStopped()
end
function export:f_box_Multiple_AND_32_Out()
  local l0
  self = self._graph
  l0 = self.box_Multiple_AND_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|310809053", "310809053", "PrepareSpawnAndAction", "box_Multiple_AND_32.Out", "Prepped", l0, self)
  self:Prepped()
end
function export:f_box_Set_List_8_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/SetList.lua")]
  self.EscortNPCs = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_13()
  l0 = self.box_MultipleOR_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|341254216", "341254216", "PrepareSpawnAndAction", "box_Set_List_8.Out", "box_MultipleOR_13.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_ListForEach_90_EndOfList()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_90
  self.tempNPC = l0.Data
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.ConvoyIsStuck
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_49"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1796498395"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_49_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_49_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_ListForEach_90
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1529610041", "1529610041", "PrepareSpawnAndAction", "box_ListForEach_90.EndOfList", "box_Compare_Boolean_v2_49.In", l0, l1)
  l1:In()
end
function export:f_box_ListForEach_90_ForEach()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_90
  self.tempNPC = l0.Data
end
function export:f_box_ListForEach_90_GotNext()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_90
  self.tempNPC = l0.Data
  l0 = self.box_ListForEach_35
  l0.List = self.tmpPatrols
  l0 = self.box_ListForEach_90
  l1 = self.box_ListForEach_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|285892540", "285892540", "PrepareSpawnAndAction", "box_ListForEach_90.GotNext", "box_ListForEach_35.GetNext", l0, l1)
  l1:GetNext()
end
function export:f_box_ListForEach_90_Started()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_90
  self.tempNPC = l0.Data
end
function export:f_box_ListForEach_90_Stopped()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_90
  self.tempNPC = l0.Data
end
function export:f_box_ListForEach_40_EndOfList()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_40
  self.tempCLO = l0.Data
  l0 = Boxes[PathID("Domino/System/Lists/SetList.lua")]
  l0.List = self.tempListVehicles
  l0._graph = self
  l0._name = "box_Set_List_31"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|606259078"
  l0.Out = self.f_box_Set_List_31_Out
  l0 = self.box_ListForEach_40
  l1 = Boxes[PathID("Domino/System/Lists/SetList.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1278247411", "1278247411", "PrepareSpawnAndAction", "box_ListForEach_40.EndOfList", "box_Set_List_31.FromList", l0, l1)
  l1:FromList()
end
function export:f_box_ListForEach_40_ForEach()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_40
  self.tempCLO = l0.Data
end
function export:f_box_ListForEach_40_GotNext()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_40
  self.tempCLO = l0.Data
  l0 = self.box_CLOController_7
  l0.CLO = self.tempCLO
  l0.SpawnOutsideLoadingRing = 1
  l0 = self.box_ListForEach_40
  l1 = self.box_CLOController_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|999557046", "999557046", "PrepareSpawnAndAction", "box_ListForEach_40.GotNext", "box_CLOController_7.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_ListForEach_40_Started()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_40
  self.tempCLO = l0.Data
end
function export:f_box_ListForEach_40_Stopped()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_40
  self.tempCLO = l0.Data
end
function export:f_box_AISquadRelationshipController_67_RelationshipSet()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_75"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1279014642"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_75_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_75_Out_1
  l0 = self.box_AISquadRelationshipController_67
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1522476873", "1522476873", "PrepareSpawnAndAction", "box_AISquadRelationshipController_67.RelationshipSet", "box_Ordered_Output_75.In", l0, l1)
  l1:In()
end
function export:f_box_Test_if_Nil_66_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_63()
  l0 = self.box_MultipleOR_63
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|968894432", "968894432", "PrepareSpawnAndAction", "box_Test_if_Nil_66.Is_nil", "box_MultipleOR_63.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Test_if_Nil_66_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_61
  l0.Input = self.All_NPCs
  l0.Data[0] = self.Vip
  l0.Index = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|822101345", "822101345", "PrepareSpawnAndAction", "box_Test_if_Nil_66.Is_not_nil", "box_ListWriter_61.Add", clone, l0)
  l0:Add()
end
function export:f_box_Test_if_Nil_33_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_30()
  l0 = self.box_MultipleOR_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|664732563", "664732563", "PrepareSpawnAndAction", "box_Test_if_Nil_33.Is_nil", "box_MultipleOR_30.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Test_if_Nil_33_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_29
  l0.CLO = self.VipVehicleCLO
  l0.SpawnOutsideLoadingRing = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|879577059", "879577059", "PrepareSpawnAndAction", "box_Test_if_Nil_33.Is_not_nil", "box_CLOController_29.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Set_Entity_21_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.VipVehicle = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_30()
  l0 = self.box_MultipleOR_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1260103672", "1260103672", "PrepareSpawnAndAction", "box_Set_Entity_21.Out", "box_MultipleOR_30.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Compare_Boolean_v2_49_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|572868612", "572868612", "PrepareSpawnAndAction", "box_Compare_Boolean_v2_49.A_is_False", "NPCsStartedMoving", clone, self)
  self:NPCsStartedMoving()
end
function export:f_box_Compare_Boolean_v2_49_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|314687528", "314687528", "PrepareSpawnAndAction", "box_Compare_Boolean_v2_49.A_is_True", "StuckNPCsStartedMoving", clone, self)
  self:StuckNPCsStartedMoving()
end
function export:f_box_ConvoyController_50_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ConvoyController.lua")]
  self.convoyID = l0.OutConvoyId
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_43()
  l0 = self.box_MultipleOR_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|344701640", "344701640", "PrepareSpawnAndAction", "box_ConvoyController_50.Started", "box_MultipleOR_43.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_Set_List_52_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/SetList.lua")]
  self.AllNPCs = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_65"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|906472724"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_65_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_65_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1570625858", "1570625858", "PrepareSpawnAndAction", "box_Set_List_52.Out", "box_Ordered_Output_65.In", clone, l0)
  l0:In()
end
function export:f_box_SetInteger_v2_58_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetInteger_v2.lua")]
  self.ConvoyID = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1742161831", "1742161831", "PrepareSpawnAndAction", "box_SetInteger_v2_58.Out", "ConvoyStarted", clone, self)
  self:ConvoyStarted()
end
function export:f_box_PawnHealthMonitor_v3_56_DeadChecked()
  local l0, l1
  self = self._graph
  self:OnEnter_box_LogicGate_v2_57()
  l0 = self.box_PawnHealthMonitor_v3_56
  l1 = self.box_LogicGate_v2_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1742052623", "1742052623", "PrepareSpawnAndAction", "box_PawnHealthMonitor_v3_56.DeadChecked", "box_LogicGate_v2_57.In", l0, l1)
  l1:In()
end
function export:f_box_PawnHealthMonitor_v3_56_Killed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_LogicGate_v2_57()
  l0 = self.box_PawnHealthMonitor_v3_56
  l1 = self.box_LogicGate_v2_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|583639886", "583639886", "PrepareSpawnAndAction", "box_PawnHealthMonitor_v3_56.Killed", "box_LogicGate_v2_57.Close", l0, l1)
  l1:Close()
end
function export:f_box_SwitchOutput_v3_73_Output_0()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_81()
  l0 = self.box_SwitchOutput_v3_73
  l1 = self.box_OnceOnly_v3_81
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1310272610", "1310272610", "PrepareSpawnAndAction", "box_SwitchOutput_v3_73.Output", "box_OnceOnly_v3_81.In", l0, l1)
  l1:In(1)
end
function export:f_box_SwitchOutput_v3_73_Output_1()
  local l0, l1
  self = self._graph
  l0 = self.box_SwitchOutput_v3_73
  l1 = self.box_SetBoolean_v2_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|175466866", "175466866", "PrepareSpawnAndAction", "box_SwitchOutput_v3_73.Output", "box_SetBoolean_v2_39.True", l0, l1)
  l1:True()
end
function export:f_box_MultipleOR_4_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_64()
  l0 = self.box_MultipleOR_4
  l1 = self.box_Multiple_AND_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|728272693", "728272693", "PrepareSpawnAndAction", "box_MultipleOR_4.Out", "box_Multiple_AND_64.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_MultipleOR_43_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_ConvoyMonitor_62()
  l0 = self.box_MultipleOR_43
  l1 = self.box_ConvoyMonitor_62
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|45323137", "45323137", "PrepareSpawnAndAction", "box_MultipleOR_43.Out", "box_ConvoyMonitor_62.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Ordered_Output_98_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_81()
  l0 = self.box_OnceOnly_v3_81
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|605718998", "605718998", "PrepareSpawnAndAction", "box_Ordered_Output_98.Out", "box_OnceOnly_v3_81.In", clone, l0)
  l0:In(0)
end
function export:f_box_Ordered_Output_98_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1233013379", "1233013379", "PrepareSpawnAndAction", "box_Ordered_Output_98.Out", "ConvoyAggroNotPlayer", clone, self)
  self:ConvoyAggroNotPlayer()
end
function export:f_box_ListForEach_15_EndOfList()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_15
  self.tempCLO = l0.Data
  l0 = Boxes[PathID("Domino/System/Lists/SetList.lua")]
  l0.List = self.tempListNPCs
  l0._graph = self
  l0._name = "box_Set_List_8"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1652837512"
  l0.Out = self.f_box_Set_List_8_Out
  l0 = self.box_ListForEach_15
  l1 = Boxes[PathID("Domino/System/Lists/SetList.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|940040677", "940040677", "PrepareSpawnAndAction", "box_ListForEach_15.EndOfList", "box_Set_List_8.FromList", l0, l1)
  l1:FromList()
end
function export:f_box_ListForEach_15_ForEach()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_15
  self.tempCLO = l0.Data
end
function export:f_box_ListForEach_15_GotNext()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_15
  self.tempCLO = l0.Data
  l0 = self.box_CLOController_26
  l0.CLO = self.tempCLO
  l0.SpawnOutsideLoadingRing = 1
  l0 = self.box_ListForEach_15
  l1 = self.box_CLOController_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1778031744", "1778031744", "PrepareSpawnAndAction", "box_ListForEach_15.GotNext", "box_CLOController_26.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_ListForEach_15_Started()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_15
  self.tempCLO = l0.Data
end
function export:f_box_ListForEach_15_Stopped()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_15
  self.tempCLO = l0.Data
end
function export:f_box_Ordered_Output_71_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ConvoyMonitor_62()
  l0 = self.box_ConvoyMonitor_62
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|1518564868", "1518564868", "PrepareSpawnAndAction", "box_Ordered_Output_71.Out", "box_ConvoyMonitor_62.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_71_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.AutoUnassign
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_97"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|235772931"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_97_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|287629378", "287629378", "PrepareSpawnAndAction", "box_Ordered_Output_71.Out", "box_Compare_Boolean_v2_97.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_72_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ConvoyController.lua")]
  l0.Destination = nil
  l0.VIPCharacter = nil
  l0.VIPVehicle = nil
  l0.EscortCharacters = nil
  l0.EscortVehicles = nil
  l0.ConvoyConfig = nil
  l0.ObjectiveText = nil
  l0.InConvoyId = self.convoyID
  l0._graph = self
  l0._name = "box_ConvoyController_152"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|84170959"
  l0.Started = DummyFunction
  l0.Updated = DummyFunction
  l0.Stopped = self.f_box_ConvoyController_152_Stopped
  l0 = self.box_MultipleOR_72
  l1 = Boxes[PathID("Domino/System/ConvoyController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@PrepareSpawnAndAction|77095716", "77095716", "PrepareSpawnAndAction", "box_MultipleOR_72.Out", "box_ConvoyController_152.Stop", l0, l1)
  l1:Stop()
end
function export:OnEnter_box_MultipleOR_13()
end
function export:OnEnter_box_OnceOnly_v3_47()
end
function export:OnEnter_box_MultipleOR_30()
end
function export:OnEnter_box_OnceOnly_v3_81()
end
function export:OnEnter_box_MultipleOR_93()
end
function export:OnEnter_box_MultipleOR_63()
end
function export:OnEnter_box_MultipleOR_19()
end
function export:OnEnter_box_Multiple_AND_64()
end
function export:OnEnter_box_ConvoyMonitor_62()
  local l0
  l0 = self.box_ConvoyMonitor_62
  l0.ConvoyId = self.convoyID
end
function export:OnEnter_box_MultipleOR_95()
end
function export:OnEnter_box_MultipleOR_53()
end
function export:OnEnter_box_LogicGate_v2_57()
end
function export:OnEnter_box_MultipleOR_25()
end
function export:OnEnter_box_MultipleOR_9()
end
function export:OnEnter_box_Multiple_AND_34()
end
function export:OnEnter_box_MultipleOR_69()
end
function export:OnEnter_box_MultipleOR_10()
end
function export:OnEnter_box_Multiple_AND_32()
end
function export:OnEnter_box_MultipleOR_4()
end
function export:OnEnter_box_MultipleOR_43()
end
function export:OnEnter_box_MultipleOR_72()
end
function export:Out()
end
function export:Prepped()
end
function export:NPCsSpawned()
end
function export:DestinationReached()
end
function export:NPCsStartedMoving()
end
function export:Started()
end
function export:NPCsUnassigned()
end
function export:ConvoyStarted()
end
function export:VIPDied()
end
function export:VipVehicleDestroyed()
end
function export:ConvoyStuck()
end
function export:VehiclesSpawned()
end
function export:StuckNPCsUnassigned()
end
function export:StuckNPCsStartedMoving()
end
function export:ConvoyAggro()
end
function export:ConvoyStopped()
end
function export:ConvoyAggroNotPlayer()
end
_compilerVersion = 4
