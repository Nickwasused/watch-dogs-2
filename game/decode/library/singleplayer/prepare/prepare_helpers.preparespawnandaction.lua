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
  self[13] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[13]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_13_Out
  self[47] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua")
  l0 = self[47]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_47_Out
  l0.ResetOut = DummyFunction
  self[30] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[30]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_30_Out
  self[81] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua")
  l0 = self[81]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_81_Out
  l0.ResetOut = DummyFunction
  self[93] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[93]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_93_Out
  self[63] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[63]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_63_Out
  self[7] = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self[7]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_7_OnUserInPlace
  self[18] = cbox:CreateBox("Domino/System/VehicleSeatingController.lua")
  l0 = self[18]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = DummyFunction
  l0.UnassignCompleted = self.f_18_UnassignCompleted
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self[19] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[19]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_19_Out
  self[64] = cbox:CreateBox("Domino/System/MultipleAND.lua")
  l0 = self[64]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_64_Out
  self[55] = cbox:CreateBox("Domino/System/Lists/ListWriter.lua")
  l0 = self[55]
  l0._graph = self
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_55_Added
  l0.Removed = self.f_55_Removed
  l0.Out = self.f_55_Out
  self[62] = cbox:CreateBox("Domino/System/ConvoyMonitor.lua")
  l0 = self[62]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.StartMoving = self.f_62_StartMoving
  l0.DestinationReached = self.f_62_DestinationReached
  l0.VIPDied = self.f_62_VIPDied
  l0.VIPVehicleDestroyed = self.f_62_VIPVehicleDestroyed
  l0.VIPHijacked = self.f_62_VIPHijacked
  l0.EscortDied = self.f_62_EscortDied
  l0.EscortVehicleDestroyed = self.f_62_EscortVehicleDestroyed
  l0.EscortHijacked = self.f_62_EscortHijacked
  l0.ConvoyStuck = self.f_62_ConvoyStuck
  l0.ConvoyStopped = self.f_62_ConvoyStopped
  l0.HardDisturbance = self.f_62_HardDisturbance
  l0.SoftDisturbance = self.f_62_SoftDisturbance
  self[28] = cbox:CreateBox("Domino/System/Lists/ListWriter.lua")
  l0 = self[28]
  l0._graph = self
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_28_Added
  l0.Removed = self.f_28_Removed
  l0.Out = self.f_28_Out
  self[14] = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self[14]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_14_OnUserInPlace
  self[95] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[95]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_95_Out
  self[53] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[53]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_53_Out
  self[92] = cbox:CreateBox("Domino/System/VehicleSeatingController.lua")
  l0 = self[92]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = DummyFunction
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = self.f_92_Out
  self[57] = cbox:CreateBox("Domino/System/LogicGate_v2.lua")
  l0 = self[57]
  l0._graph = self
  l0.Out = self.f_57_Out
  l0.Opened = self.f_57_Opened
  l0.Closed = self.f_57_Closed
  self[89] = cbox:CreateBox("Domino/System/AssignPatrol_v2.lua")
  l0 = self[89]
  l0._graph = self
  l0.Out = self.f_89_Out
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.SpeedSet = DummyFunction
  l0.Aborted = DummyFunction
  l0.Failed = DummyFunction
  self[25] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[25]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_25_Out
  self[29] = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self[29]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_29_OnUserInPlace
  self[9] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[9]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_9_Out
  self[26] = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self[26]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_26_OnUserInPlace
  self[39] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[39]
  l0._graph = self
  l0.Out = self.f_39_Out
  l0.SetTrue = self.f_39_SetTrue
  l0.SetFalse = self.f_39_SetFalse
  l0.Toggled = self.f_39_Toggled
  l0.SetFromBool = self.f_39_SetFromBool
  self[61] = cbox:CreateBox("Domino/System/Lists/ListWriter.lua")
  l0 = self[61]
  l0._graph = self
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_61_Added
  l0.Removed = self.f_61_Removed
  l0.Out = self.f_61_Out
  self[91] = cbox:CreateBox("Domino/System/Lists/ListForEach.lua")
  l0 = self[91]
  l0._graph = self
  l0.Started = self.f_91_Started
  l0.Stopped = self.f_91_Stopped
  l0.ForEach = self.f_91_ForEach
  l0.GotNext = self.f_91_GotNext
  l0.EndOfList = self.f_91_EndOfList
  self[34] = cbox:CreateBox("Domino/System/MultipleAND.lua")
  l0 = self[34]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_34_Out
  self[35] = cbox:CreateBox("Domino/System/Lists/ListForEach.lua")
  l0 = self[35]
  l0._graph = self
  l0.Started = self.f_35_Started
  l0.Stopped = self.f_35_Stopped
  l0.ForEach = self.f_35_ForEach
  l0.GotNext = self.f_35_GotNext
  l0.EndOfList = self.f_35_EndOfList
  self[69] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[69]
  l0._graph = self
  l0._DynamicAnchors = {Input = 8}
  l0.Out = self.f_69_Out
  self[51] = cbox:CreateBox("Domino/System/Lists/ListWriter.lua")
  l0 = self[51]
  l0._graph = self
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_51_Added
  l0.Removed = self.f_51_Removed
  l0.Out = self.f_51_Out
  self[45] = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self[45]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_45_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[41] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[41]
  l0._graph = self
  l0.Out = self.f_41_Out
  l0.SetTrue = self.f_41_SetTrue
  l0.SetFalse = self.f_41_SetFalse
  l0.Toggled = self.f_41_Toggled
  l0.SetFromBool = self.f_41_SetFromBool
  self[10] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[10]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_10_Out
  self[32] = cbox:CreateBox("Domino/System/MultipleAND.lua")
  l0 = self[32]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_32_Out
  self[90] = cbox:CreateBox("Domino/System/Lists/ListForEach.lua")
  l0 = self[90]
  l0._graph = self
  l0.Started = self.f_90_Started
  l0.Stopped = self.f_90_Stopped
  l0.ForEach = self.f_90_ForEach
  l0.GotNext = self.f_90_GotNext
  l0.EndOfList = self.f_90_EndOfList
  self[40] = cbox:CreateBox("Domino/System/Lists/ListForEach.lua")
  l0 = self[40]
  l0._graph = self
  l0.Started = self.f_40_Started
  l0.Stopped = self.f_40_Stopped
  l0.ForEach = self.f_40_ForEach
  l0.GotNext = self.f_40_GotNext
  l0.EndOfList = self.f_40_EndOfList
  self[67] = cbox:CreateBox("Domino/System/AISquadRelationshipController.lua")
  l0 = self[67]
  l0._graph = self
  l0.RelationshipSet = self.f_67_RelationshipSet
  l0.RelationshipReset = DummyFunction
  self[56] = cbox:CreateBox("Domino/System/PawnHealthMonitor_v3.lua")
  l0 = self[56]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Damaged = DummyFunction
  l0.Killed = self.f_56_Killed
  l0.DBNO = DummyFunction
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = self.f_56_DeadChecked
  l0.HealthChecked = DummyFunction
  self[73] = cbox:CreateBox("Domino/System/SwitchOutput_v3.lua")
  l0 = self[73]
  l0._graph = self
  l0._DynamicAnchors = {Output = 2}
  l0.Out = DummyFunction
  l0.Output[0] = self.f_73_Output_0
  l0.Output[1] = self.f_73_Output_1
  l0.None = DummyFunction
  l0.WasReset = DummyFunction
  self[4] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[4]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_4_Out
  self[43] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[43]
  l0._graph = self
  l0._DynamicAnchors = {Input = 6}
  l0.Out = self.f_43_Out
  self[15] = cbox:CreateBox("Domino/System/Lists/ListForEach.lua")
  l0 = self[15]
  l0._graph = self
  l0.Started = self.f_15_Started
  l0.Stopped = self.f_15_Stopped
  l0.ForEach = self.f_15_ForEach
  l0.GotNext = self.f_15_GotNext
  l0.EndOfList = self.f_15_EndOfList
  self[72] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[72]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_72_Out
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
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_37_Out_0
  l0.Out[1] = self.f_37_Out_1
  l0.Out[2] = self.f_37_Out_2
  l0.Out[3] = self.f_37_Out_3
  l0.Out[4] = self.f_37_Out_4
  l0:In()
