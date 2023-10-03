export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.debug.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.debug.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/RewardPhoneCallMonitor.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "L06M020_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M020\\L06M020.domino|@L06M020_Main"
  self.PlayerEntity = nil
  self.box_Reward_Phone_Call_Monitor_7 = cbox:CreateBox("domino/System/RewardPhoneCallMonitor.lua")
  l0 = self.box_Reward_Phone_Call_Monitor_7
  l0._graph = self
  l0._name = "box_Reward_Phone_Call_Monitor_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M020\\L06M020.domino|@L06M020_Main|620659782"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnPhoneCallEnded = self.f_box_Reward_Phone_Call_Monitor_7_OnPhoneCallEnded
  self.box_MissionMessageController_v3_10 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_10
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M020\\L06M020.domino|@L06M020_Main|693869270"
  l0.Out = self.f_box_MissionMessageController_v3_10_Out
  l0.MessageCompleted = DummyFunction
  self.box_TriggerMonitor_v2_5 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_5
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M020\\L06M020.domino|@L06M020_Main|749434040"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_5_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_PhoneCommunicationController_6 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_6
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M020\\L06M020.domino|@L06M020_Main|750125915"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = self.f_box_PhoneCommunicationController_6_OnCommunicationStarted
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_PhoneCommunicationController_4 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_4
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M020\\L06M020.domino|@L06M020_Main|1142485197"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = self.f_box_PhoneCommunicationController_4_OnCommunicationStarted
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_FreeRoam_Hack_Gameplay_11 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Hack_Gameplay_11
  l0._graph = self
  l0._name = "box_FreeRoam_Hack_Gameplay_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M020\\L06M020.domino|@L06M020_Main|1480114161"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_box_FreeRoam_Hack_Gameplay_11_Hacked
  self.box_FreeRoam_Beat_1 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  l0 = self.box_FreeRoam_Beat_1
  l0._graph = self
  l0._name = "box_FreeRoam_Beat_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M020\\L06M020.domino|@L06M020_Main|1599340787"
  l0.NewBeatStarted = self.f_box_FreeRoam_Beat_1_NewBeatStarted
  self.box_FreeRoam_Mission_End_2 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.debug.lua")
  l0 = self.box_FreeRoam_Mission_End_2
  l0._graph = self
  l0._name = "box_FreeRoam_Mission_End_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M020\\L06M020.domino|@L06M020_Main|1676806524"
  self.box_TriggerMonitor_v2_3 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_3
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M020\\L06M020.domino|@L06M020_Main|1987531047"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_3_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
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
  self:OnEnter_box_FreeRoam_Beat_1()
  l0 = self.box_FreeRoam_Beat_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M020\\L06M020.domino|@L06M020_Main|1469287238", "1469287238", "L06M020_Main", "CheckPoint_0", "box_FreeRoam_Beat_1.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:CheckPoint_1()
  local l0
  self:OnEnter_box_FreeRoam_Mission_End_2()
  l0 = self.box_FreeRoam_Mission_End_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M020\\L06M020.domino|@L06M020_Main|5688506", "5688506", "L06M020_Main", "CheckPoint_1", "box_FreeRoam_Mission_End_2.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  self:OnEnter_box_FreeRoam_Beat_1()
  l0 = self.box_FreeRoam_Beat_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M020\\L06M020.domino|@L06M020_Main|1500680758", "1500680758", "L06M020_Main", "In", "box_FreeRoam_Beat_1.StartNewBeat", self, l0)
  l0:StartNewBeat()
end
function export:f_box_Reward_Phone_Call_Monitor_7_OnPhoneCallEnded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Mission_End_2()
  l0 = self.box_Reward_Phone_Call_Monitor_7
  l1 = self.box_FreeRoam_Mission_End_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M020\\L06M020.domino|@L06M020_Main|882209254", "882209254", "L06M020_Main", "box_Reward_Phone_Call_Monitor_7.OnPhoneCallEnded", "box_FreeRoam_Mission_End_2.End", l0, l1)
  l1:End()
end
function export:f_box_MissionMessageController_v3_10_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M020\\L06M020.domino|@L06M020_Main|779632092"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_9_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_9_Out_1
  l0 = self.box_MissionMessageController_v3_10
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M020\\L06M020.domino|@L06M020_Main|659367381", "659367381", "L06M020_Main", "box_MissionMessageController_v3_10.Out", "box_Ordered_Output_9.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_5_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_6
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357373365"
  l0 = self.box_TriggerMonitor_v2_5
  l1 = self.box_PhoneCommunicationController_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M020\\L06M020.domino|@L06M020_Main|1845486440", "1845486440", "L06M020_Main", "box_TriggerMonitor_v2_5.Enter", "box_PhoneCommunicationController_6.TryStartCommunication", l0, l1)
  l1:TryStartCommunication()
