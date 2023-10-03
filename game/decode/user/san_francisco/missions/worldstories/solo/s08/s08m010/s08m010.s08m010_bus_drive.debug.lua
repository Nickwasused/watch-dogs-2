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
  self._name = "S08M010_Bus_Drive"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Bus_Drive"
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
  self.box_AI_Buddy_Monitor_17 = cbox:CreateBox("domino/System/AIBuddyMonitor.lua")
  l0 = self.box_AI_Buddy_Monitor_17
  l0._graph = self
  l0._name = "box_AI_Buddy_Monitor_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Bus_Drive|72543753"
  l0.Enabled = self.f_box_AI_Buddy_Monitor_17_Enabled
  l0.Disabled = self.f_box_AI_Buddy_Monitor_17_Disabled
  l0.OnBuddyFollowing = DummyFunction
  l0.OnBuddyInCombat = DummyFunction
  l0.OnBuddyHasNoSeat = DummyFunction
  l0.OnBuddyCantReach = DummyFunction
  l0.OnBuddyNormalRange = DummyFunction
  l0.OnBuddyTooFarBarkRange = DummyFunction
  l0.OnBuddyTooFar = DummyFunction
  l0.OnBuddyTooFarUnspawnRange = self.f_box_AI_Buddy_Monitor_17_OnBuddyTooFarUnspawnRange
  self.box_PawnHealthMonitor_v3_18 = cbox:CreateBox("domino/System/PawnHealthMonitor_v3.lua")
  l0 = self.box_PawnHealthMonitor_v3_18
  l0._graph = self
  l0._name = "box_PawnHealthMonitor_v3_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Bus_Drive|258950322"
  l0.Enabled = self.f_box_PawnHealthMonitor_v3_18_Enabled
  l0.Disabled = self.f_box_PawnHealthMonitor_v3_18_Disabled
  l0.Damaged = DummyFunction
  l0.Killed = self.f_box_PawnHealthMonitor_v3_18_Killed
  l0.DBNO = self.f_box_PawnHealthMonitor_v3_18_DBNO
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
  self.box_OnceOnly_v3_5 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_5
  l0._graph = self
  l0._name = "box_OnceOnly_v3_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Bus_Drive|821782612"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_5_Out
  l0.ResetOut = DummyFunction
  self.box_OnceOnly_v3_16 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_16
  l0._graph = self
  l0._name = "box_OnceOnly_v3_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Bus_Drive|969912419"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_16_Out
  l0.ResetOut = DummyFunction
  self.box_VehicleMonitor_v3_6 = cbox:CreateBox("domino/System/VehicleMonitor_v3.lua")
  l0 = self.box_VehicleMonitor_v3_6
  l0._graph = self
  l0._name = "box_VehicleMonitor_v3_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Bus_Drive|1201282744"
  l0.Enabled = self.f_box_VehicleMonitor_v3_6_Enabled
  l0.Disabled = self.f_box_VehicleMonitor_v3_6_Disabled
  l0.Enter = self.f_box_VehicleMonitor_v3_6_Enter
  l0.Entered = self.f_box_VehicleMonitor_v3_6_Entered
  l0.PassangerEntered = DummyFunction
  l0.Leave = self.f_box_VehicleMonitor_v3_6_Leave
  l0.Exiting = DummyFunction
  l0.ChangeSeat = DummyFunction
  l0.BailedOut = DummyFunction
  l0.IsPawnHiding = DummyFunction
  l0.PawnIsNotHiding = DummyFunction
  l0.StateChange = DummyFunction
  l0.TakenDamage = DummyFunction
  l0.IsUnusable = self.f_box_VehicleMonitor_v3_6_IsUnusable
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
  self.box_OnceOnly_v3_23 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_23
  l0._graph = self
  l0._name = "box_OnceOnly_v3_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Bus_Drive|1692129332"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_23_Out
  l0.ResetOut = DummyFunction
  self.box_PawnHealthMonitor_v3_13 = cbox:CreateBox("domino/System/PawnHealthMonitor_v3.lua")
  l0 = self.box_PawnHealthMonitor_v3_13
  l0._graph = self
  l0._name = "box_PawnHealthMonitor_v3_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Bus_Drive|2066070824"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Damaged = DummyFunction
  l0.Killed = self.f_box_PawnHealthMonitor_v3_13_Killed
  l0.DBNO = self.f_box_PawnHealthMonitor_v3_13_DBNO
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
  l0._name = "box_Set_Entity_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Bus_Drive|178408235"
  l0.Out = self.f_box_Set_Entity_14_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Bus_Drive|409234265", "409234265", "S08M010_Bus_Drive", "Start", "box_Set_Entity_14.FromEntity", self, l0)
  l0:FromEntity()