end
function export:Start()
  local l0
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_3_Out_0
  l0.Out[1] = self.f_3_Out_1
  l0:In()
end
function export:Stop()
  local l0
  l0 = self[72]
  l0:Input(0)
end
function export:f_68_Out_0()
  self = self._graph
  self:VipVehicleDestroyed()
end
function export:f_68_Out_1()
  local l0
  self = self._graph
  l0 = self[69]
  l0:Input(1)
end
function export:f_13_Out()
  local l0
  self = self._graph
  l0 = self[34]
  l0:Condition(1)
end
function export:f_47_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_71_Out_0
  l0.Out[1] = self.f_71_Out_1
  l0:In()
end
function export:f_30_Out()
  local l0
  self = self._graph
  l0 = self[64]
  l0:Condition(0)
end
function export:f_152_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_151_Out_0
  l0.Out[1] = self.f_151_Out_1
  l0:In()
end
function export:f_16_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ConvoyController.lua")]
  self.convoyID = l0.OutConvoyId
  l0 = self[43]
  l0:Input(1)
end
function export:f_6_Out_0()
  self = self._graph
  self:VehiclesSpawned()
end
function export:f_6_Out_1()
  local l0
  self = self._graph
  l0 = self[32]
  l0:Condition(0)
end
function export:f_54_Is_nil()
  local l0
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
  l0.Is_nil = self.f_42_Is_nil
  l0.Is_not_nil = self.f_42_Is_not_nil
  l0:In()
