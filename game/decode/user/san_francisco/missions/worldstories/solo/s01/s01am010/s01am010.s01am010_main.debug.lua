export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/InteractionScriptController.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MissionMonitor.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlayerPhoneMonitor.lua")
  cbox:RegisterBox("domino/System/RewardComponentController_V3.lua")
  cbox:RegisterBox("domino/System/SmartphoneAppController.lua")
  cbox:RegisterBox("domino/System/TeleportPlayerInsideHma.lua")
  cbox:RegisterBox("domino/System/TutorialController.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S01AM010_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM010\\S01AM010.domino|@S01AM010_Main"
  self.PlayerEntity = nil
  self.CtOsBackdoorComponents = 0
  self.box_PlayerPhoneMonitor_8 = cbox:CreateBox("domino/System/PlayerPhoneMonitor.lua")
  l0 = self.box_PlayerPhoneMonitor_8
  l0._graph = self
  l0._name = "box_PlayerPhoneMonitor_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM010\\S01AM010.domino|@S01AM010_Main|116591194"
  l0.Enabled = self.f_box_PlayerPhoneMonitor_8_Enabled
  l0.Disabled = self.f_box_PlayerPhoneMonitor_8_Disabled
  l0.Has = DummyFunction
  l0.HasNOT = DummyFunction
  l0.OnPhoneOpened = self.f_box_PlayerPhoneMonitor_8_OnPhoneOpened
  l0.OnPhoneClosed = self.f_box_PlayerPhoneMonitor_8_OnPhoneClosed
  l0.OnAppOpened = self.f_box_PlayerPhoneMonitor_8_OnAppOpened
  l0.OnAppClosed = DummyFunction
  l0.OnAppInstalled = DummyFunction
  self.box_MissionCheckpointReach_19 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_19
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM010\\S01AM010.domino|@S01AM010_Main|341086741"
  l0.Out = self.f_box_MissionCheckpointReach_19_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MissionMessageController_v3_12 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_12
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM010\\S01AM010.domino|@S01AM010_Main|551332378"
  l0.Out = self.f_box_MissionMessageController_v3_12_Out
  l0.MessageCompleted = DummyFunction
  self.box_TeleportPlayerInsideHma_2 = cbox:CreateBox("domino/System/TeleportPlayerInsideHma.lua")
  l0 = self.box_TeleportPlayerInsideHma_2
  l0._graph = self
  l0._name = "box_TeleportPlayerInsideHma_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM010\\S01AM010.domino|@S01AM010_Main|948866274"
  l0.Out = DummyFunction
  l0.Done = self.f_box_TeleportPlayerInsideHma_2_Done
  self.box_MissionController_v4_1 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_1
  l0._graph = self
  l0._name = "box_MissionController_v4_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM010\\S01AM010.domino|@S01AM010_Main|950731896"
  self.box_TutorialController_7 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_7
  l0._graph = self
  l0._name = "box_TutorialController_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM010\\S01AM010.domino|@S01AM010_Main|1439605697"
  l0.Out = self.f_box_TutorialController_7_Out
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_RewardController_v3_51 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_51
  l0._graph = self
  l0._name = "box_RewardController_v3_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM010\\S01AM010.domino|@S01AM010_Main|1848348723"
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_box_RewardController_v3_51_RewardsExecuted
  self.box_TutorialController_11 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_11
  l0._graph = self
  l0._name = "box_TutorialController_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM010\\S01AM010.domino|@S01AM010_Main|1887773783"
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_MultipleOR_20 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_20
  l0._graph = self
  l0._name = "box_MultipleOR_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM010\\S01AM010.domino|@S01AM010_Main|1924089962"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_20_Out
  self.box_TutorialController_5 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_5
  l0._graph = self
  l0._name = "box_TutorialController_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM010\\S01AM010.domino|@S01AM010_Main|1969563355"
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_TutorialController_10 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_10
  l0._graph = self
  l0._name = "box_TutorialController_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM010\\S01AM010.domino|@S01AM010_Main|2126715518"
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_MissionMonitor_14 = cbox:CreateBox("domino/System/MissionMonitor.lua")
  l0 = self.box_MissionMonitor_14
  l0._graph = self
  l0._name = "box_MissionMonitor_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM010\\S01AM010.domino|@S01AM010_Main|2142488035"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_MissionMonitor_14_Disabled
  l0.Tracked = self.f_box_MissionMonitor_14_Tracked
  l0.NotTracked = DummyFunction
  l0.Completed = DummyFunction
  l0.NotCompleted = DummyFunction
  l0.OnMissionSucceeded = DummyFunction
  l0.OnMissionFailed = DummyFunction
  l0.OnMissionAborted = DummyFunction
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:CheckPoint_0()
  local l0
  l0 = self.box_TeleportPlayerInsideHma_2
  l0.SpawnPoint = "9223372066268170146"
  l0.StandaloneLoader = "9223372047131482396"
  l0.LayerName = "SF_08_Mission_Central_HMA_Hackerspace"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM010\\S01AM010.domino|@S01AM010_Main|13604277", "13604277", "S01AM010_Main", "CheckPoint_0", "box_TeleportPlayerInsideHma_2.In", self, l0)
  l0:In()
end
function export:In()
  local l0
  l0 = self.box_MissionCheckpointReach_19
  l0.CheckpointList = "CheckPoint_0"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM010\\S01AM010.domino|@S01AM010_Main|2057435591", "2057435591", "S01AM010_Main", "In", "box_MissionCheckpointReach_19.In", self, l0)
  l0:In()
end
function export:f_box_Get_Player_ID_17_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_20()
  l0 = self.box_MultipleOR_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM010\\S01AM010.domino|@S01AM010_Main|595851773", "595851773", "S01AM010_Main", "box_Get_Player_ID_17.Out", "box_MultipleOR_20.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_SmartphoneAppController_30_InstalledSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_12
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M030.Objectives.Objective010",
    item = "Objective",
    id = "578178"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM010\\S01AM010.domino|@S01AM010_Main|906910703", "906910703", "S01AM010_Main", "box_SmartphoneAppController_30.InstalledSet", "box_MissionMessageController_v3_12.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_PlayerPhoneMonitor_8_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM010\\S01AM010.domino|@S01AM010_Main|861431927"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_9_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_9_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_9_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_9_Out_3
  l0 = self.box_PlayerPhoneMonitor_8
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM010\\S01AM010.domino|@S01AM010_Main|1529557422", "1529557422", "S01AM010_Main", "box_PlayerPhoneMonitor_8.Disabled", "box_Ordered_Output_9.In", l0, l1)
  l1:In()
end
function export:f_box_PlayerPhoneMonitor_8_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MissionMonitor_14()
  l0 = self.box_PlayerPhoneMonitor_8
  l1 = self.box_MissionMonitor_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM010\\S01AM010.domino|@S01AM010_Main|1042917393", "1042917393", "S01AM010_Main", "box_PlayerPhoneMonitor_8.Enabled", "box_MissionMonitor_14.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_PlayerPhoneMonitor_8_OnAppOpened()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_10()
  l0 = self.box_PlayerPhoneMonitor_8
  l1 = self.box_TutorialController_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM010\\S01AM010.domino|@S01AM010_Main|408220724", "408220724", "S01AM010_Main", "box_PlayerPhoneMonitor_8.OnAppOpened", "box_TutorialController_10.Display", l0, l1)
  l1:Display()
end
function export:f_box_PlayerPhoneMonitor_8_OnPhoneClosed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_5()
  l0 = self.box_PlayerPhoneMonitor_8
  l1 = self.box_TutorialController_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM010\\S01AM010.domino|@S01AM010_Main|1434244224", "1434244224", "S01AM010_Main", "box_PlayerPhoneMonitor_8.OnPhoneClosed", "box_TutorialController_5.Display", l0, l1)
  l1:Display()
end
function export:f_box_PlayerPhoneMonitor_8_OnPhoneOpened()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_11()
  l0 = self.box_PlayerPhoneMonitor_8
  l1 = self.box_TutorialController_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM010\\S01AM010.domino|@S01AM010_Main|1968462796", "1968462796", "S01AM010_Main", "box_PlayerPhoneMonitor_8.OnPhoneOpened", "box_TutorialController_11.Display", l0, l1)
  l1:Display()
end
function export:f_box_InteractionScriptController_6_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372047426345164"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM010\\S01AM010.domino|@S01AM010_Main|1108196437"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_13_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM010\\S01AM010.domino|@S01AM010_Main|690734765", "690734765", "S01AM010_Main", "box_InteractionScriptController_6.Disabled", "box_InteractionScriptController_13.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_MissionCheckpointReach_19_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM010\\S01AM010.domino|@S01AM010_Main|31323426"
  l0.Out = self.f_box_Get_Player_ID_17_Out
  l0 = self.box_MissionCheckpointReach_19
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM010\\S01AM010.domino|@S01AM010_Main|1364170680", "1364170680", "S01AM010_Main", "box_MissionCheckpointReach_19.Out", "box_Get_Player_ID_17.In", l0, l1)
  l1:In()
end
function export:f_box_InteractionScriptController_15_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionController_v4_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM010\\S01AM010.domino|@S01AM010_Main|2043659165", "2043659165", "S01AM010_Main", "box_InteractionScriptController_15.Enabled", "box_MissionController_v4_1.Succeed", clone, l0)
  l0:Succeed()
end
function export:f_box_MissionMessageController_v3_12_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_TutorialController_7
  l0.Notification = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M020.Objectives.Notification014",
    item = "Notification",
    id = "636699"
  }
  l0.Duration = -1
  l0 = self.box_MissionMessageController_v3_12
  l1 = self.box_TutorialController_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM010\\S01AM010.domino|@S01AM010_Main|1495678852", "1495678852", "S01AM010_Main", "box_MissionMessageController_v3_12.Out", "box_TutorialController_7.Display", l0, l1)
  l1:Display()
