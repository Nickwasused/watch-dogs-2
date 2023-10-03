export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/GPS3DController.lua")
  cbox:RegisterBox("Domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/ForcePawnsVehicleStop.lua")
  cbox:RegisterBox("Domino/System/GetPlayerID.lua")
  cbox:RegisterBox("Domino/System/LogicGate_v2.lua")
  cbox:RegisterBox("Domino/System/MapPointController_v3.lua")
  cbox:RegisterBox("Domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/ProximityMonitor.lua")
  cbox:RegisterBox("Domino/System/SetEntity.lua")
  cbox:RegisterBox("Domino/System/SetActionMap_v2.lua")
  cbox:RegisterBox("Domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/ShowOrHideAllUI.lua")
  cbox:RegisterBox("Domino/System/SimpleNode.lua")
  cbox:RegisterBox("Domino/System/TaxiController_v2.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
  cbox:RegisterBox("Domino/System/Timer_v2.lua")
  cbox:RegisterBox("Domino/System/TutorialController.lua")
  cbox:RegisterBox("Domino/System/VehicleMonitor_v2.lua")
end
function export:Init(cbox)
  local l0
  self.Disabled = DummyFunction
  self.Enabled = DummyFunction
  self.Spawned = DummyFunction
  self.FailedMoveAndAssign = DummyFunction
  self.PickedUp = DummyFunction
  self.PlayerEntity = nil
  self.tmpClient = nil
  self.tmp_ClientsList_IDs = {}
  self.CurrentClient = nil
  self.RemainingClients = 0
  self.CurrentCLO = nil
  self.playerVehicle = nil
  self.isCorrectVehicle = 0
  self.PlayerInVehicle = 0
  self.SeatEntryPosX = 0
  self.SeatEntryPosY = 0
  self.SeatEntryPosZ = 0
  self.ClientSeat = "FrontPassenger"
  self.AssignRetries = 3
  self[86] = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self[86]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_86_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[34] = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self[34]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = self.f_34_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[125] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[125]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_125_Out
  self[100] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[100]
  l0._graph = self
  l0.Out = self.f_100_Out
  l0.SetTrue = self.f_100_SetTrue
  l0.SetFalse = self.f_100_SetFalse
  l0.Toggled = self.f_100_Toggled
  l0.SetFromBool = self.f_100_SetFromBool
  self[44] = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self[44]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_44_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[104] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[104]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_104_Out
  self[101] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[101]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_101_Out
  self[3] = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self[3]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = self.f_3_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[84] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[84]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_84_Out
  self[75] = cbox:CreateBox("Domino/System/LogicGate_v2.lua")
  l0 = self[75]
  l0._graph = self
  l0.Out = self.f_75_Out
  l0.Opened = DummyFunction
  l0.Closed = self.f_75_Closed
  self[55] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[55]
  l0._graph = self
  l0.Out = self.f_55_Out
  l0.SetTrue = self.f_55_SetTrue
  l0.SetFalse = self.f_55_SetFalse
  l0.Toggled = self.f_55_Toggled
  l0.SetFromBool = self.f_55_SetFromBool
  self[54] = cbox:CreateBox("Domino/System/TutorialController.lua")
  l0 = self[54]
  l0._graph = self
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[123] = cbox:CreateBox("Domino/System/TaxiController_v2.lua")
  l0 = self[123]
  l0._graph = self
  l0.Out = DummyFunction
  l0.TaxiCarValid = DummyFunction
  l0.TaxiCarInvalid = DummyFunction
  l0.OnClientPickedUp = self.f_123_OnClientPickedUp
  l0.OnClientDroppedOff = DummyFunction
  l0.OnClientSpawned = self.f_123_OnClientSpawned
  self[49] = cbox:CreateBox("Domino/System/ProximityMonitor.lua")
  l0 = self[49]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnterRadius = self.f_49_EnterRadius
  l0.ExitRadius = DummyFunction
  self[115] = cbox:CreateBox("Domino/System/TaxiController_v2.lua")
  l0 = self[115]
  l0._graph = self
  l0.Out = DummyFunction
  l0.TaxiCarValid = self.f_115_TaxiCarValid
  l0.TaxiCarInvalid = self.f_115_TaxiCarInvalid
  l0.OnClientPickedUp = DummyFunction
  l0.OnClientDroppedOff = DummyFunction
  l0.OnClientSpawned = DummyFunction
  self[97] = cbox:CreateBox("Domino/System/TaxiController_v2.lua")
  l0 = self[97]
  l0._graph = self
  l0.Out = DummyFunction
  l0.TaxiCarValid = self.f_97_TaxiCarValid
  l0.TaxiCarInvalid = self.f_97_TaxiCarInvalid
  l0.OnClientPickedUp = DummyFunction
  l0.OnClientDroppedOff = DummyFunction
  l0.OnClientSpawned = DummyFunction
  self[63] = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self[63]
  l0._graph = self
  l0.Shown = self.f_63_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[41] = cbox:CreateBox("Domino/System/MissionMessageController_v3.lua")
  l0 = self[41]
  l0._graph = self
  l0.Out = self.f_41_Out
  l0.MessageCompleted = DummyFunction
  self[102] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[102]
  l0._graph = self
  l0.Out = self.f_102_Out
  l0.SetTrue = self.f_102_SetTrue
  l0.SetFalse = self.f_102_SetFalse
  l0.Toggled = self.f_102_Toggled
  l0.SetFromBool = self.f_102_SetFromBool
  self[124] = cbox:CreateBox("Domino/System/TaxiController_v2.lua")
  l0 = self[124]
  l0._graph = self
  l0.Out = DummyFunction
  l0.TaxiCarValid = DummyFunction
  l0.TaxiCarInvalid = DummyFunction
  l0.OnClientPickedUp = self.f_124_OnClientPickedUp
  l0.OnClientDroppedOff = DummyFunction
  l0.OnClientSpawned = self.f_124_OnClientSpawned
  self[99] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[99]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_99_Out
  self[98] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[98]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_98_Out
  self[46] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[46]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_46_Out
  self[56] = cbox:CreateBox("Domino/System/ProximityMonitor.lua")
  l0 = self[56]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnterRadius = self.f_56_EnterRadius
  l0.ExitRadius = self.f_56_ExitRadius
  self[62] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[62]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_62_Out
  self[40] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[40]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_40_Out
  self[81] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[81]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_81_Out
  self[106] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[106]
  l0._graph = self
  l0.Out = self.f_106_Out
  l0.SetTrue = self.f_106_SetTrue
  l0.SetFalse = self.f_106_SetFalse
  l0.Toggled = self.f_106_Toggled
  l0.SetFromBool = self.f_106_SetFromBool
  self[59] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[59]
  l0._graph = self
  l0.Out = self.f_59_Out
  l0.SetTrue = self.f_59_SetTrue
  l0.SetFalse = self.f_59_SetFalse
  l0.Toggled = self.f_59_Toggled
  l0.SetFromBool = self.f_59_SetFromBool
  self[118] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[118]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_118_Out
  self[53] = cbox:CreateBox("Domino/System/VehicleMonitor_v2.lua")
  l0 = self[53]
  l0._graph = self
  l0.Enabled = self.f_53_Enabled
  l0.Disabled = self.f_53_Disabled
  l0.Enter = self.f_53_Enter
  l0.Entered = self.f_53_Entered
  l0.Leave = self.f_53_Leave
  l0.Exiting = self.f_53_Exiting
  l0.ChangeSeat = self.f_53_ChangeSeat
  l0.BailedOut = self.f_53_BailedOut
  l0.IsPawnHiding = DummyFunction
  l0.PawnIsNotHiding = DummyFunction
  l0.StateChange = DummyFunction
  l0.TakenDamage = DummyFunction
  l0.IsUnusable = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.NoMoveTimer = DummyFunction
  l0.OnMoveTimer = DummyFunction
  l0.IsSlowEnoughToExit = DummyFunction
  l0.VehicleJump = DummyFunction
  l0.VehicleLanding = DummyFunction
  l0.BollardTakedown = DummyFunction
  l0.SteamPipeTakedown = DummyFunction
  l0.TrafficLightTakedown = DummyFunction
  l0.FullTakedown = DummyFunction
  l0.PartialTakedown = DummyFunction
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:Disable()
  local l0
  l0 = self[34]
  l0.MapPoint = self.IconPickUp
  l0:Hide()
end
function export:Enable()
  local l0
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_13_Out
  l0:In()
end
function export:f_86_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.PlayerInVehicle
  l0.B = self.isCorrectVehicle
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = DummyFunction
  l0.A_and_B = self.f_64_A_and_B
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_13_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[41]
  l0.Objective = self.Objective
  l0.HasObjectiveMarker = 0
  l0:ShowNewObjective()
end
function export:f_15_Out_0()
  local l0
  self = self._graph
  self:en_56()
  l0 = self[56]
  l0:Disable()
end
function export:f_15_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_105_Out
  l0:In()
end
function export:f_34_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_52_Out_0
  l0.Out[1] = self.f_52_Out_1
  l0:In()
end
function export:f_58_A_is_False()
  local l0
  self = self._graph
  l0 = self[99]
  l0:Input(1)
end
function export:f_58_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.isCorrectVehicle
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_82_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_20_A_is_True()
  local l0
  self = self._graph
  self:en_48()
  l0 = Boxes[PathID("Domino/System/GPS3DController.lua")]
  l0:Disable()
end
function export:f_20_Out()
  local l0
  self = self._graph
  self:en_53()
  l0 = self[53]
  l0:Disable()
end
function export:f_117_Is_nil()
  local l0
  self = self._graph
  l0 = self[123]
  l0.ClientClo = self.ClientCLO
  l0.Vehicle = self.playerVehicle
  l0:PickupClient()
end
function export:f_117_Is_not_nil()
  local l0
  self = self._graph
  l0 = self[124]
  l0.Client = self.ClientEntity
  l0.Vehicle = self.playerVehicle
  l0:PickupClient()
end
function export:f_125_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = self.tmpClient
  l0._graph = self
  l0.Out = self.f_121_Out
  l0:FromEntity()
end
function export:f_100_Out()
  local l0
  self = self._graph
  l0 = self[100]
  self.isCorrectVehicle = l0.Target
end
function export:f_100_SetFalse()
  local l0
  self = self._graph
  l0 = self[100]
  self.isCorrectVehicle = l0.Target
end
function export:f_100_SetFromBool()
  local l0
  self = self._graph
  l0 = self[100]
  self.isCorrectVehicle = l0.Target
  l0 = self[104]
  l0:Input(1)
end
function export:f_100_SetTrue()
  local l0
  self = self._graph
  l0 = self[100]
  self.isCorrectVehicle = l0.Target
end
function export:f_100_Toggled()
  local l0
  self = self._graph
  l0 = self[100]
  self.isCorrectVehicle = l0.Target
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = self[44]
  l0.Seconds = 2
  l0:Start()
end
function export:f_44_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_116_Hidden
  l0:Hide()
end
function export:f_104_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_61_Out_0
  l0.Out[1] = self.f_61_Out_1
  l0:In()
end
function export:f_82_A_is_False()
  local l0
  self = self._graph
  l0 = self[99]
  l0:Input(0)
end
function export:f_52_Out_0()
  self = self._graph
  self:Disabled()
end
function export:f_52_Out_1()
  local l0
  self = self._graph
  l0 = self[46]
  l0:Input(0)
end
function export:f_96_Is_nil()
  local l0
  self = self._graph
  l0 = self[115]
  l0.Vehicle = self.playerVehicle
  l0.Config = "TaxiRideGameplayBrick.9223372049113135648"
  l0:TaxiValidateVehicle()
end
function export:f_96_Is_not_nil()
  local l0
  self = self._graph
  l0 = self[97]
  l0.Vehicle = self.playerVehicle
  l0.Config = self.VehicleFilterConfig
  l0:TaxiValidateVehicle()
end
function export:f_101_Out()
  local l0
  self = self._graph
  l0 = self[100]
  l0.Bool = 0
  l0:FromBool()
end
function export:f_116_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.ClientEntity
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_117_Is_nil
  l0.Is_not_nil = self.f_117_Is_not_nil
  l0:In()
end
function export:f_121_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.Client = l0.Target
  self:Spawned()
end
function export:f_3_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ForcePawnsVehicleStop.lua")]
  l0.PlayerEntity = nil
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:In()
end
function export:f_61_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_65_Out_0
  l0.Out[1] = self.f_65_Out_1
  l0:In()
end
function export:f_61_Out_1()
  local l0
  self = self._graph
  l0 = self[81]
  l0:Input(0)
end
function export:f_84_Out()
  local l0
  self = self._graph
  l0 = self[75]
  l0:In()
end
function export:f_75_Closed()
  local l0
  self = self._graph
  l0 = self[55]
  l0.Bool = 0
  l0:FromBool()
end
function export:f_75_Out()
  local l0
  self = self._graph
  l0 = self[75]
  l0:Close()
end
function export:f_55_Out()
  local l0
  self = self._graph
  l0 = self[55]
  self.PlayerInVehicle = l0.Target
end
function export:f_55_SetFalse()
  local l0
  self = self._graph
  l0 = self[55]
  self.PlayerInVehicle = l0.Target
end
function export:f_55_SetFromBool()
  local l0
  self = self._graph
  l0 = self[55]
  self.PlayerInVehicle = l0.Target
  l0 = self[106]
  l0.Bool = 0
  l0:FromBool()
end
function export:f_55_SetTrue()
  local l0
  self = self._graph
  l0 = self[55]
  self.PlayerInVehicle = l0.Target
end
function export:f_55_Toggled()
  local l0
  self = self._graph
  l0 = self[55]
  self.PlayerInVehicle = l0.Target
end
function export:f_123_OnClientPickedUp()
  local l0
  self = self._graph
  l0 = self[118]
  l0:Input(0)
end
function export:f_123_OnClientSpawned()
  local l0
  self = self._graph
  l0 = self[123]
  self.tmpClient = l0.ClientEntity
  l0 = self[125]
  l0:Input(0)
end
function export:f_49_EnterRadius()
  local l0
  self = self._graph
  l0 = self[86]
  l0.Seconds = 0.1
  l0:Start()
end
function export:f_30_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "no_controls"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_29_Popped
  l0:Pop()
end
function export:f_115_TaxiCarInvalid()
  local l0
  self = self._graph
  l0 = self[101]
  l0:Input(0)
end
function export:f_115_TaxiCarValid()
  local l0
  self = self._graph
  l0 = self[98]
  l0:Input(0)
end
function export:f_97_TaxiCarInvalid()
  local l0
  self = self._graph
  l0 = self[101]
  l0:Input(1)
end
function export:f_97_TaxiCarValid()
  local l0
  self = self._graph
  l0 = self[98]
  l0:Input(1)
end
function export:f_83_Out()
  local l0
  self = self._graph
  self:en_49()
  l0 = self[49]
  l0:Disable()
end
function export:f_63_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.ShowGPS
  l0.B = nil
  l0._graph = self
  l0.Out = self.f_7_Out
  l0.A_is_True = self.f_7_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_41_Out()
  local l0
  self = self._graph
  l0 = self[63]
  l0.MapPoint = self.IconPickUp
  l0.LocText = self.LocText
  l0.LocMapMarkerTitle = self.LocText
  l0:Show()
end
function export:f_24_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = self.playerVehicle
  l0._graph = self
  l0.Out = self.f_60_Out
  l0:FromEntity()
end
function export:f_24_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_35_Out
  l0:In()
end
function export:f_102_Out()
  local l0
  self = self._graph
  l0 = self[102]
  self.isCorrectVehicle = l0.Target
end
function export:f_102_SetFalse()
  local l0
  self = self._graph
  l0 = self[102]
  self.isCorrectVehicle = l0.Target
end
function export:f_102_SetFromBool()
  local l0
  self = self._graph
  l0 = self[102]
  self.isCorrectVehicle = l0.Target
  l0 = self[104]
  l0:Input(0)
end
function export:f_102_SetTrue()
  local l0
  self = self._graph
  l0 = self[102]
  self.isCorrectVehicle = l0.Target
end
function export:f_102_Toggled()
  local l0
  self = self._graph
  l0 = self[102]
  self.isCorrectVehicle = l0.Target
end
function export:f_18_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_24_Out_0
  l0.Out[1] = self.f_24_Out_1
  l0:In()
end
function export:f_124_OnClientPickedUp()
  local l0
  self = self._graph
  l0 = self[118]
  l0:Input(1)
end
function export:f_124_OnClientSpawned()
  local l0
  self = self._graph
  l0 = self[124]
  self.tmpClient = l0.ClientEntity
  l0 = self[125]
  l0:Input(1)
end
function export:f_105_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_83_Out
  l0:In()
end
function export:f_99_Out()
  local l0
  self = self._graph
  self:en_54()
  l0 = self[54]
  l0:Display()
end
function export:f_98_Out()
  local l0
  self = self._graph
  l0 = self[102]
  l0.Bool = 1
  l0:FromBool()
end
function export:f_64_A_and_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "no_controls"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_18_Pushed
  l0.Popped = DummyFunction
  l0:Push()
end
function export:f_46_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.ShowGPS
  l0.B = nil
  l0._graph = self
  l0.Out = self.f_20_Out
  l0.A_is_True = self.f_20_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_29_Popped()
  self = self._graph
  self:PickedUp()
end
function export:f_56_EnterRadius()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.PlayerInVehicle
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_58_A_is_True
  l0.A_is_False = self.f_58_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_56_ExitRadius()
  local l0
  self = self._graph
  l0 = self[62]
  l0:Input(0)
end
function export:f_62_Out()
  local l0
  self = self._graph
  self:en_54()
  l0 = self[54]
  l0:HideNotification()
end
function export:f_35_Out()
  local l0
  self = self._graph
  l0 = self[46]
  l0:Input(1)
end
function export:f_40_Out()
  local l0
  self = self._graph
  self:en_56()
  l0 = self[56]
  l0:Enable()
end
function export:f_7_A_is_True()
  local l0
  self = self._graph
  self:en_48()
  l0 = Boxes[PathID("Domino/System/GPS3DController.lua")]
  l0:Enable()
end
function export:f_7_Out()
  local l0
  self = self._graph
  self:en_53()
  l0 = self[53]
  l0:Enable()
end
function export:f_65_Out_0()
  local l0
  self = self._graph
  l0 = self[40]
  l0:Input(1)
end
function export:f_65_Out_1()
  local l0
  self = self._graph
  l0 = self[62]
  l0:Input(1)
end
function export:f_81_Out()
  local l0
  self = self._graph
  self:en_49()
  l0 = self[49]
  l0:Enable()
end
function export:f_106_Out()
  local l0
  self = self._graph
  l0 = self[106]
  self.isCorrectVehicle = l0.Target
end
function export:f_106_SetFalse()
  local l0
  self = self._graph
  l0 = self[106]
  self.isCorrectVehicle = l0.Target
end
function export:f_106_SetFromBool()
  local l0
  self = self._graph
  l0 = self[106]
  self.isCorrectVehicle = l0.Target
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_80_Out_0
  l0.Out[1] = self.f_80_Out_1
  l0:In()
end
function export:f_106_SetTrue()
  local l0
  self = self._graph
  l0 = self[106]
  self.isCorrectVehicle = l0.Target
end
function export:f_106_Toggled()
  local l0
  self = self._graph
  l0 = self[106]
  self.isCorrectVehicle = l0.Target
end
function export:f_85_Out_0()
  local l0
  self = self._graph
  l0 = self[59]
  l0.Bool = 1
  l0:FromBool()
end
function export:f_85_Out_1()
  local l0
  self = self._graph
  l0 = self[75]
  l0:Open()
end
function export:f_80_Out_0()
  local l0
  self = self._graph
  l0 = self[40]
  l0:Input(0)
end
function export:f_80_Out_1()
  local l0
  self = self._graph
  l0 = self[81]
  l0:Input(1)
end
function export:f_59_Out()
  local l0
  self = self._graph
  l0 = self[59]
  self.PlayerInVehicle = l0.Target
end
function export:f_59_SetFalse()
  local l0
  self = self._graph
  l0 = self[59]
  self.PlayerInVehicle = l0.Target
end
function export:f_59_SetFromBool()
  local l0
  self = self._graph
  l0 = self[59]
  self.PlayerInVehicle = l0.Target
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = self.VehicleFilterConfig
  l0._graph = self
  l0.Is_nil = self.f_96_Is_nil
  l0.Is_not_nil = self.f_96_Is_not_nil
  l0:In()
end
function export:f_59_SetTrue()
  local l0
  self = self._graph
  l0 = self[59]
  self.PlayerInVehicle = l0.Target
end
function export:f_59_Toggled()
  local l0
  self = self._graph
  l0 = self[59]
  self.PlayerInVehicle = l0.Target
end
function export:f_118_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Shown = self.f_30_Shown
  l0.Hidden = DummyFunction
  l0:Show()
end
function export:f_60_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.Vehicle = l0.Target
  l0 = self[3]
  l0.MapPoint = self.IconPickUp
  l0.LocText = self.LocText
  l0.LocMapMarkerTitle = self.LocText
  l0:Hide()
end
function export:f_53_BailedOut()
  local l0
  self = self._graph
  l0 = self[53]
  self.playerVehicle = l0.VehicleID
  l0 = self[84]
  l0:Input(2)
end
function export:f_53_ChangeSeat()
  local l0
  self = self._graph
  l0 = self[53]
  self.playerVehicle = l0.VehicleID
end
function export:f_53_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_15_Out_0
  l0.Out[1] = self.f_15_Out_1
  l0:In()
end
function export:f_53_Enabled()
  self = self._graph
  self:Enabled()
end
function export:f_53_Enter()
  local l0
  self = self._graph
  l0 = self[53]
  self.playerVehicle = l0.VehicleID
end
function export:f_53_Entered()
  local l0
  self = self._graph
  l0 = self[53]
  self.playerVehicle = l0.VehicleID
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_85_Out_0
  l0.Out[1] = self.f_85_Out_1
  l0:In()
end
function export:f_53_Exiting()
  local l0
  self = self._graph
  l0 = self[53]
  self.playerVehicle = l0.VehicleID
  l0 = self[84]
  l0:Input(1)
end
function export:f_53_Leave()
  local l0
  self = self._graph
  l0 = self[53]
  self.playerVehicle = l0.VehicleID
  l0 = self[84]
  l0:Input(0)
end
function export:en_48()
  local l0
  l0 = Boxes[PathID("Domino/System/GPS3DController.lua")]
  l0.Player = nil
  l0.Target = self.IconPickUp
  l0.Path = nil
  l0.Index = nil
  l0.PathType = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TargetAdded = DummyFunction
  l0.TargetRemoved = DummyFunction
end
function export:en_54()
  local l0
  l0 = self[54]
  l0.Notification = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "AcquireVehicle",
    id = "337818"
  }
  l0.Duration = -1
end
function export:en_49()
  local l0
  l0 = self[49]
  l0.Entity1 = self.PlayerEntity
  l0.Entity2 = self.IconPickUp
  l0.Radius = self.Range
  l0.CheckNow = 1
end
function export:en_56()
  local l0
  l0 = self[56]
  l0.Entity1 = self.PlayerEntity
  l0.Entity2 = self.IconPickUp
  l0.Radius = 30
  l0.CheckNow = 1
end
function export:en_53()
  local l0
  l0 = self[53]
  l0.CheckNow = 1
end
function export:Disabled()
end
function export:Enabled()
end
function export:Spawned()
end
function export:FailedMoveAndAssign()
end
function export:PickedUp()
end
_compilerVersion = 4
