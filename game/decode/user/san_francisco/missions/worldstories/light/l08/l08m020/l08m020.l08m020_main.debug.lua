export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/ObjectiveMonitor_v2.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/playerphonecommunicationmonitor.lua")
  cbox:RegisterBox("domino/System/RewardPhoneCallMonitor.lua")
end
function export:Init(cbox)
  local l0
  self._name = "L08M020_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M020\\L08M020.domino|@L08M020_Main"
  self.PlayerEntity = nil
  self.box_MissionMessageController_v3_12 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_12
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M020\\L08M020.domino|@L08M020_Main|349506385"
  l0.Out = self.f_box_MissionMessageController_v3_12_Out
  l0.MessageCompleted = DummyFunction
  self.box_Reward_Phone_Call_Monitor_2 = cbox:CreateBox("domino/System/RewardPhoneCallMonitor.lua")
  l0 = self.box_Reward_Phone_Call_Monitor_2
  l0._graph = self
  l0._name = "box_Reward_Phone_Call_Monitor_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M020\\L08M020.domino|@L08M020_Main|529736564"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnPhoneCallEnded = self.f_box_Reward_Phone_Call_Monitor_2_OnPhoneCallEnded
  self.box_PhoneCommunicationController_9 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_9
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M020\\L08M020.domino|@L08M020_Main|562952458"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Reward_Phone_Call_Monitor_1 = cbox:CreateBox("domino/System/RewardPhoneCallMonitor.lua")
  l0 = self.box_Reward_Phone_Call_Monitor_1
  l0._graph = self
  l0._name = "box_Reward_Phone_Call_Monitor_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M020\\L08M020.domino|@L08M020_Main|601436884"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnPhoneCallEnded = self.f_box_Reward_Phone_Call_Monitor_1_OnPhoneCallEnded
  self.box_MultipleOR_7 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_7
  l0._graph = self
  l0._name = "box_MultipleOR_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M020\\L08M020.domino|@L08M020_Main|1254362538"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_7_Out
  self.box_FreeRoam_Hack_Gameplay_15 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Hack_Gameplay_15
  l0._graph = self
  l0._name = "box_FreeRoam_Hack_Gameplay_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M020\\L08M020.domino|@L08M020_Main|1382457742"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_box_FreeRoam_Hack_Gameplay_15_Hacked
  self.box_MissionController_v4_14 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_14
  l0._graph = self
  l0._name = "box_MissionController_v4_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M020\\L08M020.domino|@L08M020_Main|1433832921"
  self.box_ObjectiveMonitor_v2_16 = cbox:CreateBox("domino/System/ObjectiveMonitor_v2.lua")
  l0 = self.box_ObjectiveMonitor_v2_16
  l0._graph = self
  l0._name = "box_ObjectiveMonitor_v2_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M020\\L08M020.domino|@L08M020_Main|1755700911"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotIncrement = DummyFunction
  l0.ObjectiveCompleted = self.f_box_ObjectiveMonitor_v2_16_ObjectiveCompleted
  l0.ObjectiveMessageStarted = DummyFunction
  l0.ObjectiveMessageFinished = DummyFunction
  l0.IncrementReached = DummyFunction
  l0.IncrementNotReached = DummyFunction
  self.box_MissionMessageController_v3_3 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_3
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M020\\L08M020.domino|@L08M020_Main|1777681893"
  l0.Out = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_MultipleOR_18 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_18
  l0._graph = self
  l0._name = "box_MultipleOR_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M020\\L08M020.domino|@L08M020_Main|1784080027"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_18_Out
  self.box_MultipleOR_13 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_13
  l0._graph = self
  l0._name = "box_MultipleOR_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M020\\L08M020.domino|@L08M020_Main|1862284069"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_13_Out
  self.box_PhoneCommunicationController_23 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_23
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M020\\L08M020.domino|@L08M020_Main|1862873086"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_PhoneCommunicationMonitor_6 = cbox:CreateBox("domino/System/playerphonecommunicationmonitor.lua")
  l0 = self.box_PhoneCommunicationMonitor_6
  l0._graph = self
  l0._name = "box_PhoneCommunicationMonitor_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M020\\L08M020.domino|@L08M020_Main|1923080347"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationMonitor_6_OnCommunicationFinished
  self.box_FreeRoam_Beat_11 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  l0 = self.box_FreeRoam_Beat_11
  l0._graph = self
  l0._name = "box_FreeRoam_Beat_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M020\\L08M020.domino|@L08M020_Main|1924888054"
  l0.NewBeatStarted = self.f_box_FreeRoam_Beat_11_NewBeatStarted
  self.box_MissionCheckpointReach_17 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_17
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M020\\L08M020.domino|@L08M020_Main|1960932132"
  l0.Out = self.f_box_MissionCheckpointReach_17_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_PhoneCommunicationMonitor_4 = cbox:CreateBox("domino/System/playerphonecommunicationmonitor.lua")
  l0 = self.box_PhoneCommunicationMonitor_4
  l0._graph = self
  l0._name = "box_PhoneCommunicationMonitor_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M020\\L08M020.domino|@L08M020_Main|2030121357"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationMonitor_4_OnCommunicationFinished
  self.box_FreeRoam_Hack_Gameplay_21 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Hack_Gameplay_21
  l0._graph = self
  l0._name = "box_FreeRoam_Hack_Gameplay_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M020\\L08M020.domino|@L08M020_Main|2117250881"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_box_FreeRoam_Hack_Gameplay_21_Hacked
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
  self:OnEnter_box_FreeRoam_Beat_11()
  l0 = self.box_FreeRoam_Beat_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M020\\L08M020.domino|@L08M020_Main|670712030", "670712030", "L08M020_Main", "CheckPoint_0", "box_FreeRoam_Beat_11.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:CheckPoint_1()
  local l0
  self:OnEnter_box_MultipleOR_18()
  l0 = self.box_MultipleOR_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M020\\L08M020.domino|@L08M020_Main|1380847148", "1380847148", "L08M020_Main", "CheckPoint_1", "box_MultipleOR_18.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_FreeRoam_Beat_11()
  l0 = self.box_FreeRoam_Beat_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M020\\L08M020.domino|@L08M020_Main|2040042812", "2040042812", "L08M020_Main", "In", "box_FreeRoam_Beat_11.StartNewBeat", self, l0)
  l0:StartNewBeat()