end
function export:f_box_Ordered_Output_9_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionMonitor_14()
  l0 = self.box_MissionMonitor_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM010\\S01AM010.domino|@S01AM010_Main|610637743", "610637743", "S01AM010_Main", "box_Ordered_Output_9.Out", "box_MissionMonitor_14.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_9_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TutorialController_11()
  l0 = self.box_TutorialController_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM010\\S01AM010.domino|@S01AM010_Main|736411922", "736411922", "S01AM010_Main", "box_Ordered_Output_9.Out", "box_TutorialController_11.HideNotification", clone, l0)
  l0:HideNotification()
end
function export:f_box_Ordered_Output_9_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TutorialController_5()
  l0 = self.box_TutorialController_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM010\\S01AM010.domino|@S01AM010_Main|1009392272", "1009392272", "S01AM010_Main", "box_Ordered_Output_9.Out", "box_TutorialController_5.HideNotification", clone, l0)
  l0:HideNotification()
end
function export:f_box_Ordered_Output_9_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TutorialController_10()
  l0 = self.box_TutorialController_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM010\\S01AM010.domino|@S01AM010_Main|376768074", "376768074", "S01AM010_Main", "box_Ordered_Output_9.Out", "box_TutorialController_10.HideNotification", clone, l0)
  l0:HideNotification()
