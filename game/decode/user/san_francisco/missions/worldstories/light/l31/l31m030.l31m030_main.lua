export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CompareEntity_v2.lua")
  cbox:RegisterBox("domino/System/CompareFloats_v2.lua")
  cbox:RegisterBox("domino/System/ConvoyController.lua")
  cbox:RegisterBox("domino/System/ConvoyMonitor.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Download_Gameplay.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Escape_Gameplay.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Reach_Gameplay.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PawnHealthMonitor_v3.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/ProximityMonitor.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/FleeBehaviorController.lua")
  cbox:RegisterBox("domino/System/UnspawnController.lua")
  cbox:RegisterBox("domino/System/VehicleSeatingController.lua")
  cbox:RegisterBox("domino/System/VehicleSeatingMonitor.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.FirstConvoy = 0
  self.SecondConvoy = 0
  self.CFO = "25"
  self.CFOcar = nil
  self.CEO = nil
  self.CEOcar = nil
  self.Instigator = nil
  self[87] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[87]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_87_Out
  self[55] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[55]
  l0._graph = self
  l0.Out = DummyFunction
  l0.MessageCompleted = self.f_55_MessageCompleted
  self[49] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[49]
  l0._graph = self
  l0.Out = self.f_49_Out
  l0.MessageCompleted = DummyFunction
  self[5] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[5]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_5_Out
  self[67] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[67]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_67_Out
  self[33] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[33]
  l0._graph = self
  l0.Out = self.f_33_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[82] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[82]
  l0._graph = self
  l0._DynamicAnchors = {In = 3}
  l0.Out = self.f_82_Out
  l0.ResetOut = DummyFunction
  self[34] = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self[34]
  l0._graph = self
  l0.Assigned = self.f_34_Assigned
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = DummyFunction
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self[39] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[39]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_39_OnUserInPlace
  self[76] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[76]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_76_PostOut
  self[8] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[8]
  l0._graph = self
  l0.Out = self.f_8_Out
  l0.MessageCompleted = DummyFunction
  self[45] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[45]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_45_PostOut
  self[62] = cbox:CreateBox("domino/System/PawnHealthMonitor_v3.lua")
  l0 = self[62]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Damaged = DummyFunction
  l0.Killed = DummyFunction
  l0.DBNO = DummyFunction
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = self.f_62_HealthChecked
  self[80] = cbox:CreateBox("domino/System/ConvoyMonitor.lua")
  l0 = self[80]
  l0._graph = self
  l0.Enabled = self.f_80_Enabled
  l0.Disabled = self.f_80_Disabled
  l0.StartMoving = DummyFunction
  l0.DestinationReached = DummyFunction
  l0.VIPDied = self.f_80_VIPDied
  l0.VIPVehicleDestroyed = self.f_80_VIPVehicleDestroyed
  l0.VIPHijacked = self.f_80_VIPHijacked
  l0.EscortDied = self.f_80_EscortDied
  l0.EscortVehicleDestroyed = self.f_80_EscortVehicleDestroyed
  l0.EscortHijacked = self.f_80_EscortHijacked
  l0.ConvoyStuck = self.f_80_ConvoyStuck
  l0.ConvoyStopped = self.f_80_ConvoyStopped
  l0.HardDisturbance = self.f_80_HardDisturbance
  l0.SoftDisturbance = self.f_80_SoftDisturbance
  self[44] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[44]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_44_OnUserInPlace
  self[70] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[70]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_70_Out
  self[9] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Reach_Gameplay.lua")
  l0 = self[9]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_9_Stopped
  l0.Reached = self.f_9_Reached
  self[53] = cbox:CreateBox("domino/Library/common/MissionIngredients.Escape_Gameplay.lua")
  l0 = self[53]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Escaped = self.f_53_Escaped
  l0.LeftArea = DummyFunction
  self[36] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[36]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_36_OnUserInPlace
  self[94] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[94]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_94_Out
  self[48] = cbox:CreateBox("domino/Library/common/MissionIngredients.Download_Gameplay.lua")
  l0 = self[48]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_48_Stopped
  l0.DownloadCompleted = self.f_48_DownloadCompleted
  l0.Ratio1Reached = DummyFunction
  l0.Ratio1Reached_PostReset = DummyFunction
  l0.Ratio2Reached = DummyFunction
  l0.Ratio2Reached_PostReset = DummyFunction
  l0.CustomRatioReached = self.f_48_CustomRatioReached
  l0.CustomRatioReached_PostReset = DummyFunction
  l0.PauseRatioReached = DummyFunction
  l0.PauseRatioReached_PostReset = DummyFunction
  self[47] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[47]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_47_Out
  self[35] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[35]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_35_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[4] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[4]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_4_Out
  self[6] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[6]
  l0._graph = self
  l0.Loaded = self.f_6_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[60] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[60]
  l0._graph = self
  l0.Out = self.f_60_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[51] = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self[51]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_51_Disabled
  l0.EnterRadius = DummyFunction
  l0.ExitRadius = self.f_51_ExitRadius
  self[85] = cbox:CreateBox("domino/System/PawnHealthMonitor_v3.lua")
  l0 = self[85]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Damaged = DummyFunction
  l0.Killed = DummyFunction
  l0.DBNO = DummyFunction
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = self.f_85_HealthChecked
  self[79] = cbox:CreateBox("domino/Library/common/MissionIngredients.Download_Gameplay.lua")
  l0 = self[79]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_79_Stopped
  l0.DownloadCompleted = self.f_79_DownloadCompleted
  l0.Ratio1Reached = DummyFunction
  l0.Ratio1Reached_PostReset = DummyFunction
  l0.Ratio2Reached = DummyFunction
  l0.Ratio2Reached_PostReset = DummyFunction
  l0.CustomRatioReached = self.f_79_CustomRatioReached
  l0.CustomRatioReached_PostReset = DummyFunction
  l0.PauseRatioReached = DummyFunction
  l0.PauseRatioReached_PostReset = DummyFunction
  self[42] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[42]
  l0._graph = self
  l0.StartCommunicationOut = self.f_42_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[2] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[2]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_2_Out
  self[71] = cbox:CreateBox("domino/System/UnspawnController.lua")
  l0 = self[71]
  l0._graph = self
  l0.EntityUnspawned = self.f_71_EntityUnspawned
  l0.AutomaticCLOUnspawned = DummyFunction
  l0.NpcSentToUnspawn = DummyFunction
  l0.NpcUnspawned = DummyFunction
  self[56] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[56]
  l0._graph = self
  self[54] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[54]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_54_Unloaded
  l0.Reseted = DummyFunction
  self[10] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Reach_Gameplay.lua")
  l0 = self[10]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_10_Stopped
  l0.Reached = self.f_10_Reached
  self[69] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[69]
  l0._graph = self
  l0._DynamicAnchors = {In = 3}
  l0.Out = self.f_69_Out
  l0.ResetOut = DummyFunction
  self[64] = cbox:CreateBox("domino/System/ConvoyMonitor.lua")
  l0 = self[64]
  l0._graph = self
  l0.Enabled = self.f_64_Enabled
  l0.Disabled = self.f_64_Disabled
  l0.StartMoving = DummyFunction
  l0.DestinationReached = DummyFunction
  l0.VIPDied = self.f_64_VIPDied
  l0.VIPVehicleDestroyed = self.f_64_VIPVehicleDestroyed
  l0.VIPHijacked = self.f_64_VIPHijacked
  l0.EscortDied = self.f_64_EscortDied
  l0.EscortVehicleDestroyed = self.f_64_EscortVehicleDestroyed
  l0.EscortHijacked = self.f_64_EscortHijacked
  l0.ConvoyStuck = self.f_64_ConvoyStuck
  l0.ConvoyStopped = self.f_64_ConvoyStopped
  l0.HardDisturbance = self.f_64_HardDisturbance
  l0.SoftDisturbance = self.f_64_SoftDisturbance
  self[38] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[38]
  l0._graph = self
  l0.Out = self.f_38_Out
  l0.MessageCompleted = DummyFunction
  self[58] = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self[58]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = DummyFunction
  l0.UnassignCompleted = self.f_58_UnassignCompleted
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self[75] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[75]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_75_OnUserInPlace
  self[32] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[32]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_32_OnUserInPlace
  self[46] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[46]
  l0._graph = self
  l0.Loaded = self.f_46_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[52] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[52]
  l0._graph = self
  l0.Out = self.f_52_Out
  l0.MessageCompleted = DummyFunction
  self[37] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[37]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_37_OnUserInPlace
  self[11] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[11]
  l0._graph = self
  l0.Out = self.f_11_Out
  l0.MessageCompleted = DummyFunction
  self[77] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[77]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_77_Out
  self[78] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[78]
  l0._graph = self
  l0.Out = DummyFunction
  l0.MessageCompleted = self.f_78_MessageCompleted
  self[41] = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self[41]
  l0._graph = self
  l0.Assigned = self.f_41_Assigned
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = DummyFunction
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self[59] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[59]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_59_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[74] = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self[74]
  l0._graph = self
  l0.Assigned = self.f_74_Assigned
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = DummyFunction
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self[95] = cbox:CreateBox("domino/System/UnspawnController.lua")
  l0 = self[95]
  l0._graph = self
  l0.EntityUnspawned = DummyFunction
  l0.AutomaticCLOUnspawned = DummyFunction
  l0.NpcSentToUnspawn = DummyFunction
  l0.NpcUnspawned = DummyFunction
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
  l0 = self[47]
  l0:Input(1)
end
function export:CheckPoint_1()
  local l0
  l0 = self[6]
  l0.LayerName = "L31M030_Main"
  l0:Load()
end
function export:In()
  local l0
  l0 = self[47]
  l0:Input(0)
end
function export:f_87_Out()
  local l0
  self = self._graph
  self:en_81()
  l0 = Boxes[PathID("domino/System/ConvoyController.lua")]
  l0:Stop()
end
function export:f_55_MessageCompleted()
  local l0
  self = self._graph
  l0 = self[59]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372052611639475"
  l0:StartCommunication()
end
function export:f_49_Out()
  local l0
  self = self._graph
  l0 = self[42]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372052611639476"
  l0:StartCommunication()
end
function export:f_5_Out()
  local l0
  self = self._graph
  l0 = self[82]
  l0:In(1)
end
function export:f_67_Out()
  local l0
  self = self._graph
  l0 = self[69]
  l0:In(1)
end
function export:f_7_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[32]
  l0.CLO = "9223372049784711209"
  l0.SpawnOutsideLoadingRing = 1
  l0:Activate()
end
function export:f_33_Out()
  local l0
  self = self._graph
  l0 = self[35]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357373739"
  l0:StartCommunication()
end
function export:f_82_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_91_Out
  l0:In()
end
function export:f_3_Out()
  local l0
  self = self._graph
  l0 = self[87]
  l0:Input(0)
end
function export:f_84_Equal()
  local l0
  self = self._graph
  l0 = self[82]
  l0:In(2)
end
function export:f_34_Assigned()
  local l0
  self = self._graph
  l0 = self[77]
  l0:Input(1)
end
function export:f_39_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[39]
  self.CEOcar = l0.UserID
  l0 = self[34]
  l0.Vehicle = self.CEOcar
  l0.Pawn = self.CEO
  l0.Seat = "Driver"
  l0:Assign()
end
function export:f_76_PostOut()
  local l0
  self = self._graph
  l0 = self[77]
  l0:Input(0)
end
function export:f_8_Out()
  local l0
  self = self._graph
  self:en_48()
  l0 = self[48]
  l0:Start()
end
function export:f_45_PostOut()
  local l0
  self = self._graph
  l0 = self[33]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_81_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ConvoyController.lua")]
  self.SecondConvoy = l0.OutConvoyId
  self:en_80()
  l0 = self[80]
  l0:Enable()
end
function export:f_81_Stopped()
  local l0
  self = self._graph
  self:en_80()
  l0 = self[80]
  l0:Disable()
end
function export:f_62_HealthChecked()
  local l0, l1
  self = self._graph
  l0 = self[62]
  l1 = Boxes[PathID("domino/System/CompareFloats_v2.lua")]
  l1.A = l0.Health
  l1.B = 0
  l1.Tolerance = 0
  l1._graph = self
  l1.Out = DummyFunction
  l1.A_lt_B = DummyFunction
  l1.A_le_B = DummyFunction
  l1.A_eq_B = DummyFunction
  l1.A_ge_B = DummyFunction
  l1.A_gt_B = self.f_73_A_gt_B
  l1.A_ne_B = DummyFunction
  l1:In()
end
function export:f_80_ConvoyStopped()
  local l0
  self = self._graph
  l0 = self[80]
  self.Instigator = l0.Instigator
end
function export:f_80_ConvoyStuck()
  local l0
  self = self._graph
  l0 = self[5]
  l0:Input(1)
end
function export:f_80_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FleeBehaviorController.lua")]
  l0.Target = self.CEO
  l0.TargetList = nil
  l0.Destination = nil
  l0.Threat = self.PlayerEntity
  l0.Config = "FleeBehaviorDescriptor.9223372049386602256"
  l0.Vehicle = self.CEOcar
  l0._graph = self
  l0.Started = DummyFunction
  l0.Updated = DummyFunction
  l0.Stopped = DummyFunction
  l0:Start()
end
function export:f_80_Enabled()
  local l0
  self = self._graph
  self:en_10()
  l0 = self[10]
  l0:Start()
end
function export:f_80_EscortDied()
  local l0
  self = self._graph
  l0 = self[80]
  self.Instigator = l0.Instigator
end
function export:f_80_EscortHijacked()
  local l0
  self = self._graph
  l0 = self[80]
  self.Instigator = l0.Instigator
end
function export:f_80_EscortVehicleDestroyed()
  local l0
  self = self._graph
  l0 = self[80]
  self.Instigator = l0.Instigator
end
function export:f_80_HardDisturbance()
  local l0
  self = self._graph
  l0 = self[80]
  self.Instigator = l0.Instigator
  l0 = self[4]
  l0:Input(0)
end
function export:f_80_SoftDisturbance()
  local l0
  self = self._graph
  l0 = self[80]
  self.Instigator = l0.Instigator
  l0 = self[4]
  l0:Input(1)
end
function export:f_80_VIPDied()
  local l0
  self = self._graph
  l0 = self[80]
  self.Instigator = l0.Instigator
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_3_Out
  l0:In()
end
function export:f_80_VIPHijacked()
  local l0
  self = self._graph
  l0 = self[80]
  self.Instigator = l0.Instigator
end
function export:f_80_VIPVehicleDestroyed()
  local l0
  self = self._graph
  l0 = self[80]
  self.Instigator = l0.Instigator
  l0 = self[5]
  l0:Input(0)
end
function export:f_50_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ConvoyController.lua")]
  self.FirstConvoy = l0.OutConvoyId
  self:en_64()
  l0 = self[64]
  l0:Enable()
end
function export:f_50_Stopped()
  local l0
  self = self._graph
  self:en_64()
  l0 = self[64]
  l0:Disable()
end
function export:f_93_Out()
  local l0
  self = self._graph
  l0 = self[87]
  l0:Input(1)
end
function export:f_44_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[44]
  self.CFO = l0.UserID
  l0 = self[37]
  l0.CLO = "9223372049784711207"
  l0.SpawnOutsideLoadingRing = 1
  l0:Activate()
end
function export:f_70_Out()
  local l0
  self = self._graph
  self:en_50()
  l0 = Boxes[PathID("domino/System/ConvoyController.lua")]
  l0:Stop()
end
function export:f_92_Out()
  local l0
  self = self._graph
  l0 = self[94]
  l0:Input(1)
end
function export:f_89_A_gt_B()
  local l0
  self = self._graph
  l0 = self[82]
  l0:In(0)
end
function export:f_9_Reached()
  local l0
  self = self._graph
  self:en_9()
  l0 = self[9]
  l0:Stop()
end
function export:f_9_Stopped()
  local l0
  self = self._graph
  l0 = self[8]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L31.L31M030.Objectives.Objective011",
    item = "Objective",
    id = "646618"
  }
  l0:ShowNewObjective()
