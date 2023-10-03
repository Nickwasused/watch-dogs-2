export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/GPS3DController.lua")
  cbox:RegisterBox("Domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/ForcePawnsVehicleStop.lua")
  cbox:RegisterBox("Domino/System/MapPointController_v3.lua")
  cbox:RegisterBox("Domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/ProximityMonitor.lua")
  cbox:RegisterBox("Domino/System/SetActionMap_v2.lua")
  cbox:RegisterBox("Domino/System/SimpleNode.lua")
  cbox:RegisterBox("Domino/System/VehicleMonitor_v2.lua")
end
function export:Init(cbox)
  local l0
  self.Enabled = DummyFunction
  self.Disabled = DummyFunction
  self.DestinationReached = DummyFunction
  self[19] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[19]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_19_Out
  self[18] = cbox:CreateBox("Domino/System/MissionMessageController_v3.lua")
  l0 = self[18]
  l0._graph = self
  l0.Out = self.f_18_Out
  l0.MessageCompleted = DummyFunction
  self[7] = cbox:CreateBox("Domino/System/ProximityMonitor.lua")
  l0 = self[7]
  l0._graph = self
  l0.Enabled = self.f_7_Enabled
  l0.Disabled = self.f_7_Disabled
  l0.EnterRadius = self.f_7_EnterRadius
  l0.ExitRadius = self.f_7_ExitRadius
  self[5] = cbox:CreateBox("Domino/System/MissionMessageController_v3.lua")
  l0 = self[5]
  l0._graph = self
  l0.Out = self.f_5_Out
  l0.MessageCompleted = DummyFunction
  self[4] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[4]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_4_Out
  self[16] = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self[16]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[37] = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self[37]
  l0._graph = self
  l0.Shown = self.f_37_Shown
  l0.Hidden = self.f_37_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[24] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[24]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_24_Out
  self[39] = cbox:CreateBox("Domino/System/VehicleMonitor_v2.lua")
  l0 = self[39]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Entered = DummyFunction
  l0.Leave = DummyFunction
  l0.Exiting = DummyFunction
  l0.ChangeSeat = DummyFunction
  l0.BailedOut = DummyFunction
  l0.IsPawnHiding = DummyFunction
  l0.PawnIsNotHiding = DummyFunction
  l0.StateChange = DummyFunction
  l0.TakenDamage = DummyFunction
  l0.IsUnusable = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.NoMoveTimer = self.f_39_NoMoveTimer
  l0.OnMoveTimer = DummyFunction
  l0.IsSlowEnoughToExit = DummyFunction
  l0.VehicleJump = DummyFunction
  l0.VehicleLanding = DummyFunction
  l0.BollardTakedown = DummyFunction
  l0.SteamPipeTakedown = DummyFunction
  l0.TrafficLightTakedown = DummyFunction
  l0.FullTakedown = DummyFunction
  l0.PartialTakedown = DummyFunction
  self[27] = cbox:CreateBox("Domino/System/MissionMessageController_v3.lua")
  l0 = self[27]
  l0._graph = self
  l0.Out = self.f_27_Out
  l0.MessageCompleted = DummyFunction
  self[40] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[40]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_40_Out
  self[1] = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self[1]
  l0._graph = self
  l0.Shown = self.f_1_Shown
  l0.Hidden = self.f_1_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[20] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[20]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_20_Out
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
  l0.Out[0] = self.f_17_Out_0
  l0.Out[1] = self.f_17_Out_1
  l0:In()
end
function export:Enable()
  local l0
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.ManageObjectives
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_13_A_is_True
  l0.A_is_False = self.f_13_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_19_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.ManageObjectives
  l0.B = nil
  l0._graph = self
  l0.Out = self.f_23_Out
  l0.A_is_True = self.f_23_A_is_True
  l0.A_is_False = self.f_23_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_35_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic_nocameralock"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_14_Popped
  l0:Pop()
end
function export:f_18_Out()
  local l0
  self = self._graph
  l0 = self[24]
  l0:Input(0)
end
function export:f_7_Disabled()
  local l0
  self = self._graph
  l0 = self[16]
  l0.MapPoint = self.Destination
  l0:Hide()
end
function export:f_7_Enabled()
  self = self._graph
  self:Enabled()
end
function export:f_7_EnterRadius()
  local l0
  self = self._graph
  self:en_37()
  l0 = self[37]
  l0:Hide()
end
function export:f_7_ExitRadius()
  local l0
  self = self._graph
  self:en_37()
  l0 = self[37]
  l0:Show()
end
function export:f_5_Out()
  local l0
  self = self._graph
  l0 = self[20]
  l0:Input(0)
end
function export:f_4_Out()
  local l0
  self = self._graph
  self:en_1()
  l0 = self[1]
  l0:Hide()
end
function export:f_17_Out_0()
  self = self._graph
  self:Disabled()
end
function export:f_17_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.ManageObjectives
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_22_A_is_True
  l0.A_is_False = self.f_22_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_10_A_is_True()
  local l0
  self = self._graph
  self:en_2()
  l0 = Boxes[PathID("Domino/System/GPS3DController.lua")]
  l0:Disable()