end
function export:f_box_TeleportPlayerInsideHma_2_Done()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372047426345166"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM010\\S01AM010.domino|@S01AM010_Main|129383810"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_6_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_TeleportPlayerInsideHma_2
  l1 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM010\\S01AM010.domino|@S01AM010_Main|1581541291", "1581541291", "S01AM010_Main", "box_TeleportPlayerInsideHma_2.Done", "box_InteractionScriptController_6.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_InteractionScriptController_13_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_20()
  l0 = self.box_MultipleOR_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM010\\S01AM010.domino|@S01AM010_Main|2123424238", "2123424238", "S01AM010_Main", "box_InteractionScriptController_13.Disabled", "box_MultipleOR_20.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_InteractionScriptController_21_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372047426345164"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM010\\S01AM010.domino|@S01AM010_Main|496398673"
  l0.Enabled = self.f_box_InteractionScriptController_15_Enabled
  l0.Disabled = DummyFunction
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM010\\S01AM010.domino|@S01AM010_Main|839722835", "839722835", "S01AM010_Main", "box_InteractionScriptController_21.Enabled", "box_InteractionScriptController_15.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_TutorialController_7_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PlayerPhoneMonitor_8()
  l0 = self.box_TutorialController_7
  l1 = self.box_PlayerPhoneMonitor_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM010\\S01AM010.domino|@S01AM010_Main|415429852", "415429852", "S01AM010_Main", "box_TutorialController_7.Out", "box_PlayerPhoneMonitor_8.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_RewardController_v3_51_RewardsExecuted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372047426345166"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM010\\S01AM010.domino|@S01AM010_Main|1243804511"
  l0.Enabled = self.f_box_InteractionScriptController_21_Enabled
  l0.Disabled = DummyFunction
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_RewardController_v3_51
  l1 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM010\\S01AM010.domino|@S01AM010_Main|23812312", "23812312", "S01AM010_Main", "box_RewardController_v3_51.RewardsExecuted", "box_InteractionScriptController_21.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MultipleOR_20_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = "UIAppCatalogDB.9223372046454257056"
  l0.OverrideSettings = nil
  l0._graph = self
  l0._name = "box_SmartphoneAppController_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM010\\S01AM010.domino|@S01AM010_Main|47585667"
  l0.HiddenSet = DummyFunction
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = self.f_box_SmartphoneAppController_30_InstalledSet
  l0.OverrideActivated = DummyFunction
  l0.OverrideCleared = DummyFunction
  l0 = self.box_MultipleOR_20
  l1 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM010\\S01AM010.domino|@S01AM010_Main|1640449804", "1640449804", "S01AM010_Main", "box_MultipleOR_20.Out", "box_SmartphoneAppController_30.SetInstalled", l0, l1)
  l1:SetInstalled()