end
function export:f_61_Equal()
  local l0
  self = self._graph
  l0 = self[69]
  l0:In(2)
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = self[70]
  l0:Input(0)
end
function export:f_53_Escaped()
  local l0
  self = self._graph
  l0 = self[55]
  l0:ShowMissionComplete()
end
function export:f_36_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[36]
  self.CEO = l0.UserID
  l0 = self[39]
  l0.CLO = "9223372049784711210"
  l0.SpawnOutsideLoadingRing = 1
  l0:Activate()
end
function export:f_94_Out()
  local l0
  self = self._graph
  l0 = self[71]
  l0.Entity = self.CFO
  l0:UnspawnEntity()
end
function export:f_48_CustomRatioReached()
  local l0
  self = self._graph
  l0 = self[62]
  l0.Pawn = self.CFO
  l0:CheckHealth()
end
function export:f_48_DownloadCompleted()
  local l0
  self = self._graph
  self:en_48()
  l0 = self[48]
  l0:Stop()
end
function export:f_48_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_72_Out_0
  l0.Out[1] = self.f_72_Out_1
  l0:In()
end
function export:f_47_Out()
  local l0
  self = self._graph
  l0 = self[46]
  l0.LayerName = "L31M030_Main"
  l0:Load()
end
function export:f_35_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[38]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L31.L31M030.Objectives.Objective013",
    item = "Objective",
    id = "697688"
  }
  l0:ShowNewObjective()
