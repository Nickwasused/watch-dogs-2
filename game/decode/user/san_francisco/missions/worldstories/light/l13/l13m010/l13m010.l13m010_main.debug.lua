export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Locate_Gameplay.debug.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.debug.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Photo_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/ObjectiveMonitor_v2.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/ProgressionTagMonitor.lua")
  cbox:RegisterBox("domino/System/RewardPhoneCallMonitor.lua")
  cbox:RegisterBox("domino/System/RewardComponentController_V3.lua")
end
function export:Init(cbox)
  local l0
  self._name = "L13M010_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M010\\L13M010.domino|@L13M010_Main"
  self.PlayerEntity = nil
  self.Audio = 1
  self.reward = 0
  self.box_MissionMessageController_v3_9 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_9
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M010\\L13M010.domino|@L13M010_Main|38029295"
  l0.Out = self.f_box_MissionMessageController_v3_9_Out
  l0.MessageCompleted = DummyFunction
  self.box_Progression_Tag_Monitor_15 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_15
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M010\\L13M010.domino|@L13M010_Main|43422942"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = DummyFunction
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_15_HasNOT
  self.box_FreeRoam_Photo_Gameplay_23 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Photo_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Photo_Gameplay_23
  l0._graph = self
  l0._name = "box_FreeRoam_Photo_Gameplay_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M010\\L13M010.domino|@L13M010_Main|228158872"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_FreeRoam_Photo_Gameplay_23_Stopped
  l0.PhotoTaken = self.f_box_FreeRoam_Photo_Gameplay_23_PhotoTaken
  self.box_OnceOnly_v3_31 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_31
  l0._graph = self
  l0._name = "box_OnceOnly_v3_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M010\\L13M010.domino|@L13M010_Main|281804752"
  l0._DynamicAnchors = {In = 3}
  l0.Out = self.f_box_OnceOnly_v3_31_Out
  l0.ResetOut = DummyFunction
  self.box_FreeRoam_Photo_Gameplay_12 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Photo_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Photo_Gameplay_12
  l0._graph = self
  l0._name = "box_FreeRoam_Photo_Gameplay_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M010\\L13M010.domino|@L13M010_Main|398476980"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_FreeRoam_Photo_Gameplay_12_Stopped
  l0.PhotoTaken = self.f_box_FreeRoam_Photo_Gameplay_12_PhotoTaken
  self.box_FreeRoam_Mission_End_3 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.debug.lua")
  l0 = self.box_FreeRoam_Mission_End_3
  l0._graph = self
  l0._name = "box_FreeRoam_Mission_End_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M010\\L13M010.domino|@L13M010_Main|456335627"
  self.box_FreeRoam_Locate_Gameplay_39 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Locate_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Locate_Gameplay_39
  l0._graph = self
  l0._name = "box_FreeRoam_Locate_Gameplay_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M010\\L13M010.domino|@L13M010_Main|561291260"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Located = self.f_box_FreeRoam_Locate_Gameplay_39_Located
  self.box_FreeRoam_Beat_2 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  l0 = self.box_FreeRoam_Beat_2
  l0._graph = self
  l0._name = "box_FreeRoam_Beat_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M010\\L13M010.domino|@L13M010_Main|609292941"
  l0.NewBeatStarted = self.f_box_FreeRoam_Beat_2_NewBeatStarted
  self.box_RewardController_v3_4 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_4
  l0._graph = self
  l0._name = "box_RewardController_v3_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M010\\L13M010.domino|@L13M010_Main|708571474"
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_box_RewardController_v3_4_RewardsExecuted
  self.box_MissionMessageController_v3_14 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_14
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M010\\L13M010.domino|@L13M010_Main|733692467"
  l0.Out = self.f_box_MissionMessageController_v3_14_Out
  l0.MessageCompleted = DummyFunction
  self.box_Reward_Phone_Call_Monitor_7 = cbox:CreateBox("domino/System/RewardPhoneCallMonitor.lua")
  l0 = self.box_Reward_Phone_Call_Monitor_7
  l0._graph = self
  l0._name = "box_Reward_Phone_Call_Monitor_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M010\\L13M010.domino|@L13M010_Main|917529805"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnPhoneCallEnded = self.f_box_Reward_Phone_Call_Monitor_7_OnPhoneCallEnded
  self.box_FreeRoam_Photo_Gameplay_13 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Photo_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Photo_Gameplay_13
  l0._graph = self
  l0._name = "box_FreeRoam_Photo_Gameplay_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M010\\L13M010.domino|@L13M010_Main|978340707"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_FreeRoam_Photo_Gameplay_13_Stopped
  l0.PhotoTaken = self.f_box_FreeRoam_Photo_Gameplay_13_PhotoTaken
  self.box_ObjectiveMonitor_v2_11 = cbox:CreateBox("domino/System/ObjectiveMonitor_v2.lua")
  l0 = self.box_ObjectiveMonitor_v2_11
  l0._graph = self
  l0._name = "box_ObjectiveMonitor_v2_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M010\\L13M010.domino|@L13M010_Main|1209162568"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotIncrement = DummyFunction
  l0.ObjectiveCompleted = self.f_box_ObjectiveMonitor_v2_11_ObjectiveCompleted
  l0.ObjectiveMessageStarted = DummyFunction
  l0.ObjectiveMessageFinished = DummyFunction
  l0.IncrementReached = DummyFunction
  l0.IncrementNotReached = DummyFunction
  self.box_MissionMessageController_v3_1 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_1
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M010\\L13M010.domino|@L13M010_Main|1225598413"
  l0.Out = DummyFunction
  l0.MessageCompleted = self.f_box_MissionMessageController_v3_1_MessageCompleted
  self.box_RewardController_v3_30 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_30
  l0._graph = self
  l0._name = "box_RewardController_v3_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M010\\L13M010.domino|@L13M010_Main|1358568315"
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_box_RewardController_v3_30_RewardsExecuted
  self.box_PhoneCommunicationController_28 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_28
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M010\\L13M010.domino|@L13M010_Main|1544636305"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionMessageController_v3_10 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_10
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M010\\L13M010.domino|@L13M010_Main|1553917518"
  l0.Out = self.f_box_MissionMessageController_v3_10_Out
  l0.MessageCompleted = DummyFunction
  self.box_Progression_Tag_Monitor_5 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_5
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M010\\L13M010.domino|@L13M010_Main|1599645263"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_5_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_5_HasNOT
  self.box_PhoneCommunicationController_27 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_27
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M010\\L13M010.domino|@L13M010_Main|1771011635"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_RewardController_v3_8 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_8
  l0._graph = self
  l0._name = "box_RewardController_v3_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M010\\L13M010.domino|@L13M010_Main|1777594296"
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_box_RewardController_v3_8_RewardsExecuted
  self.box_FreeRoam_Locate_Gameplay_25 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Locate_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Locate_Gameplay_25
  l0._graph = self
  l0._name = "box_FreeRoam_Locate_Gameplay_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M010\\L13M010.domino|@L13M010_Main|1780147901"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Located = self.f_box_FreeRoam_Locate_Gameplay_25_Located
  self.box_FreeRoam_Locate_Gameplay_24 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Locate_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Locate_Gameplay_24
  l0._graph = self
  l0._name = "box_FreeRoam_Locate_Gameplay_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M010\\L13M010.domino|@L13M010_Main|1984463645"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Located = self.f_box_FreeRoam_Locate_Gameplay_24_Located
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
  self:OnEnter_box_FreeRoam_Beat_2()
  l0 = self.box_FreeRoam_Beat_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M010\\L13M010.domino|@L13M010_Main|1656277784", "1656277784", "L13M010_Main", "CheckPoint_0", "box_FreeRoam_Beat_2.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:CheckPoint_1()
  local l0
  self:OnEnter_box_FreeRoam_Mission_End_3()
  l0 = self.box_FreeRoam_Mission_End_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M010\\L13M010.domino|@L13M010_Main|1417936708", "1417936708", "L13M010_Main", "CheckPoint_1", "box_FreeRoam_Mission_End_3.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  self:OnEnter_box_FreeRoam_Beat_2()
  l0 = self.box_FreeRoam_Beat_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M010\\L13M010.domino|@L13M010_Main|924317315", "924317315", "L13M010_Main", "In", "box_FreeRoam_Beat_2.StartNewBeat", self, l0)
  l0:StartNewBeat()
