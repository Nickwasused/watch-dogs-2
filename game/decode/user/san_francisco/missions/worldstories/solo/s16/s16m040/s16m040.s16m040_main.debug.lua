export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/MapPointController_v3.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v2.lua")
  cbox:RegisterBox("domino/System/MissionMonitor.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/ObjectiveMonitor_v2.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/ProgressionTagMonitor.lua")
  cbox:RegisterBox("domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S16M040_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M040\\S16M040.domino|@S16M040_Main"
  self.PlayerEntity = nil
  self.number_of_loot_item = 0
  self.box_MultipleOR_10 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_10
  l0._graph = self
  l0._name = "box_MultipleOR_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M040\\S16M040.domino|@S16M040_Main|143035579"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_10_Out
  self.box_Timer_v2_22 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_22
  l0._graph = self
  l0._name = "box_Timer_v2_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M040\\S16M040.domino|@S16M040_Main|184579267"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_22_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Progression_Tag_Monitor_14 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_14
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M040\\S16M040.domino|@S16M040_Main|216570751"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = DummyFunction
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_14_HasNOT
  self.box_MapPointController_v3_11 = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_11
  l0._graph = self
  l0._name = "box_MapPointController_v3_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M040\\S16M040.domino|@S16M040_Main|474461215"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v3_11_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_ObjectiveMonitor_v2_9 = cbox:CreateBox("domino/System/ObjectiveMonitor_v2.lua")
  l0 = self.box_ObjectiveMonitor_v2_9
  l0._graph = self
  l0._name = "box_ObjectiveMonitor_v2_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M040\\S16M040.domino|@S16M040_Main|496832348"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotIncrement = DummyFunction
  l0.ObjectiveCompleted = self.f_box_ObjectiveMonitor_v2_9_ObjectiveCompleted
  l0.ObjectiveMessageStarted = DummyFunction
  l0.ObjectiveMessageFinished = DummyFunction
  l0.IncrementReached = DummyFunction
  l0.IncrementNotReached = DummyFunction
  self.box_MissionMessageController_v2_18 = cbox:CreateBox("domino/System/MissionMessageController_v2.lua")
  l0 = self.box_MissionMessageController_v2_18
  l0._graph = self
  l0._name = "box_MissionMessageController_v2_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M040\\S16M040.domino|@S16M040_Main|979923986"
  l0.Out = DummyFunction
  l0.MessageRequested = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_MissionController_v4_19 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_19
  l0._graph = self
  l0._name = "box_MissionController_v4_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M040\\S16M040.domino|@S16M040_Main|1089138297"
  self.box_Progression_Tag_Monitor_15 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_15
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M040\\S16M040.domino|@S16M040_Main|1372801458"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = DummyFunction
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_15_HasNOT
  self.box_Progression_Tag_Monitor_16 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_16
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M040\\S16M040.domino|@S16M040_Main|1417947341"
  l0.Enabled = self.f_box_Progression_Tag_Monitor_16_Enabled
  l0.Disabled = self.f_box_Progression_Tag_Monitor_16_Disabled
  l0.TagIsOwned = self.f_box_Progression_Tag_Monitor_16_TagIsOwned
  l0.Has = DummyFunction
  l0.HasNOT = DummyFunction
  self.box_MissionMessageController_v2_20 = cbox:CreateBox("domino/System/MissionMessageController_v2.lua")
  l0 = self.box_MissionMessageController_v2_20
  l0._graph = self
  l0._name = "box_MissionMessageController_v2_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M040\\S16M040.domino|@S16M040_Main|1475804966"
  l0.Out = DummyFunction
  l0.MessageRequested = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_MissionMessageController_v2_3 = cbox:CreateBox("domino/System/MissionMessageController_v2.lua")
  l0 = self.box_MissionMessageController_v2_3
  l0._graph = self
  l0._name = "box_MissionMessageController_v2_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M040\\S16M040.domino|@S16M040_Main|1535925099"
  l0.Out = DummyFunction
  l0.MessageRequested = self.f_box_MissionMessageController_v2_3_MessageRequested
  l0.MessageCompleted = DummyFunction
  self.box_SnapAndBind_31 = cbox:CreateBox("domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  l0 = self.box_SnapAndBind_31
  l0._graph = self
  l0._name = "box_SnapAndBind_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M040\\S16M040.domino|@S16M040_Main|1616096555"
  l0.Attached = self.f_box_SnapAndBind_31_Attached
  self.box_MapPointController_v3_12 = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_12
  l0._graph = self
  l0._name = "box_MapPointController_v3_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M040\\S16M040.domino|@S16M040_Main|1698541592"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v3_12_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_Progression_Tag_Monitor_4 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_4
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M040\\S16M040.domino|@S16M040_Main|1715379961"
  l0.Enabled = self.f_box_Progression_Tag_Monitor_4_Enabled
  l0.Disabled = self.f_box_Progression_Tag_Monitor_4_Disabled
  l0.TagIsOwned = self.f_box_Progression_Tag_Monitor_4_TagIsOwned
  l0.Has = DummyFunction
  l0.HasNOT = DummyFunction
  self.box_Progression_Tag_Monitor_17 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_17
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M040\\S16M040.domino|@S16M040_Main|1734946038"
  l0.Enabled = self.f_box_Progression_Tag_Monitor_17_Enabled
  l0.Disabled = self.f_box_Progression_Tag_Monitor_17_Disabled
  l0.TagIsOwned = self.f_box_Progression_Tag_Monitor_17_TagIsOwned
  l0.Has = DummyFunction
  l0.HasNOT = DummyFunction
  self.box_MissionMessageController_v2_2 = cbox:CreateBox("domino/System/MissionMessageController_v2.lua")
  l0 = self.box_MissionMessageController_v2_2
  l0._graph = self
  l0._name = "box_MissionMessageController_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M040\\S16M040.domino|@S16M040_Main|1750347345"
  l0.Out = self.f_box_MissionMessageController_v2_2_Out
  l0.MessageRequested = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_Progression_Tag_Monitor_5 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_5
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M040\\S16M040.domino|@S16M040_Main|1788806934"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = DummyFunction
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_5_HasNOT
  self.box_MissionMessageController_v2_21 = cbox:CreateBox("domino/System/MissionMessageController_v2.lua")
  l0 = self.box_MissionMessageController_v2_21
  l0._graph = self
  l0._name = "box_MissionMessageController_v2_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M040\\S16M040.domino|@S16M040_Main|1792508268"
  l0.Out = DummyFunction
  l0.MessageRequested = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_MissionMonitor_8 = cbox:CreateBox("domino/System/MissionMonitor.lua")
  l0 = self.box_MissionMonitor_8
  l0._graph = self
  l0._name = "box_MissionMonitor_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M040\\S16M040.domino|@S16M040_Main|1861485508"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Tracked = DummyFunction
  l0.NotTracked = DummyFunction
  l0.Completed = self.f_box_MissionMonitor_8_Completed
  l0.NotCompleted = self.f_box_MissionMonitor_8_NotCompleted
  l0.OnMissionSucceeded = DummyFunction
  l0.OnMissionFailed = DummyFunction
  l0.OnMissionAborted = DummyFunction
  self.box_MapPointController_v3_13 = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_13
  l0._graph = self
  l0._name = "box_MapPointController_v3_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M040\\S16M040.domino|@S16M040_Main|1948573490"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v3_13_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_PhoneCommunicationController_7 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_7
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M040\\S16M040.domino|@S16M040_Main|2138227985"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_7_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
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
  l0 = self.box_Timer_v2_22
  l0.Seconds = 2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M040\\S16M040.domino|@S16M040_Main|90280632", "90280632", "S16M040_Main", "In", "box_Timer_v2_22.Start", self, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_6_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Progression_Tag_Monitor_14
  l0.ProgressionTag = "ProgressionTag.9223372048887084907"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M040\\S16M040.domino|@S16M040_Main|1510867451", "1510867451", "S16M040_Main", "box_Ordered_Output_6.Out", "box_Progression_Tag_Monitor_14.HasProgressionTag", clone, l0)
  l0:HasProgressionTag()
end
function export:f_box_Ordered_Output_6_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Progression_Tag_Monitor_5
  l0.ProgressionTag = "ProgressionTag.9223372048887084908"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M040\\S16M040.domino|@S16M040_Main|383943630", "383943630", "S16M040_Main", "box_Ordered_Output_6.Out", "box_Progression_Tag_Monitor_5.HasProgressionTag", clone, l0)
  l0:HasProgressionTag()
end
function export:f_box_Ordered_Output_6_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Progression_Tag_Monitor_15
  l0.ProgressionTag = "ProgressionTag.9223372048887084909"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M040\\S16M040.domino|@S16M040_Main|1816568560", "1816568560", "S16M040_Main", "box_Ordered_Output_6.Out", "box_Progression_Tag_Monitor_15.HasProgressionTag", clone, l0)
  l0:HasProgressionTag()
end
function export:f_box_Ordered_Output_6_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ObjectiveMonitor_v2_9
  l0.Objective = {
    section = "",
    item = "",
    id = "345161"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M040\\S16M040.domino|@S16M040_Main|157033774", "157033774", "S16M040_Main", "box_Ordered_Output_6.Out", "box_ObjectiveMonitor_v2_9.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MultipleOR_10_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MultipleOR_10
  l1 = self.box_MissionMessageController_v2_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M040\\S16M040.domino|@S16M040_Main|983683467", "983683467", "S16M040_Main", "box_MultipleOR_10.Out", "box_MissionMessageController_v2_3.ShowMissionComplete", l0, l1)
  l1:ShowMissionComplete()
end
function export:f_box_Timer_v2_22_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M040\\S16M040.domino|@S16M040_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_Timer_v2_22
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M040\\S16M040.domino|@S16M040_Main|227915855", "227915855", "S16M040_Main", "box_Timer_v2_22.TimeElapsed", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_Progression_Tag_Monitor_14_HasNOT()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Progression_Tag_Monitor_17()
  l0 = self.box_Progression_Tag_Monitor_14
  l1 = self.box_Progression_Tag_Monitor_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M040\\S16M040.domino|@S16M040_Main|902165640", "902165640", "S16M040_Main", "box_Progression_Tag_Monitor_14.HasNOT", "box_Progression_Tag_Monitor_17.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MapPointController_v3_11_Hidden()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v2_18
  l0.ObjectiveSub1 = {
    section = "",
    item = "",
    id = "548990"
  }
  l0 = self.box_MapPointController_v3_11
  l1 = self.box_MissionMessageController_v2_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M040\\S16M040.domino|@S16M040_Main|118458094", "118458094", "S16M040_Main", "box_MapPointController_v3_11.Hidden", "box_MissionMessageController_v2_18.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_ObjectiveMonitor_v2_9_ObjectiveCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMonitor_8
  l0.Mission = "MissionList.9223372046563431288"
  l0 = self.box_ObjectiveMonitor_v2_9
  l1 = self.box_MissionMonitor_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M040\\S16M040.domino|@S16M040_Main|1278851621", "1278851621", "S16M040_Main", "box_ObjectiveMonitor_v2_9.ObjectiveCompleted", "box_MissionMonitor_8.CheckCompletion", l0, l1)
  l1:CheckCompletion()
end
function export:f_box_Get_Player_ID_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SnapAndBind_31
  l0.Parent = self.PlayerEntity
  l0.Child = "9223372047070512919"
  l0.zPosOffset = 0.5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M040\\S16M040.domino|@S16M040_Main|746800998", "746800998", "S16M040_Main", "box_Get_Player_ID_1.Out", "box_SnapAndBind_31.Attach", clone, l0)
  l0:Attach()
end
function export:f_box_Progression_Tag_Monitor_15_HasNOT()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Progression_Tag_Monitor_16()
  l0 = self.box_Progression_Tag_Monitor_15
  l1 = self.box_Progression_Tag_Monitor_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M040\\S16M040.domino|@S16M040_Main|1671090988", "1671090988", "S16M040_Main", "box_Progression_Tag_Monitor_15.HasNOT", "box_Progression_Tag_Monitor_16.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Progression_Tag_Monitor_16_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v3_13()
  l0 = self.box_Progression_Tag_Monitor_16
  l1 = self.box_MapPointController_v3_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M040\\S16M040.domino|@S16M040_Main|397131786", "397131786", "S16M040_Main", "box_Progression_Tag_Monitor_16.Disabled", "box_MapPointController_v3_13.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Progression_Tag_Monitor_16_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v3_13()
  l0 = self.box_Progression_Tag_Monitor_16
  l1 = self.box_MapPointController_v3_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M040\\S16M040.domino|@S16M040_Main|1682963629", "1682963629", "S16M040_Main", "box_Progression_Tag_Monitor_16.Enabled", "box_MapPointController_v3_13.Show", l0, l1)
  l1:Show()
end
function export:f_box_Progression_Tag_Monitor_16_TagIsOwned()
  local l0
  self = self._graph
  self:OnEnter_box_Progression_Tag_Monitor_16()
  l0 = self.box_Progression_Tag_Monitor_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M040\\S16M040.domino|@S16M040_Main|1077622562", "1077622562", "S16M040_Main", "box_Progression_Tag_Monitor_16.TagIsOwned", "box_Progression_Tag_Monitor_16.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_MissionMessageController_v2_3_MessageRequested()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v2_3
  l1 = self.box_MissionController_v4_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M040\\S16M040.domino|@S16M040_Main|1115236435", "1115236435", "S16M040_Main", "box_MissionMessageController_v2_3.MessageRequested", "box_MissionController_v4_19.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_SnapAndBind_31_Attached()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v2_2
  l0.Objective = {
    section = "",
    item = "",
    id = "345161"
  }
  l0.ObjectiveSub1 = {
    section = "",
    item = "",
    id = "548990"
  }
  l0.ObjectiveSub2 = {
    section = "",
    item = "",
    id = "548991"
  }
  l0.ObjectiveSub3 = {
    section = "",
    item = "",
    id = "548992"
  }
  l0 = self.box_SnapAndBind_31
  l1 = self.box_MissionMessageController_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M040\\S16M040.domino|@S16M040_Main|569566400", "569566400", "S16M040_Main", "box_SnapAndBind_31.Attached", "box_MissionMessageController_v2_2.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_MapPointController_v3_12_Hidden()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v2_21
  l0.ObjectiveSub2 = {
    section = "",
    item = "",
    id = "548991"
  }
  l0 = self.box_MapPointController_v3_12
  l1 = self.box_MissionMessageController_v2_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M040\\S16M040.domino|@S16M040_Main|1582304677", "1582304677", "S16M040_Main", "box_MapPointController_v3_12.Hidden", "box_MissionMessageController_v2_21.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_Progression_Tag_Monitor_4_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v3_12()
  l0 = self.box_Progression_Tag_Monitor_4
  l1 = self.box_MapPointController_v3_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M040\\S16M040.domino|@S16M040_Main|123760158", "123760158", "S16M040_Main", "box_Progression_Tag_Monitor_4.Disabled", "box_MapPointController_v3_12.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Progression_Tag_Monitor_4_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v3_12()
  l0 = self.box_Progression_Tag_Monitor_4
  l1 = self.box_MapPointController_v3_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M040\\S16M040.domino|@S16M040_Main|1461295463", "1461295463", "S16M040_Main", "box_Progression_Tag_Monitor_4.Enabled", "box_MapPointController_v3_12.Show", l0, l1)
  l1:Show()
end
function export:f_box_Progression_Tag_Monitor_4_TagIsOwned()
  local l0
  self = self._graph
  self:OnEnter_box_Progression_Tag_Monitor_4()
  l0 = self.box_Progression_Tag_Monitor_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M040\\S16M040.domino|@S16M040_Main|441282981", "441282981", "S16M040_Main", "box_Progression_Tag_Monitor_4.TagIsOwned", "box_Progression_Tag_Monitor_4.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Progression_Tag_Monitor_17_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v3_11()
  l0 = self.box_Progression_Tag_Monitor_17
  l1 = self.box_MapPointController_v3_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M040\\S16M040.domino|@S16M040_Main|208851354", "208851354", "S16M040_Main", "box_Progression_Tag_Monitor_17.Disabled", "box_MapPointController_v3_11.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Progression_Tag_Monitor_17_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v3_11()
  l0 = self.box_Progression_Tag_Monitor_17
  l1 = self.box_MapPointController_v3_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M040\\S16M040.domino|@S16M040_Main|2085030304", "2085030304", "S16M040_Main", "box_Progression_Tag_Monitor_17.Enabled", "box_MapPointController_v3_11.Show", l0, l1)
  l1:Show()
end
function export:f_box_Progression_Tag_Monitor_17_TagIsOwned()
  local l0
  self = self._graph
  self:OnEnter_box_Progression_Tag_Monitor_17()
  l0 = self.box_Progression_Tag_Monitor_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M040\\S16M040.domino|@S16M040_Main|1502958943", "1502958943", "S16M040_Main", "box_Progression_Tag_Monitor_17.TagIsOwned", "box_Progression_Tag_Monitor_17.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_MissionMessageController_v2_2_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M040\\S16M040.domino|@S16M040_Main|61946018"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_6_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_6_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_6_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_6_Out_3
  l0 = self.box_MissionMessageController_v2_2
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M040\\S16M040.domino|@S16M040_Main|1589042358", "1589042358", "S16M040_Main", "box_MissionMessageController_v2_2.Out", "box_Ordered_Output_6.In", l0, l1)
  l1:In()
end
function export:f_box_Progression_Tag_Monitor_5_HasNOT()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Progression_Tag_Monitor_4()
  l0 = self.box_Progression_Tag_Monitor_5
  l1 = self.box_Progression_Tag_Monitor_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M040\\S16M040.domino|@S16M040_Main|1220567217", "1220567217", "S16M040_Main", "box_Progression_Tag_Monitor_5.HasNOT", "box_Progression_Tag_Monitor_4.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MissionMonitor_8_Completed()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_7
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421345778"
  l0 = self.box_MissionMonitor_8
  l1 = self.box_PhoneCommunicationController_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M040\\S16M040.domino|@S16M040_Main|507056931", "507056931", "S16M040_Main", "box_MissionMonitor_8.Completed", "box_PhoneCommunicationController_7.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_MissionMonitor_8_NotCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_10()
  l0 = self.box_MissionMonitor_8
  l1 = self.box_MultipleOR_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M040\\S16M040.domino|@S16M040_Main|913563507", "913563507", "S16M040_Main", "box_MissionMonitor_8.NotCompleted", "box_MultipleOR_10.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MapPointController_v3_13_Hidden()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v2_20
  l0.ObjectiveSub3 = {
    section = "",
    item = "",
    id = "548992"
  }
  l0 = self.box_MapPointController_v3_13
  l1 = self.box_MissionMessageController_v2_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M040\\S16M040.domino|@S16M040_Main|1286601997", "1286601997", "S16M040_Main", "box_MapPointController_v3_13.Hidden", "box_MissionMessageController_v2_20.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_PhoneCommunicationController_7_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_10()
  l0 = self.box_PhoneCommunicationController_7
  l1 = self.box_MultipleOR_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M040\\S16M040.domino|@S16M040_Main|1118522375", "1118522375", "S16M040_Main", "box_PhoneCommunicationController_7.OnCommunicationFinished", "box_MultipleOR_10.Input", l0, l1)
  l1:Input(1)
end
function export:OnEnter_box_MultipleOR_10()
end
function export:OnEnter_box_MapPointController_v3_11()
  local l0
  l0 = self.box_MapPointController_v3_11
  l0.MapPoint = "9223372046674933889"
end
function export:OnEnter_box_Progression_Tag_Monitor_16()
  local l0
  l0 = self.box_Progression_Tag_Monitor_16
  l0.ProgressionTag = "ProgressionTag.9223372048887084909"
end
function export:OnEnter_box_MapPointController_v3_12()
  local l0
  l0 = self.box_MapPointController_v3_12
  l0.MapPoint = "9223372046674933891"
end
function export:OnEnter_box_Progression_Tag_Monitor_4()
  local l0
  l0 = self.box_Progression_Tag_Monitor_4
  l0.ProgressionTag = "ProgressionTag.9223372048887084908"
end
function export:OnEnter_box_Progression_Tag_Monitor_17()
  local l0
  l0 = self.box_Progression_Tag_Monitor_17
  l0.ProgressionTag = "ProgressionTag.9223372048887084907"
end
function export:OnEnter_box_MapPointController_v3_13()
  local l0
  l0 = self.box_MapPointController_v3_13
  l0.MapPoint = "9223372046674933887"
end
_compilerVersion = 4
