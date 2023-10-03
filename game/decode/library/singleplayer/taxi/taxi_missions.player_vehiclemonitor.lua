export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CompareEntity_v2.lua")
  cbox:RegisterBox("Domino/System/CompareFloats_v2.lua")
  cbox:RegisterBox("Domino/System/MapPointController_v3.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/SetEntity.lua")
  cbox:RegisterBox("Domino/Library/common/SnapAndBind.SnapAndBind.lua")
  cbox:RegisterBox("Domino/System/TimerToScreen.lua")
  cbox:RegisterBox("Domino/System/TutorialController.lua")
  cbox:RegisterBox("Domino/System/VehicleMonitor_v2.lua")
end
function export:Init(cbox)
  local l0
  self.Entered = DummyFunction
  self.Out = DummyFunction
  self.Enabled = DummyFunction
  self.Disabled = DummyFunction
  self.Exited = DummyFunction
  self.VehicleWrecked = DummyFunction
  self.PlayerAbandonedVehicle = DummyFunction
  self.Vehicle_Icon = nil
  self.Player_Vehicle = nil
  self.curVehicle = nil
  self[7] = cbox:CreateBox("Domino/System/VehicleMonitor_v2.lua")
  l0 = self[7]
  l0._graph = self
  l0.Enabled = self.f_7_Enabled
  l0.Disabled = self.f_7_Disabled
  l0.Enter = self.f_7_Enter
  l0.Entered = self.f_7_Entered
  l0.Leave = self.f_7_Leave
  l0.Exiting = self.f_7_Exiting
  l0.ChangeSeat = self.f_7_ChangeSeat
  l0.BailedOut = self.f_7_BailedOut
  l0.IsPawnHiding = DummyFunction
  l0.PawnIsNotHiding = DummyFunction
  l0.StateChange = DummyFunction
  l0.TakenDamage = DummyFunction
  l0.IsUnusable = self.f_7_IsUnusable
  l0.IsUnderwater = DummyFunction
  l0.NoMoveTimer = DummyFunction
  l0.OnMoveTimer = DummyFunction
  l0.IsSlowEnoughToExit = DummyFunction
  l0.VehicleJump = DummyFunction
  l0.VehicleLanding = DummyFunction
  l0.BollardTakedown = DummyFunction
  l0.SteamPipeTakedown = DummyFunction
  l0.TrafficLightTakedown = DummyFunction
  l0.FullTakedown = self.f_7_FullTakedown
  l0.PartialTakedown = DummyFunction
  self[6] = cbox:CreateBox("Domino/System/TutorialController.lua")
  l0 = self[6]
  l0._graph = self
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_6_DisplayRequested
  l0.NotificationHidden = self.f_6_NotificationHidden
  l0.MessageCompleted = DummyFunction
  self[14] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[14]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_14_Out
  self[21] = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self[21]
  l0._graph = self
  l0.Shown = self.f_21_Shown
  l0.Hidden = self.f_21_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[46] = cbox:CreateBox("Domino/Library/common/SnapAndBind.SnapAndBind.lua")
  l0 = self[46]
  l0._graph = self
  l0.Attached = self.f_46_Attached
  self[10] = cbox:CreateBox("Domino/System/TimerToScreen.lua")
  l0 = self[10]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Stopped = DummyFunction
  l0.Restarted = DummyFunction
  l0.GotTime = DummyFunction
  l0.TimeElapsed = self.f_10_TimeElapsed
  self[3] = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self[3]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = self.f_3_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[18] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[18]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_18_Out
  self[9] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[9]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_9_Out
  self[22] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[22]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_22_Out
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
  l0.Out[0] = self.f_12_Out_0
  l0.Out[1] = self.f_12_Out_1
  l0:In()
end
function export:Enable()
  local l0
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_41_Out_0
  l0.Out[1] = self.f_41_Out_1
  l0:In()
end
function export:f_43_Out_0()
  self = self._graph
  self:Exited()
end
function export:f_43_Out_1()
  local l0
  self = self._graph
  l0 = self[46]
  l0.Parent = self.Player_Vehicle
  l0.Child = self.Vehicle_Icon
  l0.CarIcon = 1
  l0:Attach()
end
function export:f_7_BailedOut()
  local l0
  self = self._graph
  l0 = self[7]
  self.curVehicle = l0.VehicleID
  l0 = self[18]
  l0:Input(0)
end
function export:f_7_ChangeSeat()
  local l0
  self = self._graph
  l0 = self[7]
  self.curVehicle = l0.VehicleID
end
function export:f_7_Disabled()
  local l0
  self = self._graph
  l0 = self[3]
  l0.MapPoint = self.Vehicle_Icon
  l0:Hide()
end
function export:f_7_Enabled()
  self = self._graph
  self:Enabled()
end
function export:f_7_Enter()
  local l0
  self = self._graph
  l0 = self[7]
  self.curVehicle = l0.VehicleID
end
function export:f_7_Entered()
  local l0
  self = self._graph
  l0 = self[7]
  self.curVehicle = l0.VehicleID
  l0 = Boxes[PathID("Domino/System/CompareEntity_v2.lua")]
  l0.Entity1 = self.Player_Vehicle
  l0.Entity2 = self.curVehicle
  l0._graph = self
  l0.Out = DummyFunction
  l0.Equal = self.f_5_Equal
  l0.NotEqual = DummyFunction
  l0:In()
