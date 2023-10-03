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
  self._name = "S14M060_WrenchManager"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_WrenchManager"
  self.WrenchSpawned = DummyFunction
  self.Wrench = nil
  self.box_CLOController_3 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_3
  l0._graph = self
  l0._name = "box_CLOController_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_WrenchManager|201505860"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_3_OnUserInPlace
  self.box_OnceOnly_v3_11 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_11
  l0._graph = self
  l0._name = "box_OnceOnly_v3_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_WrenchManager|354148071"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_11_Out
  l0.ResetOut = DummyFunction
  self.box_AI_Buddy_Monitor_5 = cbox:CreateBox("domino/System/AIBuddyMonitor.lua")
  l0 = self.box_AI_Buddy_Monitor_5
  l0._graph = self
  l0._name = "box_AI_Buddy_Monitor_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_WrenchManager|865826518"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnBuddyFollowing = DummyFunction
  l0.OnBuddyInCombat = DummyFunction
  l0.OnBuddyHasNoSeat = DummyFunction
  l0.OnBuddyCantReach = DummyFunction
  l0.OnBuddyNormalRange = DummyFunction
  l0.OnBuddyTooFarBarkRange = DummyFunction
  l0.OnBuddyTooFar = DummyFunction
  l0.OnBuddyTooFarUnspawnRange = self.f_box_AI_Buddy_Monitor_5_OnBuddyTooFarUnspawnRange
  self.box_LogicGate_v2_9 = cbox:CreateBox("domino/System/LogicGate_v2.lua")
  l0 = self.box_LogicGate_v2_9
  l0._graph = self
  l0._name = "box_LogicGate_v2_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_WrenchManager|885463044"
  l0.Out = self.f_box_LogicGate_v2_9_Out
  l0.Opened = DummyFunction
  l0.Closed = DummyFunction
  self.box_MissionController_v4_8 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_8
  l0._graph = self
  l0._name = "box_MissionController_v4_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_WrenchManager|889156071"
  self.box_CLOController_4 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_4
  l0._graph = self
  l0._name = "box_CLOController_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_WrenchManager|900450650"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_MissionController_v4_2 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_2
  l0._graph = self
  l0._name = "box_MissionController_v4_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_WrenchManager|1074705479"
  self.box_PawnHealthMonitor_v3_1 = cbox:CreateBox("domino/System/PawnHealthMonitor_v3.lua")
  l0 = self.box_PawnHealthMonitor_v3_1
  l0._graph = self
  l0._name = "box_PawnHealthMonitor_v3_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_WrenchManager|1992649683"
  l0.Enabled = self.f_box_PawnHealthMonitor_v3_1_Enabled
  l0.Disabled = self.f_box_PawnHealthMonitor_v3_1_Disabled
  l0.Damaged = DummyFunction
  l0.Killed = self.f_box_PawnHealthMonitor_v3_1_Killed
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
  l0 = self.box_CLOController_3
  l0.CLO = self.Wrench_CLO
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_WrenchManager|1774515751", "1774515751", "S14M060_WrenchManager", "SpawnWrench", "box_CLOController_3.Activate", self, l0)
  l0:Activate()
end
function export:Stop_DistanceFailCheck()
  local l0
  self:OnEnter_box_OnceOnly_v3_11()
  l0 = self.box_OnceOnly_v3_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_WrenchManager|205979893", "205979893", "S14M060_WrenchManager", "Stop_DistanceFailCheck", "box_OnceOnly_v3_11.In", self, l0)
  l0:In(1)
end
function export:UnspawnWrench()
  local l0
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_WrenchManager|1042600324"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_10_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_10_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_WrenchManager|53311726", "53311726", "S14M060_WrenchManager", "UnspawnWrench", "box_Ordered_Output_10.In", self, l0)
  l0:In()