end
function export:f_box_MissionMonitor_14_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_51
  l0.ItemDB = "Items.9223372050611844744"
  l0 = self.box_MissionMonitor_14
  l1 = self.box_RewardController_v3_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM010\\S01AM010.domino|@S01AM010_Main|1638295275", "1638295275", "S01AM010_Main", "box_MissionMonitor_14.Disabled", "box_RewardController_v3_51.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_MissionMonitor_14_Tracked()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PlayerPhoneMonitor_8()
  l0 = self.box_MissionMonitor_14
  l1 = self.box_PlayerPhoneMonitor_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM010\\S01AM010.domino|@S01AM010_Main|1811645653", "1811645653", "S01AM010_Main", "box_MissionMonitor_14.Tracked", "box_PlayerPhoneMonitor_8.Disable", l0, l1)
  l1:Disable()
end
function export:OnEnter_box_PlayerPhoneMonitor_8()
  local l0
  l0 = self.box_PlayerPhoneMonitor_8
  l0.App = "UIAppCatalogDB.9223372046454257056"
end
function export:OnEnter_box_TutorialController_11()
  local l0
  l0 = self.box_TutorialController_11
  l0.Notification = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M020.Objectives.Notification015",
    item = "Notification",
    id = "636714"
  }
  l0.NotificationOverridePC = {
    section = "PRESENTATION.MAIN & PAUSE MENUS.Main Menu.PC_Options.PC_Specific_Tutorials",
    item = "SelectDedSecApp",
    id = "699234"
  }
  l0.Duration = -1
end
function export:OnEnter_box_MultipleOR_20()
end
function export:OnEnter_box_TutorialController_5()
  local l0
  l0 = self.box_TutorialController_5
  l0.Notification = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M020.Objectives.Notification014",
    item = "Notification",
    id = "636699"
  }
  l0.Duration = -1
end
function export:OnEnter_box_TutorialController_10()
  local l0
  l0 = self.box_TutorialController_10
  l0.Notification = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M020.Objectives.Notification017",
    item = "Notification",
    id = "636740"
  }
  l0.NotificationOverridePC = {
    section = "PRESENTATION.MAIN & PAUSE MENUS.Main Menu.PC_Options.PC_Specific_Tutorials",
    item = "SelectWalkMission",
    id = "699235"
  }
  l0.Duration = -1
end
function export:OnEnter_box_MissionMonitor_14()
  local l0
  l0 = self.box_MissionMonitor_14
  l0.Mission = "MissionList.9223372049674795932"
end
_compilerVersion = 4
