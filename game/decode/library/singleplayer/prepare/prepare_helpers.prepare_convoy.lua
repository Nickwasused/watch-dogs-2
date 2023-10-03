export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/AIAgentZoneController.lua")
  cbox:RegisterBox("Domino/System/AISquadRelationshipController.lua")
  cbox:RegisterBox("Domino/System/CLOController.lua")
  cbox:RegisterBox("Domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/CompareEntity_v2.lua")
  cbox:RegisterBox("Domino/System/ConvoyController.lua")
  cbox:RegisterBox("Domino/System/ConvoyMonitor.lua")
  cbox:RegisterBox("Domino/System/GetPlayerID.lua")
  cbox:RegisterBox("Domino/System/Lists/ListLength.lua")
  cbox:RegisterBox("Domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("Domino/System/MultipleAND.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
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
  self.ConvoyStopped = DummyFunction
  self.VIPDied = DummyFunction
  self.Out = DummyFunction
  self.NPCsUnassigned = DummyFunction
  self.DestinationReached = DummyFunction
  self.VipVehicleDestroyed = DummyFunction
  self.ConvoyStuck = DummyFunction
  self.ConvoyAggroNotPlayer = DummyFunction
  self.ConvoyStarted = DummyFunction
  self.Started = DummyFunction
  self.ConvoyAggro = DummyFunction
  self.Prepped = DummyFunction
  self.convoyID = 0
  self.EscortVehicleID = nil
  self.NoEscortVehicle = 1
  self.Player = nil
  self.All_NPCs = {}
  self.Escort_RearLeftPassengerID = nil
  self.tempListVehicles = {}
  self.Escort_RearRightPassengerID = nil
  self.Instigator = nil
  self.tempListNPCs = {}
  self.Vip = nil
  self.Escort_DriverID = nil
  self.vipVehicle = nil
  self.Escort_FrontPassengerID = nil
  self.Updated = 0
  self.VehicleVIPDestroyed = 0
  self.VehicleEscortDestroyed = 0
  self[33] = cbox:CreateBox("Domino/System/MultipleAND.lua")
  l0 = self[33]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 5}
  l0.Out = self.f_33_Out
  self[101] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[101]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_101_Out
  self[97] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[97]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_97_Out
  self[66] = cbox:CreateBox("Domino/System/VehicleSeatingController.lua")
  l0 = self[66]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_66_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self[128] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[128]
  l0._graph = self
  l0.Out = self.f_128_Out
  l0.SetTrue = self.f_128_SetTrue
  l0.SetFalse = self.f_128_SetFalse
  l0.Toggled = self.f_128_Toggled
  l0.SetFromBool = self.f_128_SetFromBool
  self[82] = cbox:CreateBox("Domino/System/VehicleSeatingController.lua")
  l0 = self[82]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_82_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self[1] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua")
  l0 = self[1]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_1_Out
  l0.ResetOut = DummyFunction
  self[52] = cbox:CreateBox("Domino/System/VehicleSeatingController.lua")
  l0 = self[52]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_52_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self[108] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[108]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_108_Out
  self[80] = cbox:CreateBox("Domino/System/Lists/ListWriter.lua")
  l0 = self[80]
  l0._graph = self
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_80_Added
  l0.Removed = self.f_80_Removed
  l0.Out = self.f_80_Out
  self[79] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[79]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_79_Out
  self[21] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[21]
  l0._graph = self
  l0.Out = self.f_21_Out
  l0.SetTrue = self.f_21_SetTrue
  l0.SetFalse = self.f_21_SetFalse
  l0.Toggled = self.f_21_Toggled
  l0.SetFromBool = self.f_21_SetFromBool
  self[126] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[126]
  l0._graph = self
  l0.Out = self.f_126_Out
  l0.SetTrue = self.f_126_SetTrue
  l0.SetFalse = self.f_126_SetFalse
  l0.Toggled = self.f_126_Toggled
  l0.SetFromBool = self.f_126_SetFromBool
  self[38] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[38]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_38_Out
  self[46] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[46]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_46_Out
  self[30] = cbox:CreateBox("Domino/System/VehicleSeatingController.lua")
  l0 = self[30]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = DummyFunction
  l0.UnassignCompleted = self.f_30_UnassignCompleted
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self[72] = cbox:CreateBox("Domino/System/VehicleSeatingController.lua")
  l0 = self[72]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_72_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self[105] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[105]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_105_Out
  self[123] = cbox:CreateBox("Domino/System/AISquadRelationshipController.lua")
  l0 = self[123]
  l0._graph = self
  l0.RelationshipSet = self.f_123_RelationshipSet
  l0.RelationshipReset = DummyFunction
  self[74] = cbox:CreateBox("Domino/System/VehicleSeatingController.lua")
  l0 = self[74]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = DummyFunction
  l0.UnassignCompleted = self.f_74_UnassignCompleted
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self[92] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua")
  l0 = self[92]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_92_Out
  l0.ResetOut = DummyFunction
  self[22] = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self[22]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_22_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[24] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[24]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_24_Out
  self[125] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[125]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_125_Out
  self[6] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[6]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_6_Out
  self[31] = cbox:CreateBox("Domino/System/Lists/ListWriter.lua")
  l0 = self[31]
  l0._graph = self
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_31_Added
  l0.Removed = self.f_31_Removed
  l0.Out = self.f_31_Out
  self[60] = cbox:CreateBox("Domino/System/VehicleSeatingController.lua")
  l0 = self[60]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_60_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self[34] = cbox:CreateBox("Domino/System/Lists/ListWriter.lua")
  l0 = self[34]
  l0._graph = self
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_34_Added
  l0.Removed = self.f_34_Removed
  l0.Out = self.f_34_Out
  self[64] = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self[64]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_64_OnUserInPlace
  self[63] = cbox:CreateBox("Domino/System/SwitchOutput_v3.lua")
  l0 = self[63]
  l0._graph = self
  l0._DynamicAnchors = {Output = 2}
  l0.Out = DummyFunction
  l0.Output[0] = self.f_63_Output_0
  l0.Output[1] = self.f_63_Output_1
  l0.None = DummyFunction
  l0.WasReset = DummyFunction
  self[14] = cbox:CreateBox("Domino/System/VehicleSeatingController.lua")
  l0 = self[14]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_14_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self[7] = cbox:CreateBox("Domino/System/Lists/ListWriter.lua")
  l0 = self[7]
  l0._graph = self
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_7_Added
  l0.Removed = self.f_7_Removed
  l0.Out = self.f_7_Out
  self[48] = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self[48]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_48_OnUserInPlace
  self[49] = cbox:CreateBox("Domino/System/AISquadRelationshipController.lua")
  l0 = self[49]
  l0._graph = self
  l0.RelationshipSet = self.f_49_RelationshipSet
  l0.RelationshipReset = DummyFunction
  self[57] = cbox:CreateBox("Domino/System/Lists/ListWriter.lua")
  l0 = self[57]
  l0._graph = self
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_57_Added
  l0.Removed = self.f_57_Removed
  l0.Out = self.f_57_Out
  self[32] = cbox:CreateBox("Domino/System/Lists/ListWriter.lua")
  l0 = self[32]
  l0._graph = self
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_32_Added
  l0.Removed = self.f_32_Removed
  l0.Out = self.f_32_Out
  self[36] = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self[36]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_36_OnUserInPlace
  self[10] = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self[10]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_10_OnUserInPlace
  self[42] = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self[42]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_42_OnUserInPlace
  self[28] = cbox:CreateBox("Domino/System/MultipleAND.lua")
  l0 = self[28]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_28_Out
  self[56] = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self[56]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_56_OnUserInPlace
  self[17] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[17]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_17_Out
  self[26] = cbox:CreateBox("Domino/System/MultipleAND.lua")
  l0 = self[26]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_26_Out
  self[104] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[104]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_104_Out
  self[93] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[93]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_93_Out
  self[53] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[53]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_53_Out
  self[122] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[122]
  l0._graph = self
  l0._DynamicAnchors = {Input = 5}
  l0.Out = self.f_122_Out
  self[8] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[8]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_8_Out
  self[120] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua")
  l0 = self[120]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_120_Out
  l0.ResetOut = DummyFunction
  self[12] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[12]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_12_Out
  self[58] = cbox:CreateBox("Domino/System/VehicleSeatingController.lua")
  l0 = self[58]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_58_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self[91] = cbox:CreateBox("Domino/System/MultipleAND.lua")
  l0 = self[91]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_91_Out
  self[90] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[90]
  l0._graph = self
  l0.Out = self.f_90_Out
  l0.SetTrue = self.f_90_SetTrue
  l0.SetFalse = self.f_90_SetFalse
  l0.Toggled = self.f_90_Toggled
  l0.SetFromBool = self.f_90_SetFromBool
  self[20] = cbox:CreateBox("Domino/System/ConvoyMonitor.lua")
  l0 = self[20]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.StartMoving = self.f_20_StartMoving
  l0.DestinationReached = self.f_20_DestinationReached
  l0.VIPDied = self.f_20_VIPDied
  l0.VIPVehicleDestroyed = self.f_20_VIPVehicleDestroyed
  l0.VIPHijacked = self.f_20_VIPHijacked
  l0.EscortDied = self.f_20_EscortDied
  l0.EscortVehicleDestroyed = self.f_20_EscortVehicleDestroyed
  l0.EscortHijacked = self.f_20_EscortHijacked
  l0.ConvoyStuck = self.f_20_ConvoyStuck
  l0.ConvoyStopped = self.f_20_ConvoyStopped
  l0.HardDisturbance = self.f_20_HardDisturbance
  l0.SoftDisturbance = self.f_20_SoftDisturbance
  self[4] = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self[4]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_4_OnUserInPlace
  self[65] = cbox:CreateBox("Domino/System/VehicleSeatingController.lua")
  l0 = self[65]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_65_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self[59] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[59]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_59_Out
  self[70] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[70]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_70_Out
  self[67] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[67]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_67_Out
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
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_76_Out_0
  l0.Out[1] = self.f_76_Out_1
  l0.Out[2] = self.f_76_Out_2
  l0.Out[3] = self.f_76_Out_3
  l0:In()