end
function export:f_7_Exiting()
  local l0
  self = self._graph
  l0 = self[7]
  self.curVehicle = l0.VehicleID
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_43_Out_0
  l0.Out[1] = self.f_43_Out_1
  l0:In()
end
function export:f_7_FullTakedown()
  local l0
  self = self._graph
  l0 = self[18]
  l0:Input(2)
end
function export:f_7_IsUnusable()
  local l0
  self = self._graph
  l0 = self[18]
  l0:Input(1)
end
function export:f_7_Leave()
  local l0
  self = self._graph
  l0 = self[7]
  self.curVehicle = l0.VehicleID
end
function export:f_23_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.Vehicle_Icon = l0.Target
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = self.VehiclePlayer
  l0._graph = self
  l0.Out = self.f_26_Out
  l0:FromEntity()
end
function export:f_41_Out_0()
  local l0
  self = self._graph
  l0 = self[22]
  l0:Input(0)
end
function export:f_41_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = self.IconVehicle
  l0._graph = self
  l0.Out = self.f_23_Out
  l0:FromEntity()
end
function export:f_6_DisplayRequested()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareFloats_v2.lua")]
  l0.A = self.TimeToReturnToVehicle
  l0.B = 0
  l0.Tolerance = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_lt_B = DummyFunction
  l0.A_le_B = DummyFunction
  l0.A_eq_B = DummyFunction
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_4_A_gt_B
  l0.A_ne_B = DummyFunction
  l0:In()
end
function export:f_6_NotificationHidden()
  local l0
  self = self._graph
  self:en_10()
  l0 = self[10]
  l0:Stop()
end
function export:f_8_Out_0()
  self = self._graph
  self:Disabled()
end
function export:f_8_Out_1()
  local l0
  self = self._graph
  l0 = self[9]
  l0:Input(0)
end
function export:f_14_Out()
  local l0
  self = self._graph
  self:en_7()
  l0 = self[7]
  l0:Disable()
end
function export:f_5_Equal()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_2_Out_0
  l0.Out[1] = self.f_2_Out_1
  l0:In()
end
function export:f_4_A_gt_B()
  local l0
  self = self._graph
  self:en_10()
  l0 = self[10]
  l0:Start()
end
function export:f_2_Out_0()
  self = self._graph
  self:Entered()
end
function export:f_2_Out_1()
  local l0
  self = self._graph
  l0 = self[9]
  l0:Input(1)
end
function export:f_21_Hidden()
  local l0
  self = self._graph
  self:en_6()
  l0 = self[6]
  l0:HideNotification()
end
function export:f_21_Shown()
  local l0
  self = self._graph
  self:en_6()
  l0 = self[6]
  l0:Display()
end
function export:f_46_Attached()
  local l0
  self = self._graph
  self:en_21()
  l0 = self[21]
  l0:Show()
end
function export:f_10_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_11_Out_0
  l0.Out[1] = self.f_11_Out_1
  l0:In()
end
function export:f_3_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_8_Out_0
  l0.Out[1] = self.f_8_Out_1
  l0:In()
end
function export:f_18_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_1_Out_0
  l0.Out[1] = self.f_1_Out_1
  l0:In()
end
function export:f_11_Out_0()
  self = self._graph
  self:PlayerAbandonedVehicle()
end
function export:f_11_Out_1()
  local l0
  self = self._graph
  l0 = self[14]
  l0:Input(2)
end
function export:f_12_Out_0()
  local l0
  self = self._graph
  l0 = self[22]
  l0:Input(1)
end
function export:f_12_Out_1()
  local l0
  self = self._graph
  l0 = self[14]
  l0:Input(0)
end
function export:f_26_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.Player_Vehicle = l0.Target
  self:en_7()
  l0 = self[7]
  l0:Enable()
end
function export:f_9_Out()
  local l0
  self = self._graph
  self:en_21()
  l0 = self[21]
  l0:Hide()
end
function export:f_22_Out()
  self = self._graph
  self:Out()
end
function export:f_1_Out_0()
  local l0
  self = self._graph
  l0 = self[14]
  l0:Input(1)
end
function export:f_1_Out_1()
  self = self._graph
  self:VehicleWrecked()
end
function export:en_7()
  local l0
  l0 = self[7]
  l0.Vehicle = self.Player_Vehicle
  l0.CheckNow = self.CheckNow
end
function export:en_6()
  local l0
  l0 = self[6]
  l0.Notification = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "ReturnToVehicle",
    id = "337817"
  }
  l0.Duration = -1
end
function export:en_21()
  local l0
  l0 = self[21]
  l0.MapPoint = self.Vehicle_Icon
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Acquire",
    id = "185984"
  }
end
function export:en_10()
  local l0
  l0 = self[10]
  l0.Seconds = self.TimeToReturnToVehicle
end
function export:Entered()
end
function export:Out()
end
function export:Enabled()
end
function export:Disabled()
end
function export:Exited()
end
function export:VehicleWrecked()
end
function export:PlayerAbandonedVehicle()
end
_compilerVersion = 4
