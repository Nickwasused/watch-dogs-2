export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AssignPatrol_v2.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PatrolPointMonitor_v2.lua")
  cbox:RegisterBox("domino/System/VehicleBhvMonitor.lua")
  cbox:RegisterBox("domino/System/VehicleBhvController.lua")
  cbox:RegisterBox("domino/System/VehicleSeatingController.lua")
end
function export:Init(cbox)
  local l0
  self.Player = nil
  self.car = nil
  self.ridaz1 = nil
  self.ridaz2 = nil
  self.cops1 = nil
  self.cops2 = nil
  self[21] = cbox:CreateBox("domino/System/PatrolPointMonitor_v2.lua")
  l0 = self[21]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_21_Disabled
  l0.SpecificPointReached = DummyFunction
  l0.CurrentPointReached = DummyFunction
  l0.EndPointReached = self.f_21_EndPointReached
  self[2] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Loaded = self.f_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[15] = cbox:CreateBox("domino/System/AssignPatrol_v2.lua")
  l0 = self[15]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Assigned = self.f_15_Assigned
  l0.Unassigned = DummyFunction
  l0.SpeedSet = DummyFunction
  l0.Aborted = DummyFunction
  l0.Failed = DummyFunction
  self[9] = cbox:CreateBox("domino/System/VehicleBhvMonitor.lua")
  l0 = self[9]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_9_Disabled
  l0.Stuck = DummyFunction
  l0.Broken = DummyFunction
  l0.TargetDetected = DummyFunction
  l0.InLOS = DummyFunction
  l0.ReacquireLOSTimerExpired = DummyFunction
  l0.LostLOSTimerExpired = DummyFunction
  l0.SuspiciousTargetAction = DummyFunction
  l0.SpecificPathPointReached = DummyFunction
  l0.PathPointReached = DummyFunction
  l0.EndPathPointReached = self.f_9_EndPathPointReached
  l0.InRange = DummyFunction
  l0.WarningRange = DummyFunction
  l0.OutsideRange = DummyFunction
  l0.OutsideTimerExpired = DummyFunction
  self[18] = cbox:CreateBox("domino/System/AssignPatrol_v2.lua")
  l0 = self[18]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Assigned = self.f_18_Assigned
  l0.Unassigned = DummyFunction
  l0.SpeedSet = DummyFunction
  l0.Aborted = DummyFunction
  l0.Failed = DummyFunction
  self[14] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[14]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_14_OnUserInPlace
  self[17] = cbox:CreateBox("domino/System/AssignPatrol_v2.lua")
  l0 = self[17]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Assigned = self.f_17_Assigned
  l0.Unassigned = DummyFunction
  l0.SpeedSet = DummyFunction
  l0.Aborted = DummyFunction
  l0.Failed = DummyFunction
  self[7] = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self[7]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_7_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self[23] = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self[23]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_23_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self[6] = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self[6]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_6_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self[22] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[22]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_22_Out
  self[8] = cbox:CreateBox("domino/System/VehicleBhvController.lua")
  l0 = self[8]
  l0._graph = self
  l0.StartCompleted = self.f_8_StartCompleted
  l0.StopCompleted = DummyFunction
  l0.ForcedFakeFollow = DummyFunction
  self[13] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[13]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_13_OnUserInPlace
  self[5] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[5]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_5_OnUserInPlace
  self[4] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[4]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_4_OnUserInPlace
  self[20] = cbox:CreateBox("domino/System/PatrolPointMonitor_v2.lua")
  l0 = self[20]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_20_Disabled
  l0.SpecificPointReached = DummyFunction
  l0.CurrentPointReached = DummyFunction
  l0.EndPointReached = self.f_20_EndPointReached
  self[24] = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self[24]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_24_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self[27] = cbox:CreateBox("domino/System/VehicleBhvController.lua")
  l0 = self[27]
  l0._graph = self
  l0.StartCompleted = DummyFunction
  l0.StopCompleted = DummyFunction
  l0.ForcedFakeFollow = DummyFunction
  self[12] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[12]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_12_Out
  self[26] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[26]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_26_Out
  self[10] = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self[10]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = DummyFunction
  l0.UnassignCompleted = self.f_10_UnassignCompleted
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self[16] = cbox:CreateBox("domino/System/AssignPatrol_v2.lua")
  l0 = self[16]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Assigned = self.f_16_Assigned
  l0.Unassigned = DummyFunction
  l0.SpeedSet = DummyFunction
  l0.Aborted = DummyFunction
  l0.Failed = DummyFunction
  self[3] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[3]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_3_OnUserInPlace
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
  l0 = self[2]
  l0.LayerName = "S09_M020_Main"
  l0:Load()
end
function export:f_25_Out_0()
  local l0
  self = self._graph
  l0 = self[23]
  l0.Vehicle = self.car
  l0.Pawn = self.cops1
  l0.UseAnimation = 1
  l0.Seat = "Driver"
  l0:Assign()
end
function export:f_25_Out_1()
  local l0
  self = self._graph
  l0 = self[24]
  l0.Vehicle = self.car
  l0.Pawn = self.cops2
  l0.UseAnimation = 1
  l0.Seat = "FrontPassenger"
  l0:Assign()
