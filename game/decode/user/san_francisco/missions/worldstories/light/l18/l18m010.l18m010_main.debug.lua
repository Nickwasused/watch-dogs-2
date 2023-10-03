export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/DebugAnnotationTextController.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/MapPointController_v3.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TriggerController.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "L18M010_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L18\\L18M010.domino|@L18M010_Main"
  self.PlayerEntity = nil
  self.MissionStartTrigger_29 = "9223372050580349655"
  self.DebugAnnotationTextEntity_390 = "9223372050580408178"
  self.L18_StoryIcon_0 = "9223372050580349657"
  self.box_MissionController_v4_2 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_2
  l0._graph = self
  l0._name = "box_MissionController_v4_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L18\\L18M010.domino|@L18M010_Main|51372610"
  self.box_MissionMessageController_v3_4 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_4
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L18\\L18M010.domino|@L18M010_Main|70367926"
  l0.Out = DummyFunction
  l0.MessageCompleted = self.f_box_MissionMessageController_v3_4_MessageCompleted
  self.box_MissionMessageController_v3_3 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_3
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L18\\L18M010.domino|@L18M010_Main|513074245"
  l0.Out = self.f_box_MissionMessageController_v3_3_Out
  l0.MessageCompleted = DummyFunction
  self.box_Timer_v2_5 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_5
  l0._graph = self
  l0._name = "box_Timer_v2_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L18\\L18M010.domino|@L18M010_Main|788027853"
  l0.Out = self.f_box_Timer_v2_5_Out
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_5_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MapPointController_v3_9 = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_9
  l0._graph = self
  l0._name = "box_MapPointController_v3_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L18\\L18M010.domino|@L18M010_Main|1508423800"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v3_9_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_PhoneCommunicationController_10 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_10
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L18\\L18M010.domino|@L18M010_Main|1694647059"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_10_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_TriggerMonitor_v2_6 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_6
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L18\\L18M010.domino|@L18M010_Main|1752587011"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TriggerMonitor_v2_6_Disabled
  l0.Enter = DummyFunction
  l0.Leave = DummyFunction
  l0.Use = self.f_box_TriggerMonitor_v2_6_Use
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
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L18\\L18M010.domino|@L18M010_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L18\\L18M010.domino|@L18M010_Main|425125128", "425125128", "L18M010_Main", "In", "box_Get_Player_ID_1.In", self, l0)
  l0:In()
