export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/EntityLoadingMonitor.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/InteractionScriptMonitor_v2.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:RegisterBox("domino/System/TutorialController.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S04M020_Activation"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Activation"
  self.PlayerEntity = "200"
  self.box_PhoneCommunicationController_2 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_2
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Activation|1002226640"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_TutorialController_10 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_10
  l0._graph = self
  l0._name = "box_TutorialController_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Activation|1026484913"
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_MultipleOR_8 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_8
  l0._graph = self
  l0._name = "box_MultipleOR_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Activation|1336473457"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_8_Out
  self.box_InteractionScriptMonitor_v2_11 = cbox:CreateBox("domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self.box_InteractionScriptMonitor_v2_11
  l0._graph = self
  l0._name = "box_InteractionScriptMonitor_v2_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Activation|1381495020"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptMonitor_v2_11_Disabled
  l0.InteractionStarted = self.f_box_InteractionScriptMonitor_v2_11_InteractionStarted
  l0.InteractionFailed = DummyFunction
  l0.InteractionFinished = DummyFunction
  l0.AnimationStarted = DummyFunction
  l0.AnimationFinished = DummyFunction
  self.box_EntityLoadingMonitor_9 = cbox:CreateBox("domino/System/EntityLoadingMonitor.lua")
  l0 = self.box_EntityLoadingMonitor_9
  l0._graph = self
  l0._name = "box_EntityLoadingMonitor_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Activation|1398993762"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.AllLoaded = self.f_box_EntityLoadingMonitor_9_AllLoaded
  self.box_TriggerMonitor_v2_1 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_1
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Activation|1456313615"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TriggerMonitor_v2_1_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_1_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_TriggerMonitor_v2_5 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_5
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Activation|1843903824"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TriggerMonitor_v2_5_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_5_Enter
  l0.Leave = self.f_box_TriggerMonitor_v2_5_Leave
  l0.Use = DummyFunction
  self.box_InteractionScriptMonitor_v2_7 = cbox:CreateBox("domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self.box_InteractionScriptMonitor_v2_7
  l0._graph = self
  l0._name = "box_InteractionScriptMonitor_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Activation|1975858026"
  l0.Out = DummyFunction
  l0.Enabled = self.f_box_InteractionScriptMonitor_v2_7_Enabled
  l0.Disabled = self.f_box_InteractionScriptMonitor_v2_7_Disabled
  l0.InteractionStarted = DummyFunction
  l0.InteractionFailed = DummyFunction
  l0.InteractionFinished = self.f_box_InteractionScriptMonitor_v2_7_InteractionFinished
  l0.AnimationStarted = DummyFunction
  l0.AnimationFinished = DummyFunction
  self.box_TutorialController_4 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_4
  l0._graph = self
  l0._name = "box_TutorialController_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Activation|2043116021"
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_box_TutorialController_4_DisplayRequested
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
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
  l0._name = "box_Get_Player_ID_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Activation|1905103094"
  l0.Out = self.f_box_Get_Player_ID_3_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Activation|795264067", "795264067", "S04M020_Activation", "In", "box_Get_Player_ID_3.In", self, l0)
  l0:In()
end
function export:f_box_Ordered_Output_6_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_1()
  l0 = self.box_TriggerMonitor_v2_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Activation|1797125214", "1797125214", "S04M020_Activation", "box_Ordered_Output_6.Out", "box_TriggerMonitor_v2_1.Enable", clone, l0)
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
  l0 = self.box_EntityLoadingMonitor_9
  l0.AutoDisable = 1
  l0.Entity = "9223372064450394621"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Activation|1625636355", "1625636355", "S04M020_Activation", "box_Ordered_Output_6.Out", "box_EntityLoadingMonitor_9.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MultipleOR_8_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_4()
  l0 = self.box_MultipleOR_8
  l1 = self.box_TutorialController_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Activation|1401683563", "1401683563", "S04M020_Activation", "box_MultipleOR_8.Out", "box_TutorialController_4.HideNotification", l0, l1)
  l1:HideNotification()
end
function export:f_box_InteractionScriptMonitor_v2_11_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_8()
  l0 = self.box_InteractionScriptMonitor_v2_11
  l1 = self.box_MultipleOR_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Activation|782397018", "782397018", "S04M020_Activation", "box_InteractionScriptMonitor_v2_11.Disabled", "box_MultipleOR_8.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_InteractionScriptMonitor_v2_11_InteractionStarted()
  local l0
  self = self._graph
  self:OnEnter_box_InteractionScriptMonitor_v2_11()
  l0 = self.box_InteractionScriptMonitor_v2_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Activation|67805564", "67805564", "S04M020_Activation", "box_InteractionScriptMonitor_v2_11.InteractionStarted", "box_InteractionScriptMonitor_v2_11.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_EntityLoadingMonitor_9_AllLoaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Activation|1692943938"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_12_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_12_Out_1
  l0 = self.box_EntityLoadingMonitor_9
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Activation|1629551072", "1629551072", "S04M020_Activation", "box_EntityLoadingMonitor_9.AllLoaded", "box_Ordered_Output_12.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_1_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_2
  l0.PlayerEntity = self.PlayerEntity
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421347578"
  l0 = self.box_TriggerMonitor_v2_1
  l1 = self.box_PhoneCommunicationController_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Activation|1481262549", "1481262549", "S04M020_Activation", "box_TriggerMonitor_v2_1.Disabled", "box_PhoneCommunicationController_2.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_TriggerMonitor_v2_1_Enter()
  local l0
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_1()
  l0 = self.box_TriggerMonitor_v2_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Activation|957831799", "957831799", "S04M020_Activation", "box_TriggerMonitor_v2_1.Enter", "box_TriggerMonitor_v2_1.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_12_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_InteractionScriptMonitor_v2_7()
  l0 = self.box_InteractionScriptMonitor_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Activation|315988219", "315988219", "S04M020_Activation", "box_Ordered_Output_12.Out", "box_InteractionScriptMonitor_v2_7.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_12_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_InteractionScriptMonitor_v2_11()
  l0 = self.box_InteractionScriptMonitor_v2_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Activation|2100581351", "2100581351", "S04M020_Activation", "box_Ordered_Output_12.Out", "box_InteractionScriptMonitor_v2_11.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_TriggerMonitor_v2_5_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_8()
  l0 = self.box_TriggerMonitor_v2_5
  l1 = self.box_MultipleOR_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Activation|1722677407", "1722677407", "S04M020_Activation", "box_TriggerMonitor_v2_5.Disabled", "box_MultipleOR_8.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_TriggerMonitor_v2_5_Enter()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_4()
  l0 = self.box_TriggerMonitor_v2_5
  l1 = self.box_TutorialController_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Activation|613668274", "613668274", "S04M020_Activation", "box_TriggerMonitor_v2_5.Enter", "box_TutorialController_4.Display", l0, l1)
  l1:Display()
end
function export:f_box_TriggerMonitor_v2_5_Leave()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_8()
  l0 = self.box_TriggerMonitor_v2_5
  l1 = self.box_MultipleOR_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Activation|761582734", "761582734", "S04M020_Activation", "box_TriggerMonitor_v2_5.Leave", "box_MultipleOR_8.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Get_Player_ID_3_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Activation|1026597286"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_6_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_6_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Activation|1842650852", "1842650852", "S04M020_Activation", "box_Get_Player_ID_3.Out", "box_Ordered_Output_6.In", clone, l0)
  l0:In()
end
function export:f_box_InteractionScriptMonitor_v2_7_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_5()
  l0 = self.box_InteractionScriptMonitor_v2_7
  l1 = self.box_TriggerMonitor_v2_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Activation|1549343793", "1549343793", "S04M020_Activation", "box_InteractionScriptMonitor_v2_7.Disabled", "box_TriggerMonitor_v2_5.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_InteractionScriptMonitor_v2_7_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_5()
  l0 = self.box_InteractionScriptMonitor_v2_7
  l1 = self.box_TriggerMonitor_v2_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Activation|788023304", "788023304", "S04M020_Activation", "box_InteractionScriptMonitor_v2_7.Enabled", "box_TriggerMonitor_v2_5.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_InteractionScriptMonitor_v2_7_InteractionFinished()
  local l0
  self = self._graph
  self:OnEnter_box_InteractionScriptMonitor_v2_7()
  l0 = self.box_InteractionScriptMonitor_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Activation|2025227294", "2025227294", "S04M020_Activation", "box_InteractionScriptMonitor_v2_7.InteractionFinished", "box_InteractionScriptMonitor_v2_7.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_TutorialController_4_DisplayRequested()
  local l0, l1
  self = self._graph
  l0 = self.box_TutorialController_10
  l0.SurvivalGuideItemDB = "Items.9223372053993007733"
  l0 = self.box_TutorialController_4
  l1 = self.box_TutorialController_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Activation|1191705396", "1191705396", "S04M020_Activation", "box_TutorialController_4.DisplayRequested", "box_TutorialController_10.Display", l0, l1)
  l1:Display()
end
function export:OnEnter_box_MultipleOR_8()
end
function export:OnEnter_box_InteractionScriptMonitor_v2_11()
  local l0
  l0 = self.box_InteractionScriptMonitor_v2_11
  l0.InteractionScriptEntity = "9223372047463882747"
end
function export:OnEnter_box_TriggerMonitor_v2_1()
  local l0
  l0 = self.box_TriggerMonitor_v2_1
  l0.Trigger = "9223372049287451042"
end
function export:OnEnter_box_TriggerMonitor_v2_5()
  local l0
  l0 = self.box_TriggerMonitor_v2_5
  l0.Trigger = "9223372053447894511"
end
function export:OnEnter_box_InteractionScriptMonitor_v2_7()
  local l0
  l0 = self.box_InteractionScriptMonitor_v2_7
  l0.InteractionScriptEntity = "9223372064450394621"
end
function export:OnEnter_box_TutorialController_4()
  local l0
  l0 = self.box_TutorialController_4
  l0.Notification = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S04.S04M020.Objectives.Notification010",
    item = "Notification",
    id = "640629"
  }
  l0.Duration = -1
end
_compilerVersion = 4