end
function export:f_box_MissionMessageController_v3_9_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_31()
  l0 = self.box_MissionMessageController_v3_9
  l1 = self.box_OnceOnly_v3_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M010\\L13M010.domino|@L13M010_Main|1636026634", "1636026634", "L13M010_Main", "box_MissionMessageController_v3_9.Out", "box_OnceOnly_v3_31.In", l0, l1)
  l1:In(0)
end
function export:f_box_Progression_Tag_Monitor_15_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_8
  l0.ItemDB = "Items.9223372068922211570"
  l0 = self.box_Progression_Tag_Monitor_15
  l1 = self.box_RewardController_v3_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M010\\L13M010.domino|@L13M010_Main|184512674", "184512674", "L13M010_Main", "box_Progression_Tag_Monitor_15.HasNOT", "box_RewardController_v3_8.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_FreeRoam_Photo_Gameplay_23_PhotoTaken()
  local l0
  self = self._graph
  self:OnEnter_box_FreeRoam_Photo_Gameplay_23()
  l0 = self.box_FreeRoam_Photo_Gameplay_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M010\\L13M010.domino|@L13M010_Main|1556585135", "1556585135", "L13M010_Main", "box_FreeRoam_Photo_Gameplay_23.PhotoTaken", "box_FreeRoam_Photo_Gameplay_23.Stop", l0, l0)
  l0:Stop()