end
function export:Start()
  local l0
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_50_Out_0
  l0.Out[1] = self.f_50_Out_1
  l0:In()
end
function export:Stop()
  local l0
  l0 = self[67]
  l0:Input(0)
end
function export:f_33_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/SetList.lua")]
  l0.List = self.tempListNPCs
  l0._graph = self
  l0.Out = self.f_84_Out
  l0:FromList()
end
function export:f_101_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.EscortFrontPassenger_WanderZone
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_106_Is_nil
  l0.Is_not_nil = self.f_106_Is_not_nil
  l0:In()
end
function export:f_114_Out()
  local l0
  self = self._graph
  l0 = self[105]
  l0:Input(1)
end
function export:f_118_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = self.EscortRearRightPassenger_WanderZone
  l0.NPC = self.Escort_RearRightPassengerID
  l0._graph = self
  l0.Out = self.f_107_Out
  l0:Assign()
end
function export:f_118_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = self.UpdatedWanderZone
  l0.NPC = self.Escort_RearRightPassengerID
  l0._graph = self
  l0.Out = self.f_119_Out
  l0:Assign()
end
function export:f_107_Out()
  local l0
  self = self._graph
  l0 = self[108]
  l0:Input(2)
end
function export:f_9_Is_nil()
  local l0
  self = self._graph
  l0 = self[59]
  l0:Input(1)
