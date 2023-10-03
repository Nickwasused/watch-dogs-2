export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/LoadCheckpoint.lua")
  cbox:RegisterBox("domino/System/MapPointController_v3.lua")
  cbox:RegisterBox("domino/System/MissionMessageController.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/Library/common/SnapAndBind.SnapAndBind.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:RegisterBox("domino/System/VehicleMonitor_v2.lua")
end
function export:Init(cbox)
  local l0
  self.StartChase = DummyFunction
  self.Bike04 = nil
  self[4] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[4]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_4_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[8] = cbox:CreateBox("domino/System/VehicleMonitor_v2.lua")
  l0 = self[8]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Entered = self.f_8_Entered
  l0.Leave = self.f_8_Leave
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
  self[16] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[16]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_16_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[7] = cbox:CreateBox("domino/System/MissionMessageController.lua")
  l0 = self[7]
  l0._graph = self
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 2}
  l0.Out = DummyFunction
  l0.MessageRequested = self.f_7_MessageRequested
  l0.MessageCompleted = DummyFunction
  l0.DisplayStarted = DummyFunction
  self[13] = cbox:CreateBox("domino/System/LoadCheckpoint.lua")
  l0 = self[13]
  l0._graph = self
  l0.Out = DummyFunction
  self[1] = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self[1]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = self.f_1_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[6] = cbox:CreateBox("domino/System/MissionMessageController.lua")
  l0 = self[6]
  l0._graph = self
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 2}
  l0.Out = DummyFunction
  l0.MessageRequested = DummyFunction
  l0.MessageCompleted = self.f_6_MessageCompleted
  l0.DisplayStarted = DummyFunction
  self[10] = cbox:CreateBox("domino/System/MissionMessageController.lua")
  l0 = self[10]
  l0._graph = self
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 2}
  l0.Out = DummyFunction
  l0.MessageRequested = self.f_10_MessageRequested
  l0.MessageCompleted = DummyFunction
  l0.DisplayStarted = DummyFunction
  self[11] = cbox:CreateBox("domino/Library/common/SnapAndBind.SnapAndBind.lua")
  l0 = self[11]
  l0._graph = self
  l0.Attached = self.f_11_Attached
  self[15] = cbox:CreateBox("domino/System/MissionMessageController.lua")
  l0 = self[15]
  l0._graph = self
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 2}
  l0.Out = self.f_15_Out
  l0.MessageRequested = DummyFunction
  l0.MessageCompleted = DummyFunction
  l0.DisplayStarted = DummyFunction
  self[17] = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self[17]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = self.f_17_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[9] = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self[9]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[3] = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self[3]
  l0._graph = self
  l0.Shown = self.f_3_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[2] = cbox:CreateBox("domino/System/VehicleMonitor_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Entered = self.f_2_Entered
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
  l0.Vehicle = self.e_CurrentVehicle
  l0:Enable()
end
function export:f_4_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[13]
  l0:LoadCheckpoint()
end
function export:f_8_Entered()
  local l0
  self = self._graph
  l0 = self[7]
  l0.MissionName = "MissionList.9223372046401533754"
  l0.DebugObjective = "return to the park"
  l0:UpdateObjective()
end
function export:f_8_Leave()
  local l0
  self = self._graph
  l0 = self[10]
  l0.MissionName = "MissionList.9223372046401533754"
  l0.DebugObjective = "Get back to the bike"
  l0:UpdateObjective()
end
function export:f_16_Enter()
  local l0
  self = self._graph
  l0 = self[17]
  l0.MapPoint = "9223372047939285987"
  l0:Hide()
end
function export:f_7_MessageRequested()
  local l0
  self = self._graph
  self:en_9()
  l0 = self[9]
  l0:Hide()
end
function export:f_1_Hidden()
  local l0
  self = self._graph
  l0 = self[3]
  l0.MapPoint = "9223372047939285987"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0:Show()
end
function export:f_6_MessageCompleted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_14_Out_0
  l0.Out[1] = self.f_14_Out_1
  l0:In()
end
function export:f_10_MessageRequested()
  local l0
  self = self._graph
  self:en_9()
  l0 = self[9]
  l0:Show()
end
function export:f_11_Attached()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_12_Out_0
  l0.Out[1] = self.f_12_Out_1
  l0:In()
end
function export:f_15_Out()
  local l0
  self = self._graph
  l0 = self[4]
  l0.Seconds = 5
  l0:Start()
end
function export:f_12_Out_0()
  local l0
  self = self._graph
  l0 = self[6]
  l0.MissionName = "MissionList.9223372046401533754"
  l0.DebugObjective = "Return to the Park and evade the police"
  l0:UpdateObjective()
end
function export:f_12_Out_1()
  local l0
  self = self._graph
  l0 = self[8]
  l0.Vehicle = self.e_CurrentVehicle
  l0.Pawn = self.e_PlayerEntity
  l0:Enable()
end
function export:f_17_Hidden()
  local l0
  self = self._graph
  l0 = self[15]
  l0.MissionName = "MissionList.9223372046401533754"
  l0.DebugObjective = "Thanks for playing!"
  l0:UpdateObjective()
end
function export:f_14_Out_0()
  self = self._graph
  self:StartChase()
end
function export:f_14_Out_1()
  local l0
  self = self._graph
  l0 = self[16]
  l0.Trigger = "9223372047939362971"
  l0:Enable()
end
function export:f_3_Shown()
  local l0
  self = self._graph
  l0 = self[11]
  l0.Parent = self.e_CurrentVehicle
  l0.Child = "9223372047747307766"
  l0.zPosOffset = 1.5
  l0:Attach()
end
function export:f_2_Entered()
  local l0
  self = self._graph
  l0 = self[1]
  l0.MapPoint = "9223372047747307766"
  l0:Hide()
end
function export:en_9()
  local l0
  l0 = self[9]
  l0.MapPoint = "9223372047747307766"
end
function export:StartChase()
end
_compilerVersion = 4
