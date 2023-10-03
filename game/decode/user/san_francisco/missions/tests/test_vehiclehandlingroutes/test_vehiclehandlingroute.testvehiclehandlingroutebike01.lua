export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/MapPointController_v3.lua")
  cbox:RegisterBox("domino/System/MissionMessageController.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/SetEntity.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/Library/common/SnapAndBind.SnapAndBind.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:RegisterBox("domino/System/VehicleMonitor_v2.lua")
end
function export:Init(cbox)
  local l0
  self.Out = DummyFunction
  self._9223372047326078008 = nil
  self.Bike04 = nil
  self.Boat01 = nil
  self[16] = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self[16]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = self.f_16_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[15] = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self[15]
  l0._graph = self
  l0.Shown = self.f_15_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[10] = cbox:CreateBox("domino/System/VehicleMonitor_v2.lua")
  l0 = self[10]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Entered = self.f_10_Entered
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
  self[7] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[7]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_7_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[5] = cbox:CreateBox("domino/System/MissionMessageController.lua")
  l0 = self[5]
  l0._graph = self
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 2}
  l0.Out = DummyFunction
  l0.MessageRequested = self.f_5_MessageRequested
  l0.MessageCompleted = DummyFunction
  l0.DisplayStarted = DummyFunction
  self[11] = cbox:CreateBox("domino/System/MissionMessageController.lua")
  l0 = self[11]
  l0._graph = self
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 2}
  l0.Out = DummyFunction
  l0.MessageRequested = self.f_11_MessageRequested
  l0.MessageCompleted = DummyFunction
  l0.DisplayStarted = DummyFunction
  self[25] = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self[25]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = self.f_25_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[20] = cbox:CreateBox("domino/System/MissionMessageController.lua")
  l0 = self[20]
  l0._graph = self
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 2}
  l0.Out = DummyFunction
  l0.MessageRequested = self.f_20_MessageRequested
  l0.MessageCompleted = DummyFunction
  l0.DisplayStarted = DummyFunction
  self[2] = cbox:CreateBox("domino/System/MissionMessageController.lua")
  l0 = self[2]
  l0._graph = self
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 2}
  l0.Out = DummyFunction
  l0.MessageRequested = self.f_2_MessageRequested
  l0.MessageCompleted = DummyFunction
  l0.DisplayStarted = DummyFunction
  self[9] = cbox:CreateBox("domino/Library/common/SnapAndBind.SnapAndBind.lua")
  l0 = self[9]
  l0._graph = self
  l0.Attached = self.f_9_Attached
  self[1] = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self[1]
  l0._graph = self
  l0.Shown = self.f_1_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[17] = cbox:CreateBox("domino/Library/common/SnapAndBind.SnapAndBind.lua")
  l0 = self[17]
  l0._graph = self
  l0.Attached = self.f_17_Attached
  self[19] = cbox:CreateBox("domino/System/MissionMessageController.lua")
  l0 = self[19]
  l0._graph = self
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 2}
  l0.Out = DummyFunction
  l0.MessageRequested = self.f_19_MessageRequested
  l0.MessageCompleted = DummyFunction
  l0.DisplayStarted = DummyFunction
  self[4] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[4]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_4_OnUserInPlace
  self[21] = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self[21]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[13] = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self[13]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = self.f_13_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[18] = cbox:CreateBox("domino/System/VehicleMonitor_v2.lua")
  l0 = self[18]
  l0._graph = self
  l0.Enabled = self.f_18_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Entered = self.f_18_Entered
  l0.Leave = self.f_18_Leave
  l0.Exiting = DummyFunction
  l0.ChangeSeat = DummyFunction
  l0.BailedOut = DummyFunction
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
  self[3] = cbox:CreateBox("domino/System/VehicleMonitor_v2.lua")
  l0 = self[3]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_3_Disabled
  l0.Enter = DummyFunction
  l0.Entered = self.f_3_Entered
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
  self[8] = cbox:CreateBox("domino/System/MissionMessageController.lua")
  l0 = self[8]
  l0._graph = self
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 2}
  l0.Out = self.f_8_Out
  l0.MessageRequested = DummyFunction
  l0.MessageCompleted = DummyFunction
  l0.DisplayStarted = DummyFunction
  self[6] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[6]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_6_OnUserInPlace
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
  l0 = self[4]
  l0.CLO = "9223372045973799142"
  l0:Activate()
end
function export:f_16_Hidden()
  local l0
  self = self._graph
  self:en_18()
  l0 = self[18]
  l0:Enable()
end
function export:f_15_Shown()
  local l0
  self = self._graph
  l0 = self[17]
  l0.Parent = self.Bike04
  l0.Child = "9223372047747309698"
  l0.zPosOffset = 1.5
  l0:Attach()