end
function export:f_10_Out()
  local l0
  self = self._graph
  self:en_7()
  l0 = self[7]
  l0:Disable()
end
function export:f_37_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.AutoStop
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_11_A_is_True
  l0.A_is_False = self.f_11_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_37_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.AutoStop
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_8_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_24_Out()
  self = self._graph
  self:DestinationReached()
end
function export:f_9_A_is_True()
  local l0
  self = self._graph
  self:en_2()
  l0 = Boxes[PathID("Domino/System/GPS3DController.lua")]
  l0:Enable()
end
function export:f_9_Out()
  local l0
  self = self._graph
  self:en_7()
  l0 = self[7]
  l0:Enable()
end
function export:f_38_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ForcePawnsVehicleStop.lua")]
  l0.PlayerEntity = nil
  l0._graph = self
  l0.Out = self.f_35_Out
  l0:In()
end
function export:f_23_A_is_False()
  local l0
  self = self._graph
  l0 = self[24]
  l0:Input(1)
end
function export:f_23_A_is_True()
  local l0
  self = self._graph
  l0 = self[18]
  l0.Objective = self.Objective
  l0:ShowLastObjectiveComplete()
end
function export:f_23_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_26_Out
  l0:In()
end
function export:f_22_A_is_False()
  local l0
  self = self._graph
  l0 = self[4]
  l0:Input(2)
end
function export:f_22_A_is_True()
  local l0
  self = self._graph
  l0 = self[27]
  l0.Objective = self.Objective
  l0:HideObjective()
end
function export:f_12_Out()
  local l0
  self = self._graph
  l0 = self[19]
  l0:Input(2)
end
function export:f_39_NoMoveTimer()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_41_Out_0
  l0.Out[1] = self.f_41_Out_1
  l0:In()
end
function export:f_11_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.StationaryAtDestination
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_6_A_is_True
  l0.A_is_False = self.f_6_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_11_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic_nocameralock"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_38_Pushed
  l0.Popped = DummyFunction
  l0:Push()
end
function export:f_26_Out()
  local l0
  self = self._graph
  l0 = self[4]
  l0:Input(0)
end
function export:f_27_Out()
  local l0
  self = self._graph
  l0 = self[4]
  l0:Input(1)
end
function export:f_40_Out()
  local l0
  self = self._graph
  self:en_39()
  l0 = self[39]
  l0:Disable()
end
function export:f_1_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.ShowGPS
  l0.B = nil
  l0._graph = self
  l0.Out = self.f_10_Out
  l0.A_is_True = self.f_10_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_1_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.ShowGPS
  l0.B = nil
  l0._graph = self
  l0.Out = self.f_9_Out
  l0.A_is_True = self.f_9_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_20_Out()
  local l0
  self = self._graph
  self:en_1()
  l0 = self[1]
  l0:Show()
end
function export:f_41_Out_0()
  local l0
  self = self._graph
  l0 = self[40]
  l0:Input(0)
end
function export:f_41_Out_1()
  local l0
  self = self._graph
  l0 = self[19]
  l0:Input(0)
end
function export:f_14_Popped()
  local l0
  self = self._graph
  l0 = self[19]
  l0:Input(1)
end
function export:f_6_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_12_Out
  l0:In()
end
function export:f_6_A_is_True()
  local l0
  self = self._graph
  self:en_39()
  l0 = self[39]
  l0:Enable()
end
function export:f_8_A_is_False()
  local l0
  self = self._graph
  l0 = self[40]
  l0:Input(1)
end
function export:f_13_A_is_False()
  local l0
  self = self._graph
  l0 = self[20]
  l0:Input(1)
end
function export:f_13_A_is_True()
  local l0
  self = self._graph
  l0 = self[5]
  l0.Objective = self.Objective
  l0.ShowPreviousObjectiveComplete = 0
  l0.HasObjectiveMarker = 0
  l0:ShowNewObjective()
end
function export:en_2()
  local l0
  l0 = Boxes[PathID("Domino/System/GPS3DController.lua")]
  l0.Player = nil
  l0.Target = self.Destination
  l0.Path = nil
  l0.Index = nil
  l0.PathType = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TargetAdded = DummyFunction
  l0.TargetRemoved = DummyFunction
end
function export:en_7()
  local l0
  l0 = self[7]
  l0.Entity1 = self.VehiclePlayer
  l0.Entity2 = self.Destination
  l0.Radius = self.ReachDistance
end
function export:en_37()
  local l0
  l0 = self[37]
  l0.MapPoint = self.Destination
  l0.LocText = self.LocText
  l0.LocMapMarkerTitle = self.LocText
end
function export:en_39()
  local l0
  l0 = self[39]
  l0.Vehicle = self.VehiclePlayer
  l0.NoMoveTime = 0.5
end
function export:en_1()
  local l0
  l0 = self[1]
  l0.MapPoint = self.Destination
  l0.LocText = self.LocText
  l0.LocMapMarkerTitle = self.LocText
end
function export:Enabled()
end
function export:Disabled()
end
function export:DestinationReached()
end
_compilerVersion = 4