end
function export:f_4_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  l0.Entity1 = self.Instigator
  l0.Entity2 = self.PlayerEntity
  l0._graph = self
  l0.Out = DummyFunction
  l0.Equal = self.f_84_Equal
  l0.NotEqual = DummyFunction
  l0:In()
end
function export:f_6_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_7_Out
  l0:In()
end
function export:f_60_Out()
  local l0
  self = self._graph
  self:en_81()
  l0 = Boxes[PathID("domino/System/ConvoyController.lua")]
  l0:Start()
end
function export:f_51_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleSeatingMonitor.lua")]
  l0.Pawn = self.CFO
  l0.Vehicle = nil
  l0._graph = self
  l0.EntityIsInVehicle = self.f_57_EntityIsInVehicle
  l0.EntityIsNotInVehicle = self.f_57_EntityIsNotInVehicle
  l0.VehicleIsEmpty = DummyFunction
  l0.VehicleIsNotEmpty = DummyFunction
  l0:IsInVehicle()
end
function export:f_51_ExitRadius()
  local l0
  self = self._graph
  self:en_51()
  l0 = self[51]
  l0:Disable()
end
function export:f_85_HealthChecked()
  local l0, l1
  self = self._graph
  l0 = self[85]
  l1 = Boxes[PathID("domino/System/CompareFloats_v2.lua")]
  l1.A = l0.Health
  l1.B = 0
  l1.Tolerance = 0
  l1._graph = self
  l1.Out = DummyFunction
  l1.A_lt_B = DummyFunction
  l1.A_le_B = DummyFunction
  l1.A_eq_B = DummyFunction
  l1.A_ge_B = DummyFunction
  l1.A_gt_B = self.f_89_A_gt_B
  l1.A_ne_B = DummyFunction
  l1:In()