end
function export:f_10_Entered()
  local l0
  self = self._graph
  l0 = self[11]
  l0.MissionName = "MissionList.9223372046401533754"
  l0.DebugObjective = "Follow the waypoints"
  l0:UpdateObjective()
end
function export:f_7_Enter()
  local l0
  self = self._graph
  l0 = self[9]
  l0.Parent = self.Boat01
  l0.Child = "9223372047939285985"
  l0.zPosOffset = 1.5
  l0:Attach()
end
function export:f_22_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_24_Out
  l0:In()
end
function export:f_5_MessageRequested()
  local l0
  self = self._graph
  l0 = self[1]
  l0.MapPoint = "9223372047939285985"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0:Show()
end
function export:f_11_MessageRequested()
  local l0
  self = self._graph
  l0 = self[13]
  l0.MapPoint = "9223372047939285985"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0:Hide()
end
function export:f_25_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = self.Boat01
  l0._graph = self
  l0.Out = self.f_14_Out
  l0:FromEntity()
end
function export:f_20_MessageRequested()
  local l0
  self = self._graph
  self:en_21()
  l0 = self[21]
  l0:Hide()
end
function export:f_2_MessageRequested()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:Enable()
end
function export:f_9_Attached()
  local l0
  self = self._graph
  l0 = self[8]
  l0.MissionName = "MissionList.9223372046401533754"
  l0.DebugObjective = "Switch to the Boat"
  l0:UpdateObjective()
end
function export:f_1_Shown()
  local l0
  self = self._graph
  l0 = self[6]
  l0.CLO = "9223372047326078008"
  l0.SpawnOutsideLoadingRing = 1
  l0:Activate()
end
function export:f_17_Attached()
  local l0
  self = self._graph
  l0 = self[2]
  l0.MissionName = "MissionList.9223372046401533754"
  l0.DebugObjective = "Get on the Bike"
  l0:ShowNewObjective()
end
function export:f_23_Out_0()
  local l0
  self = self._graph
  l0 = self[10]
  l0.Vehicle = self.Boat01
  l0.Pawn = self.e_PlayerEntity
  l0:Enable()
end
function export:f_23_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_22_Out
  l0:In()
end
function export:f_19_MessageRequested()
  local l0
  self = self._graph
  self:en_21()
  l0 = self[21]
  l0:Show()
end
function export:f_4_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[4]
  self.Bike04 = l0.UserID
  l0 = self[15]
  l0.MapPoint = "9223372047747309698"
  l0:Show()
end
function export:f_14_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.e_CurrentVehicle = l0.Target
  self:Out()
end
function export:f_13_Hidden()
  local l0
  self = self._graph
  l0 = self[25]
  l0.MapPoint = "9223372047747309698"
  l0:Hide()
end
function export:f_18_Enabled()
  local l0
  self = self._graph
  l0 = self[5]
  l0.MissionName = "MissionList.9223372046401533754"
  l0.DebugObjective = "Ride to the Marina"
  l0:UpdateObjective()
end
function export:f_18_Entered()
  local l0
  self = self._graph
  l0 = self[20]
  l0.MissionName = "MissionList.9223372046401533754"
  l0.DebugObjective = "Ride to the Marina"
  l0:UpdateObjective()
end
function export:f_18_Leave()
  local l0
  self = self._graph
  l0 = self[19]
  l0.MissionName = "MissionList.9223372046401533754"
  l0.DebugObjective = "Get back to the bike"
  l0:UpdateObjective()
end
function export:f_3_Disabled()
  local l0
  self = self._graph
  l0 = self[16]
  l0.MapPoint = "9223372047747309698"
  l0:Hide()
end
function export:f_3_Entered()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:Disable()
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_23_Out_0
  l0.Out[1] = self.f_23_Out_1
  l0:In()
end
function export:f_6_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[6]
  self.Boat01 = l0.UserID
  l0 = self[12]
  l0.Seconds = 0.1
  l0:Start()
end
function export:f_24_Out()
  local l0
  self = self._graph
  self:en_18()
  l0 = self[18]
  l0:Disable()
end
function export:f_12_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[7]
  l0.Trigger = "9223372047747233237"
  l0:Enable()
end
function export:en_21()
  local l0
  l0 = self[21]
  l0.MapPoint = "9223372047747309698"
end
function export:en_18()
  local l0
  l0 = self[18]
  l0.Vehicle = self.Bike04
  l0.Pawn = self.e_PlayerEntity
end
function export:en_3()
  local l0
  l0 = self[3]
  l0.Vehicle = self.Bike04
  l0.Pawn = self.e_PlayerEntity
end
function export:Out()
end
_compilerVersion = 4
