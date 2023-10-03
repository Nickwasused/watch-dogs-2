export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/System/FelonyTargetController.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlayerProximityMonitor.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/VehicleLightAndSiren_v2.lua")
  cbox:RegisterBox("domino/System/TestIfNil.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/VehicleBhvMonitor.lua")
  cbox:RegisterBox("domino/System/VehicleBhvController.lua")
  cbox:RegisterBox("domino/System/VehicleSeatingController.lua")
end
function export:Init(cbox)
  local l0
  self.PoliceMan = nil
  self.PoliceCar = nil
  self.Player = nil
  self.PlayerEntity = nil
  self.Adopt = 0
  self.UsersList = {}
  self.Vehicle = nil
  self[8] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[8]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_8_Out
  self[17] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[17]
  l0._graph = self
  l0.Out = self.f_17_Out
  l0.SetTrue = self.f_17_SetTrue
  l0.SetFalse = self.f_17_SetFalse
  l0.Toggled = self.f_17_Toggled
  l0.SetFromBool = self.f_17_SetFromBool
  self[14] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[14]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_14_Out
  self[7] = cbox:CreateBox("domino/System/VehicleBhvController.lua")
  l0 = self[7]
  l0._graph = self
  l0.StartCompleted = self.f_7_StartCompleted
  l0.StopCompleted = self.f_7_StopCompleted
  l0.ForcedFakeFollow = DummyFunction
  self[12] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[12]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_12_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[1] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[1]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[21] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[21]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_21_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[26] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[26]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_26_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[20] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[20]
  l0._graph = self
  l0._DynamicAnchors = {In = 3}
  l0.Out = self.f_20_Out
  l0.ResetOut = DummyFunction
  self[18] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[18]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_18_Out
  self[11] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[11]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_11_OnUserInPlace
  self[23] = cbox:CreateBox("domino/System/VehicleBhvMonitor.lua")
  l0 = self[23]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = self.f_23_Enabled
  l0.Disabled = DummyFunction
  l0.Stuck = DummyFunction
  l0.Broken = DummyFunction
  l0.TargetDetected = DummyFunction
  l0.InLOS = DummyFunction
  l0.ReacquireLOSTimerExpired = DummyFunction
  l0.LostLOSTimerExpired = DummyFunction
  l0.SuspiciousTargetAction = DummyFunction
  l0.SpecificPathPointReached = DummyFunction
  l0.PathPointReached = DummyFunction
  l0.EndPathPointReached = self.f_23_EndPathPointReached
  l0.InRange = DummyFunction
  l0.WarningRange = DummyFunction
  l0.OutsideRange = DummyFunction
  l0.OutsideTimerExpired = DummyFunction
  self[6] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[6]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_6_OnUserInPlace
  self[25] = cbox:CreateBox("domino/System/PlayerProximityMonitor.lua")
  l0 = self[25]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_25_Disabled
  l0.EnterRadius = self.f_25_EnterRadius
  l0.ExitRadius = DummyFunction
  l0.RCEnterRadius = DummyFunction
  l0.RCExitRadius = DummyFunction
  self[9] = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self[9]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_9_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self[15] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[15]
  l0._graph = self
  l0.Out = self.f_15_Out
  l0.SetTrue = self.f_15_SetTrue
  l0.SetFalse = self.f_15_SetFalse
  l0.Toggled = self.f_15_Toggled
  l0.SetFromBool = self.f_15_SetFromBool
  self[16] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[16]
  l0._graph = self
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_16_Added
  l0.Removed = self.f_16_Removed
  l0.Out = self.f_16_Out
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:Start()
  local l0
  l0 = Boxes[PathID("domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = self.AdoptInFelony
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_4_Is_nil
  l0.Is_not_nil = self.f_4_Is_not_nil
  l0:In()
end
function export:Stop()
  local l0
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Adopt
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_3_A_is_True
  l0.A_is_False = self.f_3_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_5_ChaseStarted()
  local l0
  self = self._graph
  self:en_5()
  l0 = Boxes[PathID("domino/System/FelonyTargetController.lua")]
  l0:AddScripted()
end
function export:f_5_ScriptedAgentsAdded()
  local l0
  self = self._graph
  self:en_5()
  l0 = Boxes[PathID("domino/System/FelonyTargetController.lua")]
  l0:AdoptScriptedAgents()
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = self[16]
  l0.Input = self.UsersList
  l0.Data[0] = self.PoliceMan
  l0.Data[1] = self.PoliceCar
  l0:Add()
end
function export:f_17_Out()
  local l0
  self = self._graph
  l0 = self[17]
  self.Adopt = l0.Target
end
function export:f_17_SetFalse()
  local l0
  self = self._graph
  l0 = self[17]
  self.Adopt = l0.Target
end
function export:f_17_SetFromBool()
  local l0
  self = self._graph
  l0 = self[17]
  self.Adopt = l0.Target
  l0 = self[18]
  l0:Input(1)
end
function export:f_17_SetTrue()
  local l0
  self = self._graph
  l0 = self[17]
  self.Adopt = l0.Target
end
function export:f_17_Toggled()
  local l0
  self = self._graph
  l0 = self[17]
  self.Adopt = l0.Target
end
function export:f_4_Is_nil()
  local l0
  self = self._graph
  l0 = self[15]
  l0:False()
end
function export:f_4_Is_not_nil()
  local l0
  self = self._graph
  l0 = self[17]
  l0.Bool = self.AdoptInFelony
  l0:FromBool()
end
function export:f_14_Out()
  local l0
  self = self._graph
  self:en_7()
  l0 = self[7]
  l0:Start()
end
function export:f_7_StartCompleted()
  local l0
  self = self._graph
  l0 = self[23]
  l0.Vehicle = self.PoliceCar
  l0:Enable()
end
function export:f_7_StopCompleted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Adopt
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_19_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_13_Is_nil()
  local l0
  self = self._graph
  l0 = self[14]
  l0:Input(0)
end
function export:f_13_Is_not_nil()
  local l0
  self = self._graph
  l0 = self[12]
  l0.Seconds = self.DelayBeforeSendingOnPath
  l0:Start()
end
function export:f_19_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_24_Out_0
  l0.Out[1] = self.f_24_Out_1
  l0:In()
end
function export:f_12_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[14]
  l0:Input(1)
end
function export:f_21_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[20]
  l0:In(1)
end
function export:f_26_TimeElapsed()
  local l0
  self = self._graph
  self:en_25()
  l0 = self[25]
  l0:Disable()
end
function export:f_20_Out()
  local l0
  self = self._graph
  self:en_5()
  l0 = Boxes[PathID("domino/System/FelonyTargetController.lua")]
  l0:StartChase()
end
function export:f_2_Out_0()
  local l0
  self = self._graph
  l0 = self[11]
  l0.CLO = self.CLO_PoliceMan
  l0.SpawnOutsideLoadingRing = 1
  l0:Activate()
end
function export:f_2_Out_1()
  local l0
  self = self._graph
  l0 = self[6]
  l0.CLO = self.CLO_PoliceCar
  l0.SpawnOutsideLoadingRing = 1
  l0:Activate()
end
function export:f_18_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_2_Out_0
  l0.Out[1] = self.f_2_Out_1
  l0:In()
end
function export:f_3_A_is_False()
  local l0
  self = self._graph
  l0 = self[1]
  l0.UserList = self.UsersList
  l0:UnspawnUser()
end
function export:f_3_A_is_True()
  local l0
  self = self._graph
  l0 = self[20]
  l0:In(0)
end
function export:f_11_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[11]
  self.PoliceMan = l0.UserID
  l0 = self[8]
  l0:Condition(0)
end
function export:f_23_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.PoliceCar
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = 1
  l0.FlasherOn = 1
  l0.FlasherSelection = nil
  l0.SpotlightOn = nil
  l0.SpotlightSelection = nil
  l0.SpotlightTarget = nil
  l0.SirenOn = 1
  l0._graph = self
  l0.Out = DummyFunction
  l0:SetLightsAndSiren()
end
function export:f_23_EndPathPointReached()
  local l0
  self = self._graph
  self:en_7()
  l0 = self[7]
  l0:Stop()
end
function export:f_6_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[6]
  self.PoliceCar = l0.UserID
  l0 = self[8]
  l0:Condition(1)
end
function export:f_24_Out_0()
  local l0
  self = self._graph
  l0 = self[21]
  l0.Seconds = self.DelayBeforeAdopt
  l0:Start()
end
function export:f_24_Out_1()
  local l0
  self = self._graph
  self:en_25()
  l0 = self[25]
  l0:Enable()
end
function export:f_25_Disabled()
  local l0
  self = self._graph
  l0 = self[20]
  l0:In(2)
end
function export:f_25_EnterRadius()
  local l0
  self = self._graph
  l0 = self[26]
  l0.Seconds = 3
  l0:Start()
end
function export:f_9_AssignCompleted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = self.DelayBeforeSendingOnPath
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_13_Is_nil
  l0.Is_not_nil = self.f_13_Is_not_nil
  l0:In()
end
function export:f_15_Out()
  local l0
  self = self._graph
  l0 = self[15]
  self.Adopt = l0.Target
  l0 = self[18]
  l0:Input(0)
end
function export:f_15_SetFalse()
  local l0
  self = self._graph
  l0 = self[15]
  self.Adopt = l0.Target
end
function export:f_15_SetFromBool()
  local l0
  self = self._graph
  l0 = self[15]
  self.Adopt = l0.Target
end
function export:f_15_SetTrue()
  local l0
  self = self._graph
  l0 = self[15]
  self.Adopt = l0.Target
end
function export:f_15_Toggled()
  local l0
  self = self._graph
  l0 = self[15]
  self.Adopt = l0.Target
end
function export:f_16_Added()
  local l0
  self = self._graph
  l0 = self[16]
  self.UsersList = l0.Target
  l0 = self[9]
  l0.Vehicle = self.PoliceCar
  l0.Pawn = self.PoliceMan
  l0.Seat = "Driver"
  l0:Assign()
end
function export:f_16_Out()
  local l0
  self = self._graph
  l0 = self[16]
  self.UsersList = l0.Target
end
function export:f_16_Removed()
  local l0
  self = self._graph
  l0 = self[16]
  self.UsersList = l0.Target
end
function export:en_5()
  local l0
  l0 = Boxes[PathID("domino/System/FelonyTargetController.lua")]
  l0.Target = nil
  l0.FelonyType = nil
  l0.HeatValue = nil
  l0.FelonyLevel = nil
  l0.ScanSkipDispatchBark = nil
  l0.CustomScanIndex = nil
  l0.CustomScanDetectionRate = nil
  l0.CustomScanTriggerChase = nil
  l0.CustomChaseLevel = "ChaseLevelParameters.9223372068194800362"
  l0.AgentList = self.UsersList
  l0.RemoveAgentRestrictions = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.MinHeatSet = DummyFunction
  l0.ScanStarted = DummyFunction
  l0.ChaseStarted = self.f_5_ChaseStarted
  l0.SearchStarted = DummyFunction
  l0.ScriptedAgentsAdded = self.f_5_ScriptedAgentsAdded
  l0.ScriptedAgentsAdopted = DummyFunction
end
function export:en_7()
  local l0
  l0 = self[7]
  l0.VehicleMaster = self.PoliceCar
  l0.VehicleTarget = self.PlayerForCopsThing
  l0.PathOrPos = self.Path
  l0.Config = "VehicleBhvSetup.9223372052817546866"
  l0.StopAtEndPoint = 1
end
function export:en_25()
  local l0
  l0 = self[25]
  l0.TargetEntity = self.PoliceCar
  l0.Radius = 30
  l0.CheckNow = 1
end
_compilerVersion = 4
