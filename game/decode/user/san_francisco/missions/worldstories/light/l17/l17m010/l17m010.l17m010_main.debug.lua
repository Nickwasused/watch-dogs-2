export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.debug.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.debug.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/ProgressionTagMonitor.lua")
  cbox:RegisterBox("domino/System/RewardPhoneCallMonitor.lua")
  cbox:RegisterBox("domino/System/RewardComponentController_V3.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "L17M010_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M010\\L17M010.domino|@L17M010_Main"
  self.PlayerEntity = nil
  self.box_FreeRoam_Hack_Gameplay_6 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Hack_Gameplay_6
  l0._graph = self
  l0._name = "box_FreeRoam_Hack_Gameplay_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M010\\L17M010.domino|@L17M010_Main|23941747"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_box_FreeRoam_Hack_Gameplay_6_Hacked
  self.box_Timer_v2_8 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_8
  l0._graph = self
  l0._name = "box_Timer_v2_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M010\\L17M010.domino|@L17M010_Main|34821296"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_8_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionMessageController_v3_11 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_11
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M010\\L17M010.domino|@L17M010_Main|462902072"
  l0.Out = self.f_box_MissionMessageController_v3_11_Out
  l0.MessageCompleted = DummyFunction
  self.box_Reward_Phone_Call_Monitor_7 = cbox:CreateBox("domino/System/RewardPhoneCallMonitor.lua")
  l0 = self.box_Reward_Phone_Call_Monitor_7
  l0._graph = self
  l0._name = "box_Reward_Phone_Call_Monitor_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M010\\L17M010.domino|@L17M010_Main|640608142"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnPhoneCallEnded = self.f_box_Reward_Phone_Call_Monitor_7_OnPhoneCallEnded
  self.box_FreeRoam_Beat_15 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  l0 = self.box_FreeRoam_Beat_15
  l0._graph = self
  l0._name = "box_FreeRoam_Beat_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M010\\L17M010.domino|@L17M010_Main|668068742"
  l0.NewBeatStarted = self.f_box_FreeRoam_Beat_15_NewBeatStarted
  self.box_Reward_Phone_Call_Monitor_2 = cbox:CreateBox("domino/System/RewardPhoneCallMonitor.lua")
  l0 = self.box_Reward_Phone_Call_Monitor_2
  l0._graph = self
  l0._name = "box_Reward_Phone_Call_Monitor_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M010\\L17M010.domino|@L17M010_Main|716403790"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnPhoneCallEnded = self.f_box_Reward_Phone_Call_Monitor_2_OnPhoneCallEnded
  self.box_Reward_Phone_Call_Monitor_12 = cbox:CreateBox("domino/System/RewardPhoneCallMonitor.lua")
  l0 = self.box_Reward_Phone_Call_Monitor_12
  l0._graph = self
  l0._name = "box_Reward_Phone_Call_Monitor_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M010\\L17M010.domino|@L17M010_Main|866765925"
  l0.Enabled = self.f_box_Reward_Phone_Call_Monitor_12_Enabled
  l0.Disabled = DummyFunction
  l0.OnPhoneCallEnded = self.f_box_Reward_Phone_Call_Monitor_12_OnPhoneCallEnded
  self.box_RewardController_v3_17 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_17
  l0._graph = self
  l0._name = "box_RewardController_v3_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M010\\L17M010.domino|@L17M010_Main|877602855"
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_box_RewardController_v3_17_RewardsExecuted
  self.box_Progression_Tag_Monitor_16 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_16
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M010\\L17M010.domino|@L17M010_Main|1103454458"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_16_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_16_HasNOT
  self.box_PhoneCommunicationController_14 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_14
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M010\\L17M010.domino|@L17M010_Main|1104710490"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_14_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = self.f_box_PhoneCommunicationController_14_OnCommunicationStarted
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_FreeRoam_Mission_End_13 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.debug.lua")
  l0 = self.box_FreeRoam_Mission_End_13
  l0._graph = self
  l0._name = "box_FreeRoam_Mission_End_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M010\\L17M010.domino|@L17M010_Main|1576838325"
  self.box_RewardController_v3_9 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_9
  l0._graph = self
  l0._name = "box_RewardController_v3_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M010\\L17M010.domino|@L17M010_Main|1625829317"
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_MissionMessageController_v3_5 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_5
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M010\\L17M010.domino|@L17M010_Main|1803772065"
  l0.Out = self.f_box_MissionMessageController_v3_5_Out
  l0.MessageCompleted = DummyFunction
  self.box_FreeRoam_Hack_Gameplay_1 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Hack_Gameplay_1
  l0._graph = self
  l0._name = "box_FreeRoam_Hack_Gameplay_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M010\\L17M010.domino|@L17M010_Main|1850927379"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_box_FreeRoam_Hack_Gameplay_1_Hacked
  self.box_MultipleOR_18 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_18
  l0._graph = self
  l0._name = "box_MultipleOR_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M010\\L17M010.domino|@L17M010_Main|1959330046"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_18_Out
  self.box_PhoneCommunicationController_10 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_10
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M010\\L17M010.domino|@L17M010_Main|2022648376"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_10_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_FreeRoam_Beat_4 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  l0 = self.box_FreeRoam_Beat_4
  l0._graph = self
  l0._name = "box_FreeRoam_Beat_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M010\\L17M010.domino|@L17M010_Main|2110436372"
  l0.NewBeatStarted = self.f_box_FreeRoam_Beat_4_NewBeatStarted
  self.box_PhoneCommunicationController_3 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_3
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M010\\L17M010.domino|@L17M010_Main|2147423442"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_3_OnCommunicationFinished
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
function export:CheckPoint_0()
  local l0
  self:OnEnter_box_FreeRoam_Beat_15()
  l0 = self.box_FreeRoam_Beat_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M010\\L17M010.domino|@L17M010_Main|1227717923", "1227717923", "L17M010_Main", "CheckPoint_0", "box_FreeRoam_Beat_15.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:CheckPoint_1()
  local l0
  self:OnEnter_box_FreeRoam_Beat_4()
  l0 = self.box_FreeRoam_Beat_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M010\\L17M010.domino|@L17M010_Main|101329363", "101329363", "L17M010_Main", "CheckPoint_1", "box_FreeRoam_Beat_4.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:CheckPoint_2()
  local l0
  self:OnEnter_box_FreeRoam_Mission_End_13()
  l0 = self.box_FreeRoam_Mission_End_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M010\\L17M010.domino|@L17M010_Main|1048001190", "1048001190", "L17M010_Main", "CheckPoint_2", "box_FreeRoam_Mission_End_13.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  l0 = self.box_Timer_v2_8
  l0.Seconds = 15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M010\\L17M010.domino|@L17M010_Main|18951617", "18951617", "L17M010_Main", "In", "box_Timer_v2_8.Start", self, l0)
  l0:Start()
end
function export:f_box_FreeRoam_Hack_Gameplay_6_Hacked()
  local l0, l1
  self = self._graph
  l0 = self.box_Reward_Phone_Call_Monitor_7
  l0.ItemDb = "Items.9223372051775435961"
  l0 = self.box_FreeRoam_Hack_Gameplay_6
  l1 = self.box_Reward_Phone_Call_Monitor_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M010\\L17M010.domino|@L17M010_Main|1378443161", "1378443161", "L17M010_Main", "box_FreeRoam_Hack_Gameplay_6.Hacked", "box_Reward_Phone_Call_Monitor_7.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Timer_v2_8_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_10
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357373372"
  l0 = self.box_Timer_v2_8
  l1 = self.box_PhoneCommunicationController_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M010\\L17M010.domino|@L17M010_Main|1831312170", "1831312170", "L17M010_Main", "box_Timer_v2_8.TimeElapsed", "box_PhoneCommunicationController_10.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_MissionMessageController_v3_11_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_FreeRoam_Hack_Gameplay_6
  l0.CLO = "9223372050359584205"
  l0.HackCategory = "Contextual"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0 = self.box_MissionMessageController_v3_11
  l1 = self.box_FreeRoam_Hack_Gameplay_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M010\\L17M010.domino|@L17M010_Main|2034991426", "2034991426", "L17M010_Main", "box_MissionMessageController_v3_11.Out", "box_FreeRoam_Hack_Gameplay_6.Start", l0, l1)
  l1:Start()
end
function export:f_box_Reward_Phone_Call_Monitor_7_OnPhoneCallEnded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Mission_End_13()
  l0 = self.box_Reward_Phone_Call_Monitor_7
  l1 = self.box_FreeRoam_Mission_End_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M010\\L17M010.domino|@L17M010_Main|893972774", "893972774", "L17M010_Main", "box_Reward_Phone_Call_Monitor_7.OnPhoneCallEnded", "box_FreeRoam_Mission_End_13.End", l0, l1)
  l1:End()
end
function export:f_box_FreeRoam_Beat_15_NewBeatStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_5
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L17.L17M010.ActivationObjective",
    item = "ActivationObjective",
    id = "457759"
  }
  l0 = self.box_FreeRoam_Beat_15
  l1 = self.box_MissionMessageController_v3_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M010\\L17M010.domino|@L17M010_Main|425863633", "425863633", "L17M010_Main", "box_FreeRoam_Beat_15.NewBeatStarted", "box_MissionMessageController_v3_5.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_Reward_Phone_Call_Monitor_2_OnPhoneCallEnded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Beat_4()
  l0 = self.box_Reward_Phone_Call_Monitor_2
  l1 = self.box_FreeRoam_Beat_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M010\\L17M010.domino|@L17M010_Main|534802982", "534802982", "L17M010_Main", "box_Reward_Phone_Call_Monitor_2.OnPhoneCallEnded", "box_FreeRoam_Beat_4.StartNewBeat", l0, l1)
  l1:StartNewBeat()