end
function export:f_9_Is_not_nil()
  local l0
  self = self._graph
  l0 = self[74]
  l0.Vehicle = self.EscortVehicleID
  l0.UseAnimation = 1
  l0.WalkType = "Walk"
  l0:Unassign()
end
function export:f_43_Empty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ConvoyController.lua")]
  l0.Destination = self.Destination
  l0.VIPCharacter = self.Vip
  l0.VIPVehicle = self.vipVehicle
  l0.EscortCharacters = nil
  l0.EscortVehicles = nil
  l0.ConvoyConfig = self.ConvoyConfig
  l0.ObjectiveText = nil
  l0.InConvoyId = nil
  l0._graph = self
  l0.Started = self.f_87_Started
  l0.Updated = DummyFunction
  l0.Stopped = DummyFunction
  l0:Start()
end
function export:f_43_NotEmpty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ConvoyController.lua")]
  l0.Destination = self.Destination
  l0.VIPCharacter = self.Vip
  l0.VIPVehicle = self.vipVehicle
  l0.EscortCharacters = self.tempListNPCs
  l0.EscortVehicles = nil
  l0.ConvoyConfig = self.ConvoyConfig
  l0.ObjectiveText = nil
  l0.InConvoyId = nil
  l0._graph = self
  l0.Started = self.f_25_Started
  l0.Updated = DummyFunction
  l0.Stopped = DummyFunction
  l0:Start()
end
function export:f_2_Out_0()
  local l0
  self = self._graph
  l0 = self[58]
  l0.Vehicle = self.vipVehicle
  l0.Pawn = self.Vip
  l0.Seat = "Driver"
  l0:Assign()
end
function export:f_2_Out_1()
  local l0
  self = self._graph
  l0 = self[91]
  l0:Condition(0)
end
function export:f_19_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/ListLength.lua")]
  l0.Input = self.tempListNPCs
  l0._graph = self
  l0.Out = DummyFunction
  l0.Empty = self.f_43_Empty
  l0.NotEmpty = self.f_43_NotEmpty
  l0:GetLength()
end
function export:f_19_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ConvoyController.lua")]
  l0.Destination = self.Destination
  l0.VIPCharacter = self.Vip
  l0.VIPVehicle = self.vipVehicle
  l0.EscortCharacters = self.tempListNPCs
  l0.EscortVehicles = self.tempListVehicles
  l0.ConvoyConfig = self.ConvoyConfig
  l0.ObjectiveText = nil
  l0.InConvoyId = nil
  l0._graph = self
  l0.Started = self.f_27_Started
  l0.Updated = DummyFunction
  l0.Stopped = DummyFunction
  l0:Start()
end
function export:f_97_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.EscortDriver_WanderZone
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_99_Is_nil
  l0.Is_not_nil = self.f_99_Is_not_nil
  l0:In()
end
function export:f_66_AssignCompleted()
  local l0
  self = self._graph
  l0 = self[93]
  l0:Input(1)
end
function export:f_128_Out()
  local l0
  self = self._graph
  l0 = self[128]
  self.VehicleEscortDestroyed = l0.Target
end
function export:f_128_SetFalse()
  local l0
  self = self._graph
  l0 = self[128]
  self.VehicleEscortDestroyed = l0.Target
end
function export:f_128_SetFromBool()
  local l0
  self = self._graph
  l0 = self[128]
  self.VehicleEscortDestroyed = l0.Target
end
function export:f_128_SetTrue()
  local l0
  self = self._graph
  l0 = self[128]
  self.VehicleEscortDestroyed = l0.Target
  l0 = self[122]
  l0:Input(1)
end
function export:f_128_Toggled()
  local l0
  self = self._graph
  l0 = self[128]
  self.VehicleEscortDestroyed = l0.Target
end
function export:f_109_Is_nil()
  local l0
  self = self._graph
  l0 = self[108]
  l0:Input(0)
end
function export:f_109_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Updated
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_118_A_is_True
  l0.A_is_False = self.f_118_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_115_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = self.EscortFrontPassenger_WanderZone
  l0.NPC = self.Escort_FrontPassengerID
  l0._graph = self
  l0.Out = self.f_103_Out
  l0:Assign()
end
function export:f_115_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = self.UpdatedWanderZone
  l0.NPC = self.Escort_FrontPassengerID
  l0._graph = self
  l0.Out = self.f_114_Out
  l0:Assign()
end
function export:f_82_AssignCompleted()
  local l0
  self = self._graph
  l0 = self[31]
  l0.Input = self.tempListNPCs
  l0.Data[0] = self.Escort_DriverID
  l0:Add()
end
function export:f_87_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ConvoyController.lua")]
  self.convoyID = l0.OutConvoyId
  l0 = self[12]
  l0:Input(0)
end
function export:f_121_A_is_False()
  local l0
  self = self._graph
  l0 = self[125]
  l0:Input(2)
end
function export:f_86_A_is_False()
  local l0
  self = self._graph
  l0 = self[66]
  l0.Vehicle = self.EscortVehicleID
  l0.Pawn = self.Escort_RearRightPassengerID
  l0.Seat = "RearPassengerRight"
  l0:Assign()
end
function export:f_86_A_is_True()
  local l0
  self = self._graph
  l0 = self[14]
  l0.Vehicle = self.vipVehicle
  l0.Pawn = self.Escort_RearRightPassengerID
  l0.Seat = "RearPassengerRight"
  l0:Assign()
end
function export:f_103_Out()
  local l0
  self = self._graph
  l0 = self[105]
  l0:Input(2)
end
function export:f_18_Is_nil()
  local l0
  self = self._graph
  l0 = self[24]
  l0:Input(0)
end
function export:f_18_Is_not_nil()
  local l0
  self = self._graph
  l0 = self[10]
  l0.CLO = self.EscortCLO_RearRightPassenger
  l0.SpawnOutsideLoadingRing = 1
  l0:Activate()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = self[21]
  l0:True()
