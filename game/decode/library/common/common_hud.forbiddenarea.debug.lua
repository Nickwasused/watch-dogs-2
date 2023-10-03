export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/Lists/ListForEach.lua")
  cbox:RegisterBox("Domino/System/Lists/ListLength.lua")
  cbox:RegisterBox("Domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("Domino/System/MissionModuleBox_v3.lua")
  cbox:RegisterBox("Domino/System/MissionZoneController.lua")
  cbox:RegisterBox("Domino/System/OnceOnly_v2.lua")
  cbox:RegisterBox("Domino/System/PawnHealthMonitor_v3.lua")
  cbox:RegisterBox("Domino/System/Lists/SetList.lua")
  cbox:RegisterBox("Domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/Timer_v2.lua")
  cbox:RegisterBox("Domino/System/TriggerMonitor_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "ForbiddenArea"
  self._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@ForbiddenArea"
  self.Started = DummyFunction
  self.Stopped = DummyFunction
  self.NPCListUpdated = DummyFunction
  self.NPCs_All_Dead = DummyFunction
  self.ResetWarningTimer = 5
  self.WasStopped = 0
  self.NPC_List = {}
  self.Victim = nil
  self.AddedNPC = nil
  self.IsUpdate = 0
  self.HideZoneAfterClearing = 0
  self.box_TriggerMonitor_v2_3 = cbox:CreateBox("Domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_3
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_3"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@ForbiddenArea|47890559"
  l0.Enabled = self.f_box_TriggerMonitor_v2_3_Enabled
  l0.Disabled = self.f_box_TriggerMonitor_v2_3_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_3_Enter
  l0.Leave = self.f_box_TriggerMonitor_v2_3_Leave
  l0.Use = DummyFunction
  self.box_ListWriter_13 = cbox:CreateBox("Domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_13
  l0._graph = self
  l0._name = "box_ListWriter_13"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@ForbiddenArea|180081134"
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_box_ListWriter_13_Added
  l0.Removed = self.f_box_ListWriter_13_Removed
  l0.Out = self.f_box_ListWriter_13_Out
  self.box_SetBoolean_v2_8 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_8
  l0._graph = self
  l0._name = "box_SetBoolean_v2_8"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@ForbiddenArea|352663205"
  l0.Out = self.f_box_SetBoolean_v2_8_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_8_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_8_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_8_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_8_SetFromBool
  self.box_MissionModuleBox_v3_2 = cbox:CreateBox("Domino/System/MissionModuleBox_v3.lua")
  l0 = self.box_MissionModuleBox_v3_2
  l0._graph = self
  l0._name = "box_MissionModuleBox_v3_2"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@ForbiddenArea|437291910"
  l0.DisplayRequested = DummyFunction
  l0.DisplayStarted = DummyFunction
  l0.HideRequested = self.f_box_MissionModuleBox_v3_2_HideRequested
  l0.DisplayFinished = self.f_box_MissionModuleBox_v3_2_DisplayFinished
  l0.Out = DummyFunction
  self.box_Timer_v2_10 = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_10
  l0._graph = self
  l0._name = "box_Timer_v2_10"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@ForbiddenArea|497301399"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_Timer_v2_10_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_10_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PawnHealthMonitor_v3_6 = cbox:CreateBox("Domino/System/PawnHealthMonitor_v3.lua")
  l0 = self.box_PawnHealthMonitor_v3_6
  l0._graph = self
  l0._name = "box_PawnHealthMonitor_v3_6"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@ForbiddenArea|674316916"
  l0.Enabled = self.f_box_PawnHealthMonitor_v3_6_Enabled
  l0.Disabled = self.f_box_PawnHealthMonitor_v3_6_Disabled
  l0.Damaged = DummyFunction
  l0.Killed = self.f_box_PawnHealthMonitor_v3_6_Killed
  l0.DBNO = self.f_box_PawnHealthMonitor_v3_6_DBNO
  l0.AllDead = self.f_box_PawnHealthMonitor_v3_6_AllDead
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
  self.box_OnceOnly_v2_21 = cbox:CreateBox("Domino/System/OnceOnly_v2.lua")
  l0 = self.box_OnceOnly_v2_21
  l0._graph = self
  l0._name = "box_OnceOnly_v2_21"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@ForbiddenArea|820242443"
  l0._DynamicAnchors = {In = 1, Out = 1}
  l0.Out[0] = self.f_box_OnceOnly_v2_21_Out_0
  l0.ResetOut = DummyFunction
  self.box_SetBoolean_v2_14 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_14
  l0._graph = self
  l0._name = "box_SetBoolean_v2_14"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@ForbiddenArea|1118050887"
  l0.Out = self.f_box_SetBoolean_v2_14_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_14_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_14_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_14_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_14_SetFromBool
  self.box_ListForEach_12 = cbox:CreateBox("Domino/System/Lists/ListForEach.lua")
  l0 = self.box_ListForEach_12
  l0._graph = self
  l0._name = "box_ListForEach_12"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@ForbiddenArea|1205837793"
  l0.Started = self.f_box_ListForEach_12_Started
  l0.Stopped = self.f_box_ListForEach_12_Stopped
  l0.ForEach = self.f_box_ListForEach_12_ForEach
  l0.GotNext = self.f_box_ListForEach_12_GotNext
  l0.EndOfList = self.f_box_ListForEach_12_EndOfList
  self.box_OnceOnly_v2_4 = cbox:CreateBox("Domino/System/OnceOnly_v2.lua")
  l0 = self.box_OnceOnly_v2_4
  l0._graph = self
  l0._name = "box_OnceOnly_v2_4"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@ForbiddenArea|1403802532"
  l0._DynamicAnchors = {In = 1, Out = 1}
  l0.Out[0] = self.f_box_OnceOnly_v2_4_Out_0
  l0.ResetOut = DummyFunction
  self.box_ListWriter_11 = cbox:CreateBox("Domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_11
  l0._graph = self
  l0._name = "box_ListWriter_11"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@ForbiddenArea|1836200214"
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_box_ListWriter_11_Added
  l0.Removed = self.f_box_ListWriter_11_Removed
  l0.Out = self.f_box_ListWriter_11_Out
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
  self:OnEnter_box_SetBoolean_v2_8()
  l0 = self.box_SetBoolean_v2_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@ForbiddenArea|484996364", "484996364", "ForbiddenArea", "Start", "box_SetBoolean_v2_8.False", self, l0)
  l0:False()
end
function export:Stop()
  local l0
  self:OnEnter_box_SetBoolean_v2_8()
  l0 = self.box_SetBoolean_v2_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@ForbiddenArea|1833866413", "1833866413", "ForbiddenArea", "Stop", "box_SetBoolean_v2_8.True", self, l0)
  l0:True()
end
function export:UpdateNPCList()
  local l0
  l0 = Boxes[PathID("Domino/System/Lists/ListLength.lua")]
  l0.Input = self.NPCList
  l0._graph = self
  l0._name = "box_ListLength_16"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@ForbiddenArea|634444950"
  l0.Out = DummyFunction
  l0.Empty = self.f_box_ListLength_16_Empty
  l0.NotEmpty = self.f_box_ListLength_16_NotEmpty
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@ForbiddenArea|1518160543", "1518160543", "ForbiddenArea", "UpdateNPCList", "box_ListLength_16.GetLength", self, l0)
  l0:GetLength()
end
function export:f_box_TriggerMonitor_v2_3_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MissionModuleBox_v3_2()
  l0 = self.box_TriggerMonitor_v2_3
  l1 = self.box_MissionModuleBox_v3_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@ForbiddenArea|636845038", "636845038", "ForbiddenArea", "box_TriggerMonitor_v2_3.Disabled", "box_MissionModuleBox_v3_2.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_TriggerMonitor_v2_3_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsUpdate
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_15"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@ForbiddenArea|812349778"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_15_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_15_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_TriggerMonitor_v2_3
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@ForbiddenArea|1464241462", "1464241462", "ForbiddenArea", "box_TriggerMonitor_v2_3.Enabled", "box_Compare_Boolean_v2_15.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_3_Enter()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v2_4()
  l0 = self.box_TriggerMonitor_v2_3
  l1 = self.box_OnceOnly_v2_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@ForbiddenArea|1206314661", "1206314661", "ForbiddenArea", "box_TriggerMonitor_v2_3.Enter", "box_OnceOnly_v2_4.In", l0, l1)
  l1:In(0)
end
function export:f_box_TriggerMonitor_v2_3_Leave()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v2_21()
  l0 = self.box_TriggerMonitor_v2_3
  l1 = self.box_OnceOnly_v2_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@ForbiddenArea|361691845", "361691845", "ForbiddenArea", "box_TriggerMonitor_v2_3.Leave", "box_OnceOnly_v2_21.In", l0, l1)
  l1:In(0)
end
function export:f_box_ListWriter_13_Added()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_13
  self.NPC_List = l0.Target
end
function export:f_box_ListWriter_13_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_13
  self.NPC_List = l0.Target
end
function export:f_box_ListWriter_13_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_13
  self.NPC_List = l0.Target
end
function export:f_box_SetBoolean_v2_8_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_8
  self.WasStopped = l0.Target
end
function export:f_box_SetBoolean_v2_8_SetFalse()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_8
  self.WasStopped = l0.Target
  l0 = Boxes[PathID("Domino/System/Lists/SetList.lua")]
  l0.List = self.NPCList
  l0._graph = self
  l0._name = "box_Set_List_5"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@ForbiddenArea|366331750"
  l0.Out = self.f_box_Set_List_5_Out
  l0 = self.box_SetBoolean_v2_8
  l1 = Boxes[PathID("Domino/System/Lists/SetList.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@ForbiddenArea|2100948504", "2100948504", "ForbiddenArea", "box_SetBoolean_v2_8.SetFalse", "box_Set_List_5.FromList", l0, l1)
  l1:FromList()
end
function export:f_box_SetBoolean_v2_8_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_8
  self.WasStopped = l0.Target
end
function export:f_box_SetBoolean_v2_8_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_8
  self.WasStopped = l0.Target
  self:OnEnter_box_PawnHealthMonitor_v3_6()
  l1 = self.box_PawnHealthMonitor_v3_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@ForbiddenArea|1820510321", "1820510321", "ForbiddenArea", "box_SetBoolean_v2_8.SetTrue", "box_PawnHealthMonitor_v3_6.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_SetBoolean_v2_8_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_8
  self.WasStopped = l0.Target
end
function export:f_box_Set_List_5_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/SetList.lua")]
  self.NPC_List = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SetBoolean_v2_14()
  l0 = self.box_SetBoolean_v2_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@ForbiddenArea|1270402502", "1270402502", "ForbiddenArea", "box_Set_List_5.Out", "box_SetBoolean_v2_14.False", clone, l0)
  l0:False()
end
function export:f_box_MissionModuleBox_v3_2_DisplayFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Timer_v2_10()
  l0 = self.box_MissionModuleBox_v3_2
  l1 = self.box_Timer_v2_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@ForbiddenArea|1347715070", "1347715070", "ForbiddenArea", "box_MissionModuleBox_v3_2.DisplayFinished", "box_Timer_v2_10.Start", l0, l1)
  l1:Start()
end
function export:f_box_MissionModuleBox_v3_2_HideRequested()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.WasStopped
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_7"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@ForbiddenArea|540725949"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_7_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_7_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_MissionModuleBox_v3_2
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@ForbiddenArea|673368242", "673368242", "ForbiddenArea", "box_MissionModuleBox_v3_2.HideRequested", "box_Compare_Boolean_v2_7.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_10_Stopped()
  local l0
  self = self._graph
  l0 = self.box_Timer_v2_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@ForbiddenArea|2108058878", "2108058878", "ForbiddenArea", "box_Timer_v2_10.Stopped", "Stopped", l0, self)
  self:Stopped()
end
function export:f_box_Timer_v2_10_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v2_4()
  l0 = self.box_Timer_v2_10
  l1 = self.box_OnceOnly_v2_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@ForbiddenArea|2035419296", "2035419296", "ForbiddenArea", "box_Timer_v2_10.TimeElapsed", "box_OnceOnly_v2_4.Reset", l0, l1)
  l1:Reset()
end
function export:f_box_Compare_Boolean_v2_7_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Timer_v2_10()
  l0 = self.box_Timer_v2_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@ForbiddenArea|1558956616", "1558956616", "ForbiddenArea", "box_Compare_Boolean_v2_7.A_is_False", "box_Timer_v2_10.Start", clone, l0)
  l0:Start()
end
function export:f_box_Compare_Boolean_v2_7_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Timer_v2_10()
  l0 = self.box_Timer_v2_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@ForbiddenArea|23663012", "23663012", "ForbiddenArea", "box_Compare_Boolean_v2_7.A_is_True", "box_Timer_v2_10.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_ListLength_16_Empty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/ListLength.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SetBoolean_v2_8()
  l0 = self.box_SetBoolean_v2_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@ForbiddenArea|249418062", "249418062", "ForbiddenArea", "box_ListLength_16.Empty", "box_SetBoolean_v2_8.True", clone, l0)
  l0:True()
end
function export:f_box_ListLength_16_NotEmpty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/ListLength.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListForEach_12
  l0.List = self.NPCList
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@ForbiddenArea|1577004513", "1577004513", "ForbiddenArea", "box_ListLength_16.NotEmpty", "box_ListForEach_12.Start", clone, l0)
  l0:Start()
end
function export:f_box_PawnHealthMonitor_v3_6_AllDead()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.HideZoneWhenCleared
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_18"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@ForbiddenArea|1603916853"
  l0.Out = self.f_box_Compare_Boolean_v2_18_Out
  l0.A_is_True = self.f_box_Compare_Boolean_v2_18_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_18_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_PawnHealthMonitor_v3_6
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@ForbiddenArea|1958469095", "1958469095", "ForbiddenArea", "box_PawnHealthMonitor_v3_6.AllDead", "box_Compare_Boolean_v2_18.In", l0, l1)
  l1:In()
end
function export:f_box_PawnHealthMonitor_v3_6_DBNO()
  local l0
  self = self._graph
  l0 = self.box_PawnHealthMonitor_v3_6
  self.Victim = l0.Victim
end
function export:f_box_PawnHealthMonitor_v3_6_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MissionZoneController_v2_1()
  l0 = self.box_PawnHealthMonitor_v3_6
  l1 = Boxes[PathID("Domino/System/MissionZoneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@ForbiddenArea|1540170820", "1540170820", "ForbiddenArea", "box_PawnHealthMonitor_v3_6.Disabled", "box_MissionZoneController_v2_1.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_PawnHealthMonitor_v3_6_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MissionZoneController_v2_1()
  l0 = self.box_PawnHealthMonitor_v3_6
  l1 = Boxes[PathID("Domino/System/MissionZoneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@ForbiddenArea|1832487222", "1832487222", "ForbiddenArea", "box_PawnHealthMonitor_v3_6.Enabled", "box_MissionZoneController_v2_1.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_PawnHealthMonitor_v3_6_Killed()
  local l0, l1
  self = self._graph
  l0 = self.box_PawnHealthMonitor_v3_6
  self.Victim = l0.Victim
  l0 = self.box_ListWriter_11
  l0.Input = self.NPC_List
  l0.Data[0] = self.Victim
  l0 = self.box_PawnHealthMonitor_v3_6
  l1 = self.box_ListWriter_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@ForbiddenArea|574761826", "574761826", "ForbiddenArea", "box_PawnHealthMonitor_v3_6.Killed", "box_ListWriter_11.Remove", l0, l1)
  l1:Remove()
end
function export:f_box_MissionZoneController_v2_1_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/MissionZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_3()
  l0 = self.box_TriggerMonitor_v2_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@ForbiddenArea|318787850", "318787850", "ForbiddenArea", "box_MissionZoneController_v2_1.Disabled", "box_TriggerMonitor_v2_3.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_MissionZoneController_v2_1_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/MissionZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_3()
  l0 = self.box_TriggerMonitor_v2_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@ForbiddenArea|1732143891", "1732143891", "ForbiddenArea", "box_MissionZoneController_v2_1.Enabled", "box_TriggerMonitor_v2_3.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Compare_Boolean_v2_15_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@ForbiddenArea|330226708", "330226708", "ForbiddenArea", "box_Compare_Boolean_v2_15.A_is_False", "Started", clone, self)
  self:Started()
end
function export:f_box_Compare_Boolean_v2_15_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@ForbiddenArea|414259651", "414259651", "ForbiddenArea", "box_Compare_Boolean_v2_15.A_is_True", "NPCListUpdated", clone, self)
  self:NPCListUpdated()
end
function export:f_box_OnceOnly_v2_21_Out_0()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MissionModuleBox_v3_2()
  l0 = self.box_OnceOnly_v2_21
  l1 = self.box_MissionModuleBox_v3_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@ForbiddenArea|1025225394", "1025225394", "ForbiddenArea", "box_OnceOnly_v2_21.Out", "box_MissionModuleBox_v3_2.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_SetBoolean_v2_14_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_14
  self.IsUpdate = l0.Target
  self:OnEnter_box_PawnHealthMonitor_v3_6()
  l1 = self.box_PawnHealthMonitor_v3_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@ForbiddenArea|1865516374", "1865516374", "ForbiddenArea", "box_SetBoolean_v2_14.Out", "box_PawnHealthMonitor_v3_6.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_SetBoolean_v2_14_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_14
  self.IsUpdate = l0.Target
end
function export:f_box_SetBoolean_v2_14_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_14
  self.IsUpdate = l0.Target
end
function export:f_box_SetBoolean_v2_14_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_14
  self.IsUpdate = l0.Target
end
function export:f_box_SetBoolean_v2_14_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_14
  self.IsUpdate = l0.Target
end
function export:f_box_ListForEach_12_EndOfList()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_12
  self.AddedNPC = l0.Data
  self:OnEnter_box_SetBoolean_v2_14()
  l1 = self.box_SetBoolean_v2_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@ForbiddenArea|806317098", "806317098", "ForbiddenArea", "box_ListForEach_12.EndOfList", "box_SetBoolean_v2_14.True", l0, l1)
  l1:True()
end
function export:f_box_ListForEach_12_ForEach()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_12
  self.AddedNPC = l0.Data
  l0 = self.box_ListWriter_13
  l0.Input = self.NPC_List
  l0.Data[0] = self.AddedNPC
  l0 = self.box_ListForEach_12
  l1 = self.box_ListWriter_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@ForbiddenArea|1037237381", "1037237381", "ForbiddenArea", "box_ListForEach_12.ForEach", "box_ListWriter_13.Add", l0, l1)
  l1:Add()
end
function export:f_box_ListForEach_12_GotNext()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_12
  self.AddedNPC = l0.Data
end
function export:f_box_ListForEach_12_Started()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_12
  self.AddedNPC = l0.Data
end
function export:f_box_ListForEach_12_Stopped()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_12
  self.AddedNPC = l0.Data
end
function export:f_box_OnceOnly_v2_4_Out_0()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v2_21()
  l0 = self.box_OnceOnly_v2_4
  l1 = self.box_OnceOnly_v2_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@ForbiddenArea|207490987", "207490987", "ForbiddenArea", "box_OnceOnly_v2_4.Out", "box_OnceOnly_v2_21.Reset", l0, l1)
  l1:Reset()
  self:OnEnter_box_MissionModuleBox_v3_2()
  l0 = self.box_OnceOnly_v2_4
  l1 = self.box_MissionModuleBox_v3_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@ForbiddenArea|1818059166", "1818059166", "ForbiddenArea", "box_OnceOnly_v2_4.Out", "box_MissionModuleBox_v3_2.Display", l0, l1)
  l1:Display()
end
function export:f_box_Compare_Boolean_v2_18_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/MissionZoneController.lua")]
  l0.MissionZone = self.MissionZone
  l0.Red = 0.82
  l0.Green = 0.2
  l0.Blue = 0.2
  l0.Alpha = 1
  l0.Radius = nil
  l0.DrawType = "Outside"
  l0.ShapeType = "CMissionRegionDescriptor"
  l0.MinimapContext = nil
  l0.ObjectiveEnteringArea = nil
  l0.ObjectiveExitingArea = nil
  l0._graph = self
  l0._name = "box_MissionZoneController_v2_19"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@ForbiddenArea|1433486086"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.PropertiesUpdated = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@ForbiddenArea|1623204699", "1623204699", "ForbiddenArea", "box_Compare_Boolean_v2_18.A_is_False", "box_MissionZoneController_v2_19.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Compare_Boolean_v2_18_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionZoneController_v2_1()
  l0 = Boxes[PathID("Domino/System/MissionZoneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@ForbiddenArea|1098807457", "1098807457", "ForbiddenArea", "box_Compare_Boolean_v2_18.A_is_True", "box_MissionZoneController_v2_1.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Compare_Boolean_v2_18_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@ForbiddenArea|281020137", "281020137", "ForbiddenArea", "box_Compare_Boolean_v2_18.Out", "NPCs_All_Dead", clone, self)
  self:NPCs_All_Dead()
end
function export:f_box_ListWriter_11_Added()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_11
  self.NPC_List = l0.Target
end
function export:f_box_ListWriter_11_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_11
  self.NPC_List = l0.Target
end
function export:f_box_ListWriter_11_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_11
  self.NPC_List = l0.Target
end
function export:OnEnter_box_TriggerMonitor_v2_3()
  local l0
  l0 = self.box_TriggerMonitor_v2_3
  l0.Trigger = self.MissionZone
  l0.TriggerList = self.ForbiddenZoneTriggerList
end
function export:OnEnter_box_SetBoolean_v2_8()
end
function export:OnEnter_box_MissionModuleBox_v3_2()
  local l0
  l0 = self.box_MissionModuleBox_v3_2
  l0.MessageType = "MissionWarning"
  l0.MessageIcon = "iconWarning"
  l0.OasisID_1 = {
    section = "MISSIONS.COMMON.MESSAGES.MISSIONWARNING",
    item = "EnteringRestrictedArea",
    id = "165604"
  }
end
function export:OnEnter_box_Timer_v2_10()
  local l0
  l0 = self.box_Timer_v2_10
  l0.Seconds = self.ResetWarningTimer
end
function export:OnEnter_box_PawnHealthMonitor_v3_6()
  local l0
  l0 = self.box_PawnHealthMonitor_v3_6
  l0.PawnList = self.NPC_List
end
function export:OnEnter_box_MissionZoneController_v2_1()
  local l0
  l0 = Boxes[PathID("Domino/System/MissionZoneController.lua")]
  l0.MissionZone = self.MissionZone
  l0.Red = 0.82
  l0.Green = 0.2
  l0.Blue = 0.2
  l0.Alpha = 1
  l0.Radius = nil
  l0.DrawType = "Inside"
  l0.ShapeType = "CMissionRegionDescriptor"
  l0.MinimapContext = nil
  l0.ObjectiveEnteringArea = nil
  l0.ObjectiveExitingArea = nil
  l0._graph = self
  l0._name = "box_MissionZoneController_v2_1"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@ForbiddenArea|711992410"
  l0.Enabled = self.f_box_MissionZoneController_v2_1_Enabled
  l0.Disabled = self.f_box_MissionZoneController_v2_1_Disabled
  l0.PropertiesUpdated = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_OnceOnly_v2_21()
end
function export:OnEnter_box_SetBoolean_v2_14()
end
function export:OnEnter_box_OnceOnly_v2_4()
end
function export:Started()
end
function export:Stopped()
end
function export:NPCListUpdated()
end
function export:NPCs_All_Dead()
end
_compilerVersion = 4
