export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/GPS3DController.lua")
  cbox:RegisterBox("Domino/System/CameraContextController.lua")
  cbox:RegisterBox("Domino/System/CameraRealign.lua")
  cbox:RegisterBox("Domino/System/CLOController.lua")
  cbox:RegisterBox("Domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/CompareIntegers_v2.lua")
  cbox:RegisterBox("Domino/System/ForcePawnsVehicleStop.lua")
  cbox:RegisterBox("Domino/System/GetPlayerID.lua")
  cbox:RegisterBox("Domino/System/IntegerArithmetics.lua")
  cbox:RegisterBox("Domino/System/Lists/ListForEach.lua")
  cbox:RegisterBox("Domino/System/Lists/ListLength.lua")
  cbox:RegisterBox("Domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("Domino/System/MapPointController_v3.lua")
  cbox:RegisterBox("Domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/ProximityMonitor.lua")
  cbox:RegisterBox("Domino/System/CameraSetDominoReference.lua")
  cbox:RegisterBox("Domino/System/SetEntity.lua")
  cbox:RegisterBox("Domino/System/Lists/SetList.lua")
  cbox:RegisterBox("Domino/System/SetActionMap_v2.lua")
  cbox:RegisterBox("Domino/System/ShowOrHideAllUI.lua")
  cbox:RegisterBox("Domino/System/SimpleNode.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
  cbox:RegisterBox("Domino/System/Timer_v2.lua")
  cbox:RegisterBox("Domino/System/VehicleSeatingController.lua")
end
function export:Init(cbox)
  local l0
  self.PickedUp = DummyFunction
  self.Enabled = DummyFunction
  self.Disabled = DummyFunction
  self.Spawned = DummyFunction
  self.FailedMoveAndAssign = DummyFunction
  self.tmpClient = nil
  self.yPos = 0
  self.xPos = 0
  self.yRot = 0
  self.xRot = 0
  self.zPos = 0
  self.zRot = 0
  self.PlayerEntity = nil
  self.SeatPosX = 0
  self.SeatPosY = 0
  self.SeatPosZ = 0
  self.CurrentCLO = nil
  self.tmp_ClientsList_IDs = {}
  self.CurrentClient = nil
  self.RemainingClients = 0
  self[23] = cbox:CreateBox("Domino/System/ProximityMonitor.lua")
  l0 = self[23]
  l0._graph = self
  l0.Enabled = self.f_23_Enabled
  l0.Disabled = self.f_23_Disabled
  l0.EnterRadius = self.f_23_EnterRadius
  l0.ExitRadius = self.f_23_ExitRadius
  self[37] = cbox:CreateBox("Domino/System/CameraContextController.lua")
  l0 = self[37]
  l0._graph = self
  l0.ContextStarted = DummyFunction
  l0.ContextStopped = self.f_37_ContextStopped
  l0.Out = DummyFunction
  self[70] = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self[70]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_70_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[38] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[38]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_38_Out
  self[16] = cbox:CreateBox("Domino/System/VehicleSeatingController.lua")
  l0 = self[16]
  l0._graph = self
  l0.Assigned = self.f_16_Assigned
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_16_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self[68] = cbox:CreateBox("Domino/System/CameraSetDominoReference.lua")
  l0 = self[68]
  l0._graph = self
  l0.Out = self.f_68_Out
  self[8] = cbox:CreateBox("Domino/System/Lists/ListForEach.lua")
  l0 = self[8]
  l0._graph = self
  l0.Started = self.f_8_Started
  l0.Stopped = self.f_8_Stopped
  l0.ForEach = self.f_8_ForEach
  l0.GotNext = self.f_8_GotNext
  l0.EndOfList = self.f_8_EndOfList
  self[74] = cbox:CreateBox("Domino/System/CameraRealign.lua")
  l0 = self[74]
  l0._graph = self
  l0.Out = self.f_74_Out
  self[28] = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self[28]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_28_OnUserInPlace
  self[4] = cbox:CreateBox("Domino/System/MissionMessageController_v3.lua")
  l0 = self[4]
  l0._graph = self
  l0.Out = self.f_4_Out
  l0.MessageCompleted = DummyFunction
  self[5] = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self[5]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_5_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[33] = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self[33]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_33_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[19] = cbox:CreateBox("Domino/System/MissionMessageController_v3.lua")
  l0 = self[19]
  l0._graph = self
  l0.Out = self.f_19_Out
  l0.MessageCompleted = DummyFunction
  self[35] = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self[35]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = self.f_35_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[10] = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self[10]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_10_OnUserInPlace
  self[14] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[14]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_14_Out
  self[2] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua")
  l0 = self[2]
  l0._graph = self
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_2_Out
  l0.ResetOut = DummyFunction
  self[71] = cbox:CreateBox("Domino/System/CameraContextController.lua")
  l0 = self[71]
  l0._graph = self
  l0.ContextStarted = DummyFunction
  l0.ContextStopped = self.f_71_ContextStopped
  l0.Out = DummyFunction
  self[26] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[26]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_26_Out
  self[41] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[41]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_41_Out
  self[13] = cbox:CreateBox("Domino/System/Lists/ListWriter.lua")
  l0 = self[13]
  l0._graph = self
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_13_Added
  l0.Removed = self.f_13_Removed
  l0.Out = self.f_13_Out
  self[27] = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self[27]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_27_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[84] = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self[84]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_84_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[72] = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self[72]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[69] = cbox:CreateBox("Domino/System/CameraContextController.lua")
  l0 = self[69]
  l0._graph = self
  l0.ContextStarted = self.f_69_ContextStarted
  l0.ContextStopped = DummyFunction
  l0.Out = DummyFunction
  self[77] = cbox:CreateBox("Domino/System/VehicleSeatingController.lua")
  l0 = self[77]
  l0._graph = self
  l0.Assigned = self.f_77_Assigned
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_77_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = self.f_77_AbortMoveAndUseSeat
  l0.Out = DummyFunction
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
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_22_Out_0
  l0.Out[1] = self.f_22_Out_1
  l0:In()
end
function export:Enable()
  local l0
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_11_Out
  l0:In()
end
function export:f_24_Is_nil()
  local l0
  self = self._graph
  l0 = self[28]
  l0.CLO = self.ClientCLO
  l0:Activate()
end
function export:f_24_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = self.ClientEntity
  l0._graph = self
  l0.Out = self.f_34_Out
  l0:FromEntity()
end
function export:f_23_Disabled()
  local l0
  self = self._graph
  l0 = self[72]
  l0.MapPoint = self.IconPickUp
  l0:Hide()
end
function export:f_23_Enabled()
  self = self._graph
  self:Enabled()
end
function export:f_23_EnterRadius()
  local l0
  self = self._graph
  self:en_35()
  l0 = self[35]
  l0:Hide()
end
function export:f_23_ExitRadius()
  local l0
  self = self._graph
  self:en_35()
  l0 = self[35]
  l0:Show()
end
function export:f_37_ContextStopped()
  local l0
  self = self._graph
  l0 = self[38]
  l0:Input(1)
end
function export:f_70_TimeElapsed()
  local l0
  self = self._graph
  self:en_71()
  l0 = self[71]
  l0:StartContext()
end
function export:f_21_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/SetList.lua")]
  l0.List = self.tmp_ClientsList_IDs
  l0._graph = self
  l0.Out = self.f_15_Out
  l0:FromList()
end
function export:f_38_Out()
  local l0
  self = self._graph
  l0 = self[74]
  l0:Activate()
end
function export:f_16_AssignCompleted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_40_Out_0
  l0.Out[1] = self.f_40_Out_1
  l0:In()
end
function export:f_16_Assigned()
  local l0
  self = self._graph
  l0 = self[2]
  l0:In(0)
end
function export:f_3_Out()
  local l0
  self = self._graph
  l0 = self[14]
  l0:Input(1)
end
function export:f_7_Is_nil()
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
  l0.Is_nil = self.f_24_Is_nil
  l0.Is_not_nil = self.f_24_Is_not_nil
  l0:In()
end
function export:f_7_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/ListLength.lua")]
  l0.Input = self.ClientsList_CLOs
  l0._graph = self
  l0.Out = self.f_32_Out
  l0.Empty = self.f_32_Empty
  l0.NotEmpty = self.f_32_NotEmpty
  l0:GetLength()
end
function export:f_29_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.Client = l0.Target
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_30_Out_0
  l0.Out[1] = self.f_30_Out_1
  l0:In()
end
function export:f_36_A_is_True()
  local l0
  self = self._graph
  self:en_25()
  l0 = Boxes[PathID("Domino/System/GPS3DController.lua")]
  l0:Enable()
end
function export:f_36_Out()
  local l0
  self = self._graph
  self:en_23()
  l0 = self[23]
  l0:Enable()
end
function export:f_68_Out()
  local l0
  self = self._graph
  l0 = self[69]
  l0.Config = "CameraContext.9223372048779319939"
  l0.BlendIn = "CameraBlendListDB.9223372048779319847"
  l0:StartContext()
end
function export:f_8_EndOfList()
  local l0
  self = self._graph
  l0 = self[8]
  self.CurrentCLO = l0.Data
end
function export:f_8_ForEach()
  local l0
  self = self._graph
  l0 = self[8]
  self.CurrentCLO = l0.Data
end
function export:f_8_GotNext()
  local l0
  self = self._graph
  l0 = self[8]
  self.CurrentCLO = l0.Data
  l0 = self[10]
  l0.CLO = self.CurrentCLO
  l0:Activate()
end
function export:f_8_Started()
  local l0
  self = self._graph
  l0 = self[8]
  self.CurrentCLO = l0.Data
end
function export:f_8_Stopped()
  local l0
  self = self._graph
  l0 = self[8]
  self.CurrentCLO = l0.Data
end
function export:f_20_A_is_True()
  local l0
  self = self._graph
  self:en_25()
  l0 = Boxes[PathID("Domino/System/GPS3DController.lua")]
  l0:Disable()
end
function export:f_20_Out()
  local l0
  self = self._graph
  self:en_23()
  l0 = self[23]
  l0:Disable()
end
function export:f_15_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/SetList.lua")]
  self.ClientsList_IDs = l0.Target
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_39_Out_0
  l0.Out[1] = self.f_39_Out_1
  l0:In()
end
function export:f_74_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Shown = self.f_1_Shown
  l0.Hidden = DummyFunction
  l0:Show()
end
function export:f_11_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[19]
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "PickupSingleClient",
    id = "20000189"
  }
  l0.HasObjectiveMarker = 0
  l0:ShowNewObjective()
end
function export:f_28_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[28]
  self.tmpClient = l0.UserID
  l0 = self[26]
  l0:Input(0)
end
function export:f_4_Out()
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
  l0.Popped = self.f_80_Popped
  l0:Pop()
end
function export:f_5_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ForcePawnsVehicleStop.lua")]
  l0.PlayerEntity = nil
  l0._graph = self
  l0.Out = self.f_6_Out
  l0:In()
end
function export:f_33_TimeElapsed()
  local l0
  self = self._graph
  self:en_37()
  l0 = self[37]
  l0:StartContext()
end
function export:f_19_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.ShowGPS
  l0.B = nil
  l0._graph = self
  l0.Out = self.f_36_Out
  l0.A_is_True = self.f_36_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_32_Empty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/ListLength.lua")]
  self.RemainingClients = l0.Length
end
function export:f_32_NotEmpty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/ListLength.lua")]
  self.RemainingClients = l0.Length
  l0 = self[41]
  l0:Input(1)
end
function export:f_32_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/ListLength.lua")]
  self.RemainingClients = l0.Length
end
function export:f_35_Hidden()
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
function export:f_6_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_46_Out_0
  l0.Out[1] = self.f_46_Out_1
  l0:In()
end
function export:f_10_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[10]
  self.CurrentClient = l0.UserID
  l0 = self[13]
  l0.Input = self.tmp_ClientsList_IDs
  l0.Data[0] = self.CurrentClient
  l0:Add()
end
function export:f_39_Out_0()
  local l0
  self = self._graph
  l0 = self[27]
  l0.Seconds = 1
  l0:Start()
end
function export:f_39_Out_1()
  self = self._graph
  self:Spawned()
end
function export:f_14_Out()
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
function export:f_40_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/IntegerArithmetics.lua")]
  l0.A = self.RemainingClients
  l0.B = 1
  l0._graph = self
  l0.Out = self.f_17_Out
  l0:Sub()
end
function export:f_40_Out_1()
  local l0
  self = self._graph
  l0 = self[41]
  l0:Input(0)
end
function export:f_1_Shown()
  local l0
  self = self._graph
  l0 = self[4]
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "PickupSingleClient",
    id = "20000189"
  }
  l0.HasObjectiveMarker = 0
  l0:ShowLastObjectiveComplete()
