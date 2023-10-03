export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AIBuddyMonitor.lua")
  cbox:RegisterBox("domino/System/Lists/ListLength.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PawnHealthMonitor_v3.lua")
  cbox:RegisterBox("domino/System/SetEntity.lua")
  cbox:RegisterBox("domino/System/Lists/SetList.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/VehicleMonitor_v3.lua")
end
function export:Init(cbox)
  local l0
  self.BusDestroyed = DummyFunction
  self.PlayerLeftBus = DummyFunction
  self.StartConversation = DummyFunction
  self.ObjectiveReachDestination = DummyFunction
  self.Stopped = DummyFunction
  self.EnteringBus = DummyFunction
  self.BuddyConditionFailed = DummyFunction
  self.BuddyKilled = DummyFunction
  self.PassengersInjured = DummyFunction
  self.NudleBus = nil
  self.Buddy = nil
  self.PassengersList = {}
  self[17] = cbox:CreateBox("domino/System/AIBuddyMonitor.lua")
  l0 = self[17]
  l0._graph = self
  l0.Enabled = self.f_17_Enabled
  l0.Disabled = self.f_17_Disabled
  l0.OnBuddyFollowing = DummyFunction
  l0.OnBuddyInCombat = DummyFunction
  l0.OnBuddyHasNoSeat = DummyFunction
  l0.OnBuddyCantReach = DummyFunction
  l0.OnBuddyNormalRange = DummyFunction
  l0.OnBuddyTooFarBarkRange = DummyFunction
  l0.OnBuddyTooFar = DummyFunction
  l0.OnBuddyTooFarUnspawnRange = self.f_17_OnBuddyTooFarUnspawnRange
  self[18] = cbox:CreateBox("domino/System/PawnHealthMonitor_v3.lua")
  l0 = self[18]
  l0._graph = self
  l0.Enabled = self.f_18_Enabled
  l0.Disabled = self.f_18_Disabled
  l0.Damaged = DummyFunction
  l0.Killed = self.f_18_Killed
  l0.DBNO = self.f_18_DBNO
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
  self[5] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[5]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_5_Out
  l0.ResetOut = DummyFunction
  self[16] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[16]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_16_Out
  l0.ResetOut = DummyFunction
  self[6] = cbox:CreateBox("domino/System/VehicleMonitor_v3.lua")
  l0 = self[6]
  l0._graph = self
  l0.Enabled = self.f_6_Enabled
  l0.Disabled = self.f_6_Disabled
  l0.Enter = self.f_6_Enter
  l0.Entered = self.f_6_Entered
  l0.PassangerEntered = DummyFunction
  l0.Leave = self.f_6_Leave
  l0.Exiting = DummyFunction
  l0.ChangeSeat = DummyFunction
  l0.BailedOut = DummyFunction
  l0.IsPawnHiding = DummyFunction
  l0.PawnIsNotHiding = DummyFunction
  l0.StateChange = DummyFunction
  l0.TakenDamage = DummyFunction
  l0.IsUnusable = self.f_6_IsUnusable
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
  l0.NitroUsed = DummyFunction
  l0.NitroStopped = DummyFunction
  l0.IsFlipped = DummyFunction
  l0.IsUnFlipped = DummyFunction
  l0.Unloaded = DummyFunction
  self[23] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[23]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_23_Out
  l0.ResetOut = DummyFunction
  self[13] = cbox:CreateBox("domino/System/PawnHealthMonitor_v3.lua")
  l0 = self[13]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Damaged = DummyFunction
  l0.Killed = self.f_13_Killed
  l0.DBNO = self.f_13_DBNO
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
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
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = self.Vehicle
  l0._graph = self
  l0.Out = self.f_14_Out
  l0:FromEntity()
end
function export:Stop()
  local l0
  self:en_6()
  l0 = self[6]
  l0:Disable()
end
function export:f_17_Disabled()
  local l0
  self = self._graph
  self:en_18()
  l0 = self[18]
  l0:Disable()
end
function export:f_17_Enabled()
  local l0
  self = self._graph
  self:en_18()
  l0 = self[18]
  l0:Enable()