end
function export:f_47_Out_0()
  local l0
  self = self._graph
  l0 = self[92]
  l0:In(1)
end
function export:f_47_Out_1()
  self = self._graph
  self:ConvoyStopped()
end
function export:f_52_AssignCompleted()
  local l0
  self = self._graph
  l0 = self[38]
  l0:Input(1)
end
function export:f_62_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.Escort_RearLeftPassenger = l0.Target
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.NoEscortVehicle
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_35_A_is_True
  l0.A_is_False = self.f_35_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_88_Empty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ConvoyController.lua")]
  l0.Destination = self.Updated_Destination
  l0.VIPCharacter = self.Vip
  l0.VIPVehicle = self.vipVehicle
  l0.EscortCharacters = nil
  l0.EscortVehicles = nil
  l0.ConvoyConfig = self.Updated_ConvoyConfig
  l0.ObjectiveText = nil
  l0.InConvoyId = self.convoyID
  l0._graph = self
  l0.Started = DummyFunction
  l0.Updated = DummyFunction
  l0.Stopped = DummyFunction
  l0:Update()
end
function export:f_88_NotEmpty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ConvoyController.lua")]
  l0.Destination = self.Updated_Destination
  l0.VIPCharacter = self.Vip
  l0.VIPVehicle = self.vipVehicle
  l0.EscortCharacters = self.tempListNPCs
  l0.EscortVehicles = nil
  l0.ConvoyConfig = self.Updated_ConvoyConfig
  l0.ObjectiveText = nil
  l0.InConvoyId = self.convoyID
  l0._graph = self
  l0.Started = DummyFunction
  l0.Updated = DummyFunction
  l0.Stopped = DummyFunction
  l0:Update()
end
function export:f_106_Is_nil()
  local l0
  self = self._graph
  l0 = self[105]
  l0:Input(0)
end
function export:f_106_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Updated
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_115_A_is_True
  l0.A_is_False = self.f_115_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_108_Out()
  self = self._graph
  self:NPCsUnassigned()
end
function export:f_80_Added()
  local l0
  self = self._graph
  l0 = self[80]
  self.tempListNPCs = l0.Target
  l0 = self[53]
  l0:Input(1)
end
function export:f_80_Out()
  local l0
  self = self._graph
  l0 = self[80]
  self.tempListNPCs = l0.Target
end
function export:f_80_Removed()
  local l0
  self = self._graph
  l0 = self[80]
  self.tempListNPCs = l0.Target
end
function export:f_51_Out_0()
  local l0
  self = self._graph
  l0 = self[67]
  l0:Input(2)
end
function export:f_51_Out_1()
  self = self._graph
  self:ConvoyStuck()
end
function export:f_79_Out()
  local l0
  self = self._graph
  l0 = self[33]
  l0:Condition(1)
end
function export:f_21_Out()
  local l0
  self = self._graph
  l0 = self[21]
  self.Updated = l0.Target
end
function export:f_21_SetFalse()
  local l0
  self = self._graph
  l0 = self[21]
  self.Updated = l0.Target
end
function export:f_21_SetFromBool()
  local l0
  self = self._graph
  l0 = self[21]
  self.Updated = l0.Target
end
function export:f_21_SetTrue()
  local l0
  self = self._graph
  l0 = self[21]
  self.Updated = l0.Target
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.EscortVehicleID
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_15_Is_nil
  l0.Is_not_nil = self.f_15_Is_not_nil
  l0:In()
end
function export:f_21_Toggled()
  local l0
  self = self._graph
  l0 = self[21]
  self.Updated = l0.Target
end
function export:f_126_Out()
  local l0
  self = self._graph
  l0 = self[126]
  self.VehicleVIPDestroyed = l0.Target
end
function export:f_126_SetFalse()
  local l0
  self = self._graph
  l0 = self[126]
  self.VehicleVIPDestroyed = l0.Target
end
function export:f_126_SetFromBool()
  local l0
  self = self._graph
  l0 = self[126]
  self.VehicleVIPDestroyed = l0.Target
end
function export:f_126_SetTrue()
  local l0
  self = self._graph
  l0 = self[126]
  self.VehicleVIPDestroyed = l0.Target
  l0 = self[6]
  l0:Input(1)
end
function export:f_126_Toggled()
  local l0
  self = self._graph
  l0 = self[126]
  self.VehicleVIPDestroyed = l0.Target
end
function export:f_38_Out()
  local l0
  self = self._graph
  l0 = self[57]
  l0.Input = self.tempListNPCs
  l0.Data[0] = self.Escort_FrontPassengerID
  l0:Add()
end
function export:f_46_Out()
  local l0
  self = self._graph
  l0 = self[91]
  l0:Condition(1)
end
function export:f_30_UnassignCompleted()
  local l0
  self = self._graph
  l0 = self[8]
  l0:Input(2)
end
function export:f_72_AssignCompleted()
  local l0
  self = self._graph
  l0 = self[17]
  l0:Input(1)
end
function export:f_15_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/ListLength.lua")]
  l0.Input = self.tempListNPCs
  l0._graph = self
  l0.Out = DummyFunction
  l0.Empty = self.f_88_Empty
  l0.NotEmpty = self.f_88_NotEmpty
  l0:GetLength()
end
function export:f_15_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ConvoyController.lua")]
  l0.Destination = self.Updated_Destination
  l0.VIPCharacter = self.Vip
  l0.VIPVehicle = self.vipVehicle
  l0.EscortCharacters = self.tempListNPCs
  l0.EscortVehicles = self.tempListVehicles
  l0.ConvoyConfig = self.Updated_ConvoyConfig
  l0.ObjectiveText = nil
  l0.InConvoyId = self.convoyID
  l0._graph = self
  l0.Started = DummyFunction
  l0.Updated = DummyFunction
  l0.Stopped = DummyFunction
  l0:Update()
end
function export:f_89_Out_0()
  self = self._graph
  self:VipVehicleDestroyed()