end
function export:f_34_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.tmpClient = l0.Target
  l0 = self[26]
  l0:Input(1)
end
function export:f_2_Out()
  local l0
  self = self._graph
  l0 = self[33]
  l0.Seconds = 0.7
  l0:Start()
end
function export:f_42_Hidden()
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
  l0.List = self.ClientsList_CLOs
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_7_Is_nil
  l0.Is_not_nil = self.f_7_Is_not_nil
  l0:In()
end
function export:f_22_Out_0()
  self = self._graph
  self:Disabled()
end
function export:f_22_Out_1()
  local l0
  self = self._graph
  l0 = self[14]
  l0:Input(0)
end
function export:f_71_ContextStopped()
  local l0
  self = self._graph
  l0 = self[38]
  l0:Input(0)
end
function export:f_26_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = self.tmpClient
  l0._graph = self
  l0.Out = self.f_29_Out
  l0:FromEntity()
end
function export:f_46_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_3_Out
  l0:In()
end
function export:f_46_Out_1()
  local l0
  self = self._graph
  l0 = self[68]
  l0.Slot = 1
  l0.ReferenceEntity = self.PlayerEntity
  l0:In()
end
function export:f_17_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/IntegerArithmetics.lua")]
  self.RemainingClients = l0.Target
  l0 = Boxes[PathID("Domino/System/CompareIntegers_v2.lua")]
  l0.A = self.RemainingClients
  l0.B = 0
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_lt_B = DummyFunction
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_21_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  l0:In()
end
function export:f_18_Pushed()
  local l0
  self = self._graph
  l0 = self[5]
  l0.Seconds = 0.4
  l0:Start()