end
function export:f_box_Ordered_Output_10_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Reward_Phone_Call_Monitor_2
  l0.ItemDb = "Items.9223372050357367128"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M020\\L08M020.domino|@L08M020_Main|837415086", "837415086", "L08M020_Main", "box_Ordered_Output_10.Out", "box_Reward_Phone_Call_Monitor_2.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_10_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_13()
  l0 = self.box_MultipleOR_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M020\\L08M020.domino|@L08M020_Main|848074780", "848074780", "L08M020_Main", "box_Ordered_Output_10.Out", "box_MultipleOR_13.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_5_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationMonitor_4
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357463255"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M020\\L08M020.domino|@L08M020_Main|1113638921", "1113638921", "L08M020_Main", "box_Ordered_Output_5.Out", "box_PhoneCommunicationMonitor_4.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_5_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationMonitor_6
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357367116"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M020\\L08M020.domino|@L08M020_Main|1314911412", "1314911412", "L08M020_Main", "box_Ordered_Output_5.Out", "box_PhoneCommunicationMonitor_6.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MissionMessageController_v3_12_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M020\\L08M020.domino|@L08M020_Main|2093767482"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_25_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_25_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_25_Out_2
  l0 = self.box_MissionMessageController_v3_12
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M020\\L08M020.domino|@L08M020_Main|941610519", "941610519", "L08M020_Main", "box_MissionMessageController_v3_12.Out", "box_Ordered_Output_25.In", l0, l1)
  l1:In()
end
function export:f_box_Reward_Phone_Call_Monitor_2_OnPhoneCallEnded()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_9
  l0.PlayerEntity = self.PlayerEntity
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357367116"
  l0 = self.box_Reward_Phone_Call_Monitor_2
  l1 = self.box_PhoneCommunicationController_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M020\\L08M020.domino|@L08M020_Main|448120141", "448120141", "L08M020_Main", "box_Reward_Phone_Call_Monitor_2.OnPhoneCallEnded", "box_PhoneCommunicationController_9.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Reward_Phone_Call_Monitor_1_OnPhoneCallEnded()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_23
  l0.PlayerEntity = self.PlayerEntity
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357463255"
  l0 = self.box_Reward_Phone_Call_Monitor_1
  l1 = self.box_PhoneCommunicationController_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M020\\L08M020.domino|@L08M020_Main|1448465421", "1448465421", "L08M020_Main", "box_Reward_Phone_Call_Monitor_1.OnPhoneCallEnded", "box_PhoneCommunicationController_23.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Ordered_Output_8_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Reward_Phone_Call_Monitor_1
  l0.ItemDb = "Items.9223372056441907550"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M020\\L08M020.domino|@L08M020_Main|1837760366", "1837760366", "L08M020_Main", "box_Ordered_Output_8.Out", "box_Reward_Phone_Call_Monitor_1.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_8_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_13()
  l0 = self.box_MultipleOR_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M020\\L08M020.domino|@L08M020_Main|1310467168", "1310467168", "L08M020_Main", "box_Ordered_Output_8.Out", "box_MultipleOR_13.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_MultipleOR_7_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_18()
  l0 = self.box_MultipleOR_7
  l1 = self.box_MultipleOR_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M020\\L08M020.domino|@L08M020_Main|1062817269", "1062817269", "L08M020_Main", "box_MultipleOR_7.Out", "box_MultipleOR_18.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_FreeRoam_Hack_Gameplay_15_Hacked()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M020\\L08M020.domino|@L08M020_Main|1067232438"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_8_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_8_Out_1
  l0 = self.box_FreeRoam_Hack_Gameplay_15
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M020\\L08M020.domino|@L08M020_Main|1093584289", "1093584289", "L08M020_Main", "box_FreeRoam_Hack_Gameplay_15.Hacked", "box_Ordered_Output_8.In", l0, l1)
  l1:In()