end
function export:f_54_Is_not_nil()
  local l0
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
  l0.Is_nil = self.f_59_Is_nil
  l0.Is_not_nil = self.f_59_Is_not_nil
  l0:In()
end
function export:f_81_Out()
  local l0
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
  l0.Is_nil = self.f_87_Is_nil
  l0.Is_not_nil = self.f_87_Is_not_nil
  l0:In()
end
function export:f_22_Is_not_nil()
  local l0
  self = self._graph
  l0 = self[93]
  l0:Input(2)
end
function export:f_93_Out()
  local l0
  self = self._graph
  l0 = self[90]
  l0.List = self.All_NPCs
  l0:GetNext()
end
function export:f_63_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/SetList.lua")]
  l0.List = self.All_NPCs
  l0._graph = self
  l0.Out = self.f_52_Out
  l0:FromList()
end
function export:f_7_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[7]
  self.tempNPC = l0.UserID
  l0 = self[28]
  l0.Input = self.tempListVehicles
  l0.Data[0] = self.tempNPC
  l0:Add()
end
function export:f_18_UnassignCompleted()
  local l0
  self = self._graph
  l0 = self[25]
  l0:Input(1)
end
function export:f_97_A_is_True()
  local l0
  self = self._graph
  l0 = self[45]
  l0.Seconds = 3
  l0:Start()
end
function export:f_19_Out()
  local l0
  self = self._graph
  l0 = self[40]
  l0.List = self.EscortVehiclesCLOs
  l0:GetNext()
end
function export:f_60_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ConvoyController.lua")]
  self.convoyID = l0.OutConvoyId
  l0 = self[43]
  l0:Input(4)
end
function export:f_64_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_6_Out_0
  l0.Out[1] = self.f_6_Out_1
  l0:In()
end
function export:f_48_A_is_False()
  self = self._graph
  self:NPCsUnassigned()
end
function export:f_48_A_is_True()
  self = self._graph
  self:StuckNPCsUnassigned()
end
function export:f_48_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.AutoAssignPatrol
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_12_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_3_Out_0()
  self = self._graph
  self:Started()
end
function export:f_3_Out_1()
  local l0
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
  l0.Is_nil = self.f_17_Is_nil
  l0.Is_not_nil = self.f_17_Is_not_nil
  l0:In()
end
function export:f_55_Added()
  local l0
  self = self._graph
  l0 = self[55]
  self.tempListNPCs = l0.Target
  l0 = self[10]
  l0:Input(0)
end
function export:f_55_Out()
  local l0
  self = self._graph
  l0 = self[55]
  self.tempListNPCs = l0.Target
end
function export:f_55_Removed()
  local l0
  self = self._graph
  l0 = self[55]
  self.tempListNPCs = l0.Target
end
function export:f_62_ConvoyStopped()
  local l0
  self = self._graph
  l0 = self[62]
  self.Instigator = l0.Instigator
end
function export:f_62_ConvoyStuck()
  local l0
  self = self._graph
  l0 = self[73]
  l0:In()
end
function export:f_62_DestinationReached()
  local l0
  self = self._graph
  l0 = self[41]
  l0:False()
end
function export:f_62_EscortDied()
  local l0
  self = self._graph
  l0 = self[62]
  self.Instigator = l0.Instigator
  l0 = self[69]
  l0:Input(3)
end
function export:f_62_EscortHijacked()
  local l0
  self = self._graph
  l0 = self[62]
  self.Instigator = l0.Instigator
  l0 = self[69]
  l0:Input(5)
end
function export:f_62_EscortVehicleDestroyed()
  local l0
  self = self._graph
  l0 = self[62]
  self.Instigator = l0.Instigator
  l0 = self[69]
  l0:Input(4)
end
function export:f_62_HardDisturbance()
  local l0
  self = self._graph
  l0 = self[62]
  self.Instigator = l0.Instigator
  l0 = self[69]
  l0:Input(6)
end
function export:f_62_SoftDisturbance()
  local l0
  self = self._graph
  l0 = self[62]
  self.Instigator = l0.Instigator
  l0 = self[69]
  l0:Input(7)
end
function export:f_62_StartMoving()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetInteger_v2.lua")]
  l0.Integer = self.convoyID
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0.Out = self.f_58_Out
  l0:FromInteger()