end
function export:f_89_Out_1()
  local l0
  self = self._graph
  l0 = self[126]
  l0:True()
end
function export:f_105_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.EscortRearLeftPassenger_WanderZone
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_102_Is_nil
  l0.Is_not_nil = self.f_102_Is_not_nil
  l0:In()
end
function export:f_123_RelationshipSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IgnorePlayer
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_121_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_74_UnassignCompleted()
  local l0
  self = self._graph
  l0 = self[59]
  l0:Input(2)
end
function export:f_95_Out()
  local l0
  self = self._graph
  l0 = self[97]
  l0:Input(2)
end
function export:f_55_Out_0()
  self = self._graph
  self:ConvoyAggroNotPlayer()
end
function export:f_55_Out_1()
  local l0
  self = self._graph
  l0 = self[1]
  l0:In(0)
end
function export:f_41_Is_nil()
  local l0
  self = self._graph
  l0 = self[90]
  l0:True()
end
function export:f_41_Is_not_nil()
  local l0
  self = self._graph
  l0 = self[4]
  l0.CLO = self.EscortVehicleCLO
  l0.SpawnOutsideLoadingRing = 1
  l0:Activate()
end
function export:f_117_Out()
  local l0
  self = self._graph
  l0 = self[104]
  l0:Input(1)
end
function export:f_92_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_11_Out_0
  l0.Out[1] = self.f_11_Out_1
  l0.Out[2] = DummyFunction
  l0:In()
end
function export:f_22_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_75_Out_0
  l0.Out[1] = self.f_75_Out_1
  l0:In()
end
function export:f_45_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetInteger_v2.lua")]
  self.ConvoyID = l0.Target
  self:ConvoyStarted()
end
function export:f_24_Out()
  local l0
  self = self._graph
  l0 = self[33]
  l0:Condition(4)
end
function export:f_125_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_3_Out_0
  l0.Out[1] = self.f_3_Out_1
  l0:In()
end
function export:f_75_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.VehicleVIPDestroyed
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_127_A_is_True
  l0.A_is_False = self.f_127_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_75_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.VehicleEscortDestroyed
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_129_A_is_True
  l0.A_is_False = self.f_129_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_6_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareEntity_v2.lua")]
  l0.Entity1 = self.Instigator
  l0.Entity2 = self.Player
  l0._graph = self
  l0.Out = DummyFunction
  l0.Equal = self.f_85_Equal
  l0.NotEqual = self.f_85_NotEqual
  l0:In()
end
function export:f_31_Added()
  local l0
  self = self._graph
  l0 = self[31]
  self.tempListNPCs = l0.Target
  l0 = self[79]
  l0:Input(1)
end
function export:f_31_Out()
  local l0
  self = self._graph
  l0 = self[31]
  self.tempListNPCs = l0.Target
end
function export:f_31_Removed()
  local l0
  self = self._graph
  l0 = self[31]
  self.tempListNPCs = l0.Target
end
function export:f_78_Is_nil()
  local l0
  self = self._graph
  l0 = self[8]
  l0:Input(1)
end
function export:f_78_Is_not_nil()
  local l0
  self = self._graph
  l0 = self[30]
  l0.Vehicle = self.vipVehicle
  l0.UseAnimation = 1
  l0.WalkType = "Walk"
  l0:Unassign()
end
function export:f_127_A_is_False()
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
  l0.Is_nil = self.f_78_Is_nil
  l0.Is_not_nil = self.f_78_Is_not_nil
  l0:In()
end
function export:f_127_A_is_True()
  local l0
  self = self._graph
  l0 = self[8]
  l0:Input(0)
end
function export:f_60_AssignCompleted()
  local l0
  self = self._graph
  l0 = self[38]
  l0:Input(0)
end
function export:f_68_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_47_Out_0
  l0.Out[1] = self.f_47_Out_1
  l0:In()
end
function export:f_25_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ConvoyController.lua")]
  self.convoyID = l0.OutConvoyId
  l0 = self[12]
  l0:Input(1)
end
function export:f_34_Added()
  local l0
  self = self._graph
  l0 = self[34]
  self.All_NPCs = l0.Target
  l0 = Boxes[PathID("Domino/System/Lists/SetList.lua")]
  l0.List = self.All_NPCs
  l0._graph = self
  l0.Out = self.f_39_Out
  l0:FromList()
end
function export:f_34_Out()
  local l0
  self = self._graph
  l0 = self[34]
  self.All_NPCs = l0.Target
end
function export:f_34_Removed()
  local l0
  self = self._graph
  l0 = self[34]
  self.All_NPCs = l0.Target
end
function export:f_64_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[64]
  self.Vip = l0.UserID
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = self.Vip
  l0._graph = self
  l0.Out = self.f_37_Out
  l0:FromEntity()
end
function export:f_63_Output_0()
  local l0
  self = self._graph
  l0 = self[1]
  l0:In(1)
end
function export:f_63_Output_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_51_Out_0
  l0.Out[1] = self.f_51_Out_1
  l0:In()
end
function export:f_102_Is_nil()
  local l0
  self = self._graph
  l0 = self[104]
  l0:Input(0)
end
function export:f_102_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Updated
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_116_A_is_True
  l0.A_is_False = self.f_116_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_50_Out_0()
  self = self._graph
  self:Started()
end
function export:f_50_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.EscortVehicleID
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_19_Is_nil
  l0.Is_not_nil = self.f_19_Is_not_nil
  l0:In()
end
function export:f_14_AssignCompleted()
  local l0
  self = self._graph
  l0 = self[93]
  l0:Input(0)
end
function export:f_7_Added()
  local l0
  self = self._graph
  l0 = self[7]
  self.tempListNPCs = l0.Target
  l0 = self[24]
  l0:Input(1)
end
function export:f_7_Out()
  local l0
  self = self._graph
  l0 = self[7]
  self.tempListNPCs = l0.Target