end
function export:f_21_Disabled()
  local l0
  self = self._graph
  l0 = self[22]
  l0:Condition(1)
end
function export:f_21_EndPointReached()
  local l0
  self = self._graph
  self:en_21()
  l0 = self[21]
  l0:Disable()
end
function export:f_2_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:In()
end
function export:f_15_Assigned()
  local l0
  self = self._graph
  l0 = self[16]
  l0.NPC = self.ridaz2
  l0.Patrol = "9223372060194631225"
  l0:Assign()
end
function export:f_9_Disabled()
  local l0
  self = self._graph
  l0 = self[10]
  l0.Vehicle = self.car
  l0:Unassign()
end
function export:f_9_EndPathPointReached()
  local l0
  self = self._graph
  self:en_9()
  l0 = self[9]
  l0:Disable()
end
function export:f_18_Assigned()
  local l0
  self = self._graph
  self:en_21()
  l0 = self[21]
  l0:Enable()
end
function export:f_14_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[14]
  self.cops2 = l0.UserID
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_11_Out_0
  l0.Out[1] = self.f_11_Out_1
  l0:In()
end
function export:f_17_Assigned()
  local l0
  self = self._graph
  self:en_20()
  l0 = self[20]
  l0:Enable()
end
function export:f_7_AssignCompleted()
  local l0
  self = self._graph
  l0 = self[12]
  l0:Condition(1)
end
function export:f_23_AssignCompleted()
  local l0
  self = self._graph
  l0 = self[26]
  l0:Condition(0)
end
function export:f_6_AssignCompleted()
  local l0
  self = self._graph
  l0 = self[12]
  l0:Condition(0)
end
function export:f_11_Out_0()
  local l0
  self = self._graph
  l0 = self[6]
  l0.Vehicle = self.car
  l0.Pawn = self.ridaz1
  l0.Seat = "Driver"
  l0:Assign()
end
function export:f_11_Out_1()
  local l0
  self = self._graph
  l0 = self[7]
  l0.Vehicle = self.car
  l0.Pawn = self.ridaz2
  l0.Seat = "FrontPassenger"
  l0:Assign()
end
function export:f_22_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_25_Out_0
  l0.Out[1] = self.f_25_Out_1
  l0:In()
end
function export:f_8_StartCompleted()
  local l0
  self = self._graph
  self:en_9()
  l0 = self[9]
  l0:Enable()
end
function export:f_13_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[13]
  self.cops1 = l0.UserID
  l0 = self[14]
  l0.CLO = "9223372060194631220"
  l0:Activate()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.Player = l0.PlayerID
  l0 = self[3]
  l0.CLO = "9223372060194631215"
  l0:Activate()
end
function export:f_5_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[5]
  self.ridaz2 = l0.UserID
  l0 = self[13]
  l0.CLO = "9223372060194631221"
  l0:Activate()
end
function export:f_4_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[4]
  self.ridaz1 = l0.UserID
  l0 = self[5]
  l0.CLO = "9223372060194631217"
  l0:Activate()
end
function export:f_20_Disabled()
  local l0
  self = self._graph
  l0 = self[22]
  l0:Condition(0)
end
function export:f_20_EndPointReached()
  local l0
  self = self._graph
  self:en_20()
  l0 = self[20]
  l0:Disable()
end
function export:f_24_AssignCompleted()
  local l0
  self = self._graph
  l0 = self[26]
  l0:Condition(1)
end
function export:f_12_Out()
  local l0
  self = self._graph
  l0 = self[8]
  l0.VehicleMaster = self.car
  l0.VehicleTarget = self.Player
  l0.PathOrPos = "9223372060194631219"
  l0.Config = "VehicleBhvSetup.9223372048779328408"
  l0:Start()
end
function export:f_26_Out()
  local l0
  self = self._graph
  l0 = self[27]
  l0.VehicleMaster = self.car
  l0.VehicleTarget = self.Player
  l0.Config = "VehicleBhvSetup.9223372048779328402"
  l0:Start()
end
function export:f_10_UnassignCompleted()
  local l0
  self = self._graph
  l0 = self[15]
  l0.NPC = self.ridaz1
  l0.Patrol = "9223372060194631223"
  l0:Assign()
end
function export:f_16_Assigned()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_19_Out_0
  l0.Out[1] = self.f_19_Out_1
  l0:In()
end
function export:f_19_Out_0()
  local l0
  self = self._graph
  l0 = self[17]
  l0.NPC = self.cops1
  l0.Patrol = "9223372060194631227"
  l0:Assign()
end
function export:f_19_Out_1()
  local l0
  self = self._graph
  l0 = self[18]
  l0.NPC = self.cops2
  l0.Patrol = "9223372060194631229"
  l0:Assign()
end
function export:f_3_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[3]
  self.car = l0.UserID
  l0 = self[4]
  l0.CLO = "9223372060194631216"
  l0:Activate()
end
function export:en_21()
  local l0
  l0 = self[21]
  l0.NPC = self.cops2
end
function export:en_9()
  local l0
  l0 = self[9]
  l0.Vehicle = self.car
end
function export:en_20()
  local l0
  l0 = self[20]
  l0.NPC = self.cops1
end
_compilerVersion = 4