end
function export:f_box_MissionMessageController_v3_4_MessageCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_4
  l1 = self.box_MissionController_v4_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L18\\L18M010.domino|@L18M010_Main|1021039462", "1021039462", "L18M010_Main", "box_MissionMessageController_v3_4.MessageCompleted", "box_MissionController_v4_2.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_MissionMessageController_v3_3_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_6()
  l0 = self.box_MissionMessageController_v3_3
  l1 = self.box_TriggerMonitor_v2_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L18\\L18M010.domino|@L18M010_Main|1373696073", "1373696073", "L18M010_Main", "box_MissionMessageController_v3_3.Out", "box_TriggerMonitor_v2_6.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Timer_v2_5_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_10
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357367175"
  l0 = self.box_Timer_v2_5
  l1 = self.box_PhoneCommunicationController_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L18\\L18M010.domino|@L18M010_Main|640512849", "640512849", "L18M010_Main", "box_Timer_v2_5.Out", "box_PhoneCommunicationController_10.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Timer_v2_5_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Display_a_debug_annotation_text_entity_7()
  l0 = self.box_Timer_v2_5
  l1 = Boxes[PathID("domino/System/DebugAnnotationTextController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L18\\L18M010.domino|@L18M010_Main|787821313", "787821313", "L18M010_Main", "box_Timer_v2_5.TimeElapsed", "box_Display_a_debug_annotation_text_entity_7.Disable", l0, l1)
  l1:Disable()
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
  l0 = self.box_MissionMessageController_v3_3
  l0.Objective = {
    section = "",
    item = "",
    id = "552636"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L18\\L18M010.domino|@L18M010_Main|1259510529", "1259510529", "L18M010_Main", "box_Get_Player_ID_1.Out", "box_MissionMessageController_v3_3.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_Display_a_debug_annotation_text_entity_7_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugAnnotationTextController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_5
  l0.Seconds = 8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L18\\L18M010.domino|@L18M010_Main|2027141809", "2027141809", "L18M010_Main", "box_Display_a_debug_annotation_text_entity_7.Enabled", "box_Timer_v2_5.Start", clone, l0)
  l0:Start()
end
function export:f_box_MapPointController_v3_9_Hidden()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Display_a_debug_annotation_text_entity_7()
  l0 = self.box_MapPointController_v3_9
  l1 = Boxes[PathID("domino/System/DebugAnnotationTextController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L18\\L18M010.domino|@L18M010_Main|359949118", "359949118", "L18M010_Main", "box_MapPointController_v3_9.Hidden", "box_Display_a_debug_annotation_text_entity_7.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_PhoneCommunicationController_10_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_10
  l1 = self.box_MissionMessageController_v3_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L18\\L18M010.domino|@L18M010_Main|1393733727", "1393733727", "L18M010_Main", "box_PhoneCommunicationController_10.OnCommunicationFinished", "box_MissionMessageController_v3_4.ShowLastObjectiveComplete", l0, l1)
  l1:ShowLastObjectiveComplete()
end
function export:f_box_Trigger_Controller_8_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TriggerController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MapPointController_v3_9
  l0.MapPoint = self.L18_StoryIcon_0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L18\\L18M010.domino|@L18M010_Main|557436989", "557436989", "L18M010_Main", "box_Trigger_Controller_8.Disabled", "box_MapPointController_v3_9.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_TriggerMonitor_v2_6_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/TriggerController.lua")]
  l0.Trigger = self.MissionStartTrigger_29
  l0.CheckLookAt = nil
  l0.CheckAngle = nil
  l0.IconZOffset = nil
  l0.OasisId = nil
  l0._graph = self
  l0._name = "box_Trigger_Controller_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L18\\L18M010.domino|@L18M010_Main|1722210043"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Trigger_Controller_8_Disabled
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.IconOffsetSet = DummyFunction
  l0.CustomOasisIdSet = DummyFunction
  l0.NoInteractionTextSet = DummyFunction
  l0 = self.box_TriggerMonitor_v2_6
  l1 = Boxes[PathID("domino/System/TriggerController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L18\\L18M010.domino|@L18M010_Main|508858711", "508858711", "L18M010_Main", "box_TriggerMonitor_v2_6.Disabled", "box_Trigger_Controller_8.SetDisabled", l0, l1)
  l1:SetDisabled()
end
function export:f_box_TriggerMonitor_v2_6_Use()
  local l0
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_6()
  l0 = self.box_TriggerMonitor_v2_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L18\\L18M010.domino|@L18M010_Main|1668657338", "1668657338", "L18M010_Main", "box_TriggerMonitor_v2_6.Use", "box_TriggerMonitor_v2_6.Disable", l0, l0)
  l0:Disable()
end
function export:OnEnter_box_Display_a_debug_annotation_text_entity_7()
  local l0
  l0 = Boxes[PathID("domino/System/DebugAnnotationTextController.lua")]
  l0.EntityId = self.DebugAnnotationTextEntity_390
  l0.Text = nil
  l0._graph = self
  l0._name = "box_Display_a_debug_annotation_text_entity_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L18\\L18M010.domino|@L18M010_Main|1023949407"
  l0.Enabled = self.f_box_Display_a_debug_annotation_text_entity_7_Enabled
  l0.Disabled = DummyFunction
  l0.TextSet = DummyFunction
end
function export:OnEnter_box_TriggerMonitor_v2_6()
  local l0
  l0 = self.box_TriggerMonitor_v2_6
  l0.Trigger = self.MissionStartTrigger_29
end
_compilerVersion = 4
