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
  cbox:RegisterBox("domino/System/ProgressionTagMonitor.lua")
  cbox:RegisterBox("domino/System/RewardPhoneCallMonitor.lua")
  cbox:RegisterBox("domino/System/RewardComponentController_V3.lua")
end
function export:Init(cbox)
  local l0
  self._name = "L02M010_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M010\\L02M010.domino|@L02M010_Main"
  self.PlayerEntity = nil
  self.Target = 0
  self.Target_Intel = 1
  self.Index = 0
  self.box_FreeRoam_Beat_15 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  l0 = self.box_FreeRoam_Beat_15
  l0._graph = self
  l0._name = "box_FreeRoam_Beat_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M010\\L02M010.domino|@L02M010_Main|5748587"
  l0.NewBeatStarted = self.f_box_FreeRoam_Beat_15_NewBeatStarted
  self.box_RewardController_v3_23 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_23
  l0._graph = self
  l0._name = "box_RewardController_v3_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M010\\L02M010.domino|@L02M010_Main|21253574"
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_box_RewardController_v3_23_RewardsExecuted
  self.box_MissionMessageController_v3_13 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_13
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M010\\L02M010.domino|@L02M010_Main|160095960"
  l0.Out = self.f_box_MissionMessageController_v3_13_Out
  l0.MessageCompleted = DummyFunction
  self.box_FreeRoam_Hack_Gameplay_5 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Hack_Gameplay_5
  l0._graph = self
  l0._name = "box_FreeRoam_Hack_Gameplay_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M010\\L02M010.domino|@L02M010_Main|292865921"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_box_FreeRoam_Hack_Gameplay_5_Hacked
  self.box_Reward_Phone_Call_Monitor_1 = cbox:CreateBox("domino/System/RewardPhoneCallMonitor.lua")
  l0 = self.box_Reward_Phone_Call_Monitor_1
  l0._graph = self
  l0._name = "box_Reward_Phone_Call_Monitor_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M010\\L02M010.domino|@L02M010_Main|370728215"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Reward_Phone_Call_Monitor_1_Disabled
  l0.OnPhoneCallEnded = self.f_box_Reward_Phone_Call_Monitor_1_OnPhoneCallEnded
  self.box_PhoneCommunicationMonitor_24 = cbox:CreateBox("domino/System/playerphonecommunicationmonitor.lua")
  l0 = self.box_PhoneCommunicationMonitor_24
  l0._graph = self
  l0._name = "box_PhoneCommunicationMonitor_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M010\\L02M010.domino|@L02M010_Main|407843080"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationMonitor_24_OnCommunicationFinished
  self.box_MissionController_v4_28 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_28
  l0._graph = self
  l0._name = "box_MissionController_v4_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M010\\L02M010.domino|@L02M010_Main|577908386"
  self.box_Progression_Tag_Monitor_21 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_21
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M010\\L02M010.domino|@L02M010_Main|662701657"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = DummyFunction
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_21_HasNOT
  self.box_PhoneCommunicationController_12 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_12
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M010\\L02M010.domino|@L02M010_Main|669198307"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MultipleOR_26 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_26
  l0._graph = self
  l0._name = "box_MultipleOR_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M010\\L02M010.domino|@L02M010_Main|1012116683"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_26_Out
  self.box_MissionMessageController_v3_22 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_22
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M010\\L02M010.domino|@L02M010_Main|1052279780"
  l0.Out = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_MultipleOR_9 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_9
  l0._graph = self
  l0._name = "box_MultipleOR_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M010\\L02M010.domino|@L02M010_Main|1443464474"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_9_Out
  self.box_Progression_Tag_Monitor_7 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_7
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M010\\L02M010.domino|@L02M010_Main|1551673774"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_7_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_7_HasNOT
  self.box_PhoneCommunicationController_17 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_17
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M010\\L02M010.domino|@L02M010_Main|1596308390"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_FreeRoam_Hack_Gameplay_6 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Hack_Gameplay_6
  l0._graph = self
  l0._name = "box_FreeRoam_Hack_Gameplay_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M010\\L02M010.domino|@L02M010_Main|1655437169"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_box_FreeRoam_Hack_Gameplay_6_Hacked
  self.box_MissionCheckpointReach_27 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_27
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M010\\L02M010.domino|@L02M010_Main|1675353910"
  l0.Out = self.f_box_MissionCheckpointReach_27_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_ObjectiveMonitor_v2_14 = cbox:CreateBox("domino/System/ObjectiveMonitor_v2.lua")
  l0 = self.box_ObjectiveMonitor_v2_14
  l0._graph = self
  l0._name = "box_ObjectiveMonitor_v2_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M010\\L02M010.domino|@L02M010_Main|1727441987"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotIncrement = DummyFunction
  l0.ObjectiveCompleted = self.f_box_ObjectiveMonitor_v2_14_ObjectiveCompleted
  l0.ObjectiveMessageStarted = DummyFunction
  l0.ObjectiveMessageFinished = DummyFunction
  l0.IncrementReached = DummyFunction
  l0.IncrementNotReached = DummyFunction
  self.box_MultipleOR_18 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_18
  l0._graph = self
  l0._name = "box_MultipleOR_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M010\\L02M010.domino|@L02M010_Main|1741691016"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_18_Out
  self.box_Reward_Phone_Call_Monitor_2 = cbox:CreateBox("domino/System/RewardPhoneCallMonitor.lua")
  l0 = self.box_Reward_Phone_Call_Monitor_2
  l0._graph = self
  l0._name = "box_Reward_Phone_Call_Monitor_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M010\\L02M010.domino|@L02M010_Main|1833935772"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Reward_Phone_Call_Monitor_2_Disabled
  l0.OnPhoneCallEnded = self.f_box_Reward_Phone_Call_Monitor_2_OnPhoneCallEnded
  self.box_RewardController_v3_20 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_20
  l0._graph = self
  l0._name = "box_RewardController_v3_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M010\\L02M010.domino|@L02M010_Main|1960831382"
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_box_RewardController_v3_20_RewardsExecuted
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
  self:OnEnter_box_FreeRoam_Beat_15()
  l0 = self.box_FreeRoam_Beat_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M010\\L02M010.domino|@L02M010_Main|306682158", "306682158", "L02M010_Main", "CheckPoint_0", "box_FreeRoam_Beat_15.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:CheckPoint_1()
  local l0
  self:OnEnter_box_MultipleOR_26()
  l0 = self.box_MultipleOR_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M010\\L02M010.domino|@L02M010_Main|1080943648", "1080943648", "L02M010_Main", "CheckPoint_1", "box_MultipleOR_26.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_FreeRoam_Beat_15()
  l0 = self.box_FreeRoam_Beat_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M010\\L02M010.domino|@L02M010_Main|472424649", "472424649", "L02M010_Main", "In", "box_FreeRoam_Beat_15.StartNewBeat", self, l0)
  l0:StartNewBeat()