end
function export:f_79_CustomRatioReached()
  local l0
  self = self._graph
  l0 = self[85]
  l0.Pawn = self.CEO
  l0:CheckHealth()
end
function export:f_79_DownloadCompleted()
  local l0
  self = self._graph
  self:en_79()
  l0 = self[79]
  l0:Stop()
end
function export:f_79_Stopped()
  local l0
  self = self._graph
  l0 = self[52]
  l0.Objective = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Escape",
    id = "267211"
  }
  l0:ShowNewObjective()
end
function export:f_42_StartCommunicationOut()
  local l0
  self = self._graph
  l0 = self[36]
  l0.CLO = "9223372049784711209"
  l0.SpawnOutsideLoadingRing = 1
  l0:Activate()
end
function export:f_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  l0.Entity1 = self.Instigator
  l0.Entity2 = self.PlayerEntity
  l0._graph = self
  l0.Out = DummyFunction
  l0.Equal = self.f_61_Equal
  l0.NotEqual = DummyFunction
  l0:In()
end
function export:f_71_EntityUnspawned()
  local l0
  self = self._graph
  l0 = self[95]
  l0.Entity = self.CFOcar
  l0:UnspawnEntity()
end
function export:f_40_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_63_Out
  l0:In()
end
function export:f_54_Unloaded()
  local l0
  self = self._graph
  l0 = self[56]
  l0:Succeed()