end
function export:f_41_Out()
  local l0
  self = self._graph
  l0 = self[8]
  l0.List = self.ClientsList_CLOs
  l0:GetNext()
end
function export:f_13_Added()
  local l0
  self = self._graph
  l0 = self[13]
  self.tmp_ClientsList_IDs = l0.Target
  l0 = self[16]
  l0.Vehicle = self.VehiclePlayer
  l0.Pawn = self.CurrentClient
  l0.UseAnimation = 1
  l0.CanUseBackSeat = 1
  l0:Assign()
end
function export:f_13_Out()
  local l0
  self = self._graph
  l0 = self[13]
  self.tmp_ClientsList_IDs = l0.Target
end
function export:f_13_Removed()
  local l0
  self = self._graph
  l0 = self[13]
  self.tmp_ClientsList_IDs = l0.Target
end
function export:f_27_TimeElapsed()
  local l0
  self = self._graph
  self:en_37()
  l0 = self[37]
  l0:StopContext()
end
function export:f_30_Out_0()
  self = self._graph
  self:Spawned()
end
function export:f_30_Out_1()
  local l0
  self = self._graph
  l0 = self[77]
  l0.Vehicle = self.VehiclePlayer
  l0.Pawn = self.tmpClient
  l0.UseAnimation = 1
  l0.CanUseBackSeat = 1
  l0:Assign()