end
function export:f_box_FreeRoam_Beat_15_NewBeatStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_13
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L02.L01M010A.Objectives.Objective010",
    item = "Objective",
    id = "397633"
  }
  l0.IncrementalObjectiveTotal = 2
  l0 = self.box_FreeRoam_Beat_15
  l1 = self.box_MissionMessageController_v3_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M010\\L02M010.domino|@L02M010_Main|1384281015", "1384281015", "L02M010_Main", "box_FreeRoam_Beat_15.NewBeatStarted", "box_MissionMessageController_v3_13.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_RewardController_v3_23_RewardsExecuted()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_17
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372049814637216"
  l0 = self.box_RewardController_v3_23
  l1 = self.box_PhoneCommunicationController_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M010\\L02M010.domino|@L02M010_Main|595533171", "595533171", "L02M010_Main", "box_RewardController_v3_23.RewardsExecuted", "box_PhoneCommunicationController_17.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_MissionMessageController_v3_13_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M010\\L02M010.domino|@L02M010_Main|472357645"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_16_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_16_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_16_Out_2
  l0 = self.box_MissionMessageController_v3_13
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M010\\L02M010.domino|@L02M010_Main|1531589138", "1531589138", "L02M010_Main", "box_MissionMessageController_v3_13.Out", "box_Ordered_Output_16.In", l0, l1)
  l1:In()
end
function export:f_box_FreeRoam_Hack_Gameplay_5_Hacked()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M010\\L02M010.domino|@L02M010_Main|1346500070"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_8_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_8_Out_1
  l0 = self.box_FreeRoam_Hack_Gameplay_5
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M010\\L02M010.domino|@L02M010_Main|226585936", "226585936", "L02M010_Main", "box_FreeRoam_Hack_Gameplay_5.Hacked", "box_Ordered_Output_8.In", l0, l1)
  l1:In()