end
function export:f_10_Reached()
  local l0
  self = self._graph
  self:en_10()
  l0 = self[10]
  l0:Stop()
end
function export:f_10_Stopped()
  local l0
  self = self._graph
  l0 = self[11]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L31.L31M030.Objectives.Objective012",
    item = "Objective",
    id = "646619"
  }
  l0:ShowNewObjective()
end
function export:f_69_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_40_Out
  l0:In()
end
function export:f_63_Out()
  local l0
  self = self._graph
  l0 = self[70]
  l0:Input(1)
end
function export:f_64_ConvoyStopped()
  local l0
  self = self._graph
  l0 = self[64]
  self.Instigator = l0.Instigator
end
function export:f_64_ConvoyStuck()
  local l0
  self = self._graph
  l0 = self[67]
  l0:Input(1)
end
function export:f_64_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FleeBehaviorController.lua")]
  l0.Target = self.CFO
  l0.TargetList = nil
  l0.Destination = nil
  l0.Threat = self.PlayerEntity
  l0.Config = "FleeBehaviorDescriptor.9223372049386602256"
  l0.Vehicle = self.CFOcar
  l0._graph = self
  l0.Started = DummyFunction
  l0.Updated = DummyFunction
  l0.Stopped = DummyFunction
  l0:Start()