end
function export:f_62_VIPDied()
  local l0
  self = self._graph
  l0 = self[62]
  self.Instigator = l0.Instigator
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_70_Out_0
  l0.Out[1] = self.f_70_Out_1
  l0:In()
end
function export:f_62_VIPHijacked()
  local l0
  self = self._graph
  l0 = self[62]
  self.Instigator = l0.Instigator
  l0 = self[69]
  l0:Input(2)
end
function export:f_62_VIPVehicleDestroyed()
  local l0
  self = self._graph
  l0 = self[62]
  self.Instigator = l0.Instigator
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_68_Out_0
  l0.Out[1] = self.f_68_Out_1
  l0:In()
end
function export:f_28_Added()
  local l0
  self = self._graph
  l0 = self[28]
  self.tempListVehicles = l0.Target
  l0 = self[19]
  l0:Input(0)
end
function export:f_28_Out()
  local l0
  self = self._graph
  l0 = self[28]
  self.tempListVehicles = l0.Target
end
function export:f_28_Removed()
  local l0
  self = self._graph
  l0 = self[28]
  self.tempListVehicles = l0.Target
end
function export:f_44_Is_nil()
  local l0
  self = self._graph
  l0 = self[53]
  l0:Input(0)
end
function export:f_44_Is_not_nil()
  local l0
  self = self._graph
  l0 = self[14]
  l0.CLO = self.VipCLO
  l0.SpawnOutsideLoadingRing = 1
  l0:Activate()
end
function export:f_76_Equal()
  local l0
  self = self._graph
  l0 = self[67]
  l0.Affiliation = self.Affiliation
  l0.Relationship = "Threat"
  l0:SetRelationship()
end
function export:f_76_NotEqual()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_98_Out_0
  l0.Out[1] = self.f_98_Out_1
  l0:In()
end
function export:f_27_Is_nil()
  local l0
  self = self._graph
  l0 = self[25]
  l0:Input(0)
end
function export:f_27_Is_not_nil()
  local l0
  self = self._graph
  l0 = self[18]
  l0.Vehicle = self.vipVehicle
  l0.UseAnimation = 1
  l0.WalkType = "Walk"
  l0:Unassign()
end
function export:f_14_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[14]
  self.Vip = l0.UserID
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = self.Vip
  l0._graph = self
  l0.Out = self.f_2_Out
  l0:FromEntity()
end
function export:f_24_Is_nil()
  local l0
  self = self._graph
  l0 = self[9]
  l0:Input(1)
end
function export:f_24_Is_not_nil()
  local l0
  self = self._graph
  l0 = self[95]
  l0:Input(1)
end
function export:f_96_Is_nil()
  local l0
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
  l0.Is_nil = self.f_85_Is_nil
  l0.Is_not_nil = self.f_85_Is_not_nil
  l0:In()
end
function export:f_96_Is_not_nil()
  local l0
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
  l0.Is_nil = self.f_83_Is_nil
  l0.Is_not_nil = self.f_83_Is_not_nil
  l0:In()
end
function export:f_31_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/SetList.lua")]
  self.EscortCars = l0.Target
  l0 = self[4]
  l0:Input(0)
end
function export:f_95_Out()
  local l0
  self = self._graph
  l0 = self[91]
  l0.List = self.tempListVehicles
  l0:GetNext()
end
function export:f_53_Out()
  local l0
  self = self._graph
  l0 = self[34]
  l0:Condition(0)
end
function export:f_74_Out_0()
  local l0
  self = self._graph
  l0 = self[72]
  l0:Input(2)
end
function export:f_74_Out_1()
  self = self._graph
  self:ConvoyStuck()
end
function export:f_85_Is_nil()
  local l0
  self = self._graph
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
  l0.Started = DummyFunction
  l0.Updated = DummyFunction
  l0.Stopped = DummyFunction
  l0:Update()
end
function export:f_85_Is_not_nil()
  local l0
  self = self._graph
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
  l0.Started = DummyFunction
  l0.Updated = DummyFunction
  l0.Stopped = DummyFunction
  l0:Update()
end
function export:f_92_Out()
  local l0
  self = self._graph
  l0 = self[95]
  l0:Input(0)
end
function export:f_57_Closed()
  local l0
  self = self._graph
  l0 = self[93]
  l0:Input(1)
end
function export:f_57_Opened()
  local l0
  self = self._graph
  l0 = self[56]
  l0.Pawn = self.tempNPC
  l0.CheckNow = 1
  l0:CheckIfDead()
end
function export:f_57_Out()
  local l0
  self = self._graph
  l0 = self[89]
  l0.NPC = self.tempNPC
  l0.Patrol = self.tempPath
  l0:Assign()