end
function export:f_box_Reward_Phone_Call_Monitor_1_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_9()
  l0 = self.box_Reward_Phone_Call_Monitor_1
  l1 = self.box_MultipleOR_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M010\\L02M010.domino|@L02M010_Main|1221999028", "1221999028", "L02M010_Main", "box_Reward_Phone_Call_Monitor_1.Disabled", "box_MultipleOR_9.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Reward_Phone_Call_Monitor_1_OnPhoneCallEnded()
  local l0
  self = self._graph
  self:OnEnter_box_Reward_Phone_Call_Monitor_1()
  l0 = self.box_Reward_Phone_Call_Monitor_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M010\\L02M010.domino|@L02M010_Main|1937915998", "1937915998", "L02M010_Main", "box_Reward_Phone_Call_Monitor_1.OnPhoneCallEnded", "box_Reward_Phone_Call_Monitor_1.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_PhoneCommunicationMonitor_24_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_26()
  l0 = self.box_PhoneCommunicationMonitor_24
  l1 = self.box_MultipleOR_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M010\\L02M010.domino|@L02M010_Main|713829147", "713829147", "L02M010_Main", "box_PhoneCommunicationMonitor_24.OnCommunicationFinished", "box_MultipleOR_26.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Ordered_Output_16_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_FreeRoam_Hack_Gameplay_5
  l0.CLO = "9223372048076545096"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0.ProgressionTag = "ProgressionTag.9223372046384707494"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M010\\L02M010.domino|@L02M010_Main|1433979179", "1433979179", "L02M010_Main", "box_Ordered_Output_16.Out", "box_FreeRoam_Hack_Gameplay_5.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_16_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_FreeRoam_Hack_Gameplay_6
  l0.CLO = "9223372048076545102"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0.ProgressionTag = "ProgressionTag.9223372046384707495"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M010\\L02M010.domino|@L02M010_Main|1742805472", "1742805472", "L02M010_Main", "box_Ordered_Output_16.Out", "box_FreeRoam_Hack_Gameplay_6.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_16_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ObjectiveMonitor_v2_14
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L02.L01M010A.Objectives.Objective010",
    item = "Objective",
    id = "397633"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M010\\L02M010.domino|@L02M010_Main|73302266", "73302266", "L02M010_Main", "box_Ordered_Output_16.Out", "box_ObjectiveMonitor_v2_14.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Progression_Tag_Monitor_21_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_23
  l0.ItemDB = "Items.9223372064201550769"
  l0 = self.box_Progression_Tag_Monitor_21
  l1 = self.box_RewardController_v3_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M010\\L02M010.domino|@L02M010_Main|217864479", "217864479", "L02M010_Main", "box_Progression_Tag_Monitor_21.HasNOT", "box_RewardController_v3_23.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_MultipleOR_26_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MultipleOR_26
  l1 = self.box_MissionController_v4_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M010\\L02M010.domino|@L02M010_Main|135088995", "135088995", "L02M010_Main", "box_MultipleOR_26.Out", "box_MissionController_v4_28.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_Ordered_Output_8_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Reward_Phone_Call_Monitor_2()
  l0 = self.box_Reward_Phone_Call_Monitor_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M010\\L02M010.domino|@L02M010_Main|575972142", "575972142", "L02M010_Main", "box_Ordered_Output_8.Out", "box_Reward_Phone_Call_Monitor_2.Enable", clone, l0)
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
  self:OnEnter_box_MultipleOR_18()
  l0 = self.box_MultipleOR_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M010\\L02M010.domino|@L02M010_Main|596449328", "596449328", "L02M010_Main", "box_Ordered_Output_8.Out", "box_MultipleOR_18.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_MultipleOR_9_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_7
  l0.ProgressionTag = "ProgressionTag.9223372064201550767"
  l0 = self.box_MultipleOR_9
  l1 = self.box_Progression_Tag_Monitor_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M010\\L02M010.domino|@L02M010_Main|1838485853", "1838485853", "L02M010_Main", "box_MultipleOR_9.Out", "box_Progression_Tag_Monitor_7.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_Progression_Tag_Monitor_7_Has()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_21
  l0.ProgressionTag = "ProgressionTag.9223372064201550768"
  l0 = self.box_Progression_Tag_Monitor_7
  l1 = self.box_Progression_Tag_Monitor_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M010\\L02M010.domino|@L02M010_Main|906142407", "906142407", "L02M010_Main", "box_Progression_Tag_Monitor_7.Has", "box_Progression_Tag_Monitor_21.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_Progression_Tag_Monitor_7_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_20
  l0.ItemDB = "Items.9223372064201550766"
  l0 = self.box_Progression_Tag_Monitor_7
  l1 = self.box_RewardController_v3_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M010\\L02M010.domino|@L02M010_Main|827150191", "827150191", "L02M010_Main", "box_Progression_Tag_Monitor_7.HasNOT", "box_RewardController_v3_20.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_FreeRoam_Hack_Gameplay_6_Hacked()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M010\\L02M010.domino|@L02M010_Main|2061358787"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_11_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_11_Out_1
  l0 = self.box_FreeRoam_Hack_Gameplay_6
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M010\\L02M010.domino|@L02M010_Main|409325715", "409325715", "L02M010_Main", "box_FreeRoam_Hack_Gameplay_6.Hacked", "box_Ordered_Output_11.In", l0, l1)
  l1:In()