end
function export:f_84_TimeElapsed()
  local l0
  self = self._graph
  self:en_71()
  l0 = self[71]
  l0:StopContext()
end
function export:f_69_ContextStarted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_42_Hidden
  l0:Hide()
end
function export:f_80_Popped()
  self = self._graph
  self:PickedUp()
end
function export:f_77_AbortMoveAndUseSeat()
  self = self._graph
  self:FailedMoveAndAssign()
end
function export:f_77_AssignCompleted()
  local l0
  self = self._graph
  l0 = self[84]
  l0.Seconds = 1
  l0:Start()
end
function export:f_77_Assigned()
  local l0
  self = self._graph
  l0 = self[70]
  l0.Seconds = 0.7
  l0:Start()
end
function export:en_23()
  local l0
  l0 = self[23]
  l0.Entity1 = self.VehiclePlayer
  l0.Entity2 = self.IconPickUp
  l0.Radius = self.Range
  l0.CheckNow = 1
end
function export:en_37()
  local l0
  l0 = self[37]
  l0.Config = "CameraContext.9223372048779319939"
  l0.BlendIn = "CameraBlendListDB.9223372048779319841"
  l0.BlendOut = "CameraBlendListDB.9223372048779319827"
end
function export:en_25()
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
function export:en_35()
  local l0
  l0 = self[35]
  l0.MapPoint = self.IconPickUp
  l0.LocText = self.LocText
  l0.LocMapMarkerTitle = self.LocText
end
function export:en_71()
  local l0
  l0 = self[71]
  l0.Config = "CameraContext.9223372048779319939"
  l0.BlendIn = "CameraBlendListDB.9223372048779319841"
  l0.BlendOut = "CameraBlendListDB.9223372048779319827"
end
function export:PickedUp()
end
function export:Enabled()
end
function export:Disabled()
end
function export:Spawned()
end
function export:FailedMoveAndAssign()
end
_compilerVersion = 4