end
function export:f_89_Out()
  local l0
  self = self._graph
  l0 = self[93]
  l0:Input(0)
end
function export:f_25_Out()
  local l0
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
  l0.Is_nil = self.f_24_Is_nil
  l0.Is_not_nil = self.f_24_Is_not_nil
  l0:In()
end
function export:f_29_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[29]
  self.vipVehicle = l0.UserID
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = self.vipVehicle
  l0._graph = self
  l0.Out = self.f_21_Out
  l0:FromEntity()
end
function export:f_38_Is_nil()
  local l0
  self = self._graph
  l0 = self[4]
  l0:Input(1)
end
function export:f_38_Is_not_nil()
  local l0
  self = self._graph
  l0 = self[19]
  l0:Input(1)
end
function export:f_82_Is_nil()
  local l0
  self = self._graph
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
  l0.Started = DummyFunction
  l0.Updated = DummyFunction
  l0.Stopped = DummyFunction
  l0:Update()
end
function export:f_82_Is_not_nil()
  local l0
  self = self._graph
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
  l0.Started = DummyFunction
  l0.Updated = DummyFunction
  l0.Stopped = DummyFunction
  l0:Update()
end
function export:f_12_A_is_True()
  local l0
  self = self._graph
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
  l0.Is_nil = DummyFunction
  l0.Is_not_nil = self.f_22_Is_not_nil
  l0:In()
end
function export:f_9_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.ConvoyIsStuck
  l0.B = nil
  l0._graph = self
  l0.Out = self.f_48_Out
  l0.A_is_True = self.f_48_A_is_True
  l0.A_is_False = self.f_48_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_65_Out_0()
  local l0
  self = self._graph
  l0 = self[32]
  l0:Condition(1)
end
function export:f_65_Out_1()
  self = self._graph
  self:NPCsSpawned()
end
function export:f_26_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[26]
  self.tempNPC = l0.UserID
  l0 = self[51]
  l0.Input = self.All_NPCs
  l0.Data[0] = self.tempNPC
  l0:Add()
end
function export:f_39_Out()
  local l0
  self = self._graph
  l0 = self[39]
  self.ConvoyIsStuck = l0.Target
end
function export:f_39_SetFalse()
  local l0
  self = self._graph
  l0 = self[39]
  self.ConvoyIsStuck = l0.Target
end
function export:f_39_SetFromBool()
  local l0
  self = self._graph
  l0 = self[39]
  self.ConvoyIsStuck = l0.Target
end
function export:f_39_SetTrue()
  local l0
  self = self._graph
  l0 = self[39]
  self.ConvoyIsStuck = l0.Target
  l0 = Boxes[PathID("Domino/System/Lists/SetList.lua")]
  l0.List = self.StuckPatrolsList
  l0._graph = self
  l0.Out = self.f_46_Out
  l0:FromList()
end
function export:f_39_Toggled()
  local l0
  self = self._graph
  l0 = self[39]
  self.ConvoyIsStuck = l0.Target
end
function export:f_11_Is_nil()
  local l0
  self = self._graph
  l0 = self[13]
  l0:Input(1)
end
function export:f_11_Is_not_nil()
  local l0
  self = self._graph
  l0 = self[10]
  l0:Input(1)
end
function export:f_61_Added()
  local l0
  self = self._graph
  l0 = self[61]
  self.All_NPCs = l0.Target
  l0 = self[63]
  l0:Input(1)
end
function export:f_61_Out()
  local l0
  self = self._graph
  l0 = self[61]
  self.All_NPCs = l0.Target
end
function export:f_61_Removed()
  local l0
  self = self._graph
  l0 = self[61]
  self.All_NPCs = l0.Target
end
function export:f_91_EndOfList()
  local l0
  self = self._graph
  l0 = self[91]
  self.tempVehicle = l0.Data
  l0 = self[9]
  l0:Input(0)
end
function export:f_91_ForEach()
  local l0
  self = self._graph
  l0 = self[91]
  self.tempVehicle = l0.Data
end
function export:f_91_GotNext()
  local l0
  self = self._graph
  l0 = self[91]
  self.tempVehicle = l0.Data
  l0 = self[92]
  l0.Vehicle = self.tempVehicle
  l0.UseAnimation = 1
  l0.WalkType = "Walk"
  l0:Unassign()
end
function export:f_91_Started()
  local l0
  self = self._graph
  l0 = self[91]
  self.tempVehicle = l0.Data
end
function export:f_91_Stopped()
  local l0
  self = self._graph
  l0 = self[91]
  self.tempVehicle = l0.Data