end
function export:f_box_Reward_Phone_Call_Monitor_12_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_9
  l0.ItemDB = "Items.9223372059111819663"
  l0 = self.box_Reward_Phone_Call_Monitor_12
  l1 = self.box_RewardController_v3_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M010\\L17M010.domino|@L17M010_Main|1587984957", "1587984957", "L17M010_Main", "box_Reward_Phone_Call_Monitor_12.Enabled", "box_RewardController_v3_9.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_Reward_Phone_Call_Monitor_12_OnPhoneCallEnded()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_14
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372051775436196"
  l0 = self.box_Reward_Phone_Call_Monitor_12
  l1 = self.box_PhoneCommunicationController_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M010\\L17M010.domino|@L17M010_Main|1785761009", "1785761009", "L17M010_Main", "box_Reward_Phone_Call_Monitor_12.OnPhoneCallEnded", "box_PhoneCommunicationController_14.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_RewardController_v3_17_RewardsExecuted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_18()
  l0 = self.box_RewardController_v3_17
  l1 = self.box_MultipleOR_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M010\\L17M010.domino|@L17M010_Main|350494346", "350494346", "L17M010_Main", "box_RewardController_v3_17.RewardsExecuted", "box_MultipleOR_18.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Progression_Tag_Monitor_16_Has()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_18()
  l0 = self.box_Progression_Tag_Monitor_16
  l1 = self.box_MultipleOR_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M010\\L17M010.domino|@L17M010_Main|582374327", "582374327", "L17M010_Main", "box_Progression_Tag_Monitor_16.Has", "box_MultipleOR_18.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Progression_Tag_Monitor_16_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_3
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372051775436198"
  l0 = self.box_Progression_Tag_Monitor_16
  l1 = self.box_PhoneCommunicationController_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M010\\L17M010.domino|@L17M010_Main|2065170314", "2065170314", "L17M010_Main", "box_Progression_Tag_Monitor_16.HasNOT", "box_PhoneCommunicationController_3.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_PhoneCommunicationController_14_OnCommunicationStarted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Beat_15()
  l0 = self.box_PhoneCommunicationController_14
  l1 = self.box_FreeRoam_Beat_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M010\\L17M010.domino|@L17M010_Main|1897324876", "1897324876", "L17M010_Main", "box_PhoneCommunicationController_14.OnCommunicationStarted", "box_FreeRoam_Beat_15.StartNewBeat", l0, l1)
  l1:StartNewBeat()