end
function export:f_64_Enabled()
  local l0
  self = self._graph
  self:en_9()
  l0 = self[9]
  l0:Start()
end
function export:f_64_EscortDied()
  local l0
  self = self._graph
  l0 = self[64]
  self.Instigator = l0.Instigator
end
function export:f_64_EscortHijacked()
  local l0
  self = self._graph
  l0 = self[64]
  self.Instigator = l0.Instigator
end
function export:f_64_EscortVehicleDestroyed()
  local l0
  self = self._graph
  l0 = self[64]
  self.Instigator = l0.Instigator
end
function export:f_64_HardDisturbance()
  local l0
  self = self._graph
  l0 = self[64]
  self.Instigator = l0.Instigator
  l0 = self[2]
  l0:Input(0)
end
function export:f_64_SoftDisturbance()
  local l0
  self = self._graph
  l0 = self[64]
  self.Instigator = l0.Instigator
  l0 = self[2]
  l0:Input(1)
end
function export:f_64_VIPDied()
  local l0
  self = self._graph
  l0 = self[64]
  self.Instigator = l0.Instigator
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:In()
end
function export:f_64_VIPHijacked()
  local l0
  self = self._graph
  l0 = self[64]
  self.Instigator = l0.Instigator
end
function export:f_64_VIPVehicleDestroyed()
  local l0
  self = self._graph
  l0 = self[64]
  self.Instigator = l0.Instigator
  l0 = self[67]
  l0:Input(0)
end
function export:f_38_Out()
  local l0
  self = self._graph
  self:en_50()
  l0 = Boxes[PathID("domino/System/ConvoyController.lua")]
  l0:Start()
end
function export:f_58_UnassignCompleted()
  local l0
  self = self._graph
  l0 = self[94]
  l0:Input(0)
end
function export:f_75_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[75]
  self.CEOcar = l0.UserID
  l0 = self[74]
  l0.Vehicle = self.CEOcar
  l0.Pawn = self.CEO
  l0.Seat = "Driver"
  l0:Assign()
end
function export:f_72_Out_0()
  local l0
  self = self._graph
  l0 = self[49]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L31.L31M030.Objectives.Objective014",
    item = "Objective",
    id = "697689"
  }
  l0:ShowNewObjective()
end
function export:f_72_Out_1()
  local l0
  self = self._graph
  self:en_51()
  l0 = self[51]
  l0:Enable()
end
function export:f_32_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[32]
  self.CEO = l0.UserID
  l0 = self[75]
  l0.CLO = "9223372049784711210"
  l0.SpawnOutsideLoadingRing = 1
  l0:Activate()
end
function export:f_73_A_gt_B()
  local l0
  self = self._graph
  l0 = self[69]
  l0:In(0)
end
function export:f_46_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_43_Out
  l0:In()
end
function export:f_52_Out()
  local l0
  self = self._graph
  l0 = self[53]
  l0.Entity = self.CEO
  l0.Entity_AreaRadius = 150
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Escape",
    id = "267211"
  }
  l0.EscapeFelonyLocID = {
    section = "MISSIONS.COMMON.MESSAGES.OBJECTIVE",
    item = "Objective_Escape",
    id = "693233"
  }
  l0:Start()
end
function export:f_37_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[37]
  self.CFOcar = l0.UserID
  l0 = self[41]
  l0.Vehicle = self.CFOcar
  l0.Pawn = self.CFO
  l0.Seat = "Driver"
  l0:Assign()
end
function export:f_43_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[44]
  l0.CLO = "9223372049784711208"
  l0.SpawnOutsideLoadingRing = 1
  l0:Activate()
end
function export:f_11_Out()
  local l0
  self = self._graph
  self:en_79()
  l0 = self[79]
  l0:Start()
end
function export:f_77_Out()
  local l0
  self = self._graph
  l0 = self[60]
  l0.Checkpoint = "CheckPoint_1"
  l0:In()