end
function export:f_box_MissionCheckpointReach_27_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationMonitor_24
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372049814637216"
  l0 = self.box_MissionCheckpointReach_27
  l1 = self.box_PhoneCommunicationMonitor_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M010\\L02M010.domino|@L02M010_Main|25987410", "25987410", "L02M010_Main", "box_MissionCheckpointReach_27.Out", "box_PhoneCommunicationMonitor_24.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_ObjectiveMonitor_v2_14_ObjectiveCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_27
  l0.CheckpointList = "CheckPoint_1"
  l0 = self.box_ObjectiveMonitor_v2_14
  l1 = self.box_MissionCheckpointReach_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M010\\L02M010.domino|@L02M010_Main|186536042", "186536042", "L02M010_Main", "box_ObjectiveMonitor_v2_14.ObjectiveCompleted", "box_MissionCheckpointReach_27.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_18_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_22
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L02.L01M010A.Objectives.Objective010",
    item = "Objective",
    id = "397633"
  }
  l0 = self.box_MultipleOR_18
  l1 = self.box_MissionMessageController_v3_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M010\\L02M010.domino|@L02M010_Main|1281677453", "1281677453", "L02M010_Main", "box_MultipleOR_18.Out", "box_MissionMessageController_v3_22.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_Reward_Phone_Call_Monitor_2_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_9()
  l0 = self.box_Reward_Phone_Call_Monitor_2
  l1 = self.box_MultipleOR_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M010\\L02M010.domino|@L02M010_Main|478776579", "478776579", "L02M010_Main", "box_Reward_Phone_Call_Monitor_2.Disabled", "box_MultipleOR_9.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Reward_Phone_Call_Monitor_2_OnPhoneCallEnded()
  local l0
  self = self._graph
  self:OnEnter_box_Reward_Phone_Call_Monitor_2()
  l0 = self.box_Reward_Phone_Call_Monitor_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M010\\L02M010.domino|@L02M010_Main|825174043", "825174043", "L02M010_Main", "box_Reward_Phone_Call_Monitor_2.OnPhoneCallEnded", "box_Reward_Phone_Call_Monitor_2.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_RewardController_v3_20_RewardsExecuted()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_12
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372049814637215"
  l0 = self.box_RewardController_v3_20
  l1 = self.box_PhoneCommunicationController_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M010\\L02M010.domino|@L02M010_Main|141713459", "141713459", "L02M010_Main", "box_RewardController_v3_20.RewardsExecuted", "box_PhoneCommunicationController_12.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Ordered_Output_11_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Reward_Phone_Call_Monitor_1()
  l0 = self.box_Reward_Phone_Call_Monitor_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M010\\L02M010.domino|@L02M010_Main|1942488492", "1942488492", "L02M010_Main", "box_Ordered_Output_11.Out", "box_Reward_Phone_Call_Monitor_1.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_11_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_18()
  l0 = self.box_MultipleOR_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M010\\L02M010.domino|@L02M010_Main|1638281953", "1638281953", "L02M010_Main", "box_Ordered_Output_11.Out", "box_MultipleOR_18.Input", clone, l0)
  l0:Input(1)
end
function export:OnEnter_box_FreeRoam_Beat_15()
  local l0
  l0 = self.box_FreeRoam_Beat_15
  l0.ProgressionLayer = "ProgressionLayers.9223372047103016062"
  l0.Checkpoint = "CheckPoint_0"
end
function export:OnEnter_box_Reward_Phone_Call_Monitor_1()
  local l0
  l0 = self.box_Reward_Phone_Call_Monitor_1
  l0.ItemDb = "Items.9223372050160469617"
end
function export:OnEnter_box_MultipleOR_26()
end
function export:OnEnter_box_MultipleOR_9()
end
function export:OnEnter_box_MultipleOR_18()
end
function export:OnEnter_box_Reward_Phone_Call_Monitor_2()
  local l0
  l0 = self.box_Reward_Phone_Call_Monitor_2
  l0.ItemDb = "Items.9223372050160469616"
end
_compilerVersion = 4