end
function export:f_box_PhoneCommunicationController_14_StartCommunicationOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Reward_Phone_Call_Monitor_12()
  l0 = self.box_PhoneCommunicationController_14
  l1 = self.box_Reward_Phone_Call_Monitor_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M010\\L17M010.domino|@L17M010_Main|1966907992", "1966907992", "L17M010_Main", "box_PhoneCommunicationController_14.StartCommunicationOut", "box_Reward_Phone_Call_Monitor_12.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MissionMessageController_v3_5_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_FreeRoam_Hack_Gameplay_1
  l0.CLO = "9223372050359584208"
  l0.HackCategory = "Contextual"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0 = self.box_MissionMessageController_v3_5
  l1 = self.box_FreeRoam_Hack_Gameplay_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M010\\L17M010.domino|@L17M010_Main|322883037", "322883037", "L17M010_Main", "box_MissionMessageController_v3_5.Out", "box_FreeRoam_Hack_Gameplay_1.Start", l0, l1)
  l1:Start()
end
function export:f_box_FreeRoam_Hack_Gameplay_1_Hacked()
  local l0, l1
  self = self._graph
  l0 = self.box_Reward_Phone_Call_Monitor_2
  l0.ItemDb = "Items.9223372051812100254"
  l0 = self.box_FreeRoam_Hack_Gameplay_1
  l1 = self.box_Reward_Phone_Call_Monitor_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M010\\L17M010.domino|@L17M010_Main|1329706859", "1329706859", "L17M010_Main", "box_FreeRoam_Hack_Gameplay_1.Hacked", "box_Reward_Phone_Call_Monitor_2.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MultipleOR_18_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_11
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L17.L17M010.ActivationObjective",
    item = "ActivationObjective",
    id = "457759"
  }
  l0 = self.box_MultipleOR_18
  l1 = self.box_MissionMessageController_v3_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M010\\L17M010.domino|@L17M010_Main|710314757", "710314757", "L17M010_Main", "box_MultipleOR_18.Out", "box_MissionMessageController_v3_11.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_PhoneCommunicationController_10_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Reward_Phone_Call_Monitor_12()
  l0 = self.box_PhoneCommunicationController_10
  l1 = self.box_Reward_Phone_Call_Monitor_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M010\\L17M010.domino|@L17M010_Main|149176543", "149176543", "L17M010_Main", "box_PhoneCommunicationController_10.OnCommunicationFinished", "box_Reward_Phone_Call_Monitor_12.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_FreeRoam_Beat_4_NewBeatStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_16
  l0.ProgressionTag = "ProgressionTag.9223372050359526720"
  l0 = self.box_FreeRoam_Beat_4
  l1 = self.box_Progression_Tag_Monitor_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M010\\L17M010.domino|@L17M010_Main|1051701421", "1051701421", "L17M010_Main", "box_FreeRoam_Beat_4.NewBeatStarted", "box_Progression_Tag_Monitor_16.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_PhoneCommunicationController_3_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_17
  l0.ItemDB = "Items.9223372050359526716"
  l0 = self.box_PhoneCommunicationController_3
  l1 = self.box_RewardController_v3_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M010\\L17M010.domino|@L17M010_Main|555336111", "555336111", "L17M010_Main", "box_PhoneCommunicationController_3.OnCommunicationFinished", "box_RewardController_v3_17.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:OnEnter_box_FreeRoam_Beat_15()
  local l0
  l0 = self.box_FreeRoam_Beat_15
  l0.ProgressionLayer = "ProgressionLayers.9223372050359526707"
  l0.Checkpoint = "CheckPoint_0"
end
function export:OnEnter_box_Reward_Phone_Call_Monitor_12()
  local l0
  l0 = self.box_Reward_Phone_Call_Monitor_12
  l0.ItemDb = "Items.9223372059111819663"
end
function export:OnEnter_box_FreeRoam_Mission_End_13()
  local l0
  l0 = self.box_FreeRoam_Mission_End_13
  l0.Teamspeak = "PhoneCommunicationSettingsDb.9223372051775436199"
  l0.Checkpoint = "CheckPoint_2"
  l0.ShowMissionComplete = 0
  l0.BypassObjectiveCompleteMessage = 0
end
function export:OnEnter_box_MultipleOR_18()
end
function export:OnEnter_box_FreeRoam_Beat_4()
  local l0
  l0 = self.box_FreeRoam_Beat_4
  l0.ProgressionLayer = "ProgressionLayers.9223372071075552196"
  l0.Checkpoint = "CheckPoint_1"
end
_compilerVersion = 4