end
function export:Stop()
  local l0
  self:OnEnter_box_VehicleMonitor_v3_6()
  l0 = self.box_VehicleMonitor_v3_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Bus_Drive|433392518", "433392518", "S08M010_Bus_Drive", "Stop", "box_VehicleMonitor_v3_6.Disable", self, l0)
  l0:Disable()
end
function export:f_box_AI_Buddy_Monitor_17_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PawnHealthMonitor_v3_18()
  l0 = self.box_AI_Buddy_Monitor_17
  l1 = self.box_PawnHealthMonitor_v3_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Bus_Drive|1549756592", "1549756592", "S08M010_Bus_Drive", "box_AI_Buddy_Monitor_17.Disabled", "box_PawnHealthMonitor_v3_18.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_AI_Buddy_Monitor_17_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PawnHealthMonitor_v3_18()
  l0 = self.box_AI_Buddy_Monitor_17
  l1 = self.box_PawnHealthMonitor_v3_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Bus_Drive|1606484056", "1606484056", "S08M010_Bus_Drive", "box_AI_Buddy_Monitor_17.Enabled", "box_PawnHealthMonitor_v3_18.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_AI_Buddy_Monitor_17_OnBuddyTooFarUnspawnRange()
  local l0
  self = self._graph
  l0 = self.box_AI_Buddy_Monitor_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Bus_Drive|1081512371", "1081512371", "S08M010_Bus_Drive", "box_AI_Buddy_Monitor_17.OnBuddyTooFarUnspawnRange", "BuddyConditionFailed", l0, self)
  self:BuddyConditionFailed()
end
function export:f_box_Set_Entity_14_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.NudleBus = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = self.BuddyNPC
  l0._graph = self
  l0._name = "box_Set_Entity_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Bus_Drive|1482950404"
  l0.Out = self.f_box_Set_Entity_19_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Bus_Drive|1798175821", "1798175821", "S08M010_Bus_Drive", "box_Set_Entity_14.Out", "box_Set_Entity_19.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_PawnHealthMonitor_v3_18_DBNO()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_23()
  l0 = self.box_PawnHealthMonitor_v3_18
  l1 = self.box_OnceOnly_v3_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Bus_Drive|822328342", "822328342", "S08M010_Bus_Drive", "box_PawnHealthMonitor_v3_18.DBNO", "box_OnceOnly_v3_23.In", l0, l1)
  l1:In(1)
end
function export:f_box_PawnHealthMonitor_v3_18_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PawnHealthMonitor_v3_13()
  l0 = self.box_PawnHealthMonitor_v3_18
  l1 = self.box_PawnHealthMonitor_v3_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Bus_Drive|401455649", "401455649", "S08M010_Bus_Drive", "box_PawnHealthMonitor_v3_18.Disabled", "box_PawnHealthMonitor_v3_13.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_PawnHealthMonitor_v3_18_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  l0.Input = self.PassengersList
  l0._graph = self
  l0._name = "box_ListLength_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Bus_Drive|1850924276"
  l0.Out = DummyFunction
  l0.Empty = DummyFunction
  l0.NotEmpty = self.f_box_ListLength_21_NotEmpty
  l0 = self.box_PawnHealthMonitor_v3_18
  l1 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Bus_Drive|257787746", "257787746", "S08M010_Bus_Drive", "box_PawnHealthMonitor_v3_18.Enabled", "box_ListLength_21.GetLength", l0, l1)
  l1:GetLength()