end
function export:f_78_MessageCompleted()
  local l0
  self = self._graph
  l0 = self[76]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_41_Assigned()
  local l0
  self = self._graph
  l0 = self[45]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_91_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_93_Out
  l0:In()
end
function export:f_57_EntityIsInVehicle()
  local l0
  self = self._graph
  l0 = self[58]
  l0.Pawn = self.CFO
  l0:Unassign()
end
function export:f_57_EntityIsNotInVehicle()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_92_Out
  l0:In()
end
function export:f_59_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[54]
  l0.LayerName = "L31M030_Main"
  l0:Unload()
end
function export:f_74_Assigned()
  local l0
  self = self._graph
  l0 = self[78]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L31.L31M030.Objectives.Objective012",
    item = "Objective",
    id = "646619"
  }
  l0:ShowNewObjective()
end
function export:en_81()
  local l0
  l0 = Boxes[PathID("domino/System/ConvoyController.lua")]
  l0.Destination = "9223372049921027694"
  l0.VIPCharacter = self.CEO
  l0.VIPVehicle = self.CEOcar
  l0.EscortCharacters = nil
  l0.EscortVehicles = nil
  l0.ConvoyConfig = "ConvoyConfig.9223372067786720155"
  l0.ObjectiveText = nil
  l0.InConvoyId = self.SecondConvoy
  l0._graph = self
  l0.Started = self.f_81_Started
  l0.Updated = DummyFunction
  l0.Stopped = self.f_81_Stopped
end
function export:en_80()
  local l0
  l0 = self[80]
  l0.ConvoyId = self.SecondConvoy
end
function export:en_50()
  local l0
  l0 = Boxes[PathID("domino/System/ConvoyController.lua")]
  l0.Destination = "9223372049921027510"
  l0.VIPCharacter = self.CFO
  l0.VIPVehicle = self.CFOcar
  l0.EscortCharacters = nil
  l0.EscortVehicles = nil
  l0.ConvoyConfig = "ConvoyConfig.9223372067786720155"
  l0.ObjectiveText = nil
  l0.InConvoyId = self.FirstConvoy
  l0._graph = self
  l0.Started = self.f_50_Started
  l0.Updated = DummyFunction
  l0.Stopped = self.f_50_Stopped
end
function export:en_9()
  local l0
  l0 = self[9]
  l0.Entity = self.CFO
  l0.Entity_AreaRadius = 25
  l0.AutoGPS = 0
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
end
function export:en_48()
  local l0
  l0 = self[48]
  l0.TargetEntity = self.CFO
  l0.LinkedObjective = "Objective"
  l0.Duration = 60
  l0.DownloadingText = {
    section = "HACKING.Interface Messages",
    item = "RetrievingData",
    id = "132264"
  }
  l0.DownloadingPausedText = {
    section = "HACKING.Interface Messages",
    item = "ConnectionLost",
    id = "5905"
  }
  l0.CustomRatio = 0.2
  l0.DetectionOnCustomRatio = 0
  l0.DownloadPauseRatio = 0.5
  l0.DownloadPauseDuration = -1
  l0.FleeOnDownloadDetected = 0
  l0.Affiliation = "SFPD"
  l0.AutoDetectDownload = 0
end
function export:en_51()
  local l0
  l0 = self[51]
  l0.Entity1 = self.PlayerEntity
  l0.Entity2 = self.CFO
  l0.Radius = 200
end
function export:en_79()
  local l0
  l0 = self[79]
  l0.TargetEntity = self.CEO
  l0.LinkedObjective = "Objective"
  l0.Duration = 60
  l0.DownloadingText = {
    section = "HACKING.Interface Messages",
    item = "RetrievingData",
    id = "132264"
  }
  l0.DownloadingPausedText = {
    section = "HACKING.Interface Messages",
    item = "ConnectionLost",
    id = "5905"
  }
  l0.CustomRatio = 0.2
  l0.DetectionOnCustomRatio = 0
  l0.DownloadPauseRatio = 0.5
  l0.DownloadPauseDuration = -1
  l0.FleeOnDownloadDetected = 0
  l0.Affiliation = "SFPD"
  l0.AutoDetectDownload = 0
end
function export:en_10()
  local l0
  l0 = self[10]
  l0.Entity = self.CEO
  l0.Entity_AreaRadius = 25
  l0.AutoGPS = 0
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
end
function export:en_64()
  local l0
  l0 = self[64]
  l0.ConvoyId = self.FirstConvoy
end
_compilerVersion = 4