end
function export:f_box_FreeRoam_Photo_Gameplay_23_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_9
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L13.L13M010.Objectives.Objective011",
    item = "Objective",
    id = "685277"
  }
  l0 = self.box_FreeRoam_Photo_Gameplay_23
  l1 = self.box_MissionMessageController_v3_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M010\\L13M010.domino|@L13M010_Main|931237519", "931237519", "L13M010_Main", "box_FreeRoam_Photo_Gameplay_23.Stopped", "box_MissionMessageController_v3_9.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_OnceOnly_v3_31_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_5
  l0.ProgressionTag = "ProgressionTag.9223372068922211568"
  l0 = self.box_OnceOnly_v3_31
  l1 = self.box_Progression_Tag_Monitor_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M010\\L13M010.domino|@L13M010_Main|645227229", "645227229", "L13M010_Main", "box_OnceOnly_v3_31.Out", "box_Progression_Tag_Monitor_5.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_FreeRoam_Photo_Gameplay_12_PhotoTaken()
  local l0
  self = self._graph
  self:OnEnter_box_FreeRoam_Photo_Gameplay_12()
  l0 = self.box_FreeRoam_Photo_Gameplay_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M010\\L13M010.domino|@L13M010_Main|1189973125", "1189973125", "L13M010_Main", "box_FreeRoam_Photo_Gameplay_12.PhotoTaken", "box_FreeRoam_Photo_Gameplay_12.Stop", l0, l0)
  l0:Stop()