end
function export:f_box_PawnHealthMonitor_v3_18_Killed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_23()
  l0 = self.box_PawnHealthMonitor_v3_18
  l1 = self.box_OnceOnly_v3_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Bus_Drive|1935070297", "1935070297", "S08M010_Bus_Drive", "box_PawnHealthMonitor_v3_18.Killed", "box_OnceOnly_v3_23.In", l0, l1)
  l1:In(0)
end
function export:f_box_Set_List_20_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/SetList.lua")]
  self.PassengersList = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VehicleMonitor_v3_6()
  l0 = self.box_VehicleMonitor_v3_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Bus_Drive|1896911896", "1896911896", "S08M010_Bus_Drive", "box_Set_List_20.Out", "box_VehicleMonitor_v3_6.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Simple_Node_12_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Bus_Drive|1165785508"
  l0.Out = self.f_box_Simple_Node_11_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Bus_Drive|60134486", "60134486", "S08M010_Bus_Drive", "box_Simple_Node_12.Out", "box_Simple_Node_11.In", clone, l0)
  l0:In()
end
function export:f_box_OnceOnly_v3_5_Out()
  local l0
  self = self._graph
  l0 = self.box_OnceOnly_v3_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Bus_Drive|386060940", "386060940", "S08M010_Bus_Drive", "box_OnceOnly_v3_5.Out", "StartConversation", l0, self)
  self:StartConversation()
end
function export:f_box_OnceOnly_v3_16_Out()
  local l0
  self = self._graph
  l0 = self.box_OnceOnly_v3_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Bus_Drive|556789062", "556789062", "S08M010_Bus_Drive", "box_OnceOnly_v3_16.Out", "PassengersInjured", l0, self)
  self:PassengersInjured()
end
function export:f_box_Ordered_Output_15_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Bus_Drive|575656089"
  l0.Out = self.f_box_Simple_Node_12_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Bus_Drive|1709536345", "1709536345", "S08M010_Bus_Drive", "box_Ordered_Output_15.Out", "box_Simple_Node_12.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_15_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_AI_Buddy_Monitor_17()
  l0 = self.box_AI_Buddy_Monitor_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Bus_Drive|563756118", "563756118", "S08M010_Bus_Drive", "box_Ordered_Output_15.Out", "box_AI_Buddy_Monitor_17.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Simple_Node_11_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Bus_Drive|763602297", "763602297", "S08M010_Bus_Drive", "box_Simple_Node_11.Out", "Stopped", clone, self)
  self:Stopped()
end
function export:f_box_VehicleMonitor_v3_6_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Bus_Drive|1009254544"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_15_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_15_Out_1
  l0 = self.box_VehicleMonitor_v3_6
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Bus_Drive|1269983429", "1269983429", "S08M010_Bus_Drive", "box_VehicleMonitor_v3_6.Disabled", "box_Ordered_Output_15.In", l0, l1)
  l1:In()
end
function export:f_box_VehicleMonitor_v3_6_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_AI_Buddy_Monitor_17()
  l0 = self.box_VehicleMonitor_v3_6
  l1 = self.box_AI_Buddy_Monitor_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Bus_Drive|1436464604", "1436464604", "S08M010_Bus_Drive", "box_VehicleMonitor_v3_6.Enabled", "box_AI_Buddy_Monitor_17.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_VehicleMonitor_v3_6_Enter()
  local l0
  self = self._graph
  l0 = self.box_VehicleMonitor_v3_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Bus_Drive|319418445", "319418445", "S08M010_Bus_Drive", "box_VehicleMonitor_v3_6.Enter", "EnteringBus", l0, self)
  self:EnteringBus()
end
function export:f_box_VehicleMonitor_v3_6_Entered()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Bus_Drive|1627497942"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_9_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_9_Out_1
  l0 = self.box_VehicleMonitor_v3_6
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Bus_Drive|472940108", "472940108", "S08M010_Bus_Drive", "box_VehicleMonitor_v3_6.Entered", "box_Ordered_Output_9.In", l0, l1)
  l1:In()
end
function export:f_box_VehicleMonitor_v3_6_IsUnusable()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Bus_Drive|1849794850"
  l0.Out = self.f_box_Simple_Node_22_Out
  l0 = self.box_VehicleMonitor_v3_6
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Bus_Drive|1099481468", "1099481468", "S08M010_Bus_Drive", "box_VehicleMonitor_v3_6.IsUnusable", "box_Simple_Node_22.In", l0, l1)
  l1:In()