end
function export:f_box_PhoneCommunicationController_6_OnCommunicationStarted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_5()
  l0 = self.box_PhoneCommunicationController_6
  l1 = self.box_TriggerMonitor_v2_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M020\\L06M020.domino|@L06M020_Main|638713113", "638713113", "L06M020_Main", "box_PhoneCommunicationController_6.OnCommunicationStarted", "box_TriggerMonitor_v2_5.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Ordered_Output_9_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_3()
  l0 = self.box_TriggerMonitor_v2_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M020\\L06M020.domino|@L06M020_Main|548380611", "548380611", "L06M020_Main", "box_Ordered_Output_9.Out", "box_TriggerMonitor_v2_3.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_9_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_FreeRoam_Hack_Gameplay_11
  l0.CLO = "9223372049731712237"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M020\\L06M020.domino|@L06M020_Main|1590766331", "1590766331", "L06M020_Main", "box_Ordered_Output_9.Out", "box_FreeRoam_Hack_Gameplay_11.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_8_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_3()
  l0 = self.box_TriggerMonitor_v2_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M020\\L06M020.domino|@L06M020_Main|468956755", "468956755", "L06M020_Main", "box_Ordered_Output_8.Out", "box_TriggerMonitor_v2_3.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_8_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_5()
  l0 = self.box_TriggerMonitor_v2_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M020\\L06M020.domino|@L06M020_Main|1447699032", "1447699032", "L06M020_Main", "box_Ordered_Output_8.Out", "box_TriggerMonitor_v2_5.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_PhoneCommunicationController_4_OnCommunicationStarted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M020\\L06M020.domino|@L06M020_Main|820328646"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_8_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_8_Out_1
  l0 = self.box_PhoneCommunicationController_4
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M020\\L06M020.domino|@L06M020_Main|904525002", "904525002", "L06M020_Main", "box_PhoneCommunicationController_4.OnCommunicationStarted", "box_Ordered_Output_8.In", l0, l1)
  l1:In()
end
function export:f_box_FreeRoam_Hack_Gameplay_11_Hacked()
  local l0, l1
  self = self._graph
  l0 = self.box_Reward_Phone_Call_Monitor_7
  l0.ItemDb = "Items.9223372049814636763"
  l0 = self.box_FreeRoam_Hack_Gameplay_11
  l1 = self.box_Reward_Phone_Call_Monitor_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M020\\L06M020.domino|@L06M020_Main|876724360", "876724360", "L06M020_Main", "box_FreeRoam_Hack_Gameplay_11.Hacked", "box_Reward_Phone_Call_Monitor_7.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_FreeRoam_Beat_1_NewBeatStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_10
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L06.L06M020.Objectives.Objective010",
    item = "Objective",
    id = "457813"
  }
  l0 = self.box_FreeRoam_Beat_1
  l1 = self.box_MissionMessageController_v3_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M020\\L06M020.domino|@L06M020_Main|99429748", "99429748", "L06M020_Main", "box_FreeRoam_Beat_1.NewBeatStarted", "box_MissionMessageController_v3_10.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_TriggerMonitor_v2_3_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_4
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357373364"
  l0 = self.box_TriggerMonitor_v2_3
  l1 = self.box_PhoneCommunicationController_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M020\\L06M020.domino|@L06M020_Main|314281745", "314281745", "L06M020_Main", "box_TriggerMonitor_v2_3.Enter", "box_PhoneCommunicationController_4.TryStartCommunication", l0, l1)
  l1:TryStartCommunication()
end
function export:OnEnter_box_TriggerMonitor_v2_5()
  local l0
  l0 = self.box_TriggerMonitor_v2_5
  l0.Trigger = "9223372055371197875"
end
function export:OnEnter_box_FreeRoam_Beat_1()
  local l0
  l0 = self.box_FreeRoam_Beat_1
  l0.ProgressionLayer = "ProgressionLayers.9223372047486643326"
  l0.Checkpoint = "CheckPoint_0"
end
function export:OnEnter_box_FreeRoam_Mission_End_2()
  local l0
  l0 = self.box_FreeRoam_Mission_End_2
  l0.Teamspeak = "PhoneCommunicationSettingsDb.9223372049090123377"
  l0.Checkpoint = "CheckPoint_1"
  l0.ShowMissionComplete = 0
  l0.BypassObjectiveCompleteMessage = 0
end
function export:OnEnter_box_TriggerMonitor_v2_3()
  local l0
  l0 = self.box_TriggerMonitor_v2_3
  l0.TriggerList = {
    "9223372055371198143",
    "9223372055371198146",
    "9223372055371198148",
    "9223372055371198150"
  }
end
_compilerVersion = 4
