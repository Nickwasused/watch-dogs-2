export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/ConversationMonitor.lua")
  cbox:RegisterBox("domino/System/DynamicEventController.lua")
  cbox:RegisterBox("domino/System/DynamicEventMonitor.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Interact_Gameplay.debug.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_IOP_Interact_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/RewardComponentController_V3.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S01BM010_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM010\\S01BM010.domino|@S01BM010_Main"
  self.PlayerEntity = nil
  self.box_RewardController_v3_9 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_9
  l0._graph = self
  l0._name = "box_RewardController_v3_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM010\\S01BM010.domino|@S01BM010_Main|181470054"
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_box_RewardController_v3_9_RewardsExecuted
  self.box_MissionMessageController_v3_1 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_1
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM010\\S01BM010.domino|@S01BM010_Main|216540434"
  l0.Out = self.f_box_MissionMessageController_v3_1_Out
  l0.MessageCompleted = DummyFunction
  self.box_MultipleOR_7 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_7
  l0._graph = self
  l0._name = "box_MultipleOR_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM010\\S01BM010.domino|@S01BM010_Main|273155306"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_7_Out
  self.box_MissionController_v4_3 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_3
  l0._graph = self
  l0._name = "box_MissionController_v4_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM010\\S01BM010.domino|@S01BM010_Main|340553351"
  self.box_ConversationMonitor_5 = cbox:CreateBox("domino/System/ConversationMonitor.lua")
  l0 = self.box_ConversationMonitor_5
  l0._graph = self
  l0._name = "box_ConversationMonitor_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM010\\S01BM010.domino|@S01BM010_Main|366281632"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnFinished = self.f_box_ConversationMonitor_5_OnFinished
  l0.WasPlayed = DummyFunction
  l0.WasNotPlayed = DummyFunction
  self.box_RewardController_v3_12 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_12
  l0._graph = self
  l0._name = "box_RewardController_v3_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM010\\S01BM010.domino|@S01BM010_Main|374508945"
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_box_RewardController_v3_12_RewardsExecuted
  self.box_MissionCheckpointReach_2 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_2
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM010\\S01BM010.domino|@S01BM010_Main|377135532"
  l0.Out = self.f_box_MissionCheckpointReach_2_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_FreeRoam_Beat_20 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  l0 = self.box_FreeRoam_Beat_20
  l0._graph = self
  l0._name = "box_FreeRoam_Beat_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM010\\S01BM010.domino|@S01BM010_Main|736447969"
  l0.NewBeatStarted = self.f_box_FreeRoam_Beat_20_NewBeatStarted
  self.box_FreeRoam_IOP_Interact_Gameplay_21 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_IOP_Interact_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_IOP_Interact_Gameplay_21
  l0._graph = self
  l0._name = "box_FreeRoam_IOP_Interact_Gameplay_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM010\\S01BM010.domino|@S01BM010_Main|747914416"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_FreeRoam_IOP_Interact_Gameplay_21_Stopped
  l0.Interacted = self.f_box_FreeRoam_IOP_Interact_Gameplay_21_Interacted
  self.box_PhoneCommunicationController_8 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_8
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM010\\S01BM010.domino|@S01BM010_Main|839476390"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_8_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionMessageController_v3_23 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_23
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM010\\S01BM010.domino|@S01BM010_Main|856978612"
  l0.Out = self.f_box_MissionMessageController_v3_23_Out
  l0.MessageCompleted = DummyFunction
  self.box_MissionMessageController_v3_22 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_22
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM010\\S01BM010.domino|@S01BM010_Main|1021261709"
  l0.Out = self.f_box_MissionMessageController_v3_22_Out
  l0.MessageCompleted = DummyFunction
  self.box_FreeRoam_Beat_6 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  l0 = self.box_FreeRoam_Beat_6
  l0._graph = self
  l0._name = "box_FreeRoam_Beat_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM010\\S01BM010.domino|@S01BM010_Main|1449891793"
  l0.NewBeatStarted = self.f_box_FreeRoam_Beat_6_NewBeatStarted
  self.box_Dynamic_Event_Monitor_10 = cbox:CreateBox("domino/System/DynamicEventMonitor.lua")
  l0 = self.box_Dynamic_Event_Monitor_10
  l0._graph = self
  l0._name = "box_Dynamic_Event_Monitor_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM010\\S01BM010.domino|@S01BM010_Main|1586953461"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Started = DummyFunction
  l0.Succeeded = self.f_box_Dynamic_Event_Monitor_10_Succeeded
  l0.Failed = self.f_box_Dynamic_Event_Monitor_10_Failed
  self.box_MultipleOR_16 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_16
  l0._graph = self
  l0._name = "box_MultipleOR_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM010\\S01BM010.domino|@S01BM010_Main|1610911146"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_16_Out
  self.box_FreeRoam_Interact_Gameplay_24 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Interact_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Interact_Gameplay_24
  l0._graph = self
  l0._name = "box_FreeRoam_Interact_Gameplay_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM010\\S01BM010.domino|@S01BM010_Main|1612900510"
  l0.Started = self.f_box_FreeRoam_Interact_Gameplay_24_Started
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_box_FreeRoam_Interact_Gameplay_24_Interacted
  self.box_RewardController_v3_13 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_13
  l0._graph = self
  l0._name = "box_RewardController_v3_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM010\\S01BM010.domino|@S01BM010_Main|1705543089"
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_box_RewardController_v3_13_RewardsExecuted
  self.box_MultipleOR_19 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_19
  l0._graph = self
  l0._name = "box_MultipleOR_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM010\\S01BM010.domino|@S01BM010_Main|1780388152"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_19_Out
  self.box_Timer_v2_15 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_15
  l0._graph = self
  l0._name = "box_Timer_v2_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM010\\S01BM010.domino|@S01BM010_Main|1907672079"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_15_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionMessageController_v3_4 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_4
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM010\\S01BM010.domino|@S01BM010_Main|2047989403"
  l0.Out = self.f_box_MissionMessageController_v3_4_Out
  l0.MessageCompleted = DummyFunction
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
  self:OnEnter_box_FreeRoam_Beat_20()
  l0 = self.box_FreeRoam_Beat_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM010\\S01BM010.domino|@S01BM010_Main|1545081594", "1545081594", "S01BM010_Main", "CheckPoint_0", "box_FreeRoam_Beat_20.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:CheckPoint_1()
  local l0
  self:OnEnter_box_FreeRoam_Beat_6()
  l0 = self.box_FreeRoam_Beat_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM010\\S01BM010.domino|@S01BM010_Main|24774810", "24774810", "S01BM010_Main", "CheckPoint_1", "box_FreeRoam_Beat_6.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:CheckPoint_2()
  local l0
  self:OnEnter_box_MultipleOR_7()
  l0 = self.box_MultipleOR_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM010\\S01BM010.domino|@S01BM010_Main|56511142", "56511142", "S01BM010_Main", "CheckPoint_2", "box_MultipleOR_7.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_FreeRoam_Beat_20()
  l0 = self.box_FreeRoam_Beat_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM010\\S01BM010.domino|@S01BM010_Main|1602867311", "1602867311", "S01BM010_Main", "In", "box_FreeRoam_Beat_20.StartNewBeat", self, l0)
  l0:StartNewBeat()
end
function export:f_box_RewardController_v3_9_RewardsExecuted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_2
  l0.CheckpointList = "CheckPoint_2"
  l0 = self.box_RewardController_v3_9
  l1 = self.box_MissionCheckpointReach_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM010\\S01BM010.domino|@S01BM010_Main|1734934958", "1734934958", "S01BM010_Main", "box_RewardController_v3_9.RewardsExecuted", "box_MissionCheckpointReach_2.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_v3_1_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_16()
  l0 = self.box_MissionMessageController_v3_1
  l1 = self.box_MultipleOR_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM010\\S01BM010.domino|@S01BM010_Main|233955427", "233955427", "S01BM010_Main", "box_MissionMessageController_v3_1.Out", "box_MultipleOR_16.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MultipleOR_7_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_8
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372052608855251"
  l0 = self.box_MultipleOR_7
  l1 = self.box_PhoneCommunicationController_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM010\\S01BM010.domino|@S01BM010_Main|1591706289", "1591706289", "S01BM010_Main", "box_MultipleOR_7.Out", "box_PhoneCommunicationController_8.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_ConversationMonitor_5_OnFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_12
  l0.ItemDB = "Items.9223372050646215588"
  l0 = self.box_ConversationMonitor_5
  l1 = self.box_RewardController_v3_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM010\\S01BM010.domino|@S01BM010_Main|1970789159", "1970789159", "S01BM010_Main", "box_ConversationMonitor_5.OnFinished", "box_RewardController_v3_12.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_RewardController_v3_12_RewardsExecuted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Beat_6()
  l0 = self.box_RewardController_v3_12
  l1 = self.box_FreeRoam_Beat_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM010\\S01BM010.domino|@S01BM010_Main|1242806829", "1242806829", "S01BM010_Main", "box_RewardController_v3_12.RewardsExecuted", "box_FreeRoam_Beat_6.StartNewBeat", l0, l1)
  l1:StartNewBeat()
end
function export:f_box_MissionCheckpointReach_2_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_7()
  l0 = self.box_MissionCheckpointReach_2
  l1 = self.box_MultipleOR_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM010\\S01BM010.domino|@S01BM010_Main|1009286822", "1009286822", "S01BM010_Main", "box_MissionCheckpointReach_2.Out", "box_MultipleOR_7.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Ordered_Output_18_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_19()
  l0 = self.box_MultipleOR_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM010\\S01BM010.domino|@S01BM010_Main|416496849", "416496849", "S01BM010_Main", "box_Ordered_Output_18.Out", "box_MultipleOR_19.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_18_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_15
  l0.Seconds = 3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM010\\S01BM010.domino|@S01BM010_Main|359769385", "359769385", "S01BM010_Main", "box_Ordered_Output_18.Out", "box_Timer_v2_15.Start", clone, l0)
  l0:Start()
end
function export:f_box_FreeRoam_Beat_20_NewBeatStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_4
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01B.S01BM010.Objectives.Objective010",
    item = "Objective",
    id = "569189"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_FreeRoam_Beat_20
  l1 = self.box_MissionMessageController_v3_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM010\\S01BM010.domino|@S01BM010_Main|1152507050", "1152507050", "S01BM010_Main", "box_FreeRoam_Beat_20.NewBeatStarted", "box_MissionMessageController_v3_4.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_FreeRoam_IOP_Interact_Gameplay_21_Interacted()
  local l0
  self = self._graph
  self:OnEnter_box_FreeRoam_IOP_Interact_Gameplay_21()
  l0 = self.box_FreeRoam_IOP_Interact_Gameplay_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM010\\S01BM010.domino|@S01BM010_Main|974399784", "974399784", "S01BM010_Main", "box_FreeRoam_IOP_Interact_Gameplay_21.Interacted", "box_FreeRoam_IOP_Interact_Gameplay_21.Stop", l0, l0)
  l0:Stop()
end
function export:f_box_FreeRoam_IOP_Interact_Gameplay_21_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_23
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M020.Objectives.Objective013",
    item = "Objective",
    id = "689550"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_FreeRoam_IOP_Interact_Gameplay_21
  l1 = self.box_MissionMessageController_v3_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM010\\S01BM010.domino|@S01BM010_Main|1816228361", "1816228361", "S01BM010_Main", "box_FreeRoam_IOP_Interact_Gameplay_21.Stopped", "box_MissionMessageController_v3_23.ShowLastObjectiveComplete", l0, l1)
  l1:ShowLastObjectiveComplete()
end
function export:f_box_PhoneCommunicationController_8_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_13
  l0.ItemDB = "Items.9223372045955692447"
  l0 = self.box_PhoneCommunicationController_8
  l1 = self.box_RewardController_v3_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM010\\S01BM010.domino|@S01BM010_Main|897941552", "897941552", "S01BM010_Main", "box_PhoneCommunicationController_8.OnCommunicationFinished", "box_RewardController_v3_13.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_MissionMessageController_v3_23_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_23
  l1 = self.box_MissionController_v4_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM010\\S01BM010.domino|@S01BM010_Main|457245453", "457245453", "S01BM010_Main", "box_MissionMessageController_v3_23.Out", "box_MissionController_v4_3.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_Ordered_Output_17_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_RewardController_v3_9
  l0.ItemDB = "Items.9223372050426161741"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM010\\S01BM010.domino|@S01BM010_Main|815469241", "815469241", "S01BM010_Main", "box_Ordered_Output_17.Out", "box_RewardController_v3_9.ExecuteRewards", clone, l0)
  l0:ExecuteRewards()
end
function export:f_box_Ordered_Output_17_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_19()
  l0 = self.box_MultipleOR_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM010\\S01BM010.domino|@S01BM010_Main|931239831", "931239831", "S01BM010_Main", "box_Ordered_Output_17.Out", "box_MultipleOR_19.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_MissionMessageController_v3_22_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_IOP_Interact_Gameplay_21()
  l0 = self.box_MissionMessageController_v3_22
  l1 = self.box_FreeRoam_IOP_Interact_Gameplay_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM010\\S01BM010.domino|@S01BM010_Main|781486669", "781486669", "S01BM010_Main", "box_MissionMessageController_v3_22.Out", "box_FreeRoam_IOP_Interact_Gameplay_21.Start", l0, l1)
  l1:Start()
end
function export:f_box_FreeRoam_Beat_6_NewBeatStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_1
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01B.S01BM010.Objectives.Objective020",
    item = "Objective",
    id = "569188"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_FreeRoam_Beat_6
  l1 = self.box_MissionMessageController_v3_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM010\\S01BM010.domino|@S01BM010_Main|293963001", "293963001", "S01BM010_Main", "box_FreeRoam_Beat_6.NewBeatStarted", "box_MissionMessageController_v3_1.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_Dynamic_Event_11_Forced()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DynamicEventController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Dynamic_Event_Monitor_10()
  l0 = self.box_Dynamic_Event_Monitor_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM010\\S01BM010.domino|@S01BM010_Main|2061778709", "2061778709", "S01BM010_Main", "box_Dynamic_Event_11.Forced", "box_Dynamic_Event_Monitor_10.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Dynamic_Event_Monitor_10_Failed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM010\\S01BM010.domino|@S01BM010_Main|512083794"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_18_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_18_Out_1
  l0 = self.box_Dynamic_Event_Monitor_10
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM010\\S01BM010.domino|@S01BM010_Main|1369999100", "1369999100", "S01BM010_Main", "box_Dynamic_Event_Monitor_10.Failed", "box_Ordered_Output_18.In", l0, l1)
  l1:In()
end
function export:f_box_Dynamic_Event_Monitor_10_Succeeded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM010\\S01BM010.domino|@S01BM010_Main|995058228"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_17_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_17_Out_1
  l0 = self.box_Dynamic_Event_Monitor_10
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM010\\S01BM010.domino|@S01BM010_Main|1587867202", "1587867202", "S01BM010_Main", "box_Dynamic_Event_Monitor_10.Succeeded", "box_Ordered_Output_17.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_16_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/DynamicEventController.lua")]
  l0.DynamicEvent = "DynamicEvent.9223372045956153020"
  l0._graph = self
  l0._name = "box_Dynamic_Event_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM010\\S01BM010.domino|@S01BM010_Main|1526309823"
  l0.Forced = self.f_box_Dynamic_Event_11_Forced
  l0 = self.box_MultipleOR_16
  l1 = Boxes[PathID("domino/System/DynamicEventController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM010\\S01BM010.domino|@S01BM010_Main|1400170705", "1400170705", "S01BM010_Main", "box_MultipleOR_16.Out", "box_Dynamic_Event_11.Force", l0, l1)
  l1:Force()
end
function export:f_box_FreeRoam_Interact_Gameplay_24_Interacted()
  local l0
  self = self._graph
  self:OnEnter_box_FreeRoam_Interact_Gameplay_24()
  l0 = self.box_FreeRoam_Interact_Gameplay_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM010\\S01BM010.domino|@S01BM010_Main|1393555739", "1393555739", "S01BM010_Main", "box_FreeRoam_Interact_Gameplay_24.Interacted", "box_FreeRoam_Interact_Gameplay_24.Stop", l0, l0)
  l0:Stop()
end
function export:f_box_FreeRoam_Interact_Gameplay_24_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_ConversationMonitor_5
  l0.Conversation = "ConversationSetting.9223372050327905387"
  l0 = self.box_FreeRoam_Interact_Gameplay_24
  l1 = self.box_ConversationMonitor_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM010\\S01BM010.domino|@S01BM010_Main|1306462155", "1306462155", "S01BM010_Main", "box_FreeRoam_Interact_Gameplay_24.Started", "box_ConversationMonitor_5.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_RewardController_v3_13_RewardsExecuted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_22
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M020.Objectives.Objective013",
    item = "Objective",
    id = "689550"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_RewardController_v3_13
  l1 = self.box_MissionMessageController_v3_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM010\\S01BM010.domino|@S01BM010_Main|1962896219", "1962896219", "S01BM010_Main", "box_RewardController_v3_13.RewardsExecuted", "box_MissionMessageController_v3_22.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_MultipleOR_19_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Dynamic_Event_Monitor_10()
  l0 = self.box_MultipleOR_19
  l1 = self.box_Dynamic_Event_Monitor_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM010\\S01BM010.domino|@S01BM010_Main|84256110", "84256110", "S01BM010_Main", "box_MultipleOR_19.Out", "box_Dynamic_Event_Monitor_10.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Timer_v2_15_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_16()
  l0 = self.box_Timer_v2_15
  l1 = self.box_MultipleOR_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM010\\S01BM010.domino|@S01BM010_Main|1222384227", "1222384227", "S01BM010_Main", "box_Timer_v2_15.TimeElapsed", "box_MultipleOR_16.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MissionMessageController_v3_4_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Interact_Gameplay_24()
  l0 = self.box_MissionMessageController_v3_4
  l1 = self.box_FreeRoam_Interact_Gameplay_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM010\\S01BM010.domino|@S01BM010_Main|1855257374", "1855257374", "S01BM010_Main", "box_MissionMessageController_v3_4.Out", "box_FreeRoam_Interact_Gameplay_24.Start", l0, l1)
  l1:Start()
end
function export:OnEnter_box_MultipleOR_7()
end
function export:OnEnter_box_FreeRoam_Beat_20()
  local l0
  l0 = self.box_FreeRoam_Beat_20
  l0.ProgressionLayer = "ProgressionLayers.9223372050524369926"
  l0.Checkpoint = "CheckPoint_0"
end
function export:OnEnter_box_FreeRoam_IOP_Interact_Gameplay_21()
  local l0
  l0 = self.box_FreeRoam_IOP_Interact_Gameplay_21
  l0.IOPBoxEntity = "9223372047426345164"
  l0.MapPoint = "9223372065312139445"
end
function export:OnEnter_box_FreeRoam_Beat_6()
  local l0
  l0 = self.box_FreeRoam_Beat_6
  l0.ProgressionLayer = "ProgressionLayers.9223372050524369926"
  l0.Checkpoint = "CheckPoint_1"
end
function export:OnEnter_box_Dynamic_Event_Monitor_10()
  local l0
  l0 = self.box_Dynamic_Event_Monitor_10
  l0.DynamicEvent = "DynamicEvent.9223372045956153020"
end
function export:OnEnter_box_MultipleOR_16()
end
function export:OnEnter_box_FreeRoam_Interact_Gameplay_24()
  local l0
  l0 = self.box_FreeRoam_Interact_Gameplay_24
  l0.CLO = "9223372050327905383"
  l0.IsManagingInteraction = 0
end
function export:OnEnter_box_MultipleOR_19()
end
_compilerVersion = 4