end
function export:f_box_CLOController_3_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_3
  self.Wrench = l0.UserID
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = self.Wrench
  l0._graph = self
  l0._name = "box_Set_Entity_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_WrenchManager|1771677073"
  l0.Out = self.f_box_Set_Entity_7_Out
  l0 = self.box_CLOController_3
  l1 = Boxes[PathID("domino/System/SetEntity.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_WrenchManager|1462427749", "1462427749", "S14M060_WrenchManager", "box_CLOController_3.OnUserInPlace", "box_Set_Entity_7.FromEntity", l0, l1)
  l1:FromEntity()
end
function export:f_box_OnceOnly_v3_11_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_AI_Buddy_Monitor_5()
  l0 = self.box_OnceOnly_v3_11
  l1 = self.box_AI_Buddy_Monitor_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_WrenchManager|1492602726", "1492602726", "S14M060_WrenchManager", "box_OnceOnly_v3_11.Out", "box_AI_Buddy_Monitor_5.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_AI_Buddy_Monitor_5_OnBuddyTooFarUnspawnRange()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_Buddy_Monitor_5
  l1 = self.box_LogicGate_v2_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_WrenchManager|1222278473", "1222278473", "S14M060_WrenchManager", "box_AI_Buddy_Monitor_5.OnBuddyTooFarUnspawnRange", "box_LogicGate_v2_9.In", l0, l1)
  l1:In()
end
function export:f_box_LogicGate_v2_9_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionController_v4_8
  l0.EndReason = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S14.S14M060.Objectives.Objective080",
    item = "Objective",
    id = "542913"
  }
  l0 = self.box_LogicGate_v2_9
  l1 = self.box_MissionController_v4_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_WrenchManager|786189982", "786189982", "S14M060_WrenchManager", "box_LogicGate_v2_9.Out", "box_MissionController_v4_8.Fail", l0, l1)
  l1:Fail()
end
function export:f_box_Ordered_Output_10_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_11()
  l0 = self.box_OnceOnly_v3_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_WrenchManager|1081595875", "1081595875", "S14M060_WrenchManager", "box_Ordered_Output_10.Out", "box_OnceOnly_v3_11.In", clone, l0)
  l0:In(0)
end
function export:f_box_Ordered_Output_10_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_PawnHealthMonitor_v3_1()
  l0 = self.box_PawnHealthMonitor_v3_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_WrenchManager|1185209974", "1185209974", "S14M060_WrenchManager", "box_Ordered_Output_10.Out", "box_PawnHealthMonitor_v3_1.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Set_Entity_7_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.WrenchID = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_WrenchManager|2083678125"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_6_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_6_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_WrenchManager|1202179734", "1202179734", "S14M060_WrenchManager", "box_Set_Entity_7.Out", "box_Ordered_Output_6.In", clone, l0)
  l0:In()
end
function export:f_box_PawnHealthMonitor_v3_1_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_4
  l0.User = self.Wrench
  l0 = self.box_PawnHealthMonitor_v3_1
  l1 = self.box_CLOController_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_WrenchManager|821213708", "821213708", "S14M060_WrenchManager", "box_PawnHealthMonitor_v3_1.Disabled", "box_CLOController_4.UnspawnUser", l0, l1)
  l1:UnspawnUser()
end
function export:f_box_PawnHealthMonitor_v3_1_Enabled()
  local l0
  self = self._graph
  l0 = self.box_PawnHealthMonitor_v3_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_WrenchManager|355745050", "355745050", "S14M060_WrenchManager", "box_PawnHealthMonitor_v3_1.Enabled", "WrenchSpawned", l0, self)
  self:WrenchSpawned()
end
function export:f_box_PawnHealthMonitor_v3_1_Killed()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionController_v4_2
  l0.EndReason = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S14.S14M060.Objectives.Objective070",
    item = "Objective",
    id = "542912"
  }
  l0 = self.box_PawnHealthMonitor_v3_1
  l1 = self.box_MissionController_v4_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_WrenchManager|2023907355", "2023907355", "S14M060_WrenchManager", "box_PawnHealthMonitor_v3_1.Killed", "box_MissionController_v4_2.Fail", l0, l1)
  l1:Fail()
end
function export:f_box_Ordered_Output_6_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_PawnHealthMonitor_v3_1()
  l0 = self.box_PawnHealthMonitor_v3_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_WrenchManager|1526549653", "1526549653", "S14M060_WrenchManager", "box_Ordered_Output_6.Out", "box_PawnHealthMonitor_v3_1.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_6_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_AI_Buddy_Monitor_5()
  l0 = self.box_AI_Buddy_Monitor_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_WrenchManager|378679358", "378679358", "S14M060_WrenchManager", "box_Ordered_Output_6.Out", "box_AI_Buddy_Monitor_5.Enable", clone, l0)
  l0:Enable()
end
function export:OnEnter_box_OnceOnly_v3_11()
end
function export:OnEnter_box_AI_Buddy_Monitor_5()
  local l0
  l0 = self.box_AI_Buddy_Monitor_5
  l0.BuddyNPC = self.Wrench
end
function export:OnEnter_box_PawnHealthMonitor_v3_1()
  local l0
  l0 = self.box_PawnHealthMonitor_v3_1
  l0.Pawn = self.Wrench
end
function export:WrenchSpawned()
end
_compilerVersion = 4