end
function export:f_box_FreeRoam_Photo_Gameplay_12_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_10
  l0.ObjectiveSub2 = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L13.L13M010.Objectives.Objective012",
    item = "Objective",
    id = "685278"
  }
  l0 = self.box_FreeRoam_Photo_Gameplay_12
  l1 = self.box_MissionMessageController_v3_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M010\\L13M010.domino|@L13M010_Main|1951797345", "1951797345", "L13M010_Main", "box_FreeRoam_Photo_Gameplay_12.Stopped", "box_MissionMessageController_v3_10.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_Ordered_Output_6_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_FreeRoam_Locate_Gameplay_25
  l0.CLO = "9223372052852859073"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0.ProgressionTag = "ProgressionTag.9223372052852859065"
  l0.DistrictsDB = "Districts.9223372048308080021"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M010\\L13M010.domino|@L13M010_Main|2133369035", "2133369035", "L13M010_Main", "box_Ordered_Output_6.Out", "box_FreeRoam_Locate_Gameplay_25.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_6_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_FreeRoam_Locate_Gameplay_24
  l0.CLO = "9223372052852859076"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0.ProgressionTag = "ProgressionTag.9223372052852859066"
  l0.DistrictsDB = "Districts.9223372048308080054"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M010\\L13M010.domino|@L13M010_Main|2847372", "2847372", "L13M010_Main", "box_Ordered_Output_6.Out", "box_FreeRoam_Locate_Gameplay_24.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_6_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_FreeRoam_Locate_Gameplay_39
  l0.CLO = "9223372052852859085"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0.ProgressionTag = "ProgressionTag.9223372052852859094"
  l0.DistrictsDB = "Districts.9223372048308080045"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M010\\L13M010.domino|@L13M010_Main|204111532", "204111532", "L13M010_Main", "box_Ordered_Output_6.Out", "box_FreeRoam_Locate_Gameplay_39.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_6_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ObjectiveMonitor_v2_11
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L13.L13M010.Objectives.Objective010",
    item = "Objective",
    id = "457708"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M010\\L13M010.domino|@L13M010_Main|555030059", "555030059", "L13M010_Main", "box_Ordered_Output_6.Out", "box_ObjectiveMonitor_v2_11.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_FreeRoam_Locate_Gameplay_39_Located()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Photo_Gameplay_13()
  l0 = self.box_FreeRoam_Locate_Gameplay_39
  l1 = self.box_FreeRoam_Photo_Gameplay_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M010\\L13M010.domino|@L13M010_Main|825317797", "825317797", "L13M010_Main", "box_FreeRoam_Locate_Gameplay_39.Located", "box_FreeRoam_Photo_Gameplay_13.Start", l0, l1)
  l1:Start()
end
function export:f_box_FreeRoam_Beat_2_NewBeatStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_FreeRoam_Beat_2
  self.PlayerEntity = l0.PlayerEntity
  l0 = self.box_MissionMessageController_v3_1
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L13.L13M010.Objectives.Objective010",
    item = "Objective",
    id = "457708"
  }
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L13.L13M010.Objectives.Objective011",
    item = "Objective",
    id = "685277"
  }
  l0.ObjectiveSub2 = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L13.L13M010.Objectives.Objective012",
    item = "Objective",
    id = "685278"
  }
  l0.ObjectiveSub3 = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L13.L13M010.Objectives.Objective013",
    item = "Objective",
    id = "685279"
  }
  l0 = self.box_FreeRoam_Beat_2
  l1 = self.box_MissionMessageController_v3_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M010\\L13M010.domino|@L13M010_Main|302146870", "302146870", "L13M010_Main", "box_FreeRoam_Beat_2.NewBeatStarted", "box_MissionMessageController_v3_1.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_RewardController_v3_4_RewardsExecuted()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_30
  l0.ItemDB = "Items.9223372059111819661"
  l0 = self.box_RewardController_v3_4
  l1 = self.box_RewardController_v3_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M010\\L13M010.domino|@L13M010_Main|1251060120", "1251060120", "L13M010_Main", "box_RewardController_v3_4.RewardsExecuted", "box_RewardController_v3_30.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_MissionMessageController_v3_14_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_31()
  l0 = self.box_MissionMessageController_v3_14
  l1 = self.box_OnceOnly_v3_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M010\\L13M010.domino|@L13M010_Main|241763865", "241763865", "L13M010_Main", "box_MissionMessageController_v3_14.Out", "box_OnceOnly_v3_31.In", l0, l1)
  l1:In(2)