end
function export:f_box_VehicleMonitor_v3_6_Leave()
  local l0
  self = self._graph
  l0 = self.box_VehicleMonitor_v3_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Bus_Drive|396360455", "396360455", "S08M010_Bus_Drive", "box_VehicleMonitor_v3_6.Leave", "PlayerLeftBus", l0, self)
  self:PlayerLeftBus()
end
function export:f_box_Set_Entity_19_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.Buddy = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/Lists/SetList.lua")]
  l0.List = self.Passengers
  l0._graph = self
  l0._name = "box_Set_List_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Bus_Drive|261824668"
  l0.Out = self.f_box_Set_List_20_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Bus_Drive|1588085603", "1588085603", "S08M010_Bus_Drive", "box_Set_Entity_19.Out", "box_Set_List_20.FromList", clone, l0)
  l0:FromList()
end
function export:f_box_Ordered_Output_9_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_OnceOnly_v3_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Bus_Drive|868768111", "868768111", "S08M010_Bus_Drive", "box_Ordered_Output_9.Out", "box_OnceOnly_v3_5.In", clone, l0)
  l0:In(0)
end
function export:f_box_Ordered_Output_9_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Bus_Drive|612576198", "612576198", "S08M010_Bus_Drive", "box_Ordered_Output_9.Out", "ObjectiveReachDestination", clone, self)
  self:ObjectiveReachDestination()
end
function export:f_box_OnceOnly_v3_23_Out()
  local l0
  self = self._graph
  l0 = self.box_OnceOnly_v3_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Bus_Drive|793964610", "793964610", "S08M010_Bus_Drive", "box_OnceOnly_v3_23.Out", "BuddyKilled", l0, self)
  self:BuddyKilled()
end
function export:f_box_Simple_Node_22_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Bus_Drive|487300828", "487300828", "S08M010_Bus_Drive", "box_Simple_Node_22.Out", "BusDestroyed", clone, self)
  self:BusDestroyed()
end
function export:f_box_ListLength_21_NotEmpty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_PawnHealthMonitor_v3_13()
  l0 = self.box_PawnHealthMonitor_v3_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Bus_Drive|1760263753", "1760263753", "S08M010_Bus_Drive", "box_ListLength_21.NotEmpty", "box_PawnHealthMonitor_v3_13.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_PawnHealthMonitor_v3_13_DBNO()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_16()
  l0 = self.box_PawnHealthMonitor_v3_13
  l1 = self.box_OnceOnly_v3_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Bus_Drive|278393432", "278393432", "S08M010_Bus_Drive", "box_PawnHealthMonitor_v3_13.DBNO", "box_OnceOnly_v3_16.In", l0, l1)
  l1:In(1)
end
function export:f_box_PawnHealthMonitor_v3_13_Killed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_16()
  l0 = self.box_PawnHealthMonitor_v3_13
  l1 = self.box_OnceOnly_v3_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Bus_Drive|320939030", "320939030", "S08M010_Bus_Drive", "box_PawnHealthMonitor_v3_13.Killed", "box_OnceOnly_v3_16.In", l0, l1)
  l1:In(0)
end
function export:OnEnter_box_AI_Buddy_Monitor_17()
  local l0
  l0 = self.box_AI_Buddy_Monitor_17
  l0.BuddyNPC = self.Buddy
end
function export:OnEnter_box_PawnHealthMonitor_v3_18()
  local l0
  l0 = self.box_PawnHealthMonitor_v3_18
  l0.Pawn = self.Buddy
end
function export:OnEnter_box_OnceOnly_v3_16()
end
function export:OnEnter_box_VehicleMonitor_v3_6()
  local l0
  l0 = self.box_VehicleMonitor_v3_6
  l0.Vehicle = self.NudleBus
  l0.CheckNow = 1
end
function export:OnEnter_box_OnceOnly_v3_23()
end
function export:OnEnter_box_PawnHealthMonitor_v3_13()
  local l0
  l0 = self.box_PawnHealthMonitor_v3_13
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