end
function export:f_7_Removed()
  local l0
  self = self._graph
  l0 = self[7]
  self.tempListNPCs = l0.Target
end
function export:f_48_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[48]
  self.Escort_DriverID = l0.UserID
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = self.Escort_DriverID
  l0._graph = self
  l0.Out = self.f_13_Out
  l0:FromEntity()
end
function export:f_49_RelationshipSet()
  local l0
  self = self._graph
  l0 = self[125]
  l0:Input(0)
end
function export:f_57_Added()
  local l0
  self = self._graph
  l0 = self[57]
  self.tempListNPCs = l0.Target
  l0 = self[70]
  l0:Input(1)
end
function export:f_57_Out()
  local l0
  self = self._graph
  l0 = self[57]
  self.tempListNPCs = l0.Target
end
function export:f_57_Removed()
  local l0
  self = self._graph
  l0 = self[57]
  self.tempListNPCs = l0.Target
end
function export:f_32_Added()
  local l0
  self = self._graph
  l0 = self[32]
  self.tempListVehicles = l0.Target
  l0 = self[90]
  l0:False()
end
function export:f_32_Out()
  local l0
  self = self._graph
  l0 = self[32]
  self.tempListVehicles = l0.Target
end
function export:f_32_Removed()
  local l0
  self = self._graph
  l0 = self[32]
  self.tempListVehicles = l0.Target
end
function export:f_71_Out_0()
  self = self._graph
  self:DestinationReached()
end
function export:f_71_Out_1()
  local l0
  self = self._graph
  l0 = self[92]
  l0:In(0)
end
function export:f_73_Is_nil()
  local l0
  self = self._graph
  l0 = self[53]
  l0:Input(0)
end
function export:f_73_Is_not_nil()
  local l0
  self = self._graph
  l0 = self[56]
  l0.CLO = self.EscortCLO_RearLeftPassenger
  l0.SpawnOutsideLoadingRing = 1
  l0:Activate()
end
function export:f_36_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[36]
  self.vipVehicle = l0.UserID
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = self.vipVehicle
  l0._graph = self
  l0.Out = self.f_40_Out
  l0:FromEntity()
end
function export:f_96_Is_nil()
  local l0
  self = self._graph
  l0 = self[97]
  l0:Input(0)
end
function export:f_96_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Updated
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_110_A_is_True
  l0.A_is_False = self.f_110_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_10_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[10]
  self.Escort_RearRightPassengerID = l0.UserID
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = self.Escort_RearRightPassengerID
  l0._graph = self
  l0.Out = self.f_5_Out
  l0:FromEntity()
end
function export:f_23_A_or_B()
  local l0
  self = self._graph
  l0 = self[52]
  l0.Vehicle = self.vipVehicle
  l0.Pawn = self.Escort_FrontPassengerID
  l0.Seat = "FrontPassenger"
  l0:Assign()
end
function export:f_23_notA_and_notB()
  local l0
  self = self._graph
  l0 = self[60]
  l0.Vehicle = self.EscortVehicleID
  l0.Pawn = self.Escort_FrontPassengerID
  l0.Seat = "FrontPassenger"
  l0:Assign()
end
function export:f_27_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ConvoyController.lua")]
  self.convoyID = l0.OutConvoyId
  l0 = self[12]
  l0:Input(2)
end
function export:f_42_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[42]
  self.Escort_FrontPassengerID = l0.UserID
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = self.Escort_FrontPassengerID
  l0._graph = self
  l0.Out = self.f_29_Out
  l0:FromEntity()
end
function export:f_28_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_2_Out_0
  l0.Out[1] = self.f_2_Out_1
  l0:In()
end
function export:f_56_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[56]
  self.Escort_RearLeftPassengerID = l0.UserID
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = self.Escort_RearLeftPassengerID
  l0._graph = self
  l0.Out = self.f_62_Out
  l0:FromEntity()
end
function export:f_17_Out()
  local l0
  self = self._graph
  l0 = self[80]
  l0.Input = self.tempListNPCs
  l0.Data[0] = self.Escort_RearLeftPassengerID
  l0:Add()
end
function export:f_26_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.Vip_WanderZone
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_96_Is_nil
  l0.Is_not_nil = self.f_96_Is_not_nil
  l0:In()
end
function export:f_104_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.EscortRearRightPassenger_WanderZone
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_109_Is_nil
  l0.Is_not_nil = self.f_109_Is_not_nil
  l0:In()
end
function export:f_93_Out()
  local l0
  self = self._graph
  l0 = self[7]
  l0.Input = self.tempListNPCs
  l0.Data[0] = self.Escort_RearRightPassengerID
  l0:Add()
end
function export:f_39_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/SetList.lua")]
  self.AllNPCs = l0.Target
  self:Prepped()
end
function export:f_11_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.AutoUnassign
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_54_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_11_Out_1()
  local l0
  self = self._graph
  self:en_20()
  l0 = self[20]
  l0:Disable()
end
function export:f_53_Out()
  local l0
  self = self._graph
  l0 = self[33]
  l0:Condition(3)
end
function export:f_111_Out()
  local l0
  self = self._graph
  l0 = self[97]
  l0:Input(1)
end
function export:f_122_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareEntity_v2.lua")]
  l0.Entity1 = self.Instigator
  l0.Entity2 = self.Player
  l0._graph = self
  l0.Out = DummyFunction
  l0.Equal = self.f_124_Equal
  l0.NotEqual = self.f_124_NotEqual
  l0:In()
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = self[26]
  l0:Condition(0)
end
function export:f_29_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.Escort_FrontPassenger = l0.Target
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.FrontPassenger_WithVIP
  l0.B = self.NoEscortVehicle
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = self.f_23_notA_and_notB
  l0.A_or_B = self.f_23_A_or_B
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_76_Out_0()
  local l0
  self = self._graph
  l0 = self[36]
  l0.CLO = self.VipVehicleCLO
  l0.SpawnOutsideLoadingRing = 1
  l0:Activate()
