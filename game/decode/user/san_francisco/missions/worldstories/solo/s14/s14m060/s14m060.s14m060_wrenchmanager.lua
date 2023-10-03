export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AIBuddyMonitor.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/LogicGate_v2.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PawnHealthMonitor_v3.lua")
  cbox:RegisterBox("domino/System/SetEntity.lua")
end
function export:Init(cbox)
  local l0
  self.WrenchSpawned = DummyFunction
  self.Wrench = nil
  self[3] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[3]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_3_OnUserInPlace
  self[11] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[11]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_11_Out
  l0.ResetOut = DummyFunction
  self[5] = cbox:CreateBox("domino/System/AIBuddyMonitor.lua")
  l0 = self[5]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnBuddyFollowing = DummyFunction
  l0.OnBuddyInCombat = DummyFunction
  l0.OnBuddyHasNoSeat = DummyFunction
  l0.OnBuddyCantReach = DummyFunction
  l0.OnBuddyNormalRange = DummyFunction
  l0.OnBuddyTooFarBarkRange = DummyFunction
  l0.OnBuddyTooFar = DummyFunction
  l0.OnBuddyTooFarUnspawnRange = self.f_5_OnBuddyTooFarUnspawnRange
  self[9] = cbox:CreateBox("domino/System/LogicGate_v2.lua")
  l0 = self[9]
  l0._graph = self
  l0.Out = self.f_9_Out
  l0.Opened = DummyFunction
  l0.Closed = DummyFunction
  self[8] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[8]
  l0._graph = self
  self[4] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[4]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[2] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[2]
  l0._graph = self
  self[1] = cbox:CreateBox("domino/System/PawnHealthMonitor_v3.lua")
  l0 = self[1]
  l0._graph = self
  l0.Enabled = self.f_1_Enabled
  l0.Disabled = self.f_1_Disabled
  l0.Damaged = DummyFunction
  l0.Killed = self.f_1_Killed
  l0.DBNO = DummyFunction
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
function export:SpawnWrench()
  local l0
  l0 = self[3]
  l0.CLO = self.Wrench_CLO
  l0:Activate()
end
function export:Stop_DistanceFailCheck()
  local l0
  l0 = self[11]
  l0:In(1)
end
function export:UnspawnWrench()
  local l0
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_10_Out_0
  l0.Out[1] = self.f_10_Out_1
  l0:In()
end
function export:f_3_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[3]
  self.Wrench = l0.UserID
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = self.Wrench
  l0._graph = self
  l0.Out = self.f_7_Out
  l0:FromEntity()
end
function export:f_11_Out()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:Disable()
end
function export:f_5_OnBuddyTooFarUnspawnRange()
  local l0
  self = self._graph
  l0 = self[9]
  l0:In()
end
function export:f_9_Out()
  local l0
  self = self._graph
  l0 = self[8]
  l0.EndReason = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S14.S14M060.Objectives.Objective080",
    item = "Objective",
    id = "542913"
  }
  l0:Fail()
end
function export:f_10_Out_0()
  local l0
  self = self._graph
  l0 = self[11]
  l0:In(0)
end
function export:f_10_Out_1()
  local l0
  self = self._graph
  self:en_1()
  l0 = self[1]
  l0:Disable()
end
function export:f_7_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.WrenchID = l0.Target
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_6_Out_0
  l0.Out[1] = self.f_6_Out_1
  l0:In()
end
function export:f_1_Disabled()
  local l0
  self = self._graph
  l0 = self[4]
  l0.User = self.Wrench
  l0:UnspawnUser()
end
function export:f_1_Enabled()
  self = self._graph
  self:WrenchSpawned()
end
function export:f_1_Killed()
  local l0
  self = self._graph
  l0 = self[2]
  l0.EndReason = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S14.S14M060.Objectives.Objective070",
    item = "Objective",
    id = "542912"
  }
  l0:Fail()
end
function export:f_6_Out_0()
  local l0
  self = self._graph
  self:en_1()
  l0 = self[1]
  l0:Enable()
end
function export:f_6_Out_1()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:Enable()
end
function export:en_5()
  local l0
  l0 = self[5]
  l0.BuddyNPC = self.Wrench
end
function export:en_1()
  local l0
  l0 = self[1]
  l0.Pawn = self.Wrench
end
function export:WrenchSpawned()
end
_compilerVersion = 4