end
function export:f_box_ObjectiveMonitor_v2_16_ObjectiveCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_17
  l0.CheckpointList = "CheckPoint_1"
  l0 = self.box_ObjectiveMonitor_v2_16
  l1 = self.box_MissionCheckpointReach_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M020\\L08M020.domino|@L08M020_Main|1442724250", "1442724250", "L08M020_Main", "box_ObjectiveMonitor_v2_16.ObjectiveCompleted", "box_MissionCheckpointReach_17.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_18_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MultipleOR_18
  l1 = self.box_MissionController_v4_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M020\\L08M020.domino|@L08M020_Main|1980832255", "1980832255", "L08M020_Main", "box_MultipleOR_18.Out", "box_MissionController_v4_14.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_MultipleOR_13_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_3
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L08.L08M020.Objectives.Objective010",
    item = "Objective",
    id = "457647"
  }
  l0 = self.box_MultipleOR_13
  l1 = self.box_MissionMessageController_v3_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M020\\L08M020.domino|@L08M020_Main|546564378", "546564378", "L08M020_Main", "box_MultipleOR_13.Out", "box_MissionMessageController_v3_3.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_PhoneCommunicationMonitor_6_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_7()
  l0 = self.box_PhoneCommunicationMonitor_6
  l1 = self.box_MultipleOR_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M020\\L08M020.domino|@L08M020_Main|1310438732", "1310438732", "L08M020_Main", "box_PhoneCommunicationMonitor_6.OnCommunicationFinished", "box_MultipleOR_7.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_FreeRoam_Beat_11_NewBeatStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_12
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L08.L08M020.Objectives.Objective010",
    item = "Objective",
    id = "457647"
  }
  l0.IncrementalObjectiveTotal = 2
  l0 = self.box_FreeRoam_Beat_11
  l1 = self.box_MissionMessageController_v3_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M020\\L08M020.domino|@L08M020_Main|176378486", "176378486", "L08M020_Main", "box_FreeRoam_Beat_11.NewBeatStarted", "box_MissionMessageController_v3_12.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_MissionCheckpointReach_17_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M020\\L08M020.domino|@L08M020_Main|183107928"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_5_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_5_Out_1
  l0 = self.box_MissionCheckpointReach_17
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M020\\L08M020.domino|@L08M020_Main|2110853932", "2110853932", "L08M020_Main", "box_MissionCheckpointReach_17.Out", "box_Ordered_Output_5.In", l0, l1)
  l1:In()
end
function export:f_box_PhoneCommunicationMonitor_4_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_7()
  l0 = self.box_PhoneCommunicationMonitor_4
  l1 = self.box_MultipleOR_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M020\\L08M020.domino|@L08M020_Main|483834610", "483834610", "L08M020_Main", "box_PhoneCommunicationMonitor_4.OnCommunicationFinished", "box_MultipleOR_7.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Ordered_Output_25_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_FreeRoam_Hack_Gameplay_15
  l0.CLO = "9223372048502957713"
  l0.HackCategory = "Contextual"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0.ProgressionTag = "ProgressionTag.9223372048502957691"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M020\\L08M020.domino|@L08M020_Main|808516962", "808516962", "L08M020_Main", "box_Ordered_Output_25.Out", "box_FreeRoam_Hack_Gameplay_15.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_25_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_FreeRoam_Hack_Gameplay_21
  l0.CLO = "9223372048502957712"
  l0.HackCategory = "Contextual"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0.ProgressionTag = "ProgressionTag.9223372048502957692"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M020\\L08M020.domino|@L08M020_Main|684804436", "684804436", "L08M020_Main", "box_Ordered_Output_25.Out", "box_FreeRoam_Hack_Gameplay_21.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_25_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ObjectiveMonitor_v2_16
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L08.L08M020.Objectives.Objective010",
    item = "Objective",
    id = "457647"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M020\\L08M020.domino|@L08M020_Main|1556248019", "1556248019", "L08M020_Main", "box_Ordered_Output_25.Out", "box_ObjectiveMonitor_v2_16.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_FreeRoam_Hack_Gameplay_21_Hacked()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M020\\L08M020.domino|@L08M020_Main|66887158"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_10_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_10_Out_1
  l0 = self.box_FreeRoam_Hack_Gameplay_21
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M020\\L08M020.domino|@L08M020_Main|173734969", "173734969", "L08M020_Main", "box_FreeRoam_Hack_Gameplay_21.Hacked", "box_Ordered_Output_10.In", l0, l1)
  l1:In()
end
function export:OnEnter_box_MultipleOR_7()
end
function export:OnEnter_box_MultipleOR_18()
end
function export:OnEnter_box_MultipleOR_13()
end
function export:OnEnter_box_FreeRoam_Beat_11()
  local l0
  l0 = self.box_FreeRoam_Beat_11
  l0.ProgressionLayer = "ProgressionLayers.9223372048502957725"
  l0.Checkpoint = "CheckPoint_0"
end
_compilerVersion = 4