end
function export:f_76_Out_1()
  local l0
  self = self._graph
  l0 = self[64]
  l0.CLO = self.VipCLO
  l0.SpawnOutsideLoadingRing = 1
  l0:Activate()
end
function export:f_76_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.EscortVehicleCLO
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_41_Is_nil
  l0.Is_not_nil = self.f_41_Is_not_nil
  l0:In()
end
function export:f_76_Out_3()
  self = self._graph
  self:Out()
end
function export:f_94_Is_nil()
  local l0
  self = self._graph
  l0 = self[79]
  l0:Input(0)
end
function export:f_94_Is_not_nil()
  local l0
  self = self._graph
  l0 = self[48]
  l0.CLO = self.EscortCLO_Driver
  l0.SpawnOutsideLoadingRing = 1
  l0:Activate()
end
function export:f_5_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.Escort_RearRightPassenger = l0.Target
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.NoEscortVehicle
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_86_A_is_True
  l0.A_is_False = self.f_86_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_44_Out_0()
  self = self._graph
  self:VIPDied()
end
function export:f_44_Out_1()
  local l0
  self = self._graph
  l0 = self[6]
  l0:Input(0)
end
function export:f_129_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.EscortVehicleCLO
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_9_Is_nil
  l0.Is_not_nil = self.f_9_Is_not_nil
  l0:In()
end
function export:f_129_A_is_True()
  local l0
  self = self._graph
  l0 = self[59]
  l0:Input(0)
end
function export:f_120_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetInteger_v2.lua")]
  l0.Integer = self.convoyID
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0.Out = self.f_45_Out
  l0:FromInteger()
end
function export:f_116_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = self.EscortRearLeftPassenger_WanderZone
  l0.NPC = self.Escort_RearLeftPassengerID
  l0._graph = self
  l0.Out = self.f_100_Out
  l0:Assign()
end
function export:f_116_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = self.UpdatedWanderZone
  l0.NPC = self.Escort_RearLeftPassengerID
  l0._graph = self
  l0.Out = self.f_117_Out
  l0:Assign()
end
function export:f_16_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.Player = l0.PlayerID
  self:en_20()
  l0 = self[20]
  l0:Enable()
end
function export:f_12_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_16_Out
  l0:In()
end
function export:f_40_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.VipVehicleID = l0.Target
  l0 = self[28]
  l0:Condition(0)
end
function export:f_85_Equal()
  local l0
  self = self._graph
  l0 = self[49]
  l0.Affiliation = self.Affiliation
  l0.Relationship = "Threat"
  l0:SetRelationship()
end
function export:f_85_NotEqual()
  local l0
  self = self._graph
  l0 = self[125]
  l0:Input(1)
end
function export:f_35_A_is_False()
  local l0
  self = self._graph
  l0 = self[72]
  l0.Vehicle = self.EscortVehicleID
  l0.Pawn = self.Escort_RearLeftPassengerID
  l0.Seat = "RearPassengerLeft"
  l0:Assign()
end
function export:f_35_A_is_True()
  local l0
  self = self._graph
  l0 = self[65]
  l0.Vehicle = self.vipVehicle
  l0.Pawn = self.Escort_RearLeftPassengerID
  l0.Seat = "RearPassengerLeft"
  l0:Assign()
end
function export:f_100_Out()
  local l0
  self = self._graph
  l0 = self[104]
  l0:Input(2)
end
function export:f_112_Out()
  local l0
  self = self._graph
  l0 = self[101]
  l0:Input(1)
end
function export:f_37_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.VipID = l0.Target
  l0 = self[28]
  l0:Condition(1)
end
function export:f_119_Out()
  local l0
  self = self._graph
  l0 = self[108]
  l0:Input(1)
end
function export:f_58_AssignCompleted()
  local l0
  self = self._graph
  l0 = self[33]
  l0:Condition(0)
end
function export:f_91_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_61_Out_0
  l0.Out[1] = self.f_61_Out_1
  l0.Out[2] = self.f_61_Out_2
  l0.Out[3] = self.f_61_Out_3
  l0:In()
end
function export:f_90_Out()
  local l0
  self = self._graph
  l0 = self[90]
  self.NoEscortVehicle = l0.Target
end
function export:f_90_SetFalse()
  local l0
  self = self._graph
  l0 = self[90]
  self.NoEscortVehicle = l0.Target
  l0 = self[46]
  l0:Input(1)
end
function export:f_90_SetFromBool()
  local l0
  self = self._graph
  l0 = self[90]
  self.NoEscortVehicle = l0.Target
end
function export:f_90_SetTrue()
  local l0
  self = self._graph
  l0 = self[90]
  self.NoEscortVehicle = l0.Target
  l0 = self[46]
  l0:Input(0)
end
function export:f_90_Toggled()
  local l0
  self = self._graph
  l0 = self[90]
  self.NoEscortVehicle = l0.Target
end
function export:f_61_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.EscortVehicleCLO
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_94_Is_nil
  l0.Is_not_nil = self.f_94_Is_not_nil
  l0:In()
end
function export:f_61_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.EscortCLO_FrontPassenger
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_81_Is_nil
  l0.Is_not_nil = self.f_81_Is_not_nil
  l0:In()
end
function export:f_61_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.EscortCLO_RearLeftPassenger
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_73_Is_nil
  l0.Is_not_nil = self.f_73_Is_not_nil
  l0:In()
end
function export:f_61_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.EscortCLO_RearRightPassenger
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_18_Is_nil
  l0.Is_not_nil = self.f_18_Is_not_nil
  l0:In()
end
function export:f_124_Equal()
  local l0
  self = self._graph
  l0 = self[123]
  l0.Affiliation = self.Affiliation
  l0.Relationship = "Threat"
  l0:SetRelationship()