end
function export:f_17_OnBuddyTooFarUnspawnRange()
  self = self._graph
  self:BuddyConditionFailed()
end
function export:f_14_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.NudleBus = l0.Target
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = self.BuddyNPC
  l0._graph = self
  l0.Out = self.f_19_Out
  l0:FromEntity()
end
function export:f_18_DBNO()
  local l0
  self = self._graph
  l0 = self[23]
  l0:In(1)
end
function export:f_18_Disabled()
  local l0
  self = self._graph
  self:en_13()
  l0 = self[13]
  l0:Disable()
end
function export:f_18_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  l0.Input = self.PassengersList
  l0._graph = self
  l0.Out = DummyFunction
  l0.Empty = DummyFunction
  l0.NotEmpty = self.f_21_NotEmpty
  l0:GetLength()
end
function export:f_18_Killed()
  local l0
  self = self._graph
  l0 = self[23]
  l0:In(0)
end
function export:f_20_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/SetList.lua")]
  self.PassengersList = l0.Target
  self:en_6()
  l0 = self[6]
  l0:Enable()
end
function export:f_12_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_11_Out
  l0:In()
end
function export:f_5_Out()
  self = self._graph
  self:StartConversation()
end
function export:f_16_Out()
  self = self._graph
  self:PassengersInjured()
end
function export:f_15_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_12_Out
  l0:In()
end
function export:f_15_Out_1()
  local l0
  self = self._graph
  self:en_17()
  l0 = self[17]
  l0:Disable()
end
function export:f_11_Out()
  self = self._graph
  self:Stopped()
end
function export:f_6_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_15_Out_0
  l0.Out[1] = self.f_15_Out_1
  l0:In()
end
function export:f_6_Enabled()
  local l0
  self = self._graph
  self:en_17()
  l0 = self[17]
  l0:Enable()
end
function export:f_6_Enter()
  self = self._graph
  self:EnteringBus()
end
function export:f_6_Entered()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_9_Out_0
  l0.Out[1] = self.f_9_Out_1
  l0:In()
end
function export:f_6_IsUnusable()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_22_Out
  l0:In()
end
function export:f_6_Leave()
  self = self._graph
  self:PlayerLeftBus()
end
function export:f_19_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.Buddy = l0.Target
  l0 = Boxes[PathID("domino/System/Lists/SetList.lua")]
  l0.List = self.Passengers
  l0._graph = self
  l0.Out = self.f_20_Out
  l0:FromList()
end
function export:f_9_Out_0()
  local l0
  self = self._graph
  l0 = self[5]
  l0:In(0)
end
function export:f_9_Out_1()
  self = self._graph
  self:ObjectiveReachDestination()
end
function export:f_23_Out()
  self = self._graph
  self:BuddyKilled()
end
function export:f_22_Out()
  self = self._graph
  self:BusDestroyed()
end
function export:f_21_NotEmpty()
  local l0
  self = self._graph
  self:en_13()
  l0 = self[13]
  l0:Enable()
end
function export:f_13_DBNO()
  local l0
  self = self._graph
  l0 = self[16]
  l0:In(1)
end
function export:f_13_Killed()
  local l0
  self = self._graph
  l0 = self[16]
  l0:In(0)
end
function export:en_17()
  local l0
  l0 = self[17]
  l0.BuddyNPC = self.Buddy
end
function export:en_18()
  local l0
  l0 = self[18]
  l0.Pawn = self.Buddy
end
function export:en_6()
  local l0
  l0 = self[6]
  l0.Vehicle = self.NudleBus
  l0.CheckNow = 1
end
function export:en_13()
  local l0
  l0 = self[13]
  l0.PawnList = self.PassengersList
end
function export:BusDestroyed()
end
function export:PlayerLeftBus()
end
function export:StartConversation()
end
function export:ObjectiveReachDestination()
end
function export:Stopped()
end
function export:EnteringBus()
end
function export:BuddyConditionFailed()
end
function export:BuddyKilled()
end
function export:PassengersInjured()
end
_compilerVersion = 4