end
function export:f_box_Reward_Phone_Call_Monitor_7_OnPhoneCallEnded()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_28
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357369878"
  l0 = self.box_Reward_Phone_Call_Monitor_7
  l1 = self.box_PhoneCommunicationController_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M010\\L13M010.domino|@L13M010_Main|2137159482", "2137159482", "L13M010_Main", "box_Reward_Phone_Call_Monitor_7.OnPhoneCallEnded", "box_PhoneCommunicationController_28.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_FreeRoam_Photo_Gameplay_13_PhotoTaken()
  local l0
  self = self._graph
  self:OnEnter_box_FreeRoam_Photo_Gameplay_13()
  l0 = self.box_FreeRoam_Photo_Gameplay_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M010\\L13M010.domino|@L13M010_Main|1615161842", "1615161842", "L13M010_Main", "box_FreeRoam_Photo_Gameplay_13.PhotoTaken", "box_FreeRoam_Photo_Gameplay_13.Stop", l0, l0)
  l0:Stop()
end
function export:f_box_FreeRoam_Photo_Gameplay_13_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_14
  l0.ObjectiveSub3 = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L13.L13M010.Objectives.Objective013",
    item = "Objective",
    id = "685279"
  }
  l0 = self.box_FreeRoam_Photo_Gameplay_13
  l1 = self.box_MissionMessageController_v3_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M010\\L13M010.domino|@L13M010_Main|348990023", "348990023", "L13M010_Main", "box_FreeRoam_Photo_Gameplay_13.Stopped", "box_MissionMessageController_v3_14.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_ObjectiveMonitor_v2_11_ObjectiveCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Mission_End_3()
  l0 = self.box_ObjectiveMonitor_v2_11
  l1 = self.box_FreeRoam_Mission_End_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M010\\L13M010.domino|@L13M010_Main|1650600253", "1650600253", "L13M010_Main", "box_ObjectiveMonitor_v2_11.ObjectiveCompleted", "box_FreeRoam_Mission_End_3.End", l0, l1)
  l1:End()
end
function export:f_box_MissionMessageController_v3_1_MessageCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M010\\L13M010.domino|@L13M010_Main|472082699"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_6_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_6_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_6_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_6_Out_3
  l0 = self.box_MissionMessageController_v3_1
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M010\\L13M010.domino|@L13M010_Main|234706188", "234706188", "L13M010_Main", "box_MissionMessageController_v3_1.MessageCompleted", "box_Ordered_Output_6.In", l0, l1)
  l1:In()
end
function export:f_box_RewardController_v3_30_RewardsExecuted()
  local l0, l1
  self = self._graph
  l0 = self.box_Reward_Phone_Call_Monitor_7
  l0.ItemDb = "Items.9223372059111819661"
  l0 = self.box_RewardController_v3_30
  l1 = self.box_Reward_Phone_Call_Monitor_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M010\\L13M010.domino|@L13M010_Main|921495554", "921495554", "L13M010_Main", "box_RewardController_v3_30.RewardsExecuted", "box_Reward_Phone_Call_Monitor_7.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MissionMessageController_v3_10_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_31()
  l0 = self.box_MissionMessageController_v3_10
  l1 = self.box_OnceOnly_v3_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M010\\L13M010.domino|@L13M010_Main|1712968644", "1712968644", "L13M010_Main", "box_MissionMessageController_v3_10.Out", "box_OnceOnly_v3_31.In", l0, l1)
  l1:In(1)