end
function export:f_87_Is_nil()
  local l0
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
  l0.Is_nil = self.f_82_Is_nil
  l0.Is_not_nil = self.f_82_Is_not_nil
  l0:In()
end
function export:f_87_Is_not_nil()
  local l0
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
  l0.Is_nil = self.f_96_Is_nil
  l0.Is_not_nil = self.f_96_Is_not_nil
  l0:In()
end
function export:f_83_Is_nil()
  local l0
  self = self._graph
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
  l0.Started = DummyFunction
  l0.Updated = DummyFunction
  l0.Stopped = DummyFunction
  l0:Update()
end
function export:f_83_Is_not_nil()
  local l0
  self = self._graph
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
  l0.Started = DummyFunction
  l0.Updated = DummyFunction
  l0.Stopped = DummyFunction
  l0:Update()
end
function export:f_34_Out()
  local l0
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
  l0.Is_nil = self.f_66_Is_nil
  l0.Is_not_nil = self.f_66_Is_not_nil
  l0:In()
end
function export:f_35_EndOfList()
  local l0
  self = self._graph
  l0 = self[35]
  self.tempPath = l0.Data
end
function export:f_35_ForEach()
  local l0
  self = self._graph
  l0 = self[35]
  self.tempPath = l0.Data
end
function export:f_35_GotNext()
  local l0
  self = self._graph
  l0 = self[35]
  self.tempPath = l0.Data
  l0 = self[57]
  l0:Open()
end
function export:f_35_Started()
  local l0
  self = self._graph
  l0 = self[35]
  self.tempPath = l0.Data
end
function export:f_35_Stopped()
  local l0
  self = self._graph
  l0 = self[35]
  self.tempPath = l0.Data
end
function export:f_69_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_77_Out
  l0:In()
end
function export:f_46_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/SetList.lua")]
  self.tmpPatrols = l0.Target
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_74_Out_0
  l0.Out[1] = self.f_74_Out_1
  l0:In()
end
function export:f_51_Added()
  local l0
  self = self._graph
  l0 = self[51]
  self.All_NPCs = l0.Target
  l0 = self[55]
  l0.Input = self.tempListNPCs
  l0.Data[0] = self.tempNPC
  l0:Add()
end
function export:f_51_Out()
  local l0
  self = self._graph
  l0 = self[51]
  self.All_NPCs = l0.Target
end
function export:f_51_Removed()
  local l0
  self = self._graph
  l0 = self[51]
  self.All_NPCs = l0.Target
end
function export:f_59_Is_nil()
  local l0
  self = self._graph
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
  l0.Started = self.f_60_Started
  l0.Updated = DummyFunction
  l0.Stopped = DummyFunction
  l0:Start()
end
function export:f_59_Is_not_nil()
  local l0
  self = self._graph
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
  l0.Started = self.f_20_Started
  l0.Updated = DummyFunction
  l0.Stopped = DummyFunction
  l0:Start()
end
function export:f_20_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ConvoyController.lua")]
  self.convoyID = l0.OutConvoyId
  l0 = self[43]
  l0:Input(5)
end
function export:f_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.VipNPC = l0.Target
  l0 = self[53]
  l0:Input(1)
end
function export:f_36_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ConvoyController.lua")]
  self.convoyID = l0.OutConvoyId
  l0 = self[43]
  l0:Input(0)
end
function export:f_42_Is_nil()
  local l0
  self = self._graph
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
  l0.Started = self.f_50_Started
  l0.Updated = DummyFunction
  l0.Stopped = DummyFunction
  l0:Start()
end
function export:f_42_Is_not_nil()
  local l0
  self = self._graph
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
  l0.Started = self.f_5_Started
  l0.Updated = DummyFunction
  l0.Stopped = DummyFunction
  l0:Start()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/SetList.lua")]
  self.tmpPatrols = l0.Target
  l0 = self[47]
  l0:In(0)
end
function export:f_37_Out_0()
  self = self._graph
  self:Out()
end
function export:f_37_Out_1()
  local l0
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
  l0.Is_nil = self.f_33_Is_nil
  l0.Is_not_nil = self.f_33_Is_not_nil
  l0:In()
end
function export:f_37_Out_2()
  local l0
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
  l0.Is_nil = self.f_38_Is_nil
  l0.Is_not_nil = self.f_38_Is_not_nil
  l0:In()
end
function export:f_37_Out_3()
  local l0
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
  l0.Is_nil = self.f_44_Is_nil
  l0.Is_not_nil = self.f_44_Is_not_nil
  l0:In()
end
function export:f_37_Out_4()
  local l0
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
  l0.Is_nil = self.f_11_Is_nil
  l0.Is_not_nil = self.f_11_Is_not_nil
  l0:In()