end
function export:f_124_NotEqual()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_55_Out_0
  l0.Out[1] = self.f_55_Out_1
  l0:In()
end
function export:f_99_Is_nil()
  local l0
  self = self._graph
  l0 = self[101]
  l0:Input(0)
end
function export:f_99_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Updated
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_113_A_is_True
  l0.A_is_False = self.f_113_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_113_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = self.EscortDriver_WanderZone
  l0.NPC = self.Escort_DriverID
  l0._graph = self
  l0.Out = self.f_98_Out
  l0:Assign()
end
function export:f_113_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = self.UpdatedWanderZone
  l0.NPC = self.Escort_DriverID
  l0._graph = self
  l0.Out = self.f_112_Out
  l0:Assign()
end
function export:f_81_Is_nil()
  local l0
  self = self._graph
  l0 = self[70]
  l0:Input(0)
end
function export:f_81_Is_not_nil()
  local l0
  self = self._graph
  l0 = self[42]
  l0.CLO = self.EscortCLO_FrontPassenger
  l0.SpawnOutsideLoadingRing = 1
  l0:Activate()
end
function export:f_54_A_is_True()
  local l0
  self = self._graph
  l0 = self[22]
  l0.Seconds = 3
  l0:Start()
end
function export:f_20_ConvoyStopped()
  local l0
  self = self._graph
  l0 = self[20]
  self.Instigator = l0.Instigator
end
function export:f_20_ConvoyStuck()
  local l0
  self = self._graph
  l0 = self[63]
  l0:In()
end
function export:f_20_DestinationReached()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_71_Out_0
  l0.Out[1] = self.f_71_Out_1
  l0:In()
end
function export:f_20_EscortDied()
  local l0
  self = self._graph
  l0 = self[20]
  self.Instigator = l0.Instigator
  l0 = self[122]
  l0:Input(0)
end
function export:f_20_EscortHijacked()
  local l0
  self = self._graph
  l0 = self[20]
  self.Instigator = l0.Instigator
  l0 = self[122]
  l0:Input(2)
end
function export:f_20_EscortVehicleDestroyed()
  local l0
  self = self._graph
  l0 = self[20]
  self.Instigator = l0.Instigator
  l0 = self[128]
  l0:True()
end
function export:f_20_HardDisturbance()
  local l0
  self = self._graph
  l0 = self[20]
  self.Instigator = l0.Instigator
  l0 = self[122]
  l0:Input(3)
end
function export:f_20_SoftDisturbance()
  local l0
  self = self._graph
  l0 = self[20]
  self.Instigator = l0.Instigator
  l0 = self[122]
  l0:Input(4)
end
function export:f_20_StartMoving()
  local l0
  self = self._graph
  l0 = self[120]
  l0:In(0)
end
function export:f_20_VIPDied()
  local l0
  self = self._graph
  l0 = self[20]
  self.Instigator = l0.Instigator
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_44_Out_0
  l0.Out[1] = self.f_44_Out_1
  l0:In()
end
function export:f_20_VIPHijacked()
  local l0
  self = self._graph
  l0 = self[20]
  self.Instigator = l0.Instigator
  l0 = self[6]
  l0:Input(2)
end
function export:f_20_VIPVehicleDestroyed()
  local l0
  self = self._graph
  l0 = self[20]
  self.Instigator = l0.Instigator
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_89_Out_0
  l0.Out[1] = self.f_89_Out_1
  l0:In()
end
function export:f_4_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[4]
  self.EscortVehicleID = l0.UserID
  l0 = self[32]
  l0.Input = self.tempListVehicles
  l0.Data[0] = self.EscortVehicleID
  l0:Add()
end
function export:f_3_Out_0()
  local l0
  self = self._graph
  l0 = self[67]
  l0:Input(1)
end
function export:f_3_Out_1()
  self = self._graph
  self:ConvoyAggro()
end
function export:f_65_AssignCompleted()
  local l0
  self = self._graph
  l0 = self[17]
  l0:Input(0)
end
function export:f_59_Out()
  local l0
  self = self._graph
  l0 = self[26]
  l0:Condition(1)
end
function export:f_70_Out()
  local l0
  self = self._graph
  l0 = self[33]
  l0:Condition(2)
end
function export:f_84_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/SetList.lua")]
  self.EscortNPCs = l0.Target
  l0 = self[34]
  l0.Input = self.tempListNPCs
  l0.Data[0] = self.Vip
  l0:Add()
end
function export:f_13_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.Escort_Driver = l0.Target
  l0 = self[82]
  l0.Vehicle = self.EscortVehicleID
  l0.Pawn = self.Escort_DriverID
  l0.Seat = "Driver"
  l0:Assign()
end
function export:f_110_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = self.Vip_WanderZone
  l0.NPC = self.Vip
  l0._graph = self
  l0.Out = self.f_95_Out
  l0:Assign()
end
function export:f_110_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = self.UpdatedWanderZone
  l0.NPC = self.Vip
  l0._graph = self
  l0.Out = self.f_111_Out
  l0:Assign()
end
function export:f_67_Out()
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
  l0.Stopped = self.f_68_Stopped
  l0:Stop()
end
function export:f_98_Out()
  local l0
  self = self._graph
  l0 = self[101]
  l0:Input(2)
end
function export:en_20()
  local l0
  l0 = self[20]
  l0.ConvoyId = self.convoyID
end
function export:ConvoyStopped()
end
function export:VIPDied()
end
function export:Out()
end
function export:NPCsUnassigned()
end
function export:DestinationReached()
end
function export:VipVehicleDestroyed()
end
function export:ConvoyStuck()
end
function export:ConvoyAggroNotPlayer()
end
function export:ConvoyStarted()
end
function export:Started()
end
function export:ConvoyAggro()
end
function export:Prepped()
end
_compilerVersion = 4