end
function export:f_box_Progression_Tag_Monitor_5_Has()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_15
  l0.ProgressionTag = "ProgressionTag.9223372068922211569"
  l0 = self.box_Progression_Tag_Monitor_5
  l1 = self.box_Progression_Tag_Monitor_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M010\\L13M010.domino|@L13M010_Main|499421222", "499421222", "L13M010_Main", "box_Progression_Tag_Monitor_5.Has", "box_Progression_Tag_Monitor_15.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_Progression_Tag_Monitor_5_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_4
  l0.ItemDB = "Items.9223372068922211567"
  l0 = self.box_Progression_Tag_Monitor_5
  l1 = self.box_RewardController_v3_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M010\\L13M010.domino|@L13M010_Main|1216663708", "1216663708", "L13M010_Main", "box_Progression_Tag_Monitor_5.HasNOT", "box_RewardController_v3_4.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_RewardController_v3_8_RewardsExecuted()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_27
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357369877"
  l0 = self.box_RewardController_v3_8
  l1 = self.box_PhoneCommunicationController_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M010\\L13M010.domino|@L13M010_Main|943766232", "943766232", "L13M010_Main", "box_RewardController_v3_8.RewardsExecuted", "box_PhoneCommunicationController_27.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_FreeRoam_Locate_Gameplay_25_Located()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Photo_Gameplay_23()
  l0 = self.box_FreeRoam_Locate_Gameplay_25
  l1 = self.box_FreeRoam_Photo_Gameplay_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M010\\L13M010.domino|@L13M010_Main|1748721067", "1748721067", "L13M010_Main", "box_FreeRoam_Locate_Gameplay_25.Located", "box_FreeRoam_Photo_Gameplay_23.Start", l0, l1)
  l1:Start()
end
function export:f_box_FreeRoam_Locate_Gameplay_24_Located()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Photo_Gameplay_12()
  l0 = self.box_FreeRoam_Locate_Gameplay_24
  l1 = self.box_FreeRoam_Photo_Gameplay_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M010\\L13M010.domino|@L13M010_Main|1576232709", "1576232709", "L13M010_Main", "box_FreeRoam_Locate_Gameplay_24.Located", "box_FreeRoam_Photo_Gameplay_12.Start", l0, l1)
  l1:Start()
end
function export:OnEnter_box_FreeRoam_Photo_Gameplay_23()
  local l0
  l0 = self.box_FreeRoam_Photo_Gameplay_23
  l0.CLO = "9223372052852859073"
  l0.ProgressionTag = "ProgressionTag.9223372052852859065"
  l0.MapPoint = "9223372055967565047"
  l0.PhotoType = "Any"
  l0.ProgressionTagItem = "Items.9223372052852859061"
end
function export:OnEnter_box_OnceOnly_v3_31()
end
function export:OnEnter_box_FreeRoam_Photo_Gameplay_12()
  local l0
  l0 = self.box_FreeRoam_Photo_Gameplay_12
  l0.CLO = "9223372052852859076"
  l0.ProgressionTag = "ProgressionTag.9223372052852859066"
  l0.MapPoint = "9223372055967565045"
  l0.PhotoType = "Any"
  l0.ProgressionTagItem = "Items.9223372052852859062"
end
function export:OnEnter_box_FreeRoam_Mission_End_3()
  local l0
  l0 = self.box_FreeRoam_Mission_End_3
  l0.Teamspeak = "PhoneCommunicationSettingsDb.9223372050357369879"
  l0.Checkpoint = "CheckPoint_1"
  l0.ShowMissionComplete = 0
  l0.BypassObjectiveCompleteMessage = 1
end
function export:OnEnter_box_FreeRoam_Beat_2()
  local l0
  l0 = self.box_FreeRoam_Beat_2
  l0.ProgressionLayer = "ProgressionLayers.9223372052852859055"
  l0.Checkpoint = "CheckPoint_0"
end
function export:OnEnter_box_FreeRoam_Photo_Gameplay_13()
  local l0
  l0 = self.box_FreeRoam_Photo_Gameplay_13
  l0.CLO = "9223372052852859085"
  l0.ProgressionTag = "ProgressionTag.9223372052852859094"
  l0.MapPoint = "9223372055967565043"
  l0.PhotoType = "Any"
  l0.ProgressionTagItem = "Items.9223372052852859084"
end
_compilerVersion = 4