end
function export:f_75_Out_0()
  local l0
  self = self._graph
  l0 = self[72]
  l0:Input(1)
end
function export:f_75_Out_1()
  self = self._graph
  self:ConvoyAggro()
end
function export:f_70_Out_0()
  self = self._graph
  self:VIPDied()
end
function export:f_70_Out_1()
  local l0
  self = self._graph
  l0 = self[69]
  l0:Input(0)
end
function export:f_77_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.Player = l0.PlayerID
  l0 = Boxes[PathID("Domino/System/CompareEntity_v2.lua")]
  l0.Entity1 = self.Instigator
  l0.Entity2 = self.Player
  l0._graph = self
  l0.Out = DummyFunction
  l0.Equal = self.f_76_Equal
  l0.NotEqual = self.f_76_NotEqual
  l0:In()
end
function export:f_45_TimeElapsed()
  local l0
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
  l0.Is_nil = self.f_27_Is_nil
  l0.Is_not_nil = self.f_27_Is_not_nil
  l0:In()
end
function export:f_41_Out()
  local l0
  self = self._graph
  l0 = self[41]
  self.ConvoyIsStuck = l0.Target
  self:DestinationReached()
end
function export:f_41_SetFalse()
  local l0
  self = self._graph
  l0 = self[41]
  self.ConvoyIsStuck = l0.Target
  l0 = Boxes[PathID("Domino/System/Lists/SetList.lua")]
  l0.List = self.DestinationPatrolsList
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:FromList()
end
function export:f_41_SetFromBool()
  local l0
  self = self._graph
  l0 = self[41]
  self.ConvoyIsStuck = l0.Target
end
function export:f_41_SetTrue()
  local l0
  self = self._graph
  l0 = self[41]
  self.ConvoyIsStuck = l0.Target
end
function export:f_41_Toggled()
  local l0
  self = self._graph
  l0 = self[41]
  self.ConvoyIsStuck = l0.Target
end
function export:f_23_Is_nil()
  local l0
  self = self._graph
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
  l0.Started = self.f_36_Started
  l0.Updated = DummyFunction
  l0.Stopped = DummyFunction
  l0:Start()
end
function export:f_23_Is_not_nil()
  local l0
  self = self._graph
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
  l0.Started = self.f_16_Started
  l0.Updated = DummyFunction
  l0.Stopped = DummyFunction
  l0:Start()
end
function export:f_17_Is_nil()
  local l0
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
  l0.Is_nil = self.f_23_Is_nil
  l0.Is_not_nil = self.f_23_Is_not_nil
  l0:In()
end
function export:f_17_Is_not_nil()
  local l0
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
  l0.Is_nil = self.f_54_Is_nil
  l0.Is_not_nil = self.f_54_Is_not_nil
  l0:In()
end
function export:f_10_Out()
  local l0
  self = self._graph
  l0 = self[15]
  l0.List = self.EscortNPCsCLOs
  l0:GetNext()
end
function export:f_5_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ConvoyController.lua")]
  self.convoyID = l0.OutConvoyId
  l0 = self[43]
  l0:Input(3)
end
function export:f_151_Out_0()
  local l0
  self = self._graph
  l0 = self[47]
  l0:In(1)
end
function export:f_151_Out_1()
  self = self._graph
  self:ConvoyStopped()
end
function export:f_32_Out()
  self = self._graph
  self:Prepped()
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/SetList.lua")]
  self.EscortNPCs = l0.Target
  l0 = self[13]
  l0:Input(0)
end
function export:f_90_EndOfList()
  local l0
  self = self._graph
  l0 = self[90]
  self.tempNPC = l0.Data
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.ConvoyIsStuck
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_49_A_is_True
  l0.A_is_False = self.f_49_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_90_ForEach()
  local l0
  self = self._graph
  l0 = self[90]
  self.tempNPC = l0.Data
end
function export:f_90_GotNext()
  local l0
  self = self._graph
  l0 = self[90]
  self.tempNPC = l0.Data
  l0 = self[35]
  l0.List = self.tmpPatrols
  l0:GetNext()
end
function export:f_90_Started()
  local l0
  self = self._graph
  l0 = self[90]
  self.tempNPC = l0.Data
end
function export:f_90_Stopped()
  local l0
  self = self._graph
  l0 = self[90]
  self.tempNPC = l0.Data
end
function export:f_40_EndOfList()
  local l0
  self = self._graph
  l0 = self[40]
  self.tempCLO = l0.Data
  l0 = Boxes[PathID("Domino/System/Lists/SetList.lua")]
  l0.List = self.tempListVehicles
  l0._graph = self
  l0.Out = self.f_31_Out
  l0:FromList()
end
function export:f_40_ForEach()
  local l0
  self = self._graph
  l0 = self[40]
  self.tempCLO = l0.Data
end
function export:f_40_GotNext()
  local l0
  self = self._graph
  l0 = self[40]
  self.tempCLO = l0.Data
  l0 = self[7]
  l0.CLO = self.tempCLO
  l0.SpawnOutsideLoadingRing = 1
  l0:Activate()
end
function export:f_40_Started()
  local l0
  self = self._graph
  l0 = self[40]
  self.tempCLO = l0.Data
end
function export:f_40_Stopped()
  local l0
  self = self._graph
  l0 = self[40]
  self.tempCLO = l0.Data
end
function export:f_67_RelationshipSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_75_Out_0
  l0.Out[1] = self.f_75_Out_1
  l0:In()
end
function export:f_66_Is_nil()
  local l0
  self = self._graph
  l0 = self[63]
  l0:Input(0)
end
function export:f_66_Is_not_nil()
  local l0
  self = self._graph
  l0 = self[61]
  l0.Input = self.All_NPCs
  l0.Data[0] = self.Vip
  l0.Index = 1
  l0:Add()
end
function export:f_33_Is_nil()
  local l0
  self = self._graph
  l0 = self[30]
  l0:Input(0)
end
function export:f_33_Is_not_nil()
  local l0
  self = self._graph
  l0 = self[29]
  l0.CLO = self.VipVehicleCLO
  l0.SpawnOutsideLoadingRing = 1
  l0:Activate()
end
function export:f_21_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.VipVehicle = l0.Target
  l0 = self[30]
  l0:Input(1)
end
function export:f_49_A_is_False()
  self = self._graph
  self:NPCsStartedMoving()
end
function export:f_49_A_is_True()
  self = self._graph
  self:StuckNPCsStartedMoving()
end
function export:f_50_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ConvoyController.lua")]
  self.convoyID = l0.OutConvoyId
  l0 = self[43]
  l0:Input(2)
end
function export:f_52_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/SetList.lua")]
  self.AllNPCs = l0.Target
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_65_Out_0
  l0.Out[1] = self.f_65_Out_1
  l0:In()
end
function export:f_58_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetInteger_v2.lua")]
  self.ConvoyID = l0.Target
  self:ConvoyStarted()
end
function export:f_56_DeadChecked()
  local l0
  self = self._graph
  l0 = self[57]
  l0:In()
end
function export:f_56_Killed()
  local l0
  self = self._graph
  l0 = self[57]
  l0:Close()
end
function export:f_73_Output_0()
  local l0
  self = self._graph
  l0 = self[81]
  l0:In(1)
end
function export:f_73_Output_1()
  local l0
  self = self._graph
  l0 = self[39]
  l0:True()
end
function export:f_4_Out()
  local l0
  self = self._graph
  l0 = self[64]
  l0:Condition(1)
end
function export:f_43_Out()
  local l0
  self = self._graph
  self:en_62()
  l0 = self[62]
  l0:Enable()
end
function export:f_98_Out_0()
  local l0
  self = self._graph
  l0 = self[81]
  l0:In(0)
end
function export:f_98_Out_1()
  self = self._graph
  self:ConvoyAggroNotPlayer()
end
function export:f_15_EndOfList()
  local l0
  self = self._graph
  l0 = self[15]
  self.tempCLO = l0.Data
  l0 = Boxes[PathID("Domino/System/Lists/SetList.lua")]
  l0.List = self.tempListNPCs
  l0._graph = self
  l0.Out = self.f_8_Out
  l0:FromList()
end
function export:f_15_ForEach()
  local l0
  self = self._graph
  l0 = self[15]
  self.tempCLO = l0.Data
end
function export:f_15_GotNext()
  local l0
  self = self._graph
  l0 = self[15]
  self.tempCLO = l0.Data
  l0 = self[26]
  l0.CLO = self.tempCLO
  l0.SpawnOutsideLoadingRing = 1
  l0:Activate()
end
function export:f_15_Started()
  local l0
  self = self._graph
  l0 = self[15]
  self.tempCLO = l0.Data
end
function export:f_15_Stopped()
  local l0
  self = self._graph
  l0 = self[15]
  self.tempCLO = l0.Data
end
function export:f_71_Out_0()
  local l0
  self = self._graph
  self:en_62()
  l0 = self[62]
  l0:Disable()
end
function export:f_71_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.AutoUnassign
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_97_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_72_Out()
  local l0
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
  l0.Started = DummyFunction
  l0.Updated = DummyFunction
  l0.Stopped = self.f_152_Stopped
  l0:Stop()
end
function export:en_62()
  local l0
  l0 = self[62]
  l0.ConvoyId = self.convoyID
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
